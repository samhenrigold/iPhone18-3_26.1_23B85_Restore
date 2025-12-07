uint64_t FirstPartyMusicSubscriber.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_266230684()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_266230714;

  return FirstPartyMusicSubscriber.filter(suggestion:environment:)();
}

uint64_t sub_266230714(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_266230810(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  a2[5] = a3;
  a2[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2 + 2);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  return a2;
}

uint64_t *sub_266230880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FirstPartyMusicSubscriber();
  v10 = swift_allocObject();
  (*(v7 + 16))(v9, a1, a3);
  v10[5] = a3;
  v10[6] = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v10 + 2);
  (*(v7 + 32))(boxed_opaque_existential_1, v9, a3);
  return v10;
}

void *INSearchForMediaAppIntentHandler.__allocating_init(featureFlagProvider:appIntentInvoker:)(void *a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  sub_266220C24(a1, v5 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_featureFlagProvider);
  sub_266220C24(a2, v5 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
  v8.receiver = v5;
  v8.super_class = v2;
  v6 = objc_msgSendSuper2(&v8, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v6;
}

void *INSearchForMediaAppIntentHandler.init(featureFlagProvider:appIntentInvoker:)(void *a1, void *a2)
{
  sub_266220C24(a1, v2 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_featureFlagProvider);
  sub_266220C24(a2, v2 + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
  v7.receiver = v2;
  v7.super_class = type metadata accessor for INSearchForMediaAppIntentHandler();
  v5 = objc_msgSendSuper2(&v7, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v5;
}

uint64_t INSearchForMediaAppIntentHandler.resolveMediaItems(for:)(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_266230714;

  return sub_266232FC8(a1);
}

uint64_t sub_266230D18(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = swift_task_alloc();
  v3[5] = v8;
  *v8 = v3;
  v8[1] = sub_266230DEC;

  return sub_266232FC8(v6);
}

uint64_t sub_266230DEC(uint64_t a1)
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  v8 = *v1;

  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  v5 = sub_266266B98();

  (v2)[2](v2, v5);

  _Block_release(v2);
  v6 = *(v8 + 8);

  return v6();
}

uint64_t INSearchForMediaAppIntentHandler.handle(intent:)(uint64_t a1)
{
  v2[16] = a1;
  v2[17] = v1;
  v3 = sub_266266988();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();
  v2[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2662310AC, 0, 0);
}

uint64_t sub_2662310AC()
{
  v113 = v0;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);
  v2 = *(v0 + 144);
  v3 = *(v0 + 152);
  v4 = __swift_project_value_buffer(v2, static Logger.default);
  *(v0 + 232) = v4;
  swift_beginAccess();
  v5 = *(v3 + 16);
  *(v0 + 240) = v5;
  *(v0 + 248) = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v2);
  v6 = sub_266266968();
  v7 = sub_266266D58();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266219000, v6, v7, "INSearchForMediaAppIntentHandler#handle ...", v8, 2u);
    MEMORY[0x266780880](v8, -1, -1);
  }

  v9 = *(v0 + 224);
  v10 = *(v0 + 144);
  v11 = *(v0 + 152);
  v12 = *(v0 + 128);

  v13 = *(v11 + 8);
  *(v0 + 256) = v13;
  v13(v9, v10);
  v14 = [v12 mediaSearch];
  *(v0 + 264) = v14;
  if (!v14)
  {
    v5(*(v0 + 176), v4, *(v0 + 144));
    v53 = sub_266266968();
    v54 = sub_266266D68();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&dword_266219000, v53, v54, "INSearchForMediaAppIntentHandler#handle mediaSearch is nil", v55, 2u);
      MEMORY[0x266780880](v55, -1, -1);
    }

    v56 = *(v0 + 176);
    v57 = *(v0 + 144);

    v13(v56, v57);
    v58 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v59 = sub_266266A48();
    v15 = [v58 initWithActivityType_];

    v60 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v15];
    goto LABEL_26;
  }

  v15 = v14;
  v16 = sub_2662334BC(*(v0 + 128));
  *(v0 + 272) = v17;
  v111 = v17;
  if (!v17)
  {
    v5(*(v0 + 184), v4, *(v0 + 144));
    v61 = sub_266266968();
    v62 = sub_266266D68();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      *v63 = 0;
      _os_log_impl(&dword_266219000, v61, v62, "INSearchForMediaAppIntentHandler#handle failed to get search criteria from any source.", v63, 2u);
      MEMORY[0x266780880](v63, -1, -1);
    }

    v64 = *(v0 + 184);
    v65 = *(v0 + 144);

    v13(v64, v65);
    v66 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v67 = sub_266266A48();
    v68 = [v66 initWithActivityType_];

    v60 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v68];
LABEL_26:

    v69 = *(v0 + 8);

    return v69(v60);
  }

  v18 = v16;
  v19 = [*(v0 + 128) mediaItems];
  v107 = v18;
  if (!v19)
  {
LABEL_36:
    v110 = v13;
    v5(*(v0 + 200), v4, *(v0 + 144));
    v75 = sub_266266968();
    v76 = sub_266266D58();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      *v77 = 0;
      _os_log_impl(&dword_266219000, v75, v76, "INSearchForMediaAppIntentHandler#handle using SearchForMusicIntent", v77, 2u);
      MEMORY[0x266780880](v77, -1, -1);
    }

    v79 = *(v0 + 192);
    v78 = *(v0 + 200);
    v80 = *(v0 + 144);

    v110(v78, v80);
    v81 = [v15 reference];
    *(v0 + 304) = v81;
    v82 = 0x7972617262696CLL;
    if (v81 != 2)
    {
      v82 = 0;
    }

    v109 = v82;
    if (v81 == 2)
    {
      v83 = 0xE700000000000000;
    }

    else
    {
      v83 = 0;
    }

    v106 = [v15 mediaType];
    v5(v79, v4, v80);

    v84 = v111;

    v85 = sub_266266968();
    v86 = sub_266266D58();

    v87 = os_log_type_enabled(v85, v86);
    v88 = *(v0 + 192);
    v89 = *(v0 + 144);
    if (v87)
    {
      v90 = swift_slowAlloc();
      v105 = v89;
      v91 = swift_slowAlloc();
      v112 = v91;
      *v90 = 136315650;
      v92 = v107;
      *(v90 + 4) = sub_26621EAF0(v107, v111, &v112);
      *(v90 + 12) = 2080;
      *(v0 + 88) = v109;
      *(v0 + 96) = v83;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v93 = sub_266266A68();
      v104 = v88;
      v95 = sub_26621EAF0(v93, v94, &v112);

      *(v90 + 14) = v95;
      *(v90 + 22) = 2080;
      *(v0 + 112) = v106;
      type metadata accessor for INMediaItemType(0);
      v96 = sub_266266A68();
      v98 = sub_26621EAF0(v96, v97, &v112);

      *(v90 + 24) = v98;
      v84 = v111;
      _os_log_impl(&dword_266219000, v85, v86, "INSearchForMediaAppIntentHandler#handle invoking SearchMusicAppIntent with criteria: %s, searchSource: %s, and mediaType: %s", v90, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v91, -1, -1);
      MEMORY[0x266780880](v90, -1, -1);

      v110(v104, v105);
      v99 = v106;
    }

    else
    {

      v110(v88, v89);
      v99 = v106;
      v92 = v107;
    }

    v100 = (*(v0 + 136) + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
    v101 = v100[3];
    v102 = v100[4];
    __swift_project_boxed_opaque_existential_1(v100, v101);
    v103 = swift_task_alloc();
    *(v0 + 312) = v103;
    *v103 = v0;
    v103[1] = sub_266231E80;
    v29 = v92;
    v22 = v84;
    v23 = v109;
    v24 = v83;
    v25 = v99;
    v26 = 0;
    v27 = v101;
    v28 = v102;

    return MEMORY[0x2821B6D18](v29, v22, v23, v24, v25, v26, v27, v28);
  }

  v20 = v19;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v21 = sub_266266BB8();

  if (!(v21 >> 62))
  {
    v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_10;
    }

    goto LABEL_35;
  }

  v29 = sub_266267078();
  if (!v29)
  {
LABEL_35:

    goto LABEL_36;
  }

LABEL_10:
  if ((v21 & 0xC000000000000001) == 0)
  {
    if (*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v30 = *(v21 + 32);
      goto LABEL_13;
    }

    __break(1u);
    return MEMORY[0x2821B6D18](v29, v22, v23, v24, v25, v26, v27, v28);
  }

  v30 = MEMORY[0x266780220](0, v21);
LABEL_13:
  v31 = v30;
  *(v0 + 280) = v30;

  v32 = sub_266266D88();
  v33 = [v31 type];
  v34 = *(v32 + 16);
  v35 = 32;
  do
  {
    if (!v34)
    {

      goto LABEL_36;
    }

    v36 = *(v32 + v35);
    v35 += 8;
    --v34;
  }

  while (v36 != v33);
  v37 = *(v0 + 216);
  v38 = *(v0 + 144);

  v5(v37, v4, v38);
  v39 = sub_266266968();
  v40 = sub_266266D58();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_266219000, v39, v40, "INSearchForMediaAppIntentHandler#handle using SearchForPodcastsAppIntent", v41, 2u);
    MEMORY[0x266780880](v41, -1, -1);
  }

  v43 = *(v0 + 208);
  v42 = *(v0 + 216);
  v44 = *(v0 + 144);

  v13(v42, v44);
  v5(v43, v4, v44);

  v45 = sub_266266968();
  v46 = sub_266266D58();

  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v0 + 208);
  v49 = *(v0 + 144);
  if (v47)
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v112 = v51;
    *v50 = 136315138;
    v108 = v48;
    v52 = v107;
    *(v50 + 4) = sub_26621EAF0(v107, v111, &v112);
    _os_log_impl(&dword_266219000, v45, v46, "INSearchForMediaAppIntentHandler#handle invoking SearchForPodcastsAppIntent with criteria: %s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x266780880](v51, -1, -1);
    MEMORY[0x266780880](v50, -1, -1);

    v13(v108, v49);
  }

  else
  {

    v13(v48, v49);
    v52 = v107;
  }

  v71 = (*(v0 + 136) + OBJC_IVAR____TtC17SiriAudioInternal32INSearchForMediaAppIntentHandler_appIntentInvoker);
  v72 = v71[3];
  v73 = v71[4];
  __swift_project_boxed_opaque_existential_1(v71, v72);
  v74 = swift_task_alloc();
  *(v0 + 288) = v74;
  *v74 = v0;
  v74[1] = sub_266231C48;

  return MEMORY[0x2821B6D20](v52, v111, v72, v73);
}

uint64_t sub_266231C48()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_2662320DC;
  }

  else
  {
    v2 = sub_266231D78;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266231D78()
{
  v1 = v0[35];
  v2 = v0[33];
  v3 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_266231E80()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_26623239C;
  }

  else
  {
    v2 = sub_266231FDC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_266231FDC()
{
  v1 = *(v0 + 264);
  v2 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:4 userActivity:0];

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_2662320DC()
{
  v26 = v0;
  v1 = *(v0 + 296);
  (*(v0 + 240))(*(v0 + 168), *(v0 + 232), *(v0 + 144));
  v2 = v1;
  v3 = sub_266266968();
  v4 = sub_266266D68();

  if (os_log_type_enabled(v3, v4))
  {
    v24 = *(v0 + 256);
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v25 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_266267108();
    v11 = sub_26621EAF0(v9, v10, &v25);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266219000, v3, v4, "INSearchForMediaAppIntentHandler#handle threw an error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266780880](v8, -1, -1);
    MEMORY[0x266780880](v7, -1, -1);

    v24(v5, v6);
  }

  else
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 168);
    v14 = *(v0 + 144);

    v12(v13, v14);
  }

  v15 = *(v0 + 296);
  v16 = *(v0 + 280);
  v17 = *(v0 + 264);
  v18 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v19 = sub_266266A48();
  v20 = [v18 initWithActivityType_];

  v21 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v20];

  v22 = *(v0 + 8);

  return v22(v21);
}

uint64_t sub_26623239C()
{
  v25 = v0;
  v1 = *(v0 + 320);
  (*(v0 + 240))(*(v0 + 160), *(v0 + 232), *(v0 + 144));
  v2 = v1;
  v3 = sub_266266968();
  v4 = sub_266266D68();

  if (os_log_type_enabled(v3, v4))
  {
    v23 = *(v0 + 256);
    v5 = *(v0 + 160);
    v6 = *(v0 + 144);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v7 = 136315138;
    swift_getErrorValue();
    v9 = sub_266267108();
    v11 = sub_26621EAF0(v9, v10, &v24);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_266219000, v3, v4, "INSearchForMediaAppIntentHandler#handle threw an error: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266780880](v8, -1, -1);
    MEMORY[0x266780880](v7, -1, -1);

    v23(v5, v6);
  }

  else
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 160);
    v14 = *(v0 + 144);

    v12(v13, v14);
  }

  v15 = *(v0 + 320);
  v16 = *(v0 + 264);
  v17 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v18 = sub_266266A48();
  v19 = [v17 initWithActivityType_];

  v20 = [objc_allocWithZone(MEMORY[0x277CD4038]) initWithCode:5 userActivity:v19];

  v21 = *(v0 + 8);

  return v21(v20);
}

uint64_t sub_2662327DC(void *a1, void *aBlock, void *a3)
{
  v3[2] = a1;
  v3[3] = a3;
  v3[4] = _Block_copy(aBlock);
  v6 = a1;
  a3;
  v7 = swift_task_alloc();
  v3[5] = v7;
  *v7 = v3;
  v7[1] = sub_2662328A0;

  return INSearchForMediaAppIntentHandler.handle(intent:)(v6);
}

uint64_t sub_2662328A0(void *a1)
{
  v3 = *(*v1 + 32);
  v4 = *(*v1 + 24);
  v5 = *(*v1 + 16);
  v8 = *v1;

  (v3)[2](v3, a1);
  _Block_release(v3);

  v6 = *(v8 + 8);

  return v6();
}

id INSearchForMediaAppIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INSearchForMediaAppIntentHandler.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for INSearchForMediaAppIntentHandler();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_266232B0C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_266228640;

  return v6();
}

uint64_t sub_266232BF4(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_266228320;

  return v7();
}

uint64_t sub_266232CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_266233C78(a3, v23 - v10);
  v12 = sub_266266C58();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26622858C(v11, &unk_280069630, &qword_266268A00);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_266266C48();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_266266C08();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_266266A88() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26622858C(a3, &unk_280069630, &qword_266268A00);

    return v21;
  }

LABEL_8:
  sub_26622858C(a3, &unk_280069630, &qword_266268A00);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_266232FC8(uint64_t a1)
{
  v1[10] = a1;
  v2 = sub_266266988();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_266233094, 0, 0);
}

uint64_t sub_266233094()
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v2 = v0[11];
  v3 = v0[12];
  v4 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  v5 = *(v3 + 16);
  v5(v1, v4, v2);
  v6 = sub_266266968();
  v7 = sub_266266D58();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_266219000, v6, v7, "INSearchForMediaAppIntentHandler#resolveMediaItems ...", v8, 2u);
    MEMORY[0x266780880](v8, -1, -1);
  }

  v9 = v0[14];
  v10 = v0[11];
  v11 = v0[12];
  v12 = v0[10];

  v13 = *(v11 + 8);
  v13(v9, v10);
  v14 = [v12 privateSearchForMediaIntentData];
  if (!v14)
  {
    goto LABEL_15;
  }

  v15 = v14;
  v16 = [v14 audioSearchResults];

  if (!v16)
  {
    goto LABEL_15;
  }

  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v17 = sub_266266BB8();

  if (v17 >> 62)
  {
    result = sub_266267078();
    if (result)
    {
      goto LABEL_9;
    }

    goto LABEL_14;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
LABEL_14:

LABEL_15:
    v5(v0[13], v4, v0[11]);
    v26 = sub_266266968();
    v27 = sub_266266D68();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INSearchForMediaAppIntentHandler#resolveMediaItems missing search results", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    v29 = v0[13];
    v30 = v0[11];

    v13(v29, v30);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_266267E70;
    sub_266228130(0, &qword_2800698C0, 0x277CD4040);
    *(v25 + 32) = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_18;
  }

LABEL_9:
  if ((v17 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x266780220](0, v17);
  }

  else
  {
    if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v19 = *(v17 + 32);
  }

  v20 = v19;
  v21 = v0[10];

  v22 = sub_266228130(0, &unk_2800697A8, 0x277CD4030);
  v23 = MEMORY[0x277D557E8];
  v0[5] = v22;
  v0[6] = v23;
  v0[2] = v21;
  v24 = v21;
  sub_266266CE8();
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_266267E70;
  sub_266228130(0, &qword_2800698C0, 0x277CD4040);
  *(v25 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];

LABEL_18:

  v31 = v0[1];

  return v31(v25);
}

uint64_t sub_2662334BC(void *a1)
{
  v2 = sub_266266988();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v40 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800698C8, &qword_2662683E8);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v40 - v10;
  v12 = sub_266265C28();
  v42 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = [a1 privateSearchForMediaIntentData];
  if (!v15)
  {
    goto LABEL_15;
  }

  v16 = v15;
  v17 = [v15 pegasusMetaData];

  if (!v17)
  {
    goto LABEL_15;
  }

  v41 = a1;
  v18 = sub_266265B78();
  v20 = v19;

  sub_266233FCC(v18, v20);
  sub_266265C08();
  sub_266234020(v18, v20);
  v21 = v42;
  if ((*(v42 + 48))(v11, 1, v12) == 1)
  {
    sub_266234020(v18, v20);
    sub_26622858C(v11, &qword_2800698C8, &qword_2662683E8);
LABEL_14:
    a1 = v41;
LABEL_15:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v33 = __swift_project_value_buffer(v2, static Logger.default);
    swift_beginAccess();
    (*(v3 + 16))(v6, v33, v2);
    v34 = sub_266266968();
    v35 = sub_266266D68();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_266219000, v34, v35, "INSearchForMediaAppIntentHandler#searchCriteria fallback to mediaSearch terms", v36, 2u);
      MEMORY[0x266780880](v36, -1, -1);
    }

    (*(v3 + 8))(v6, v2);
    v37 = [a1 mediaSearch];
    if (!v37)
    {
      return 0;
    }

    v38 = v37;
    v32 = sub_266266D08();

    return v32;
  }

  v40 = v8;
  (*(v21 + 32))(v14, v11, v12);
  v22 = sub_266265C18();
  v23 = v21;
  v25 = v24;

  v26 = HIBYTE(v25) & 0xF;
  if ((v25 & 0x2000000000000000) == 0)
  {
    v26 = v22 & 0xFFFFFFFFFFFFLL;
  }

  if (!v26)
  {
    (*(v23 + 8))(v14, v12);
    sub_266234020(v18, v20);
    goto LABEL_14;
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v27 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  v28 = v40;
  (*(v3 + 16))(v40, v27, v2);
  v29 = sub_266266968();
  v30 = sub_266266D58();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_266219000, v29, v30, "INSearchForMediaAppIntentHandler#searchCriteria found AudioIntentDetails searchBoxString", v31, 2u);
    MEMORY[0x266780880](v31, -1, -1);
  }

  (*(v3 + 8))(v28, v2);
  v32 = sub_266265C18();
  sub_266234020(v18, v20);
  (*(v42 + 8))(v14, v12);
  return v32;
}

uint64_t sub_266233A34()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266228640;

  return sub_2662327DC(v2, v3, v4);
}

uint64_t sub_266233AE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266228640;

  return sub_266232B0C(v2, v3, v4);
}

uint64_t sub_266233BAC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_266228640;

  return sub_266232BF4(a1, v4, v5, v6);
}

uint64_t sub_266233C78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069630, &qword_266268A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_266233CE8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_266233D20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266228640;

  return sub_2662258E8(a1, v4);
}

uint64_t sub_266233DD8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_266228320;

  return sub_2662258E8(a1, v4);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_266233ED8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_266228320;

  return sub_266230D18(v2, v3, v4);
}

uint64_t objectdestroy_8Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266233FCC(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_266234020(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_266234088()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069960, &qword_266268400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2662683F0;
  *(inited + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069968, &qword_266268408);
  v1 = sub_2662667B8();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266267DB0;
  if (qword_2800694F8 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v1, qword_2800698E0);
  v30 = *(v2 + 16);
  v31 = v5;
  v30(v4 + v3);
  *(inited + 40) = v4;
  *(inited + 48) = 2;
  if (qword_280069520 != -1)
  {
    swift_once();
  }

  v6 = qword_28006A510;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_266267DB0;
  (v30)(v7 + v3, v31, v1);

  sub_266235AA0(v7);
  *(inited + 56) = v6;
  *(inited + 64) = 3;
  v8 = qword_28006A510;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_266267DB0;
  v10 = qword_280069500;

  if (v10 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v1, qword_2800698F8);
  (v30)(v9 + v3, v11, v1);
  sub_266235AA0(v9);
  *(inited + 72) = v8;
  *(inited + 80) = 5;
  v12 = qword_28006A510;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_266267DB0;
  (v30)(v13 + v3, v31, v1);

  sub_266235AA0(v13);
  *(inited + 88) = v12;
  *(inited + 96) = 4;
  v14 = qword_28006A510;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266267DB0;
  (v30)(v15 + v3, v31, v1);

  sub_266235AA0(v15);
  *(inited + 104) = v14;
  *(inited + 112) = 6;
  v16 = qword_28006A510;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_266267DB0;
  (v30)(v17 + v3, v31, v1);

  sub_266235AA0(v17);
  *(inited + 120) = v16;
  *(inited + 128) = 7;
  v18 = qword_28006A510;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_266267DB0;
  (v30)(v19 + v3, v31, v1);

  sub_266235AA0(v19);
  *(inited + 136) = v18;
  *(inited + 144) = 8;
  v20 = qword_28006A510;
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_266267DB0;
  (v30)(v21 + v3, v31, v1);

  sub_266235AA0(v21);
  *(inited + 152) = v20;
  *(inited + 160) = 9;
  v22 = qword_28006A510;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_266267DB0;
  (v30)(v23 + v3, v31, v1);

  sub_266235AA0(v23);
  *(inited + 168) = v22;
  *(inited + 176) = 10;
  v24 = qword_28006A510;
  *(inited + 184) = qword_28006A510;
  *(inited + 192) = 13;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_266267DB0;
  (v30)(v25 + v3, v31, v1);
  swift_bridgeObjectRetain_n();
  sub_266235AA0(v25);
  *(inited + 200) = v24;
  *(inited + 208) = 12;
  v26 = qword_28006A510;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_266267DB0;
  (v30)(v27 + v3, v31, v1);

  sub_266235AA0(v27);
  *(inited + 216) = v26;
  v28 = sub_26622D5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069970, qword_266268410);
  result = swift_arrayDestroy();
  off_2800698D0 = v28;
  return result;
}

uint64_t sub_266234700()
{
  v35 = sub_266266818();
  *&v33 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v32 = v28 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_2662667F8();
  v30 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v2 = v28 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069960, &qword_266268400);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266268260;
  *(inited + 32) = 3;
  v36 = inited + 32;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069968, &qword_266268408);
  v5 = sub_2662667B8();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 32) & ~v7;
  v9 = *(v6 + 72);
  v34 = 2 * v9;
  v40 = v7;
  v10 = v4;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_266268250;
  v12 = v11 + v8;
  if (qword_280069508 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v5, qword_280069910);
  v14 = *(v6 + 16);
  v29 = v13;
  v14(v12);
  if (qword_280069518 != -1)
  {
    swift_once();
  }

  v39 = __swift_project_value_buffer(v5, qword_280069940);
  v14(v12 + v9);
  *(inited + 40) = v11;
  *(inited + 48) = 4;
  v37 = v10;
  v38 = v9;
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_266267DB0;
  v28[1] = sub_266266898();
  if (qword_2800694F0 != -1)
  {
    swift_once();
  }

  v16 = v31;
  v17 = __swift_project_value_buffer(v31, qword_28006A4F8);
  v18 = v30;
  (*(v30 + 16))(v2, v17, v16);
  v19 = v32;
  sub_2662667D8();
  (*(v18 + 8))(v2, v16);
  sub_266266868();
  (*(v33 + 8))(v19, v35);
  *(inited + 56) = v15;
  *(inited + 64) = 8;
  v20 = v38;
  v35 = 3 * v38;
  v21 = swift_allocObject();
  v33 = xmmword_2662680F0;
  *(v21 + 16) = xmmword_2662680F0;
  v22 = v29;
  (v14)(v21 + v8, v29, v5);
  (v14)(v21 + v8 + v20, v39, v5);
  if (qword_2800694F8 != -1)
  {
    swift_once();
  }

  v23 = __swift_project_value_buffer(v5, qword_2800698E0);
  v24 = v34;
  (v14)(v21 + v8 + v34, v23, v5);
  *(inited + 72) = v21;
  *(inited + 80) = 9;
  v25 = swift_allocObject();
  *(v25 + 16) = v33;
  (v14)(v25 + v8, v22, v5);
  (v14)(v25 + v8 + v38, v39, v5);
  (v14)(v25 + v8 + v24, v23, v5);
  *(inited + 88) = v25;
  v26 = sub_26622D5F0(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069970, qword_266268410);
  result = swift_arrayDestroy();
  off_2800698D8 = v26;
  return result;
}

