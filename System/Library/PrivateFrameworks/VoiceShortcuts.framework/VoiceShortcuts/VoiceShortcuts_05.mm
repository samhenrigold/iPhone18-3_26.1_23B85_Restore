unint64_t sub_2310BE358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2310BE254(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2310BE388@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2310BE2A0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

id sub_2310BE3E0()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_indexingBatchSize] = 5;
  v2 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue;
  sub_2311581B8();
  *&v0[v2] = sub_2311581A8();
  v3 = sub_231158CB8();
  v5 = v4;
  v6 = sub_231158C98();
  v7 = objc_allocWithZone(MEMORY[0x277CC34A8]);
  v8 = sub_2310C0D80(v3, v5, v6);
  *&v1[OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index] = v8;
  sub_231158B68();
  v9 = v8;
  *&v1[OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger] = sub_231158B58();
  v12.receiver = v1;
  v12.super_class = type metadata accessor for SpotlightIndexer();
  v10 = objc_msgSendSuper2(&v12, sel_init);

  return v10;
}

uint64_t sub_2310BE504()
{
  OUTLINED_FUNCTION_4_1();
  v1[9] = v2;
  v1[10] = v0;
  v1[7] = v3;
  v1[8] = v4;
  v1[5] = v5;
  v1[6] = v6;
  v1[3] = v7;
  v1[4] = v8;
  v1[2] = v9;
  v10 = *(v4 - 8);
  v1[11] = v10;
  v1[12] = *(v10 + 64);
  v1[13] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310BE5C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v13 = *(v12 + 104);
  v14 = *(v12 + 88);
  v15 = *(v12 + 56);
  v27 = *(v12 + 48);
  v16 = *(v12 + 40);
  v18 = *(v12 + 16);
  v17 = *(v12 + 24);
  v28 = *(v12 + 32);
  *(v12 + 112) = *(*(v12 + 80) + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_syncingQueue);
  v19 = swift_allocObject();
  v29 = *(v12 + 64);
  swift_unknownObjectWeakInit();
  (*(v14 + 16))(v13, v16, v29);
  v20 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v21 = swift_allocObject();
  *(v12 + 120) = v21;
  *(v21 + 16) = v29;
  *(v21 + 32) = v19;
  *(v21 + 40) = v27;
  *(v21 + 48) = v15;
  *(v21 + 56) = v18;
  *(v21 + 64) = v17;
  *(v21 + 72) = v28;
  (*(v14 + 32))(v21 + v20, v13, v29);

  v22 = swift_task_alloc();
  *(v12 + 128) = v22;
  *v22 = v12;
  v22[1] = sub_2310BE7D0;
  v25 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2821E1890](v22, 0x6867696C746F7073, 0xEF7865646E692074, &unk_2311653E8, v21, v25, v23, v24, a9, a10, a11, a12);
}

uint64_t sub_2310BE7D0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 136) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310BE8DC()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310BE938()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310BE9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[29] = v14;
  v8[30] = v15;
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[22] = a2;
  v9 = *(v14 - 8);
  v8[31] = v9;
  v8[32] = *(v9 + 64);
  v8[33] = swift_task_alloc();
  v10 = sub_231158258();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();
  v11 = sub_231158C58();
  v8[38] = v11;
  v8[39] = *(v11 - 8);
  v8[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310BEB3C, 0, 0);
}

uint64_t sub_2310BEB3C()
{
  v57 = v0;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[41] = Strong;
  v3 = v0[39];
  v2 = v0[40];
  if (Strong)
  {
    v4 = v0[30];
    v5 = v0[24];
    v6 = v0[23];
    v0[42] = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_logger;
    v54 = Strong;
    v7 = *(v4 + 32);
    v0[43] = v7;
    v0[44] = (v4 + 32) & 0xFFFFFFFFFFFFLL | 0x8D59000000000000;
    v55 = v7();
    v56 = v8;
    MEMORY[0x231924980](2108704, 0xE300000000000000);
    MEMORY[0x231924980](v6, v5);
    v9 = v56;
    *v2 = v55;
    v2[1] = v9;
    v0[45] = *(v3 + 104);
    v0[46] = (v3 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
    v10 = OUTLINED_FUNCTION_10_13();
    v11(v10);
    sub_231158B48();
    v0[47] = *(v3 + 8);
    v0[48] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12 = OUTLINED_FUNCTION_45();
    v13(v12);
    v0[49] = *MEMORY[0x277D7A4C8];
    sub_2311581C8();
    swift_bridgeObjectRetain_n();

    v14 = sub_231158238();
    v15 = sub_2311592F8();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v0[37];
    v19 = v0[34];
    v18 = v0[35];
    if (v16)
    {
      v51 = v15;
      v20 = v0[26];
      v50 = v0[27];
      v53 = v0[37];
      v21 = v0[25];
      v52 = v0[34];
      v22 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      *v22 = 136315650;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      v24 = MEMORY[0x231924A30](v21, AssociatedTypeWitness);
      v26 = v25;

      v27 = sub_2310488F8(v24, v26, &v55);

      *(v22 + 4) = v27;
      *(v22 + 12) = 2080;
      MEMORY[0x231924A30](v20, AssociatedTypeWitness);
      swift_bridgeObjectRelease_n();
      v28 = OUTLINED_FUNCTION_45();
      v31 = sub_2310488F8(v28, v29, v30);

      *(v22 + 14) = v31;
      *(v22 + 22) = 2080;
      v32 = MEMORY[0x231924A30](v50, MEMORY[0x277D837D0]);
      v34 = sub_2310488F8(v32, v33, &v55);

      *(v22 + 24) = v34;
      _os_log_impl(&dword_23103C000, v14, v51, "performing spotlight tool index with added: %s updated: %s removed: %s", v22, 0x20u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();

      v35 = *(v18 + 8);
      v35(v53, v52);
    }

    else
    {
      swift_bridgeObjectRelease_n();

      v35 = *(v18 + 8);
      v35(v17, v19);
    }

    v45 = OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index;
    v0[50] = v35;
    v0[51] = v45;
    v46 = *(v54 + v45);
    v0[52] = v46;
    v47 = v46;
    v48 = sub_231158F38();
    v0[53] = v48;
    v0[2] = v0;
    v0[3] = sub_2310BF120;
    v49 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_23106F314;
    v0[13] = &block_descriptor_17_0;
    v0[14] = v49;
    [v47 deleteSearchableItemsWithIdentifiers:v48 completionHandler:v0 + 10];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    sub_231158B68();
    sub_231158B58();
    *v2 = 0xD00000000000001CLL;
    v2[1] = 0x8000000231169E10;
    v36 = *(v3 + 104);
    v37 = OUTLINED_FUNCTION_10_13();
    v36(v37);
    sub_231158B48();

    v38 = *(v3 + 8);
    v39 = OUTLINED_FUNCTION_45();
    v38(v39);
    sub_231158B58();
    *v2 = 0xD00000000000001CLL;
    v2[1] = 0x8000000231169E10;
    v40 = OUTLINED_FUNCTION_10_13();
    v36(v40);
    sub_231158B48();

    v41 = OUTLINED_FUNCTION_45();
    v38(v41);
    sub_2310B2AF8();
    swift_allocError();
    *v42 = 3;
    swift_willThrow();
    OUTLINED_FUNCTION_9_13();

    OUTLINED_FUNCTION_1();

    return v43();
  }
}

uint64_t sub_2310BF120()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 432) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310BF220()
{
  v1 = *(v0 + 424);
  v2 = *(v0 + 216);

  v3 = *(v2 + 16);
  v4 = *MEMORY[0x277D73268];
  for (i = (v2 + 40); v3; --v3)
  {
    v6 = *(v0 + 376);
    v7 = *(v0 + 360);
    v8 = *(v0 + 320);
    v9 = *(v0 + 304);
    v10 = *i;
    *v8 = *(i - 1);
    v8[1] = v10;
    v7(v8, v4, v9);
    swift_bridgeObjectRetain_n();
    sub_231158B48();

    v11 = OUTLINED_FUNCTION_45();
    v6(v11);
    i += 2;
  }

  v12 = *(v0 + 264);
  v31 = *(v0 + 256);
  v32 = *(v0 + 328);
  v14 = *(v0 + 240);
  v13 = *(v0 + 248);
  v15 = *(v0 + 232);
  v30 = *(v0 + 224);
  v16 = *(v0 + 208);
  v17 = *&v32[*(v0 + 408)];
  *(v0 + 440) = v17;
  swift_getAssociatedTypeWitness();
  v17;
  *(v0 + 448) = sub_231158FA8();
  *(v0 + 168) = v16;
  v18 = swift_task_alloc();
  *v18 = v15;
  v18[1] = v14;
  KeyPath = swift_getKeyPath();

  v20 = swift_task_alloc();
  v20[2] = v15;
  v20[3] = v14;
  v20[4] = KeyPath;
  v21 = sub_231159038();
  WitnessTable = swift_getWitnessTable();
  v24 = sub_2310BDD78(sub_2310C0C40, v20, v21, MEMORY[0x277D837D0], MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v23);

  *(v0 + 456) = sub_2310BE194(v24);
  (*(v13 + 16))(v12, v30, v15);
  v25 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v26 = swift_allocObject();
  *(v0 + 464) = v26;
  *(v26 + 16) = v15;
  *(v26 + 24) = v14;
  (*(v13 + 32))(v26 + v25, v12, v15);
  *(v26 + ((v31 + v25 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v27 = v32;
  v28 = swift_task_alloc();
  *(v0 + 472) = v28;
  *v28 = v0;
  v28[1] = sub_2310BF54C;

  return CSSearchableIndex.index<A>(items:updatedIdentifiers:batchSize:transformerBlock:)();
}

uint64_t sub_2310BF54C()
{
  v2 = *v1;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 480) = v0;

  v5 = *(v2 + 440);
  if (v0)
  {
  }

  else
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v6, v7, v8);
}

uint64_t sub_2310BF6F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_24();
  v39 = *(v16 + 384);
  v40 = *(v16 + 392);
  v38 = *(v16 + 376);
  v17 = *(v16 + 360);
  v18 = *(v16 + 320);
  v19 = *(v16 + 304);
  v21 = *(v16 + 184);
  v20 = *(v16 + 192);
  v41 = (*(v16 + 344))();
  v42 = v22;
  MEMORY[0x231924980](2108704, 0xE300000000000000);
  MEMORY[0x231924980](v21, v20);
  *v18 = v41;
  v18[1] = v42;
  v17(v18, *MEMORY[0x277D732B0], v19);
  sub_231158B48();
  v38(v18, v19);
  sub_2311581C8();
  v23 = sub_231158238();
  v24 = sub_2311592F8();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v16 + 328);
  if (v25)
  {
    v27 = swift_slowAlloc();
    *v27 = 0;
    _os_log_impl(&dword_23103C000, v23, v24, "finished indexing changeset", v27, 2u);
    OUTLINED_FUNCTION_16();
    v28 = v23;
  }

  else
  {
    v28 = *(v16 + 328);
    v26 = v23;
  }

  (*(v16 + 400))(*(v16 + 288), *(v16 + 272));

  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_23_0();

  return v30(v29, v30, v31, v32, v33, v34, v35, v36, v38, v39, v40, v41, v42, a14, a15, a16);
}

uint64_t sub_2310BF8C0(uint64_t a1)
{
  v2 = v1[53];
  v3 = v1[52];
  v4 = v1[41];
  swift_willThrow();

  OUTLINED_FUNCTION_9_13();

  OUTLINED_FUNCTION_1();

  return v5();
}

uint64_t sub_2310BF960()
{
  OUTLINED_FUNCTION_9_13();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310BF9E4@<X0>(uint64_t *a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = *(AssociatedConformanceWitness + 24);
  v6 = swift_checkMetadataState();
  result = v5(v6, AssociatedConformanceWitness);
  *a3 = result;
  a3[1] = v8;
  return result;
}

uint64_t sub_2310BFA90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[15] = a4;
  v5[16] = a5;
  v5[13] = a1;
  v5[14] = a3;
  v9 = sub_231158C58();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5[21] = AssociatedTypeWitness;
  v5[22] = *(AssociatedTypeWitness - 8);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();
  v11 = sub_231158258();
  v5[25] = v11;
  v5[26] = *(v11 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v14 = (*(a5 + 40) + **(a5 + 40));
  v12 = swift_task_alloc();
  v5[29] = v12;
  *v12 = v5;
  v12[1] = sub_2310BFD1C;

  return v14(v5 + 10, a1, a4, a5);
}

uint64_t sub_2310BFD1C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 240) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310BFE18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v27 = v24[24];
  v29 = v24[21];
  v28 = v24[22];
  v30 = v24[13];
  v31 = v24[10];
  sub_2311581C8();
  (*(v28 + 16))(v27, v30, v29);
  v32 = sub_231158238();
  v33 = sub_2311592B8();
  v34 = os_log_type_enabled(v32, v33);
  v35 = v24[28];
  v36 = v24[25];
  v37 = v24[26];
  v38 = v24[24];
  v40 = v24[21];
  v39 = v24[22];
  if (v34)
  {
    a10 = v24[25];
    a11 = v24[28];
    a12 = v31;
    v41 = swift_slowAlloc();
    HIDWORD(a9) = v33;
    v42 = swift_slowAlloc();
    a13 = v42;
    *v41 = 136315138;
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_7_13();
    v44 = v43(v40);
    v46 = v45;
    (*(v39 + 8))(v38, v40);
    v47 = sub_2310488F8(v44, v46, &a13);

    *(v41 + 4) = v47;
    _os_log_impl(&dword_23103C000, v32, BYTE4(a9), "Created searchable item from tool %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v42);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    (*(v37 + 8))(a11, a10);
  }

  else
  {

    (*(v39 + 8))(v38, v40);
    (*(v37 + 8))(v35, v36);
  }

  v49 = v24[20];
  v48 = v24[21];
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_7_13();
  *v49 = v50(v48);
  v49[1] = v51;
  v52 = OUTLINED_FUNCTION_10_13();
  v53(v52);
  sub_231158B48();
  (*(v24[18] + 8))(v24[20], v24[17]);

  OUTLINED_FUNCTION_23_0();

  return v56(v54, v55, v56, v57, v58, v59, v60, v61, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310C00FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_24();
  a23 = v25;
  a24 = v26;
  a22 = v24;
  v28 = *(v24 + 176);
  v27 = *(v24 + 184);
  v29 = *(v24 + 168);
  v30 = *(v24 + 104);
  sub_2311581C8();
  (*(v28 + 16))(v27, v30, v29);
  v31 = sub_231158238();
  v32 = sub_2311592B8();
  v33 = os_log_type_enabled(v31, v32);
  v35 = *(v24 + 208);
  v34 = *(v24 + 216);
  v36 = *(v24 + 200);
  v38 = *(v24 + 176);
  v37 = *(v24 + 184);
  v39 = *(v24 + 168);
  if (v33)
  {
    a12 = *(v24 + 216);
    a11 = *(v24 + 200);
    v40 = swift_slowAlloc();
    HIDWORD(a10) = v32;
    v41 = swift_slowAlloc();
    a13 = v41;
    *v40 = 136315138;
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_7_13();
    v43 = v42(v39);
    v45 = v44;
    (*(v38 + 8))(v37, v39);
    v46 = sub_2310488F8(v43, v45, &a13);

    *(v40 + 4) = v46;
    _os_log_impl(&dword_23103C000, v31, BYTE4(a10), "could not create searchable item from tool %s", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();

    (*(v35 + 8))(a12, a11);
  }

  else
  {

    (*(v38 + 8))(v37, v39);
    (*(v35 + 8))(v34, v36);
  }

  v47 = *(v24 + 240);
  *(v24 + 88) = v47;
  v48 = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA30, &qword_231164D98);
  if (swift_dynamicCast())
  {
    __swift_project_boxed_opaque_existential_0((v24 + 16), *(v24 + 40));
    OUTLINED_FUNCTION_45();
    v49 = sub_231157858();
    v51 = v50;
    __swift_destroy_boxed_opaque_existential_0((v24 + 16));
    if (v51)
    {
      goto LABEL_9;
    }
  }

  else
  {
    *(v24 + 48) = 0;
    *(v24 + 16) = 0u;
    *(v24 + 32) = 0u;
    sub_2310C0E08(v24 + 16);
  }

  swift_getErrorValue();
  v49 = sub_2311598B8();
  v51 = v52;

LABEL_9:
  v53 = *(v24 + 240);
  v54 = *(v24 + 144);
  v55 = *(v24 + 152);
  v56 = *(v24 + 136);
  *v55 = v49;
  v55[1] = v51;
  (*(v54 + 104))(v55, *MEMORY[0x277D732A0], v56);
  sub_231158B48();

  (*(*(v24 + 144) + 8))(*(v24 + 152), *(v24 + 136));

  OUTLINED_FUNCTION_23_0();

  return v59(v57, v58, v59, v60, v61, v62, v63, v64, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310C047C()
{
  OUTLINED_FUNCTION_4_1();
  v1[18] = v0;
  v2 = sub_231158C58();
  v1[19] = v2;
  v1[20] = *(v2 - 8);
  v1[21] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310C0534()
{
  v2 = v0[20];
  v1 = v0[21];
  v4 = v0[18];
  v3 = v0[19];
  (*(v2 + 104))(v1, *MEMORY[0x277D73278], v3);
  sub_231158B48();
  (*(v2 + 8))(v1, v3);
  v5 = *(v4 + OBJC_IVAR____TtC14VoiceShortcuts16SpotlightIndexer_index);
  sub_231158C98();
  v6 = sub_231158E28();
  v0[22] = v6;

  v0[2] = v0;
  v0[3] = sub_2310C06DC;
  v7 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23106FF5C;
  v0[13] = &block_descriptor_14;
  v0[14] = v7;
  [v5 deleteAllSearchableItemsForBundleID:v6 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2310C06DC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 184) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310C07DC()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310C0840(uint64_t a1)
{
  v2 = *(v1 + 176);
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v3();
}

id sub_2310C08B8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SpotlightIndexer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2310C0988()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310BE504();
}

uint64_t sub_2310C0A7C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23105FDEC;

  return sub_2310C047C();
}

uint64_t sub_2310C0B28(uint64_t a1)
{
  v3 = (*(*(v1[2] - 8) + 80) + 80) & ~*(*(v1[2] - 8) + 80);
  v4 = v1[5];
  v11 = v1[4];
  v5 = v1[6];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_23105FDEC;

  return sub_2310BE9A8(a1, v11, v4, v5, v6, v7, v8, v1 + v3);
}

uint64_t sub_2310C0C6C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = *(v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_2310930DC;

  return sub_2310BFA90(a1, v1 + v6, v7, v4, v5);
}

id sub_2310C0D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_231158E28();

  v5 = sub_231158E28();

  v6 = [v3 initWithName:v4 bundleIdentifier:v5];

  return v6;
}

uint64_t sub_2310C0E08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA38, &unk_231164DA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for SpotlightIndexer.SpotlightIndexerError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
    if (a2 + 3 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 3) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SpotlightIndexer.SpotlightIndexerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310C0FD8()
{
  result = qword_27DD3CB98;
  if (!qword_27DD3CB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CB98);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_13()
{
}

uint64_t performAsPersona<A>(_:work:)(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_2310A4D6C;

  return v8(a1);
}

uint64_t performAsEachPersona<A>(work:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_2310C11B4, 0, 0);
}

uint64_t sub_2310C11B4()
{
  v1 = v0[2];
  sub_2310C14E4(v0[4], v0[4]);
  swift_allocObject();
  v2 = sub_231158F78();
  v4 = v3;
  v0[5] = v2;
  v7 = (v1 + *v1);
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_2310C1338;

  return (v7)(v4, 0, 0);
}

uint64_t sub_2310C1338()
{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2310C1480, 0, 0);
  }

  else
  {
    v3 = v2[5];
    sub_231159038();
    v4 = v2[1];

    return v4(v3);
  }
}