uint64_t sub_266234C90()
{
  v0 = sub_2662667C8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2662667F8();
  __swift_allocate_value_buffer(v4, qword_28006A4F8);
  __swift_project_value_buffer(v4, qword_28006A4F8);
  (*(v1 + 104))(v3, *MEMORY[0x277D60CE0], v0);
  return sub_2662667E8();
}

uint64_t sub_266234DD4()
{
  v0 = sub_2662667B8();
  __swift_allocate_value_buffer(v0, qword_2800698E0);
  __swift_project_value_buffer(v0, qword_2800698E0);
  sub_266266898();
  v1 = sub_266266798();
  v4[3] = v1;
  v4[4] = sub_266235F0C(&qword_280069978, MEMORY[0x277D60B68], MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  sub_266266878();
  sub_266266888();
}

uint64_t sub_266234F04()
{
  v0 = sub_2662667B8();
  __swift_allocate_value_buffer(v0, qword_2800698F8);
  __swift_project_value_buffer(v0, qword_2800698F8);
  sub_266266898();
  v1 = sub_266266798();
  v4[3] = v1;
  v4[4] = sub_266235F0C(&qword_280069978, MEMORY[0x277D60B68], MEMORY[0x277D60B60]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v1 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x277D60B50], v1);
  sub_266266878();
  sub_266266888();
}

uint64_t sub_26623508C(uint64_t a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = sub_2662667B8();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  sub_266266898();
  a3();
  sub_266266888();
}

uint64_t sub_266235110()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069968, &qword_266268408);
  v0 = sub_2662667B8();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2662680F0;
  v5 = v4 + v3;
  if (qword_280069508 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_280069910);
  v7 = *(v1 + 16);
  v7(v5, v6, v0);
  if (qword_280069510 != -1)
  {
    swift_once();
  }

  v8 = __swift_project_value_buffer(v0, qword_280069928);
  v7(v5 + v2, v8, v0);
  if (qword_280069518 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v0, qword_280069940);
  result = (v7)(v5 + 2 * v2, v9, v0);
  qword_28006A510 = v4;
  return result;
}

unint64_t sub_2662352F0(uint64_t a1)
{
  v2 = sub_266266FE8();

  return sub_266235434(a1, v2);
}

unint64_t sub_266235334(uint64_t a1)
{
  v1 = a1;
  sub_266267158();
  sub_26624E0FC(v1);
  sub_266266AB8();

  v2 = sub_266267178();

  return sub_2662354FC(v1, v2);
}

unint64_t sub_2662353BC(uint64_t a1, uint64_t a2)
{
  sub_266267158();
  sub_266266AB8();
  v4 = sub_266267178();

  return sub_2662359E8(a1, a2, v4);
}

unint64_t sub_266235434(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_266235F54(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x2667801C0](v9, a1);
      sub_266235FB0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_2662354FC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xE800000000000000;
      v8 = 0x7974696E69666661;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0x6E69666661736964;
          v7 = 0xEB00000000797469;
          break;
        case 2:
          v7 = 0xE400000000000000;
          v8 = 2036427888;
          break;
        case 3:
          v8 = 0x646F504179616C70;
          v7 = 0xEC00000074736163;
          break;
        case 4:
          v8 = 0xD000000000000010;
          v7 = 0x8000000266268C20;
          break;
        case 5:
          v8 = 0x6973754D79616C70;
          v7 = 0xE900000000000063;
          break;
        case 6:
          v8 = 0x5979425879616C70;
          break;
        case 7:
          v8 = 0x6974724179616C70;
          v7 = 0xEA00000000007473;
          break;
        case 8:
          v7 = 0xE90000000000006FLL;
          v8 = 0x6964615279616C70;
          break;
        case 9:
          v7 = 0xEC0000007473696CLL;
          v8 = 0x79616C5079616C70;
          break;
        case 0xA:
          v8 = 0x4E65685479616C70;
          v7 = 0xEB00000000737765;
          break;
        case 0xB:
          v7 = 0xE500000000000000;
          v8 = 0x6572616873;
          break;
        case 0xC:
          v7 = 0xE700000000000000;
          v8 = 0x656C6666756873;
          break;
        case 0xD:
          v8 = 0x676E6F5374616877;
          v7 = 0xEE00736968547349;
          break;
        default:
          break;
      }

      v9 = 0xE800000000000000;
      v10 = 0x7974696E69666661;
      switch(a1)
      {
        case 1:
          v9 = 0xEB00000000797469;
          if (v8 == 0x6E69666661736964)
          {
            goto LABEL_42;
          }

          goto LABEL_43;
        case 2:
          v9 = 0xE400000000000000;
          if (v8 != 2036427888)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 3:
          v9 = 0xEC00000074736163;
          if (v8 != 0x646F504179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 4:
          v9 = 0x8000000266268C20;
          if (v8 != 0xD000000000000010)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 5:
          v9 = 0xE900000000000063;
          if (v8 != 0x6973754D79616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 6:
          if (v8 != 0x5979425879616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 7:
          v9 = 0xEA00000000007473;
          if (v8 != 0x6974724179616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 8:
          v9 = 0xE90000000000006FLL;
          if (v8 != 0x6964615279616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 9:
          v9 = 0xEC0000007473696CLL;
          if (v8 != 0x79616C5079616C70)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 10:
          v10 = 0x4E65685479616C70;
          v9 = 0xEB00000000737765;
          goto LABEL_41;
        case 11:
          v9 = 0xE500000000000000;
          if (v8 != 0x6572616873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 12:
          v9 = 0xE700000000000000;
          if (v8 != 0x656C6666756873)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        case 13:
          v9 = 0xEE00736968547349;
          if (v8 != 0x676E6F5374616877)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        default:
LABEL_41:
          if (v8 != v10)
          {
            goto LABEL_43;
          }

LABEL_42:
          if (v7 == v9)
          {

            return v4;
          }

LABEL_43:
          v11 = sub_2662670D8();

          if (v11)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_2662359E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_2662670D8())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_266235AA0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_266261828(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = sub_2662667B8();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_266235BCC(unsigned int a1, uint64_t a2)
{
  v18 = a1;
  v3 = sub_2662667A8();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v17 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  v9 = *(v4 + 104);
  v9(v16 - v7, *MEMORY[0x277D60B98], v3);
  sub_266235F0C(&qword_280069958, MEMORY[0x277D60BA8], MEMORY[0x277D60BC8]);
  v16[1] = a2;
  sub_266266B78();
  sub_266266B78();
  if (v20 == v19)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_2662670D8();
  }

  v11 = *(v4 + 8);
  v11(v8, v3);

  if (v10)
  {
    if (qword_2800694E0 != -1)
    {
      swift_once();
    }

    if (!*(off_2800698D0 + 2))
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    v12 = v17;
    v9(v17, *MEMORY[0x277D60B78], v3);
    sub_266266B78();
    sub_266266B78();
    if (v20 == v19)
    {
      v11(v12, v3);
    }

    else
    {
      v13 = sub_2662670D8();
      v11(v12, v3);

      if ((v13 & 1) == 0)
      {
        return MEMORY[0x277D84F90];
      }
    }

    if (qword_2800694E8 != -1)
    {
      swift_once();
    }

    if (!*(off_2800698D8 + 2))
    {
      return MEMORY[0x277D84F90];
    }
  }

  sub_266235334(v18);
  if (v14)
  {
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_266235F0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266236018(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_2662360E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069980, &qword_266268820);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for SignalDefinition(uint64_t a1)
{
  result = qword_280069988;
  if (!qword_280069988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2662361E4(uint64_t a1)
{
  sub_2662362E0(319, &qword_280069998, MEMORY[0x277D60C78], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_2662362E0(319, &qword_2800699A0, MEMORY[0x277D61068], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_266236344(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2662362E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_266236344(uint64_t a1)
{
  if (!qword_2800699A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800699B0, &qword_266268458);
    v1 = sub_266266FB8();
    if (!v2)
    {
      atomic_store(v1, &qword_2800699A8);
    }
  }
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_2662363F0()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_266266BB8();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000012 && 0x8000000266269310 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_2662670D8() & 1) == 0);
  }

  return v3;
}

unint64_t sub_2662364E4()
{
  v1 = [v0 privatePlayMediaIntentData];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 internalSignals];

  if (v3)
  {
    v4 = sub_266266BB8();

    v5 = (v4 + 40);
    v6 = *(v4 + 16) + 1;
    do
    {
      v3 = --v6 != 0;
      if (!v6)
      {
        break;
      }

      if (*(v5 - 1) == 0xD000000000000019 && 0x80000002662692F0 == *v5)
      {
        break;
      }

      v5 += 2;
    }

    while ((sub_2662670D8() & 1) == 0);
  }

  return v3;
}

uint64_t sub_2662365D8(uint64_t a1)
{
  v3 = [v1 mediaItems];
  if (!v3)
  {
LABEL_10:
    v8 = [v1 mediaContainer];
    if (!v8)
    {
      return 0;
    }

LABEL_11:
    v9 = [v8 type];
    v10 = *(a1 + 16);
    v11 = (a1 + 32);
    do
    {
      v12 = v10-- != 0;
      v13 = v12;
      if (!v12)
      {
        break;
      }

      v14 = *v11++;
    }

    while (v14 != v9);

    return v13;
  }

  v4 = v3;
  sub_266220B70();
  v5 = sub_266266BB8();

  if (!(v5 >> 62))
  {
    result = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  result = sub_266267078();
  if (!result)
  {
LABEL_9:

    goto LABEL_10;
  }

LABEL_4:
  if ((v5 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x266780220](0, v5);
    goto LABEL_7;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(v5 + 32);
LABEL_7:
    v8 = v7;

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

uint64_t Logger.default.unsafeMutableAddressor()
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v0 = sub_266266988();

  return __swift_project_value_buffer(v0, static Logger.default);
}

uint64_t sub_266236770()
{
  v0 = sub_266266988();
  __swift_allocate_value_buffer(v0, static Logger.default);
  __swift_project_value_buffer(v0, static Logger.default);
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  v1 = logObject;
  return sub_266266998();
}

uint64_t static Logger.default.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v2 = sub_266266988();
  v3 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static Logger.default.setter(uint64_t a1)
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v2 = sub_266266988();
  v3 = __swift_project_value_buffer(v2, static Logger.default);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static Logger.default.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v1 = sub_266266988();
  __swift_project_value_buffer(v1, static Logger.default);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_266236A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      v9 = MEMORY[0x277D55740];
      goto LABEL_15;
    }

    if (a1 == 3)
    {
      v9 = MEMORY[0x277D55748];
      goto LABEL_15;
    }
  }

  else
  {
    if (!a1)
    {
      v9 = MEMORY[0x277D55750];
      goto LABEL_15;
    }

    if (a1 == 1)
    {
      v9 = MEMORY[0x277D55738];
LABEL_15:
      v24 = *v9;
      v25 = sub_2662664E8();
      v26 = *(*(v25 - 8) + 104);

      return v26(a2, v24, v25);
    }
  }

  if (qword_280069528 != -1)
  {
    v27 = v6;
    swift_once();
    v6 = v27;
  }

  v10 = v6;
  v11 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  v12 = v11;
  v13 = v10;
  (*(v5 + 16))(v8, v12, v10);
  v14 = sub_266266968();
  v15 = sub_266266D68();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[1] = a1;
    v29 = v17;
    *v16 = 136315138;
    type metadata accessor for INPlaybackQueueLocation(0);
    v18 = sub_266266A68();
    v20 = sub_26621EAF0(v18, v19, &v29);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_266219000, v14, v15, "Unknown INPlaybackQueueLocation: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x266780880](v17, -1, -1);
    MEMORY[0x266780880](v16, -1, -1);
  }

  (*(v5 + 8))(v8, v13);
  v21 = *MEMORY[0x277D55730];
  v22 = sub_2662664E8();
  return (*(*(v22 - 8) + 104))(a2, v21, v22);
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_266236D90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 33);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_266236DE4(uint64_t result, unsigned int a2, unsigned int a3)
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
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 33) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_266236E3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800699B8, &qword_2662684D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266268460;
  strcpy((inited + 32), "songIsDisliked");
  *(inited + 47) = -18;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800699C0, &qword_2662684E0);
  *(inited + 72) = v3;
  v4 = MEMORY[0x277D84F58];
  v5 = sub_266237104(&qword_2800699C8, MEMORY[0x277D839D0], MEMORY[0x277D84F58]);
  *(inited + 80) = v5;
  v6 = MEMORY[0x277D839B8];
  v7 = MEMORY[0x277D84F40];
  v8 = sub_266237104(&qword_2800699D0, MEMORY[0x277D839B8], MEMORY[0x277D84F40]);
  *(inited + 48) = v2;
  *(inited + 88) = v8;
  *(inited + 96) = 0x694C7349676E6F73;
  *(inited + 104) = 0xEB0000000064656BLL;
  v9 = v0[1];
  *(inited + 136) = v3;
  *(inited + 144) = v5;
  *(inited + 112) = v9;
  *(inited + 152) = v8;
  strcpy((inited + 160), "mediaItemType");
  *(inited + 174) = -4864;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2800699D8, &qword_2662684E8);
  *(inited + 200) = v10;
  v11 = sub_266237170(&qword_2800699E0, MEMORY[0x277D83BB8], v4);
  *(inited + 208) = v11;
  v12 = sub_266237170(&qword_2800699E8, MEMORY[0x277D83B90], v7);
  *(inited + 216) = v12;
  v13 = v0[16];
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = *(v0 + 1);
  }

  *(inited + 176) = v14;
  *(inited + 184) = v13 & 1;
  *(inited + 224) = 0xD000000000000016;
  *(inited + 232) = 0x8000000266269330;
  v15 = v0[17];
  *(inited + 264) = v3;
  *(inited + 272) = v5;
  *(inited + 240) = v15;
  *(inited + 280) = v8;
  *(inited + 288) = 0x6E654C6575657571;
  *(inited + 328) = v10;
  *(inited + 336) = v11;
  v16 = *(v0 + 3);
  *(inited + 296) = 0xEB00000000687467;
  *(inited + 304) = v16;
  *(inited + 312) = v0[32];
  *(inited + 344) = v12;
  *(inited + 352) = 0xD000000000000016;
  *(inited + 360) = 0x8000000266269350;
  v17 = v0[33];
  *(inited + 392) = MEMORY[0x277D839B0];
  *(inited + 400) = MEMORY[0x277D839D0];
  *(inited + 408) = v6;
  *(inited + 368) = v17;
  v18 = sub_26622EF54(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069860, &qword_2662684F0);
  swift_arrayDestroy();
  return v18;
}

uint64_t sub_266237104(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800699C0, &qword_2662684E0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_266237170(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2800699D8, &qword_2662684E8);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id INAddMediaIntentHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id INAddMediaIntentHandler.init()()
{
  v37 = sub_266266548();
  v43 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v32 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_266266478();
  v42 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v2 = &v32 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_2662662D8();
  v41 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2662660B8();
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [objc_opt_self() defaultMediaLibrary];
  v59[3] = sub_266266578();
  v59[4] = MEMORY[0x277D55768];
  __swift_allocate_boxed_opaque_existential_1(v59);
  sub_266266568();
  v9 = sub_2662666A8();
  swift_allocObject();
  v10 = sub_266266698();
  *(&v57 + 1) = v9;
  v58 = MEMORY[0x277D557B8];
  *&v56 = v10;
  v11 = [objc_opt_self() systemMusicPlayer];
  v34 = v7;
  sub_2662660A8();
  v12 = v4;
  v33 = v4;
  sub_2662662C8();
  sub_266266468();
  sub_266265CB8();
  v13 = sub_266266118();
  swift_allocObject();
  v14 = sub_266266108();
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v15 = sub_2662668C8();
  v16 = sub_2662668B8();
  v54 = v15;
  v55 = MEMORY[0x277D5FDD8];
  v53[0] = v16;
  v17 = sub_266265D58();
  swift_allocObject();
  v18 = sub_266265D48();
  v51 = v17;
  v52 = MEMORY[0x277D55570];
  v50[0] = v18;
  v19 = v36;
  sub_266266538();
  v35 = v5;
  v54 = v5;
  v55 = MEMORY[0x277D55668];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v53);
  (*(v40 + 16))(boxed_opaque_existential_1, v7, v5);
  v21 = v38;
  v51 = v38;
  v52 = MEMORY[0x277D55698];
  v22 = __swift_allocate_boxed_opaque_existential_1(v50);
  (*(v41 + 16))(v22, v12, v21);
  v23 = v39;
  v49[3] = v39;
  v49[4] = MEMORY[0x277D556E8];
  v24 = __swift_allocate_boxed_opaque_existential_1(v49);
  (*(v42 + 16))(v24, v2, v23);
  v48[3] = &type metadata for PodcastLibraryProvider;
  v48[4] = &protocol witness table for PodcastLibraryProvider;
  v47[3] = v13;
  v47[4] = MEMORY[0x277D55670];
  v47[0] = v14;
  v25 = v37;
  v46[3] = v37;
  v46[4] = MEMORY[0x277D55760];
  v26 = __swift_allocate_boxed_opaque_existential_1(v46);
  (*(v43 + 16))(v26, v19, v25);
  v27 = type metadata accessor for INAddMediaIntentHandler();
  v28 = objc_allocWithZone(v27);
  sub_266220C24(v53, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library]);
  sub_266220C24(v50, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying]);
  sub_266220C24(v49, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription]);
  sub_266220C24(v59, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_aceServiceInvoker]);
  sub_266220C24(v47, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_appIntentInvoker]);
  sub_266220C24(v48, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_provider]);
  sub_266220C24(v48, v45);
  v29 = swift_allocObject();
  sub_26621BED0(v45, v29 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069A20, &qword_266268538);
  swift_allocObject();

  *&v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_instanceReference] = sub_266265DF8();
  sub_266228524(&v56, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider], &qword_280069A38, qword_266268540);
  sub_266220C24(v46, &v28[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_onscreenEntityProvider]);
  v44.receiver = v28;
  v44.super_class = v27;
  v30 = objc_msgSendSuper2(&v44, sel_init);

  (*(v43 + 8))(v19, v25);
  sub_26622858C(&v56, &qword_280069A38, qword_266268540);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  (*(v42 + 8))(v2, v39);
  (*(v41 + 8))(v33, v38);
  (*(v40 + 8))(v34, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);
  __swift_destroy_boxed_opaque_existential_1Tm(v47);
  __swift_destroy_boxed_opaque_existential_1Tm(v48);
  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v30;
}

uint64_t sub_26623796C(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = a3[3];
  v8 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v7);
  v9 = swift_allocObject();
  *(v9 + 16) = sub_2662489AC;
  *(v9 + 24) = v6;
  v10 = *(v8 + 8);

  v10(sub_266248D7C, v9, v7, v8);
}

uint64_t sub_266237A5C(uint64_t a1, void *a2, uint64_t (*a3)(void))
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v10 = __swift_project_value_buffer(v6, static Logger.default);
    swift_beginAccess();
    (*(v7 + 16))(v9, v10, v6);
    v11 = a2;
    v12 = sub_266266968();
    v13 = sub_266266D68();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v25 = a3;
      v15 = v14;
      v16 = swift_slowAlloc();
      v28 = v16;
      *v15 = 136446210;
      swift_getErrorValue();
      v26 = sub_266267108();
      v27 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
      v18 = sub_266266A68();
      v20 = sub_26621EAF0(v18, v19, &v28);

      *(v15 + 4) = v20;
      _os_log_impl(&dword_266219000, v12, v13, "INAddMediaIntentHandler#init Unexpected error initializing podcasts controller: %{public}s", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x266780880](v16, -1, -1);
      v21 = v15;
      a3 = v25;
      MEMORY[0x266780880](v21, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    v22 = 0;
  }

  else
  {
    v22 = a1;
  }

  return a3(v22);
}

uint64_t INAddMediaIntentHandler.resolveMediaItems(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v21 = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerResolveMediaItems";
  *(v17 + 24) = 38;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266241F94;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266242090;
  *(v19 + 24) = v17;

  sub_266237F90(sub_266242138, v19, v21);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_266237F90(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = qword_280069528;

  if (v11 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  (*(v7 + 16))(v9, v12, v6);
  v13 = a3;
  v14 = sub_266266968();
  v15 = sub_266266D58();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_266219000, v14, v15, "INAddMediaIntentHandler#resolveMediaItems for intent: %@", v16, 0xCu);
    sub_26622858C(v17, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v17, -1, -1);
    MEMORY[0x266780880](v16, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  INAddMediaIntentHandler.mediaItem(for:with:)(v13, sub_266248D84, v10);
}

void sub_266238230(uint64_t a1, uint64_t a2)
{
  sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
  v3 = sub_266266B98();
  (*(a2 + 16))(a2, v3);
}

uint64_t INAddMediaIntentHandler.mediaItem(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v54 = a3;
  v55 = a2;
  v6 = sub_266266988();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v50 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v52 = &v49 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v57 = &v49 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v49 - v14;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v16 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  v53 = *(v7 + 16);
  v53(v15, v16, v6);
  v17 = a1;
  v18 = sub_266266968();
  v19 = sub_266266D58();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v51 = v4;
    v21 = v20;
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    *(v21 + 4) = v17;
    *v22 = v17;
    v23 = v17;
    _os_log_impl(&dword_266219000, v18, v19, "INAddMediaIntentHandler#mediaItem searching resolving media item for intent: %@", v21, 0xCu);
    sub_26622858C(v22, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v22, -1, -1);
    v24 = v21;
    v4 = v51;
    MEMORY[0x266780880](v24, -1, -1);
  }

  v25 = *(v7 + 8);
  v56 = v7 + 8;
  v25(v15, v6);
  v26 = [v17 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (!v27)
  {
  }

  v28 = [v27 mediaDestination];

  v29 = [v17 mediaSearch];
  v30 = v53;
  if (v29 && (v31 = v29, v32 = [v29 reference], v31, v32 == 1))
  {
    v30(v52, v16, v6);
    v33 = sub_266266968();
    v34 = sub_266266D58();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v51 = v4;
      v36 = v35;
      *v35 = 0;
      _os_log_impl(&dword_266219000, v33, v34, "INAddMediaIntentHandler#mediaItem referring to currently playing...", v35, 2u);
      v37 = v36;
      v4 = v51;
      MEMORY[0x266780880](v37, -1, -1);
    }

    v25(v52, v6);
    v38 = v50;
    v30(v50, v16, v6);
    v39 = sub_266266968();
    v40 = sub_266266D58();
    if (!os_log_type_enabled(v39, v40))
    {
      v42 = sub_266245380;
      v57 = v38;
      goto LABEL_18;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_266219000, v39, v40, "INAddMediaIntentHandler#mediaItem trying to resolve from audioSearchResults first...", v41, 2u);
    v42 = sub_266245380;
    v57 = v38;
  }

  else
  {
    v30(v57, v16, v6);
    v39 = sub_266266968();
    v43 = sub_266266D58();
    if (!os_log_type_enabled(v39, v43))
    {
      v42 = sub_266242178;
      goto LABEL_18;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_266219000, v39, v43, "INAddMediaIntentHandler#mediaItem from search result...", v41, 2u);
    v42 = sub_266242178;
  }

  MEMORY[0x266780880](v41, -1, -1);
LABEL_18:

  v25(v57, v6);
  v44 = swift_allocObject();
  v44[2] = v4;
  v44[3] = v17;
  v45 = v54;
  v44[4] = v55;
  v44[5] = v45;
  v46 = v17;
  v47 = v4;

  sub_266245108(v46, v28, v42, v44);
}

uint64_t sub_266238870(void *a1, char a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = sub_266266988();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v45[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v18 = &v45[-v17];
  if (a2)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v19 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v18, v19, v12);
    v20 = sub_266266968();
    v21 = sub_266266D58();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_266219000, v20, v21, "INAddMediaIntentHandler#mediaItem from now playing", v22, 2u);
      MEMORY[0x266780880](v22, -1, -1);
    }

    (*(v13 + 8))(v18, v12);
    v23 = swift_allocObject();
    v23[2] = a3;
    v23[3] = a4;
    v23[4] = a5;
    v23[5] = a6;
    v24 = a3;
    v25 = a4;

    sub_26623DC74(v25, sub_266248A7C, v23);
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v50 = a5;
    v51 = a3;
    v27 = __swift_project_value_buffer(v12, static Logger.default);
    swift_beginAccess();
    (*(v13 + 16))(v16, v27, v12);
    v28 = a1;
    v29 = sub_266266968();
    v30 = sub_266266D58();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v49 = a4;
      v32 = v31;
      v47 = swift_slowAlloc();
      v52 = v47;
      *v32 = 136315138;
      v33 = v28;
      v34 = [v33 description];
      v35 = sub_266266A58();
      v46 = v30;
      v36 = v35;
      v48 = a1;
      v37 = a6;
      v39 = v38;

      v40 = sub_26621EAF0(v36, v39, &v52);
      a6 = v37;
      a1 = v48;

      *(v32 + 4) = v40;
      _os_log_impl(&dword_266219000, v29, v46, "INAddMediaIntentHandler#mediaItem resolved item from audioSearch results item %s", v32, 0xCu);
      v41 = v47;
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266780880](v41, -1, -1);
      v42 = v32;
      a4 = v49;
      MEMORY[0x266780880](v42, -1, -1);
    }

    (*(v13 + 8))(v16, v12);
    v43 = swift_allocObject();
    *(v43 + 16) = v50;
    *(v43 + 24) = a6;
    MEMORY[0x28223BE20](v43);
    *&v45[-32] = a1;
    v45[-24] = 0;
    v44 = v51;
    *&v45[-16] = a4;
    *&v45[-8] = v44;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069AD8, &unk_266268608);
    sub_266265E08();
  }
}