uint64_t sub_2310C1480()
{
  sub_231159838();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310C14E4(uint64_t a1, uint64_t a2)
{
  if (dynamic_cast_existential_0_class_conditional(a2, a2))
  {

    return __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  }

  else
  {

    return MEMORY[0x2821FDC00]();
  }
}

uint64_t dynamic_cast_existential_0_class_conditional(uint64_t a1, uint64_t a2)
{
  if (swift_isClassType())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2310C1580()
{
  sub_2310C1FE8(@"com.apple.accessibility.reduce.motion.status", sub_2310C1A68, 0, &v257);
  v0 = v257;
  v1 = v259;
  v2 = v260;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = v0;
  *(inited + 40) = v258;
  *(inited + 56) = v1;
  *(inited + 64) = v2;
  *(inited + 72) = v261;
  sub_2310C1FE8(@"com.apple.accessibility.enhance.background.contrast.status", sub_2310C1A84, 0, &v252);
  v3 = v252;
  v4 = v254;
  v5 = v255;
  v6 = swift_initStackObject();
  OUTLINED_FUNCTION_1_15(v6, v7, v8, v9, v10, v11, v12, v13, v14, v146, v156, v166, v176, v6, inited, v15);
  *(v16 + 32) = v3;
  *(v16 + 40) = v253;
  *(v16 + 56) = v4;
  *(v16 + 64) = v5;
  *(v16 + 72) = v256;
  sub_2310C1FE8(@"com.apple.mediaaccessibility.displayFilterSettingsChanged", sub_2310C1AA0, 0, &v247);
  v17 = v247;
  v18 = v249;
  v19 = v250;
  v20 = swift_initStackObject();
  OUTLINED_FUNCTION_1_15(v20, v21, v22, v23, v24, v25, v26, v27, v28, v147, v157, v167, v20, v186, v197, v29);
  *(v30 + 32) = v17;
  *(v30 + 40) = v248;
  *(v30 + 56) = v18;
  *(v30 + 64) = v19;
  *(v30 + 72) = v251;
  sub_2310C1FE8(@"UIAccessibilityInvertColorsChanged", sub_2310C1ABC, 0, &v242);
  v31 = v242;
  v32 = v244;
  v33 = v245;
  v34 = swift_initStackObject();
  OUTLINED_FUNCTION_1_15(v34, v35, v36, v37, v38, v39, v40, v41, v42, v148, v158, v34, v177, v187, v198, v43);
  *(v44 + 32) = v31;
  *(v44 + 40) = v243;
  *(v44 + 56) = v32;
  *(v44 + 64) = v33;
  *(v44 + 72) = v246;
  sub_2310C1FE8(@"com.apple.accessibility.voiceovertouch.status", sub_2310C1AD8, 0, &v237);
  v45 = v237;
  v46 = v239;
  v47 = v240;
  v48 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v48, v49, v50, v51, v52, v53, v54, v55, v56, v149, v48, v168, v178, v188, v199, v57);
  *(v58 + 32) = v45;
  *(v58 + 40) = v238;
  *(v58 + 56) = v46;
  *(v58 + 64) = v47;
  *(v58 + 72) = v241;
  sub_2310C1FE8(@"com.apple.accessibility.zoomtouch.status", sub_2310C1AF4, 0, &v232);
  v59 = v232;
  v60 = v234;
  v61 = v235;
  v62 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v62, v63, v64, v65, v66, v67, v68, v69, v70, v150, v159, v169, v179, v189, v200, v71);
  *(v72 + 32) = v59;
  *(v72 + 40) = v233;
  *(v72 + 56) = v60;
  *(v72 + 64) = v61;
  *(v72 + 72) = v236;
  sub_2310C1FE8(@"com.apple.accessibility.commandandcontrol.status", sub_2310C1B10, 0, &v227);
  v73 = v227;
  v75 = v229;
  v74 = v230;
  v76 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v76, v77, v78, v79, v80, v81, v82, v83, v84, v151, v160, v170, v180, v190, v201, v85);
  *(v86 + 32) = v73;
  *(v86 + 40) = v228;
  *(v86 + 56) = v75;
  *(v86 + 64) = v74;
  *(v86 + 72) = v231;
  sub_2310C1FE8(@"com.apple.accessibility.pointer.increased.contrast", sub_2310C1B2C, 0, &v222);
  v87 = v222;
  v88 = v224;
  v89 = v225;
  v90 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v90, v91, v92, v93, v94, v95, v96, v97, v98, v152, v161, v171, v181, v191, v202, v99);
  *(v100 + 32) = v87;
  *(v100 + 40) = v223;
  *(v100 + 56) = v88;
  *(v100 + 64) = v89;
  *(v100 + 72) = v226;
  sub_2310C1FE8(@"com.apple.accessibility.classic.wob.status", sub_2310C1B48, 0, &v217);
  v101 = v217;
  v102 = v219;
  v103 = v220;
  v104 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v104, v105, v106, v107, v108, v109, v110, v111, v112, v153, v162, v172, v182, v192, v203, v113);
  *(v114 + 32) = v101;
  *(v114 + 40) = v218;
  *(v114 + 56) = v102;
  *(v114 + 64) = v103;
  *(v114 + 72) = v221;
  sub_2310C1FE8(@"com.apple.accessibility.reduce.white.point", sub_2310C1B64, 0, &v212);
  v115 = v212;
  v116 = v214;
  v117 = v215;
  v118 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v118, v119, v120, v121, v122, v123, v124, v125, v126, v154, v163, v173, v183, v193, v204, v127);
  *(v128 + 32) = v115;
  *(v128 + 40) = v213;
  *(v128 + 56) = v116;
  *(v128 + 64) = v117;
  *(v128 + 72) = v216;
  sub_2310C1FE8(@"com.apple.commcenter.DataSettingsChangedNotification", sub_2310C1CAC, 0, &v207);
  v129 = v207;
  v130 = v209;
  v131 = v210;
  v132 = OUTLINED_FUNCTION_0_18();
  OUTLINED_FUNCTION_1_15(v132, v133, v134, v135, v136, v137, v138, v139, v140, v155, v164, v174, v184, v194, v205, v141);
  *(v142 + 32) = v129;
  *(v142 + 40) = v208;
  *(v142 + 56) = v130;
  *(v142 + 64) = v131;
  *(v142 + 72) = v211;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v143 = swift_allocObject();
  *(v143 + 16) = xmmword_231165540;
  *(v143 + 32) = v206;
  *(v143 + 40) = v195;
  *(v143 + 48) = v185;
  *(v143 + 56) = v175;
  *(v143 + 64) = v165;
  *(v143 + 72) = v62;
  *(v143 + 80) = v76;
  *(v143 + 88) = v90;
  *(v143 + 96) = v104;
  *(v143 + 104) = v118;
  *(v143 + 112) = v132;
  v144 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v144;
}

void sub_2310C1B80(SEL *a1, Class *a2, SEL *a3)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
  v6 = [objc_allocWithZone(*a2) initWithStarting_];

  v7 = [BiomeLibrary() Accessibility];
  swift_unknownObjectRelease();
  v8 = [v7 *a3];
  swift_unknownObjectRelease();
  v9 = [v8 source];

  [v9 sendEvent_];
}

void sub_2310C1CAC()
{
  v22[1] = *MEMORY[0x277D85DE8];
  v0 = sub_231158258();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultSettings];
  v22[0] = 0;
  v5 = [v4 cellularDataEnabledWithError_];
  v6 = v22[0];
  if (v22[0])
  {
    swift_willThrow();
    v7 = v6;
    sub_2311581C8();
    v8 = v7;
    v9 = sub_231158238();
    v10 = sub_2311592D8();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v8;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_23103C000, v9, v10, "Error getting cellular data state: %@", v11, 0xCu);
      sub_2310794EC(v12);
      MEMORY[0x2319267C0](v12, -1, -1);
      MEMORY[0x2319267C0](v11, -1, -1);
    }

    else
    {
      v13 = v9;
      v9 = v8;
    }

    (*(v1 + 8))(v3, v0);
  }

  else
  {
    v15 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithBool_];
    v16 = [objc_allocWithZone(MEMORY[0x277CF10C8]) initWithStarting_];

    v17 = [BiomeLibrary() Device];
    swift_unknownObjectRelease();
    v18 = [v17 Wireless];
    swift_unknownObjectRelease();
    v19 = [v18 CellularDataEnabled];
    swift_unknownObjectRelease();
    v20 = [v19 source];

    [v20 sendEvent_];
  }
}

uint64_t sub_2310C1FE8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  sub_231159588();

  v10 = sub_231158E58();
  MEMORY[0x231924980](v10);

  OUTLINED_FUNCTION_26_1();
  v11 = swift_allocObject();
  *(v11 + 16) = v5;
  *(v11 + 24) = a1;
  OUTLINED_FUNCTION_26_1();
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  *a4 = 0xD000000000000012;
  a4[1] = 0x800000023116A000;
  a4[4] = 2;
  OUTLINED_FUNCTION_26_1();
  v13 = swift_allocObject();
  *(v13 + 16) = sub_2310C2400;
  *(v13 + 24) = v11;
  a4[2] = sub_2310C24A0;
  a4[3] = v13;
  OUTLINED_FUNCTION_26_1();
  v14 = swift_allocObject();
  *(v14 + 16) = &unk_231165598;
  *(v14 + 24) = v12;
  a4[5] = &unk_2311655A0;
  a4[6] = v14;

  v15 = a1;
}

double sub_2310C2164(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = *a1;
  sub_2310C2258(a3, &v7);
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C740, &qword_231161EE0);
  v5 = swift_allocObject();
  *&result = 1;
  *(v5 + 16) = xmmword_231161E80;
  *(v5 + 32) = v4;
  return result;
}

uint64_t sub_2310C21D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_2310C21F0, 0, 0);
}

uint64_t sub_2310C21F0()
{
  (*(v0 + 16))();
  v1 = *(v0 + 8);

  return v1();
}

void sub_2310C2258(uint64_t a1, uint64_t *a2)
{
  v2 = sub_231158E58();
  v4 = v3;
  if (v2 != sub_231158E58() || v4 != v5)
  {
    sub_231159818();
  }

  sub_231158E58();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C820, &unk_2311649E0);
  OUTLINED_FUNCTION_26_1();
  swift_allocObject();

  v7 = sub_23107F5EC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C760, &unk_231164C50);
  swift_allocObject();
  sub_23109C9A4(j__OUTLINED_FUNCTION_34_3, 0, v7);
  v9 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BEF8, &qword_231162A00);
  swift_allocObject();
  sub_2310A004C(v9);
}

uint64_t sub_2310C2408()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_8(v1);

  return sub_2310C21D0(v2, v3, v4);
}

uint64_t sub_2310C24A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_2_8(v1);

  return sub_231063050(v2, v3, v4);
}

uint64_t OUTLINED_FUNCTION_0_18()
{

  return swift_allocObject();
}

__n128 OUTLINED_FUNCTION_1_15(__n128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a15, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, __n128 a16)
{
  result = a16;
  a1[1] = a16;
  return result;
}

BOOL sub_2310C2568(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 40);
  v6 = *(a3 + 16) + 1;
  do
  {
    if (!--v6)
    {
      break;
    }

    v7 = *v5;
    v11[0] = *(v5 - 1);
    v11[1] = v7;

    v8 = a1(v11);
    if (v3)
    {

      return v6 != 0;
    }

    v9 = v8;
    v5 += 2;
  }

  while ((v9 & 1) == 0);
  return v6 != 0;
}

id sub_2310C2618()
{
  result = [objc_allocWithZone(type metadata accessor for SpotlightSettingsClient()) init];
  qword_280CCBA90 = result;
  return result;
}

id SpotlightSettingsClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id static SpotlightSettingsClient.shared.getter()
{
  if (qword_280CCBA88 != -1)
  {
    swift_once();
  }

  v1 = qword_280CCBA90;

  return v1;
}

Swift::Bool __swiftcall SpotlightSettingsClient.isSpotlightEnabled(for:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v3 = sub_231158258();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v8 = sub_2310C2B98(0xD000000000000015, 0x800000023116A020);
  if (v8)
  {
    v9 = v8;
    v10 = sub_231158E28();
    v11 = [v9 arrayForKey_];

    if (v11 && (v12 = sub_231158F48(), v11, v13 = sub_2310C298C(v12), v14 = , v13))
    {
      v22[0] = countAndFlagsBits;
      v22[1] = object;
      MEMORY[0x28223BE20](v14);
      *&v21[-16] = v22;
      v15 = sub_2310C2568(sub_2310C2C6C, &v21[-32], v13);

      v16 = !v15;
    }

    else
    {

      v16 = 1;
    }
  }

  else
  {
    sub_2311581C8();
    v17 = sub_231158238();
    v18 = sub_2311592D8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23103C000, v17, v18, "Unable to access Spotlight user defaults", v19, 2u);
      MEMORY[0x2319267C0](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_2310C298C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_23104CA0C(0, v2, 0);
  v3 = v12;
  v4 = a1 + 32;
  if (v2)
  {
    while (1)
    {
      sub_231040B98(v4, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_23104CA0C((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      v4 += 32;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

id SpotlightSettingsClient.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SpotlightSettingsClient.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_2310C2B98(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = sub_231158E28();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t sub_2310C2BFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_231159818() & 1;
  }
}

uint64_t dispatch thunk of Indexer.index<A>(added:updated:removed:using:with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_0_19();
  v21 = (v18 + *v18);
  v19 = swift_task_alloc();
  *(v10 + 16) = v19;
  *v19 = v10;
  v19[1] = sub_2310A4E78;

  return v21(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t dispatch thunk of Indexer.resetIndex()(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_0_19();
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2310A4E78;

  return v8(a1, a2);
}

uint64_t dispatch thunk of IndexableItemTransformer.transform(item:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_0_19();
  v12 = (v9 + *v9);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_2310A4D6C;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_2310C30E8(uint64_t a1)
{
  OUTLINED_FUNCTION_20_7(a1);
  sub_231158EA8();
  return sub_231159948();
}

uint64_t sub_2310C3144(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_20_7(a1);
  sub_2310512BC(v3, v1);
  return sub_231159948();
}

uint64_t sub_2310C3184(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_20_7(a1);
  a2(a1);
  sub_231158EA8();

  return sub_231159948();
}

uint64_t sub_2310C31E8(uint64_t a1)
{
  OUTLINED_FUNCTION_20_7(a1);
  MEMORY[0x2319253F0](a1);
  return sub_231159948();
}

uint64_t sub_2310C3228(uint64_t a1, uint64_t a2)
{
  sub_231051B38(a2, &qword_27DD3CAC0, &unk_231165330);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  OUTLINED_FUNCTION_13_0();
  (*(v5 + 16))(a2, a1, v4);

  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

uint64_t sub_2310C32D0()
{
  for (i = 0; i != 5; ++i)
  {
    v1 = &unk_2845D7950 + i;
    result = sub_2310C3318(v1[32]);
  }

  return result;
}

uint64_t sub_2310C3318(uint64_t a1)
{
  v2 = a1;
  v3 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v4 = qword_280CCB570;
  if (os_log_type_enabled(qword_280CCB570, v3))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15[0] = v6;
    *v5 = 136315138;
    v7 = sub_2310C666C(v2);
    v9 = sub_2310488F8(v7, v8, v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_23103C000, v4, v3, "task '%s': checking-in", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2319267C0](v6, -1, -1);
    MEMORY[0x2319267C0](v5, -1, -1);
  }

  v10 = v1[5];
  v11 = v1[6];
  __swift_project_boxed_opaque_existential_0(v1 + 2, v10);
  v15[3] = &type metadata for VCDaemon.DaemonBackgroundTasks;
  v15[4] = sub_231086674();
  LOBYTE(v15[0]) = v2;
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = v2;
  v13 = *(v11 + 8);

  v13(v15, sub_2310C6BD4, v12, v10, v11);

  return __swift_destroy_boxed_opaque_existential_0(v15);
}

uint64_t sub_2310C36F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v22 - v8;
  v10 = sub_2311592F8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v11 = qword_280CCB570;
  if (os_log_type_enabled(qword_280CCB570, v10))
  {
    v12 = swift_slowAlloc();
    v22 = a3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v23 = v14;
    *v13 = 136315138;
    v15 = sub_2310C666C(v6);
    v17 = sub_2310488F8(v15, v16, &v23);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_23103C000, v11, v10, "task '%s': running", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v14);
    MEMORY[0x2319267C0](v14, -1, -1);
    v18 = v13;
    a3 = v22;
    MEMORY[0x2319267C0](v18, -1, -1);
  }

  v19 = sub_2311590C8();
  __swift_storeEnumTagSinglePayload(v9, 1, 1, v19);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  *(v20 + 24) = 0;
  *(v20 + 32) = v6;
  *(v20 + 40) = a2;
  *(v20 + 48) = a3;
  *(v20 + 56) = v3;
  swift_unknownObjectRetain();

  sub_23105ED1C(0, 0, v9, &unk_2311658E0, v20);
}

uint64_t sub_2310C3904(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 104) = a6;
  *(v7 + 112) = a7;
  *(v7 + 96) = a5;
  *(v7 + 224) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC10, &unk_2311658F0);
  *(v7 + 120) = v8;
  *(v7 + 128) = *(v8 - 8);
  *(v7 + 136) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  *(v7 + 144) = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  *(v7 + 152) = v9;
  v10 = *(v9 - 8);
  *(v7 + 160) = v10;
  *(v7 + 168) = *(v10 + 64);
  *(v7 + 176) = swift_task_alloc();
  *(v7 + 184) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310C3A8C, 0, 0);
}

uint64_t sub_2310C3A8C()
{
  v1 = sub_2310C64AC(*(v0 + 224));
  v3 = v2;
  v4 = *(v2 + 24);
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  __swift_allocate_boxed_opaque_existential_1((v0 + 16));
  v4(v1, v3);
  v5 = *(v0 + 184);
  v29 = *(v0 + 168);
  v27 = *(v0 + 176);
  v28 = *(v0 + 160);
  v7 = *(v0 + 144);
  v6 = *(v0 + 152);
  v9 = *(v0 + 128);
  v8 = *(v0 + 136);
  v25 = *(v0 + 120);
  v26 = *(v0 + 104);
  v30 = *(v0 + 224);
  v10 = *(v6 + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC30, &unk_231163850);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v5 + *(v6 + 36)) = v15;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v11);
  *(swift_task_alloc() + 16) = v7;
  (*(v9 + 104))(v8, *MEMORY[0x277D85778], v25);
  sub_231159108();

  sub_2310B8DA8(v7, v5 + v10);
  ObjectType = swift_getObjectType();
  *(v0 + 192) = ObjectType;
  (*(v26 + 32))(v0 + 16, ObjectType, v26);
  sub_2310B901C(v5, v27, &unk_27DD3CC20, &unk_231165900);
  sub_2310548A0(v0 + 16, v0 + 56);
  v20 = (*(v28 + 80) + 17) & ~*(v28 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v30;
  sub_2310B8934(v27, v21 + v20);
  sub_23104613C((v0 + 56), v21 + ((v29 + v20 + 7) & 0xFFFFFFFFFFFFFFF8));
  (*(v26 + 16))(sub_2310C6D98, v21, ObjectType, v26);
  v22 = swift_task_alloc();
  *(v0 + 200) = v22;
  *(v22 + 16) = v5;
  *(v22 + 24) = v0 + 16;
  v23 = swift_task_alloc();
  *(v0 + 208) = v23;
  *v23 = v0;
  v23[1] = sub_2310C3E3C;

  return MEMORY[0x282200740]();
}

uint64_t sub_2310C3E3C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v3 + 216) = v0;

  if (v0)
  {
    v6 = sub_2310C4000;
  }

  else
  {

    v6 = sub_2310C3F48;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_2310C3F48()
{
  v1 = OUTLINED_FUNCTION_16_7();
  v2(v1);
  sub_231051B38(*(v0 + 184), &unk_27DD3CC20, &unk_231165900);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_1();

  return v3();
}

uint64_t sub_2310C4000()
{
  v24 = v0;
  v1 = *(v0 + 216);
  v2 = *(v0 + 192);
  v3 = *(v0 + 104);
  v4 = *(v0 + 112);

  v5 = *(v4 + 56);
  v6 = *(v3 + 48);
  v7 = v1;
  v6(v2, v3, v5);
  v8 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    OUTLINED_FUNCTION_4_12(&qword_280CCB568);
  }

  v9 = qword_280CCB570;
  v10 = os_log_type_enabled(qword_280CCB570, v8);
  v11 = *(v0 + 216);
  if (v10)
  {
    v12 = *(v0 + 224);
    v13 = OUTLINED_FUNCTION_62_1();
    v14 = swift_slowAlloc();
    v15 = OUTLINED_FUNCTION_62_1();
    v23 = v15;
    *v13 = 136315650;
    v16 = sub_2310C666C(v12);
    v18 = sub_2310488F8(v16, v17, &v23);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2112;
    v19 = v11;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 14) = v20;
    *v14 = v20;
    *(v13 + 22) = 2048;
    *(v13 + 24) = v5;
    _os_log_impl(&dword_23103C000, v9, v8, "task '%s': ran into error '%@'. scheduler accepted our request to run again in %fs", v13, 0x20u);
    sub_231051B38(v14, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_9_7();
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_16();
  }

  sub_231051B38(*(v0 + 184), &unk_27DD3CC20, &unk_231165900);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  OUTLINED_FUNCTION_1();

  return v21();
}

uint64_t sub_2310C43A4(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v38 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC0, &unk_231165330);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAC8, &unk_231165350);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - v12;
  v14 = sub_2311592D8();
  if (qword_280CCB568 != -1)
  {
    swift_once();
  }

  v15 = qword_280CCB570;
  if (os_log_type_enabled(qword_280CCB570, v14))
  {
    v16 = swift_slowAlloc();
    v36 = v13;
    v17 = v16;
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315394;
    v19 = sub_2310C666C(v6);
    v21 = sub_2310488F8(v19, v20, &v40);
    v37 = a3;
    v22 = v11;
    v23 = a4;
    v24 = v10;
    v25 = v21;

    *(v17 + 4) = v25;
    *(v17 + 12) = 2080;
    v39 = v38 & 1;
    v26 = sub_231158E68();
    v28 = sub_2310488F8(v26, v27, &v40);

    *(v17 + 14) = v28;
    v10 = v24;
    a4 = v23;
    v11 = v22;
    a3 = v37;
    _os_log_impl(&dword_23103C000, v15, v14, "task '%s': expired with reason '%s'", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319267C0](v18, -1, -1);
    v29 = v17;
    v13 = v36;
    MEMORY[0x2319267C0](v29, -1, -1);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900);
  atomic_store(1u, (*(**(a3 + *(v30 + 36)) + 136))());
  sub_2310B901C(a3 + *(v30 + 40), v9, &qword_27DD3CAC0, &unk_231165330);
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAA8, &qword_2311652D8);
  result = __swift_getEnumTagSinglePayload(v9, 1, v31);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v41[1] = 1;
    sub_2311590D8();
    (*(v11 + 8))(v13, v10);
    (*(*(v31 - 8) + 8))(v9, v31);
    v33 = a4[3];
    v34 = a4[4];
    __swift_project_boxed_opaque_existential_0(a4, v33);
    v41[0] = v38 & 1;
    return (*(v34 + 48))(v41, v33, v34);
  }

  return result;
}

uint64_t sub_2310C476C()
{
  v0 = sub_231158258();
  __swift_allocate_value_buffer(v0, qword_280CCDF80);
  __swift_project_value_buffer(v0, qword_280CCDF80);
  return sub_231158248();
}

void *sub_2310C47E0()
{
  type metadata accessor for VCDaemon();
  v0 = swift_allocObject();
  result = sub_2310C4960();
  off_280CCB3C0 = v0;
  return result;
}

uint64_t static VCDaemon.daemon.getter()
{
  if (qword_280CCB3B8 != -1)
  {
    swift_once();
  }
}

id sub_2310C4878()
{
  v1 = *(v0 + 200);
  if (v1)
  {
    v2 = *(v0 + 200);
  }

  else
  {
    v3 = [objc_allocWithZone(WFSystemSurfaceWorkflowStatusUpdater) initWithDatabaseProvider_];
    v4 = *(v0 + 200);
    *(v0 + 200) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_2310C48EC()
{
  v1 = *(v0 + 208);
  if (v1)
  {
    v2 = *(v0 + 208);
  }

  else
  {
    v3 = [objc_allocWithZone(WFSiriWorkflowVocabularyUpdater) initWithDatabaseProvider_];
    v4 = *(v0 + 208);
    *(v0 + 208) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void *sub_2310C4960()
{
  v1 = v0;
  type metadata accessor for BiomeStreamWriter();
  v0[19] = 0;
  v0[20] = 0;
  v0[21] = swift_allocObject();
  type metadata accessor for DaemonTaskScheduler();
  v0[22] = 0;
  v0[23] = 0;
  v0[25] = 0;
  v0[26] = 0;
  OUTLINED_FUNCTION_8();
  swift_allocObject();
  v0[27] = DaemonTaskScheduler.init()();
  v2 = [objc_opt_self() sharedScheduler];
  v42 = sub_231054A0C(0, &qword_280CCAEE0, 0x277CF0810);
  v43 = &protocol witness table for BGSystemTaskScheduler;
  *&v41 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC58, &qword_231165910);
  v3 = swift_allocObject();
  sub_23104613C(&v41, v3 + 16);
  *(v3 + 56) = 0x4072C00000000000;
  v1[11] = v3;
  v1[2] = [objc_allocWithZone(WFUserNotificationManager) init];
  v1[3] = [objc_allocWithZone(VCDaemonDatabaseProvider) init];
  sub_231054A0C(0, &unk_280CCAEC0, off_2788FC128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC68, &qword_231165918);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_231165680;
  *(v4 + 32) = @"com.apple.distnoted.matching";
  *(v4 + 40) = @"com.apple.notifyd.matching";
  *(v4 + 48) = @"com.apple.appprotection.preferences.change.event";
  *(v4 + 56) = @"com.apple.fsevents.matching";
  *(v4 + 64) = @"com.apple.diskarbitration";
  v5 = @"com.apple.distnoted.matching";
  v6 = @"com.apple.notifyd.matching";
  v7 = @"com.apple.appprotection.preferences.change.event";
  v8 = @"com.apple.fsevents.matching";
  v9 = @"com.apple.diskarbitration";
  v10 = sub_2310C4E84(v4);
  v1[4] = v10;
  type metadata accessor for ToolKitCascadeSyncEngine();
  OUTLINED_FUNCTION_8();
  swift_allocObject();
  v1[18] = ToolKitCascadeSyncEngine.init(xpcEventHandler:)(v10);
  v11 = v1[3];
  type metadata accessor for WFSpotlightSyncService();
  OUTLINED_FUNCTION_8();
  swift_allocObject();
  sub_23109CDC8(v11);
  v1[13] = v12;
  v13 = [objc_allocWithZone(WFContextualActionSpotlightSyncService) initWithDaemonTaskScheduler:v1[27] databaseProvider:v1[3]];
  v1[14] = v13;
  v14 = v1[19];
  v1[19] = 0;
  v15 = v13;

  v1[20] = 0;

  v16 = v1[3];
  v17 = v1[18];
  v18 = v1[19];
  type metadata accessor for VCDaemonXPCServer();
  swift_allocObject();
  v19 = v18;
  v20 = v16;

  v1[10] = sub_231093FD0(v20, v17, v18, 0, v13);
  v1[5] = [objc_allocWithZone(VCDaemonSyncDataEndpoint) initWithEventHandler_];
  v1[6] = [objc_allocWithZone(WFWorkflowRunCoordinator) initWithUserNotificationManager:v1[2] databaseProvider:v1[3]];
  v1[7] = [objc_allocWithZone(VCCKShortcutSyncCoordinator) initWithDatabaseProvider_];
  v1[8] = [objc_allocWithZone(WFTriggerRegistrar) initWithDatabaseProvider:v1[3] eventHandler:v1[4] userNotificationManager:v1[2]];
  v21 = [objc_allocWithZone(WFTopHitsAppShortcutsUpdater) initWithXPCEventHandler_];
  v1[16] = v21;
  v22 = v1[8];
  v23 = v1[5];
  v24 = v1[6];
  v25 = v1[3];
  v26 = v1[4];
  v27 = v1[14];
  v28 = objc_allocWithZone(VCXPCServer);
  v1[9] = [v28 initWithDatabaseProvider:v25 triggerRegistrar:v22 syncDataEndpoint:v23 runCoordinator:v24 eventHandler:v26 appShortcutsUpdater:v21 contextualActionSyncService:{v27, v41}];
  v1[12] = [objc_allocWithZone(VCWatchSyncCoordinator) initWithSyncDataEndpoint:v1[5] eventHandler:v1[4]];
  v29 = [objc_allocWithZone(WFRemoteWidgetDataProvider) init];
  v30 = v1[22];
  v1[22] = v29;

  v31 = v1[3];
  v32 = objc_opt_self();
  v33 = v31;
  v34 = [v32 sharedProvider];
  v35 = [objc_allocWithZone(WFConfiguredSystemActionMigrator) initWithDatabaseProvider:v33 actionProvider:v34];

  v1[24] = v35;
  v1[15] = [objc_allocWithZone(MEMORY[0x277D7C7B8]) initAndAllowRunRequests_];
  v36 = v1[3];
  type metadata accessor for WidgetReloadingObserver();
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  v1[23] = v37;
  v38 = v36;

  v39 = v1[4];
  type metadata accessor for ToolKitIndexingScheduler();
  swift_allocObject();
  v1[17] = sub_2310805EC(v39);
  return v1;
}

id sub_2310C4E84(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  type metadata accessor for VCXPCEventStream(0);
  v2 = sub_231158F38();

  v3 = [v1 initWithStreams_];

  return v3;
}

uint64_t sub_2310C4EFC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  MEMORY[0x28223BE20](v2 - 8);
  if (qword_280CCB410 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_280CCB410);
  }

  v3 = sub_231158258();
  __swift_project_value_buffer(v3, qword_280CCDF80);
  v4 = sub_231158238();
  v5 = sub_2311592F8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_23103C000, v4, v5, "Starting daemon", v6, 2u);
    OUTLINED_FUNCTION_16();
  }

  v7 = os_transaction_create();
  v8 = sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v8);
  OUTLINED_FUNCTION_8();
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = v1;

  OUTLINED_FUNCTION_14_10();

  v13 = objc_autoreleasePoolPush();
  v14 = [*(v1 + 72) voiceShortcutManager];
  [v14 deleteStaleSuggestions];

  objc_autoreleasePoolPop(v13);
  v15 = *(v1 + 16);
  aBlock[4] = sub_2310C5B68;
  aBlock[5] = v1;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_2310C5B70;
  aBlock[3] = &block_descriptor_15;
  v16 = _Block_copy(aBlock);

  [v15 removeStaleNotificationsWithCompletion_];
  _Block_release(v16);
  sub_2310C32D0();
  v17 = *(v1 + 64);
  if (v17)
  {
    [*(v1 + 64) registerAllTriggersWithCompletion_];
  }

  [*(v1 + 96) requestSyncIfUnrestricted];
  [*(v1 + 56) start];
  sub_231054A0C(0, &qword_280CCAED0, off_2788FC178);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = *(v1 + 24);
  [ObjCClassFromMetadata scheduleWithDatabaseProvider_];
  sub_231054A0C(0, &qword_280CCAEB8, off_2788FC208);
  [swift_getObjCClassFromMetadata() scheduleWithDatabaseProvider_];
  [*(v1 + 128) start];
  sub_2310808A0();

  sub_2310D6A90();

  if (v17)
  {
    v20 = [v17 scheduler];
    [v20 registerWithDatabaseProvider_];
  }

  v21 = [objc_opt_self() sharedManager];
  [v21 scheduleRegularPolicyUpdatesWithDatabaseProvider_];

  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v8);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0;
  v25[4] = v1;
  v25[5] = v7;

  OUTLINED_FUNCTION_14_10();
}

uint64_t sub_2310C52E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 176) = a4;

  return MEMORY[0x2822009F8](sub_2310C5374, 0, 0);
}

uint64_t sub_2310C5374()
{
  v1 = objc_opt_self();
  v0[2] = v0;
  v0[3] = sub_2310C54C8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23106FF5C;
  v0[13] = &block_descriptor_57;
  v0[14] = v2;
  [v1 fetchCloudKitSyncFlagsIfNecessaryWithCompletionHandler_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2310C54C8()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_2310C5830;
  }

  else
  {
    v2 = sub_2310C5600;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2310C5600()
{
  v22 = v1;
  v21[1] = *MEMORY[0x277D85DE8];
  v2 = *(*(v1 + 176) + 24);
  *(v1 + 80) = 0;
  v3 = [v2 databaseWithError_];
  v4 = *(v1 + 80);
  if (v3)
  {
    v5 = v3;
    v6 = objc_opt_self();
    v7 = v4;
    [v6 migrateFromCloudKitIntoDatabaseIfNecessary_];
  }

  else
  {
    v8 = v4;
    OUTLINED_FUNCTION_10_0();
    v9 = sub_231157938();

    swift_willThrow();
    if (qword_280CCB410 != -1)
    {
      OUTLINED_FUNCTION_0_20(&qword_280CCB410);
    }

    v10 = sub_231158258();
    __swift_project_value_buffer(v10, qword_280CCDF80);
    v11 = OUTLINED_FUNCTION_10_0();
    v12 = sub_231158238();
    v13 = sub_2311592D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = OUTLINED_FUNCTION_62_1();
      v21[0] = v15;
      *v14 = 136446210;
      swift_getErrorValue();
      v16 = sub_2311598B8();
      v18 = sub_2310488F8(v16, v17, v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_23103C000, v12, v13, "Failed to migrate from Peace CloudKit: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v15);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_9_7();
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_1();

  return v19();
}

uint64_t sub_2310C5830(uint64_t a1)
{
  v15 = v1;
  v14[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 184);
  swift_willThrow();
  if (qword_280CCB410 != -1)
  {
    OUTLINED_FUNCTION_0_20(&qword_280CCB410);
  }

  v3 = sub_231158258();
  __swift_project_value_buffer(v3, qword_280CCDF80);
  v4 = OUTLINED_FUNCTION_10_0();
  v5 = sub_231158238();
  v6 = sub_2311592D8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_62_1();
    v14[0] = v8;
    *v7 = 136446210;
    swift_getErrorValue();
    v9 = sub_2311598B8();
    v11 = sub_2310488F8(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_23103C000, v5, v6, "Failed to migrate from Peace CloudKit: %{public}s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v8);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_16();
  }

  else
  {
  }

  OUTLINED_FUNCTION_1();

  return v12();
}

uint64_t sub_2310C59EC()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v3[1] = sub_23106044C;
  v5 = OUTLINED_FUNCTION_11_0();

  return sub_2310C52E4(v5, v6, v7, v1);
}

void sub_2310C5A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v4 = *(a3 + 64);
    if (v4)
    {
      sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
      v5 = sub_231158F38();
      [v4 handleRemovedIgnoredNotifications_];
    }

    v6 = *(a3 + 48);
    sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
    v7 = sub_231158F38();
    [v6 handleRemovedIgnoredNotifications_];
  }
}

uint64_t sub_2310C5B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
    v4 = sub_231158F48();
  }

  if (a3)
  {
    sub_231054A0C(0, &qword_27DD3CC50, 0x277CE1F78);
    a3 = sub_231158F48();
  }

  v5(v4, a3);
}

uint64_t sub_2310C5C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 408) = a4;

  return MEMORY[0x2822009F8](sub_2310C5CCC, 0, 0);
}

uint64_t sub_2310C5CCC()
{
  v1 = *(v0 + 408);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CBE0, &unk_231165E60);
  inited = swift_initStackObject();
  *(v0 + 416) = inited;
  *(inited + 16) = xmmword_231161B80;
  v3 = *(v1 + 136);
  *(inited + 56) = type metadata accessor for ToolKitIndexingScheduler();
  *(inited + 64) = &off_2845DA070;
  *(inited + 32) = v3;
  v4 = *(v1 + 168);

  OUTLINED_FUNCTION_12_6(1, 2);
  v6 = v5;
  v7 = type metadata accessor for BiomeStreamWriter();
  *(v0 + 88) = v4;
  *(v0 + 112) = v7;
  *(v0 + 120) = &off_2845DC2D8;
  *(v6 + 16) = 2;
  sub_23104613C((v0 + 88), v6 + 72);
  v8 = sub_2310C48EC();
  v9 = *(v6 + 16);
  v10 = v9 + 1;
  if (v9 >= *(v6 + 24) >> 1)
  {
    OUTLINED_FUNCTION_2_14();
    v6 = v40;
  }

  v11 = *(v0 + 408);
  *(v0 + 152) = sub_231054A0C(0, &qword_27DD3CBE8, off_2788FC288);
  *(v0 + 160) = &protocol witness table for WFSiriWorkflowVocabularyUpdater;
  *(v0 + 128) = v8;
  OUTLINED_FUNCTION_11_11();
  sub_23104613C((v0 + 128), v12 + 32);
  v13 = *(v11 + 184);
  if (v13)
  {
    v14 = *(v6 + 24);
    v15 = v9 + 2;

    if (v15 > (v14 >> 1))
    {
      OUTLINED_FUNCTION_12_6(v14 > 1, v15);
      v6 = v43;
    }

    *(v0 + 392) = type metadata accessor for WidgetReloadingObserver();
    *(v0 + 400) = &off_2845DB648;
    *(v0 + 368) = v13;
    *(v6 + 16) = v15;
    sub_23104613C((v0 + 368), v6 + 40 * v10 + 32);
  }

  v16 = sub_2310C4878();
  v18 = *(v6 + 16);
  v17 = *(v6 + 24);
  v19 = v18 + 1;
  if (v18 >= v17 >> 1)
  {
    OUTLINED_FUNCTION_12_6(v17 > 1, v18 + 1);
    v6 = v41;
  }

  v20 = *(v0 + 408);
  *(v0 + 192) = sub_231054A0C(0, &qword_27DD3CBF0, off_2788FC298);
  *(v0 + 200) = &protocol witness table for WFSystemSurfaceWorkflowStatusUpdater;
  *(v0 + 168) = v16;
  *(v6 + 16) = v19;
  sub_23104613C((v0 + 168), v6 + 40 * v18 + 32);
  v21 = *(v6 + 24);
  v22 = v18 + 2;
  v23 = *(v20 + 192);
  if ((v18 + 2) > (v21 >> 1))
  {
    OUTLINED_FUNCTION_2_14();
    v6 = v42;
  }

  v24 = *(v0 + 408);
  *(v0 + 232) = sub_231054A0C(0, &qword_27DD3CBF8, off_2788FC228);
  *(v0 + 240) = &protocol witness table for WFConfiguredSystemActionMigrator;
  *(v0 + 208) = v23;
  *(v6 + 16) = v22;
  sub_23104613C((v0 + 208), v6 + 40 * v19 + 32);
  v25 = *(v24 + 104);
  if (v25)
  {
    v26 = *(v6 + 24);

    if ((v18 + 3) > (v26 >> 1))
    {
      OUTLINED_FUNCTION_12_6(v26 > 1, v18 + 3);
      v6 = v44;
    }

    *(v0 + 352) = type metadata accessor for WFSpotlightSyncService();
    *(v0 + 360) = &off_2845DB0E0;
    *(v0 + 328) = v25;
    *(v6 + 16) = v18 + 3;
    sub_23104613C((v0 + 328), v6 + 40 * v22 + 32);
  }

  v27 = *(v0 + 408);
  v28 = *(v27 + 112);
  if (v28)
  {
    v29 = *(v6 + 16);
    v30 = *(v6 + 24);
    v31 = v28;
    if (v29 >= v30 >> 1)
    {
      OUTLINED_FUNCTION_2_14();
      v6 = v45;
    }

    *(v0 + 312) = sub_231054A0C(0, &qword_280CCAE68, off_2788FC240);
    *(v0 + 320) = &protocol witness table for WFContextualActionSpotlightSyncService;
    *(v0 + 288) = v31;
    OUTLINED_FUNCTION_11_11();
    sub_23104613C((v0 + 288), v32 + 32);
    v27 = *(v0 + 408);
  }

  v33 = *(v27 + 176);
  if (v33)
  {
    v34 = *(v6 + 16);
    v35 = *(v6 + 24);
    v36 = v33;
    if (v34 >= v35 >> 1)
    {
      OUTLINED_FUNCTION_2_14();
      v6 = v46;
    }

    *(v0 + 272) = sub_231054A0C(0, &unk_27DD3CC00, off_2788FC270);
    *(v0 + 280) = &protocol witness table for WFRemoteWidgetDataProvider;
    *(v0 + 248) = v36;
    OUTLINED_FUNCTION_11_11();
    sub_23104613C((v0 + 248), v37 + 32);
  }

  *(v0 + 424) = v6;
  v38 = swift_task_alloc();
  *(v0 + 432) = v38;
  *v38 = v0;
  v38[1] = sub_2310C6144;

  return sub_23107A2D8(v6);
}

uint64_t sub_2310C6144()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *v0;
  OUTLINED_FUNCTION_3_2();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_2310C6260, 0, 0);
}

uint64_t sub_2310C6260()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310C62E4()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v3[1] = sub_23105FDEC;
  v5 = OUTLINED_FUNCTION_11_0();

  return sub_2310C5C3C(v5, v6, v7, v1);
}

id *VCDaemon.deinit()
{

  return v0;
}

uint64_t VCDaemon.__deallocating_deinit()
{
  VCDaemon.deinit();

  return MEMORY[0x2821FE8D8](v0, 224, 7);
}

uint64_t sub_2310C64AC(char a1)
{
  switch(a1)
  {
    case 1:
      v1 = type metadata accessor for ToolKitHighPriorityDeferredFullIndexingTask();
      v2 = &unk_27DD3CBC8;
      v3 = type metadata accessor for ToolKitHighPriorityDeferredFullIndexingTask;
      v4 = &unk_231166030;
      break;
    case 2:
      v1 = type metadata accessor for ToolKitHighPriorityDeferredDeltaIndexingTask();
      v2 = &unk_280CCB530;
      v3 = type metadata accessor for ToolKitHighPriorityDeferredDeltaIndexingTask;
      v4 = &unk_231166070;
      break;
    case 3:
      v1 = type metadata accessor for ToolKitDatabaseMaintenanceTask();
      v2 = &unk_280CCB680;
      v3 = type metadata accessor for ToolKitDatabaseMaintenanceTask;
      v4 = &unk_231166008;
      break;
    case 4:
      v1 = type metadata accessor for SpotlightHighPriorityDeferredIndexingTask();
      v2 = &unk_27DD3CBB8;
      v3 = type metadata accessor for SpotlightHighPriorityDeferredIndexingTask;
      v4 = &unk_231165FC8;
      break;
    default:
      v1 = type metadata accessor for ToolKitLowPriorityDeferredFullIndexingTask();
      v2 = &unk_27DD3CBD8;
      v3 = type metadata accessor for ToolKitLowPriorityDeferredFullIndexingTask;
      v4 = &unk_2311660B0;
      break;
  }

  sub_2310C6B84(v2, v3, v4);
  return v1;
}

unint64_t sub_2310C6624(uint64_t a1, uint64_t a2)
{
  sub_231159758();
  OUTLINED_FUNCTION_10_0();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_2310C666C(char a1)
{
  result = 0xD00000000000003BLL;
  switch(a1)
  {
    case 1:
      result = 0xD00000000000003CLL;
      break;
    case 2:
      result = 0xD00000000000003DLL;
      break;
    case 3:
      result = 0xD000000000000033;
      break;
    case 4:
      result = 0xD000000000000039;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2310C6750@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2310C6624(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2310C6780@<X0>(unint64_t *a1@<X8>)
{
  result = sub_2310C666C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for VCDaemon.DaemonBackgroundTasks(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for VCDaemon.DaemonBackgroundTasks(_BYTE *result, unsigned int a2, unsigned int a3)
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

unint64_t sub_2310C6994()
{
  result = qword_27DD3CBA8;
  if (!qword_27DD3CBA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DD3CBB0, &qword_2311657D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CBA8);
  }

  return result;
}

unint64_t sub_2310C69F8(void *a1)
{
  a1[1] = sub_2310C6A30();
  a1[2] = sub_2310C6A84();
  result = sub_2310C6AD8();
  a1[3] = result;
  return result;
}

unint64_t sub_2310C6A30()
{
  result = qword_280CCB3D8;
  if (!qword_280CCB3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3D8);
  }

  return result;
}

unint64_t sub_2310C6A84()
{
  result = qword_280CCB400;
  if (!qword_280CCB400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB400);
  }

  return result;
}

unint64_t sub_2310C6AD8()
{
  result = qword_280CCB3E8;
  if (!qword_280CCB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3E8);
  }

  return result;
}

unint64_t sub_2310C6B30()
{
  result = qword_280CCB3F0;
  if (!qword_280CCB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB3F0);
  }

  return result;
}

uint64_t sub_2310C6B84(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_2310C6BE0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = *a4;
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_23105FDEC;

  return sub_2310C3904(a1, a2, a3, v14, a5, a6, a7);
}

uint64_t sub_2310C6CC0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_15_2(v0);
  *v1 = v2;
  v1[1] = sub_23105FDEC;
  v3 = OUTLINED_FUNCTION_11_0();

  return v4(v3);
}

uint64_t sub_2310C6D98(unsigned __int8 *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CC20, &unk_231165900) - 8);
  v4 = (*(v3 + 80) + 17) & ~*(v3 + 80);
  v5 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_2310C6D8C(a1, (v1 + 16), v1 + v4, v5);
}