uint64_t sub_266238D44(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = swift_allocObject();
  *(v11 + 16) = a5;
  *(v11 + 24) = a6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069AD8, &unk_266268608);
  sub_266265E08();
}

uint64_t INAddMediaIntentHandler.resolveMediaDestination(for:with:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerResolveMediaDestination";
  *(v17 + 24) = 44;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266245390;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();

  sub_26624545C(v20[0], v20[1], sub_2662453BC, v17);

  return (*(v6 + 8))(v11, v5);
}

void sub_26623909C(void *a1, uint64_t a2, unint64_t a3, void (*a4)(void))
{
  v30 = a4;
  v7 = sub_266266988();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_2662669D8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v15 = a1;
    v16 = [v15 name];
    if (v16)
    {
      v17 = v16;
      v18 = sub_266266A58();
      v20 = v19;

      sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      *v14 = v18;
      v14[1] = v20;
      (*(v12 + 104))(v14, *MEMORY[0x277D85358], v11);
      v22 = sub_2662669B8();
      (*(v12 + 8))(v14, v11);
      v23 = [ObjCClassFromMetadata successWithResolvedMediaDestination_];

      (v30)(v23);
      goto LABEL_10;
    }
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  (*(v8 + 16))(v10, v24, v7);

  v25 = sub_266266968();
  v26 = sub_266266D68();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_26621EAF0(a2, a3, &v31);
    _os_log_impl(&dword_266219000, v25, v26, "INAddMediaIntentHandler#resolveMediaDestination didn't find playlist in library: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    MEMORY[0x266780880](v28, -1, -1);
    MEMORY[0x266780880](v27, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  v23 = [objc_opt_self() unsupportedForReason_];
  v30();
LABEL_10:
}

uint64_t sub_266239490(void *a1, int a2, void *a3, void *aBlock, uint64_t a5, uint64_t a6, void (*a7)(id, uint64_t, uint64_t))
{
  v11 = _Block_copy(aBlock);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v13 = a3;
  v14 = a1;
  a7(v13, a6, v12);
}

uint64_t INAddMediaIntentHandler.handle(intent:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerHandle";
  *(v17 + 24) = 27;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266248E20;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();

  sub_266246088(v20[0], v20[1], sub_266248E0C, v17);

  return (*(v6 + 8))(v11, v5);
}

void sub_2662397B0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = *a1;
  if (v5)
  {
    v10 = [v5 subscriptionController];
    v11 = swift_allocObject();
    *(v11 + 16) = a4;
    *(v11 + 24) = a5;
    v13[4] = sub_266248950;
    v13[5] = v11;
    v13[0] = MEMORY[0x277D85DD0];
    v13[1] = 1107296256;
    v13[2] = sub_266239EB8;
    v13[3] = &block_descriptor_0;
    v12 = _Block_copy(v13);

    [v10 subscribeToStoreId:a2 siriContext:a3 completion:v12];
    swift_unknownObjectRelease();
    _Block_release(v12);
  }
}

void sub_2662398D4(uint64_t a1, void (*a2)(id))
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v38 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v38 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v38 - v15;
  if (a1 == 3)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v11, v26, v4);
    v27 = sub_266266968();
    v28 = sub_266266D68();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_266219000, v27, v28, "INAddMediaIntentHandler#handle not authorized to subscribe", v29, 2u);
      MEMORY[0x266780880](v29, -1, -1);
    }

    (*(v5 + 8))(v11, v4);
    goto LABEL_24;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v17 = __swift_project_value_buffer(v4, static Logger.default);
      swift_beginAccess();
      (*(v5 + 16))(v16, v17, v4);
      v18 = sub_266266968();
      v19 = sub_266266D58();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_266219000, v18, v19, "INAddMediaIntentHandler#handle successfully subscribed to the podcast", v20, 2u);
        MEMORY[0x266780880](v20, -1, -1);
      }

      (*(v5 + 8))(v16, v4);
      v21 = 3;
      goto LABEL_25;
    }

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v4, static Logger.default);
    swift_beginAccess();
    (*(v5 + 16))(v8, v30, v4);
    v31 = sub_266266968();
    v32 = sub_266266D68();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266219000, v31, v32, "INAddMediaIntentHandler#handle failed to subscribe to the podcast", v33, 2u);
      MEMORY[0x266780880](v33, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
LABEL_24:
    v21 = 5;
    goto LABEL_25;
  }

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v22 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  (*(v5 + 16))(v14, v22, v4);
  v23 = sub_266266968();
  v24 = sub_266266D68();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_266219000, v23, v24, "INAddMediaIntentHandler#handle already subscribed to the podcast", v25, 2u);
    MEMORY[0x266780880](v25, -1, -1);
  }

  (*(v5 + 8))(v14, v4);
  v21 = *MEMORY[0x277CD4410];
LABEL_25:
  v34 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v35 = sub_266266A48();
  v36 = [v34 initWithActivityType_];

  v37 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v21 userActivity:v36];
  a2(v37);
}

uint64_t sub_266239EB8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_266239F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v67 = a7;
  v68 = a6;
  v65 = a5;
  v66 = a4;
  v61 = a3;
  v59 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v60 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v52 - v11;
  v13 = sub_266265F08();
  v63 = *(v13 - 8);
  v64 = v13;
  MEMORY[0x28223BE20](v13);
  v62 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_266266988();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v52 - v20;
  v22 = sub_2662665E8();
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  if (v24(a1, 1, v22) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v25 = __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v21, v25, v15);
    v26 = sub_266266968();
    v27 = sub_266266D58();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "INAddMediaIntentHandler#handle successfully added item into library", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    (*(v16 + 8))(v21, v15);
    sub_266228524(v66 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v69, &qword_280069A38, qword_266268540);
    if (v70)
    {
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v29 = v62;
      sub_266265F18();
      sub_266265ED8();
      (*(v63 + 8))(v29, v64);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    else
    {
      sub_26622858C(v69, &qword_280069A38, qword_266268540);
    }

    v40 = 3;
  }

  else
  {
    v57 = v23;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    (*(v16 + 16))(v19, v30, v15);
    sub_266228524(a1, v12, &unk_280069D10, &qword_266268600);

    v31 = sub_266266968();
    v32 = v12;
    v33 = v15;
    v34 = v19;
    v35 = sub_266266D68();

    v58 = v35;
    if (os_log_type_enabled(v31, v35))
    {
      v54 = v16;
      v55 = v33;
      v56 = v31;
      v36 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v69[0] = v53;
      *v36 = 136315138;
      v37 = v60;
      sub_266228524(v32, v60, &unk_280069D10, &qword_266268600);
      if (v24(v37, 1, v22) == 1)
      {
        sub_26622858C(v32, &unk_280069D10, &qword_266268600);
        sub_26622858C(v37, &unk_280069D10, &qword_266268600);
        v38 = v61;

        v39 = v59;
      }

      else
      {
        v41 = sub_2662665D8();
        v38 = v42;
        sub_26622858C(v32, &unk_280069D10, &qword_266268600);
        (*(v57 + 8))(v37, v22);
        v39 = v41;
      }

      v43 = v54;
      v44 = sub_26621EAF0(v39, v38, v69);

      *(v36 + 4) = v44;
      v45 = v56;
      _os_log_impl(&dword_266219000, v56, v58, "INAddMediaIntentHandler#handle failed to added item into library, %s", v36, 0xCu);
      v46 = v53;
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x266780880](v46, -1, -1);
      MEMORY[0x266780880](v36, -1, -1);

      (*(v43 + 8))(v34, v55);
    }

    else
    {

      sub_26622858C(v32, &unk_280069D10, &qword_266268600);
      (*(v16 + 8))(v34, v33);
    }

    sub_266228524(v66 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v69, &qword_280069A38, qword_266268540);
    if (v70)
    {
      __swift_project_boxed_opaque_existential_1(v69, v70);
      v47 = v62;
      sub_266265F18();
      sub_266265ED8();
      (*(v63 + 8))(v47, v64);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v69);
    }

    else
    {
      sub_26622858C(v69, &qword_280069A38, qword_266268540);
    }

    v40 = 5;
  }

  v48 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v49 = sub_266266A48();
  v50 = [v48 initWithActivityType_];

  v51 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v40 userActivity:v50];
  v68(v51);
}

void sub_26623A73C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(id), uint64_t a11)
{
  v76 = a8;
  v69 = a7;
  v65 = a6;
  v68 = a5;
  v66 = a4;
  v74 = a1;
  v75 = a2;
  v77 = a10;
  v78 = a11;
  v73 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v67 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - v15;
  v17 = sub_266265F08();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x28223BE20](v17);
  v70 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_266266988();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v58 - v24;
  v26 = sub_2662665E8();
  v27 = *(v26 - 8);
  v28 = *(v27 + 48);
  if (v28(a3, 1, v26) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v29 = __swift_project_value_buffer(v19, static Logger.default);
    swift_beginAccess();
    (*(v20 + 16))(v25, v29, v19);
    v30 = sub_266266968();
    v31 = sub_266266D58();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_266219000, v30, v31, "INAddMediaIntentHandler#handle successfully added item into playlist", v32, 2u);
      MEMORY[0x266780880](v32, -1, -1);
    }

    (*(v20 + 8))(v25, v19);
    sub_266228524(v76 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v79, &qword_280069A38, qword_266268540);
    if (v80)
    {
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v33 = v70;
      sub_266265F18();
      sub_266265ED8();
      (*(v71 + 8))(v33, v72);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    else
    {
      sub_26622858C(v79, &qword_280069A38, qword_266268540);
    }

    v47 = 3;
  }

  else
  {
    v62 = v27;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v34 = __swift_project_value_buffer(v19, static Logger.default);
    swift_beginAccess();
    (*(v20 + 16))(v23, v34, v19);
    sub_266228524(a3, v16, &unk_280069D10, &qword_266268600);
    v35 = v23;
    v36 = v68;

    v37 = v19;
    v38 = sub_266266968();
    v39 = sub_266266D68();
    v64 = v16;
    v40 = v39;

    v63 = v40;
    if (os_log_type_enabled(v38, v40))
    {
      v59 = v20;
      v60 = v37;
      v61 = v35;
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v79[0] = v42;
      *v41 = 136315394;
      *(v41 + 4) = sub_26621EAF0(v66, v36, v79);
      *(v41 + 12) = 2080;
      v43 = v64;
      v44 = v67;
      sub_266228524(v64, v67, &unk_280069D10, &qword_266268600);
      if (v28(v44, 1, v26) == 1)
      {
        sub_26622858C(v43, &unk_280069D10, &qword_266268600);
        sub_26622858C(v44, &unk_280069D10, &qword_266268600);
        v45 = v69;

        v46 = v65;
      }

      else
      {
        v48 = sub_2662665D8();
        v45 = v49;
        sub_26622858C(v43, &unk_280069D10, &qword_266268600);
        (*(v62 + 8))(v44, v26);
        v46 = v48;
      }

      v50 = v61;
      v51 = v59;
      v52 = sub_26621EAF0(v46, v45, v79);

      *(v41 + 14) = v52;
      _os_log_impl(&dword_266219000, v38, v63, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v42, -1, -1);
      MEMORY[0x266780880](v41, -1, -1);

      (*(v51 + 8))(v50, v60);
    }

    else
    {

      sub_26622858C(v64, &unk_280069D10, &qword_266268600);
      (*(v20 + 8))(v35, v37);
    }

    sub_266228524(v76 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_notificationProvider, v79, &qword_280069A38, qword_266268540);
    if (v80)
    {
      __swift_project_boxed_opaque_existential_1(v79, v80);
      v53 = v70;
      sub_266265F18();
      sub_266265ED8();
      (*(v71 + 8))(v53, v72);
      sub_266266498();

      __swift_destroy_boxed_opaque_existential_1Tm(v79);
    }

    else
    {
      sub_26622858C(v79, &qword_280069A38, qword_266268540);
    }

    v47 = 5;
  }

  v54 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v55 = sub_266266A48();
  v56 = [v54 initWithActivityType_];

  v57 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v47 userActivity:v56];
  v77(v57);
}

void sub_26623AFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v60 = a7;
  v61 = a6;
  v57 = a3;
  v58 = a5;
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = sub_2662665E8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(a1, 1, v20) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v19, v23, v14);
    v24 = sub_266266968();
    v25 = sub_266266D58();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266219000, v24, v25, "INAddMediaIntentHandler#handle successfully added item into playlist", v26, 2u);
      MEMORY[0x266780880](v26, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    v27 = 3;
  }

  else
  {
    v52 = a4;
    v53 = v22;
    v51 = v21;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    v28 = v59;
    (*(v15 + 16))();
    sub_266228524(a1, v13, &unk_280069D10, &qword_266268600);
    v29 = v57;

    v30 = v58;

    v31 = v14;
    v32 = sub_266266968();
    v33 = sub_266266D68();

    v54 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v49 = v15;
      v50 = v31;
      v34 = v29;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_26621EAF0(v55, v34, &v62);
      *(v35 + 12) = 2080;
      v37 = v56;
      sub_266228524(v13, v56, &unk_280069D10, &qword_266268600);
      if (v53(v37, 1, v20) == 1)
      {
        sub_26622858C(v13, &unk_280069D10, &qword_266268600);
        sub_26622858C(v37, &unk_280069D10, &qword_266268600);

        v38 = v52;
      }

      else
      {
        v39 = sub_2662665D8();
        v30 = v40;
        sub_26622858C(v13, &unk_280069D10, &qword_266268600);
        (*(v51 + 8))(v37, v20);
        v38 = v39;
      }

      v41 = v32;
      v42 = v49;
      v43 = sub_26621EAF0(v38, v30, &v62);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_266219000, v41, v54, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);

      (*(v42 + 8))(v59, v50);
    }

    else
    {

      sub_26622858C(v13, &unk_280069D10, &qword_266268600);
      (*(v15 + 8))(v28, v31);
    }

    v27 = 5;
  }

  v44 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v45 = sub_266266A48();
  v46 = [v44 initWithActivityType_];

  v47 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v27 userActivity:v46];
  v61(v47);
}

void sub_26623B61C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v60 = a7;
  v61 = a6;
  v57 = a3;
  v58 = a5;
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = sub_2662665E8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(a1, 1, v20) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v19, v23, v14);
    v24 = sub_266266968();
    v25 = sub_266266D58();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266219000, v24, v25, "INAddMediaIntentHandler#handle successfully added item into playlist", v26, 2u);
      MEMORY[0x266780880](v26, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    v27 = 3;
  }

  else
  {
    v52 = a4;
    v53 = v22;
    v51 = v21;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    v28 = v59;
    (*(v15 + 16))();
    sub_266228524(a1, v13, &unk_280069D10, &qword_266268600);
    v29 = v57;

    v30 = v58;

    v31 = v14;
    v32 = sub_266266968();
    v33 = sub_266266D68();

    v54 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v49 = v15;
      v50 = v31;
      v34 = v29;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_26621EAF0(v55, v34, &v62);
      *(v35 + 12) = 2080;
      v37 = v56;
      sub_266228524(v13, v56, &unk_280069D10, &qword_266268600);
      if (v53(v37, 1, v20) == 1)
      {
        sub_26622858C(v13, &unk_280069D10, &qword_266268600);
        sub_26622858C(v37, &unk_280069D10, &qword_266268600);

        v38 = v52;
      }

      else
      {
        v39 = sub_2662665D8();
        v30 = v40;
        sub_26622858C(v13, &unk_280069D10, &qword_266268600);
        (*(v51 + 8))(v37, v20);
        v38 = v39;
      }

      v41 = v32;
      v42 = v49;
      v43 = sub_26621EAF0(v38, v30, &v62);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_266219000, v41, v54, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);

      (*(v42 + 8))(v59, v50);
    }

    else
    {

      sub_26622858C(v13, &unk_280069D10, &qword_266268600);
      (*(v15 + 8))(v28, v31);
    }

    v27 = 5;
  }

  v44 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v45 = sub_266266A48();
  v46 = [v44 initWithActivityType_];

  v47 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v27 userActivity:v46];
  v61(v47);
}

void sub_26623BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(id), uint64_t a7)
{
  v60 = a7;
  v61 = a6;
  v57 = a3;
  v58 = a5;
  v55 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069D10, &qword_266268600);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v13 = &v48 - v12;
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v59 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v48 - v18;
  v20 = sub_2662665E8();
  v21 = *(v20 - 8);
  v22 = *(v21 + 48);
  if (v22(a1, 1, v20) == 1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v23 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v19, v23, v14);
    v24 = sub_266266968();
    v25 = sub_266266D58();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_266219000, v24, v25, "INAddMediaIntentHandler#handle successfully added item into playlist", v26, 2u);
      MEMORY[0x266780880](v26, -1, -1);
    }

    (*(v15 + 8))(v19, v14);
    v27 = 3;
  }

  else
  {
    v52 = a4;
    v53 = v22;
    v51 = v21;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    v28 = v59;
    (*(v15 + 16))();
    sub_266228524(a1, v13, &unk_280069D10, &qword_266268600);
    v29 = v57;

    v30 = v58;

    v31 = v14;
    v32 = sub_266266968();
    v33 = sub_266266D68();

    v54 = v33;
    if (os_log_type_enabled(v32, v33))
    {
      v49 = v15;
      v50 = v31;
      v34 = v29;
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v62 = v36;
      *v35 = 136315394;
      *(v35 + 4) = sub_26621EAF0(v55, v34, &v62);
      *(v35 + 12) = 2080;
      v37 = v56;
      sub_266228524(v13, v56, &unk_280069D10, &qword_266268600);
      if (v53(v37, 1, v20) == 1)
      {
        sub_26622858C(v13, &unk_280069D10, &qword_266268600);
        sub_26622858C(v37, &unk_280069D10, &qword_266268600);

        v38 = v52;
      }

      else
      {
        v39 = sub_2662665D8();
        v30 = v40;
        sub_26622858C(v13, &unk_280069D10, &qword_266268600);
        (*(v51 + 8))(v37, v20);
        v38 = v39;
      }

      v41 = v32;
      v42 = v49;
      v43 = sub_26621EAF0(v38, v30, &v62);

      *(v35 + 14) = v43;
      _os_log_impl(&dword_266219000, v41, v54, "INAddMediaIntentHandler#handle failed to added item into playlist %s, %s", v35, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);

      (*(v42 + 8))(v59, v50);
    }

    else
    {

      sub_26622858C(v13, &unk_280069D10, &qword_266268600);
      (*(v15 + 8))(v28, v31);
    }

    v27 = 5;
  }

  v44 = objc_allocWithZone(MEMORY[0x277CCAE58]);
  v45 = sub_266266A48();
  v46 = [v44 initWithActivityType_];

  v47 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:v27 userActivity:v46];
  v61(v47);
}

uint64_t sub_26623C2D0(void (*a1)(uint64_t *), uint64_t a2, void *a3, char a4, void *a5, char *a6)
{
  v136 = a6;
  v139 = a5;
  v132 = sub_2662669D8();
  v129 = *(v132 - 8);
  v10 = MEMORY[0x28223BE20](v132);
  v128 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v130 = &v121 - v12;
  v138 = sub_266265F28();
  v134 = *(v138 - 8);
  v13 = MEMORY[0x28223BE20](v138);
  v127 = &v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v121 - v16;
  v18 = MEMORY[0x28223BE20](v15);
  v20 = &v121 - v19;
  MEMORY[0x28223BE20](v18);
  v22 = &v121 - v21;
  v133 = sub_266265F08();
  v137 = *(v133 - 8);
  v23 = MEMORY[0x28223BE20](v133);
  v126 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = &v121 - v25;
  v27 = sub_266266988();
  v142 = *(v27 - 8);
  v143 = v27;
  v28 = MEMORY[0x28223BE20](v27);
  v30 = &v121 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x28223BE20](v28);
  v135 = &v121 - v32;
  v33 = MEMORY[0x28223BE20](v31);
  v131 = &v121 - v34;
  MEMORY[0x28223BE20](v33);
  v36 = &v121 - v35;
  v37 = swift_allocObject();
  v140 = a2;
  v141 = a1;
  *(v37 + 16) = a1;
  *(v37 + 24) = a2;
  v38 = v37;

  if (a4)
  {
    v39 = a3;

    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v40 = v143;
    v41 = __swift_project_value_buffer(v143, static Logger.default);
    swift_beginAccess();
    v42 = v142;
    (*(v142 + 16))(v36, v41, v40);
    v43 = v39;
    v44 = sub_266266968();
    v45 = sub_266266D68();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 138543362;
      *(v46 + 4) = v43;
      *v47 = v39;
      v48 = v43;
      _os_log_impl(&dword_266219000, v44, v45, "INAddMediaIntentHandlerresolveMediaItem received failure result: %{public}@", v46, 0xCu);
      sub_26622858C(v47, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v47, -1, -1);
      MEMORY[0x266780880](v46, -1, -1);
    }

    (*(v42 + 8))(v36, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v49 = swift_allocObject();
    *(v49 + 16) = xmmword_266267E70;
    *(v49 + 32) = v43;
    v148 = v49;
    v50 = v43;
    v51 = &v148;
LABEL_13:
    v141(v51);
  }

  v52 = a3;
  if ([a3 type] == 6)
  {

    v53 = v139;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v54 = v143;
    v55 = __swift_project_value_buffer(v143, static Logger.default);
    swift_beginAccess();
    v56 = v142;
    (*(v142 + 16))(v30, v55, v54);
    v57 = v52;
    v58 = sub_266266968();
    v59 = sub_266266D78();

    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      *v60 = 138543362;
      *(v60 + 4) = v57;
      *v61 = v52;
      v62 = v57;
      _os_log_impl(&dword_266219000, v58, v59, "INAddMediaIntentHandlerresolveMediaItem successfully resolved podcast show: %{public}@", v60, 0xCu);
      sub_26622858C(v61, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v61, -1, -1);
      MEMORY[0x266780880](v60, -1, -1);
    }

    (*(v56 + 8))(v30, v54);
    v146 = sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    v147 = MEMORY[0x277D557C0];
    v144 = v53;
    v63 = v53;
    sub_266266CE8();
    __swift_destroy_boxed_opaque_existential_1Tm(&v144);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v64 = swift_allocObject();
    *(v64 + 16) = xmmword_266267E70;
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    *(v64 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
    v144 = v64;
    v51 = &v144;
    goto LABEL_13;
  }

  v125 = v38;
  v124 = a3;
  v66 = [a3 identifier];
  v67 = v139;
  if (!v66)
  {
    goto LABEL_35;
  }

  v68 = v66;
  sub_266266A58();

  sub_266265F68();
  swift_allocObject();
  if (!sub_266265F78())
  {
    goto LABEL_35;
  }

  sub_266265F18();
  sub_266265EE8();
  v69 = *(v137 + 8);
  v137 += 8;
  v123 = v69;
  v69(v26, v133);
  v70 = *MEMORY[0x277D555D0];
  v122 = *(v134 + 104);
  v122(v20, v70, v138);
  v71 = sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0], MEMORY[0x277D555E8]);
  sub_266266B78();
  v121 = v71;
  sub_266266B78();
  if (v144 == v148 && v145 == v149)
  {
    v72 = v17;
    v73 = 1;
  }

  else
  {
    v72 = v17;
    v73 = sub_2662670D8();
  }

  v74 = *(v134 + 8);
  v75 = v20;
  v76 = v138;
  v74(v75, v138);
  v74(v22, v76);

  if ((v73 & 1) == 0)
  {
    v77 = v126;
    sub_266265F18();
    v78 = v72;
    sub_266265EE8();
    v123(v77, v133);
    v79 = v127;
    v122(v127, *MEMORY[0x277D555D8], v76);
    sub_266266B78();
    sub_266266B78();
    if (v144 == v148 && v145 == v149)
    {
      v80 = v138;
      v74(v79, v138);
      v74(v78, v80);
    }

    else
    {
      v81 = sub_2662670D8();
      v82 = v138;
      v74(v79, v138);
      v74(v78, v82);

      if ((v81 & 1) == 0)
      {

        v67 = v139;
        goto LABEL_35;
      }
    }
  }

  v67 = v139;
  v83 = [v139 mediaDestination];
  if (!v83)
  {

LABEL_35:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v104 = v143;
    v105 = __swift_project_value_buffer(v143, static Logger.default);
    swift_beginAccess();
    v106 = v142;
    v107 = v135;
    (*(v142 + 16))(v135, v105, v104);
    v108 = v124;
    v109 = v124;
    v110 = sub_266266968();
    v111 = sub_266266D78();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = swift_slowAlloc();
      *v112 = 138543362;
      *(v112 + 4) = v109;
      *v113 = v108;
      v114 = v109;
      _os_log_impl(&dword_266219000, v110, v111, "INAddMediaIntentHandler#resolveMediaItem for music item: %{public}@...", v112, 0xCu);
      sub_26622858C(v113, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v113, -1, -1);
      MEMORY[0x266780880](v112, -1, -1);
    }

    (*(v106 + 8))(v107, v104);
    v115 = v136;
    __swift_project_boxed_opaque_existential_1(&v136[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription], *&v136[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_subscription + 24]);
    v116 = swift_allocObject();
    v117 = v125;
    v116[2] = sub_2662489AC;
    v116[3] = v117;
    v116[4] = v115;
    v116[5] = v67;
    v116[6] = v109;
    v118 = v109;
    v119 = v67;
    v120 = v115;
    sub_266266508();
  }

  v84 = v128;
  v85 = v83;
  sub_2662669C8();

  v86 = v129;
  v87 = v130;
  v88 = v84;
  v89 = v132;
  (*(v129 + 32))(v130, v88, v132);
  v90 = *(v86 + 88);
  v91 = (v86 + 8);
  if (v90(v87, v89) != *MEMORY[0x277D85358])
  {

    (*v91)(v87, v89);
    goto LABEL_35;
  }

  (*v91)(v87, v89);
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v92 = v143;
  v93 = __swift_project_value_buffer(v143, static Logger.default);
  swift_beginAccess();
  v94 = v142;
  (*(v142 + 16))(v131, v93, v92);
  v95 = v124;
  v96 = v124;
  v97 = sub_266266968();
  v98 = sub_266266D78();

  if (os_log_type_enabled(v97, v98))
  {
    v99 = swift_slowAlloc();
    v100 = swift_slowAlloc();
    *v99 = 138543362;
    *(v99 + 4) = v96;
    *v100 = v95;
    v101 = v96;
    _os_log_impl(&dword_266219000, v97, v98, "INAddMediaIntentHandler#resolveMediaItem successfully resolved music item: %{public}@ without checking subscription or iCloudLibrarySync status", v99, 0xCu);
    sub_26622858C(v100, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v100, -1, -1);
    MEMORY[0x266780880](v99, -1, -1);
  }

  (*(v94 + 8))(v131, v92);
  v146 = sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  v147 = MEMORY[0x277D557C0];
  v144 = v67;
  v102 = v67;
  sub_266266CE8();
  __swift_destroy_boxed_opaque_existential_1Tm(&v144);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
  v103 = swift_allocObject();
  *(v103 + 16) = xmmword_266267E70;
  sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
  *(v103 + 32) = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
  v144 = v103;
  v141(&v144);
}

uint64_t sub_26623D2B0(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v42 = a6;
  v43 = a2;
  v38 = a4;
  v39 = a5;
  v44 = a3;
  v6 = sub_266266988();
  v40 = *(v6 - 8);
  v41 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2662665F8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_266266598();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v37 - v18;
  sub_2662663E8();
  (*(v14 + 104))(v17, *MEMORY[0x277D55770], v13);
  sub_266248B4C(&qword_280069AF0, MEMORY[0x277D55788], MEMORY[0x277D55798]);
  sub_266266B78();
  sub_266266B78();
  v20 = *(v14 + 8);
  v20(v17, v13);
  v20(v19, v13);
  if (v45 == v46)
  {
    __swift_project_boxed_opaque_existential_1((v38 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v38 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
    v21 = v39;
    v45 = v39;
    (*(v10 + 104))(v12, *MEMORY[0x277D557A8], v9);
    sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    sub_266266648();
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    if (v23)
    {
      sub_266266A78();
    }

    v32 = swift_allocObject();
    v33 = v44;
    v32[2] = v43;
    v32[3] = v33;
    v34 = v42;
    v32[4] = v42;
    v32[5] = v21;

    v35 = v34;
    v36 = v21;
    sub_266266168();
    swift_bridgeObjectRelease_n();
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v24 = v41;
    v25 = __swift_project_value_buffer(v41, static Logger.default);
    swift_beginAccess();
    v26 = v40;
    (*(v40 + 16))(v8, v25, v24);
    v27 = sub_266266968();
    v28 = sub_266266D68();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_266219000, v27, v28, "INAddMediaIntentHandler#resolveMediaItem the user is not a subscriber", v29, 2u);
      MEMORY[0x266780880](v29, -1, -1);
    }

    (*(v26 + 8))(v8, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_266267E70;
    *(v30 + 32) = [objc_opt_self() unsupportedForReason_];
    v43(v30);
  }
}

uint64_t sub_26623D820(char a1, void (*a2)(void), uint64_t a3, void *a4, void *a5)
{
  v10 = sub_266266988();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v35 - v15;
  if (a1)
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v16, v17, v10);
    v18 = a4;
    v19 = sub_266266968();
    v20 = sub_266266D78();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v35[1] = a3;
      v22 = a2;
      v23 = v21;
      v24 = swift_slowAlloc();
      *v23 = 138543362;
      *(v23 + 4) = v18;
      *v24 = v18;
      v25 = v18;
      _os_log_impl(&dword_266219000, v19, v20, "INAddMediaIntentHandler#resolveMediaItem successfully resolved music item: %{public}@", v23, 0xCu);
      sub_26622858C(v24, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v24, -1, -1);
      v26 = v23;
      a2 = v22;
      MEMORY[0x266780880](v26, -1, -1);
    }

    (*(v11 + 8))(v16, v10);
    v36[3] = sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    v36[4] = MEMORY[0x277D557C0];
    v36[0] = a5;
    v27 = a5;
    sub_266266CE8();
    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_266267E70;
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    v29 = [swift_getObjCClassFromMetadata() successWithResolvedMediaItem_];
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v10, static Logger.default);
    swift_beginAccess();
    (*(v11 + 16))(v14, v30, v10);
    v31 = sub_266266968();
    v32 = sub_266266D68();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_266219000, v31, v32, "INAddMediaIntentHandler#resolveMediaItem iCloud library sync required", v33, 2u);
      MEMORY[0x266780880](v33, -1, -1);
    }

    (*(v11 + 8))(v14, v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_266267E70;
    v29 = [objc_opt_self() unsupportedForReason_];
  }

  *(v28 + 32) = v29;
  a2(v28);
}

uint64_t sub_26623DC74(void *a1, uint64_t a2, uint64_t a3)
{
  v21[0] = a1;
  v5 = sub_266266958();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x28223BE20](v5);
  v9 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v21 - v10;
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a3;
  v13 = qword_280069538;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = logObject;
  sub_266266938();
  (*(v6 + 16))(v9, v11, v5);
  v15 = (*(v6 + 80) + 33) & ~*(v6 + 80);
  v16 = (v7 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 16) = "addMediaIntentHandlerResolveNowPlayingItem";
  *(v17 + 24) = 42;
  *(v17 + 32) = 2;
  (*(v6 + 32))(v17 + v15, v9, v5);
  v18 = (v17 + v16);
  *v18 = sub_266248454;
  v18[1] = v12;

  sub_266266F38();
  sub_266266928();
  v19 = swift_allocObject();
  *(v19 + 16) = sub_266248458;
  *(v19 + 24) = v17;

  sub_26623DF1C(sub_26624845C, v19, v21[1], v21[0]);

  return (*(v6 + 8))(v11, v5);
}

uint64_t sub_26623DF1C(uint64_t a1, uint64_t a2, char *a3, void *a4)
{
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  v13 = qword_280069528;

  if (v13 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  (*(v9 + 16))(v11, v14, v8);
  v15 = sub_266266968();
  v16 = sub_266266D58();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "INAddMediaIntentHandler#resolveNowPlayingItem resolving...", v17, 2u);
    MEMORY[0x266780880](v17, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  __swift_project_boxed_opaque_existential_1(&a3[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying], *&a3[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 24]);
  v18 = swift_allocObject();
  v18[2] = sub_2662484A0;
  v18[3] = v12;
  v18[4] = a3;
  v18[5] = a4;
  v19 = a3;
  v20 = a4;
  sub_2662663A8();
}

void sub_26623E184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(void), uint64_t a9, char *a10, void *a11)
{
  v14 = sub_266266988();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a4)
  {
    __swift_project_boxed_opaque_existential_1(&a10[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying], *&a10[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 24]);
    v18 = swift_allocObject();
    v18[2] = a8;
    v18[3] = a9;
    v18[4] = a10;
    v18[5] = a3;
    v18[6] = a4;
    v18[7] = a11;

    v19 = a10;
    v20 = a11;
    sub_2662663C8();
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v21 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    (*(v15 + 16))(v17, v21, v14);
    v22 = sub_266266968();
    v23 = sub_266266D68();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_266219000, v22, v23, "INAddMediaIntentHandler#resolveNowPlayingItem could not resolve currently playing app from device", v24, 2u);
      MEMORY[0x266780880](v24, -1, -1);
    }

    (*(v15 + 8))(v17, v14);
    v25 = [objc_opt_self() unsupportedForReason_];
    a8();
  }
}

void sub_26623E43C(int a1, void (*a2)(void), uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void *a7)
{
  v40 = a4;
  v41 = a7;
  v38 = a5;
  v39 = a6;
  v42 = a2;
  v43 = a3;
  v8 = sub_266266988();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v37 - v13;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v8, static Logger.default);
  swift_beginAccess();
  v16 = *(v9 + 16);
  v16(v14, v15, v8);
  v17 = sub_266266968();
  v18 = sub_266266D48();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37 = v12;
    v20 = a1;
    v21 = v19;
    *v19 = 67240192;
    *(v19 + 4) = v20;
    _os_log_impl(&dword_266219000, v17, v18, "INAddMediaIntentHandler#resolveNowPlayingItem playback state: %{public}u", v19, 8u);
    v22 = v21;
    a1 = v20;
    v12 = v37;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = *(v9 + 8);
  v23(v14, v8);
  if (a1 && a1 != 3)
  {
    v30 = v40;
    __swift_project_boxed_opaque_existential_1(&v40[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying], *&v40[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_nowPlaying + 24]);
    v31 = swift_allocObject();
    v32 = v41;
    v31[2] = v42;
    v33 = v38;
    v34 = v39;
    v31[3] = v43;
    v31[4] = v33;
    v31[5] = v34;
    v31[6] = v30;
    v31[7] = v32;

    v35 = v30;
    v36 = v32;
    sub_2662663B8();
  }

  else
  {
    v16(v12, v15, v8);
    v24 = sub_266266968();
    v25 = sub_266266D68();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = a1;
      v28 = v26;
      *v26 = 67240192;
      *(v26 + 4) = v27;
      _os_log_impl(&dword_266219000, v24, v25, "INAddMediaIntentHandler#resolveNowPlayingItem nothing playing - state: %{public}u", v26, 8u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    v23(v12, v8);
    v29 = [objc_opt_self() unsupportedForReason_];
    v42();
  }
}

void sub_26623E7C8(uint64_t a1, void (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5, char *a6, void *a7)
{
  v195 = a7;
  v196 = a6;
  v208 = a4;
  v209 = a5;
  v213 = a2;
  v214 = a3;
  v212 = a1;
  v201 = sub_266265F28();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = &v170 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v204 = sub_266265F58();
  v198 = *(v204 - 8);
  MEMORY[0x28223BE20](v204);
  v197 = &v170 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_2662665F8();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v191 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_266266988();
  v11 = *(v10 - 8);
  v215 = v10;
  v216 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v203 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v202 = &v170 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v189 = &v170 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v210 = &v170 - v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v170 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069700, qword_266268010);
  MEMORY[0x28223BE20](v22);
  v24 = &v170 - v23;
  v25 = sub_266266038();
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v190 = &v170 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v207 = &v170 - v30;
  v31 = MEMORY[0x28223BE20](v29);
  v33 = &v170 - v32;
  v34 = MEMORY[0x28223BE20](v31);
  v206 = &v170 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v38 = &v170 - v37;
  v39 = MEMORY[0x28223BE20](v36);
  v205 = &v170 - v40;
  v188 = v41;
  MEMORY[0x28223BE20](v39);
  v43 = &v170 - v42;
  sub_266228524(v212, v24, &unk_280069700, qword_266268010);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_26622858C(v24, &unk_280069700, qword_266268010);
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v44 = v215;
    v45 = __swift_project_value_buffer(v215, static Logger.default);
    swift_beginAccess();
    v46 = v216;
    (*(v216 + 16))(v21, v45, v44);
    v47 = sub_266266968();
    v48 = sub_266266D68();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_266219000, v47, v48, "INAddMediaIntentHandler#resolveNowPlayingItem nowPlaying item error", v49, 2u);
      v50 = v49;
      v46 = v216;
      MEMORY[0x266780880](v50, -1, -1);
    }

    (*(v46 + 8))(v21, v44);
    v51 = [objc_opt_self() unsupportedForReason_];
    v213();

    return;
  }

  v52 = v26[4];
  v178 = v26 + 4;
  v177 = v52;
  v52(v43, v24, v25);
  v176 = sub_266265FF8();
  v184 = v53;
  v175 = sub_266265FC8();
  v185 = v54;
  v55 = sub_266266008();
  v57 = v56;
  v58 = sub_266265FD8();
  v59 = v43;
  if ((v60 & 1) == 0)
  {
    v61 = v216;
    v62 = v33;
    if ((v57 & 1) != 0 || v58 != v55)
    {
      goto LABEL_13;
    }

LABEL_12:
    v63 = 0;
    v180 = 1;
    goto LABEL_14;
  }

  v61 = v216;
  v62 = v33;
  if (v57)
  {
    goto LABEL_12;
  }

LABEL_13:
  v63 = sub_266265FD8();
  v180 = v64;
LABEL_14:
  v65 = v38;
  v66 = v210;
  v67 = v205;
  if (qword_280069528 != -1)
  {
    v169 = v63;
    swift_once();
    v63 = v169;
  }

  v179 = v63;
  v68 = v215;
  v69 = __swift_project_value_buffer(v215, static Logger.default);
  swift_beginAccess();
  v70 = *(v61 + 16);
  v181 = v69;
  v212 = v61 + 16;
  v194 = v70;
  v70(v66, v69, v68);
  v71 = v26[2];
  v71(v67, v59, v25);
  v71(v65, v59, v25);
  v182 = v65;
  v72 = v206;
  v71(v206, v59, v25);
  v71(v62, v59, v25);
  v183 = v62;
  v73 = v207;
  v174 = v26 + 2;
  v173 = v71;
  v71(v207, v59, v25);
  v74 = sub_266266968();
  v75 = sub_266266D78();
  v76 = os_log_type_enabled(v74, v75);
  v186 = v26;
  v187 = v59;
  if (v76)
  {
    v77 = swift_slowAlloc();
    v211 = v25;
    v78 = v77;
    v172 = swift_slowAlloc();
    v219 = v172;
    *v78 = 136447234;
    v171 = v75;
    v217 = sub_266265FF8();
    v218 = v79;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069640, &qword_266267E90);
    v170 = v74;
    v80 = sub_266266A68();
    v82 = v81;
    v83 = v26[1];
    v83(v67, v211);
    v84 = sub_26621EAF0(v80, v82, &v219);

    *(v78 + 4) = v84;
    *(v78 + 12) = 2082;
    v85 = v182;
    v217 = sub_266265FC8();
    v218 = v86;
    v87 = sub_266266A68();
    v89 = v88;
    v83(v85, v211);
    v90 = sub_26621EAF0(v87, v89, &v219);

    *(v78 + 14) = v90;
    *(v78 + 22) = 2082;
    v217 = sub_266265FE8();
    v218 = v91;
    v92 = sub_266266A68();
    v94 = v93;
    v83(v72, v211);
    v95 = sub_26621EAF0(v92, v94, &v219);

    *(v78 + 24) = v95;
    *(v78 + 32) = 2082;
    v96 = v183;
    v217 = sub_266266008();
    LOBYTE(v218) = v97 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_280069AB8, &qword_2662685F8);
    v98 = sub_266266A68();
    v100 = v99;
    v83(v96, v211);
    v101 = sub_26621EAF0(v98, v100, &v219);
    v102 = v216;

    *(v78 + 34) = v101;
    *(v78 + 42) = 2082;
    v217 = sub_266266018();
    LOBYTE(v218) = v103 & 1;
    v104 = sub_266266A68();
    v106 = v105;
    v83(v73, v211);
    v59 = v187;
    v107 = sub_26621EAF0(v104, v106, &v219);

    *(v78 + 44) = v107;
    v108 = v170;
    _os_log_impl(&dword_266219000, v170, v171, "INAddMediaIntentHandler#resolveNowPlayingItem now playing: title:%{public}s trackArtist:%{public}s album:%{public}s songId:%{public}s albumId:%{public}s", v78, 0x34u);
    v109 = v172;
    swift_arrayDestroy();
    MEMORY[0x266780880](v109, -1, -1);
    v110 = v78;
    v25 = v211;
    MEMORY[0x266780880](v110, -1, -1);

    v111 = *(v102 + 8);
    v112 = v210;
  }

  else
  {

    v113 = v26[1];
    v113(v73, v25);
    v113(v183, v25);
    v113(v72, v25);
    v113(v182, v25);
    v113(v67, v25);
    v111 = *(v61 + 8);
    v112 = v66;
  }

  v114 = v215;
  v111(v112, v215);
  v116 = v208;
  v115 = v209;
  if (sub_266266278() == v116 && v117 == v115)
  {

LABEL_23:

    v119 = v202;
    v120 = v181;
    v194(v202, v181, v114);
    v121 = sub_266266968();
    v122 = sub_266266D58();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_266219000, v121, v122, "INAddMediaIntentHandler#resolveNowPlayingItem choosing podcast type", v123, 2u);
      MEMORY[0x266780880](v123, -1, -1);
    }

    v111(v119, v114);
    v124 = sub_266266018();
    if ((v125 & 1) == 0)
    {
      v130 = v124;
      v216 = sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
      v217 = v130;
      sub_2662670C8();
      sub_266265FC8();
      v131 = v198;
      v132 = v197;
      (*(v198 + 104))(v197, *MEMORY[0x277D55600], v204);
      v133 = v200;
      v134 = v199;
      v135 = v201;
      (*(v200 + 104))(v199, *MEMORY[0x277D555C8], v201);
      v136 = sub_266266C98();

      (*(v133 + 8))(v134, v135);
      (*(v131 + 8))(v132, v204);
      (v213)(v136, 0);

      (v186[1])(v187, v25);
      return;
    }

    v194(v203, v120, v114);
    v126 = sub_266266968();
    v127 = sub_266266D68();
    if (os_log_type_enabled(v126, v127))
    {
      v128 = swift_slowAlloc();
      *v128 = 0;
      _os_log_impl(&dword_266219000, v126, v127, "INAddMediaIntentHandler#resolveNowPlayingItem Unexpected nil album identifier.", v128, 2u);
      MEMORY[0x266780880](v128, -1, -1);
    }

    v111(v203, v114);
    v129 = [objc_opt_self() unsupportedForReason_];
    v213();

    goto LABEL_32;
  }

  v118 = sub_2662670D8();

  if (v118)
  {
    goto LABEL_23;
  }

  if (v180)
  {
LABEL_31:

    sub_266240540(v195, v59, v213, v214);
LABEL_32:
    (v186[1])(v59, v25);
    return;
  }

  if (sub_266266268() == v116 && v137 == v115)
  {
  }

  else
  {
    v138 = sub_2662670D8();

    if ((v138 & 1) == 0)
    {
      goto LABEL_31;
    }
  }

  v139 = v189;
  v194(v189, v181, v114);
  v140 = sub_266266968();
  v141 = sub_266266D58();
  v142 = os_log_type_enabled(v140, v141);
  v211 = v25;
  if (v142)
  {
    v143 = swift_slowAlloc();
    v144 = swift_slowAlloc();
    v217 = v144;
    *v143 = 136315138;
    v145 = v179;
    v219 = v179;
    v146 = sub_2662670C8();
    v148 = sub_26621EAF0(v146, v147, &v217);

    *(v143 + 4) = v148;
    _os_log_impl(&dword_266219000, v140, v141, "INAddMediaIntentHandler#resolveNowPlayingItem has persistentId, resolving to song using persistentId %s", v143, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v144);
    MEMORY[0x266780880](v144, -1, -1);
    MEMORY[0x266780880](v143, -1, -1);

    v111(v139, v114);
  }

  else
  {

    v111(v139, v114);
    v145 = v179;
  }

  v149 = *&v196[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
  v212 = *&v196[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
  v215 = v149;
  v216 = __swift_project_boxed_opaque_existential_1(&v196[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v149);
  v217 = v145;
  v209 = sub_2662670C8();
  v210 = v150;
  v217 = v195;
  v151 = v192;
  v152 = v191;
  v153 = v193;
  (*(v192 + 104))(v191, *MEMORY[0x277D557A8], v193);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  v155 = v154;
  (*(v151 + 8))(v152, v153);
  if (v155)
  {
    sub_266266A78();
  }

  v156 = v190;
  v157 = v211;
  v173(v190, v187, v211);
  v158 = v186;
  v159 = (*(v186 + 80) + 88) & ~*(v186 + 80);
  v160 = swift_allocObject();
  v161 = v195;
  v162 = v179;
  *(v160 + 2) = v195;
  *(v160 + 3) = v162;
  v163 = v214;
  *(v160 + 4) = v213;
  *(v160 + 5) = v163;
  v164 = v184;
  *(v160 + 6) = v176;
  *(v160 + 7) = v164;
  v165 = v185;
  *(v160 + 8) = v175;
  *(v160 + 9) = v165;
  v166 = v196;
  *(v160 + 10) = v196;
  v177(&v160[v159], v156, v157);

  v167 = v161;

  v168 = v166;
  sub_266266178();

  swift_bridgeObjectRelease_n();

  (v158[1])(v187, v157);
}

void sub_26623FBDC(char a1, void *a2, uint64_t a3, void (*a4)(void), uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v87 = a8;
  v88 = a3;
  v84 = a6;
  v85 = a7;
  v90 = a5;
  v91 = a4;
  v86 = sub_266265F58();
  v83 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v81 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = sub_266265F28();
  v80 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v79 = &v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_266266988();
  v89 = *(v15 - 8);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v78 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v78 - v22;
  v24 = sub_2662669D8();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x28223BE20](v24);
  v28 = &v78 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v30 = &v78 - v29;
  if (a1)
  {
    v31 = [a2 mediaDestination];
    if (v31 && (v32 = v31, sub_2662669C8(), v32, (*(v25 + 32))(v30, v28, v24), LODWORD(v32) = (*(v25 + 88))(v30, v24), v33 = *MEMORY[0x277D85350], (*(v25 + 8))(v30, v24), v32 == v33))
    {
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v34 = v15;
      v35 = __swift_project_value_buffer(v15, static Logger.default);
      swift_beginAccess();
      v36 = v89;
      (*(v89 + 16))(v23, v35, v34);
      v37 = sub_266266968();
      v38 = sub_266266D58();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v39 = 136446210;
        v92 = v88;
        v93 = v40;
        v41 = sub_2662670C8();
        v43 = sub_26621EAF0(v41, v42, &v93);

        *(v39 + 4) = v43;
        _os_log_impl(&dword_266219000, v37, v38, "INAddMediaIntentHandler#resolveNowPlayingItem The item %{public}s asked to add to library and exists in library, returning error dialog.", v39, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v40);
        MEMORY[0x266780880](v40, -1, -1);
        MEMORY[0x266780880](v39, -1, -1);
      }

      (*(v36 + 8))(v23, v34);
      v44 = [objc_opt_self() unsupportedForReason_];
      v91();
    }

    else
    {
      if (qword_280069528 != -1)
      {
        swift_once();
      }

      v58 = v15;
      v59 = __swift_project_value_buffer(v15, static Logger.default);
      swift_beginAccess();
      v60 = v89;
      (*(v89 + 16))(v21, v59, v58);
      v61 = sub_266266968();
      v62 = sub_266266D58();
      v63 = os_log_type_enabled(v61, v62);
      v64 = v88;
      if (v63)
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v92 = v64;
        v93 = v66;
        *v65 = 136446210;
        v67 = sub_2662670C8();
        v69 = sub_26621EAF0(v67, v68, &v93);
        v78 = v58;
        v70 = v69;

        *(v65 + 4) = v70;
        _os_log_impl(&dword_266219000, v61, v62, "INAddMediaIntentHandler#resolveNowPlayingItem The item %{public}s exists in library and target is not library.", v65, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v66);
        MEMORY[0x266780880](v66, -1, -1);
        MEMORY[0x266780880](v65, -1, -1);

        (*(v60 + 8))(v21, v78);
      }

      else
      {

        (*(v60 + 8))(v21, v58);
      }

      sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
      v93 = v64;
      sub_2662670C8();
      v72 = v79;
      v71 = v80;
      v73 = v82;
      (*(v80 + 104))(v79, *MEMORY[0x277D555D0], v82);
      v74 = v83;
      v75 = v81;
      v76 = v86;
      (*(v83 + 104))(v81, *MEMORY[0x277D55600], v86);
      v77 = sub_266266C98();

      (*(v74 + 8))(v75, v76);
      (*(v71 + 8))(v72, v73);
      (v91)(v77, 0);
    }
  }

  else
  {
    v87 = a2;
    v45 = a11;
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v46 = v15;
    v47 = __swift_project_value_buffer(v15, static Logger.default);
    swift_beginAccess();
    v48 = v89;
    (*(v89 + 16))(v18, v47, v46);
    v49 = sub_266266968();
    v50 = sub_266266D58();
    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      *v51 = 136446210;
      v92 = v88;
      v93 = v52;
      v53 = sub_2662670C8();
      v55 = sub_26621EAF0(v53, v54, &v93);
      v88 = a11;
      v56 = v46;
      v57 = v55;

      *(v51 + 4) = v57;
      _os_log_impl(&dword_266219000, v49, v50, "INAddMediaIntentHandler#resolveNowPlayingItem The item %{public}s doesn't exist in the library and target is library or playlist. This can happen if the persistentID is present due to cached content", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v52);
      MEMORY[0x266780880](v52, -1, -1);
      MEMORY[0x266780880](v51, -1, -1);

      v45 = v88;
      (*(v48 + 8))(v18, v56);
    }

    else
    {

      (*(v48 + 8))(v18, v46);
    }

    sub_266240540(v87, v45, v91, v90);
  }
}