uint64_t OUTLINED_FUNCTION_0_20(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_2_14()
{

  sub_2310CC690();
}

uint64_t OUTLINED_FUNCTION_4_12(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_14_10()
{

  return sub_2310798FC();
}

void *OUTLINED_FUNCTION_20_7(uint64_t a1, ...)
{

  return sub_231159918();
}

uint64_t sub_2310C6F34()
{
  v1 = sub_231157D78();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  v8 = sub_231157DE8();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_14();
  sub_231157C78();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v14 = OUTLINED_FUNCTION_4_13(v13);
  v15(v14);
  v16 = OUTLINED_FUNCTION_11_12();
  v18 = v17(v16);
  if (v18 == *MEMORY[0x277D79B18])
  {
    v19 = OUTLINED_FUNCTION_3_14();
    v20(v19);
    v21 = OUTLINED_FUNCTION_8_12();
    v22(v21);
    v23 = sub_2310C823C();
    v24 = [v23 serializedData];

    if (v24)
    {
      v25 = sub_2311579A8();
    }

    else
    {
      v25 = 0;
    }

    (*(v10 + 8))(v0, v8);
    return v25;
  }

  if (v18 == *MEMORY[0x277D79B20])
  {
    v26 = OUTLINED_FUNCTION_3_14();
    v27(v26);
    v28 = OUTLINED_FUNCTION_9_14();
    v29(v28);
    v30 = sub_2310C867C();
    v31 = [v30 serializedData];

    if (v31)
    {
      v25 = sub_2311579A8();
    }

    else
    {
      v25 = 0;
    }

    (*(v3 + 8))(v7, v1);
    return v25;
  }

  result = sub_2311596C8();
  __break(1u);
  return result;
}

uint64_t TriggerType.isOneTime.getter()
{
  v1 = sub_231157DE8();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  v8 = sub_231157D78();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_14();
  sub_231157C78();
  OUTLINED_FUNCTION_4();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_5_0();
  v14 = OUTLINED_FUNCTION_4_13(v13);
  v15(v14);
  v16 = OUTLINED_FUNCTION_11_12();
  v18 = v17(v16);
  if (v18 == *MEMORY[0x277D79B18])
  {
    v19 = OUTLINED_FUNCTION_3_14();
    v20(v19);
    v21 = OUTLINED_FUNCTION_9_14();
    v22(v21);
    v23 = sub_231157DB8();
    (*(v3 + 8))(v7, v1);
    return v23 & 1;
  }

  if (v18 == *MEMORY[0x277D79B20])
  {
    v24 = OUTLINED_FUNCTION_3_14();
    v25(v24);
    v26 = OUTLINED_FUNCTION_8_12();
    v27(v26);
    v23 = sub_231157D58();
    (*(v10 + 8))(v0, v8);
    return v23 & 1;
  }

  result = sub_231159808();
  __break(1u);
  return result;
}

uint64_t sub_2310C7484@<X0>(uint64_t *a1@<X8>)
{
  v143 = a1;
  v2 = sub_231157C68();
  v3 = OUTLINED_FUNCTION_19(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v138 = (v5 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC70, &qword_2311659B8);
  v7 = OUTLINED_FUNCTION_19(v6);
  MEMORY[0x28223BE20](v7);
  v137 = &v123[-v8];
  OUTLINED_FUNCTION_6_9();
  v130 = sub_231157DE8();
  OUTLINED_FUNCTION_4();
  v131 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v129 = v12 - v11;
  OUTLINED_FUNCTION_6_9();
  sub_231157CD8();
  OUTLINED_FUNCTION_4();
  v145 = v14;
  v146 = v13;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_9_1();
  v17 = (v15 - v16);
  MEMORY[0x28223BE20](v18);
  v144 = &v123[-v19];
  OUTLINED_FUNCTION_6_9();
  v141 = sub_231157A88();
  OUTLINED_FUNCTION_4();
  v136 = v20;
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_5_0();
  v134 = v23 - v22;
  OUTLINED_FUNCTION_6_9();
  sub_231157848();
  OUTLINED_FUNCTION_4();
  v139 = v25;
  v140 = v24;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_9_1();
  v28 = v26 - v27;
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v123[-v31];
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_16_5();
  v135 = v33;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v34);
  OUTLINED_FUNCTION_16_5();
  v133 = v35;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v36);
  OUTLINED_FUNCTION_16_5();
  v132 = v37;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v38);
  v149 = &v123[-v39];
  OUTLINED_FUNCTION_6_9();
  v147 = sub_231157A08();
  OUTLINED_FUNCTION_4();
  v151 = v40;
  MEMORY[0x28223BE20](v41);
  OUTLINED_FUNCTION_9_1();
  v44 = (v42 - v43);
  MEMORY[0x28223BE20](v45);
  OUTLINED_FUNCTION_16_5();
  v150 = v46;
  OUTLINED_FUNCTION_15_4();
  v48 = MEMORY[0x28223BE20](v47);
  v50 = &v123[-v49];
  MEMORY[0x28223BE20](v48);
  v52 = &v123[-v51];
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  v54 = OUTLINED_FUNCTION_19(v53);
  MEMORY[0x28223BE20](v54);
  OUTLINED_FUNCTION_9_1();
  v148 = v55 - v56;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v57);
  v59 = &v123[-v58];
  objc_opt_self();
  v60 = swift_dynamicCastObjCClass();
  if (v60)
  {
    v61 = v60;
    v137 = v17;
    v62 = sub_231157D38();
    __swift_storeEnumTagSinglePayload(v59, 1, 1, v62);
    v138 = v1;
    v63 = [v61 startTime];
    v142 = v59;
    v64 = v61;
    if (v63)
    {
      v65 = v63;
      sub_2311579D8();

      v66 = v151[4];
      v67 = v147;
      v66(v52, v50, v147);
      v68 = [v61 endTime];
      if (v68)
      {
        v69 = v68;
        sub_2311579D8();

        v66(v150, v44, v67);
        v128 = v52;
        v70 = v134;
        sub_231157A68();
        v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC98, &qword_2311659C8);
        v71 = sub_231157A78();
        OUTLINED_FUNCTION_4();
        v73 = v72;
        v75 = *(v74 + 72);
        v76 = *(v72 + 80);
        v131 = v61;
        v77 = (v76 + 32) & ~v76;
        v129 = v77 + 2 * v75;
        v78 = v75;
        v125 = v75;
        v79 = swift_allocObject();
        v127 = xmmword_231163950;
        *(v79 + 16) = xmmword_231163950;
        v126 = *MEMORY[0x277CC9980];
        v80 = *(v73 + 104);
        v80(v79 + v77);
        v124 = *MEMORY[0x277CC99A0];
        v80(v79 + v77 + v78);
        sub_2310A0A00(v79);
        sub_231157A48();

        v136 = *(v136 + 8);
        (v136)(v70, v141);
        sub_231157A68();
        v81 = swift_allocObject();
        *(v81 + 16) = v127;
        (v80)(v81 + v77, v126, v71);
        (v80)(v81 + v77 + v125, v124, v71);
        sub_2310A0A00(v81);
        v82 = v132;
        sub_231157A48();

        (v136)(v70, v141);
        v83 = v142;
        v85 = v139;
        v84 = v140;
        v86 = *(v139 + 16);
        v87 = v149;
        v86(v133, v149, v140);
        v86(v135, v82, v84);
        v88 = v148;
        sub_231157D28();
        v89 = *(v85 + 8);
        v89(v82, v84);
        v89(v87, v84);
        v90 = v151[1];
        v64 = v131;
        v91 = v147;
        v90(v150, v147);
        v90(v128, v91);
        sub_231060190(v83, &qword_27DD3CC78, &qword_2311659C0);
        sub_2310C8C9C(v88, v83);
      }

      else
      {
        (v151[1])(v52, v67);
      }
    }

    objc_opt_self();
    v104 = v138;
    v105 = swift_dynamicCastObjCClass();
    v107 = v144;
    v106 = v145;
    v108 = MEMORY[0x277D79B38];
    if (v105)
    {
      v108 = MEMORY[0x277D79B40];
    }

    v109 = v146;
    (*(v145 + 104))(v144, *v108, v146);
    if ([v64 region])
    {
      (*(v106 + 16))(v137, v107, v109);
      v110 = v142;
      sub_2310C85C4(v142, v148);
      v111 = sub_231157D78();
      v112 = v143;
      v143[3] = v111;
      v112[4] = sub_2310C8634(&qword_27DD3CC90, MEMORY[0x277D79B50], MEMORY[0x277D79B48]);
      __swift_allocate_boxed_opaque_existential_1(v112);
      sub_231157D48();

      (*(v106 + 8))(v107, v109);
      v113 = v110;
    }

    else
    {
      sub_2310C8118();
      v114 = swift_allocError();
      *v115 = 0xD000000000000025;
      v115[1] = 0x800000023116A4B0;
      v152 = v114;
      swift_willThrow();

      (*(v106 + 8))(v107, v109);
      v113 = v142;
    }

    return sub_231060190(v113, &qword_27DD3CC78, &qword_2311659C0);
  }

  else
  {
    v92 = v32;
    v93 = v137;
    v94 = v138;
    objc_opt_self();
    v95 = swift_dynamicCastObjCClass();
    if (v95)
    {
      v96 = v95;
      v151 = v1;
      v97 = [v96 time];
      if (v97)
      {
        v98 = v97;
        sub_231157838();

        v100 = v139;
        v99 = v140;
        (*(v139 + 32))(v92, v28, v140);
        sub_2310C8344(v94);
        (*(v100 + 16))(v149, v92, v99);
        sub_231157DD8();
        v101 = v130;
        if (__swift_getEnumTagSinglePayload(v93, 1, v130) == 1)
        {
          sub_231060190(v93, &qword_27DD3CC70, &qword_2311659B8);
          sub_2310C8118();
          v102 = swift_allocError();
          *v103 = 0xD000000000000024;
          v103[1] = 0x800000023116A480;
          v152 = v102;
          swift_willThrow();
        }

        else
        {
          v119 = v131[4];
          v120 = v129;
          v119(v129, v93, v101);
          v121 = v143;
          v143[3] = v101;
          v121[4] = sub_2310C8634(&qword_27DD3CC88, MEMORY[0x277D79B70], MEMORY[0x277D79B68]);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v121);
          v119(boxed_opaque_existential_1, v120, v101);
        }

        return (*(v100 + 8))(v92, v99);
      }

      else
      {
        OUTLINED_FUNCTION_13_12();
        result = sub_2311596C8();
        __break(1u);
      }
    }

    else
    {
      sub_2310C8118();
      v117 = swift_allocError();
      *v118 = 0xD000000000000018;
      v118[1] = 0x800000023116A3D0;
      v152 = v117;
      return swift_willThrow();
    }
  }

  return result;
}

unint64_t sub_2310C8118()
{
  result = qword_27DD3CC80;
  if (!qword_27DD3CC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CC80);
  }

  return result;
}

unint64_t sub_2310C816C(uint64_t a1, unint64_t a2)
{
  sub_231159588();

  if (a2)
  {
    v4 = a2;
  }

  else
  {

    v4 = 0xE700000000000000;
    a1 = 0x6E776F6E6B6E75;
  }

  MEMORY[0x231924980](a1, v4);

  MEMORY[0x231924980](46, 0xE100000000000000);
  return 0xD000000000000027;
}

id sub_2310C823C()
{
  v0 = sub_231157848();
  OUTLINED_FUNCTION_4();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_5_0();
  v6 = v5 - v4;
  v7 = [objc_allocWithZone(MEMORY[0x277D7C958]) init];
  [v7 setMode_];
  sub_231157DC8();
  v8 = sub_231157828();
  (*(v2 + 8))(v6, v0);
  [v7 setTime_];

  return v7;
}

char *sub_2310C8344@<X0>(void *a1@<X8>)
{
  if (![v1 mode])
  {
    v7 = [v1 daysOfWeek];
    sub_2310C8D0C();
    v8 = sub_231158F48();

    v9 = sub_23106FF58(v8);

    if (v9 == 7)
    {
      v6 = MEMORY[0x277D79B00];
    }

    else
    {
      v11 = [v1 daysOfWeek];
      v12 = sub_231158F48();

      v13 = sub_23106FF58(v12);
      if (v13)
      {
        v14 = v13;
        v26 = a1;
        v27 = MEMORY[0x277D84F90];
        result = sub_23104CC4C(0, v13 & ~(v13 >> 63), 0);
        if (v14 < 0)
        {
          __break(1u);
          return result;
        }

        v16 = 0;
        v17 = v27;
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x231925080](v16, v12);
          }

          else
          {
            v18 = *(v12 + 8 * v16 + 32);
          }

          v19 = v18;
          v20 = [v18 integerValue];

          v22 = *(v27 + 16);
          v21 = *(v27 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_23104CC4C((v21 > 1), v22 + 1, 1);
          }

          ++v16;
          *(v27 + 16) = v22 + 1;
          *(v27 + 8 * v22 + 32) = v20;
        }

        while (v14 != v16);

        a1 = v26;
      }

      else
      {

        v17 = MEMORY[0x277D84F90];
      }

      *a1 = v17;
      v6 = MEMORY[0x277D79B08];
    }

    goto LABEL_19;
  }

  v3 = [v1 dayOfMonth];
  if (v3)
  {
    v4 = v3;
    v5 = [v3 integerValue];

    *a1 = v5;
    v6 = MEMORY[0x277D79B10];
LABEL_19:
    v10 = *v6;
    goto LABEL_20;
  }

  v10 = *MEMORY[0x277D79B00];
LABEL_20:
  sub_231157C68();
  OUTLINED_FUNCTION_11();
  v25 = *(v24 + 104);

  return v25(a1, v10, v23);
}

uint64_t sub_2310C85C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310C8634(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_2310C867C()
{
  sub_231157848();
  OUTLINED_FUNCTION_4();
  v52 = v2;
  v53 = v1;
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_5_0();
  OUTLINED_FUNCTION_7_14();
  v51 = sub_231157A88();
  OUTLINED_FUNCTION_4();
  v56 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CCA0, &qword_2311659D0);
  v9 = OUTLINED_FUNCTION_19(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_9_1();
  v49 = v10 - v11;
  OUTLINED_FUNCTION_15_4();
  MEMORY[0x28223BE20](v12);
  v14 = &v49 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  v16 = OUTLINED_FUNCTION_19(v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v55 = sub_231157D38();
  OUTLINED_FUNCTION_4();
  v50 = v19;
  MEMORY[0x28223BE20](v20);
  OUTLINED_FUNCTION_5_0();
  v54 = v22 - v21;
  OUTLINED_FUNCTION_6_9();
  v23 = sub_231157CD8();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v49 - v31;
  sub_231157CE8();
  v33 = (*(v25 + 88))(v32, v23);
  if (v33 == *MEMORY[0x277D79B38])
  {
    v34 = 0x277D7C568;
  }

  else
  {
    if (v33 != *MEMORY[0x277D79B40])
    {
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_231159588();
      MEMORY[0x231924980](0x206E776F6E6B6E55, 0xE800000000000000);
      sub_231157CE8();
      sub_231159688();
      (*(v25 + 8))(v29, v23);
      MEMORY[0x231924980](0xD000000000000031, 0x800000023116A500);
      OUTLINED_FUNCTION_13_12();
      result = sub_2311596C8();
      __break(1u);
      return result;
    }

    v34 = 0x277D7C150;
  }

  v35 = [objc_allocWithZone(*v34) init];
  sub_231157D68();
  v36 = v55;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, 1, v55);
  v38 = v52;
  if (EnumTagSinglePayload == 1)
  {
    sub_231060190(v18, &qword_27DD3CC78, &qword_2311659C0);
  }

  else
  {
    (*(v50 + 32))(v54, v18, v36);
    sub_231157A68();
    sub_231157D18();
    sub_231157A58();
    v39 = *(v38 + 8);
    v39(v0, v53);
    v40 = *(v56 + 8);
    v56 += 8;
    v40(v7, v51);
    v41 = sub_231157A08();
    v42 = 0;
    if (__swift_getEnumTagSinglePayload(v14, 1, v41) != 1)
    {
      v42 = sub_2311579B8();
      OUTLINED_FUNCTION_11();
      (*(v43 + 8))(v14, v41);
    }

    [v35 setStartTime_];

    sub_231157A68();
    sub_231157D08();
    v44 = v49;
    sub_231157A58();
    v39(v0, v53);
    v40(v7, v51);
    if (__swift_getEnumTagSinglePayload(v44, 1, v41) == 1)
    {
      v45 = 0;
    }

    else
    {
      v45 = sub_2311579B8();
      OUTLINED_FUNCTION_11();
      (*(v46 + 8))(v44, v41);
    }

    [v35 setEndTime_];

    (*(v50 + 8))(v54, v55);
  }

  v47 = sub_231157CF8();
  [v35 setRegion_];

  return v35;
}

uint64_t sub_2310C8C9C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CC78, &qword_2311659C0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2310C8D0C()
{
  result = qword_280CCAE60;
  if (!qword_280CCAE60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280CCAE60);
  }

  return result;
}

uint64_t sub_2310C8D50(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
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

uint64_t sub_2310C8DA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
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

VoiceShortcuts::DistributedNotificationEventDescriptor __swiftcall DistributedNotificationEventDescriptor.init(eventName:)(__C::VCXPCEventName eventName)
{
  v3 = v1;
  v4 = sub_231158E58();
  v6 = v5;

  *v3 = v4;
  v3[1] = v6;
  result.name._object = v8;
  result.name._countAndFlagsBits = v7;
  return result;
}

uint64_t static DistributedNotificationEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t DistributedNotificationEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

unint64_t XPCDistributedNotificationEventStream.Event.description.getter()
{
  sub_231159588();

  v0 = sub_2311580F8();
  MEMORY[0x231924980](v0);

  MEMORY[0x231924980](0x6E4972657375202CLL, 0xEB000000003D6F66);
  if (sub_231158108())
  {
    v1 = sub_231158DA8();
    v3 = v2;
  }

  else
  {
    v3 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x231924980](v1, v3);

  MEMORY[0x231924980](62, 0xE100000000000000);
  return 0xD00000000000001FLL;
}

uint64_t XPCDistributedNotificationEventStream.descriptor(for:)@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2311580F8();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2310C90C0(uint64_t a1)
{
  result = sub_2310C90E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310C90E8()
{
  result = qword_280CCB588;
  if (!qword_280CCB588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB588);
  }

  return result;
}

unint64_t sub_2310C9140()
{
  result = qword_280CCB580;
  if (!qword_280CCB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB580);
  }

  return result;
}

uint64_t sub_2310C9194(uint64_t a1)
{
  result = sub_2310C92E0(&qword_280CCB0D0, MEMORY[0x277D79D10], MEMORY[0x277D79D20]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310C91F0()
{
  result = qword_280CCB578;
  if (!qword_280CCB578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB578);
  }

  return result;
}

uint64_t sub_2310C925C(uint64_t a1)
{
  v2 = MEMORY[0x277D79D30];
  *(a1 + 8) = sub_2310C92E0(&qword_280CCB0C0, MEMORY[0x277D79D30], MEMORY[0x277D79D28]);
  result = sub_2310C92E0(&qword_280CCB0C8, v2, &protocol conformance descriptor for XPCDistributedNotificationEventStream);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2310C92E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t WFRemoteWidgetDataProvider.tasks.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v2 = swift_allocObject();
  *(v2 + 16) = 0xD000000000000020;
  *(v2 + 24) = 0x800000023116A5B0;
  OUTLINED_FUNCTION_26_1();
  v3 = swift_allocObject();
  *(v3 + 16) = sub_231072558;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_26_1();
  v4 = swift_allocObject();
  *(v4 + 16) = &unk_231165BD8;
  *(v4 + 24) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_231161B80;
  *(inited + 32) = 0xD00000000000001DLL;
  *(inited + 40) = 0x800000023116A590;
  *(inited + 48) = sub_231072560;
  *(inited + 56) = v3;
  *(inited + 64) = 2;
  *(inited + 72) = &unk_231165BE0;
  *(inited + 80) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = v0;
  OUTLINED_FUNCTION_26_1();
  v7 = swift_allocObject();
  *(v7 + 16) = 0xD000000000000019;
  *(v7 + 24) = 0x800000023116A600;
  OUTLINED_FUNCTION_26_1();
  v8 = swift_allocObject();
  *(v8 + 16) = sub_2310C99D8;
  *(v8 + 24) = v7;
  OUTLINED_FUNCTION_26_1();
  v9 = swift_allocObject();
  *(v9 + 16) = &unk_231165BF8;
  *(v9 + 24) = v6;
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_231161B80;
  *(v10 + 32) = 0xD00000000000001CLL;
  *(v10 + 40) = 0x800000023116A5E0;
  *(v10 + 48) = sub_2310C99E0;
  *(v10 + 56) = v8;
  *(v10 + 64) = 2;
  *(v10 + 72) = &unk_231165C00;
  *(v10 + 80) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BED8, &unk_2311637D0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_231163950;
  *(v11 + 32) = inited;
  *(v11 + 40) = v10;
  v12 = v0;
  v13 = static TaskBuilder.buildBlock(_:)();
  swift_setDeallocating();
  sub_2310639FC();
  return v13;
}

uint64_t sub_2310C9604()
{
  OUTLINED_FUNCTION_4_1();
  [*(v0 + 16) startNetworkListenerWithType_];
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310C9670()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_19_3(v3);

  return sub_2310C95E4(v5, v1);
}

uint64_t sub_2310C96FC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2310C971C, 0, 0);
}

uint64_t sub_2310C971C()
{
  OUTLINED_FUNCTION_4_1();
  [*(v0 + 24) startNetworkListenerWithType_];
  sub_231157F48();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2310C97B0()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_3(v1);

  return sub_231062180();
}

uint64_t sub_2310C984C()
{
  OUTLINED_FUNCTION_4_1();
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2310C993C()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 16);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_43_0(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_19_3(v3);

  return sub_2310C96FC(v5, v1);
}

uint64_t sub_2310C99E8()
{
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_43_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_19_3(v1);

  return sub_2310637B8();
}

uint64_t static CSSearchQuery.performDiff(of:in:with:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void, unint64_t, uint64_t (*)(), void *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a5;
  v8 = a3;
  v10 = *(a2 + 16);
  if (v10)
  {
    v11 = (a2 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;

      sub_231159588();

      MEMORY[0x231924980](v13, v12);

      MEMORY[0x231924980](34, 0xE100000000000000);
      MEMORY[0x231924980](0xD00000000000001ALL, 0x8000000231169640);

      v11 += 2;
      --v10;
    }

    while (v10);
    v8 = a3;
    v7 = a5;
  }

  v14 = swift_allocObject();
  v14[2] = v7;
  v14[3] = a6;
  v14[4] = a1;

  v8(0, 0xE000000000000000, sub_2310C9E98, v14);
}

void sub_2310C9C40(uint64_t a1, id a2, void (*a3)(uint64_t, uint64_t, id), uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = a2;
    a3(MEMORY[0x277D84FA0], MEMORY[0x277D84FA0], a2);
  }

  else
  {
    v33 = MEMORY[0x277D84FA0];
    v10 = a1 + 56;
    v9 = *(a1 + 56);
    v32 = MEMORY[0x277D84FA0];
    v11 = 1 << *(a1 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & v9;
    v14 = (v11 + 63) >> 6;
    v15 = a5 + 56;

    v17 = 0;
    v30 = v16;
    if (v13)
    {
      goto LABEL_13;
    }

    while (1)
    {
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        return;
      }

      if (v18 >= v14)
      {
        break;
      }

      v13 = *(v10 + 8 * v18);
      ++v17;
      if (v13)
      {
        v17 = v18;
        do
        {
LABEL_13:
          v19 = __clz(__rbit64(v13));
          v13 &= v13 - 1;
          v20 = (*(v16 + 48) + ((v17 << 10) | (16 * v19)));
          v21 = *v20;
          v22 = v20[1];
          if (*(a5 + 16))
          {
            sub_231159918();

            sub_231158EA8();
            v23 = sub_231159948();
            v24 = ~(-1 << *(a5 + 32));
            do
            {
              v25 = v23 & v24;
              if (((*(v15 + (((v23 & v24) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v23 & v24)) & 1) == 0)
              {
                break;
              }

              v26 = (*(a5 + 48) + 16 * v25);
              if (*v26 == v21 && v26[1] == v22)
              {
                break;
              }

              v28 = sub_231159818();
              v23 = v25 + 1;
            }

            while ((v28 & 1) == 0);
          }

          else
          {
          }

          sub_2310DF3EC(&v31, v21, v22);

          v16 = v30;
        }

        while (v13);
      }
    }

    a3(v33, v32, 0);
  }
}

uint64_t sub_2310C9EA4(int a1, int a2, uint64_t a3, uint64_t a4, void *aBlock, const void *a6)
{
  v7 = _Block_copy(aBlock);
  v8 = _Block_copy(a6);
  v9 = sub_231159178();
  v10 = sub_231158F48();
  v11 = swift_allocObject();
  *(v11 + 16) = v7;
  v12 = swift_allocObject();
  *(v12 + 16) = v8;
  static CSSearchQuery.performDiff(of:in:with:completion:)(v9, v10, sub_2310CA094, v11, sub_2310CA1F8, v12);
}

uint64_t sub_2310C9FC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_231158E28();
  v12[4] = a3;
  v12[5] = a4;
  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 1107296256;
  v12[2] = sub_2310CA09C;
  v12[3] = &block_descriptor_16;
  v9 = _Block_copy(v12);
  v10 = *(a5 + 16);

  v10(a5, v8, v9);
  _Block_release(v9);
}