void sub_266240540(void *a1, uint64_t a2, void (*a3)(void), uint64_t a4)
{
  v100 = a3;
  v101 = a4;
  v5 = sub_2662665F8();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v90 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_266266988();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v85 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v81 = &v79 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v80 = &v79 - v14;
  v15 = MEMORY[0x28223BE20](v13);
  v87 = &v79 - v16;
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v79 - v18;
  MEMORY[0x28223BE20](v17);
  v21 = &v79 - v20;
  v88 = sub_266265FF8();
  v97 = v22;
  v93 = sub_266265FC8();
  v99 = v23;
  v82 = sub_266265FE8();
  v98 = v24;
  v95 = sub_266266008();
  v94 = v25;
  v84 = sub_266266018();
  v83 = v26;
  v96 = a1;
  v27 = [a1 mediaSearch];
  if (v27)
  {
    v28 = v27;
    v29 = [v27 mediaType];
  }

  else
  {
    v29 = 0;
  }

  v86 = v19;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v30 = __swift_project_value_buffer(v7, static Logger.default);
  swift_beginAccess();
  v31 = *(v8 + 16);
  v31(v21, v30, v7);
  v32 = sub_266266968();
  v33 = sub_266266D58();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 134349056;
    *(v34 + 4) = v29;
    _os_log_impl(&dword_266219000, v32, v33, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId choosing music type for search type: %{public}ld", v34, 0xCu);
    MEMORY[0x266780880](v34, -1, -1);
  }

  v35 = *(v8 + 8);
  v35(v21, v7);
  if (v29 > 0x12)
  {
    goto LABEL_23;
  }

  if (((1 << v29) & 0x40023) != 0)
  {

    if (v94)
    {

      v36 = v87;
      v31(v87, v30, v7);
      v37 = sub_266266968();
      v38 = sub_266266D68();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_266219000, v37, v38, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId Unexpected nil song identifier for song request", v39, 2u);
        MEMORY[0x266780880](v39, -1, -1);
      }

LABEL_13:

      v35(v36, v7);
      v40 = [objc_opt_self() unsupportedForReason_];
LABEL_26:
      v55 = v40;
      v100();

      return;
    }

    v41 = v86;
    v31(v86, v30, v7);
    v42 = sub_266266968();
    v43 = sub_266266D58();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&dword_266219000, v42, v43, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId building song item from now playing...", v44, 2u);
      MEMORY[0x266780880](v44, -1, -1);
    }

    v35(v41, v7);
    __swift_project_boxed_opaque_existential_1((v89 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v89 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
    v102 = v95;
    sub_2662670C8();
    v102 = v96;
    v46 = v90;
    v45 = v91;
    v47 = v92;
    (*(v91 + 104))(v90, *MEMORY[0x277D557A8], v92);
    sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
    sub_266266648();
    v49 = v48;
    (*(v45 + 8))(v46, v47);
    if (v49)
    {
      sub_266266A78();
    }

    v56 = swift_allocObject();
    v57 = v95;
    v58 = v96;
    v56[2] = v96;
    v56[3] = v57;
    v59 = v101;
    v56[4] = v100;
    v56[5] = v59;
    v60 = v97;
    v56[6] = v88;
    v56[7] = v60;
    v61 = v99;
    v56[8] = v93;
    v56[9] = v61;

    v62 = v58;

    goto LABEL_28;
  }

  if (v29 != 2)
  {
LABEL_23:

    v31(v85, v30, v7);
    v52 = sub_266266968();
    v53 = sub_266266D68();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 134349056;
      *(v54 + 4) = v29;
      _os_log_impl(&dword_266219000, v52, v53, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId unexpected media type to add: %{public}ld", v54, 0xCu);
      MEMORY[0x266780880](v54, -1, -1);
    }

    v35(v85, v7);
    v40 = [objc_opt_self() unsupportedForReason_];
    goto LABEL_26;
  }

  if (v83)
  {

    v36 = v81;
    v31(v81, v30, v7);
    v37 = sub_266266968();
    v50 = sub_266266D68();
    if (os_log_type_enabled(v37, v50))
    {
      v51 = swift_slowAlloc();
      *v51 = 0;
      _os_log_impl(&dword_266219000, v37, v50, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId Unexpected nil album identifier for album request", v51, 2u);
      MEMORY[0x266780880](v51, -1, -1);
    }

    goto LABEL_13;
  }

  v63 = v80;
  v31(v80, v30, v7);
  v64 = sub_266266968();
  v65 = sub_266266D58();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 0;
    _os_log_impl(&dword_266219000, v64, v65, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId building album item from now playing...", v66, 2u);
    MEMORY[0x266780880](v66, -1, -1);
  }

  v35(v63, v7);
  __swift_project_boxed_opaque_existential_1((v89 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v89 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
  v102 = v84;
  sub_2662670C8();
  v102 = v96;
  v68 = v90;
  v67 = v91;
  v69 = v92;
  (*(v91 + 104))(v90, *MEMORY[0x277D557A8], v92);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  v71 = v70;
  (*(v67 + 8))(v68, v69);
  if (v71)
  {
    sub_266266A78();
  }

  v72 = swift_allocObject();
  v73 = v96;
  v74 = v84;
  v72[2] = v96;
  v72[3] = v74;
  v75 = v101;
  v72[4] = v100;
  v72[5] = v75;
  v76 = v98;
  v72[6] = v82;
  v72[7] = v76;
  v77 = v99;
  v72[8] = v93;
  v72[9] = v77;

  v78 = v73;

LABEL_28:
  sub_266266178();

  swift_bridgeObjectRelease_n();
}

void sub_266241024(char a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v50 = a8;
  v48 = a6;
  v53 = a5;
  v54 = a4;
  v52 = a3;
  v51 = sub_266265F28();
  v11 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v13 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_266265F58();
  v14 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v16 = &v44 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_266266988();
  v45 = *(v17 - 8);
  v46 = v17;
  MEMORY[0x28223BE20](v17);
  v44 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_2662669D8();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v44 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v25 = &v44 - v24;
  if ((a1 & 1) != 0 && (v26 = [a2 mediaDestination]) != 0 && (v27 = v26, sub_2662669C8(), v27, (*(v20 + 32))(v25, v23, v19), LODWORD(v27) = (*(v20 + 88))(v25, v19), v28 = *MEMORY[0x277D85350], (*(v20 + 8))(v25, v19), v27 == v28))
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v29 = v46;
    v30 = __swift_project_value_buffer(v46, static Logger.default);
    swift_beginAccess();
    v32 = v44;
    v31 = v45;
    (*(v45 + 16))(v44, v30, v29);
    v33 = sub_266266968();
    v34 = sub_266266D58();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136446210;
      v55 = v52;
      v56[0] = v36;
      v37 = sub_2662670C8();
      v39 = sub_26621EAF0(v37, v38, v56);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_266219000, v33, v34, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId The item %{public}s asked to add to library and exists in library, returning error dialog.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);
    }

    (*(v31 + 8))(v32, v29);
    v40 = [objc_opt_self() unsupportedForReason_];
    v41 = 1;
  }

  else
  {
    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v56[1] = v52;
    sub_2662670C8();
    v42 = v47;
    (*(v14 + 104))(v16, *MEMORY[0x277D55600], v47);
    v43 = v51;
    (*(v11 + 104))(v13, *MEMORY[0x277D555C8], v51);
    v40 = sub_266266C98();

    (*(v11 + 8))(v13, v43);
    (*(v14 + 8))(v16, v42);
    v41 = 0;
  }

  v54(v40, v41);
}

void sub_2662415E4(char a1, void *a2, uint64_t a3, void (*a4)(id, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v67 = a7;
  v68 = a8;
  v66 = a6;
  v71 = a5;
  v72 = a4;
  v69 = a3;
  v11 = sub_266265F28();
  v65 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v63 = v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_266265F58();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v61 = v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_266266988();
  v70 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = v60 - v18;
  v20 = sub_2662669D8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = v60 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = v60 - v25;
  if ((a1 & 1) != 0 && (v27 = [a2 mediaDestination]) != 0 && (v28 = v27, sub_2662669C8(), v28, (*(v21 + 32))(v26, v24, v20), LODWORD(v28) = (*(v21 + 88))(v26, v20), v29 = *MEMORY[0x277D85350], (*(v21 + 8))(v26, v20), v28 == v29))
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    v31 = v70;
    v32 = v19;
    (*(v70 + 16))(v19, v30, v14);
    v33 = sub_266266968();
    v34 = sub_266266D58();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 136446210;
      v73 = v69;
      v74 = v36;
      v37 = sub_2662670C8();
      v39 = sub_26621EAF0(v37, v38, &v74);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_266219000, v33, v34, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId The item %{public}s asked to add to library and exists in library, returning error dialog.", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x266780880](v36, -1, -1);
      MEMORY[0x266780880](v35, -1, -1);
    }

    (*(v31 + 8))(v32, v14);
    v40 = [objc_opt_self() unsupportedForReason_];
    v41 = 1;
  }

  else
  {
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v42 = __swift_project_value_buffer(v14, static Logger.default);
    swift_beginAccess();
    v43 = v70;
    (*(v70 + 16))(v17, v42, v14);
    v44 = sub_266266968();
    v45 = sub_266266D58();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      *v46 = 136446210;
      v60[0] = v14;
      v48 = v69;
      v73 = v69;
      v74 = v47;
      v49 = sub_2662670C8();
      v51 = sub_26621EAF0(v49, v50, &v74);
      v60[1] = a9;
      v52 = v11;
      v53 = v43;
      v54 = v51;

      *(v46 + 4) = v54;
      _os_log_impl(&dword_266219000, v44, v45, "INAddMediaIntentHandler#resolveNowPlayingItemFromStoreId The item %{public}s does not exists in library.", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v47);
      MEMORY[0x266780880](v47, -1, -1);
      MEMORY[0x266780880](v46, -1, -1);

      (*(v53 + 8))(v17, v60[0]);
      v11 = v52;
    }

    else
    {

      (*(v43 + 8))(v17, v14);
      v48 = v69;
    }

    sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
    v74 = v48;
    sub_2662670C8();
    v56 = v61;
    v55 = v62;
    v57 = v64;
    (*(v62 + 104))(v61, *MEMORY[0x277D55600], v64);
    v58 = v65;
    v59 = v63;
    (*(v65 + 104))(v63, *MEMORY[0x277D555C8], v11);
    v40 = sub_266266C98();

    (*(v58 + 8))(v59, v11);
    (*(v55 + 8))(v56, v57);
    v41 = 0;
  }

  v72(v40, v41);
}

id INAddMediaIntentHandler.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for INAddMediaIntentHandler();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_266241E70()
{
  v0 = [objc_opt_self() playlistsQuery];

  return v0;
}

id sub_266241EB0()
{
  v0 = [objc_opt_self() songsQuery];

  return v0;
}

id sub_266241EF0()
{
  v0 = [objc_opt_self() albumsQuery];

  return v0;
}

uint64_t sub_266241F54()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266241FC0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v8 = *a1;
  sub_266266F28();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  sub_266266928();
  return a6(&v8);
}