void sub_2310CA09C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = sub_231159178();

  v6 = a3;
  v4(v5, a3);
}

void sub_2310CA134(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = sub_231159168();
  v7 = sub_231159168();
  if (a3)
  {
    v8 = sub_231157928();
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;
  (*(a4 + 16))(a4, v6, v7);
}

uint64_t static RapportEventDescriptor.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_231159818();
  }
}

uint64_t RapportEventDescriptor.hashValue.getter()
{
  sub_231159918();
  sub_231158EA8();
  return sub_231159948();
}

uint64_t XPCRapportEventStream.descriptor(for:)@<X0>(uint64_t *a2@<X8>)
{
  result = sub_231157F38();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_2310CA2CC(uint64_t a1)
{
  result = sub_2310CA2F4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310CA2F4()
{
  result = qword_27DD3CCA8;
  if (!qword_27DD3CCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CCA8);
  }

  return result;
}

unint64_t sub_2310CA34C()
{
  result = qword_27DD3CCB0;
  if (!qword_27DD3CCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CCB0);
  }

  return result;
}

uint64_t sub_2310CA3A0(uint64_t a1)
{
  result = sub_2310CA4EC(&qword_27DD3CB58, MEMORY[0x277D79C78], MEMORY[0x277D79C88]);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2310CA3FC()
{
  result = qword_27DD3CCB8[0];
  if (!qword_27DD3CCB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27DD3CCB8);
  }

  return result;
}

uint64_t sub_2310CA468(uint64_t a1)
{
  v2 = MEMORY[0x277D79C98];
  *(a1 + 8) = sub_2310CA4EC(&qword_27DD3CB48, MEMORY[0x277D79C98], MEMORY[0x277D79C90]);
  result = sub_2310CA4EC(&qword_27DD3C2A0, v2, &protocol conformance descriptor for XPCRapportEventStream);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_2310CA4EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t EventNode.debounced(delay:maximumDelay:)(uint64_t a1, uint64_t a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for EventDebouncer(0, a1, a2, a6);
  v8 = swift_unknownObjectRetain();
  return sub_2310CA5E0(v8, a3, a4);
}

uint64_t sub_2310CA5E0(uint64_t a1, double a2, double a3)
{
  v6 = swift_allocObject();
  sub_2310CA9F4(a1, a2, a3);
  return v6;
}

uint64_t sub_2310CA638@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (**a3)()@<X8>)
{
  v9 = *(a1 + a2 - 16);
  result = sub_2310CA760();
  if (result)
  {
    v6 = result;
    v7 = v5;
    result = swift_allocObject();
    *(result + 16) = v9;
    *(result + 32) = v6;
    *(result + 40) = v7;
    v8 = sub_231067678;
  }

  else
  {
    v8 = 0;
  }

  *a3 = v8;
  a3[1] = result;
  return result;
}

uint64_t sub_2310CA6C4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  if (*a1)
  {
    v6 = a3 + a4;
    v7 = swift_allocObject();
    *(v7 + 16) = *(v6 - 16);
    *(v7 + 32) = v4;
    *(v7 + 40) = v5;
    v8 = sub_231067650;
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  sub_231042684(v4, v5);
  return sub_2310CA7B0(v8, v7);
}

uint64_t sub_2310CA760()
{
  swift_beginAccess();
  v1 = *(v0 + 40);
  sub_231042684(v1, *(v0 + 48));
  return v1;
}

uint64_t sub_2310CA7B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return sub_231046164(v5, v6);
}

uint64_t sub_2310CA854@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_3_15();
  v4 = *(v3 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_15();
  swift_getAssociatedTypeWitness();
  sub_231159448();
  OUTLINED_FUNCTION_13_0();
  return (*(v5 + 16))(a1, v1 + v4);
}

uint64_t sub_2310CA920(uint64_t a1)
{
  OUTLINED_FUNCTION_3_15();
  v4 = *(v3 + 128);
  swift_beginAccess();
  OUTLINED_FUNCTION_3_15();
  swift_getAssociatedTypeWitness();
  sub_231159448();
  OUTLINED_FUNCTION_13_0();
  (*(v5 + 40))(v1 + v4, a1);
  return swift_endAccess();
}

void *sub_2310CA9F4(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v8 = *v3;
  sub_231159328();
  OUTLINED_FUNCTION_4();
  v25 = v10;
  v26 = v9;
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  sub_231159318();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_5_0();
  v15 = sub_231158D48();
  MEMORY[0x28223BE20](v15 - 8);
  OUTLINED_FUNCTION_5_0();
  v3[5] = 0;
  v3[6] = 0;
  v16 = v8[16];
  v17 = v8[11];
  v27 = v8[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_storeEnumTagSinglePayload(v3 + v16, 1, 1, AssociatedTypeWitness);
  v3[3] = a1;
  sub_23104CA2C();
  swift_unknownObjectRetain();
  sub_231158D08();
  sub_2310CBA50(&unk_280CCAF10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_231040C5C(&qword_280CCAFC0, &qword_27DD3BC00, &unk_231161AB0);
  sub_231159498();
  (*(v25 + 104))(v13, *MEMORY[0x277D85260], v26);
  v19 = sub_231159358();
  v4[4] = v19;
  v20 = [objc_allocWithZone(MEMORY[0x277D79F00]) initWithDelay:v19 maximumDelay:a2 queue:a3];
  v4[2] = v20;
  [v20 addTarget:v4 action:sel_fire_];
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  v22[2] = v27;
  v22[3] = v17;
  v22[4] = v21;
  v23 = *(v17 + 32);
  swift_unknownObjectRetain();

  v23(sub_2310CBA98, v22, v27, v17);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return v4;
}

uint64_t sub_2310CADA0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_2310CAE00(a1);
  }

  return result;
}

uint64_t sub_2310CAE00(uint64_t a1)
{
  v3 = *v1;
  v29 = sub_231158CF8();
  OUTLINED_FUNCTION_4();
  v31 = v4;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v30 = sub_231158D48();
  OUTLINED_FUNCTION_4();
  v28 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  v13 = v12 - v11;
  v14 = *(v3 + 88);
  v15 = *(v3 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_4();
  v18 = v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v27 - v20;
  v27 = v1[4];
  (*(v18 + 16))(&v27 - v20, a1, AssociatedTypeWitness);
  v22 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v23 = swift_allocObject();
  *(v23 + 2) = v15;
  *(v23 + 3) = v14;
  *(v23 + 4) = v1;
  (*(v18 + 32))(&v23[v22], v21, AssociatedTypeWitness);
  aBlock[4] = sub_2310CB9D0;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_231040F30;
  aBlock[3] = &block_descriptor_17;
  v24 = _Block_copy(aBlock);

  sub_231158D08();
  v32 = MEMORY[0x277D84F90];
  sub_2310CBA50(&qword_280CCB090, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C750, &qword_231161B50);
  sub_231040C5C(qword_280CCAFD0, &unk_27DD3C750, &qword_231161B50);
  v25 = v29;
  sub_231159498();
  MEMORY[0x231924E10](0, v13, v8, v24);
  _Block_release(v24);
  (*(v31 + 8))(v8, v25);
  (*(v28 + 8))(v13, v30);
}

id sub_2310CB1A0(id *a1, uint64_t a2)
{
  v18 = a2;
  v17 = *(*a1 + 11);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = sub_231159448();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v17 - v10;
  v12 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v9);
  v14 = &v17 - v13;
  sub_2310CA854(v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, AssociatedTypeWitness) == 1)
  {
    (*(v5 + 8))(v11, v4);
    (*(v12 + 16))(v8, v18, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, AssociatedTypeWitness);
    sub_2310CA920(v8);
  }

  else
  {
    (*(v12 + 32))(v14, v11, AssociatedTypeWitness);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 16))(v18, AssociatedTypeWitness, AssociatedConformanceWitness);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, AssociatedTypeWitness);
    sub_2310CA920(v8);
    (*(v12 + 8))(v14, AssociatedTypeWitness);
  }

  return [a1[2] poke];
}

uint64_t sub_2310CB46C()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1 = sub_231159448();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v19 - v9;
  v11 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v19 - v12;
  sub_2310CA854(v10);
  if (__swift_getEnumTagSinglePayload(v10, 1, AssociatedTypeWitness) == 1)
  {
    return (*(v3 + 8))(v10, v1);
  }

  (*(v11 + 32))(v13, v10, AssociatedTypeWitness);
  __swift_storeEnumTagSinglePayload(v7, 1, 1, AssociatedTypeWitness);
  sub_2310CA920(v7);
  v15 = sub_2310CA760();
  if (v15)
  {
    v17 = v15;
    v18 = v16;
    v15(v13);
    sub_231046164(v17, v18);
  }

  return (*(v11 + 8))(v13, AssociatedTypeWitness);
}

uint64_t sub_2310CB69C(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;

  sub_2310CB46C();
}

uint64_t *EventDebouncer.deinit()
{
  swift_unknownObjectRelease();

  sub_231046164(*(v0 + 40), *(v0 + 48));
  v1 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  sub_231159448();
  OUTLINED_FUNCTION_13_0();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t EventDebouncer.__deallocating_deinit()
{
  EventDebouncer.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

void (*sub_2310CB81C(void *a1))(void *a1)
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = sub_2310CA804(v2);
  return sub_231056514;
}

uint64_t sub_2310CB878(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  result = sub_231159448();
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

id sub_2310CB9D0()
{
  v1 = *(swift_getAssociatedTypeWitness() - 8);
  v2 = *(v0 + 32);
  v3 = v0 + ((*(v1 + 80) + 40) & ~*(v1 + 80));

  return sub_2310CB1A0(v2, v3);
}

uint64_t sub_2310CBA50(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static TaskBuilder.buildExpression(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[3];
  v4 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C720, &unk_231162980);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_231161B80;
  *(v7 + 32) = v2;
  *(v7 + 40) = *(a1 + 1);
  *(v7 + 56) = v3;
  *(v7 + 64) = v4;
  *(v7 + 72) = v6;
  *(v7 + 80) = v5;

  return v7;
}

uint64_t static TaskBuilder.buildOptional(_:)(uint64_t a1)
{
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v1 = *(a1 + 16);
  v2 = (a1 + 80);
  for (i = MEMORY[0x277D84F90]; v1; --v1)
  {
    v4 = *(v2 - 6);
    v6 = *(v2 - 3);
    v5 = *(v2 - 2);
    v7 = *(v2 - 1);
    v8 = *v2;
    v14 = *(v2 - 5);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_2310CC0AC();
      i = v11;
    }

    v9 = *(i + 16);
    if (v9 >= *(i + 24) >> 1)
    {
      sub_2310CC0AC();
      i = v12;
    }

    *(i + 16) = v9 + 1;
    v10 = i + 56 * v9;
    *(v10 + 32) = v4;
    *(v10 + 40) = v14;
    *(v10 + 56) = v6;
    *(v10 + 64) = v5;
    *(v10 + 72) = v7;
    *(v10 + 80) = v8;
    v2 += 7;
  }

  return i;
}

void sub_2310CBCD4(uint64_t result)
{
  v1 = *(result + 16);
  v2 = MEMORY[0x277D84F90];
  v3 = (result + 32);
  if (v1)
  {
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = *(v2 + 16);
      if (__OFADD__(v6, v5))
      {
        break;
      }

      if (!swift_isUniquelyReferenced_nonNull_native() || v6 + v5 > *(v2 + 24) >> 1)
      {
        sub_2310CC0AC();
        v2 = v7;
      }

      if (*(v4 + 16))
      {
        if ((*(v2 + 24) >> 1) - *(v2 + 16) < v5)
        {
          goto LABEL_16;
        }

        swift_arrayInitWithCopy();

        if (v5)
        {
          v8 = *(v2 + 16);
          v9 = __OFADD__(v8, v5);
          v10 = v8 + v5;
          if (v9)
          {
            goto LABEL_17;
          }

          *(v2 + 16) = v10;
        }
      }

      else
      {

        if (v5)
        {
          goto LABEL_15;
        }
      }

      ++v3;
      if (!--v1)
      {
        return;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
  }
}

void sub_2310CBE28()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD68, &unk_231165E50);
      v7 = OUTLINED_FUNCTION_15_8();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v2;
      v7[3] = 2 * ((v8 - 32) / 8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_15();
        sub_23104C794(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC48, &qword_231161B30);
    OUTLINED_FUNCTION_6_10(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

_BYTE *storeEnumTagSinglePayload for TaskBuilder(_BYTE *result, int a2, int a3)
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

void sub_2310CBFB8()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD40, &qword_231165E10);
      v7 = OUTLINED_FUNCTION_15_8();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_5_11();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_15();
        sub_23104C774(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD48, &qword_231165E18);
    OUTLINED_FUNCTION_6_10(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2310CC0AC()
{
  OUTLINED_FUNCTION_17_10();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = swift_allocObject();
      v13 = _swift_stdlib_malloc_size(v12);
      v12[2] = v10;
      v12[3] = 2 * ((v13 - 32) / 56);
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_21_11();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC1EC()
{
  OUTLINED_FUNCTION_17_10();
  if ((v6 & 1) == 0)
  {
    v7 = v3;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_21();
  if (v8 == v9)
  {
LABEL_7:
    v10 = *(v0 + 16);
    if (v7 <= v10)
    {
      v11 = *(v0 + 16);
    }

    else
    {
      v11 = v7;
    }

    if (v11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v12 = OUTLINED_FUNCTION_15_8();
      _swift_stdlib_malloc_size(v12);
      OUTLINED_FUNCTION_5_11();
      v12[2] = v10;
      v12[3] = v13;
      if (v2)
      {
LABEL_12:
        v1(v0 + 32, v10, v12 + 4);
        *(v0 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
      if (v2)
      {
        goto LABEL_12;
      }
    }

    OUTLINED_FUNCTION_21_11();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v8)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_7;
  }

  __break(1u);
}

void sub_2310CC2B0()
{
  OUTLINED_FUNCTION_13_13();
  if ((v4 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v5 == v6))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C190, &unk_2311632B0);
      v7 = OUTLINED_FUNCTION_15_8();
      _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_5_11();
      v7[2] = v2;
      v7[3] = v8;
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_15();
        sub_23104C774(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
      if (v1)
      {
        goto LABEL_8;
      }
    }

    memcpy(v7 + 4, (v0 + 32), 16 * v2);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v5)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2310CC36C()
{
  OUTLINED_FUNCTION_13_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD78, &unk_231165E90);
      v7 = OUTLINED_FUNCTION_14_11(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_4_14(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_15();
        sub_23104C874(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CA60, qword_231164E50);
    OUTLINED_FUNCTION_6_10(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2310CC430()
{
  OUTLINED_FUNCTION_13_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C290, &unk_231165E70);
      v7 = OUTLINED_FUNCTION_14_11(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_4_14(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_15();
        sub_23104D8B8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C1C0, &qword_2311633B8);
    OUTLINED_FUNCTION_6_10(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2310CC4F4()
{
  OUTLINED_FUNCTION_13_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CD70, &unk_231165E80);
      v6 = swift_allocObject();
      v7 = _swift_stdlib_malloc_size(v6);
      OUTLINED_FUNCTION_4_14(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_2_15();
        sub_23104C898(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2310CC5C8()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3BC20, &qword_231161B00);
  OUTLINED_FUNCTION_16_8();
  sub_231159228();
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_11_13(v8);
    sub_23104C8D8(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void sub_2310CC690()
{
  OUTLINED_FUNCTION_13_13();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_0_21(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_3_16();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CBE0, &unk_231165E60);
      v7 = OUTLINED_FUNCTION_14_11(v6);
      v8 = _swift_stdlib_malloc_size(v7);
      OUTLINED_FUNCTION_4_14(v8);
      if (v1)
      {
LABEL_8:
        v9 = OUTLINED_FUNCTION_2_15();
        sub_23104D8B8(v9, v10, v11);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1B8, &qword_2311633B0);
    OUTLINED_FUNCTION_6_10(v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_12_7();
  if (!v4)
  {
    OUTLINED_FUNCTION_1_16();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_2310CC754()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3CD58, &unk_231165E30);
  v8 = OUTLINED_FUNCTION_16_8();
  type metadata accessor for ToolKitIndexingQueue.Message(v8);
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v10 = OUTLINED_FUNCTION_11_13(v9);
    sub_23104C8F0(v10, v11, v12);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void sub_2310CC81C()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3CD50, &unk_231165E20);
  OUTLINED_FUNCTION_16_8();
  sub_231157F88();
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_11_13(v8);
    sub_23104C908(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void sub_2310CC8E4()
{
  OUTLINED_FUNCTION_9_15();
  if (v4)
  {
    OUTLINED_FUNCTION_8_13();
    if (v6 != v7)
    {
      OUTLINED_FUNCTION_20_8();
      if (v6)
      {
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_10_14();
    }
  }

  else
  {
    v5 = v3;
  }

  OUTLINED_FUNCTION_22_8(v2, v5, &qword_27DD3BC38, &qword_231161B18);
  OUTLINED_FUNCTION_16_8();
  sub_231157F28();
  OUTLINED_FUNCTION_19_9();
  OUTLINED_FUNCTION_71_0();
  if (v1)
  {
    v9 = OUTLINED_FUNCTION_11_13(v8);
    sub_23104C8C0(v9, v10, v11);
    *(v0 + 16) = 0;
  }

  else
  {
    OUTLINED_FUNCTION_7_15();
  }
}

void *sub_2310CC9AC(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C600, &qword_231161B60);
  v4 = OUTLINED_FUNCTION_15_8();
  _swift_stdlib_malloc_size(v4);
  OUTLINED_FUNCTION_5_11();
  v4[2] = a1;
  v4[3] = v5;
  return v4;
}

void *sub_2310CCA14(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
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

uint64_t OUTLINED_FUNCTION_4_14(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t OUTLINED_FUNCTION_6_10(uint64_t a1)
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_7_15()
{

  return swift_arrayInitWithCopy();
}

uint64_t OUTLINED_FUNCTION_14_11(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_8()
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_21_11()
{

  return swift_arrayInitWithCopy();
}

void *OUTLINED_FUNCTION_22_8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_2310CCA14(v5, a2, a3, a4, v4);
}

uint64_t sub_2310CCCDC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310CCD80();
}

uint64_t sub_2310CCD80()
{
  v1[2] = v0;
  v2 = sub_231157F18();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_231157E88();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_231157F28();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_231158258();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CCF54, 0, 0);
}

uint64_t sub_2310CD160()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310CD278()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_14_12();
  v1(v0);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310CD304()
{
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_14_12();
  v1(v0);

  OUTLINED_FUNCTION_1();

  return v2();
}

uint64_t sub_2310CD390()
{
  v1[2] = v0;
  v2 = sub_231157F18();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_231157E88();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_231157F28();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_231158258();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CD564, 0, 0);
}

uint64_t sub_2310CD770()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 136) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310CD888()
{
  v1[2] = v0;
  v2 = sub_231157F18();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_231157E88();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v4 = sub_231157F28();
  v1[9] = v4;
  v1[10] = *(v4 - 8);
  v1[11] = swift_task_alloc();
  v5 = sub_231158258();
  v1[12] = v5;
  v1[13] = *(v5 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CDA5C, 0, 0);
}

uint64_t sub_2310CDC68(char a1)
{
  v2 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_12();
  sub_2311581C8();

  v6 = sub_231158238();
  v7 = sub_2311592D8();
  if (os_log_type_enabled(v6, v7))
  {
    v18 = v2;
    v8 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v8 = 136315394;
    v9 = sub_231159998();
    v11 = v10;

    v12 = sub_2310488F8(v9, v11, &v19);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = sub_231158E68();
    v15 = sub_2310488F8(v13, v14, &v19);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_23103C000, v6, v7, "background indexing task: %s is being told to cancel indexing with reason '%s'", v8, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_16();
    OUTLINED_FUNCTION_7_16();

    v16 = (*(v4 + 8))(v1, v18);
  }

  else
  {

    (*(v4 + 8))(v1, v2);
  }

  if (qword_280CCB3B8 != -1)
  {
    v16 = OUTLINED_FUNCTION_0_22(&qword_280CCB3B8);
  }

  if (qword_280CCBC80 != -1)
  {
    v16 = swift_once();
  }

  return sub_2310D46FC(v16);
}

uint64_t sub_2310CDF30()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310CD888();
}

uint64_t sub_2310CE000()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310CD390();
}

uint64_t sub_2310CE0A4()
{
  OUTLINED_FUNCTION_4_1();
  v1 = sub_231158258();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v2, v3, v4);
}

uint64_t sub_2310CE158()
{
  sub_2311581C8();
  v1 = sub_231158238();
  v2 = sub_2311592C8();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v3, v4, "Running ToolKitDatabaseMaintenanceTask");
    OUTLINED_FUNCTION_16();
  }

  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  sub_231158888();
  *(v0 + 40) = sub_231158868();
  sub_231158638();
  sub_231158628();
  v7 = swift_task_alloc();
  *(v0 + 48) = v7;
  *v7 = v0;
  v7[1] = sub_2310CE300;
  v8 = OUTLINED_FUNCTION_17();

  return MEMORY[0x2821DAC18](v8);
}

uint64_t sub_2310CE300()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310CE3FC()
{
  OUTLINED_FUNCTION_21();
  sub_2311586F8();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310CE480()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310CE4E4(char *a1)
{
  v2 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_21_12();
  sub_2311581C8();
  v6 = sub_231158238();
  v7 = sub_2311592D8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = OUTLINED_FUNCTION_45_1();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v8 = 136315138;
    v10 = sub_231158E68();
    v12 = sub_2310488F8(v10, v11, &v14);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_23103C000, v6, v7, "ToolKitDatabaseMaintenanceTask is being told to cancel indexing with reason '%s'", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    OUTLINED_FUNCTION_7_16();
    OUTLINED_FUNCTION_16();
  }

  return (*(v4 + 8))(v1, v2);
}

uint64_t sub_2310CE6A8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23105FDEC;

  return sub_2310CE0A4();
}

uint64_t sub_2310CE778()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23106044C;

  return sub_2310CE818();
}

uint64_t sub_2310CE818()
{
  v1 = sub_231158258();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310CE8D4, 0, 0);
}

uint64_t sub_2310CE8D4()
{
  OUTLINED_FUNCTION_21();
  sub_2311581C8();
  v1 = sub_231158238();
  v2 = sub_2311592C8();
  if (os_log_type_enabled(v1, v2))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v3, v4, "Running SpotlightShortcutsIndexingTask");
    OUTLINED_FUNCTION_16();
  }

  v5 = OUTLINED_FUNCTION_17();
  v6(v5);
  if (qword_280CCB3B8 != -1)
  {
    OUTLINED_FUNCTION_0_22(&qword_280CCB3B8);
  }

  v7 = *(off_280CCB3C0 + 19);
  *(v0 + 40) = v7;
  if (v7)
  {
    v7;
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_2310CEA74;

    return sub_2310AB220();
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_2310CEA74()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

uint64_t sub_2310CEB9C()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310CEC08(uint64_t a1)
{
  result = sub_2310CED68(&unk_27DD3CBB8, type metadata accessor for SpotlightHighPriorityDeferredIndexingTask, &unk_231165FC8);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CEC60(uint64_t a1)
{
  result = sub_2310CED68(&unk_27DD3CBC8, type metadata accessor for ToolKitHighPriorityDeferredFullIndexingTask, &unk_231166030);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CECB8(uint64_t a1)
{
  result = sub_2310CED68(&unk_280CCB530, type metadata accessor for ToolKitHighPriorityDeferredDeltaIndexingTask, &unk_231166070);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CED10(uint64_t a1)
{
  result = sub_2310CED68(&qword_27DD3CBD8, type metadata accessor for ToolKitLowPriorityDeferredFullIndexingTask, &unk_2311660B0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2310CED68(unint64_t *a1, uint64_t (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2310CEDAC(char a1)
{
  v2 = sub_231158C58();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_231158B68();
  sub_231158B58();
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_231159588();
  MEMORY[0x231924980](0xD00000000000004DLL, 0x800000023116A800);
  v9[15] = a1 & 1;
  v6 = sub_231158E68();
  MEMORY[0x231924980](v6);

  MEMORY[0x231924980](39, 0xE100000000000000);
  v7 = v11;
  *v5 = v10;
  v5[1] = v7;
  (*(v3 + 104))(v5, *MEMORY[0x277D73290], v2);
  sub_231158B48();

  return (*(v3 + 8))(v5, v2);
}

uint64_t OUTLINED_FUNCTION_0_22(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_7_16()
{

  JUMPOUT(0x2319267C0);
}

void OUTLINED_FUNCTION_8_14(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_9_16()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_22_9(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_23_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_2310488F8(v4, v5, va);
}

uint64_t OUTLINED_FUNCTION_24_6()
{
}

void OUTLINED_FUNCTION_29_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 2u);
}

uint64_t sub_2310CF10C(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v17 = MEMORY[0x277D84F90];
  sub_23104CDF4(0, v5, 0);
  v6 = v17;
  v9 = *(type metadata accessor for ToolKitIndexingQueue.Message(0) - 8);
  v10 = a3 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  while (1)
  {
    a1(&v16, v10);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v12 = v16;
    v17 = v6;
    v14 = *(v6 + 16);
    v13 = *(v6 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_23104CDF4((v13 > 1), v14 + 1, 1);
      v6 = v17;
    }

    *(v6 + 16) = v14 + 1;
    *(v6 + 8 * v14 + 32) = v12;
    v10 += v11;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2310CF274@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_2310D52D8(a1);
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
    sub_2310D5318(result, v5, a1, a2);
    v7 = 0;
  }

  v8 = sub_231158A68();

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v8);
}

uint64_t sub_2310CF30C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = sub_231157F88();
  v6 = v5;
  if (v4)
  {
    (*(*(v5 - 8) + 16))(a2, a1 + ((*(*(v5 - 8) + 80) + 32) & ~*(*(v5 - 8) + 80)), v5);
    v7 = 0;
  }

  else
  {
    v7 = 1;
  }

  return __swift_storeEnumTagSinglePayload(a2, v7, 1, v6);
}

uint64_t sub_2310CF3B4(void *a1, char a2)
{
  if (a2)
  {
    v2 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    return sub_231159058();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);

    return sub_231159068();
  }
}

uint64_t sub_2310CF430(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v7);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  v10 = v18 - v9;
  sub_2310D5050(a1, v18 - v9, &qword_27DD3C1D0, &qword_231162D50);
  v11 = sub_2311590C8();
  if (__swift_getEnumTagSinglePayload(v10, 1, v11) == 1)
  {
    sub_231051B38(v10, &qword_27DD3C1D0, &qword_231162D50);
  }

  else
  {
    sub_2311590B8();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  if (*(a3 + 16))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    v12 = sub_231159048();
    v14 = v13;
    swift_unknownObjectRelease();
  }

  else
  {
    v12 = 0;
    v14 = 0;
  }

  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

uint64_t sub_2310CF608()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[3] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_2310CF70C;

  return MEMORY[0x282200830]();
}

uint64_t sub_2310CF70C()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310CF818()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310CF87C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_2310CF89C, 0, 0);
}

uint64_t sub_2310CF89C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_21();
  v17 = v16[3];
  v18 = swift_task_alloc();
  v16[4] = v18;
  *(v18 + 16) = v17;
  v19 = swift_task_alloc();
  v16[5] = v19;
  *v19 = v16;
  v19[1] = sub_2310CF990;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v20, v21, v22, 0xD000000000000010, v23, v24, v18, v25, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310CF990()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_1();

    return v10();
  }
}

void sub_2310CFAB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____TtCC14VoiceShortcuts20ToolKitIndexingQueue22WorkflowRunnerDelegate_continuation);
  v3 = *(*v2 + *MEMORY[0x277D841D0] + 16);
  v4 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v2 + v4));
  sub_2310D49E4(v2 + v3);
  os_unfair_lock_unlock((v2 + v4));
}

uint64_t sub_2310CFB50(uint64_t a1, uint64_t a2)
{
  sub_231051B38(a1, &unk_27DD3CE00, &qword_2311637F0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return __swift_storeEnumTagSinglePayload(a1, 0, 1, v4);
}

void sub_2310CFD48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_77();
  a19 = v21;
  a20 = v22;
  v24 = v23;
  v26 = v25;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE00, &qword_2311637F0);
  v28 = OUTLINED_FUNCTION_19(v27);
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v31 = v29 - v30;
  MEMORY[0x28223BE20](v32);
  v34 = &a9 - v33;
  v35 = *(v20 + OBJC_IVAR____TtCC14VoiceShortcuts20ToolKitIndexingQueue22WorkflowRunnerDelegate_continuation);
  v36 = (*(*v35 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v35 + v36));
  OUTLINED_FUNCTION_15_9();
  sub_2310D4C24(v37, v38, v39, v40);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v42, v43, v44, v41);
  os_unfair_lock_unlock((v35 + v36));
  OUTLINED_FUNCTION_15_9();
  sub_2310D5050(v45, v46, v47, v48);
  if (__swift_getEnumTagSinglePayload(v31, 1, v41) == 1)
  {
    sub_231051B38(v34, &unk_27DD3CE00, &qword_2311637F0);
    sub_231051B38(v31, &unk_27DD3CE00, &qword_2311637F0);
  }

  else
  {
    sub_2310CF3B4(v26, v24 & 1);
    sub_231051B38(v34, &unk_27DD3CE00, &qword_2311637F0);
    (*(*(v41 - 8) + 8))(v31, v41);
  }

  OUTLINED_FUNCTION_78();
}

id sub_2310CFF38()
{
  v1 = OUTLINED_FUNCTION_17();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_19(v3);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v4);
  v6 = &v15 - v5;
  v7 = OBJC_IVAR____TtCC14VoiceShortcuts20ToolKitIndexingQueue22WorkflowRunnerDelegate_continuation;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE10, &unk_2311661D8);
  v12 = swift_allocObject();
  *(v12 + ((*(*v12 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_2310D5050(v6, v12 + *(*v12 + *MEMORY[0x277D841D0] + 16), &unk_27DD3CE00, &qword_2311637F0);
  sub_231051B38(v6, &unk_27DD3CE00, &qword_2311637F0);
  *&v0[v7] = v12;
  v13 = type metadata accessor for ToolKitIndexingQueue.WorkflowRunnerDelegate();
  v15.receiver = v0;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_2310D0108(uint64_t a1)
{
  sub_231086060();
  v3 = *(*v1 + 16);
  sub_231086134(v3);
  v4 = *v1;
  *(*v1 + 16) = v3 + 1;
  v5 = *(type metadata accessor for ToolKitIndexingQueue.Message(0) - 8);
  result = sub_2310D4B64(a1, v4 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v3);
  *v1 = v4;
  return result;
}

uint64_t sub_2310D01B8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_5_0();
  v10 = v9 - v8;
  v11 = *v2;
  v12 = [objc_allocWithZone(MEMORY[0x277D7A080]) initWithEnvironment:0 runningContext:0 presentationMode:0];
  v13 = *(v11 + 16);

  v15 = sub_2310D0398(v14);
  sub_2311581C8();
  v16 = sub_231158238();
  v17 = sub_2311592F8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134218240;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2048;
    *(v18 + 14) = v15;
    _os_log_impl(&dword_23103C000, v16, v17, "Kicked off indexing for %ld waiting requests, average wait time: %fs", v18, 0x16u);
    OUTLINED_FUNCTION_16();
  }

  (*(v6 + 8))(v10, v4);
  sub_2310D4D14(v2[1], v2[2]);
  v2[1] = v11;
  v2[2] = v12;
  v2[3] = a1;

  *v2 = MEMORY[0x277D84F90];
  return result;
}

double sub_2310D0398(uint64_t a1)
{
  v2 = sub_231157A08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = 0.0;
  if (!*(a1 + 16))
  {
    v7 = sub_2311579F8();
    MEMORY[0x28223BE20](v7);
    *&v14[-16] = v5;
    v8 = sub_2310CF10C(sub_2310D4D5C, &v14[-32], a1);
    v9 = *(v8 + 16);
    v10 = 0.0;
    if (v9)
    {
      v11 = (v8 + 32);
      do
      {
        v12 = *v11++;
        v10 = v10 + v12;
        --v9;
      }

      while (v9);
    }

    v6 = v10 / 0.0;
    (*(v3 + 8))(v5, v2);
  }

  return v6;
}

void sub_2310D04F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_77();
  a19 = v21;
  a20 = v22;
  v23 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v25 = v24;
  MEMORY[0x28223BE20](v26);
  OUTLINED_FUNCTION_9_1();
  v29 = v27 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &a9 - v31;
  if (*(v20 + 8))
  {
    v33 = *(v20 + 16);

    v34 = v33;

    sub_2311581C8();
    v35 = sub_231158238();
    v36 = sub_2311592D8();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = OUTLINED_FUNCTION_53();
      *v37 = 0;
      _os_log_impl(&dword_23103C000, v35, v36, "Asked to cancel indexing, tearing down runner", v37, 2u);
      OUTLINED_FUNCTION_16();
    }

    (*(v25 + 8))(v32, v23);
    [v34 stop];
  }

  else
  {
    sub_2311581C8();
    v38 = sub_231158238();
    v39 = sub_2311592D8();
    if (OUTLINED_FUNCTION_20_10(v39))
    {
      v40 = OUTLINED_FUNCTION_53();
      *v40 = 0;
      _os_log_impl(&dword_23103C000, v38, OS_LOG_TYPE_DEFAULT, "Asked to cancel indexing, but there's nothing to cancel", v40, 2u);
      OUTLINED_FUNCTION_16();
    }

    (*(v25 + 8))(v29, v23);
  }

  OUTLINED_FUNCTION_78();
}

void sub_2310D0704()
{
  OUTLINED_FUNCTION_77();
  v1 = v0;
  v2 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_5_0();
  v8 = v7 - v6;
  v9 = v1[1];
  if (v9)
  {
    v11 = v1[2];
    v10 = v1[3];
    sub_2310D4DB4(v1[1], v11, v10);

    sub_2311581C8();
    v12 = sub_231158238();
    v13 = sub_2311592F8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = OUTLINED_FUNCTION_53();
      *v14 = 0;
      _os_log_impl(&dword_23103C000, v12, v13, "retriable indexing: creating fresh runner", v14, 2u);
      OUTLINED_FUNCTION_16();
    }

    (*(v4 + 8))(v8, v2);
    v15 = [objc_allocWithZone(MEMORY[0x277D7A080]) initWithEnvironment:0 runningContext:0 presentationMode:0];

    v16 = v15;
    sub_2310D4D14(v9, v11);
    v1[1] = v9;
    v1[2] = v16;
    v1[3] = v10;
    OUTLINED_FUNCTION_78();
  }

  else
  {
    __break(1u);
  }
}

id sub_2310D08B8()
{
  result = [objc_allocWithZone(type metadata accessor for ToolKitIndexingQueue()) init];
  qword_280CCDFA0 = result;
  return result;
}

uint64_t sub_2310D08E8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2();
}

uint64_t sub_2310D08FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_4_1();
  v17 = swift_task_alloc();
  v16[2].i64[0] = v17;
  v17[1] = vextq_s8(v16[1], v16[1], 8uLL);
  v18 = swift_task_alloc();
  v16[2].i64[1] = v18;
  *v18 = v16;
  v18[1] = sub_2310D09E4;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822008A0](v19, v20, v21, 0xD00000000000001ALL, v22, v23, v17, v24, a9, a10, a11, a12, a13, a14, a15, a16);
}

uint64_t sub_2310D09E4()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310D0AE8()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

void sub_2310D0B44()
{
  OUTLINED_FUNCTION_77();
  v58 = v0;
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  OUTLINED_FUNCTION_4();
  v7 = v6;
  OUTLINED_FUNCTION_6();
  v55 = v8;
  MEMORY[0x28223BE20](v9);
  v57 = &v49 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v11);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v12);
  v56 = &v49 - v13;
  v60 = sub_231157E88();
  OUTLINED_FUNCTION_4();
  v54 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_5_0();
  v18 = v17 - v16;
  v19 = sub_231157F28();
  OUTLINED_FUNCTION_4();
  v21 = v20;
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_5_0();
  v25 = v24 - v23;
  v26 = sub_231157FD8();
  v27 = *(v26 + 16);
  if (v27)
  {
    v50 = v4;
    v51 = v7;
    v52 = v5;
    v53 = v2;
    v29 = *(v21 + 16);
    v28 = v21 + 16;
    v59 = v29;
    v30 = *(v28 + 64);
    v49 = v26;
    v31 = v26 + ((v30 + 32) & ~v30);
    v32 = *(v28 + 56);
    v33 = (v54 + 8);
    v34 = (v28 - 8);
    v35 = v28;
    do
    {
      v36 = v35;
      v59(v25, v31, v19);
      sub_231157EA8();
      v37 = sub_231157E78();
      (*v33)(v18, v60);
      if ((v37 & 1) == 0)
      {
        sub_2311589E8();
        sub_2311589D8();
        sub_2311589A8();
      }

      (*v34)(v25, v19);
      v31 += v32;
      --v27;
      v35 = v36;
    }

    while (v27);

    v38 = v58;
    v5 = v52;
    v2 = v53;
    v4 = v50;
    v7 = v51;
  }

  else
  {

    v38 = v58;
  }

  sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
  v43 = v57;
  (*(v7 + 16))(v57, v4, v5);
  v44 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v45 = (v55 + v44 + 7) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 2) = 0;
  *(v46 + 3) = 0;
  *(v46 + 4) = v2;
  (*(v7 + 32))(&v46[v44], v43, v5);
  *&v46[v45] = v38;
  v47 = v2;
  v48 = v38;
  sub_2310798FC();

  OUTLINED_FUNCTION_78();
}

uint64_t sub_2310D0EE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  v7 = sub_231157FF8();
  v6[6] = v7;
  v6[7] = *(v7 - 8);
  v6[8] = swift_task_alloc();
  v8 = sub_231157A18();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();
  v9 = sub_231158258();
  v6[12] = v9;
  v6[13] = *(v9 - 8);
  v6[14] = swift_task_alloc();
  v10 = sub_231157F18();
  v6[15] = v10;
  v6[16] = *(v10 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D10D4, 0, 0);
}

uint64_t sub_2310D10D4()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[3];
  sub_231157AA8();
  v2 = v1;
  v0[20] = sub_231157A98();
  v6 = (*MEMORY[0x277D7BE20] + MEMORY[0x277D7BE20]);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_2310D11A0;
  v4 = v0[18];

  return v6(v4, 0);
}

uint64_t sub_2310D11A0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2310D12A4()
{
  v43 = v0;
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[15];
  (*(v2 + 32))(v0[19], v0[18], v3);
  (*(v2 + 104))(v1, *MEMORY[0x277D79C50], v3);
  sub_2310D5238();
  v4 = sub_231158E18();
  v5 = *(v2 + 8);
  v6 = OUTLINED_FUNCTION_17();
  v5(v6);
  if (v4)
  {
    v41 = v5;
    v7 = v0[3];
    sub_2311581C8();
    v8 = v7;
    v9 = sub_231158238();
    v10 = sub_2311592F8();

    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[13];
    v12 = v0[14];
    v14 = v0[12];
    if (v11)
    {
      v15 = v0[3];
      v39 = v0[12];
      v16 = OUTLINED_FUNCTION_45_1();
      v17 = v12;
      v18 = swift_slowAlloc();
      v42 = v18;
      *v16 = 136315138;
      v19 = [v15 debugDescription];
      v20 = sub_231158E58();
      v22 = v21;

      v23 = sub_2310488F8(v20, v22, &v42);

      *(v16 + 4) = v23;
      OUTLINED_FUNCTION_8_14(&dword_23103C000, v24, v25, "Client set needs indexing with request %s but effective changeset requires no changes");
      __swift_destroy_boxed_opaque_existential_0(v18);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();

      (*(v13 + 8))(v17, v39);
    }

    else
    {

      (*(v13 + 8))(v12, v14);
    }

    v31 = v0[10];
    v30 = v0[11];
    v32 = v0[9];
    v37 = v0[8];
    v38 = v0[19];
    v33 = v0[7];
    v36 = v0[6];
    v40 = v0[15];
    sub_2311589E8();
    sub_2311589D8();
    sub_2311589B8();

    sub_2311589D8();
    sub_231157FA8();
    sub_231158998();

    v34 = *(v31 + 8);
    v34(v30, v32);
    sub_2311589D8();
    (*(v33 + 104))(v37, *MEMORY[0x277D79CB0], v36);
    sub_231157FA8();
    sub_2311589C8();

    v34(v30, v32);
    (*(v33 + 8))(v37, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
    sub_231159068();
    (v41)(v38, v40);
  }

  else
  {
    v26 = v0[22];
    v27 = v0[5];
    v28 = *(v27 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    v29 = swift_task_alloc();
    *(v29 + 16) = *(v0 + 3);
    *(v29 + 32) = v27;
    os_unfair_lock_lock(v28 + 12);
    sub_2310D5290(&v28[4]);
    os_unfair_lock_unlock(v28 + 12);
    if (v26)
    {
      return;
    }

    (v5)(v0[19], v0[15]);
  }

  OUTLINED_FUNCTION_27_6();

  OUTLINED_FUNCTION_1();

  v35();
}

uint64_t sub_2310D16E0()
{
  v1 = v0[22];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];

  sub_2311589E8();
  sub_2311589D8();
  sub_2311589B8();

  sub_2311589D8();
  sub_231157FA8();
  sub_231158988();

  (*(v3 + 8))(v2, v4);
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  sub_231159058();
  OUTLINED_FUNCTION_27_6();

  OUTLINED_FUNCTION_1();

  return v5();
}

void sub_2310D182C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a3;
  v7 = type metadata accessor for ToolKitIndexingQueue.Message(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_231158258();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311581C8();
  v13 = a2;
  v14 = sub_231158238();
  v15 = sub_2311592F8();
  v37 = v13;

  v34 = v15;
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v33 = a4;
    v17 = v16;
    v30 = swift_slowAlloc();
    v38 = v30;
    *v17 = 136315138;
    v18 = [v37 debugDescription];
    v32 = a1;
    v19 = v18;
    v20 = sub_231158E58();
    v31 = v10;
    v21 = v20;
    v23 = v22;

    v24 = sub_2310488F8(v21, v23, &v38);

    *(v17 + 4) = v24;
    _os_log_impl(&dword_23103C000, v14, v34, "Client set needs indexing with request %s", v17, 0xCu);
    v25 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x2319267C0](v25, -1, -1);
    MEMORY[0x2319267C0](v17, -1, -1);

    (*(v36 + 8))(v12, v31);
  }

  else
  {

    (*(v36 + 8))(v12, v10);
  }

  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  (*(*(v26 - 8) + 16))(v9, v35, v26);
  v27 = v37;
  *&v9[*(v7 + 20)] = v37;
  v28 = v27;
  sub_2310D0108(v9);
  sub_2310D4BC8(v9);
  sub_2310D1B28();
}