uint64_t sub_266242090(uint64_t *a1)
{
  v3 = *(sub_266266958() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_266241FC0(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_266242138(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return v2(&v4);
}

uint64_t sub_2662421AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *))
{
  v7 = *(a1 + 8);
  v9 = *a1;
  v10 = v7;
  sub_266266F28();
  if (qword_280069538 != -1)
  {
    swift_once();
  }

  sub_266266928();
  return a6(&v9);
}

void sub_266242284(void *a1, void *a2, void (*a3)(void), uint64_t a4)
{
  v363 = a2;
  v7 = sub_266265F58();
  v354 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v328 = &v317 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v353 = &v317 - v10;
  v11 = sub_266265F28();
  v367 = *(v11 - 8);
  v368 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v334 = &v317 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v335 = &v317 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v338 = &v317 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v349 = &v317 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v351 = &v317 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v359 = &v317 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v331 = &v317 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v332 = &v317 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v347 = &v317 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v348 = &v317 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v346 = &v317 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v358 = &v317 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v340 = &v317 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v341 = &v317 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v357 = &v317 - v41;
  MEMORY[0x28223BE20](v40);
  v361 = &v317 - v42;
  v366 = sub_266265F08();
  v364 = *(v366 - 8);
  v43 = MEMORY[0x28223BE20](v366);
  v333 = &v317 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x28223BE20](v43);
  v327 = &v317 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v344 = &v317 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v337 = &v317 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v350 = &v317 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v330 = &v317 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v336 = &v317 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v345 = &v317 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v339 = &v317 - v60;
  MEMORY[0x28223BE20](v59);
  v356 = &v317 - v61;
  v62 = sub_266266988();
  v63 = *(v62 - 8);
  v64 = MEMORY[0x28223BE20](v62);
  v371 = &v317 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = MEMORY[0x28223BE20](v64);
  v326 = &v317 - v67;
  v68 = MEMORY[0x28223BE20](v66);
  v352 = &v317 - v69;
  v70 = MEMORY[0x28223BE20](v68);
  v329 = &v317 - v71;
  v72 = MEMORY[0x28223BE20](v70);
  v343 = &v317 - v73;
  v74 = MEMORY[0x28223BE20](v72);
  v342 = &v317 - v75;
  v76 = MEMORY[0x28223BE20](v74);
  v355 = &v317 - v77;
  v78 = MEMORY[0x28223BE20](v76);
  v360 = &v317 - v79;
  v80 = MEMORY[0x28223BE20](v78);
  v362 = &v317 - v81;
  v82 = MEMORY[0x28223BE20](v80);
  v365 = &v317 - v83;
  v84 = MEMORY[0x28223BE20](v82);
  v370 = &v317 - v85;
  v86 = MEMORY[0x28223BE20](v84);
  v88 = &v317 - v87;
  v89 = MEMORY[0x28223BE20](v86);
  v91 = (&v317 - v90);
  v92 = MEMORY[0x28223BE20](v89);
  v94 = &v317 - v93;
  MEMORY[0x28223BE20](v92);
  v96 = &v317 - v95;
  v369 = a1;
  v97 = [a1 privateAddMediaIntentData];
  if (!v97)
  {
    goto LABEL_168;
  }

  v372 = v63;
  v98 = v97;
  v99 = [v97 audioSearchResults];

  v63 = v372;
  if (!v99)
  {
    goto LABEL_168;
  }

  v325 = a3;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v100 = sub_266266BB8();

  if (!(v100 >> 62))
  {
    if (*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

    goto LABEL_167;
  }

  if (!sub_266267078())
  {
LABEL_167:

    a3 = v325;
LABEL_168:
    if (qword_280069528 != -1)
    {
      swift_once();
    }

    v313 = __swift_project_value_buffer(v62, static Logger.default);
    swift_beginAccess();
    (v63[2])(v96, v313, v62);
    v314 = sub_266266968();
    v315 = sub_266266D68();
    if (os_log_type_enabled(v314, v315))
    {
      v316 = swift_slowAlloc();
      *v316 = 0;
      _os_log_impl(&dword_266219000, v314, v315, "INAddMediaIntentHandler#resolveSearchItem empty media item in privateAddMediaIntent data", v316, 2u);
      MEMORY[0x266780880](v316, -1, -1);
    }

    (v63[1])(v96, v62);
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    v252 = [swift_getObjCClassFromMetadata() unsupported];
    v375 = v252;
    LOBYTE(v376) = 1;
    a3(&v375);
    goto LABEL_173;
  }

LABEL_5:
  if ((v100 & 0xC000000000000001) != 0)
  {
    v101 = MEMORY[0x266780220](0, v100);
  }

  else
  {
    if (!*((v100 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_176;
    }

    v101 = *(v100 + 32);
  }

  v102 = v101;

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v103 = __swift_project_value_buffer(v62, static Logger.default);
  swift_beginAccess();
  v104 = v63[2];
  v322 = v103;
  v324 = v63 + 2;
  v323 = v104;
  v104(v94, v103, v62);
  v105 = v102;
  v106 = sub_266266968();
  v107 = sub_266266D58();

  v108 = os_log_type_enabled(v106, v107);
  v319 = v7;
  if (v108)
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v321 = v62;
    v320 = a4;
    v111 = v110;
    v375 = v110;
    *v109 = 136446210;
    v112 = sub_266266CD8();
    v114 = sub_26621EAF0(v112, v113, &v375);

    *(v109 + 4) = v114;
    _os_log_impl(&dword_266219000, v106, v107, "INAddMediaIntentHandler#resolveSearchItem resolving from item: %{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v111);
    v115 = v111;
    a4 = v320;
    v62 = v321;
    MEMORY[0x266780880](v115, -1, -1);
    v116 = v109;
    v63 = v372;
    MEMORY[0x266780880](v116, -1, -1);
  }

  v117 = v63[1];
  v117(v94, v62);
  v94 = [v105 type];
  if (!sub_26621CAD0(v94, &unk_2877D9958))
  {
    v100 = v105;
    v96 = [v369 backingStore];
    objc_opt_self();
    v139 = swift_dynamicCastObjCClass();
    if (!v139)
    {

      v63 = v325;
LABEL_32:
      v141 = v371;
LABEL_50:
      v323(v141, v322, v62);
      v173 = sub_266266968();
      v174 = sub_266266D68();
      if (os_log_type_enabled(v173, v174))
      {
        v175 = swift_slowAlloc();
        *v175 = 134349056;
        *(v175 + 4) = v94;
        _os_log_impl(&dword_266219000, v173, v174, "INAddMediaIntentHandler#resolveSearchItem is of unsupported media type=%{public}ld", v175, 0xCu);
        MEMORY[0x266780880](v175, -1, -1);
      }

      v117(v141, v62);
      v176 = [objc_opt_self() unsupportedForReason_];
      v375 = v176;
      LOBYTE(v376) = 1;
      (v63)(&v375);

      return;
    }

    v370 = v139;
    v140 = [v139 privateAddMediaIntentData];
    v63 = v325;
    v141 = v371;
    if (!v140)
    {

      goto LABEL_50;
    }

    v91 = v117;
    v142 = v140;
    v143 = [v140 audioSearchResults];

    if (!v143)
    {

      v117 = v91;
      goto LABEL_50;
    }

    v321 = v62;
    sub_266228130(0, &qword_280069AF8, 0x277CD4360);
    v88 = sub_266266BB8();

    if (!(v88 >> 62))
    {
      if (*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_24:
        if ((v88 & 0xC000000000000001) != 0)
        {
          v144 = MEMORY[0x266780220](0, v88);
        }

        else
        {
          if (!*((v88 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            return;
          }

          v144 = *(v88 + 32);
        }

        v145 = v144;

        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_280069790, qword_266268090);
        v146 = swift_allocObject();
        *(v146 + 16) = xmmword_266267E70;
        *(v146 + 32) = v145;
        v147 = v145;
        v148 = sub_266266B98();

        [v370 setMediaItems_];

        v62 = v321;
        v117 = v91;
        goto LABEL_32;
      }

      goto LABEL_177;
    }

LABEL_176:
    if (sub_266267078())
    {
      goto LABEL_24;
    }

LABEL_177:
    v117 = v91;

    v62 = v321;
    goto LABEL_32;
  }

  v371 = v105;
  v118 = [v105 identifier];
  if (!v118)
  {
    v323(v88, v322, v62);
    v149 = sub_266266968();
    v150 = sub_266266D68();
    if (os_log_type_enabled(v149, v150))
    {
      v151 = swift_slowAlloc();
      *v151 = 0;
      _os_log_impl(&dword_266219000, v149, v150, "INAddMediaIntentHandler#resolveSearchItem could not find item identifier", v151, 2u);
      MEMORY[0x266780880](v151, -1, -1);
    }

    v117(v88, v62);
    sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
    v152 = [swift_getObjCClassFromMetadata() unsupported];
    goto LABEL_36;
  }

  v318 = v117;
  v119 = v118;
  v120 = sub_266266A58();
  v122 = v121;

  v323(v91, v322, v62);

  v123 = sub_266266968();
  v124 = sub_266266D58();

  if (os_log_type_enabled(v123, v124))
  {
    v125 = a4;
    v126 = swift_slowAlloc();
    v127 = swift_slowAlloc();
    v375 = v127;
    *v126 = 136446210;
    *(v126 + 4) = sub_26621EAF0(v120, v122, &v375);
    _os_log_impl(&dword_266219000, v123, v124, "INAddMediaIntentHandler#media item identifier: %{public}s", v126, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v127);
    MEMORY[0x266780880](v127, -1, -1);
    v128 = v126;
    a4 = v125;
    MEMORY[0x266780880](v128, -1, -1);
  }

  v129 = v318;
  v318(v91, v62);
  sub_266265F68();
  swift_allocObject();

  v130 = sub_266265F78();
  if (!v130)
  {

    v153 = v365;
    v323(v365, v322, v62);
    v154 = sub_266266968();
    v155 = sub_266266D68();
    if (os_log_type_enabled(v154, v155))
    {
      v156 = swift_slowAlloc();
      *v156 = 0;
      _os_log_impl(&dword_266219000, v154, v155, "INAddMediaIntentHandler#resolveSearchItem could not parse remote item identifier", v156, 2u);
      MEMORY[0x266780880](v156, -1, -1);
    }

    v129(v153, v62);
    v152 = [objc_opt_self() unsupportedForReason_];
LABEL_36:
    v157 = v152;
    v375 = v157;
    LOBYTE(v376) = 1;
    v325(&v375);

LABEL_105:
    return;
  }

  v369 = v130;
  v323(v370, v322, v62);
  v131 = v371;

  v132 = sub_266266968();
  v133 = sub_266266D78();

  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v135 = a4;
    v136 = swift_slowAlloc();
    v375 = v136;
    *v134 = 134349314;
    *(v134 + 4) = [v131 type];

    *(v134 + 12) = 2082;
    v137 = sub_26621EAF0(v120, v122, &v375);

    *(v134 + 14) = v137;
    _os_log_impl(&dword_266219000, v132, v133, "INAddMediaIntentHandler#resolveSearchItem for item with type: %{public}ld identifier: %{public}s", v134, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v136);
    v138 = v136;
    a4 = v135;
    v129 = v318;
    MEMORY[0x266780880](v138, -1, -1);
    MEMORY[0x266780880](v134, -1, -1);
  }

  else
  {
  }

  v129(v370, v62);
  v158 = [v131 type];
  v371 = v131;
  if (v158 == 6)
  {
    v159 = v362;
    v323(v362, v322, v62);
    v160 = sub_266266968();
    v161 = sub_266266D78();
    if (os_log_type_enabled(v160, v161))
    {
      v162 = swift_slowAlloc();
      *v162 = 0;
      _os_log_impl(&dword_266219000, v160, v161, "INAddMediaIntentHandler#resolveSearchItem empty media item in privateAddMediaIntent data", v162, 2u);
      MEMORY[0x266780880](v162, -1, -1);
    }

    v129(v159, v62);
    sub_266265F38();
    v163 = v371;
    v164 = [v371 title];
    if (v164)
    {
      v165 = v164;
      sub_266266A58();
      v167 = v166;

      v163 = v371;
    }

    else
    {
      v167 = 0;
    }

    v177 = v325;
    v178 = [v163 artist];
    if (v178)
    {
      v179 = v178;
      sub_266266A58();
      v181 = v180;
    }

    else
    {
      v181 = 0;
    }

    v187 = sub_266266A48();

    if (v167)
    {
      v188 = sub_266266A48();
    }

    else
    {
      v188 = 0;
    }

    if (v181)
    {
      v189 = sub_266266A48();
    }

    else
    {
      v189 = 0;
    }

    v190 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v187 title:v188 type:6 artwork:0 artist:v189];

    v375 = v190;
    LOBYTE(v376) = 0;
    v177(&v375);

    goto LABEL_104;
  }

  if (!v363)
  {
    v182 = v360;
    v323(v360, v322, v62);
    v183 = sub_266266968();
    v184 = sub_266266D68();
    if (os_log_type_enabled(v183, v184))
    {
      v185 = swift_slowAlloc();
      *v185 = 0;
      _os_log_impl(&dword_266219000, v183, v184, "INAddMediaIntentHandler#resolveSearchItem Unexpected empty destination", v185, 2u);
      MEMORY[0x266780880](v185, -1, -1);
    }

    v129(v182, v62);
    v186 = [objc_opt_self() unsupportedForReason_];
    v375 = v186;
    LOBYTE(v376) = 1;
    v325(&v375);

    return;
  }

  v321 = v62;
  v320 = a4;
  v168 = &off_279BCA000;
  v370 = v363;
  if ([v370 mediaDestinationType] == 2)
  {
    v169 = v356;
    sub_266265F18();
    sub_266265EE8();
    v365 = *(v364 + 8);
    (v365)(v169, v366);
    v170 = *(v367 + 104);
    v171 = v357;
    v170(v357, *MEMORY[0x277D555C0], v368);
    sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0], MEMORY[0x277D555E8]);
    sub_266266B78();
    sub_266266B78();
    if (v375 == v373 && v376 == v374)
    {
      v172 = 1;
    }

    else
    {
      v172 = sub_2662670D8();
    }

    v191 = *(v367 + 8);
    v192 = v171;
    v193 = v368;
    v191(v192, v368);
    v191(v361, v193);

    if (v172)
    {
      goto LABEL_73;
    }

    v194 = v339;
    sub_266265F18();
    v195 = v341;
    sub_266265EE8();
    (v365)(v194, v366);
    v196 = v340;
    v197 = v368;
    v170(v340, *MEMORY[0x277D555D0], v368);
    sub_266266B78();
    sub_266266B78();
    if (v375 == v373 && v376 == v374)
    {
      v191(v196, v197);
      v191(v195, v197);

LABEL_73:
      v199 = v355;
      v200 = v321;
      v323(v355, v322, v321);
      v201 = sub_266266968();
      v202 = sub_266266D78();
      if (os_log_type_enabled(v201, v202))
      {
        v203 = swift_slowAlloc();
        *v203 = 0;
        _os_log_impl(&dword_266219000, v201, v202, "INAddMediaIntentHandler#resolveSearchItem adding local item with ulid to playlist.", v203, 2u);
        MEMORY[0x266780880](v203, -1, -1);
      }

      v318(v199, v200);
      sub_266265F38();
      v204 = v371;
      v205 = [v371 title];
      if (v205)
      {
        v206 = v205;
        sub_266266A58();
        v208 = v207;

        v204 = v371;
      }

      else
      {
        v208 = 0;
      }

      v213 = [v204 artist];
      v214 = v325;
      if (v213)
      {
        v215 = v213;
        sub_266266A58();
        v217 = v216;
      }

      else
      {
        v217 = 0;
      }

      v218 = sub_266266A48();

      if (v208)
      {
        v219 = sub_266266A48();
      }

      else
      {
        v219 = 0;
      }

      if (v217)
      {
        v220 = sub_266266A48();
      }

      else
      {
        v220 = 0;
      }

      v221 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v218 title:v219 type:1 artwork:0 artist:v220];

      v375 = v221;
      LOBYTE(v376) = 0;
      v214(&v375);

      goto LABEL_103;
    }

    v198 = sub_2662670D8();
    v191(v196, v197);
    v191(v195, v197);

    v168 = &off_279BCA000;
    if (v198)
    {
      goto LABEL_73;
    }
  }

  if ([v370 v168[236]] == 1)
  {
    v209 = v345;
    sub_266265F18();
    sub_266265EE8();
    v365 = *(v364 + 8);
    (v365)(v209, v366);
    v210 = *(v367 + 104);
    v211 = v346;
    v210(v346, *MEMORY[0x277D555D0], v368);
    sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0], MEMORY[0x277D555E8]);
    sub_266266B78();
    sub_266266B78();
    if (v375 == v373 && v376 == v374)
    {
      v212 = 1;
    }

    else
    {
      v212 = sub_2662670D8();
    }

    v222 = *(v367 + 8);
    v223 = v211;
    v224 = v368;
    v222(v223, v368);
    v222(v358, v224);

    if (v212)
    {
      goto LABEL_99;
    }

    v225 = v336;
    sub_266265F18();
    sub_266265EE8();
    (v365)(v225, v366);
    v226 = v368;
    v210(v347, *MEMORY[0x277D555C0], v368);
    sub_266266B78();
    sub_266266B78();
    if (v375 == v373 && v376 == v374)
    {
      v222(v347, v226);
      v222(v348, v226);

LABEL_97:

LABEL_99:
      v229 = v342;
      v230 = v321;
      v323(v342, v322, v321);
      v231 = sub_266266968();
      v232 = sub_266266D68();
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        *v233 = 0;
        _os_log_impl(&dword_266219000, v231, v232, "INAddMediaIntentHandler#resolveSearchItem content source is .store or .ulid, the item is already in library.", v233, 2u);
        MEMORY[0x266780880](v233, -1, -1);
      }

      v318(v229, v230);
      v234 = [objc_opt_self() unsupportedForReason_];
      v375 = v234;
      LOBYTE(v376) = 1;
      v325(&v375);
LABEL_102:

LABEL_103:
LABEL_104:

      goto LABEL_105;
    }

    v227 = v226;
    v228 = sub_2662670D8();
    v222(v347, v227);
    v222(v348, v227);

    if (v228)
    {
      goto LABEL_99;
    }

    v235 = v330;
    sub_266265F18();
    v236 = v332;
    sub_266265EE8();
    (v365)(v235, v366);
    v237 = v331;
    v238 = v368;
    v210(v331, *MEMORY[0x277D555D8], v368);
    sub_266266B78();
    sub_266266B78();
    if (v375 == v373 && v376 == v374)
    {
      v222(v237, v238);
      v222(v236, v238);

      goto LABEL_97;
    }

    v239 = sub_2662670D8();
    v222(v237, v238);
    v222(v236, v238);

    if (v239)
    {
      goto LABEL_99;
    }
  }

  v240 = v350;
  sub_266265F18();
  sub_266265EE8();
  v241 = *(v364 + 8);
  v364 += 8;
  v365 = v241;
  (v241)(v240, v366);
  v242 = *(v367 + 104);
  v243 = v351;
  v242(v351, *MEMORY[0x277D555C8], v368);
  sub_266248B4C(&unk_280069AE0, MEMORY[0x277D555E0], MEMORY[0x277D555E8]);
  sub_266266B78();
  sub_266266B78();
  if (v375 == v373 && v376 == v374)
  {
    v244 = 1;
  }

  else
  {
    v244 = sub_2662670D8();
  }

  v245 = v368;
  v246 = *(v367 + 8);
  v246(v243, v368);
  v246(v359, v245);

  v247 = v325;
  if (v244)
  {
    goto LABEL_120;
  }

  v248 = v337;
  sub_266265F18();
  sub_266265EE8();
  (v365)(v248, v366);
  v249 = v338;
  v242(v338, *MEMORY[0x277D555D8], v245);
  sub_266266B78();
  sub_266266B78();
  if (v375 == v373 && v376 == v374)
  {
    v246(v249, v245);
    v246(v349, v245);
  }

  else
  {
    v250 = sub_2662670D8();
    v246(v249, v245);
    v246(v349, v245);

    v247 = v325;
    if (v250)
    {
      goto LABEL_120;
    }

    v286 = v333;
    sub_266265F18();
    v287 = v335;
    sub_266265EE8();
    (v365)(v286, v366);
    v288 = v334;
    v242(v334, *MEMORY[0x277D555D0], v245);
    sub_266266B78();
    sub_266266B78();
    if (v375 != v373 || v376 != v374)
    {
      v307 = sub_2662670D8();
      v246(v288, v245);
      v246(v287, v245);

      v247 = v325;
      if ((v307 & 1) == 0)
      {
        v308 = v326;
        v323(v326, v322, v321);
        v309 = sub_266266968();
        v310 = sub_266266D68();
        if (os_log_type_enabled(v309, v310))
        {
          v311 = swift_slowAlloc();
          *v311 = 0;
          _os_log_impl(&dword_266219000, v309, v310, "INAddMediaIntentHandler#resolveSearchItem unexpected content source is not from store.", v311, 2u);
          MEMORY[0x266780880](v311, -1, -1);
        }

        v318(v308, v321);
        v234 = [objc_opt_self() unsupportedForReason_];
        v375 = v234;
        LOBYTE(v376) = 1;
        v247(&v375);
        goto LABEL_102;
      }

      goto LABEL_120;
    }

    v246(v288, v245);
    v246(v287, v245);
  }

  v247 = v325;
LABEL_120:
  v251 = v343;
  v323(v343, v322, v321);
  v252 = v371;
  v253 = sub_266266968();
  v254 = sub_266266D58();

  if (os_log_type_enabled(v253, v254))
  {
    v255 = swift_slowAlloc();
    v256 = swift_slowAlloc();
    *v255 = 138543362;
    *(v255 + 4) = v252;
    *v256 = v252;
    v257 = v252;
    _os_log_impl(&dword_266219000, v253, v254, "INAddMediaIntentHandler#resolveSearchItem Constructing media item to add from item: %{public}@", v255, 0xCu);
    sub_26622858C(v256, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v256, -1, -1);
    MEMORY[0x266780880](v255, -1, -1);
  }

  v258 = v251;
  v259 = v318;
  v318(v258, v321);
  v260 = v344;
  sub_266265F18();
  v261 = v353;
  sub_266265EF8();
  (v365)(v260, v366);
  v262 = v354;
  v263 = (*(v354 + 88))(v261, v319);
  v264 = v352;
  if (v263 == *MEMORY[0x277D55608])
  {
    sub_266265F38();
    v265 = [v252 title];
    if (v265)
    {
      v266 = v265;
      sub_266266A58();
      v268 = v267;
    }

    else
    {
      v268 = 0;
    }

    v278 = [v252 artist];
    if (v278)
    {
      v279 = v278;
      sub_266266A58();
      v281 = v280;
    }

    else
    {
      v281 = 0;
    }

    v282 = sub_266266A48();

    if (v268)
    {
      v283 = sub_266266A48();
    }

    else
    {
      v283 = 0;
    }

    if (v281)
    {
      v284 = sub_266266A48();
    }

    else
    {
      v284 = 0;
    }

    v285 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v282 title:v283 type:2 artwork:0 artist:v284];
LABEL_159:
    v306 = v285;

    v375 = v306;
    LOBYTE(v376) = 0;
    v247(&v375);

LABEL_173:

    return;
  }

  if (v263 == *MEMORY[0x277D55600])
  {
    sub_266265F38();
    v269 = [v252 title];
    if (v269)
    {
      v270 = v269;
      sub_266266A58();
      v272 = v271;
    }

    else
    {
      v272 = 0;
    }

    v302 = [v252 artist];
    if (v302)
    {
      v303 = v302;
      sub_266266A58();
      v305 = v304;
    }

    else
    {
      v305 = 0;
    }

    v282 = sub_266266A48();

    if (v272)
    {
      v283 = sub_266266A48();
    }

    else
    {
      v283 = 0;
    }

    if (v305)
    {
      v284 = sub_266266A48();
    }

    else
    {
      v284 = 0;
    }

    v285 = [objc_allocWithZone(MEMORY[0x277CD3DB8]) initWithIdentifier:v282 title:v283 type:1 artwork:0 artist:v284];
    goto LABEL_159;
  }

  if (v263 == *MEMORY[0x277D55610])
  {
    v273 = v329;
    v323(v329, v322, v321);
    v274 = sub_266266968();
    v275 = sub_266266D48();
    if (os_log_type_enabled(v274, v275))
    {
      v276 = swift_slowAlloc();
      *v276 = 0;
      _os_log_impl(&dword_266219000, v274, v275, "INAddMediaIntentHandler#resolveSearchItem the item is already in library with library scheme result", v276, 2u);
      MEMORY[0x266780880](v276, -1, -1);
    }

    v259(v273, v321);
    v277 = [objc_opt_self() unsupportedForReason_];
    v375 = v277;
    LOBYTE(v376) = 1;
    v247(&v375);

    goto LABEL_173;
  }

  v289 = v321;
  v323(v352, v322, v321);

  v290 = sub_266266968();
  v291 = sub_266266D48();

  if (os_log_type_enabled(v290, v291))
  {
    v292 = swift_slowAlloc();
    v372 = swift_slowAlloc();
    v375 = v372;
    *v292 = 136315138;
    v293 = v327;
    LODWORD(v371) = v291;
    sub_266265F18();
    v294 = v328;
    sub_266265EF8();
    (v365)(v293, v366);
    v295 = sub_266265F48();
    v297 = v296;
    v298 = v319;
    (*(v354 + 8))(v294, v319);
    v299 = sub_26621EAF0(v295, v297, &v375);

    *(v292 + 4) = v299;
    _os_log_impl(&dword_266219000, v290, v371, "INAddMediaIntentHandler#resolveSearchItem unsupported scheme: %s", v292, 0xCu);
    v300 = v372;
    __swift_destroy_boxed_opaque_existential_1Tm(v372);
    MEMORY[0x266780880](v300, -1, -1);
    v301 = v292;
    v262 = v354;
    MEMORY[0x266780880](v301, -1, -1);

    v318(v352, v321);
  }

  else
  {

    v259(v264, v289);
    v298 = v319;
  }

  sub_266228130(0, &unk_280069AC0, 0x277CD3A08);
  v312 = [swift_getObjCClassFromMetadata() unsupported];
  v375 = v312;
  LOBYTE(v376) = 1;
  v247(&v375);

  (*(v262 + 8))(v353, v298);
}