void sub_2310D1B28()
{
  OUTLINED_FUNCTION_77();
  v85 = v0;
  v2 = v1;
  v93 = sub_231157F88();
  OUTLINED_FUNCTION_4();
  v87 = v3;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v84 = &v83 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE20, &qword_2311661E8);
  v12 = OUTLINED_FUNCTION_19(v11);
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_9_1();
  v92 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v88 = &v83 - v16;
  v17 = type metadata accessor for ToolKitIndexingQueue.Message(0);
  OUTLINED_FUNCTION_4();
  v94 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_9_1();
  v91 = v20 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v83 - v23;
  v25 = sub_231158258();
  OUTLINED_FUNCTION_4();
  v27 = v26;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_9_1();
  v31 = (v29 - v30);
  v33 = MEMORY[0x28223BE20](v32);
  v90 = &v83 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v83 - v35;
  sub_2311581C8();
  v37 = sub_231158238();
  v38 = sub_2311592C8();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = OUTLINED_FUNCTION_53();
    v89 = v31;
    *v39 = 0;
    _os_log_impl(&dword_23103C000, v37, v38, "Checking if we should be indexing", v39, 2u);
    v31 = v89;
    OUTLINED_FUNCTION_16();
  }

  v40 = *(v27 + 8);
  v40(v36, v25);
  if (v2[1])
  {
    sub_2311581C8();
    v41 = sub_231158238();
    v42 = sub_2311592F8();
    if (!OUTLINED_FUNCTION_20_10(v42))
    {
LABEL_7:

      v40(v31, v25);
      goto LABEL_36;
    }

    v43 = OUTLINED_FUNCTION_53();
    *v43 = 0;
    v44 = "Not kicking off a new indexing, we're already indexing";
LABEL_6:
    _os_log_impl(&dword_23103C000, v41, v24, v44, v43, 2u);
    OUTLINED_FUNCTION_16();
    goto LABEL_7;
  }

  v83 = v2;
  v45 = *v2;
  v46 = *(*v2 + 16);
  if (!v46)
  {
    v31 = v90;
    sub_2311581C8();
    v41 = sub_231158238();
    v71 = sub_2311592F8();
    if (!OUTLINED_FUNCTION_20_10(v71))
    {
      goto LABEL_7;
    }

    v43 = OUTLINED_FUNCTION_53();
    *v43 = 0;
    v44 = "Not kicking off a new indexing, nobody is waiting in the message queue";
    goto LABEL_6;
  }

  v86 = v7;
  v89 = v17;
  v90 = v45;
  v47 = &v45[(*(v94 + 80) + 32) & ~*(v94 + 80)];
  v94 = *(v94 + 72);
  v48 = MEMORY[0x277D84F90];
  v49 = v47;
  do
  {
    sub_2310D4B64(v49, v24);
    v50 = sub_231157FD8();
    sub_2310D4BC8(v24);
    v51 = *(v50 + 16);
    v52 = *(v48 + 16);
    if (__OFADD__(v52, v51))
    {
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
      return;
    }

    if (!swift_isUniquelyReferenced_nonNull_native() || v52 + v51 > *(v48 + 24) >> 1)
    {
      sub_2310CC8E4();
      v48 = v53;
    }

    if (*(v50 + 16))
    {
      v54 = (*(v48 + 24) >> 1) - *(v48 + 16);
      sub_231157F28();
      if (v54 < v51)
      {
        goto LABEL_39;
      }

      swift_arrayInitWithCopy();

      if (v51)
      {
        v55 = *(v48 + 16);
        v56 = __OFADD__(v55, v51);
        v57 = v55 + v51;
        if (v56)
        {
          goto LABEL_40;
        }

        *(v48 + 16) = v57;
      }
    }

    else
    {

      if (v51)
      {
        goto LABEL_38;
      }
    }

    v49 += v94;
    --v46;
  }

  while (v46);
  v58 = *(v90 + 2);
  v59 = v86;
  if (v58)
  {
    v60 = v88;
    v61 = *(v89 + 20);
    v89 = v87 + 32;
    v90 = v61;
    v62 = MEMORY[0x277D84F90];
    do
    {
      v63 = v91;
      sub_2310D4B64(v47, v91);
      sub_231157F98();
      v64 = v92;
      sub_2310D4C24(v60, v92, &unk_27DD3CE20, &qword_2311661E8);
      sub_2310D4BC8(v63);
      v65 = v93;
      if (__swift_getEnumTagSinglePayload(v64, 1, v93) == 1)
      {
        sub_231051B38(v64, &unk_27DD3CE20, &qword_2311661E8);
      }

      else
      {
        v66 = *v89;
        (*v89)(v59, v64, v65);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_2310CC81C();
          v62 = v69;
        }

        v67 = *(v62 + 16);
        if (v67 >= *(v62 + 24) >> 1)
        {
          sub_2310CC81C();
          v62 = v70;
        }

        *(v62 + 16) = v67 + 1;
        v68 = v62 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v67;
        v59 = v86;
        v66(v68, v86, v65);
        v60 = v88;
      }

      v47 += v94;
      --v58;
    }

    while (v58);
  }

  else
  {
    v62 = MEMORY[0x277D84F90];
    v60 = v88;
  }

  sub_231158018();
  sub_2310CF30C(v62, v60);

  v72 = sub_231157FB8();
  sub_2311589E8();
  sub_2311589D8();
  sub_2311589B8();

  sub_2311590C8();
  v73 = v84;
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v74, v75, v76, v77);
  v78 = swift_allocObject();
  v78[2] = 0;
  v78[3] = 0;
  v79 = v85;
  v78[4] = v72;
  v78[5] = v79;
  v80 = v72;
  v81 = v79;
  v82 = sub_23105ED1C(0, 0, v73, &unk_2311661F8, v78);
  sub_2310D01B8(v82);

LABEL_36:
  OUTLINED_FUNCTION_78();
}

uint64_t sub_2310D2304(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_231158258();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = sub_231157A18();
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v8 = sub_231157FF8();
  v5[10] = v8;
  v5[11] = *(v8 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D247C, 0, 0);
}

uint64_t sub_2310D247C()
{
  OUTLINED_FUNCTION_4_1();
  v0[13] = os_transaction_create();
  v0[14] = 0;
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_8_15(v1);

  return sub_2310D2A98(v2, 0, v3, v4);
}

uint64_t sub_2310D24FC()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 128) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

void sub_2310D25F8()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  v12 = v0[7];
  v13 = v0[16];
  v6 = v0[3];
  sub_2311589E8();
  sub_2311589D8();
  (*(v2 + 104))(v1, *MEMORY[0x277D79CA8], v3);
  sub_231157FA8();
  sub_2311589C8();

  (*(v5 + 8))(v4, v12);
  (*(v2 + 8))(v1, v3);
  v7 = *(v6 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
  *(swift_task_alloc() + 16) = v6;
  os_unfair_lock_lock((v7 + 48));
  sub_2310D4D98((v7 + 16));
  if (!v13)
  {
    os_unfair_lock_unlock((v7 + 48));

    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_10();

  os_unfair_lock_unlock(v8);
}

uint64_t sub_2310D27A0()
{
  v1 = *(v0 + 112);
  v2 = sub_2310D3E30(*(v0 + 128), v1);
  v3 = *(v0 + 128);
  if ((v2 & 1) == 0 || v1 == 2)
  {
    swift_willThrow();
    sub_2311581C8();
    v11 = v3;
    v12 = sub_231158238();
    v13 = sub_2311592D8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = *(v0 + 128);
      v15 = OUTLINED_FUNCTION_45_1();
      v16 = swift_slowAlloc();
      *v15 = 138412290;
      v17 = v14;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_23103C000, v12, v13, "Error in indexing: %@", v15, 0xCu);
      sub_231051B38(v16, &unk_27DD3CC40, &qword_231162750);
      OUTLINED_FUNCTION_16();
      OUTLINED_FUNCTION_16();
    }

    v19 = *(v0 + 128);
    v21 = *(v0 + 64);
    v20 = *(v0 + 72);
    v22 = *(v0 + 48);
    v32 = *(v0 + 56);
    v23 = *(v0 + 32);
    v24 = *(v0 + 40);
    v25 = *(v0 + 24);

    (*(v24 + 8))(v22, v23);
    sub_2311589E8();
    sub_2311589D8();
    sub_231157FA8();
    v26 = v19;
    sub_231158988();

    (*(v21 + 8))(v20, v32);
    v27 = *(v25 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    v28 = swift_task_alloc();
    *(v28 + 16) = v26;
    *(v28 + 24) = v25;
    os_unfair_lock_lock((v27 + 48));
    sub_2310D4D7C((v27 + 16));
    v29 = *(v0 + 128);
    os_unfair_lock_unlock((v27 + 48));
    swift_unknownObjectRelease();

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v4 = *(v0 + 112) + 1;

  *(v0 + 112) = v4;
  v5 = swift_task_alloc();
  *(v0 + 120) = v5;
  *v5 = v0;
  OUTLINED_FUNCTION_8_15(v5);
  OUTLINED_FUNCTION_10();

  return sub_2310D2A98(v6, v7, v8, v9);
}

uint64_t sub_2310D2A98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v5 = sub_231158258();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D2B68, 0, 0);
}

uint64_t sub_2310D2B68()
{
  v33 = v0;
  v1 = v0[2];
  v2 = sub_231157FE8();
  v0[9] = v2;
  if (v1)
  {
    v3 = *MEMORY[0x277D7A4E8];
    sub_2311581C8();
    v4 = sub_231158238();
    v5 = sub_2311592F8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = v0[2];
      v7 = OUTLINED_FUNCTION_45_1();
      *v7 = 134217984;
      *(v7 + 4) = v6 - 1;
      OUTLINED_FUNCTION_8_14(&dword_23103C000, v8, v9, "retriable indexing: tearing down runner from previous attempt (attempt=#%lu)");
      OUTLINED_FUNCTION_16();
    }

    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[4];

    (*(v12 + 8))(v10, v11);
    v14 = *(v13 + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    os_unfair_lock_lock(v14 + 12);
    sub_2310D0704();
    v16 = v15;
    os_unfair_lock_unlock(v14 + 12);
  }

  else
  {
    v30 = *(v0[4] + OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state);
    os_unfair_lock_lock(v30 + 12);
    sub_2310D30EC(&v30[4], &v32);
    os_unfair_lock_unlock(v30 + 12);
    v16 = v32;
    v3 = *MEMORY[0x277D7A4E8];
  }

  v0[10] = v16;
  v17 = objc_allocWithZone(type metadata accessor for ToolKitIndexingQueue.WorkflowRunnerDelegate());
  v18 = v16;
  v19 = [v17 init];
  v0[11] = v19;
  [v18 setDelegate_];
  sub_2311581C8();
  v20 = sub_231158238();
  v21 = sub_2311592F8();
  if (OUTLINED_FUNCTION_20_10(v21))
  {
    v22 = v0[2];
    v23 = OUTLINED_FUNCTION_45_1();
    *v23 = 134217984;
    *(v23 + 4) = v22;
    _os_log_impl(&dword_23103C000, v20, v3, "retriable indexing: starting indexing (attempt=#%lu)", v23, 0xCu);
    OUTLINED_FUNCTION_16();
  }

  v25 = v0[6];
  v24 = v0[7];
  v26 = v0[5];
  v27 = v0[2];

  (*(v25 + 8))(v24, v26);
  v28 = swift_task_alloc();
  v0[12] = v28;
  v28[2] = v18;
  v28[3] = v2;
  v28[4] = v27;
  v28[5] = v19;
  v29 = swift_task_alloc();
  v0[13] = v29;
  *v29 = v0;
  v29[1] = sub_2310D2EBC;
  v35 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200740]();
}

uint64_t sub_2310D2EBC()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = *(v4 + 80);
  v6 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v7 = v6;
  *(v8 + 112) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310D2FF4()
{
  OUTLINED_FUNCTION_21();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_46_0();

  return v3();
}

uint64_t sub_2310D3074()
{
  OUTLINED_FUNCTION_4_1();
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);

  OUTLINED_FUNCTION_1();

  return v3();
}

id sub_2310D30EC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    v8 = *(a1 + 16);
    *a2 = v8;
    return v8;
  }

  else
  {
    sub_2311581C8();
    v10 = sub_231158238();
    v11 = sub_2311592D8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_23103C000, v10, v11, "bad state: missing active indexing task, failing", v12, 2u);
      MEMORY[0x2319267C0](v12, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    sub_2310D50A8();
    swift_allocError();
    return swift_willThrow();
  }
}

uint64_t sub_2310D327C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[3] = a3;
  v6[4] = a4;
  v6[2] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  v6[7] = swift_task_alloc();
  v8 = a3;

  return MEMORY[0x2822009F8](sub_2310D332C, 0, 0);
}

uint64_t sub_2310D332C()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[3];
  v6 = sub_2311590C8();
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v6);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v5;
  v10[5] = v3;
  v10[6] = v4;
  v11 = v3;
  sub_2310CF430(v1, &unk_231166230, v10);
  sub_231051B38(v1, &qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19_8();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v6);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v2;
  v15[5] = v4;
  v16 = v2;
  sub_2310CF430(v1, &unk_231166240, v15);
  sub_231051B38(v1, &qword_27DD3C1D0, &qword_231162D50);
  v17 = swift_task_alloc();
  v0[8] = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CAB0, &unk_2311652F8);
  *v17 = v0;
  v17[1] = sub_2310D34F0;
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822004D0]();
}

uint64_t sub_2310D34F0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v5 = v4;
  *(v6 + 72) = v0;

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310D35EC()
{
  OUTLINED_FUNCTION_4_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C880, &qword_231162D80);
  sub_231159138();

  OUTLINED_FUNCTION_46_0();

  return v0();
}

uint64_t sub_2310D3684()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310D36E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[19] = a5;
  v6[20] = a6;
  v6[18] = a4;
  v7 = sub_231158258();
  v6[21] = v7;
  v6[22] = *(v7 - 8);
  v6[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D37A4, 0, 0);
}

uint64_t sub_2310D37A4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[18];
  v1 = v0[19];
  v0[2] = v0;
  v0[3] = sub_2310D38C0;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C0B0, &qword_231162E00);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_23106FF5C;
  v0[13] = &block_descriptor_18;
  v0[14] = v3;
  [v2 reindexToolKitDatabaseWithRequest:v1 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_2310D38C0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 192) = *(v3 + 48);
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310D39C0()
{
  OUTLINED_FUNCTION_21();
  sub_2311581C8();
  v1 = sub_231158238();
  v2 = sub_2311592F8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 160);
    v4 = OUTLINED_FUNCTION_45_1();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_33_4(&dword_23103C000, v5, v6, "finished indexing (attempt=#%lu)");
    OUTLINED_FUNCTION_16();
  }

  v7 = OUTLINED_FUNCTION_17();
  v8(v7);

  OUTLINED_FUNCTION_46_0();

  return v9();
}

uint64_t sub_2310D3AB0()
{
  OUTLINED_FUNCTION_21();
  swift_willThrow();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310D3B1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a5;
  v6 = sub_231158258();
  v5[3] = v6;
  v5[4] = *(v6 - 8);
  v5[5] = swift_task_alloc();
  v7 = swift_task_alloc();
  v5[6] = v7;
  *v7 = v5;
  v7[1] = sub_2310D3C0C;

  return sub_2310CF5F4();
}

uint64_t sub_2310D3C0C()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_19_5();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;

  if (v0)
  {

    v7 = *(v5 + 8);

    return v7();
  }

  else
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v9, v10, v11);
  }
}

uint64_t sub_2310D3D40()
{
  OUTLINED_FUNCTION_21();
  sub_2311581C8();
  v1 = sub_231158238();
  v2 = sub_2311592F8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 16);
    v4 = OUTLINED_FUNCTION_45_1();
    *v4 = 134217984;
    *(v4 + 4) = v3;
    OUTLINED_FUNCTION_33_4(&dword_23103C000, v5, v6, "workflow controller finished (attempt=#%lu)");
    OUTLINED_FUNCTION_16();
  }

  v7 = OUTLINED_FUNCTION_17();
  v8(v7);

  OUTLINED_FUNCTION_46_0();

  return v9();
}

uint64_t sub_2310D3E30(void *a1, uint64_t a2)
{
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = sub_2310D40EC(a1);
  if (v11)
  {
    sub_2311581C8();
    v12 = a1;
    v13 = sub_231158238();
    v14 = sub_2311592D8();

    if (!os_log_type_enabled(v13, v14))
    {
      v8 = v10;
      goto LABEL_8;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    v17 = a1;
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v18;
    *v16 = v18;
    *(v15 + 12) = 2048;
    *(v15 + 14) = a2;
    _os_log_impl(&dword_23103C000, v13, v14, "retriable indexing: caught error during indexing, but it's retriable, re-trying indexing attempt (err=%@, attempt=#%lu)", v15, 0x16u);
    v8 = v10;
    goto LABEL_6;
  }

  sub_2311581C8();
  v19 = a1;
  v13 = sub_231158238();
  v20 = sub_2311592D8();

  if (os_log_type_enabled(v13, v20))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412290;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 4) = v22;
    *v16 = v22;
    _os_log_impl(&dword_23103C000, v13, v20, "retriable indexing: caught non-retriable error during indexing, failing (err=%@", v15, 0xCu);
LABEL_6:
    sub_231051B38(v16, &unk_27DD3CC40, &qword_231162750);
    MEMORY[0x2319267C0](v16, -1, -1);
    MEMORY[0x2319267C0](v15, -1, -1);
  }

LABEL_8:

  (*(v5 + 8))(v8, v4);
  return v11 & 1;
}

uint64_t sub_2310D40EC(uint64_t a1)
{
  v1 = sub_231157928();
  v2 = [v1 userInfo];
  v3 = sub_231158D98();

  v4 = sub_231158028();
  sub_23104AE54(v3, &v8, v4, v5);

  if (v9)
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v7;
    }
  }

  else
  {
    sub_231051B38(&v8, &unk_27DD3CE30, &qword_231166210);
    return 0;
  }

  return result;
}

void sub_2310D41D4(void *a1, void *a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - v9;
  v11 = type metadata accessor for ToolKitIndexingQueue.Message(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + 1;
  v16 = a1[1];
  if (v16)
  {
    v34 = v8;
    v17 = a1[2];
    v18 = a1[3];
    v36 = a1 + 1;
    v19 = *(v16 + 16);
    if (v19)
    {
      v31 = a1;
      v32 = a3;
      v33 = v3;
      v20 = v16 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v35 = v16;
      v29 = v18;
      v30 = v17;
      sub_2310D4DB4(v16, v17, v18);
      v21 = *(v12 + 72);
      v22 = (v34 + 16);
      v23 = (v34 + 8);

      do
      {
        sub_2310D4B64(v20, v14);
        (*v22)(v10, v14, v7);
        sub_2310D4BC8(v14);
        v37 = a2;
        v24 = a2;
        sub_231159058();
        (*v23)(v10, v7);
        v20 += v21;
        --v19;
      }

      while (v19);

      v25 = v30;

      v26 = v35;
      swift_bridgeObjectRelease_n();
      sub_2310D4D14(v26, v25);
    }

    else
    {
      v27 = v16;
      v28 = v17;
      sub_2310D4DB4(v16, v17, v18);

      sub_2310D4D14(v27, v28);
    }

    v15 = v36;
  }

  *v15 = 0;
  v15[1] = 0;
  v15[2] = 0;
  sub_2310D1B28();
}

void sub_2310D4474(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ToolKitIndexingQueue.Message(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1 + 1;
  v13 = a1[1];
  if (v13)
  {
    v31 = v6;
    v15 = a1[2];
    v16 = a1[3];
    v17 = *(v13 + 16);
    if (v17)
    {
      v28 = a1;
      v29 = a2;
      v30 = v2;
      v18 = v13 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v32 = v13;
      v26 = v16;
      v27 = v15;
      sub_2310D4DB4(v13, v15, v16);
      v19 = *(v10 + 72);
      v20 = (v31 + 16);
      v21 = (v31 + 8);

      do
      {
        sub_2310D4B64(v18, v12);
        (*v20)(v8, v12, v5);
        sub_2310D4BC8(v12);
        sub_231159068();
        (*v21)(v8, v5);
        v18 += v19;
        --v17;
      }

      while (v17);

      v22 = v27;

      v23 = v32;
      swift_bridgeObjectRelease_n();
      sub_2310D4D14(v23, v22);
    }

    else
    {
      v24 = v13;
      v25 = a1[2];
      sub_2310D4DB4(v13, v15, v16);

      sub_2310D4D14(v24, v25);
    }
  }

  *v14 = 0;
  v14[1] = 0;
  v14[2] = 0;
  sub_2310D1B28();
}

id sub_2310D4748()
{
  v1 = OBJC_IVAR____TtC14VoiceShortcuts20ToolKitIndexingQueue_state;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE50, &qword_231166260);
  v2 = swift_allocObject();
  *(v2 + 48) = 0;
  *(v2 + 16) = MEMORY[0x277D84F90];
  *(v2 + 24) = 0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *&v0[v1] = v2;
  v4.receiver = v0;
  v4.super_class = type metadata accessor for ToolKitIndexingQueue();
  return objc_msgSendSuper2(&v4, sel_init);
}

id sub_2310D4800(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t get_enum_tag_for_layout_string_14VoiceShortcuts20ToolKitIndexingQueueC13InternalStateV06ActiveE4TaskVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_2310D48B0(uint64_t *a1, int a2)
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

uint64_t sub_2310D48F0(uint64_t result, int a2, int a3)
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

uint64_t sub_2310D4940()
{
  OUTLINED_FUNCTION_4_1();
  v2 = v1;
  v3 = *(v0 + 16);
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_15_2(v4);
  *v5 = v6;
  v5[1] = sub_23106044C;

  return sub_2310CF87C(v2, v3);
}

double sub_2310D4A00@<D0>(double *a1@<X8>)
{
  v2 = sub_231157A08();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2311579C8();
  v7 = v6;
  type metadata accessor for ToolKitIndexingQueue.Message(0);
  sub_231158008();
  sub_2311579C8();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  result = v7 - v9;
  *a1 = v7 - v9;
  return result;
}

uint64_t type metadata accessor for ToolKitIndexingQueue.Message(uint64_t a1)
{
  result = qword_280CCBC70;
  if (!qword_280CCBC70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2310D4B64(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ToolKitIndexingQueue.Message(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2310D4BC8(uint64_t a1)
{
  v2 = type metadata accessor for ToolKitIndexingQueue.Message(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2310D4C24(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_32_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_0();
  (*(v6 + 32))(v4, v5);
  return v4;
}

uint64_t sub_2310D4C74()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_16(v3);

  return sub_2310D2304(v5, v6, v7, v8, v1);
}

uint64_t sub_2310D4D14(uint64_t result, void *a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2310D4DB4(uint64_t result, void *a2, uint64_t a3)
{
  if (result)
  {

    v4 = a2;
  }

  return result;
}

uint64_t sub_2310D4DFC()
{
  OUTLINED_FUNCTION_22_0();
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v4[1] = sub_23106044C;
  OUTLINED_FUNCTION_15_9();

  return sub_2310D327C(v6, v7, v8, v9, v2, v1);
}

uint64_t objectdestroyTm_0(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t sub_2310D4F08()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = swift_task_alloc();
  v4 = OUTLINED_FUNCTION_15_2(v3);
  *v4 = v5;
  v6 = OUTLINED_FUNCTION_2_16(v4);

  return sub_2310D36E0(v6, v7, v8, v9, v1, v2);
}

uint64_t sub_2310D4FB0()
{
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_15_2(v2);
  *v3 = v4;
  v5 = OUTLINED_FUNCTION_2_16(v3);

  return sub_2310D3B1C(v5, v6, v7, v8, v1);
}

uint64_t sub_2310D5050(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  OUTLINED_FUNCTION_32_7(a1, a2, a3, a4);
  OUTLINED_FUNCTION_13_0();
  (*(v6 + 16))(v4, v5);
  return v4;
}

unint64_t sub_2310D50A8()
{
  result = qword_27DD3CE40;
  if (!qword_27DD3CE40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CE40);
  }

  return result;
}

uint64_t sub_2310D50FC(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3C280, &unk_231163680) - 8);
  v4 = *(v1 + ((*(v3 + 64) + ((*(v3 + 80) + 40) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_23105FDEC;
  OUTLINED_FUNCTION_15_9();

  return sub_2310D0EE4(v6, v7, v8, v9, v10, v4);
}

unint64_t sub_2310D5238()
{
  result = qword_280CCB140;
  if (!qword_280CCB140)
  {
    sub_231157F18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280CCB140);
  }

  return result;
}

uint64_t sub_2310D5318@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_231158A68();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

_BYTE *storeEnumTagSinglePayload for ToolKitIndexingQueue.QueueError(_BYTE *result, int a2, int a3)
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

void sub_2310D54BC(uint64_t a1)
{
  sub_2310D5540(319);
  if (v1 <= 0x3F)
  {
    sub_231158018();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_2310D5540(uint64_t a1)
{
  if (!qword_280CCAFB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27DD3C880, &qword_231162D80);
    v1 = sub_231159078();
    if (!v2)
    {
      atomic_store(v1, &qword_280CCAFB0);
    }
  }
}

unint64_t sub_2310D55BC()
{
  result = qword_27DD3CE60;
  if (!qword_27DD3CE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DD3CE60);
  }

  return result;
}

BOOL OUTLINED_FUNCTION_20_10(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_27_6()
{
}

uint64_t OUTLINED_FUNCTION_32_7(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
}

void OUTLINED_FUNCTION_33_4(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v5, v4, a4, v6, 0xCu);
}

uint64_t sub_2310D56EC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v4);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  v7 = &v44 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF78, &unk_2311664A0);
  OUTLINED_FUNCTION_19(v8);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v11 = &v44 - v10;
  v12 = sub_2311586B8();
  OUTLINED_FUNCTION_4();
  v14 = v13;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = [a1 userInfo];
  if (!v21 || (v22 = v21, v23 = sub_231158D98(), v22, !v23))
  {
    v49 = 0u;
    v50 = 0u;
LABEL_8:
    v27 = &unk_27DD3CE30;
    v28 = &qword_231166210;
    v29 = &v49;
    goto LABEL_9;
  }

  v45 = 0x656372756F73;
  v46 = 0xE600000000000000;

  sub_231159528();
  sub_23104ADA0(v23, &v49, &v47);

  v24 = sub_231086718(&v47);
  if (!*(&v50 + 1))
  {

    goto LABEL_8;
  }

  if ((OUTLINED_FUNCTION_72_1(v24, v25, v26, MEMORY[0x277D83B88]) & 1) == 0)
  {
    goto LABEL_19;
  }

  sub_231158698();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) != 1)
  {
    (*(v14 + 32))(v20, v11, v12);
    (*(v14 + 104))(v18, *MEMORY[0x277D72738], v12);
    sub_2310DC194(&qword_280CCB098, MEMORY[0x277D72748], MEMORY[0x277D72750]);
    OUTLINED_FUNCTION_64_2();
    sub_231158F18();
    OUTLINED_FUNCTION_64_2();
    sub_231158F18();
    v35 = *(v14 + 8);
    v35(v18, v12);
    if (v47 == v49)
    {
      v45 = 0x657365676E616863;
      v46 = 0xE900000000000074;
      sub_231159528();
      sub_23104ADA0(v23, &v49, &v47);

      v36 = sub_231086718(&v47);
      if (*(&v50 + 1))
      {
        if (OUTLINED_FUNCTION_72_1(v36, v37, v38, MEMORY[0x277CC9318]))
        {
          v39 = v48;
          if (v48 >> 60 != 15)
          {
            v40 = v47;
            sub_231157EE8();
            sub_231054A4C(v40, v39);
            v35(v20, v12);
            v42 = sub_231157F18();
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v7, 1, v42);
            if (EnumTagSinglePayload != 1)
            {
              (*(*(v42 - 8) + 32))(a2, v7, v42);
LABEL_24:
              sub_231157F18();
              v30 = a2;
              v31 = 0;
              v32 = 1;
              v33 = v42;
              return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
            }

LABEL_22:
            v41 = *MEMORY[0x277D79C48];
            sub_231157F18();
            (*(*(v42 - 8) + 104))(a2, v41, v42);
            if (__swift_getEnumTagSinglePayload(v7, 1, v42) != 1)
            {
              sub_231051B38(v7, &unk_27DD3CE70, &qword_2311626F0);
            }

            goto LABEL_24;
          }
        }
      }

      else
      {
        sub_231051B38(&v49, &unk_27DD3CE30, &qword_231166210);
      }

      v35(v20, v12);
      v42 = sub_231157F18();
      __swift_storeEnumTagSinglePayload(v7, 1, 1, v42);
      goto LABEL_22;
    }

    v35(v20, v12);
LABEL_19:

    goto LABEL_10;
  }

  v27 = &qword_27DD3CF78;
  v28 = &unk_2311664A0;
  v29 = v11;
LABEL_9:
  sub_231051B38(v29, v27, v28);
LABEL_10:
  sub_231157F18();
  v30 = OUTLINED_FUNCTION_27_7();
  return __swift_storeEnumTagSinglePayload(v30, v31, v32, v33);
}

uint64_t sub_2310D5C80()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 113) = v2;
  *(v1 + 112) = v3;
  *(v1 + 16) = v4;
  *(v1 + 24) = v0;
  *(v1 + 32) = *v0;
  v5 = sub_231158258();
  *(v1 + 40) = v5;
  OUTLINED_FUNCTION_5(v5);
  *(v1 + 48) = v6;
  *(v1 + 56) = OUTLINED_FUNCTION_21_0();
  v7 = sub_231157E58();
  *(v1 + 64) = v7;
  OUTLINED_FUNCTION_5(v7);
  *(v1 + 72) = v8;
  *(v1 + 80) = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t sub_2310D5DA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_22_0();
  v14 = OUTLINED_FUNCTION_30_6();
  v15(v14);
  sub_231157E48();
  v16 = OUTLINED_FUNCTION_29_6();
  v17(v16);
  if (v12)
  {
    v18 = *(v13 + 32);
    v19 = *(v13 + 113);
    v20 = *(v13 + 112);
    v21 = *(v13 + 16);
    v22 = swift_allocObject();
    *(v13 + 88) = v22;
    *(v22 + 16) = v21;
    *(v22 + 24) = v20;
    *(v22 + 25) = v19;
    *(v22 + 32) = v18;

    v23 = swift_task_alloc();
    *(v13 + 96) = v23;
    *v23 = v13;
    v23[1] = sub_2310D5FB8;
    OUTLINED_FUNCTION_65_2();
    v30 = v29 | 0x6C6C0000u;

    return MEMORY[0x2821E1890](v24, v30, 0xE400000000000000, v25, v22, v26, v27, v28, a9, a10, a11, a12);
  }

  else
  {
    sub_2311581C8();
    v31 = sub_231158238();
    v32 = sub_2311592B8();
    if (os_log_type_enabled(v31, v32))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_46_4();
      _os_log_impl(v33, v34, v35, v36, v37, 2u);
      OUTLINED_FUNCTION_7_16();
    }

    v38 = OUTLINED_FUNCTION_17();
    v39(v38);

    OUTLINED_FUNCTION_46_0();

    return v40();
  }
}

uint64_t sub_2310D5FB8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 104) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310D60B8()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_46_0();

  return v0();
}

uint64_t sub_2310D611C()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310D618C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  OUTLINED_FUNCTION_9();
  return MEMORY[0x2822009F8](v3, v4, v5);
}

uint64_t sub_2310D61B8()
{
  OUTLINED_FUNCTION_21();
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3CF70, &qword_231166498);
  v2 = swift_allocObject();
  v0[4] = v2;
  *(v2 + 16) = xmmword_231161B80;
  v6 = (v1 + *v1);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[5] = v3;
  *v3 = v4;
  v3[1] = sub_2310D62E0;
  OUTLINED_FUNCTION_9();

  return v6();
}

uint64_t sub_2310D62E0()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {
    v10 = *(v5 + 8);
    v11 = *(v3 + 32);

    return v10(v11);
  }
}

uint64_t sub_2310D63FC()
{
  OUTLINED_FUNCTION_4_1();
  *(*(v0 + 32) + 16) = 0;

  OUTLINED_FUNCTION_1();

  return v1();
}

uint64_t sub_2310D645C()
{
  OUTLINED_FUNCTION_4_1();
  *(v1 + 136) = v2;
  *(v1 + 16) = v3;
  *(v1 + 24) = v0;
  v4 = sub_231158258();
  *(v1 + 32) = v4;
  OUTLINED_FUNCTION_5(v4);
  *(v1 + 40) = v5;
  *(v1 + 48) = OUTLINED_FUNCTION_21_0();
  v6 = sub_231157F18();
  *(v1 + 56) = v6;
  OUTLINED_FUNCTION_5(v6);
  *(v1 + 64) = v7;
  *(v1 + 72) = *(v8 + 64);
  *(v1 + 80) = OUTLINED_FUNCTION_21_0();
  v9 = sub_231157E58();
  *(v1 + 88) = v9;
  OUTLINED_FUNCTION_5(v9);
  *(v1 + 96) = v10;
  *(v1 + 104) = OUTLINED_FUNCTION_21_0();
  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310D65A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = OUTLINED_FUNCTION_30_6();
  v15(v14);
  sub_231157E48();
  v16 = OUTLINED_FUNCTION_29_6();
  v17(v16);
  if (v12)
  {
    v18 = *(v13 + 80);
    v19 = *(v13 + 56);
    v20 = *(v13 + 64);
    v21 = *(v13 + 136);
    (*(v20 + 16))(v18, *(v13 + 16), v19);
    v22 = (*(v20 + 80) + 17) & ~*(v20 + 80);
    v23 = swift_allocObject();
    *(v13 + 112) = v23;
    *(v23 + 16) = v21;
    (*(v20 + 32))(v23 + v22, v18, v19);
    v24 = swift_task_alloc();
    *(v13 + 120) = v24;
    *v24 = v13;
    v24[1] = sub_2310D6804;
    OUTLINED_FUNCTION_65_2();
    v31 = v30 | 0x68730000u;

    return MEMORY[0x2821E1890](v25, v31, 0xE400000000000000, v26, v23, v27, v28, v29, a9, a10, a11, a12);
  }

  else
  {
    sub_2311581C8();
    v32 = sub_231158238();
    v33 = sub_2311592B8();
    if (os_log_type_enabled(v32, v33))
    {
      *OUTLINED_FUNCTION_53() = 0;
      OUTLINED_FUNCTION_46_4();
      _os_log_impl(v34, v35, v36, v37, v38, 2u);
      OUTLINED_FUNCTION_7_16();
    }

    v39 = OUTLINED_FUNCTION_17();
    v40(v39);

    OUTLINED_FUNCTION_46_0();

    return v41();
  }
}

uint64_t sub_2310D6804()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v7, v8, v9);
}

uint64_t sub_2310D6904()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_46_0();

  return v0();
}

uint64_t sub_2310D6974()
{
  OUTLINED_FUNCTION_21();

  OUTLINED_FUNCTION_1();

  return v0();
}

BOOL sub_2310D6A0C(void *a1, uint64_t a2)
{
  v3 = *v2 & a2;
  if (v3 != a2)
  {
    *v2 |= a2;
  }

  *a1 = a2;
  return v3 != a2;
}

uint64_t ToolKitCascadeSyncEngine.__allocating_init(xpcEventHandler:)(void *a1)
{
  OUTLINED_FUNCTION_0_7();
  v2 = swift_allocObject();
  ToolKitCascadeSyncEngine.init(xpcEventHandler:)(a1);
  return v2;
}

uint64_t sub_2310D6A90()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v0);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v1);
  sub_2311590C8();
  v2 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  v6 = swift_allocObject();
  swift_weakInit();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v6;
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();
}

uint64_t sub_2310D6B6C()
{
  result = sub_231158E28();
  qword_280CCB9C0 = result;
  return result;
}

id static ToolKitCascadeSyncEngine.cascadeUseCase.getter()
{
  if (qword_280CCB9B8 != -1)
  {
    OUTLINED_FUNCTION_31_6(&qword_280CCB9B8);
  }

  v1 = qword_280CCB9C0;

  return v1;
}

void *ToolKitCascadeSyncEngine.init(xpcEventHandler:)(void *a1)
{
  v12 = sub_231159328();
  OUTLINED_FUNCTION_4();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_5_0();
  v7 = v6 - v5;
  sub_231159318();
  OUTLINED_FUNCTION_13_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_5_0();
  v9 = sub_231158D48();
  v10 = OUTLINED_FUNCTION_19(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_5_0();
  sub_2311581B8();
  v1[2] = sub_2311581A8();
  sub_23104CA2C();
  sub_231158D08();
  sub_2310DC194(&unk_280CCAF10, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3BC00, &unk_231161AB0);
  sub_23106028C();
  sub_231159498();
  (*(v3 + 104))(v7, *MEMORY[0x277D85260], v12);
  v1[3] = sub_231159358();
  v1[4] = 0;
  sub_2310D6E30(a1);

  return v1;
}

uint64_t sub_2310D6E30(void *a1)
{
  v2 = v1;
  v4 = sub_231158258();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v27 - v9;
  [a1 addObserver:v2 selector:sel_handleToolKitDatabaseChangedNotificationWithNotification_ name:@"TKToolkitDatabaseChangedNotification"];
  sub_2311581C8();
  v11 = sub_231158238();
  v12 = sub_2311592F8();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_23103C000, v11, v12, "push: registered for database changed notification", v13, 2u);
    MEMORY[0x2319267C0](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v28 = v4;
  v14(v10, v4);
  v15 = *(v2 + 32);
  *(v2 + 32) = 0;

  v16 = swift_allocObject();
  swift_weakInit();
  v17 = *(v2 + 24);
  v18 = qword_280CCB9B8;

  v19 = v17;
  if (v18 != -1)
  {
    swift_once();
  }

  v20 = qword_280CCB9C0;
  objc_allocWithZone(MEMORY[0x277CF94F8]);
  v21 = sub_2310DBD6C(0xD00000000000001BLL, 0x800000023116AA10, sub_2310DC1DC, v16, v19, v20);

  v22 = *(v2 + 32);
  *(v2 + 32) = v21;

  sub_2311581C8();
  v23 = sub_231158238();
  v24 = sub_2311592F8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_23103C000, v23, v24, "pull: registered for cascade changed notification", v25, 2u);
    MEMORY[0x2319267C0](v25, -1, -1);
  }

  return (v14)(v8, v28);
}

uint64_t ToolKitCascadeSyncEngine.deinit()
{

  return v0;
}

uint64_t ToolKitCascadeSyncEngine.__deallocating_deinit()
{
  ToolKitCascadeSyncEngine.deinit();
  v0 = OUTLINED_FUNCTION_0_7();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_2310D7200(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DD3C1D0, &qword_231162D50);
  OUTLINED_FUNCTION_19(v2);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DD3CE70, &qword_2311626F0);
  OUTLINED_FUNCTION_19(v4);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = sub_231157F18();
  OUTLINED_FUNCTION_4();
  v10 = v9;
  v12 = *(v11 + 64);
  v14 = MEMORY[0x28223BE20](v13);
  v15 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  sub_2310D56EC(a1, v7);
  if (__swift_getEnumTagSinglePayload(v7, 1, v8) == 1)
  {
    return sub_231051B38(v7, &unk_27DD3CE70, &qword_2311626F0);
  }

  v27 = *(v10 + 32);
  v27(v17, v7, v8);
  sub_2311590C8();
  v19 = OUTLINED_FUNCTION_27_7();
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = swift_allocObject();
  swift_weakInit();
  (*(v10 + 16))(v15, v17, v8);
  v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  v27((v25 + v24), v15, v8);
  *(v25 + ((v12 + v24 + 7) & 0xFFFFFFFFFFFFFFF8)) = v23;
  OUTLINED_FUNCTION_13_4();
  sub_2310798FC();

  return (*(v10 + 8))(v17, v8);
}

uint64_t sub_2310D74A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a4;
  v5 = sub_231158258();
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = swift_task_alloc();
  v6 = sub_231157F18();
  v4[15] = v6;
  v4[16] = *(v6 - 8);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D75C8, 0, 0);
}

uint64_t sub_2310D75C8()
{
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_41_6();
  Strong = swift_weakLoadStrong();
  v0[18] = Strong;
  if (Strong)
  {
    (*(v0[16] + 104))(v0[17], *MEMORY[0x277D79C48], v0[15]);
    v2 = swift_task_alloc();
    v0[19] = v2;
    *v2 = v0;
    v2[1] = sub_2310D7760;

    return sub_2310D645C();
  }

  else
  {
    sub_2311581C8();
    v4 = sub_231158238();
    v5 = sub_2311592F8();
    if (OUTLINED_FUNCTION_20_2(v5))
    {
      v6 = OUTLINED_FUNCTION_53();
      OUTLINED_FUNCTION_65_0(v6);
      OUTLINED_FUNCTION_29_5(&dword_23103C000, v7, v8, "pull: preemptively enumerating sets and merging them into toolkit");
      OUTLINED_FUNCTION_16();
    }

    v9 = OUTLINED_FUNCTION_17();
    v10(v9);
    swift_task_alloc();
    OUTLINED_FUNCTION_27_1();
    v0[21] = v11;
    *v11 = v12;
    v13 = OUTLINED_FUNCTION_0_23(v11);

    return sub_2310D7D04(v13, v14, v15, v16);
  }
}

uint64_t sub_2310D7760()
{
  OUTLINED_FUNCTION_63();
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_26();
  OUTLINED_FUNCTION_19_5();
  *v3 = v2;
  v5 = v4[17];
  v6 = v4[16];
  v7 = v4[15];
  v8 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v9 = v8;
  *(v10 + 160) = v0;

  (*(v6 + 8))(v5, v7);

  OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_62();

  return MEMORY[0x2822009F8](v11, v12, v13);
}

uint64_t sub_2310D78D4()
{
  OUTLINED_FUNCTION_21();
  sub_2311581C8();
  v1 = sub_231158238();
  v2 = sub_2311592F8();
  if (OUTLINED_FUNCTION_20_2(v2))
  {
    v3 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v3);
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v4, v5, "pull: preemptively enumerating sets and merging them into toolkit");
    OUTLINED_FUNCTION_16();
  }

  v6 = OUTLINED_FUNCTION_17();
  v7(v6);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  *(v0 + 168) = v8;
  *v8 = v9;
  v10 = OUTLINED_FUNCTION_0_23(v8);

  return sub_2310D7D04(v10, v11, v12, v13);
}

uint64_t sub_2310D79B8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v2 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v3 = v2;

  if (v0)
  {
  }

  OUTLINED_FUNCTION_9();

  return MEMORY[0x2822009F8](v4, v5, v6);
}

uint64_t sub_2310D7ABC()
{
  OUTLINED_FUNCTION_4_1();

  OUTLINED_FUNCTION_1();

  return v0();
}

uint64_t sub_2310D7B28()
{
  OUTLINED_FUNCTION_22_0();
  v1 = v0[20];
  sub_2311581C8();
  v2 = v1;
  v3 = sub_231158238();
  v4 = sub_2311592F8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = v0[20];
  if (v5)
  {
    v7 = OUTLINED_FUNCTION_45_1();
    v8 = OUTLINED_FUNCTION_38_2();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    OUTLINED_FUNCTION_46_4();
    _os_log_impl(v11, v12, v13, v14, v15, 0xCu);
    sub_231051B38(v8, &unk_27DD3CC40, &qword_231162750);
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_7_16();
  }

  else
  {
  }

  (*(v0[12] + 8))(v0[13], v0[11]);
  sub_2311581C8();
  v16 = sub_231158238();
  v17 = sub_2311592F8();
  if (OUTLINED_FUNCTION_20_2(v17))
  {
    v18 = OUTLINED_FUNCTION_53();
    OUTLINED_FUNCTION_65_0(v18);
    OUTLINED_FUNCTION_29_5(&dword_23103C000, v19, v20, "pull: preemptively enumerating sets and merging them into toolkit");
    OUTLINED_FUNCTION_16();
  }

  v21 = OUTLINED_FUNCTION_17();
  v22(v21);
  swift_task_alloc();
  OUTLINED_FUNCTION_27_1();
  v0[21] = v23;
  *v23 = v24;
  v25 = OUTLINED_FUNCTION_0_23(v23);

  return sub_2310D7D04(v25, v26, v27, v28);
}

uint64_t sub_2310D7D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[5] = a2;
  v5 = sub_231158258();
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2310D7DD4, 0, 0);
}

uint64_t sub_2310D7DD4()
{
  v25 = v0;
  v1 = v0[6];
  v0[12] = *MEMORY[0x277D7A4F0];
  sub_2311581C8();

  v2 = sub_231158238();
  v3 = sub_2311592F8();

  v4 = os_log_type_enabled(v2, v3);
  v5 = v0[11];
  v7 = v0[8];
  v6 = v0[9];
  if (v4)
  {
    v9 = v0[5];
    v8 = v0[6];
    OUTLINED_FUNCTION_45_1();
    v10 = OUTLINED_FUNCTION_22_3();
    v24 = v10;
    *v5 = 136315138;
    v11 = v8 == 0;
    if (v8)
    {
      v12 = v9;
    }

    else
    {
      v12 = 0x746C7561666564;
    }

    if (v11)
    {
      v13 = 0xE700000000000000;
    }

    else
    {
      v13 = v1;
    }

    v14 = sub_2310488F8(v12, v13, &v24);

    *(v5 + 4) = v14;
    OUTLINED_FUNCTION_70_2(&dword_23103C000, v15, v16, "pull: fetching initial changes from cascade (persona: %s)");
    __swift_destroy_boxed_opaque_existential_0(v10);
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_9_7();

    v17 = *(v6 + 8);
    v17(v5, v7);
  }

  else
  {

    v17 = *(v6 + 8);
    v17(v5, v7);
  }

  v0[13] = v17;
  OUTLINED_FUNCTION_40_5();
  Strong = swift_weakLoadStrong();
  v0[14] = Strong;
  if (!Strong)
  {

    OUTLINED_FUNCTION_46_0();
    OUTLINED_FUNCTION_10();

    __asm { BRAA            X1, X16 }
  }

  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  OUTLINED_FUNCTION_67_1(v19);
  OUTLINED_FUNCTION_10();

  return sub_2310D5C80();
}

uint64_t sub_2310D7FE8()
{
  OUTLINED_FUNCTION_4_1();
  OUTLINED_FUNCTION_26();
  v3 = v2;
  OUTLINED_FUNCTION_2_4();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_2();
  *v6 = v5;
  *(v3 + 128) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_9();

    return MEMORY[0x2822009F8](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_46_0();

    return v10();
  }
}