uint64_t sub_266245108(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v21 = a1;
  v22 = a2;
  v6 = sub_266266958();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - v11;
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  v14 = qword_280069538;

  if (v14 != -1)
  {
    swift_once();
  }

  v15 = logObject;
  sub_266266938();
  (*(v7 + 16))(v10, v12, v6);
  v16 = (*(v7 + 80) + 33) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = "addMediaIntentHandlerResolveSearchItem";
  *(v18 + 24) = 38;
  *(v18 + 32) = 2;
  (*(v7 + 32))(v18 + v16, v10, v6);
  v19 = (v18 + v17);
  *v19 = sub_266248E14;
  v19[1] = v13;

  sub_266266F38();
  sub_266266928();

  sub_266242284(v21, v22, sub_266248E18, v18);

  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_2662453C0(uint64_t *a1)
{
  v3 = *(sub_266266958() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  return sub_266241FC0(a1, *(v1 + 16), *(v1 + 24), *(v1 + 32), v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_26624545C(void *a1, uint64_t a2, void (*a3)(id *), uint64_t a4)
{
  v88 = a2;
  v103 = a1;
  v6 = sub_2662665F8();
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v89 = &v87 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = sub_2662669D8();
  v104 = *(v102 - 8);
  v8 = MEMORY[0x28223BE20](v102);
  v95 = &v87 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v97 = &v87 - v11;
  MEMORY[0x28223BE20](v10);
  v105 = &v87 - v12;
  v13 = sub_266266988();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v92 = &v87 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v94 = &v87 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v93 = &v87 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v96 = &v87 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v87 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = &v87 - v26;
  v28 = swift_allocObject();
  v99 = a3;
  *(v28 + 16) = a3;
  *(v28 + 24) = a4;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_2662489A8;
  *(v29 + 24) = v28;
  v100 = v29;
  v30 = qword_280069528;
  v98 = a4;

  v101 = v28;

  if (v30 != -1)
  {
    swift_once();
  }

  v31 = __swift_project_value_buffer(v13, static Logger.default);
  swift_beginAccess();
  v32 = *(v14 + 16);
  v32(v27, v31, v13);
  v33 = sub_266266968();
  v34 = sub_266266D58();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 0;
    _os_log_impl(&dword_266219000, v33, v34, "INAddMediaIntentHandler#resolveMediaDestination", v35, 2u);
    MEMORY[0x266780880](v35, -1, -1);
  }

  v36 = *(v14 + 8);
  v36(v27, v13);
  v37 = [v103 mediaDestination];
  if (!v37)
  {

    v55 = v96;
    v32(v96, v31, v13);
    v56 = sub_266266968();
    v57 = sub_266266D78();
    v58 = os_log_type_enabled(v56, v57);
    v59 = v102;
    if (v58)
    {
      v60 = swift_slowAlloc();
      *v60 = 0;
      _os_log_impl(&dword_266219000, v56, v57, "INAddMediaIntentHandler#resolveMediaDestination missing destination, defaulting to library", v60, 2u);
      MEMORY[0x266780880](v60, -1, -1);
    }

    v36(v55, v13);
    sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v62 = v104;
    v63 = v95;
    (*(v104 + 104))(v95, *MEMORY[0x277D85350], v59);
    v64 = sub_2662669B8();
    (*(v62 + 8))(v63, v59);
    v65 = [ObjCClassFromMetadata successWithResolvedMediaDestination_];

    v106 = v65;
    v99(&v106);
    goto LABEL_27;
  }

  v96 = (v14 + 8);
  v38 = v37;
  sub_2662669C8();

  v32(v25, v31, v13);
  v39 = sub_266266968();
  v40 = sub_266266D58();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v102;
  if (v41)
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_266219000, v39, v40, "INAddMediaIntentHandler#resolveMediaDestination resolving present destination...", v43, 2u);
    MEMORY[0x266780880](v43, -1, -1);
  }

  v36(v25, v13);
  v44 = v104;
  v45 = v97;
  (*(v104 + 16))(v97, v105, v42);
  v46 = (*(v44 + 88))(v45, v42);
  if (v46 != *MEMORY[0x277D85358])
  {
    v66 = v46;
    v67 = *MEMORY[0x277D85350];

    if (v66 != v67)
    {
      v32(v94, v31, v13);
      v74 = sub_266266968();
      v75 = sub_266266D78();
      if (os_log_type_enabled(v74, v75))
      {
        v76 = swift_slowAlloc();
        *v76 = 0;
        _os_log_impl(&dword_266219000, v74, v75, "INAddMediaIntentHandler#resolveMediaDestination defaulting to library, unsupported destination", v76, 2u);
        MEMORY[0x266780880](v76, -1, -1);
      }

      v36(v94, v13);
      sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
      v77 = swift_getObjCClassFromMetadata();
      v78 = v95;
      (*(v44 + 104))(v95, v67, v42);
      v79 = sub_2662669B8();
      v80 = *(v44 + 8);
      v80(v78, v42);
      v81 = [v77 successWithResolvedMediaDestination_];

      v106 = v81;
      v99(&v106);
      v80(v105, v42);

      v80(v97, v42);
      goto LABEL_29;
    }

    v32(v93, v31, v13);
    v68 = sub_266266968();
    v69 = sub_266266D78();
    if (os_log_type_enabled(v68, v69))
    {
      v70 = swift_slowAlloc();
      *v70 = 0;
      _os_log_impl(&dword_266219000, v68, v69, "INAddMediaIntentHandler#resolveMediaDestination success with library", v70, 2u);
      MEMORY[0x266780880](v70, -1, -1);
    }

    v36(v93, v13);
    sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
    v71 = swift_getObjCClassFromMetadata();
    v72 = v105;
    v73 = sub_2662669B8();
    v65 = [v71 successWithResolvedMediaDestination_];

    v106 = v65;
    v99(&v106);
    (*(v44 + 8))(v72, v42);
LABEL_27:

    return;
  }

  (*(v44 + 96))(v45, v42);
  v48 = *v45;
  v47 = *(v45 + 1);
  v49 = HIBYTE(v47) & 0xF;
  if ((v47 & 0x2000000000000000) == 0)
  {
    v49 = v48 & 0xFFFFFFFFFFFFLL;
  }

  if (!v49)
  {

    v32(v92, v31, v13);
    v82 = sub_266266968();
    v83 = sub_266266D78();
    if (os_log_type_enabled(v82, v83))
    {
      v84 = swift_slowAlloc();
      *v84 = 0;
      _os_log_impl(&dword_266219000, v82, v83, "INAddMediaIntentHandler#resolveMediaDestination asking for playlist title", v84, 2u);
      MEMORY[0x266780880](v84, -1, -1);
    }

    v36(v92, v13);
    sub_266228130(0, &qword_280069AD0, 0x277CD3A00);
    v65 = [swift_getObjCClassFromMetadata() needsValue];
    v106 = v65;
    v99(&v106);
    (*(v44 + 8))(v105, v42);
    goto LABEL_27;
  }

  v99 = __swift_project_boxed_opaque_existential_1((v88 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library), *(v88 + OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24));
  v106 = v103;
  v50 = v89;
  v51 = v90;
  v52 = v91;
  (*(v90 + 104))(v89, *MEMORY[0x277D557A8], v91);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  v54 = v53;
  (*(v51 + 8))(v50, v52);
  if (v54)
  {
    sub_266266A78();
  }

  v85 = swift_allocObject();
  v85[2] = v48;
  v85[3] = v47;
  v86 = v100;
  v85[4] = sub_2662489AC;
  v85[5] = v86;

  sub_2662661C8();

  swift_bridgeObjectRelease_n();

  (*(v104 + 8))(v105, v42);
LABEL_29:
}

void sub_266246088(void *a1, char *a2, void (*a3)(void **), uint64_t a4)
{
  v259 = a2;
  v273 = a1;
  v254 = sub_266265F28();
  v253 = *(v254 - 8);
  MEMORY[0x28223BE20](v254);
  v252 = &v235 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2662665F8();
  v258 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v257 = &v235 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_266265F08();
  v260 = *(v9 - 8);
  v261 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v249 = &v235 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v244 = &v235 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v245 = &v235 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v251 = &v235 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v248 = &v235 - v19;
  MEMORY[0x28223BE20](v18);
  v255 = &v235 - v20;
  v267 = sub_2662669D8();
  v269 = *(v267 - 8);
  v21 = MEMORY[0x28223BE20](v267);
  v256 = (&v235 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = MEMORY[0x28223BE20](v21);
  v266 = (&v235 - v24);
  MEMORY[0x28223BE20](v23);
  v268 = &v235 - v25;
  v26 = sub_266266988();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x28223BE20](v26);
  v265 = &v235 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v243 = &v235 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v246 = &v235 - v33;
  v34 = MEMORY[0x28223BE20](v32);
  v247 = &v235 - v35;
  v36 = MEMORY[0x28223BE20](v34);
  v250 = &v235 - v37;
  v38 = MEMORY[0x28223BE20](v36);
  v263 = &v235 - v39;
  v40 = MEMORY[0x28223BE20](v38);
  v262 = &v235 - v41;
  v42 = MEMORY[0x28223BE20](v40);
  v264 = &v235 - v43;
  v44 = MEMORY[0x28223BE20](v42);
  v46 = &v235 - v45;
  MEMORY[0x28223BE20](v44);
  v48 = &v235 - v47;
  v49 = swift_allocObject();
  v271 = a3;
  *(v49 + 16) = a3;
  *(v49 + 24) = a4;
  v50 = swift_allocObject();
  *(v50 + 16) = sub_266248E10;
  *(v50 + 24) = v49;
  v51 = qword_280069528;
  v270 = a4;

  v272 = v49;

  if (v51 != -1)
  {
    swift_once();
  }

  v52 = __swift_project_value_buffer(v26, static Logger.default);
  swift_beginAccess();
  v274 = *(v27 + 16);
  v275 = v52;
  v274(v48, v52, v26);
  v53 = sub_266266968();
  v54 = sub_266266D58();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = v27;
    v56 = v7;
    v57 = v50;
    v58 = swift_slowAlloc();
    *v58 = 0;
    _os_log_impl(&dword_266219000, v53, v54, "INAddMediaIntentHandler#handle", v58, 2u);
    v59 = v58;
    v50 = v57;
    v7 = v56;
    v27 = v55;
    MEMORY[0x266780880](v59, -1, -1);
  }

  v62 = *(v27 + 8);
  v60 = (v27 + 8);
  v61 = v62;
  v62(v48, v26);
  v63 = v273;
  v64 = [v273 mediaItems];
  if (!v64)
  {
    goto LABEL_69;
  }

  v65 = v64;
  sub_266228130(0, &qword_2800697A0, 0x277CD3DB8);
  v66 = sub_266266BB8();

  if (!(v66 >> 62))
  {
    if (*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_8;
    }

LABEL_68:

    goto LABEL_69;
  }

  if (!sub_266267078())
  {
    goto LABEL_68;
  }

LABEL_8:
  v242 = v61;
  v241 = v50;
  if ((v66 & 0xC000000000000001) != 0)
  {
    v67 = MEMORY[0x266780220](0, v66);
  }

  else
  {
    if (!*((v66 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v67 = *(v66 + 32);
  }

  v68 = v67;

  v69 = [v63 mediaDestination];
  if (!v69)
  {

    v61 = v242;
LABEL_69:

    v274(v46, v275, v26);
    v226 = v63;
    v227 = sub_266266968();
    v228 = sub_266266D68();

    if (os_log_type_enabled(v227, v228))
    {
      v229 = swift_slowAlloc();
      v230 = swift_slowAlloc();
      *v229 = 138543362;
      *(v229 + 4) = v226;
      *v230 = v226;
      v231 = v226;
      _os_log_impl(&dword_266219000, v227, v228, "INAddMediaIntentHandler#handle missing expected mediaItem or destination in intent: %{public}@", v229, 0xCu);
      sub_26622858C(v230, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v230, -1, -1);
      MEMORY[0x266780880](v229, -1, -1);
    }

    v61(v46, v26);
    v232 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v233 = sub_266266A48();
    v234 = [v232 initWithActivityType_];

    v108 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v234];
    v276 = v108;
    v271(&v276);
    goto LABEL_72;
  }

  v70 = v268;
  v71 = v69;
  sub_2662669C8();

  v72 = [v68 identifier];
  if (!v72 || (v73 = v72, sub_266266A58(), v73, sub_266265F68(), swift_allocObject(), v74 = v266, (v75 = sub_266265F78()) == 0))
  {

    v96 = v265;
    v274(v265, v275, v26);
    v97 = v68;
    v98 = sub_266266968();
    v99 = sub_266266D68();

    v100 = os_log_type_enabled(v98, v99);
    v101 = v267;
    if (v100)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *v102 = 138543362;
      *(v102 + 4) = v97;
      *v103 = v97;
      v104 = v97;
      _os_log_impl(&dword_266219000, v98, v99, "INAddMediaIntentHandler#handle item missing identifier: %{public}@, or create PlaybackItem failed.", v102, 0xCu);
      sub_26622858C(v103, &qword_280069710, &qword_266267DC0);
      MEMORY[0x266780880](v103, -1, -1);
      MEMORY[0x266780880](v102, -1, -1);
    }

    v242(v96, v26);
    v105 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v106 = sub_266266A48();
    v107 = [v105 initWithActivityType_];

    v108 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v107];
    v276 = v108;
    v271(&v276);

    (*(v269 + 8))(v70, v101);
    goto LABEL_72;
  }

  v265 = v60;
  v239 = v75;
  v76 = v264;
  v274(v264, v275, v26);
  v77 = *(v269 + 16);
  v238 = v269 + 16;
  v237 = v77;
  v77(v74, v70, v267);
  v78 = v68;
  v79 = sub_266266968();
  v80 = sub_266266D78();

  v81 = os_log_type_enabled(v79, v80);
  v240 = v78;
  if (v81)
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    v235 = v83;
    v236 = swift_slowAlloc();
    v276 = v236;
    *v82 = 138543618;
    *(v82 + 4) = v78;
    *v83 = v78;
    *(v82 + 12) = 2080;
    v84 = v78;
    v85 = sub_2662669A8();
    v87 = v86;
    v88 = v74;
    v89 = v267;
    v266 = *(v269 + 8);
    (v266)(v88, v267);
    v90 = sub_26621EAF0(v85, v87, &v276);
    v78 = v240;

    *(v82 + 14) = v90;
    _os_log_impl(&dword_266219000, v79, v80, "INAddMediaIntentHandler#handle item: %{public}@ and destination: %s", v82, 0x16u);
    v91 = v235;
    sub_26622858C(v235, &qword_280069710, &qword_266267DC0);
    MEMORY[0x266780880](v91, -1, -1);
    v92 = v236;
    __swift_destroy_boxed_opaque_existential_1Tm(v236);
    MEMORY[0x266780880](v92, -1, -1);
    MEMORY[0x266780880](v82, -1, -1);

    v93 = v242;
    v242(v264, v26);
    v94 = v89;
    v95 = v269;
  }

  else
  {

    v95 = v269;
    v94 = v267;
    v266 = *(v269 + 8);
    (v266)(v74, v267);
    v93 = v242;
    v242(v76, v26);
  }

  if ([v78 type] != 6)
  {
    v274(v263, v275, v26);
    v121 = sub_266266968();
    v122 = sub_266266D58();
    if (os_log_type_enabled(v121, v122))
    {
      v123 = swift_slowAlloc();
      *v123 = 0;
      _os_log_impl(&dword_266219000, v121, v122, "INAddMediaIntentHandler#handle adding for music...", v123, 2u);
      MEMORY[0x266780880](v123, -1, -1);
    }

    v93(v263, v26);
    v124 = v256;
    v237(v256, v268, v94);
    v125 = (*(v95 + 88))(v124, v94);
    if (v125 == *MEMORY[0x277D85358])
    {
      v262 = 0x8000000266269550;
      v264 = v7;
      (*(v95 + 96))(v124, v94);
      v126 = v124[1];
      v250 = *v124;
      v263 = v126;
      v127 = v251;
      sub_266265F18();
      v128 = v252;
      sub_266265EE8();
      v129 = v261;
      v130 = *(v260 + 8);
      v130(v127, v261);
      v131 = (*(v253 + 88))(v128, v254);
      if (v131 == *MEMORY[0x277D555D0])
      {
        v132 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
        v274 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
        v275 = __swift_project_boxed_opaque_existential_1(&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v132);
        v133 = v249;
        sub_266265F18();
        sub_266265ED8();
        v130(v133, v129);
        v276 = v63;
        v134 = v258;
        v135 = v257;
        v136 = v264;
        (*(v258 + 104))(v257, *MEMORY[0x277D557A8], v264);
        sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
        sub_266266648();
        v138 = v137;
        (*(v134 + 8))(v135, v136);
        if (v138)
        {
          sub_266266A78();
        }

        v191 = v263;
        v192 = v250;
        v193 = swift_allocObject();
        v193[2] = v192;
        v193[3] = v191;
        v193[4] = 0xD00000000000002ALL;
        v193[5] = v262;
        v193[6] = sub_266248D84;
        v193[7] = v241;

        sub_2662661B8();
        goto LABEL_53;
      }

      if (v131 != *MEMORY[0x277D555D8])
      {
        v183 = v264;
        if (v131 == *MEMORY[0x277D555C8])
        {
          v184 = v63;
          v185 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
          v274 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
          v275 = __swift_project_boxed_opaque_existential_1(&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v185);
          v186 = v245;
          sub_266265F18();
          sub_266265ED8();
          v130(v186, v129);
          v276 = v184;
          v187 = v258;
          v188 = v257;
          (*(v258 + 104))(v257, *MEMORY[0x277D557A8], v183);
          sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
          sub_266266648();
          v190 = v189;
          (*(v187 + 8))(v188, v183);
          if (v190)
          {
            sub_266266A78();
          }

          v216 = v262;
          v217 = v263;
          v218 = swift_allocObject();
          v218[2] = v250;
          v218[3] = v217;
          v218[4] = 0xD00000000000002ALL;
          v218[5] = v216;
          v219 = v259;
          v220 = v239;
          v218[6] = v259;
          v218[7] = v220;
          v221 = v241;
          v218[8] = sub_266248D84;
          v218[9] = v221;

          v222 = v219;

          sub_2662661A8();

          goto LABEL_54;
        }

        if (v131 != *MEMORY[0x277D555C0])
        {

          v208 = v243;
          v274(v243, v275, v26);
          v209 = sub_266266968();
          v210 = sub_266266D58();
          if (os_log_type_enabled(v209, v210))
          {
            v211 = swift_slowAlloc();
            *v211 = 0;
            _os_log_impl(&dword_266219000, v209, v210, "INAddMediaIntentHandler#handle unexpected content origin for add intent", v211, 2u);
            MEMORY[0x266780880](v211, -1, -1);
          }

          v242(v208, v26);
          v212 = objc_allocWithZone(MEMORY[0x277CCAE58]);
          v213 = sub_266266A48();
          v214 = [v212 initWithActivityType_];

          v215 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v214];
          v276 = v215;
          v271(&v276);

          (v266)(v268, v94);

          (*(v253 + 8))(v252, v254);
          goto LABEL_55;
        }

        v199 = v63;
        v200 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
        v274 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
        v275 = __swift_project_boxed_opaque_existential_1(&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v200);
        v201 = v244;
        sub_266265F18();
        sub_266265ED8();
        v130(v201, v129);
        v276 = v199;
        v202 = v258;
        v203 = v257;
        (*(v258 + 104))(v257, *MEMORY[0x277D557A8], v183);
        sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
        sub_266266648();
        v205 = v204;
        (*(v202 + 8))(v203, v183);
        if (v205)
        {
          sub_266266A78();
        }

        v223 = v263;
        v224 = v250;
        v225 = swift_allocObject();
        v225[2] = v224;
        v225[3] = v223;
        v225[4] = 0xD00000000000002ALL;
        v225[5] = v262;
        v225[6] = sub_266248D84;
        v225[7] = v241;

        sub_266266198();
LABEL_53:

LABEL_54:

        swift_bridgeObjectRelease_n();

        (v266)(v268, v267);
LABEL_55:

        return;
      }

      v153 = v255;
      sub_266265F18();
      v154 = sub_266265EC8();
      v156 = v155;
      v130(v153, v129);
      v157 = v246;
      v274(v246, v275, v26);

      v158 = sub_266266968();
      v159 = sub_266266D78();

      v160 = os_log_type_enabled(v158, v159);
      v161 = v264;
      v271 = v154;
      if (v160)
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v276 = v163;
        *v162 = 136315138;
        *(v162 + 4) = sub_26621EAF0(v154, v156, &v276);
        _os_log_impl(&dword_266219000, v158, v159, "INAddMediaIntentHandler#handle trying to add item with siriSyncID: %s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v163);
        MEMORY[0x266780880](v163, -1, -1);
        MEMORY[0x266780880](v162, -1, -1);
      }

      v242(v157, v26);
      __swift_project_boxed_opaque_existential_1(&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24]);
      v276 = v273;
      v164 = v258;
      v165 = v257;
      (*(v258 + 104))(v257, *MEMORY[0x277D557A8], v161);
      sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
      sub_266266648();
      v167 = v166;
      (*(v164 + 8))(v165, v161);
      if (v167)
      {
        sub_266266A78();
      }

      v206 = v263;
      v207 = swift_allocObject();
      v207[2] = v250;
      v207[3] = v206;
      v207[4] = 0xD00000000000002ALL;
      v207[5] = v262;
      v207[6] = sub_266248D84;
      v207[7] = v241;

      sub_266266188();

      swift_bridgeObjectRelease_n();
    }

    else
    {
      if (v125 != *MEMORY[0x277D85350])
      {

        v168 = v247;
        v274(v247, v275, v26);
        v169 = sub_266266968();
        v170 = sub_266266D58();
        if (os_log_type_enabled(v169, v170))
        {
          v171 = swift_slowAlloc();
          *v171 = 0;
          _os_log_impl(&dword_266219000, v169, v170, "INAddMediaIntentHandler#handle unexpected destination for add intent", v171, 2u);
          MEMORY[0x266780880](v171, -1, -1);
        }

        v93(v168, v26);
        v172 = objc_allocWithZone(MEMORY[0x277CCAE58]);
        v173 = sub_266266A48();
        v174 = [v172 initWithActivityType_];

        v175 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v174];
        v276 = v175;
        v271(&v276);

        v176 = v266;
        (v266)(v268, v94);

        v176(v256, v94);
        goto LABEL_55;
      }

      v139 = v63;
      v140 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 24];
      v274 = *&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library + 32];
      v275 = __swift_project_boxed_opaque_existential_1(&v259[OBJC_IVAR____TtC17SiriAudioInternal23INAddMediaIntentHandler_library], v140);
      v141 = v248;
      sub_266265F18();
      sub_266265ED8();
      (*(v260 + 8))(v141, v261);
      v276 = v139;
      v142 = v258;
      v143 = v257;
      (*(v258 + 104))(v257, *MEMORY[0x277D557A8], v7);
      sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
      sub_266266648();
      v145 = v144;
      (*(v142 + 8))(v143, v7);
      if (v145)
      {
        sub_266266A78();
      }

      v194 = swift_allocObject();
      v194[2] = 0xD00000000000002ALL;
      v194[3] = 0x8000000266269550;
      v195 = v259;
      v196 = v239;
      v194[4] = v259;
      v194[5] = v196;
      v197 = v241;
      v194[6] = sub_266248D84;
      v194[7] = v197;

      v198 = v195;

      sub_266266158();

      swift_bridgeObjectRelease_n();
    }

    (v266)(v268, v267);

    return;
  }

  v274(v262, v275, v26);
  v109 = sub_266266968();
  v110 = sub_266266D58();
  if (os_log_type_enabled(v109, v110))
  {
    v111 = swift_slowAlloc();
    *v111 = 0;
    _os_log_impl(&dword_266219000, v109, v110, "INAddMediaIntentHandler#handle subscribing to podcast...", v111, 2u);
    MEMORY[0x266780880](v111, -1, -1);
  }

  v93(v262, v26);
  v112 = v255;
  sub_266265F18();
  sub_266265ED8();
  (*(v260 + 8))(v112, v261);
  v113 = objc_allocWithZone(sub_266265C48());
  v114 = sub_266265C38();
  if (!v114)
  {

    v146 = v250;
    v274(v250, v275, v26);
    v147 = sub_266266968();
    v148 = sub_266266D68();
    if (os_log_type_enabled(v147, v148))
    {
      v149 = swift_slowAlloc();
      *v149 = 0;
      _os_log_impl(&dword_266219000, v147, v148, "Failed to get store id", v149, 2u);
      MEMORY[0x266780880](v149, -1, -1);
    }

    v242(v146, v26);
    v150 = objc_allocWithZone(MEMORY[0x277CCAE58]);
    v151 = sub_266266A48();
    v152 = [v150 initWithActivityType_];

    v108 = [objc_allocWithZone(MEMORY[0x277CD39F8]) initWithCode:5 userActivity:v152];
    v276 = v108;
    v271(&v276);

    (v266)(v268, v94);
LABEL_72:

    return;
  }

  v115 = v114;
  v276 = v63;
  v116 = v258;
  v117 = v257;
  (*(v258 + 104))(v257, *MEMORY[0x277D557A8], v7);
  sub_266228130(0, &unk_280069AA8, 0x277CD39F0);
  sub_266266648();
  (*(v116 + 8))(v117, v7);
  v118 = [v240 privateMediaItemValueData];
  if (v118)
  {
    v119 = v118;
    v120 = [v118 sharedUserIdFromPlayableMusicAccount];

    if (v120)
    {
      sub_266266A58();
    }
  }

  v177 = objc_allocWithZone(sub_266265C68());
  v178 = sub_266265C58();
  v179 = swift_allocObject();
  v179[2] = v115;
  v179[3] = v178;
  v180 = v241;
  v179[4] = sub_266248D84;
  v179[5] = v180;
  v181 = v115;
  v182 = v178;
  sub_266265DE8();

  (v266)(v268, v94);
}

uint64_t objectdestroy_34Tm()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_26624845C(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  v5 = *a1;
  v6 = v3;
  return v2(&v5);
}

uint64_t sub_2662484A0(uint64_t a1, char a2)
{
  v3 = *(v2 + 16);
  v5 = a1;
  v6 = a2 & 1;
  return v3(&v5);
}

uint64_t sub_266248514()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266248574()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2662485DC()
{
  v1 = sub_266266038();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_266248748()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_79Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_266248830()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2662488C4()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_266248970()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2662489AC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_2662489E4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_11Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_266248AEC()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_266248B4C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t objectdestroy_5Tm()
{
  v1 = sub_266266958();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 33) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t sub_266248CC4(uint64_t *a1)
{
  v3 = *(sub_266266958() - 8);
  v4 = (*(v3 + 80) + 33) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 32);

  return sub_2662421AC(a1, v5, v6, v8, v1 + v4, v7);
}

uint64_t sub_266248E28(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t INMediaItem.isInternalSignalPresent(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v4 = *(v3 - 1);
      v5 = *v3;

      v6 = [v1 privateMediaItemValueData];
      if (v6 && (v7 = v6, v8 = [v6 internalSignals], v7, v8))
      {
        v9 = sub_266266BB8();

        v14[0] = v4;
        v14[1] = v5;
        MEMORY[0x28223BE20](v10);
        v13[2] = v14;
        v11 = sub_266248E28(sub_266249070, v13, v9);

        if (v11)
        {
          return 1;
        }
      }

      else
      {
      }

      v3 += 2;
      --v2;
    }

    while (v2);
  }

  return 0;
}

uint64_t sub_266249018(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_2662670D8() & 1;
  }
}

uint64_t sub_266249070(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2662670D8() & 1;
  }
}

uint64_t sub_2662490C8()
{
  type metadata accessor for InternalSignalsManager();
  v0 = swift_allocObject();
  sub_266265D38();
  sub_266265D28();
  sub_266265E98();
  swift_allocObject();
  result = sub_266265E78();
  *(v0 + 16) = result;
  off_280069B00 = v0;
  return result;
}

uint64_t static InternalSignalsManager.doesIntent(_:haveInternalSignalWith:)(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_266266988();
  v7 = *(v6 - 1);
  v8 = MEMORY[0x28223BE20](v6);
  v43 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v41 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v41 - v13;
  if (qword_280069530 != -1)
  {
LABEL_20:
    swift_once();
  }

  v42 = v12;
  v46 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v6, static Logger.default);
  swift_beginAccess();
  v44 = *(v7 + 16);
  v44(v14, v15, v6);
  v16 = sub_266266968();
  v17 = sub_266266D78();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v48 = v15;
    v19 = a1;
    v20 = v7;
    v21 = v18;
    *v18 = 0;
    _os_log_impl(&dword_266219000, v16, v17, "InternalSignalsManager#doesIntent#haveInternalSignalWith (lock aquired)", v18, 2u);
    v22 = v21;
    v7 = v20;
    a1 = v19;
    v15 = v48;
    MEMORY[0x266780880](v22, -1, -1);
  }

  v23 = *(v7 + 8);
  v47 = v7 + 8;
  v48 = v6;
  v45 = v23;
  v23(v14, v6);
  v24 = _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0(a1);
  v12 = v24;
  v7 = *(v24 + 16);
  if (v7)
  {
    v25 = 0;
    v6 = (v24 + 40);
    while (1)
    {
      if (v25 >= *(v12 + 2))
      {
        __break(1u);
        goto LABEL_20;
      }

      v14 = *(v6 - 1);
      a1 = *v6;

      if (sub_266266B48())
      {
        break;
      }

      ++v25;
      v6 += 2;
      if (v7 == v25)
      {
        goto LABEL_11;
      }
    }

    v33 = v42;
    v34 = v48;
    v44(v42, v15, v48);

    v35 = sub_266266968();
    v36 = sub_266266D78();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v49 = v38;
      *v37 = 136315138;
      v39 = sub_26621EAF0(v14, a1, &v49);

      *(v37 + 4) = v39;
      _os_log_impl(&dword_266219000, v35, v36, "InternalSignalsManager#doesIntent#haveInternalSignalWith %s is present. (unlock)", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x266780880](v38, -1, -1);
      MEMORY[0x266780880](v37, -1, -1);
    }

    else
    {
    }

    v45(v33, v34);
    v32 = 1;
  }

  else
  {
LABEL_11:

    v26 = v43;
    v27 = v48;
    v44(v43, v15, v48);

    v28 = sub_266266968();
    v29 = sub_266266D78();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v49 = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_26621EAF0(a2, a3, &v49);
      _os_log_impl(&dword_266219000, v28, v29, "InternalSignalsManager#doesIntenthaveInternalSignalWith prefix: %s is not present in intent. (unlock)", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x266780880](v31, -1, -1);
      MEMORY[0x266780880](v30, -1, -1);
    }

    v45(v26, v27);
    v32 = 0;
  }

  sub_266265E88();

  return v32;
}

uint64_t static InternalSignalsManager.getSignal(with:from:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = sub_266266988();
  v5 = *(v4 - 1);
  v6 = MEMORY[0x28223BE20](v4);
  v49 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v47 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v47 - v11;
  if (qword_280069530 != -1)
  {
LABEL_19:
    swift_once();
  }

  v48 = v10;
  v52 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v50 = *(v5 + 16);
  v50(v12, v13, v4);
  v14 = sub_266266968();
  v15 = sub_266266D78();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v54 = v13;
    v17 = a3;
    v18 = v5;
    v19 = v16;
    *v16 = 0;
    _os_log_impl(&dword_266219000, v14, v15, "InternalSignalsManager#getSignal (lock aquired)", v16, 2u);
    v20 = v19;
    v5 = v18;
    a3 = v17;
    v13 = v54;
    MEMORY[0x266780880](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v53 = v5 + 8;
  v54 = v4;
  v51 = v21;
  v21(v12, v4);
  v22 = _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0(a3);
  v10 = v22;
  v5 = *(v22 + 16);
  if (v5)
  {
    v23 = 0;
    v4 = (v22 + 40);
    while (1)
    {
      if (v23 >= *(v10 + 2))
      {
        __break(1u);
        goto LABEL_19;
      }

      v12 = *(v4 - 1);
      a3 = *v4;

      if (sub_266266B48())
      {
        break;
      }

      ++v23;
      v4 += 2;
      if (v5 == v23)
      {
        goto LABEL_11;
      }
    }

    v30 = v48;
    v31 = v54;
    v50(v48, v13, v54);
    v32 = v30;

    v33 = sub_266266968();
    v34 = sub_266266D78();

    v35 = v33;
    if (os_log_type_enabled(v33, v34))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v55 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_26621EAF0(v12, a3, &v55);
      _os_log_impl(&dword_266219000, v35, v34, "InternalSignalsManager#getSignal returning signal: %s. (unlock)", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
      MEMORY[0x266780880](v37, -1, -1);
      MEMORY[0x266780880](v36, -1, -1);
    }

    else
    {
    }

    v51(v32, v31);

    sub_266265E88();

    v38 = sub_266266AC8();
    v39 = sub_26624B1DC(v38, v12, a3);
    v41 = v40;
    v43 = v42;
    v45 = v44;

    v46 = MEMORY[0x26677FC60](v39, v41, v43, v45);

    return v46;
  }

  else
  {
LABEL_11:

    v24 = v49;
    v25 = v54;
    v50(v49, v13, v54);
    v26 = sub_266266968();
    v27 = sub_266266D78();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_266219000, v26, v27, "InternalSignalsManager#getSignal could not find signal. (unlock)", v28, 2u);
      MEMORY[0x266780880](v28, -1, -1);
    }

    v51(v24, v25);

    sub_266265E88();

    return 0;
  }
}

uint64_t static InternalSignalsManager.add(_:to:)(uint64_t a1, unint64_t a2, void *a3)
{
  v41 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v11 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v38 = *(v6 + 16);
  v39 = v11;
  v38(v10, v11, v5);

  v12 = a3;
  v13 = sub_266266968();
  v14 = sub_266266D78();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v37 = v5;
    v16 = a2;
    v17 = v15;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v42 = v19;
    *v17 = 136315394;
    *(v17 + 4) = sub_26621EAF0(v41, v16, &v42);
    *(v17 + 12) = 2112;
    *(v17 + 14) = v12;
    *v18 = v12;
    v20 = v12;
    _os_log_impl(&dword_266219000, v13, v14, "InternalSignalsManager#add signal: %s, to intent: %@...", v17, 0x16u);
    sub_266220BBC(v18);
    MEMORY[0x266780880](v18, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x266780880](v19, -1, -1);
    v21 = v17;
    a2 = v16;
    v5 = v37;
    MEMORY[0x266780880](v21, -1, -1);
  }

  v22 = *(v6 + 8);
  v22(v10, v5);
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    if (qword_280069530 != -1)
    {
      swift_once();
    }

    return sub_26624A108(v41, a2, v24);
  }

  else
  {
    objc_opt_self();
    v26 = swift_dynamicCastObjCClass();
    if (v26)
    {
      v27 = v26;
      if (qword_280069530 != -1)
      {
        swift_once();
      }

      return sub_26624B28C(v41, a2, v27);
    }

    else
    {
      objc_opt_self();
      v28 = swift_dynamicCastObjCClass();
      if (v28)
      {
        v29 = v28;
        if (qword_280069530 != -1)
        {
          swift_once();
        }

        return sub_26624B7EC(v41, a2, v29);
      }

      else
      {
        objc_opt_self();
        v30 = swift_dynamicCastObjCClass();
        if (v30)
        {
          v31 = v30;
          if (qword_280069530 != -1)
          {
            swift_once();
          }

          return sub_26624BD4C(v41, a2, v31);
        }

        else
        {
          v32 = v40;
          v38(v40, v39, v5);
          v33 = sub_266266968();
          v34 = sub_266266D68();
          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            *v35 = 0;
            _os_log_impl(&dword_266219000, v33, v34, "InternalSignalsManager#add Unexpected intent type when adding internal signal", v35, 2u);
            MEMORY[0x266780880](v35, -1, -1);
          }

          return (v22)(v32, v5);
        }
      }
    }
  }
}

uint64_t sub_26624A108(uint64_t a1, uint64_t a2, void *a3)
{
  v49 = a3;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v48 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v48 - v13;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v48 = v9;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v15 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v16 = *(v6 + 16);
  v51 = v6 + 16;
  v52 = v15;
  v50 = v16;
  v16(v14, v15, v5);
  v17 = sub_266266968();
  v18 = sub_266266D78();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = v5;
    v20 = a1;
    v21 = a2;
    v22 = v12;
    v23 = v6;
    v24 = swift_slowAlloc();
    *v24 = 0;
    _os_log_impl(&dword_266219000, v17, v18, "InternalSignalsManager#add#fromPlayMediaIntent (lock aquired)", v24, 2u);
    v25 = v24;
    v6 = v23;
    v12 = v22;
    a2 = v21;
    a1 = v20;
    v5 = v19;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v28 = *(v6 + 8);
  v26 = (v6 + 8);
  v27 = v28;
  v28(v14, v5);
  v29 = [v49 backingStore];
  objc_opt_self();
  v30 = swift_dynamicCastObjCClass();
  if (v30)
  {
    v31 = v30;
    v49 = v26;
    v32 = [v30 privatePlayMediaIntentData];
    if (!v32)
    {
      v33 = [objc_allocWithZone(MEMORY[0x277CD4390]) init];
      [v31 setPrivatePlayMediaIntentData_];
      v32 = v33;
    }

    v34 = [v31 privatePlayMediaIntentData];
    if (v34)
    {
      v35 = v34;
      v36 = sub_266266A48();
      [v35 addInternalSignal_];
    }

    v50(v12, v52, v5);

    v37 = sub_266266968();
    v38 = sub_266266D78();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = a2;
      v42 = v40;
      v53 = v40;
      *v39 = 136315138;
      *(v39 + 4) = sub_26621EAF0(a1, v41, &v53);
      _os_log_impl(&dword_266219000, v37, v38, "InternalSignalsManager#add#fromPlayMediaIntent added %s to playMediaIntent. (unlock)", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v42);
      MEMORY[0x266780880](v42, -1, -1);
      MEMORY[0x266780880](v39, -1, -1);
    }

    v27(v12, v5);

    sub_266265E88();
  }

  else
  {

    v44 = v48;
    v50(v48, v52, v5);
    v45 = sub_266266968();
    v46 = sub_266266D68();
    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&dword_266219000, v45, v46, "InternalSignalsManager#add#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v47, 2u);
      MEMORY[0x266780880](v47, -1, -1);
    }

    v27(v44, v5);
    return sub_266265E88();
  }
}

uint64_t static InternalSignalsManager.remove(_:from:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v36 = a3;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v34 = *(v6 + 16);
  v35 = v12;
  v34(v11, v12, v5);

  v13 = sub_266266968();
  v14 = sub_266266D78();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v33 = v6;
    v17 = a1;
    v18 = v16;
    v37 = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_26621EAF0(v17, a2, &v37);
    _os_log_impl(&dword_266219000, v13, v14, "InternalSignalsManager#remove %s...", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    v19 = v18;
    a1 = v17;
    v6 = v33;
    MEMORY[0x266780880](v19, -1, -1);
    MEMORY[0x266780880](v15, -1, -1);
  }

  v20 = *(v6 + 8);
  v20(v11, v5);
  objc_opt_self();
  v21 = swift_dynamicCastObjCClass();
  if (v21)
  {
    v22 = v21;
    if (qword_280069530 != -1)
    {
      swift_once();
    }

    return sub_26624C2AC(a1, a2, v22);
  }

  else
  {
    objc_opt_self();
    v24 = swift_dynamicCastObjCClass();
    if (v24)
    {
      v25 = v24;
      if (qword_280069530 != -1)
      {
        swift_once();
      }

      return sub_26624C8E0(a1, a2, v25);
    }

    else
    {
      objc_opt_self();
      v26 = swift_dynamicCastObjCClass();
      if (v26)
      {
        v27 = v26;
        if (qword_280069530 != -1)
        {
          swift_once();
        }

        return sub_26624CF14(a1, a2, v27);
      }

      else
      {
        objc_opt_self();
        v28 = swift_dynamicCastObjCClass();
        if (v28)
        {
          v29 = v28;
          if (qword_280069530 != -1)
          {
            swift_once();
          }

          return sub_26624D548(a1, a2, v29);
        }

        else
        {
          v34(v9, v35, v5);
          v30 = sub_266266968();
          v31 = sub_266266D68();
          if (os_log_type_enabled(v30, v31))
          {
            v32 = swift_slowAlloc();
            *v32 = 0;
            _os_log_impl(&dword_266219000, v30, v31, "InternalSignalsManager#remove Unexpected intent type when removing internal signal", v32, 2u);
            MEMORY[0x266780880](v32, -1, -1);
          }

          return (v20)(v9, v5);
        }
      }
    }
  }
}

uint64_t sub_26624AAC4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_26624ABBC(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t InternalSignalsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0(uint64_t a1)
{
  objc_opt_self();
  v1 = swift_dynamicCastObjCClass();
  if (v1)
  {
    v2 = [v1 privatePlayMediaIntentData];
    if (!v2)
    {
      return MEMORY[0x277D84F90];
    }
  }

  else
  {
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      v2 = [v3 privateAddMediaIntentData];
      if (!v2)
      {
        return MEMORY[0x277D84F90];
      }
    }

    else
    {
      objc_opt_self();
      v4 = swift_dynamicCastObjCClass();
      if (v4)
      {
        v2 = [v4 privateUpdateMediaAffinityIntentData];
        if (!v2)
        {
          return MEMORY[0x277D84F90];
        }
      }

      else
      {
        objc_opt_self();
        v5 = swift_dynamicCastObjCClass();
        if (!v5)
        {
          return MEMORY[0x277D84F90];
        }

        v2 = [v5 privateSearchForMediaIntentData];
        if (!v2)
        {
          return MEMORY[0x277D84F90];
        }
      }
    }
  }

  v6 = v2;
  v7 = [v2 internalSignals];

  if (v7)
  {
    v8 = sub_266266BB8();

    return v8;
  }

  return MEMORY[0x277D84F90];
}

BOOL _s17SiriAudioInternal0C14SignalsManagerC10doesIntent_4haveSbSo8INIntentC_SaySSGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v37 - v8;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v41 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v38 = *(v5 + 16);
  v38(v9, v10, v4);
  v11 = sub_266266968();
  v12 = sub_266266D78();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_266219000, v11, v12, "InternalSignalsManager#doesIntent#have (lock aquired)", v13, 2u);
    MEMORY[0x266780880](v13, -1, -1);
  }

  v14 = *(v5 + 8);
  v43 = v5 + 8;
  v44 = v4;
  v39 = v14;
  v14(v9, v4);
  v15 = _s17SiriAudioInternal0C14SignalsManagerC08internalD03forSaySSGSo8INIntentC_tFZ_0(a1);
  v16 = v15;
  v17 = *(a2 + 16);
  v40 = a2;
  v18 = (a2 + 40);
  v19 = v17 + 1;
  do
  {
    if (!--v19)
    {
      break;
    }

    v20 = v18 + 2;
    v21 = *v18;
    v45[0] = *(v18 - 1);
    v45[1] = v21;
    MEMORY[0x28223BE20](v15);
    *(&v37 - 2) = v45;

    v22 = sub_266248E28(sub_26622F998, (&v37 - 4), v16);

    v18 = v20;
  }

  while ((v22 & 1) == 0);

  v23 = v42;
  v24 = v44;
  v38(v42, v10, v44);
  v25 = v40;

  v26 = sub_266266968();
  v27 = sub_266266D78();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v45[0] = v29;
    *v28 = 136315394;
    v30 = MEMORY[0x26677FD90](v25, MEMORY[0x277D837D0]);
    v32 = sub_26621EAF0(v30, v31, v45);

    *(v28 + 4) = v32;
    *(v28 + 12) = 2080;
    if (v19)
    {
      v33 = 0;
    }

    else
    {
      v33 = 7630702;
    }

    if (v19)
    {
      v34 = 0xE000000000000000;
    }

    else
    {
      v34 = 0xE300000000000000;
    }

    v35 = sub_26621EAF0(v33, v34, v45);

    *(v28 + 14) = v35;
    _os_log_impl(&dword_266219000, v26, v27, "InternalSignalsManager#doesIntent signals: %s %s present in intent. (unlock)", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266780880](v29, -1, -1);
    MEMORY[0x266780880](v28, -1, -1);
  }

  v39(v23, v24);

  sub_266265E88();

  return v19 != 0;
}

unint64_t sub_26624B1DC(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = sub_266266AD8();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return sub_266266B68();
}

uint64_t sub_26624B28C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a1;
  v44 = a3;
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v45 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#add#fromAddMediaIntent (lock aquired)", v19, 2u);
    v20 = v19;
    v5 = v18;
    v10 = v17;
    MEMORY[0x266780880](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = [v44 backingStore];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v44 = v21;
    v25 = [v23 privateAddMediaIntentData];
    if (!v25)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD4378]) init];
      [v24 setPrivateAddMediaIntentData_];
      v25 = v26;
    }

    v27 = [v24 privateAddMediaIntentData];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      v30 = sub_266266A48();
      [v29 addInternalSignal_];
    }

    v14(v10, v13, v4);

    v31 = sub_266266968();
    v32 = sub_266266D78();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_26621EAF0(v43, v28, &v46);
      _os_log_impl(&dword_266219000, v31, v32, "InternalSignalsManager#add#fromAddMediaIntent added %s to addMediaIntent. (unlock)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266780880](v34, -1, -1);
      MEMORY[0x266780880](v33, -1, -1);
    }

    v44(v10, v4);

    sub_266265E88();
  }

  else
  {

    v35 = v41;
    v14(v41, v13, v4);
    v36 = sub_266266968();
    v37 = sub_266266D68();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v36, v37, "InternalSignalsManager#add#fromAddMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    v21(v35, v4);

    sub_266265E88();
  }
}

uint64_t sub_26624B7EC(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a1;
  v44 = a3;
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v45 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent (lock aquired)", v19, 2u);
    v20 = v19;
    v5 = v18;
    v10 = v17;
    MEMORY[0x266780880](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = [v44 backingStore];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v44 = v21;
    v25 = [v23 privateUpdateMediaAffinityIntentData];
    if (!v25)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD43A0]) init];
      [v24 setPrivateUpdateMediaAffinityIntentData_];
      v25 = v26;
    }

    v27 = [v24 privateUpdateMediaAffinityIntentData];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      v30 = sub_266266A48();
      [v29 addInternalSignal_];
    }

    v14(v10, v13, v4);

    v31 = sub_266266968();
    v32 = sub_266266D78();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_26621EAF0(v43, v28, &v46);
      _os_log_impl(&dword_266219000, v31, v32, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent added %s to updateMediaIntent. (unlock)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266780880](v34, -1, -1);
      MEMORY[0x266780880](v33, -1, -1);
    }

    v44(v10, v4);

    sub_266265E88();
  }

  else
  {

    v35 = v41;
    v14(v41, v13, v4);
    v36 = sub_266266968();
    v37 = sub_266266D68();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v36, v37, "InternalSignalsManager#add#fromUpdateMediaAffinityIntent Unexpected backing store error while adding internal signal. (unlock)", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    v21(v35, v4);

    sub_266265E88();
  }
}

uint64_t sub_26624BD4C(uint64_t a1, uint64_t a2, void (*a3)(char *, uint64_t))
{
  v43 = a1;
  v44 = a3;
  v4 = sub_266266988();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v41 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v40 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - v11;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v42 = a2;
  v45 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v4, static Logger.default);
  swift_beginAccess();
  v14 = *(v5 + 16);
  v14(v12, v13, v4);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = v10;
    v18 = v5;
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#add#fromSearchMediaIntent (lock aquired)", v19, 2u);
    v20 = v19;
    v5 = v18;
    v10 = v17;
    MEMORY[0x266780880](v20, -1, -1);
  }

  v21 = *(v5 + 8);
  v21(v12, v4);
  v22 = [v44 backingStore];
  objc_opt_self();
  v23 = swift_dynamicCastObjCClass();
  if (v23)
  {
    v24 = v23;
    v44 = v21;
    v25 = [v23 privateSearchForMediaIntentData];
    if (!v25)
    {
      v26 = [objc_allocWithZone(MEMORY[0x277CD4398]) init];
      [v24 setPrivateSearchForMediaIntentData_];
      v25 = v26;
    }

    v27 = [v24 privateSearchForMediaIntentData];
    v28 = v42;
    if (v27)
    {
      v29 = v27;
      v30 = sub_266266A48();
      [v29 addInternalSignal_];
    }

    v14(v10, v13, v4);

    v31 = sub_266266968();
    v32 = sub_266266D78();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v46 = v34;
      *v33 = 136315138;
      *(v33 + 4) = sub_26621EAF0(v43, v28, &v46);
      _os_log_impl(&dword_266219000, v31, v32, "InternalSignalsManager#add#fromSearchMediaIntent added %s to searchMediaIntent. (unlock)", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x266780880](v34, -1, -1);
      MEMORY[0x266780880](v33, -1, -1);
    }

    v44(v10, v4);

    sub_266265E88();
  }

  else
  {

    v35 = v41;
    v14(v41, v13, v4);
    v36 = sub_266266968();
    v37 = sub_266266D68();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_266219000, v36, v37, "InternalSignalsManager#add#fromSearchMediaIntent Unexpected backing store error while adding internal signal. (unlock)", v38, 2u);
      MEMORY[0x266780880](v38, -1, -1);
    }

    v21(v35, v4);

    sub_266265E88();
  }
}

uint64_t sub_26624C2AC(uint64_t a1, unint64_t a2, void *a3)
{
  v58 = a1;
  v5 = sub_266266988();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v54 = &v53 - v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - v12;
  if (qword_280069530 != -1)
  {
    swift_once();
  }

  v57 = off_280069B00;

  sub_266265E68();

  if (qword_280069528 != -1)
  {
    swift_once();
  }

  v14 = __swift_project_value_buffer(v5, static Logger.default);
  swift_beginAccess();
  v55 = *(v6 + 16);
  v55(v13, v14, v5);
  v15 = sub_266266968();
  v16 = sub_266266D78();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v56 = (v6 + 16);
    v18 = a2;
    v19 = v9;
    v20 = v5;
    v21 = v14;
    v22 = v6;
    v23 = a3;
    v24 = v17;
    *v17 = 0;
    _os_log_impl(&dword_266219000, v15, v16, "InternalSignalsManager#remove#fromPlayMediaIntent (lock aquired)", v17, 2u);
    v25 = v24;
    a3 = v23;
    v6 = v22;
    v14 = v21;
    v5 = v20;
    v9 = v19;
    a2 = v18;
    MEMORY[0x266780880](v25, -1, -1);
  }

  v56 = *(v6 + 8);
  v56(v13, v5);
  v26 = [a3 backingStore];
  objc_opt_self();
  v27 = swift_dynamicCastObjCClass();
  if (v27)
  {
    v53 = v27;
    v28 = [v27 privatePlayMediaIntentData];
    if (v28)
    {
      v29 = v28;
      v30 = [v28 internalSignals];

      if (v30)
      {
        v31 = sub_266266BB8();

        v32 = *(v31 + 16);
        v33 = v58;
        if (v32)
        {
          v34 = 0;
          v35 = (v31 + 40);
          while (*(v35 - 1) != v33 || *v35 != a2)
          {
            v37 = sub_2662670D8();
            v33 = v58;
            if (v37)
            {
              break;
            }

            ++v34;
            v35 += 2;
            if (v32 == v34)
            {
              goto LABEL_18;
            }
          }

          v41 = [v53 privatePlayMediaIntentData];
          if (v41)
          {
            v42 = v41;
            v43 = [v41 internalSignals];
            if (v43)
            {
              v44 = v43;
              v45 = sub_266266BB8();

              v59 = v45;
              sub_26624AAC4(v34);

              if (v59)
              {
                v46 = sub_266266B98();
              }

              else
              {
                v46 = 0;
              }

              [v42 setInternalSignals_];
            }

            else
            {
              [v42 setInternalSignals_];
            }
          }
        }

        else
        {
LABEL_18:
        }
      }
    }

    v47 = v54;
    v55(v54, v14, v5);

    v48 = sub_266266968();
    v49 = sub_266266D78();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v59 = v51;
      *v50 = 136315138;
      *(v50 + 4) = sub_26621EAF0(v58, a2, &v59);
      _os_log_impl(&dword_266219000, v48, v49, "InternalSignalsManager#remove#fromPlayMediaIntent removed %s from playMediaIntent. (unlock)", v50, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v51);
      MEMORY[0x266780880](v51, -1, -1);
      MEMORY[0x266780880](v50, -1, -1);
    }

    v56(v47, v5);

    sub_266265E88();
  }

  else
  {

    v55(v9, v14, v5);
    v38 = sub_266266968();
    v39 = sub_266266D68();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_266219000, v38, v39, "InternalSignalsManager#remove#fromPlayMediaIntent Unexpected backing store error adding internal signal. (unlock)", v40, 2u);
      MEMORY[0x266780880](v40, -1, -1);
    }

    v56(v9, v5);

    sub_266265E88();
  }
}