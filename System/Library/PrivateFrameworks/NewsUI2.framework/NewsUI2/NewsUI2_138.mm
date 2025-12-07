uint64_t sub_2196134F4@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v26 = a2;
  v3 = sub_219BDB954();
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF2124();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = a1[1];
  v22 = *a1;
  v7 = v22;
  v19 = a1[2];
  v9 = v19;
  v10 = MEMORY[0x277D84560];
  sub_2186E4BD4(0, &unk_280E8B6E0, sub_219083B24, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = v7;
  v23 = inited + 32;
  *(inited + 40) = v8;
  v20 = v8;
  sub_2186E4BD4(0, &qword_280E8B860, MEMORY[0x277D333A8], v10);
  v21 = 2 * *(*(sub_219BF14C4() - 8) + 72);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_219C0B8C0;

  v13 = [v9 name];
  sub_219BF5414();

  sub_219BF20F4();

  sub_219BF14A4();
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  sub_219BF20F4();

  sub_219BF14A4();
  sub_21907A9D8(v22, v20, v19);
  sub_219BF20E4();
  (*(v24 + 8))(v5, v25);
  sub_219BF14A4();
  *(inited + 48) = v12;
  v16 = sub_2194B11C0(inited);
  swift_setDeallocating();
  result = sub_219618B64(v23, sub_219083B24);
  *v26 = v16;
  return result;
}

uint64_t sub_219613910()
{
  v1 = OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_config;
  sub_2186E0170(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_219618B64(v0 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_formatService));
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_personalizationService));
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_headlineService));
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_sportsGraphManager));

  return v0;
}

uint64_t sub_219613A18()
{
  sub_219613910();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MissedStoriesTodayFeedGroupEmitter(uint64_t a1)
{
  result = qword_280E9FC80;
  if (!qword_280E9FC80)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219613AC4(uint64_t a1)
{
  sub_2186E0170(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for MissedStoriesTodayFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_219613BC0(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21960FC40(a1, a2);
}

uint64_t sub_219613C6C()
{
  v1 = *(*v0 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_name);

  return v1;
}

uint64_t sub_219613CAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_config;
  sub_2186E0170(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219613D40@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
  a1[4] = sub_219618B1C(&qword_280EA5F80, type metadata accessor for MissedStoriesTodayFeedGroupKnobs, &unk_219CB98CC);
  a1[5] = sub_219618B1C(&qword_280EA5F88, type metadata accessor for MissedStoriesTodayFeedGroupKnobs, &unk_219CB98F4);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2196189CC(v3 + v4, boxed_opaque_existential_1, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
}

uint64_t sub_219613E0C()
{
  type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);

  return sub_219BEF884();
}

uint64_t sub_219613F14@<X0>(uint64_t *a2@<X8>)
{
  sub_2186E4BD4(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E0170(0);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219618B64(inited + 32, sub_2188317B0);
  sub_2186E4BD4(0, &qword_280EE76D0, type metadata accessor for MissedStoriesTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_219618BC4();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2196140B4(uint64_t a1)
{
  sub_219618B1C(&qword_280E9FCA8, type metadata accessor for MissedStoriesTodayFeedGroupEmitter, &unk_219C930D8);

  return sub_219BE2324();
}

uint64_t sub_219614240(uint64_t a1, uint64_t a2)
{
  v39 = sub_219BDBD34();
  v3 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v38 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEFBB4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196146F0(0, &qword_280E91890, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D32310]);
  v10 = v9;
  v40 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  v13 = type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_contentConfig;
  v17 = type metadata accessor for TodayConfig(0);
  sub_2196189CC(*(v16 + *(v17 + 20)) + OBJC_IVAR____TtC7NewsUI219TodayFeedGroupKnobs_missedStoriesKnobs, v15, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
  sub_2189AE994(0);
  v30 = v15;
  result = sub_219BEE954();
  v37 = *(result + 16);
  if (v37)
  {
    v19 = v5;
    v20 = 0;
    v36 = a2 + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context;
    v35 = v40 + 16;
    v32 = (v3 + 8);
    v33 = (v40 + 8);
    v21 = (v6 + 88);
    v31 = *MEMORY[0x277D328E8];
    v34 = (v6 + 8);
    while (v20 < *(result + 16))
    {
      v22 = v8;
      v23 = v19;
      v24 = result;
      (*(v40 + 16))(v12, result + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v20, v10);
      result = [*(v36 + 8) startDate];
      if (!result)
      {
        goto LABEL_11;
      }

      v25 = result;
      v26 = v38;
      sub_219BDBCA4();

      sub_219BEEC34();
      (*v33)(v12, v10);
      v27 = v26;
      v8 = v22;
      (*v32)(v27, v39);
      v19 = v23;
      v28 = (*v21)(v22, v23);
      if (v28 != v31)
      {
        sub_219618B64(v30, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);

        (*v34)(v22, v23);
        return 0;
      }

      ++v20;
      (*v34)(v22, v23);
      result = v24;
      if (v37 == v20)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_11:
    __break(1u);
  }

  else
  {
LABEL_7:

    sub_219618B64(v30, type metadata accessor for MissedStoriesTodayFeedGroupKnobs);
    return 1;
  }

  return result;
}

void sub_2196146F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

uint64_t sub_219614770(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[31] = a5;
  v6[32] = v5;
  v6[29] = a3;
  v6[30] = a4;
  v6[27] = a1;
  v6[28] = a2;
  sub_219083C3C(0);
  v6[33] = v7;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  sub_218C3EEF4(0);
  v6[36] = v8;
  v6[37] = *(v8 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v6[40] = swift_task_alloc();
  v6[41] = swift_task_alloc();
  v6[42] = swift_task_alloc();
  v9 = MEMORY[0x277D83D88];
  sub_2186E4BD4(0, qword_280E9C040, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result, MEMORY[0x277D83D88]);
  v6[43] = swift_task_alloc();
  v10 = type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result(0);
  v6[44] = v10;
  v6[45] = *(v10 - 8);
  v6[46] = swift_task_alloc();
  v11 = sub_219BEFF54();
  v6[47] = v11;
  v6[48] = *(v11 - 8);
  v6[49] = swift_task_alloc();
  v6[50] = swift_task_alloc();
  v12 = sub_219BF0BD4();
  v6[51] = v12;
  v6[52] = *(v12 - 8);
  v6[53] = swift_task_alloc();
  v6[54] = swift_task_alloc();
  sub_2186E4BD4(0, &unk_280E90FA0, MEMORY[0x277D32C48], v9);
  v6[55] = swift_task_alloc();
  v13 = sub_219BF02F4();
  v6[56] = v13;
  v6[57] = *(v13 - 8);
  v6[58] = swift_task_alloc();
  v14 = sub_219BEE6F4();
  v6[59] = v14;
  v6[60] = *(v14 - 8);
  v6[61] = swift_task_alloc();
  v15 = type metadata accessor for ForYouTodayFeedGroupClusteringKnobs(0);
  v6[62] = v15;
  v6[63] = *(v15 - 8);
  v6[64] = swift_task_alloc();
  sub_2186E4BD4(0, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v9);
  v6[65] = swift_task_alloc();
  v6[66] = swift_task_alloc();
  v6[67] = swift_task_alloc();
  v6[68] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219614C00, 0, 0);
}

uint64_t sub_219614C00()
{
  v1 = v0[68];
  v2 = v0[67];
  v3 = v0[62];
  v4 = v0[63];
  sub_219612090(v1);
  sub_219618A9C(v1, v2, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v72 = *(v4 + 48);
  v5 = v72(v2, 1, v3);
  v6 = v0[67];
  if (v5 == 1)
  {
    sub_218745B2C(v6, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v7 = qword_280F616D8;
    v8 = sub_219BF6214();
    sub_219BE5314("Missed Stories emitter selecting headlines without clustering knobs", 67, 2, &dword_2186C1000, v7, v8, MEMORY[0x277D84F90]);
  }

  else
  {
    sub_219618A34(v6, v0[64], type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v9 = v0[64];
    v7 = qword_280F616D8;
    sub_2186F20D4(0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_219C09BA0;
    v0[19] = 0;
    v0[20] = 0xE000000000000000;
    sub_219BF7484();
    v11 = v0[19];
    v12 = v0[20];
    *(v10 + 56) = MEMORY[0x277D837D0];
    *(v10 + 64) = sub_2186FC3BC();
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    v13 = sub_219BF6214();
    sub_219BE5314("Missed Stories emitter selecting headlines with clustering knobs %{public}@", 75, 2, &dword_2186C1000, v7, v13, v10);

    sub_219618B64(v9, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  }

  v70 = v7;
  v0[69] = v7;
  v14 = v0[68];
  v15 = v0[66];
  v16 = v0[61];
  v17 = v0[62];
  v19 = v0[59];
  v18 = v0[60];
  sub_218718690(v0[32] + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_personalizationService, (v0 + 2));
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v20 = *MEMORY[0x277D329D0];
  v21 = sub_219BEFBD4();
  (*(*(v21 - 8) + 104))(v16, v20, v21);
  (*(v18 + 104))(v16, *MEMORY[0x277D320E8], v19);
  type metadata accessor for MissedStoriesTodayFeedGroupKnobs(0);
  sub_219618A9C(v14, v15, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v22 = v72(v15, 1, v17);
  v23 = v0[66];
  v24 = v0[57];
  v26 = v0[55];
  v25 = v0[56];
  if (v22 == 1)
  {
    sub_218745B2C(v0[66], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
    (*(v24 + 56))(v26, 1, 1, v25);
    sub_219BF02E4();
    if ((*(v24 + 48))(v26, 1, v25) != 1)
    {
      sub_218745B2C(v0[55], &unk_280E90FA0, MEMORY[0x277D32C48], MEMORY[0x277D83D88], sub_2186E4BD4);
    }
  }

  else
  {
    v27 = v0[54];
    v69 = v0[58];
    v28 = v0[51];
    v29 = v0[52];
    sub_219BEF134();
    sub_2193A6790(v27, v26);
    (*(v29 + 8))(v27, v28);
    sub_219618B64(v23, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
    (*(v24 + 56))(v26, 0, 1, v25);
    (*(v24 + 32))(v69, v26, v25);
  }

  v30 = sub_219BEFFD4();
  v0[70] = v30;
  v31 = v0[68];
  v71 = v30;
  v32 = v0[65];
  v34 = v0[61];
  v33 = v0[62];
  v36 = v0[59];
  v35 = v0[60];
  (*(v0[57] + 8))(v0[58], v0[56]);
  (*(v35 + 8))(v34, v36);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_219618A9C(v31, v32, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  v37 = v72(v32, 1, v33);
  v38 = v0[65];
  if (v37 == 1)
  {
    sub_218745B2C(v0[65], qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
    v39 = v70;
LABEL_19:
    if (qword_280E8D7A0 != -1)
    {
      swift_once();
    }

    v53 = v0[68];
    v54 = sub_219BF6214();
    sub_219BE5314("Local in Missed Stories is disabled", 35, 2, &dword_2186C1000, v39, v54, MEMORY[0x277D84F90]);
    sub_218745B2C(v53, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
    goto LABEL_22;
  }

  v40 = v0[49];
  v41 = v0[50];
  v42 = v0[47];
  v43 = v0[48];
  (*(v43 + 16))(v40, v38 + *(v0[62] + 20), v42);
  sub_219618B64(v38, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs);
  (*(v43 + 32))(v41, v40, v42);
  v39 = v70;
  if ((sub_219BEFF44() & 1) == 0)
  {
    (*(v0[48] + 8))(v0[50], v0[47]);
    goto LABEL_19;
  }

  if (qword_280E8D7A0 != -1)
  {
    swift_once();
  }

  v44 = sub_219BF6214();
  sub_219BE5314("Local in Missed Stories is enabled", 34, 2, &dword_2186C1000, v70, v44, MEMORY[0x277D84F90]);
  sub_219BEF164();
  v57 = v0[30];
  v0[71] = v0[21];
  if (!v57)
  {
    sub_219618978();
    v61 = swift_allocError();
    swift_willThrow();
    v62 = v61;

    v45 = v0[69];
    v46 = v0[68];
    v73 = v0[50];
    v47 = v0[47];
    v48 = v0[48];
    v49 = sub_219BF61F4();
    sub_2186F20D4(0);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_219C09BA0;
    v0[15] = 0;
    v0[16] = 0xE000000000000000;
    v0[22] = v62;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v52 = v0[15];
    v51 = v0[16];
    *(v50 + 56) = MEMORY[0x277D837D0];
    *(v50 + 64) = sub_2186FC3BC();
    *(v50 + 32) = v52;
    *(v50 + 40) = v51;
    sub_219BE5314("Local in Missed Stories selection failed with error %{public}@, not injecting local headline", 92, 2, &dword_2186C1000, v45, v49, v50);

    sub_218745B2C(v46, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
    (*(v48 + 8))(v73, v47);
    v71 = v0[70];
LABEL_22:

    v55 = v0[1];

    return v55(v71, 0, 0, 0);
  }

  v58 = v0[31];
  if (v58 >> 62)
  {
    v63 = sub_219BF7214();
    v0[72] = v63;
    if (v63)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  v59 = *((v58 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v0[72] = v59;
  if (!v59)
  {
LABEL_33:
    v64 = v0[68];
    v65 = v0[50];
    v67 = v0[47];
    v66 = v0[48];
    swift_unknownObjectRetain();
    v68 = sub_219BF6214();
    sub_219BE5314("Local in Missed Stories found no local headlines to choose from", 63, 2, &dword_2186C1000, v70, v68, MEMORY[0x277D84F90]);

    swift_unknownObjectRelease();
    sub_218745B2C(v64, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
    (*(v66 + 8))(v65, v67);
    goto LABEL_22;
  }

LABEL_28:
  __swift_project_boxed_opaque_existential_1((v0[32] + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_sportsGraphManager), *(v0[32] + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_sportsGraphManager + 24));
  swift_unknownObjectRetain();

  v0[73] = sub_219BF4434();
  v60 = swift_task_alloc();
  v0[74] = v60;
  *v60 = v0;
  v60[1] = sub_219615A48;

  return MEMORY[0x2821D23D8](v0 + 23);
}

uint64_t sub_219615A48()
{
  *(*v1 + 600) = v0;

  if (v0)
  {

    v2 = sub_219617634;
  }

  else
  {
    v2 = sub_219615B8C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_219615B8C()
{
  v238 = v1;
  v2 = v1[31];
  v211 = sub_219612B9C(v1[28], v1[71]);
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  v214 = xmmword_219C09BA0;
  *(v3 + 16) = xmmword_219C09BA0;
  v217 = v1;
  if (v2 >> 62)
  {
    v4 = sub_219BF7214();
  }

  else
  {
    v4 = *((v1[31] & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x277D83C10];
  *(v3 + 56) = MEMORY[0x277D83B88];
  *(v3 + 64) = v5;
  *(v3 + 32) = v4;
  sub_219BF6214();
  sub_219BE5314("Local in Missed Stories will try to select a local headline from %lu items", v207);

  sub_219BEF0B4();
  v6 = *(v1[24] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  if (([v6 respondsToSelector_] & 1) == 0)
  {
    goto LABEL_137;
  }

  v7 = [v6 deprecatedSportsTopicTagIds];
  swift_unknownObjectRelease();
  if (v7)
  {
    sub_219BF5924();
  }

  v0 = v1;
  v8 = v1[32];
  sub_219BEF134();
  v9 = *(v8 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_cloudContext);
  v228 = [v9 paidAccessChecker];
  if (!v228)
  {
LABEL_138:
    __break(1u);
    goto LABEL_139;
  }

  v10 = v217[29];
  v11 = [objc_msgSend(v9 appConfigurationManager)];
  swift_unknownObjectRelease();
  if (([v11 respondsToSelector_] & 1) == 0)
  {
LABEL_139:

    __break(1u);
    return;
  }

  v12 = [v11 localInForYouTopicTagAllowList];
  swift_unknownObjectRelease();
  if (v12)
  {
    sub_2186DEFE0(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    v209 = sub_219BF5214();
  }

  else
  {
    v209 = sub_2194B11A4(MEMORY[0x277D84F90]);
  }

  v13 = v217[75];
  v14 = v217[30];
  v15 = sub_219BEFED4();
  v16 = [v14 identifier];
  v17 = sub_219BF5414();
  v19 = v18;

  v217[17] = v17;
  v217[18] = v19;
  v20 = swift_task_alloc();
  *(v20 + 16) = v217 + 17;
  LOBYTE(v17) = sub_2186D128C(sub_2186D1338, v20, v15);
  v210 = v13;

  if ((v17 & 1) == 0)
  {
    v41 = v4;
    if (qword_280E8D850 != -1)
    {
LABEL_132:
      swift_once();
    }

    v0 = v217;
    v233 = v217[53];
    v42 = v217[50];
    v215 = v217[37];
    v216 = v217[36];
    v43 = v217[30];
    v44 = v217[31];
    v45 = qword_280F61740;
    v46 = swift_allocObject();
    *(v46 + 16) = xmmword_219C09EC0;
    v47 = [v43 identifier];
    v48 = sub_219BF5414();
    v50 = v49;

    *(v46 + 56) = MEMORY[0x277D837D0];
    v51 = sub_2186FC3BC();
    *(v46 + 32) = v48;
    *(v46 + 40) = v50;
    *(v46 + 96) = MEMORY[0x277D83B88];
    *(v46 + 104) = MEMORY[0x277D83C10];
    v212 = v51;
    *(v46 + 64) = v51;
    *(v46 + 72) = v41;
    v52 = sub_219BF6214();
    v213 = v45;
    sub_219BE5314("See For You local news enabled, attempting to select local headline from %{public}@ with %lu headlines", 102, 2, &dword_2186C1000, v45, v52, v46);

    v208 = sub_219726870(v42, v233, v43);
    v53 = 0;
    v222 = v44 & 0xFFFFFFFFFFFFFF8;
    v226 = v44 & 0xC000000000000001;
    v218 = v44 + 32;
    v54 = MEMORY[0x277D84F90];
    v55 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    while (1)
    {
      if (v226)
      {
        v62 = MEMORY[0x21CECE0F0](v53, v0[31]);
        v61 = MEMORY[0x277D837D0];
        v63 = __OFADD__(v53++, 1);
        if (v63)
        {
          goto LABEL_127;
        }
      }

      else
      {
        v61 = MEMORY[0x277D837D0];
        if (v53 >= *(v222 + 16))
        {
          goto LABEL_128;
        }

        v62 = *(v218 + 8 * v53);
        v63 = __OFADD__(v53++, 1);
        if (v63)
        {
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
          goto LABEL_132;
        }
      }

      v64 = [v62 isPaid];
      if ([v62 respondsToSelector_])
      {
        v65 = [v62 v55[415]];
      }

      else
      {
        v65 = 0;
      }

      v234 = v54;
      v66 = [v62 publisherID];
      if (v66)
      {
        v67 = v66;
        v68 = sub_219BF5414();
        v70 = v69;

        if (!v64)
        {
          goto LABEL_43;
        }
      }

      else
      {
        v68 = 0;
        v70 = 0;
        if (!v64)
        {
LABEL_43:
          if ((v65 & 1) == 0)
          {

LABEL_72:
            v97 = v0[41];
            v96 = v0[42];
            v98 = v0[29];
            *v97 = v62;
            v99 = v62;
            v100 = [v98 objectForKey_];
            sub_219BEDBD4();

            sub_219618A34(v97, v96, sub_218C3EEF4);
            v54 = v234;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v54 = sub_2191F9C2C(0, v234[2] + 1, 1, v234);
            }

            v102 = v54[2];
            v101 = v54[3];
            v41 = v102 + 1;
            if (v102 >= v101 >> 1)
            {
              v54 = sub_2191F9C2C((v101 > 1), v102 + 1, 1, v54);
            }

            v103 = v0[42];
            v54[2] = v41;
            sub_219618A34(v103, v54 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v102, sub_218C3EEF4);
            v55 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
            goto LABEL_20;
          }

          goto LABEL_44;
        }
      }

      v71 = [v228 purchaseProvider];
      if (v70)
      {
        v72 = [v71 purchasedTagIDs];
        v73 = sub_219BF5D44();

        if (*(v73 + 16))
        {
          sub_219BF7AA4();
          sub_219BF5524();
          v74 = sub_219BF7AE4();
          v75 = -1 << *(v73 + 32);
          v76 = v74 & ~v75;
          if ((*(v73 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76))
          {
            v77 = ~v75;
            while (1)
            {
              v78 = (*(v73 + 48) + 16 * v76);
              v79 = *v78 == v68 && v70 == v78[1];
              if (v79 || (sub_219BF78F4() & 1) != 0)
              {
                break;
              }

              v76 = (v76 + 1) & v77;
              if (((*(v73 + 56 + ((v76 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v76) & 1) == 0)
              {
                goto LABEL_39;
              }
            }

            swift_unknownObjectRelease();

            v0 = v217;
            goto LABEL_72;
          }
        }

LABEL_39:

        v0 = v217;
        v61 = MEMORY[0x277D837D0];
        v55 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      }

      swift_unknownObjectRelease();
      if (!v65)
      {
LABEL_64:

        goto LABEL_65;
      }

LABEL_44:
      if (!v70)
      {
        goto LABEL_65;
      }

      v80 = [objc_msgSend(v228 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      if (objc_getAssociatedObject(v80, v80 + 1))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v236 = 0u;
        v237 = 0u;
      }

      v81 = v236;
      *(v0 + 9) = v237;
      *(v0 + 7) = v81;
      if (!v0[10])
      {
        sub_218745B2C((v0 + 7), &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DEFE0);
LABEL_54:
        v82 = 0;
        v84 = 0;
        goto LABEL_55;
      }

      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_54;
      }

      v82 = v0[26];
      v83 = [v82 integerValue];
      if (v83 == -1)
      {

        v61 = MEMORY[0x277D837D0];
        goto LABEL_71;
      }

      v84 = v83;
LABEL_55:
      if (objc_getAssociatedObject(v80, ~v84))
      {
        sub_219BF70B4();
        swift_unknownObjectRelease();
      }

      else
      {
        v236 = 0u;
        v237 = 0u;
      }

      v85 = v236;
      *(v0 + 13) = v237;
      *(v0 + 11) = v85;
      if (!v0[14])
      {
        sub_218745B2C((v0 + 11), &qword_280E8B4F0, MEMORY[0x277D84F70] + 8, MEMORY[0x277D83D88], sub_2186DEFE0);
LABEL_63:

        v61 = MEMORY[0x277D837D0];
        if ((v84 & 1) == 0)
        {
          goto LABEL_64;
        }

        goto LABEL_71;
      }

      sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_63;
      }

      v86 = v0[25];
      v87 = [v86 integerValue];

      v88 = v87 ^ v84;
      v0 = v217;
      v61 = MEMORY[0x277D837D0];
      if ((v88 & 1) == 0)
      {
        goto LABEL_64;
      }

LABEL_71:
      v93 = [objc_msgSend(v228 bundleSubscriptionProvider)];
      swift_unknownObjectRelease();
      v94 = [v93 bundleChannelIDs];

      v95 = sub_219BF53D4();
      LOBYTE(v93) = [v94 containsObject_];

      if (v93)
      {
        goto LABEL_72;
      }

LABEL_65:
      if ([v62 hasSourceChannelID])
      {
        v89 = [objc_msgSend(v228 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        v90 = [v62 sourceChannelID];
        if (!v90)
        {
          goto LABEL_136;
        }

        v91 = v90;
        v92 = [v89 containsTagID_];

        if (v92)
        {
          goto LABEL_72;
        }
      }

      v41 = swift_allocObject();
      *(v41 + 16) = v214;
      v56 = [v62 identifier];
      v57 = sub_219BF5414();
      v59 = v58;

      *(v41 + 56) = v61;
      *(v41 + 64) = v212;
      *(v41 + 32) = v57;
      *(v41 + 40) = v59;
      v60 = sub_219BF6214();
      sub_219BE5314("Ignoring local headline %{public}@ because it is a non-News+ headline the user doesn't have access to it", 104, 2, &dword_2186C1000, v213, v60, v41);

      v54 = v234;
LABEL_20:
      if (v53 == v0[72])
      {
        *&v236 = v54;

        sub_21907E9D0(&v236, v208);
        if (v210)
        {
          v104 = v0[29];

          return;
        }

        v105 = v0[70];
        v41 = v0[53];
        v106 = v0[50];
        v107 = v0[31];
        swift_bridgeObjectRelease_n();

        v227 = v236;
        v235 = sub_219726F4C(v106, v41, v105, v107);
        v108 = *(v105 + 16);
        if (v108)
        {
          v109 = 0;
          v110 = v0[33];
          v111 = v108 - 1;
          v112 = MEMORY[0x277D84F90];
LABEL_86:
          v113 = v109;
          while (v113 < *(v105 + 16))
          {
            v114 = v0[70];
            v41 = v0[35];
            v115 = sub_219BEDC04();
            v116 = *(v115 - 8);
            v109 = v113 + 1;
            v117 = *(v116 + 16);
            v118 = v114 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v113;
            v119 = *(v110 + 48);
            *v41 = v113;
            v117(v41 + v119, v118, v115);
            if (v235 != v113)
            {
              v223 = v111;
              v120 = v0[35];
              v219 = sub_219BEDBA4();
              v41 = v121;
              sub_219618B64(v120, sub_219083C3C);
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v112 = sub_218840D24(0, *(v112 + 2) + 1, 1, v112);
              }

              v123 = *(v112 + 2);
              v122 = *(v112 + 3);
              if (v123 >= v122 >> 1)
              {
                v112 = sub_218840D24((v122 > 1), v123 + 1, 1, v112);
              }

              *(v112 + 2) = v123 + 1;
              v124 = &v112[16 * v123];
              v111 = v223;
              *(v124 + 4) = v219;
              *(v124 + 5) = v41;
              if (v223 != v113)
              {
                goto LABEL_86;
              }

              goto LABEL_98;
            }

            sub_219618B64(v0[35], sub_219083C3C);
            ++v113;
            if (v108 == v109)
            {
              goto LABEL_98;
            }
          }

          goto LABEL_129;
        }

        v112 = MEMORY[0x277D84F90];
LABEL_98:
        v224 = sub_218845F78(v112);

        if (v108)
        {
          v125 = 0;
          v126 = v0[33];
          v127 = MEMORY[0x277D84F90];
LABEL_100:
          v128 = v125;
          while (v128 < *(v105 + 16))
          {
            v129 = v0[70];
            v41 = v0[34];
            v130 = sub_219BEDC04();
            v131 = *(v130 - 8);
            v132 = *(v131 + 16);
            v133 = v129 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v128;
            v134 = *(v126 + 48);
            *v41 = v128;
            v132(v41 + v134, v133, v130);
            if (v235 != v128)
            {
              v41 = sub_219BEDBE4();
              if ([v41 respondsToSelector_])
              {
                v135 = [v41 clusterID];
                swift_unknownObjectRelease();
                if (v135)
                {
                  v136 = v0[34];
                  v137 = sub_219BF5414();
                  *&v214 = v138;

                  sub_219618B64(v136, sub_219083C3C);
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v127 = sub_218840D24(0, *(v127 + 2) + 1, 1, v127);
                  }

                  v41 = *(v127 + 2);
                  v139 = *(v127 + 3);
                  if (v41 >= v139 >> 1)
                  {
                    v127 = sub_218840D24((v139 > 1), v41 + 1, 1, v127);
                  }

                  v125 = v128 + 1;
                  *(v127 + 2) = v41 + 1;
                  v140 = &v127[16 * v41];
                  *(v140 + 4) = v137;
                  *(v140 + 5) = v214;
                  if (v108 - 1 != v128)
                  {
                    goto LABEL_100;
                  }

                  goto LABEL_114;
                }
              }

              else
              {
                swift_unknownObjectRelease();
              }
            }

            ++v128;
            sub_219618B64(v0[34], sub_219083C3C);
            if (v108 == v128)
            {
              goto LABEL_114;
            }
          }

          goto LABEL_130;
        }

        v127 = MEMORY[0x277D84F90];
LABEL_114:
        v141 = v0[53];
        v142 = v0[50];
        v143 = v0[30];
        v220 = sub_218845F78(v127);

        v41 = sub_219BEFEE4();
        v145 = sub_2197270D0(v141, v144);

        v146 = sub_219727238(v209, v143);
        *&v214 = v147;
        v148 = sub_2197274BC(v142, v143, v141);
        v210 = v149;
        v150 = v227;
        v151 = *(v227 + 16);
        if (v151)
        {
          v152 = v148;
          v153 = 0;
          while (v153 < *(v150 + 16))
          {
            v154 = v217[53];
            v155 = v217[50];
            v156 = v217[39];
            v41 = v217[30];
            sub_2196189CC(v150 + ((*(v215 + 80) + 32) & ~*(v215 + 80)) + *(v215 + 72) * v153, v156, sub_218C3EEF4);
            if (sub_219727CD0(*v156, v156 + *(v216 + 48), v211, v145, v228, v155, v41, v154, v146, v214, v152, v210, v224, v220))
            {
              v163 = v217[44];
              v162 = v217[45];
              v164 = v217[43];
              v166 = v217[39];
              v165 = v217[40];
              v167 = v217[38];
              v168 = v217[30];

              swift_unknownObjectRelease();

              sub_219618A34(v166, v165, sub_218C3EEF4);
              sub_219618A34(v165, v167, sub_218C3EEF4);

              v169 = *(v216 + 48);
              *v164 = v168;
              *(v164 + 1) = v235;
              v170 = *(v163 + 24);
              v171 = sub_219BEDC04();
              (*(*(v171 - 8) + 32))(&v164[v170], v167 + v169, v171);
              (*(v162 + 56))(v164, 0, 1, v163);
              swift_unknownObjectRetain();
              v161 = v217;
              goto LABEL_121;
            }

            ++v153;
            sub_219618B64(v217[39], sub_218C3EEF4);
            v150 = v227;
            if (v151 == v153)
            {
              goto LABEL_119;
            }
          }

          goto LABEL_131;
        }

LABEL_119:
        v157 = v217[44];
        v158 = v217[45];
        v159 = v217[43];

        v160 = sub_219BF6214();
        sub_219BE5314("Found no local headlines to select for For You", 46, 2, &dword_2186C1000, v213, v160, MEMORY[0x277D84F90]);
        swift_unknownObjectRelease();

        v161 = v217;
        (*(v158 + 56))(v159, 1, 1, v157);
LABEL_121:
        v172 = v161[44];
        v173 = v161[45];
        v174 = v161[43];
        v175 = v161[29];
        (*(v161[52] + 8))(v161[53], v161[51]);

        v176 = (*(v173 + 48))(v174, 1, v172);
        v0 = v161[69];
        if (v176 == 1)
        {
          v177 = v161[68];
          v178 = v161[50];
          v179 = v161[47];
          v180 = v161[48];
          v181 = MEMORY[0x277D83D88];
          sub_218745B2C(v161[43], qword_280E9C040, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result, MEMORY[0x277D83D88], sub_2186E4BD4);
          v182 = sub_219BF6214();
          sub_219BE5314("Local in Missed Stories found no local headlines to select", 58, 2, &dword_2186C1000, v0, v182, MEMORY[0x277D84F90]);

          swift_unknownObjectRelease();
          sub_218745B2C(v177, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, v181, sub_2186E4BD4);
          (*(v180 + 8))(v178, v179);
          v229 = 0;
          v232 = 0;
          v221 = 0;
          v225 = v161[70];
          v39 = v161;
          goto LABEL_14;
        }

        v183 = v161[46];
        v184 = v161[44];
        v185 = v161[30];
        sub_219618A34(v161[43], v183, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
        v186 = swift_allocObject();
        *(v186 + 16) = xmmword_219C0B8C0;
        v187 = *(v184 + 24);
        v188 = sub_219BEDBA4();
        v189 = MEMORY[0x277D837D0];
        *(v186 + 56) = MEMORY[0x277D837D0];
        *(v186 + 64) = v212;
        *(v186 + 32) = v188;
        *(v186 + 40) = v190;
        v191 = [v185 identifier];
        v192 = sub_219BF5414();
        v194 = v193;

        *(v186 + 96) = v189;
        *(v186 + 104) = v212;
        *(v186 + 72) = v192;
        *(v186 + 80) = v194;
        v195 = *(v183 + 8);
        *(v186 + 136) = MEMORY[0x277D83B88];
        *(v186 + 144) = MEMORY[0x277D83C10];
        *(v186 + 112) = v195;
        v196 = sub_219BF6214();
        sub_219BE5314("Local in Missed Stories selected local headline %{public}@, surfaced by channel %{public}@ inserting at index %lu", 113, 2, &dword_2186C1000, v0, v196, v186);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v198 = v161[70];
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v195 & 0x8000000000000000) == 0)
          {
LABEL_125:
            if (v195 < v198[2])
            {
              v199 = v217[68];
              v200 = v217[50];
              v201 = v217[48];
              v202 = v217[47];
              v203 = v217[46];
              v204 = sub_219BEDC04();
              (*(*(v204 - 8) + 24))(v198 + ((*(*(v204 - 8) + 80) + 32) & ~*(*(v204 - 8) + 80)) + *(*(v204 - 8) + 72) * v195, v183 + v187, v204);
              v205 = sub_219BEDBA4();
              v229 = v206;
              v232 = v205;

              sub_219618B64(v203, type metadata accessor for TodayFeedGroupLocalHeadlineSelector.Result);
              v225 = v198;
              v39 = v217;
              sub_218745B2C(v199, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
              (*(v201 + 8))(v200, v202);
              v221 = v217[30];
              goto LABEL_14;
            }

            goto LABEL_135;
          }
        }

        else
        {
          v198 = sub_2194AB9E8(v161[70]);
          if ((v195 & 0x8000000000000000) == 0)
          {
            goto LABEL_125;
          }
        }

        __break(1u);
LABEL_135:
        __break(1u);
LABEL_136:

        __break(1u);
LABEL_137:
        __break(1u);
        goto LABEL_138;
      }
    }
  }

  v21 = v217[52];
  v230 = v217[53];
  v22 = v217[51];
  v23 = v217[30];
  v24 = v217[29];

  v25 = [v23 identifier];
  v26 = sub_219BF5414();
  v28 = v27;

  sub_219083D80();
  v29 = swift_allocError();
  *v30 = v26;
  v30[1] = v28;
  swift_willThrow();

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v21 + 8))(v230, v22);

  v31 = v217[69];
  v32 = v217[68];
  v231 = v217[50];
  v33 = v217[47];
  v34 = v217[48];
  v35 = sub_219BF61F4();
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09BA0;
  v217[15] = 0;
  v217[16] = 0xE000000000000000;
  v217[22] = v29;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v37 = v217[15];
  v38 = v217[16];
  *(v36 + 56) = MEMORY[0x277D837D0];
  *(v36 + 64) = sub_2186FC3BC();
  *(v36 + 32) = v37;
  *(v36 + 40) = v38;
  sub_219BE5314("Local in Missed Stories selection failed with error %{public}@, not injecting local headline", 92, 2, &dword_2186C1000, v31, v35, v36);

  sub_218745B2C(v32, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
  (*(v34 + 8))(v231, v33);
  v229 = 0;
  v232 = 0;
  v221 = 0;
  v225 = v217[70];
  v39 = v217;
LABEL_14:

  v40 = v39[1];

  v40(v225, v232, v229, v221);
}

uint64_t sub_219617634()
{

  swift_unknownObjectRelease();
  v1 = v0[75];
  v2 = v0[69];
  v3 = v0[68];
  v12 = v0[50];
  v4 = v0[47];
  v5 = v0[48];
  v6 = sub_219BF61F4();
  sub_2186F20D4(0);
  v7 = swift_allocObject();
  v0[15] = 0;
  *(v7 + 16) = xmmword_219C09BA0;
  v0[16] = 0xE000000000000000;
  v0[22] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v8 = v0[15];
  v9 = v0[16];
  *(v7 + 56) = MEMORY[0x277D837D0];
  *(v7 + 64) = sub_2186FC3BC();
  *(v7 + 32) = v8;
  *(v7 + 40) = v9;
  sub_219BE5314("Local in Missed Stories selection failed with error %{public}@, not injecting local headline", 92, 2, &dword_2186C1000, v2, v6, v7);

  sub_218745B2C(v3, qword_280E9D790, type metadata accessor for ForYouTodayFeedGroupClusteringKnobs, MEMORY[0x277D83D88], sub_2186E4BD4);
  (*(v5 + 8))(v12, v4);
  v13 = v0[70];

  v10 = v0[1];

  return v10(v13, 0, 0, 0);
}

uint64_t sub_219617924(uint64_t a1, uint64_t *a2)
{
  *(v3 + 232) = a1;
  *(v3 + 240) = a2;
  v4 = *a2;
  *(v3 + 248) = v2;
  *(v3 + 256) = v4;
  *(v3 + 264) = *(a2 + 1);
  v5 = MEMORY[0x277D83D88];
  sub_2186E4BD4(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  *(v3 + 280) = swift_task_alloc();
  sub_2186E4BD4(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  *(v3 + 288) = swift_task_alloc();
  sub_2186E4BD4(0, &unk_280E91A10, sub_2189AE994, v5);
  *(v3 + 296) = swift_task_alloc();
  v6 = sub_219BF2AB4();
  *(v3 + 304) = v6;
  *(v3 + 312) = *(v6 - 8);
  *(v3 + 320) = swift_task_alloc();
  v7 = sub_219BF2034();
  *(v3 + 328) = v7;
  *(v3 + 336) = *(v7 - 8);
  *(v3 + 344) = swift_task_alloc();
  sub_2186E4BD4(0, &unk_280E8FF30, sub_218A42400, v5);
  *(v3 + 352) = swift_task_alloc();
  sub_2186E4BD4(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  *(v3 + 360) = swift_task_alloc();
  v8 = sub_219BDBD64();
  *(v3 + 368) = v8;
  *(v3 + 376) = *(v8 - 8);
  *(v3 + 384) = swift_task_alloc();
  type metadata accessor for MissedStoriesTodayFeedGroupConfigData(0);
  *(v3 + 392) = swift_task_alloc();
  v9 = sub_219BF1934();
  *(v3 + 400) = v9;
  *(v3 + 408) = *(v9 - 8);
  *(v3 + 416) = swift_task_alloc();
  v10 = sub_219BF3C84();
  *(v3 + 424) = v10;
  *(v3 + 432) = *(v10 - 8);
  *(v3 + 440) = swift_task_alloc();
  *(v3 + 448) = swift_task_alloc();
  v11 = sub_219BF3E84();
  *(v3 + 456) = v11;
  *(v3 + 464) = *(v11 - 8);
  *(v3 + 472) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219617D8C, 0, 0);
}

uint64_t sub_219617D8C()
{
  v78 = v0;
  v1 = *(v0 + 240);
  v2 = *v1;
  if (*(v1 + 32))
  {
    sub_219618940(*(v0 + 240), v73 + 72);
    sub_219618940(v1, v73 + 112);

    swift_unknownObjectRetain();

    v0 = v73;
    swift_unknownObjectRelease();
  }

  else
  {
    sub_219618940(*(v0 + 240), v0 + 152);
    sub_219618940(v1, v0 + 192);
  }

  if (v2 >> 62)
  {
    v3 = sub_219BF7214();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v3)
  {
    v75 = MEMORY[0x277D84F90];
    v4 = sub_218C34A88(0, v3 & ~(v3 >> 63), 0);
    if (v3 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
    }

    v9 = v75;
    v10 = *(v0 + 432);
    if ((v2 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      v12 = *MEMORY[0x277D34128];
      do
      {
        v13 = *(v0 + 448);
        v14 = *(v0 + 424);
        *v13 = MEMORY[0x21CECE0F0](v11, v2);
        (*(v10 + 104))(v13, v12, v14);
        v75 = v9;
        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        if (v16 >= v15 >> 1)
        {
          sub_218C34A88((v15 > 1), v16 + 1, 1);
          v9 = v75;
        }

        v17 = *(v0 + 448);
        v18 = *(v0 + 424);
        ++v11;
        *(v9 + 16) = v16 + 1;
        (*(v10 + 32))(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v16, v17, v18);
      }

      while (v3 != v11);
    }

    else
    {
      v70 = *(v10 + 104);
      v19 = 32;
      do
      {
        v20 = v2;
        **(v0 + 440) = *(v2 + v19);
        v70();
        v75 = v9;
        v21 = *(v9 + 16);
        v22 = *(v9 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v22 >> 1)
        {
          sub_218C34A88((v22 > 1), v21 + 1, 1);
          v9 = v75;
        }

        v23 = *(v0 + 440);
        v24 = *(v0 + 424);
        *(v9 + 16) = v21 + 1;
        (*(v10 + 32))(v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v21, v23, v24);
        v19 += 8;
        --v3;
        v2 = v20;
      }

      while (v3);
    }
  }

  v25 = *(v0 + 240);
  if ((*(v25 + 32) & 1) == 0)
  {
    sub_219618910(v25);
LABEL_24:
    sub_2194B11C0(MEMORY[0x277D84F90]);
    goto LABEL_25;
  }

  v27 = *(v25 + 16);
  v26 = *(v25 + 24);
  v28 = *(*(v0 + 240) + 8);

  if (!v27)
  {
    goto LABEL_24;
  }

  v75 = v28;
  v76 = v27;
  v77 = v26;

  swift_unknownObjectRetain();
  sub_2196134F4(&v75, &v74);
  sub_219083AE0(v28, v27, v26);

  swift_unknownObjectRelease();
  if (!v74)
  {
    goto LABEL_24;
  }

LABEL_25:
  v29 = *(v0 + 240);
  if (*(v29 + 32))
  {
    v30 = *(v29 + 16);
    v31 = *(*(v0 + 240) + 8);

    sub_2186E4BD4(0, &qword_280E8B6C0, sub_219083A08, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = v31;
    *(inited + 40) = v30;

    swift_unknownObjectRetain();
    v33 = sub_2194AD74C(&unk_282A287E8);
    sub_2189AD3D8(&unk_282A28808);
    *(inited + 48) = v33;
    sub_2194B11E0(inited);
    v0 = v73;
    swift_setDeallocating();
    sub_219618B64(inited + 32, sub_219083A08);
    swift_unknownObjectRelease_n();
  }

  else
  {
    sub_219618910(v29);
    sub_2194B11E0(MEMORY[0x277D84F90]);
  }

  v61 = *(v0 + 472);
  v62 = *(v0 + 408);
  v63 = *(v0 + 464);
  v34 = *(v0 + 392);
  v64 = *(v0 + 400);
  v65 = *(v0 + 456);
  v35 = *(v0 + 384);
  v36 = *(v73 + 376);
  v60 = *(v73 + 368);
  v37 = *(v73 + 360);
  v38 = *(v73 + 352);
  v67 = *(v73 + 296);
  v68 = *(v73 + 288);
  v69 = *(v73 + 280);
  v39 = *(v73 + 248);
  v40 = MEMORY[0x277D84F90];
  sub_218F0BB90(MEMORY[0x277D84F90]);
  sub_219BF3E74();
  v66 = v39;
  v71 = *(v39 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_formatService + 32);
  v72 = *(v39 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_formatService + 24);
  __swift_project_boxed_opaque_existential_1((v39 + OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_formatService), v72);
  sub_2186E0170(0);
  sub_219BEDD14();
  v75 = 0;
  v76 = 0xE000000000000000;
  sub_219BF7314();

  v75 = 0x745364657373696DLL;
  v76 = 0xEF3A3A736569726FLL;
  sub_219BDBD54();
  v41 = sub_219BDBD44();
  v43 = v42;
  (*(v36 + 8))(v35, v60);
  MEMORY[0x21CECC330](v41, v43);

  v44 = sub_219BEC004();
  v45 = *(*(v44 - 8) + 56);
  v45(v37, 1, 1, v44);
  sub_218A42400(0);
  (*(*(v46 - 8) + 56))(v38, 1, 1, v46);
  sub_219BF1764();

  v47 = MEMORY[0x277D83D88];
  sub_218745B2C(v38, &unk_280E8FF30, sub_218A42400, MEMORY[0x277D83D88], sub_2186E4BD4);
  sub_218745B2C(v37, &qword_280EE33F0, MEMORY[0x277D2D4E0], v47, sub_2186E4BD4);
  v48 = *(v62 + 8);
  *(v73 + 480) = v48;
  *(v73 + 488) = (v62 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v48(v34, v64);
  sub_2186E4BD4(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v49 = (*(v63 + 80) + 32) & ~*(v63 + 80);
  v50 = swift_allocObject();
  *(v50 + 16) = xmmword_219C09BA0;
  (*(v63 + 16))(v50 + v49, v61, v65);
  v45(v37, 1, 1, v44);
  sub_219A95188(v40);
  sub_219A95188(v40);
  sub_219A951A0(v40);
  sub_219A951B8(v40);
  sub_219A952CC(v40);
  sub_219A952E4(v40);
  sub_219A953F8(v40);
  sub_219BF2024();
  v51 = OBJC_IVAR____TtC7NewsUI234MissedStoriesTodayFeedGroupEmitter_knobs;
  sub_2189AE994(0);
  v53 = v52;
  v54 = *(v52 - 8);
  (*(v54 + 16))(v67, v66 + v51, v52);
  (*(v54 + 56))(v67, 0, 1, v53);
  v55 = sub_219BF35D4();
  (*(*(v55 - 8) + 56))(v68, 1, 1, v55);
  *(v73 + 105) = 6;
  sub_2196146F0(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v56 = sub_219BF2774();
  (*(*(v56 - 8) + 56))(v69, 1, 1, v56);
  v57 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v57 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v58 = swift_task_alloc();
  *(v73 + 496) = v58;
  *v58 = v73;
  v58[1] = sub_2190834BC;
  v5 = *(v73 + 344);
  v6 = *(v73 + 320);
  v4 = *(v73 + 416);
  v8 = v71;
  v7 = v72;

  return MEMORY[0x2821921B8](v4, v5, v6, v7, v8);
}

unint64_t sub_219618978()
{
  result = qword_280E9FCE0;
  if (!qword_280E9FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E9FCE0);
  }

  return result;
}

uint64_t sub_2196189CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219618A34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219618A9C(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_2186E4BD4(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_219618B1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219618B64(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219618BC4()
{
  result = qword_280EE76D8;
  if (!qword_280EE76D8)
  {
    sub_2186E4BD4(255, &qword_280EE76D0, type metadata accessor for MissedStoriesTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE76D8);
  }

  return result;
}

unint64_t sub_219618C7C()
{
  result = qword_27CC1D170;
  if (!qword_27CC1D170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D170);
  }

  return result;
}

double sub_219618CF0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v10 = sub_219BEEA84();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SavedFeedContentConfig(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196190A4(a1, v16);
  v17 = *(a1 + *(type metadata accessor for SavedFeedConfigFetchResult(0) + 20));
  (*(v11 + 104))(v13, *MEMORY[0x277D32220], v10);
  *a5 = a2;
  *(a5 + 1) = a3;
  v18 = type metadata accessor for SavedFeedServiceConfig(0);
  sub_2196190A4(v16, &a5[v18[5]]);
  *&a5[v18[6]] = v17;
  *&a5[v18[7]] = a4;
  (*(v11 + 16))(&a5[v18[8]], v13, v10);
  v19 = v17;
  swift_unknownObjectRetain();

  v20 = [a4 autoRefreshMinimumInterval];
  (*(v11 + 8))(v13, v10);
  sub_219619108(v16);
  result = v20;
  *&a5[v18[9]] = v20;
  return result;
}

uint64_t sub_219618EF8(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [*(*v1 + 32) appConfiguration];
  type metadata accessor for SavedFeedConfigFetchResult(0);
  sub_219BE3204();
  v5 = swift_allocObject();
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;

  swift_unknownObjectRetain();
  v6 = sub_219BE2E54();
  type metadata accessor for SavedFeedServiceConfig(0);
  v7 = sub_219BE2F74();
  swift_unknownObjectRelease();

  return v7;
}

uint64_t sub_2196190A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SavedFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219619108(uint64_t a1)
{
  v2 = type metadata accessor for SavedFeedContentConfig(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_219619164()
{
  sub_2186E5B54(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v13 - v2;
  v4 = sub_219BDB954();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE94F0 != -1)
  {
    swift_once();
  }

  if (sub_219BDC834())
  {
    if (qword_27CC080E8 != -1)
    {
      swift_once();
    }

    sub_2186EE74C(&qword_27CC1D178, v8, type metadata accessor for SavedFeedServiceConfigFetcher, &unk_219C93488);
    sub_219BDC7D4();
    sub_219BDB914();

    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {
      sub_218838478(v3);
      sub_2196194CC();
      swift_allocError();
      sub_2186E5B54(0, &unk_280EE6D40, type metadata accessor for SavedFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      return sub_219BE2FF4();
    }

    else
    {
      (*(v5 + 32))(v7, v3, v4);
      __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
      v10 = off_282A62748;
      v11 = type metadata accessor for SavedFeedConfigManager();
      v12 = v10(v7, v11);
      (*(v5 + 8))(v7, v4);
      return v12;
    }
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v0 + 40), *(v0 + 64));
    return sub_2191B7DB8();
  }
}

unint64_t sub_2196194CC()
{
  result = qword_27CC1D180;
  if (!qword_27CC1D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D180);
  }

  return result;
}

unint64_t sub_219619534()
{
  result = qword_27CC1D190;
  if (!qword_27CC1D190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D190);
  }

  return result;
}

uint64_t sub_219619598(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v26 = a3;
  v27 = a2;
  sub_219619B04(0, &qword_27CC1D1A8, MEMORY[0x277D6DF88]);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v22 = &v20 - v5;
  sub_219619B04(0, &qword_27CC1D1B0, MEMORY[0x277D6D710]);
  v7 = v6;
  v21 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  sub_2196199D8(0);
  MEMORY[0x28223BE20](v10 - 8);
  sub_219619B04(0, &qword_27CC1D1D0, MEMORY[0x277D6EC60]);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v20 - v14;
  v16 = sub_219619AA4(&qword_27CC1D1C0, MEMORY[0x277D6D720]);
  v17 = sub_219619AA4(&qword_27CC1D1C8, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v7, v16, v17);
  sub_218DB6788();
  sub_218DB6840();
  sub_219BEB2D4();
  __swift_project_boxed_opaque_existential_1(v3 + 1, v3[4]);
  sub_219748700(*v3, v9);
  sub_219BEB1E4();
  v18 = v22;
  sub_219BE85C4();
  v27(v18);
  (*(v24 + 8))(v18, v25);
  (*(v23 + 8))(v9, v21);
  return (*(v13 + 8))(v15, v12);
}

uint64_t sub_21961993C(uint64_t a1)
{
  v2 = sub_219619B88();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_21961997C()
{
  result = qword_27CC1D1A0;
  if (!qword_27CC1D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D1A0);
  }

  return result;
}

void sub_2196199D8(uint64_t a1)
{
  if (!qword_27CC1D1B8)
  {
    sub_219619B04(255, &qword_27CC1D1B0, MEMORY[0x277D6D710]);
    sub_219619AA4(&qword_27CC1D1C0, MEMORY[0x277D6D720]);
    sub_219619AA4(&qword_27CC1D1C8, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D1B8);
    }
  }
}

uint64_t sub_219619AA4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_219619B04(255, &qword_27CC1D1B0, MEMORY[0x277D6D710]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_219619B04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for MagazineCategoriesPickerSectionDescriptor;
    v8[1] = &type metadata for MagazineCategoriesPickerModel;
    v8[2] = sub_218DB6788();
    v8[3] = sub_218DB6840();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_219619B88()
{
  result = qword_27CC1D1D8;
  if (!qword_27CC1D1D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D1D8);
  }

  return result;
}

uint64_t sub_219619F04@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  sub_218B8243C(0, &qword_280E92530, MEMORY[0x277D31D70]);
  MEMORY[0x28223BE20](v3 - 8);
  v49 = v38 - v4;
  sub_2186E3B14(0);
  v6 = *(v5 - 8);
  v46 = v5;
  v47 = v6;
  MEMORY[0x28223BE20](v5);
  v48 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v50 = v38 - v9;
  v10 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B8243C(0, &unk_280E919B0, sub_2186E3B14);
  MEMORY[0x28223BE20](v13 - 8);
  v45 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v44 = v38 - v16;
  sub_21961A9D8(0, &qword_280E8C798, sub_21961A920, &type metadata for InlineCategoriesMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = v38 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21961A920();
  v22 = v52;
  sub_219BF7B34();
  if (v22)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = 0;
  v43 = v19;
  v52 = v12;
  LOBYTE(v55) = 0;
  sub_2186EC638(&qword_280E919C8, sub_2186E3B14, MEMORY[0x277D321B0]);
  v24 = v44;
  v25 = v46;
  sub_219BF7674();
  LOBYTE(v53) = 1;
  sub_219BF7674();
  v39 = v55;
  v38[1] = v56;
  v58 = 2;
  sub_219BF7674();
  v40 = v53;
  v57 = v54;
  v26 = v45;
  sub_218B82538(v24, v45);
  v27 = v47;
  v28 = *(v47 + 48);
  v29 = v28(v26, 1, v25);
  v41 = a1;
  if (v29 == 1)
  {
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v30 = __swift_project_value_buffer(v25, qword_280F61818);
    v31 = v48;
    (*(v27 + 16))(v48, v30, v25);
    v32 = v28(v26, 1, v25);
    v33 = v31;
    v34 = v49;
    if (v32 != 1)
    {
      sub_218B825B8(v26, &unk_280E919B0, sub_2186E3B14);
    }
  }

  else
  {
    v33 = v48;
    (*(v27 + 32))(v48, v26, v25);
    v34 = v49;
  }

  v35 = sub_219BEDB04();
  (*(*(v35 - 8) + 56))(v34, 1, 1, v35);
  v36 = v50;
  sub_219BEEA04();
  sub_218B825B8(v34, &qword_280E92530, MEMORY[0x277D31D70]);
  (*(v27 + 8))(v33, v25);
  sub_218B825B8(v24, &unk_280E919B0, sub_2186E3B14);
  (*(v43 + 8))(v21, v18);
  v37 = v52;
  (*(v27 + 32))(v52, v36, v25);
  sub_21961A974(v37, v51);
  return __swift_destroy_boxed_opaque_existential_1(v41);
}

uint64_t sub_21961A550()
{
  v1 = 0x727563634F78616DLL;
  if (*v0 != 1)
  {
    v1 = 0x726F635365736162;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73656C7572;
  }
}

uint64_t sub_21961A5B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21961ACC4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21961A5E0(uint64_t a1)
{
  v2 = sub_21961A920();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21961A61C(uint64_t a1)
{
  v2 = sub_21961A920();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21961A658(uint64_t a1)
{
  v2 = sub_21961AA40();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21961A694(uint64_t a1)
{
  v2 = sub_21961AA40();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21961A6E8(void *a1)
{
  sub_21961A9D8(0, &qword_280E8C200, sub_21961AA40, &type metadata for InlineCategoriesMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21961AA40();
  sub_219BF7B44();
  sub_2186E3B14(0);
  sub_2186EC638(&qword_280E919D0, sub_2186E3B14, MEMORY[0x277D321A8]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21961A894(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC638(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);

  return sub_219BEE9F4();
}

unint64_t sub_21961A920()
{
  result = qword_280E98440;
  if (!qword_280E98440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98440);
  }

  return result;
}

uint64_t sub_21961A974(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InlineCategoriesMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21961A9D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_21961AA40()
{
  result = qword_280E98468;
  if (!qword_280E98468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98468);
  }

  return result;
}

unint64_t sub_21961AAB8()
{
  result = qword_27CC1D250;
  if (!qword_27CC1D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D250);
  }

  return result;
}

unint64_t sub_21961AB10()
{
  result = qword_27CC1D258;
  if (!qword_27CC1D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D258);
  }

  return result;
}

unint64_t sub_21961AB68()
{
  result = qword_280E98458;
  if (!qword_280E98458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98458);
  }

  return result;
}

unint64_t sub_21961ABC0()
{
  result = qword_280E98460;
  if (!qword_280E98460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98460);
  }

  return result;
}

unint64_t sub_21961AC18()
{
  result = qword_280E98448;
  if (!qword_280E98448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98448);
  }

  return result;
}

unint64_t sub_21961AC70()
{
  result = qword_280E98450;
  if (!qword_280E98450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98450);
  }

  return result;
}

uint64_t sub_21961ACC4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
  {

    return 2;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

char *sub_21961ADE8(double a1, double a2, double a3, double a4)
{
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_titleLabel;
  *&v4[v10] = [objc_allocWithZone(MEMORY[0x277D756B8]) initWithFrame_];
  v11 = OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_actionButton;
  *&v4[v11] = [objc_allocWithZone(sub_219BE5D04()) initWithFrame_];
  v17.receiver = v4;
  v17.super_class = ObjectType;
  v12 = objc_msgSendSuper2(&v17, sel_initWithFrame_, a1, a2, a3, a4);
  v13 = OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_titleLabel;
  v14 = *&v12[OBJC_IVAR____TtC7NewsUI226SearchHomeSectionTitleView_titleLabel];
  v15 = v12;
  [v15 addSubview_];
  [*&v12[v13] setNumberOfLines_];
  [v15 addSubview_];

  return v15;
}

void sub_21961B080(__n128 a1)
{
  v1 = sub_219BE5CF4();
}

void sub_21961B0DC()
{
  sub_21961B168(&qword_280EBA438, &unk_219C939F4);

  JUMPOUT(0x21CEC1E40);
}

uint64_t sub_21961B168(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SearchHomeSectionTitleView();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double sub_21961B1CC(char a1, uint64_t a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    *(swift_allocObject() + 16) = Strong;
    swift_unknownObjectRetain();
    sub_219BE3494();
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t type metadata accessor for SharedWithYouFeedLayoutModel(uint64_t a1)
{
  result = qword_27CC1D270;
  if (!qword_27CC1D270)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_21961B2F4()
{
  v1 = sub_219BEF974();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21961BA84(v0, v7);
  (*(v2 + 32))(v4, v7, v1);
  sub_219BEF954();
  v9 = v8;
  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t sub_21961B458@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  MEMORY[0x28223BE20](a1 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21961BA84(v2, v5);
  v6 = sub_219BEF974();
  a2[3] = v6;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return (*(*(v6 - 8) + 32))(boxed_opaque_existential_1, v5, v6);
}

uint64_t sub_21961B544(uint64_t a1)
{
  v2 = sub_21961BAE8(&qword_27CC15C80, &unk_219C93B48);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21961B5E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21961BA84(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_21961B7DC(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21961BA84(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  a3(v12);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_21961B940(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21961BA84(v3, v11);
  v12 = (*(v6 + 32))(v8, v11, v5);
  v13 = a3(v12);
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_21961BA84(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedLayoutModel(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21961BAE8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SharedWithYouFeedLayoutModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for RecipeFilterView(uint64_t a1)
{
  result = qword_27CC1D288;
  if (!qword_27CC1D288)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21961BBA0(uint64_t a1)
{
  sub_2196200A8(319, &qword_27CC1D280, MEMORY[0x277CDF3E0], MEMORY[0x277CDF468]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecipeFilterViewModel(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_21961BC70(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  v4 = *(v3 + 56);
  *a2 = *(v3 + 48);
  *(a2 + 8) = v4;
}

uint64_t sub_21961BD78(uint64_t a1)
{
  v2 = sub_219BEC6E4();
  v3 = MEMORY[0x28223BE20](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_219BEC7E4();
}

void sub_21961BE40(uint64_t a1@<X8>)
{
  v77 = a1;
  v76 = sub_219BEC874();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v74 = &v66 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21961FDB8(0);
  v4 = v3;
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219620724(0);
  v66 = v7;
  v68 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v78 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196207D8();
  v72 = v9;
  v69 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v79 = &v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219621664();
  v73 = v11;
  v71 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v70 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = v1;
  sub_219BECB84();
  sub_21961FEDC(0);
  sub_21961FFE0(255);
  v14 = v13;
  sub_219620D6C(255, &qword_27CC1D338, sub_21961FFE0);
  v16 = v15;
  v17 = sub_219621E04(&qword_27CC1D340, sub_21961FFE0, MEMORY[0x277CE1198]);
  v18 = sub_219620658();
  aBlock = v14;
  v84 = MEMORY[0x277CE1350];
  v85 = v16;
  v86 = v17;
  v87 = MEMORY[0x277CE1340];
  v88 = v18;
  swift_getOpaqueTypeConformance2();
  sub_219BEC5E4();
  sub_2196200A8(0, &qword_27CC1D498, MEMORY[0x277CDDB68], MEMORY[0x277D84560]);
  sub_219BEC794();
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_219C09BA0;
  sub_219BEC784();
  v20 = sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
  MEMORY[0x21CEC3BD0](1, v19, v4, v20);

  v67[1](v6, v4);
  sub_219BED0D4();
  v81 = v1;
  v80 = v1;
  sub_219620F28(0, &qword_27CC1D368, sub_219620A2C, &qword_27CC1D3E8, sub_219620A2C);
  v22 = v21;
  sub_219620F28(0, &qword_27CC1D3F0, sub_219621060, &qword_27CC1D488, sub_219621060);
  v24 = v23;
  aBlock = v4;
  v84 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_219620A2C(255);
  v27 = v26;
  v28 = MEMORY[0x277CDDF68];
  v29 = sub_219621E04(&qword_27CC1D3E8, sub_219620A2C, MEMORY[0x277CDDF68]);
  v30 = v66;
  aBlock = v66;
  v84 = v27;
  v85 = OpaqueTypeConformance2;
  v86 = v29;
  v31 = swift_getOpaqueTypeConformance2();
  sub_219621060(255);
  v33 = v32;
  v34 = sub_219621E04(&qword_27CC1D488, sub_219621060, v28);
  aBlock = v30;
  v84 = v33;
  v85 = OpaqueTypeConformance2;
  v86 = v34;
  v35 = swift_getOpaqueTypeConformance2();
  v67 = v24;
  v36 = v30;
  v37 = v22;
  v38 = v36;
  v39 = v78;
  sub_219BECEE4();
  (*(v68 + 8))(v39, v38);
  sub_219BEC904();
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v40 = qword_27CC12B98;
  v41 = sub_219BECD94();
  v43 = v42;
  v45 = v44;
  aBlock = v38;
  v84 = MEMORY[0x277CE1350];
  v85 = v37;
  v86 = v67;
  v87 = OpaqueTypeConformance2;
  v88 = MEMORY[0x277CE1340];
  v89 = v31;
  v90 = v35;
  v46 = swift_getOpaqueTypeConformance2();
  v47 = v70;
  v48 = v72;
  v49 = v79;
  sub_219BECE14();
  sub_2189A0BC8(v41, v43, v45 & 1);

  (*(v69 + 8))(v49, v48);
  v50 = v75;
  v51 = v74;
  v52 = v76;
  (*(v75 + 104))(v74, *MEMORY[0x277CDDDC0], v76);
  aBlock = v48;
  v84 = v46;
  swift_getOpaqueTypeConformance2();
  v53 = v77;
  v54 = v73;
  sub_219BECE94();
  (*(v50 + 8))(v51, v52);
  (*(v71 + 8))(v47, v54);
  v55 = objc_opt_self();
  v56 = [v55 secondarySystemBackgroundColor];
  v57 = [v55 systemBackgroundColor];
  v58 = swift_allocObject();
  *(v58 + 16) = v56;
  *(v58 + 24) = v57;
  v59 = objc_allocWithZone(MEMORY[0x277D75348]);
  v87 = sub_219471C60;
  v88 = v58;
  aBlock = MEMORY[0x277D85DD0];
  v84 = 1107296256;
  v85 = sub_218FEA284;
  v86 = &block_descriptor_147;
  v60 = _Block_copy(&aBlock);
  v61 = v56;
  v62 = v57;
  [v59 initWithDynamicProvider_];
  _Block_release(v60);

  v63 = sub_219BECF04();

  LOBYTE(v61) = sub_219BECBA4();
  sub_2196219B4(0);
  v65 = v53 + *(v64 + 36);
  *v65 = v63;
  *(v65 + 8) = v61;
}

uint64_t sub_21961C8F4(uint64_t a1)
{
  sub_21961FFE0(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v4 = sub_219BEC964();
  *(v4 + 1) = 0;
  v4[16] = 0;
  sub_2196220C4(0, &qword_27CC1D4C8, sub_219620074, MEMORY[0x277CDF7A0], MEMORY[0x277CDF798]);
  sub_21961CA94(a1, &v4[*(v5 + 44)]);
  sub_219BED0D4();
  sub_219620D6C(0, &qword_27CC1D338, sub_21961FFE0);
  sub_219621E04(&qword_27CC1D340, sub_21961FFE0, MEMORY[0x277CE1198]);
  sub_219620658();
  sub_219BECEF4();
  return sub_219622544(v4, sub_21961FFE0);
}

uint64_t sub_21961CA94@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BECA54();
  MEMORY[0x28223BE20](v4);
  sub_2196201A8(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  sub_219BED0E4();
  sub_219BEC684();
  v23 = v29;
  v24 = v27;
  v21 = v32;
  v22 = v31;
  v35 = 1;
  v34 = v28;
  v33 = v30;
  sub_219BEC974();
  v25 = a1;
  v26 = 0;
  sub_219621E04(&qword_27CC0BB18, MEMORY[0x277CE0428], MEMORY[0x277CE0448]);
  sub_219BF7C64();
  sub_21962020C(0);
  sub_219620360();
  sub_219BEC5B4();
  v13 = v35;
  v14 = v34;
  LOBYTE(a1) = v33;
  v15 = *(v7 + 16);
  v15(v9, v12, v6);
  *a2 = 0;
  *(a2 + 8) = v13;
  v16 = v23;
  *(a2 + 16) = v24;
  *(a2 + 24) = v14;
  *(a2 + 32) = v16;
  *(a2 + 40) = a1;
  v17 = v21;
  *(a2 + 48) = v22;
  *(a2 + 56) = v17;
  sub_21962010C(0);
  v15((a2 + *(v18 + 48)), v9, v6);
  v19 = *(v7 + 8);
  v19(v12, v6);
  return (v19)(v9, v6);
}

uint64_t sub_21961CD54(uint64_t a1)
{
  v2 = type metadata accessor for RecipeFilterView(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x28223BE20](v2 - 8);
  v6 = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  v10[1] = v6;
  sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  swift_beginAccess();
  v10[0] = *(v6 + 16);
  sub_2196223E4(a1, v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
  v7 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v8 = swift_allocObject();
  sub_21962237C(v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v8 + v7, type metadata accessor for RecipeFilterView);
  sub_219621614(0, &qword_27CC1D2D8, &type metadata for RecipeFilterViewModel.Section, MEMORY[0x277D83940]);
  sub_219622270(0, &qword_27CC1D2E0, MEMORY[0x277CE0338]);
  sub_2196202E4();
  sub_2196203D8();
  sub_2196221B8();

  return sub_219BED064();
}

uint64_t sub_21961CFB8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v82 = a3;
  v83 = a2;
  v4 = MEMORY[0x277CE0330];
  sub_21962220C(0, &qword_27CC1D4D8, MEMORY[0x277CE0330]);
  v73 = v5;
  MEMORY[0x28223BE20](v5);
  v74 = &v69 - v6;
  v7 = MEMORY[0x277CE0338];
  sub_21962220C(0, &qword_27CC1D2F0, MEMORY[0x277CE0338]);
  v81 = v8;
  MEMORY[0x28223BE20](v8);
  v75 = &v69 - v9;
  v77 = type metadata accessor for RecipeFilterTagCapsulesSectionView(0);
  MEMORY[0x28223BE20](v77);
  v11 = (&v69 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v12);
  v72 = &v69 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = (&v69 - v15);
  MEMORY[0x28223BE20](v17);
  v71 = &v69 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = (&v69 - v20);
  MEMORY[0x28223BE20](v22);
  v70 = &v69 - v23;
  sub_219622270(0, &qword_27CC1D4E0, v4);
  v78 = v24;
  MEMORY[0x28223BE20](v24);
  v80 = &v69 - v25;
  sub_219622314(0, &qword_27CC1D4E8, v4);
  v27 = v26;
  MEMORY[0x28223BE20](v26);
  v29 = (&v69 - v28);
  sub_219622314(0, &qword_27CC1D2E8, v7);
  v79 = v30;
  MEMORY[0x28223BE20](v30);
  v32 = &v69 - v31;
  v33 = type metadata accessor for RecipeFilterView(0);
  v76 = *(v33 - 8);
  v34 = *(v76 + 64);
  MEMORY[0x28223BE20](v33);
  v36 = &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = *a1;
  v38 = *a1 >> 62;
  if (v38 > 1)
  {
    v42 = v37 & 0x3FFFFFFFFFFFFFFFLL;
    if (v38 == 2)
    {
      v43 = v83;
      v44 = *(v83 + *(v35 + 20));
      swift_getKeyPath();
      v84 = v44;
      sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);

      sub_219BDC204();

      v45 = (*(v44 + 56) & 1) == 0 && *(v44 + 48) == 1;
      sub_2196223E4(v43, &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
      v52 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v53 = swift_allocObject();
      sub_21962237C(v36, v53 + v52, type metadata accessor for RecipeFilterView);
      *v16 = swift_getKeyPath();
      sub_2196200A8(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v54 = v77;
      *(v16 + *(v77 + 20)) = v42;
      *(v16 + *(v54 + 24)) = v45;
      v55 = (v16 + *(v54 + 28));
      *v55 = sub_2196225A4;
      v55[1] = v53;
      sub_219BECD34();
      v56 = v16;
      v57 = v71;
      sub_21962237C(v56, v71, type metadata accessor for RecipeFilterTagCapsulesSectionView);
      sub_2196223E4(v57, v74, type metadata accessor for RecipeFilterTagCapsulesSectionView);
    }

    else
    {
      v49 = v83;
      v50 = *(v83 + *(v35 + 20));
      swift_getKeyPath();
      v84 = v50;
      sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);

      sub_219BDC204();

      v51 = (*(v50 + 56) & 1) == 0 && *(v50 + 48) == 1;
      sub_2196223E4(v49, &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
      v64 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v65 = swift_allocObject();
      sub_21962237C(v36, v65 + v64, type metadata accessor for RecipeFilterView);
      *v11 = swift_getKeyPath();
      sub_2196200A8(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
      swift_storeEnumTagMultiPayload();
      v66 = v77;
      *(v11 + *(v77 + 20)) = v42;
      *(v11 + *(v66 + 24)) = v51;
      v67 = (v11 + *(v66 + 28));
      *v67 = sub_219622AFC;
      v67[1] = v65;
      sub_219BECD34();
      v57 = v72;
      sub_21962237C(v11, v72, type metadata accessor for RecipeFilterTagCapsulesSectionView);
      sub_2196223E4(v57, v74, type metadata accessor for RecipeFilterTagCapsulesSectionView);
    }

    swift_storeEnumTagMultiPayload();
    sub_219621E04(&qword_27CC1D320, type metadata accessor for RecipeFilterTagCapsulesSectionView, &unk_219C0E3D4);
    v68 = v75;
    sub_219BEC9E4();
    sub_21962244C(v68, v80, &qword_27CC1D2F0, sub_21962220C);
    swift_storeEnumTagMultiPayload();
    sub_219620474();
    sub_219620594();
    sub_219BEC9E4();
    sub_2196224CC(v68, &qword_27CC1D2F0, sub_21962220C);
    v63 = v57;
  }

  else
  {
    if (!v38)
    {
      sub_2196223E4(v83, &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
      v39 = (*(v76 + 80) + 16) & ~*(v76 + 80);
      v40 = swift_allocObject();
      sub_21962237C(v36, v40 + v39, type metadata accessor for RecipeFilterView);
      *v29 = v37;
      v29[1] = sub_219622AFC;
      v29[2] = v40;
      swift_storeEnumTagMultiPayload();
      sub_219620540();
      sub_219621E04(&qword_27CC1D320, type metadata accessor for RecipeFilterTagCapsulesSectionView, &unk_219C0E3D4);

      sub_219BEC9E4();
      sub_21962244C(v32, v80, &qword_27CC1D2E8, sub_219622314);
      swift_storeEnumTagMultiPayload();
      sub_219620474();
      sub_219620594();
      sub_219BEC9E4();

      return sub_2196224CC(v32, &qword_27CC1D2E8, sub_219622314);
    }

    v74 = v27;
    v46 = v37 & 0x3FFFFFFFFFFFFFFFLL;
    v47 = *(v83 + *(v35 + 20));
    swift_getKeyPath();
    v84 = v47;
    sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
    v75 = v46;

    sub_219BDC204();

    v48 = (*(v47 + 56) & 1) == 0 && *(v47 + 48) == 1;
    sub_2196223E4(v83, &v69 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
    v58 = (*(v76 + 80) + 16) & ~*(v76 + 80);
    v59 = swift_allocObject();
    sub_21962237C(v36, v59 + v58, type metadata accessor for RecipeFilterView);
    *v21 = swift_getKeyPath();
    sub_2196200A8(0, &qword_27CC0BB20, MEMORY[0x277CDFA28], MEMORY[0x277CDF458]);
    swift_storeEnumTagMultiPayload();
    v60 = v77;
    *(v21 + *(v77 + 20)) = v75;
    *(v21 + *(v60 + 24)) = v48;
    v61 = (v21 + *(v60 + 28));
    *v61 = sub_2196225AC;
    v61[1] = v59;
    sub_219BECD34();
    v62 = v70;
    sub_21962237C(v21, v70, type metadata accessor for RecipeFilterTagCapsulesSectionView);
    sub_2196223E4(v62, v29, type metadata accessor for RecipeFilterTagCapsulesSectionView);
    swift_storeEnumTagMultiPayload();
    sub_219620540();
    sub_219621E04(&qword_27CC1D320, type metadata accessor for RecipeFilterTagCapsulesSectionView, &unk_219C0E3D4);
    sub_219BEC9E4();
    sub_21962244C(v32, v80, &qword_27CC1D2E8, sub_219622314);
    swift_storeEnumTagMultiPayload();
    sub_219620474();
    sub_219620594();
    sub_219BEC9E4();
    sub_2196224CC(v32, &qword_27CC1D2E8, sub_219622314);
    v63 = v62;
  }

  return sub_219622544(v63, type metadata accessor for RecipeFilterTagCapsulesSectionView);
}

double sub_21961DCB0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BECBB4();
  sub_2196223E4(a1, a2, sub_21961FFE0);
  sub_219620D6C(0, &qword_27CC1D338, sub_21961FFE0);
  v6 = a2 + *(v5 + 36);
  *v6 = v4;
  result = 0.0;
  *(v6 + 8) = 0u;
  *(v6 + 24) = 0u;
  *(v6 + 40) = 1;
  return result;
}

uint64_t sub_21961DD48@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  sub_21962109C(0, &qword_27CC1D378, sub_219620AC4, sub_219620BF8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = &v44 - v4;
  sub_219620C2C(0);
  v49 = v5;
  v47 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v45 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219620CE0(0);
  v48 = v7;
  v44 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219620BF8(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v44 - v14;
  v15 = sub_219BECA44();
  MEMORY[0x28223BE20](v15 - 8);
  sub_219620AC4(0);
  v17 = v16;
  v18 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v44 - v22;
  sub_219BECA14();
  v55 = a1;
  sub_219620B64(0);
  sub_219621E04(&qword_27CC1D398, sub_219620B64, MEMORY[0x277CDF028]);
  sub_219BEC634();
  sub_219BECA24();
  v54 = a1;
  v46 = v20;
  sub_219BEC634();
  v24 = *(a1 + *(type metadata accessor for RecipeFilterView(0) + 20));
  swift_getKeyPath();
  v56 = v24;
  sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  if (*(v24 + 40) == 1)
  {
    v25 = v49;
    (*(v47 + 56))(v12, 1, 1, v49);
    v26 = sub_219621E04(&qword_27CC1D3E0, sub_219620CE0, MEMORY[0x277CDD7A8]);
    v56 = v48;
    v57 = v26;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CEC3810](v12, v25, OpaqueTypeConformance2);
    sub_2188F36B8(v12);
  }

  else
  {
    v28 = *(v24 + 32);
    v29 = sub_219BECA34();
    MEMORY[0x28223BE20](v29);
    *(&v44 - 2) = a1;
    *(&v44 - 1) = v28;
    sub_219620D6C(0, &qword_27CC1D3B8, sub_219620DC8);
    sub_219620E5C();
    sub_219BEC634();
    v30 = sub_219621E04(&qword_27CC1D3E0, sub_219620CE0, MEMORY[0x277CDD7A8]);
    v31 = v45;
    v32 = v48;
    MEMORY[0x21CEC3800](v9, v48, v30);
    v33 = v47;
    v34 = v49;
    (*(v47 + 16))(v12, v31, v49);
    (*(v33 + 56))(v12, 0, 1, v34);
    v56 = v32;
    v57 = v30;
    v35 = swift_getOpaqueTypeConformance2();
    MEMORY[0x21CEC3810](v12, v34, v35);
    sub_2188F36B8(v12);
    (*(v33 + 8))(v31, v34);
    (*(v44 + 8))(v9, v32);
  }

  v36 = v50;
  v37 = *(v51 + 48);
  v38 = *(v51 + 64);
  v39 = *(v18 + 16);
  v39(v50, v23, v17);
  v40 = v46;
  v39(&v36[v37], v46, v17);
  v41 = v53;
  sub_2188F3714(v53, &v36[v38]);
  sub_219BEC994();
  sub_2188F36B8(v41);
  v42 = *(v18 + 8);
  v42(v40, v17);
  return (v42)(v23, v17);
}

uint64_t sub_21961E470(uint64_t a1, void (*a2)(__n128), uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for RecipeFilterView(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x28223BE20](v7 - 8);
  v10 = sub_219BEC594();
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v11);
  sub_2196223E4(a1, &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
  v14 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v15 = swift_allocObject();
  sub_21962237C(&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v14, type metadata accessor for RecipeFilterView);
  return MEMORY[0x21CEC3D90](v13, a4, v15);
}

void sub_21961E5F8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for RecipeFilterView(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  sub_2196223E4(a1, &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], type metadata accessor for RecipeFilterView);
  v9 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v10 = swift_allocObject();
  sub_21962237C(&v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)], v10 + v9, type metadata accessor for RecipeFilterView);
  v22 = a2;
  sub_21947134C(0);
  sub_219621E04(&qword_27CC1D3C8, sub_21947134C, MEMORY[0x277CE1198]);
  sub_219BECFE4();
  LOBYTE(a2) = sub_219BECB94();
  sub_219BEC5A4();
  v12 = v11;
  v14 = v13;
  v16 = v15;
  v18 = v17;
  sub_219620D6C(0, &qword_27CC1D3B8, sub_219620DC8);
  v20 = a3 + *(v19 + 36);
  *v20 = a2;
  *(v20 + 8) = v12;
  *(v20 + 16) = v14;
  *(v20 + 24) = v16;
  *(v20 + 32) = v18;
  *(v20 + 40) = 0;
}

__n128 sub_21961E7FC@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BEC964();
  sub_21961E88C(a1, v7);
  *&v6[55] = v7[3];
  *&v6[39] = v7[2];
  *&v6[23] = v7[1];
  *&v6[7] = v7[0];
  *(a2 + 33) = *&v6[16];
  result = *&v6[32];
  *(a2 + 49) = *&v6[32];
  *(a2 + 65) = *&v6[48];
  *a2 = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 80) = *&v6[63];
  *(a2 + 17) = *v6;
  return result;
}

double sub_21961E88C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v49 = a2;
  v3 = sub_219BEC6D4();
  v50 = *(v3 - 8);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v44 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEC8F4();
  MEMORY[0x28223BE20](v5 - 8);
  sub_219BEC8E4();
  sub_219BEC8D4();
  v54 = a1;
  sub_219BEC8C4();
  sub_219BEC8D4();
  sub_219BEC914();
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27CC12B98;
  v7 = sub_219BECD94();
  v9 = v8;
  v11 = v10;
  sub_219BECCA4();
  v12 = sub_219BECD74();
  v14 = v13;
  v16 = v15;

  sub_2189A0BC8(v7, v9, v11 & 1);

  v53 = sub_219BECAA4();
  v17 = sub_219BECD54();
  v47 = v18;
  v48 = v17;
  v46 = v19;
  v45 = v20;
  sub_2189A0BC8(v12, v14, v16 & 1);

  sub_219BEC904();
  v21 = sub_219BECD94();
  v23 = v22;
  v25 = v24;
  sub_219BECCA4();
  v26 = sub_219BECD74();
  v28 = v27;
  LOBYTE(v9) = v29;

  sub_2189A0BC8(v21, v23, v25 & 1);

  v30 = v44;
  sub_219BEC6C4();
  v31 = v51;
  v32 = sub_219BECD54();
  v34 = v33;
  LOBYTE(v12) = v35;
  v37 = v36;
  sub_2189A0BC8(v26, v28, v9 & 1);

  (*(v50 + 8))(v30, v31);
  v38 = v45 & 1;
  v52 = v45 & 1;
  LOBYTE(v53) = v45 & 1;
  v55 = v12 & 1;
  v40 = v48;
  v39 = v49;
  v42 = v46;
  v41 = v47;
  *v49 = v48;
  v39[1] = v42;
  *(v39 + 16) = v38;
  v39[3] = v41;
  v39[4] = v32;
  v39[5] = v34;
  *(v39 + 48) = v12 & 1;
  v39[7] = v37;
  sub_219332B50(v40, v42, v38);

  sub_219332B50(v32, v34, v12 & 1);

  sub_2189A0BC8(v32, v34, v12 & 1);

  sub_2189A0BC8(v40, v42, v52);

  return result;
}

uint64_t sub_21961ED0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  sub_219620724(0);
  a3(0);
  sub_21961FDB8(255);
  sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
  swift_getOpaqueTypeConformance2();
  sub_219621E04(a4, a5, MEMORY[0x277CDDF68]);
  return sub_219BECED4();
}

uint64_t sub_21961EE28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  sub_21962109C(0, &qword_27CC1D400, sub_21962111C, sub_21962123C);
  v4 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v27 - v5;
  sub_21962123C(0);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BECA44();
  MEMORY[0x28223BE20](v9 - 8);
  sub_21962111C(0);
  v30 = v10;
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v29 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  sub_219BECA14();
  v37 = a1;
  sub_219621D08(0, &qword_27CC1D410, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
  sub_2196211B8();
  v28 = v15;
  sub_219BEC634();
  sub_219BECA24();
  v36 = a1;
  sub_219BEC634();
  sub_219BECA34();
  v35 = a1;
  sub_2196212D0(0);
  sub_219621E04(&qword_27CC1D480, sub_2196212D0, MEMORY[0x277CE11A8]);
  sub_219BEC764();
  v16 = *(v4 + 48);
  v17 = *(v4 + 64);
  v18 = v11;
  v19 = *(v11 + 16);
  v20 = v30;
  v21 = v31;
  v19(v31, v15, v30);
  v22 = v29;
  v19(&v21[v16], v29, v20);
  v24 = v32;
  v23 = v33;
  (*(v32 + 16))(&v21[v17], v8, v33);
  sub_219BEC994();
  (*(v24 + 8))(v8, v23);
  v25 = *(v18 + 8);
  v25(v22, v20);
  return (v25)(v28, v20);
}

uint64_t sub_21961F244(uint64_t a1)
{
  type metadata accessor for RecipeFilterView(0);
  swift_getKeyPath();
  sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    sub_219A56A70();
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21961F32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for RecipeFilterView(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  sub_2196223E4(a1, &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = swift_allocObject();
  sub_21962237C(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8, type metadata accessor for RecipeFilterView);
  return sub_219BECFE4();
}

uint64_t sub_21961F490@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  *a2 = sub_219BED0E4();
  a2[1] = v4;
  sub_2196220C4(0, &qword_27CC1D4B8, sub_219621364, MEMORY[0x277CDF7C8], MEMORY[0x277CDF7C0]);
  return sub_21961F500(a1, a2 + *(v5 + 44));
}

uint64_t sub_21961F500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_219BEC8F4();
  MEMORY[0x28223BE20](v4 - 8);
  sub_21962142C(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  *v10 = sub_219BEC8A4();
  *(v10 + 1) = 0;
  v10[16] = 1;
  sub_2196220C4(0, &qword_27CC1D4C0, sub_2196214C0, MEMORY[0x277CDF740], MEMORY[0x277CDF738]);
  sub_21961F978(a1, &v10[*(v11 + 44)]);
  v12 = *(a1 + *(type metadata accessor for RecipeFilterView(0) + 20));
  swift_getKeyPath();
  v39 = v12;
  sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  if ((*(v12 + 40) & 1) == 0)
  {
    v36 = v7;
    v37 = a2;
    v17 = *(v12 + 32);
    sub_219BEC8E4();
    sub_219BEC8D4();
    v39 = v17;
    sub_219BEC8C4();
    sub_219BEC8D4();
    sub_219BEC914();
    if (qword_27CC07F68 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v18 = qword_27CC12B98;
    v19 = sub_219BECD94();
    v21 = v20;
    v23 = v22;
    sub_219BECCB4();
    v24 = sub_219BECD74();
    v26 = v25;
    v28 = v27;

    sub_2189A0BC8(v19, v21, v23 & 1);

    v38 = sub_219BECAA4();
    v13 = sub_219BECD54();
    v14 = v29;
    LOBYTE(v21) = v30;
    v16 = v31;
    sub_2189A0BC8(v24, v26, v28 & 1);

    v15 = v21 & 1;
    sub_219332B50(v13, v14, v21 & 1);

    v7 = v36;
    a2 = v37;
  }

  sub_2196223E4(v10, v7, sub_21962142C);
  sub_2196223E4(v7, a2, sub_21962142C);
  sub_219621398(0);
  v33 = (a2 + *(v32 + 48));
  sub_219621E4C(v13, v14, v15, v16);
  sub_219621E90(v13, v14, v15, v16);
  *v33 = v13;
  v33[1] = v14;
  v33[2] = v15;
  v33[3] = v16;
  sub_219622544(v10, sub_21962142C);
  sub_219621E90(v13, v14, v15, v16);
  return sub_219622544(v7, sub_21962142C);
}

uint64_t sub_21961F978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RecipeFilterView(0);
  v5 = v4 - 8;
  v6 = *(v4 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v4);
  sub_21962155C(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v24 - v13;
  sub_2196223E4(a1, &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecipeFilterView);
  v15 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v16 = swift_allocObject();
  sub_21962237C(&v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for RecipeFilterView);
  sub_219BECFE4();
  v17 = *(a1 + *(v5 + 28));
  swift_getKeyPath();
  v25 = v17;
  sub_219621E04(&qword_27CC0B228, type metadata accessor for RecipeFilterViewModel, &unk_219C0A6C8);
  sub_219BDC204();

  v25 = *(v17 + 24);
  LOBYTE(a1) = RecipeFilterSelection.isEmpty.getter();
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  *(v19 + 16) = a1 & 1;
  v20 = &v14[*(v9 + 44)];
  *v20 = KeyPath;
  v20[1] = sub_219621ED4;
  v20[2] = v19;
  sub_2196223E4(v14, v11, sub_21962155C);
  sub_2196223E4(v11, a2, sub_21962155C);
  sub_2196214F4(0);
  v22 = a2 + *(v21 + 48);
  *v22 = 0;
  *(v22 + 8) = 1;
  sub_219622544(v14, sub_21962155C);
  return sub_219622544(v11, sub_21962155C);
}

uint64_t sub_21961FCC4@<X0>(uint64_t a5@<X8>)
{
  sub_219BEC904();
  if (qword_27CC07F68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = qword_27CC12B98;
  result = sub_219BECD94();
  *a5 = result;
  *(a5 + 8) = v8;
  *(a5 + 16) = v9 & 1;
  *(a5 + 24) = v10;
  return result;
}

void sub_21961FDB8(uint64_t a1)
{
  if (!qword_27CC1D298)
  {
    sub_21961FEDC(255);
    sub_21961FFE0(255);
    sub_219620D6C(255, &qword_27CC1D338, sub_21961FFE0);
    sub_219621E04(&qword_27CC1D340, sub_21961FFE0, MEMORY[0x277CE1198]);
    sub_219620658();
    swift_getOpaqueTypeConformance2();
    v1 = sub_219BEC5D4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D298);
    }
  }
}

void sub_21961FEDC(uint64_t a1)
{
  if (!qword_27CC1D2A0)
  {
    sub_21961FFE0(255);
    sub_219620D6C(255, &qword_27CC1D338, sub_21961FFE0);
    sub_219621E04(&qword_27CC1D340, sub_21961FFE0, MEMORY[0x277CE1198]);
    sub_219620658();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC1D2A0);
    }
  }
}

void sub_21961FFE0(uint64_t a1)
{
  if (!qword_27CC1D2A8)
  {
    sub_219620074(255);
    sub_219621E04(&qword_27CC1D330, sub_219620074, MEMORY[0x277CE14C0]);
    v1 = sub_219BED034();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D2A8);
    }
  }
}

void sub_2196200A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21962010C(uint64_t a1)
{
  if (!qword_27CC1D2B8)
  {
    sub_219621D08(255, &qword_27CC1D2C0, MEMORY[0x277CE1180], MEMORY[0x277CDF688], MEMORY[0x277CDFAB8]);
    sub_2196201A8(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D2B8);
    }
  }
}

void sub_2196201A8(uint64_t a1)
{
  if (!qword_27CC1D2C8)
  {
    sub_21962020C(255);
    sub_219620360();
    v1 = sub_219BEC5C4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D2C8);
    }
  }
}

void sub_21962020C(uint64_t a1)
{
  if (!qword_27CC1D2D0)
  {
    sub_219621614(255, &qword_27CC1D2D8, &type metadata for RecipeFilterViewModel.Section, MEMORY[0x277D83940]);
    sub_219622270(255, &qword_27CC1D2E0, MEMORY[0x277CE0338]);
    sub_2196202E4();
    v1 = sub_219BED084();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D2D0);
    }
  }
}

unint64_t sub_2196202E4()
{
  result = qword_27CC1D2F8;
  if (!qword_27CC1D2F8)
  {
    sub_219621614(255, &qword_27CC1D2D8, &type metadata for RecipeFilterViewModel.Section, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D2F8);
  }

  return result;
}

unint64_t sub_219620360()
{
  result = qword_27CC1D300;
  if (!qword_27CC1D300)
  {
    sub_21962020C(255);
    sub_2196203D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D300);
  }

  return result;
}

unint64_t sub_2196203D8()
{
  result = qword_27CC1D308;
  if (!qword_27CC1D308)
  {
    sub_219622270(255, &qword_27CC1D2E0, MEMORY[0x277CE0338]);
    sub_219620474();
    sub_219620594();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D308);
  }

  return result;
}

unint64_t sub_219620474()
{
  result = qword_27CC1D310;
  if (!qword_27CC1D310)
  {
    sub_219622314(255, &qword_27CC1D2E8, MEMORY[0x277CE0338]);
    sub_219620540();
    sub_219621E04(&qword_27CC1D320, type metadata accessor for RecipeFilterTagCapsulesSectionView, &unk_219C0E3D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D310);
  }

  return result;
}

unint64_t sub_219620540()
{
  result = qword_27CC1D318;
  if (!qword_27CC1D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D318);
  }

  return result;
}

unint64_t sub_219620594()
{
  result = qword_27CC1D328;
  if (!qword_27CC1D328)
  {
    sub_21962220C(255, &qword_27CC1D2F0, MEMORY[0x277CE0338]);
    sub_219621E04(&qword_27CC1D320, type metadata accessor for RecipeFilterTagCapsulesSectionView, &unk_219C0E3D4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D328);
  }

  return result;
}

unint64_t sub_219620658()
{
  result = qword_27CC1D348;
  if (!qword_27CC1D348)
  {
    sub_219620D6C(255, &qword_27CC1D338, sub_21961FFE0);
    sub_219621E04(&qword_27CC1D340, sub_21961FFE0, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D348);
  }

  return result;
}

void sub_219620724(uint64_t a1)
{
  if (!qword_27CC1D350)
  {
    sub_21961FDB8(255);
    sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC1D350);
    }
  }
}

void sub_2196207D8()
{
  if (!qword_27CC1D360)
  {
    sub_219620724(255);
    sub_219620F28(255, &qword_27CC1D368, sub_219620A2C, &qword_27CC1D3E8, sub_219620A2C);
    sub_219620F28(255, &qword_27CC1D3F0, sub_219621060, &qword_27CC1D488, sub_219621060);
    sub_21961FDB8(255);
    sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    sub_219620A2C(255);
    v0 = MEMORY[0x277CDDF68];
    sub_219621E04(&qword_27CC1D3E8, sub_219620A2C, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_219621060(255);
    sub_219621E04(&qword_27CC1D488, sub_219621060, v0);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC1D360);
    }
  }
}

void sub_219620A68(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_21962109C(255, a3, a4, a5);
    v6 = sub_219BEC984();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219620AC4(uint64_t a1)
{
  if (!qword_27CC1D380)
  {
    sub_219620B64(255);
    sub_219621E04(&qword_27CC1D398, sub_219620B64, MEMORY[0x277CDF028]);
    v1 = sub_219BEC644();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D380);
    }
  }
}

void sub_219620B64(uint64_t a1)
{
  if (!qword_27CC1D388)
  {
    sub_219BEC8B4();
    sub_219621E04(&qword_27CC1D390, MEMORY[0x277CDDE30], MEMORY[0x277CDDE28]);
    v1 = sub_219BED004();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D388);
    }
  }
}

void sub_219620C2C(uint64_t a1)
{
  if (!qword_27CC1D3A8)
  {
    sub_219620CE0(255);
    sub_219621E04(&qword_27CC1D3E0, sub_219620CE0, MEMORY[0x277CDD7A8]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC1D3A8);
    }
  }
}

void sub_219620CE0(uint64_t a1)
{
  if (!qword_27CC1D3B0)
  {
    sub_219620D6C(255, &qword_27CC1D3B8, sub_219620DC8);
    sub_219620E5C();
    v1 = sub_219BEC644();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D3B0);
    }
  }
}

void sub_219620D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BEC724();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_219620DC8(uint64_t a1)
{
  if (!qword_27CC1D3C0)
  {
    sub_21947134C(255);
    sub_219621E04(&qword_27CC1D3C8, sub_21947134C, MEMORY[0x277CE1198]);
    v1 = sub_219BED004();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D3C0);
    }
  }
}

unint64_t sub_219620E5C()
{
  result = qword_27CC1D3D0;
  if (!qword_27CC1D3D0)
  {
    sub_219620D6C(255, &qword_27CC1D3B8, sub_219620DC8);
    sub_219621E04(&qword_27CC1D3D8, sub_219620DC8, MEMORY[0x277CDF028]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D3D0);
  }

  return result;
}

void sub_219620F28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    sub_219620724(255);
    a3(255);
    sub_21961FDB8(255);
    sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    sub_219621E04(a4, a5, MEMORY[0x277CDDF68]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v10)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_21962109C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_21962111C(uint64_t a1)
{
  if (!qword_27CC1D408)
  {
    sub_219621D08(255, &qword_27CC1D410, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_2196211B8();
    v1 = sub_219BEC644();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D408);
    }
  }
}

unint64_t sub_2196211B8()
{
  result = qword_27CC1D418;
  if (!qword_27CC1D418)
  {
    sub_219621D08(255, &qword_27CC1D410, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D418);
  }

  return result;
}

void sub_21962123C(uint64_t a1)
{
  if (!qword_27CC1D420)
  {
    sub_2196212D0(255);
    sub_219621E04(&qword_27CC1D480, sub_2196212D0, MEMORY[0x277CE11A8]);
    v1 = sub_219BEC774();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D420);
    }
  }
}

void sub_2196212D0(uint64_t a1)
{
  if (!qword_27CC1D428)
  {
    sub_219621364(255);
    sub_219621E04(&qword_27CC1D478, sub_219621364, MEMORY[0x277CE14C0]);
    v1 = sub_219BED044();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D428);
    }
  }
}

void sub_219621398(uint64_t a1)
{
  if (!qword_27CC1D438)
  {
    sub_21962142C(255);
    sub_219621614(255, &qword_27CC1D470, MEMORY[0x277CE0BD8], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D438);
    }
  }
}

void sub_21962142C(uint64_t a1)
{
  if (!qword_27CC1D440)
  {
    sub_2196214C0(255);
    sub_219621E04(&qword_27CC1D468, sub_2196214C0, MEMORY[0x277CE14C0]);
    v1 = sub_219BED014();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D440);
    }
  }
}

void sub_2196214F4(uint64_t a1)
{
  if (!qword_27CC1D450)
  {
    sub_21962155C(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D450);
    }
  }
}

void sub_21962155C(uint64_t a1)
{
  if (!qword_27CC1D458)
  {
    sub_219621D08(255, &qword_27CC1D410, MEMORY[0x277CE0BD8], MEMORY[0x277CE0BC8], MEMORY[0x277CDF020]);
    sub_219621614(255, &qword_27CC1D460, MEMORY[0x277D839B0], MEMORY[0x277CE0898]);
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D458);
    }
  }
}

void sub_219621614(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_219621664()
{
  if (!qword_27CC1D490)
  {
    sub_2196207D8();
    sub_219620724(255);
    sub_219620F28(255, &qword_27CC1D368, sub_219620A2C, &qword_27CC1D3E8, sub_219620A2C);
    sub_219620F28(255, &qword_27CC1D3F0, sub_219621060, &qword_27CC1D488, sub_219621060);
    sub_21961FDB8(255);
    sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    sub_219620A2C(255);
    v0 = MEMORY[0x277CDDF68];
    sub_219621E04(&qword_27CC1D3E8, sub_219620A2C, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_219621060(255);
    sub_219621E04(&qword_27CC1D488, sub_219621060, v0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC1D490);
    }
  }
}

void sub_2196219B4(uint64_t a1)
{
  if (!qword_27CC1D4A0)
  {
    sub_219621A48();
    sub_219621D08(255, &qword_27CC1D4B0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    v1 = sub_219BEC724();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1D4A0);
    }
  }
}

void sub_219621A48()
{
  if (!qword_27CC1D4A8)
  {
    sub_219621664();
    sub_2196207D8();
    sub_219620724(255);
    sub_219620F28(255, &qword_27CC1D368, sub_219620A2C, &qword_27CC1D3E8, sub_219620A2C);
    sub_219620F28(255, &qword_27CC1D3F0, sub_219621060, &qword_27CC1D488, sub_219621060);
    sub_21961FDB8(255);
    sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    sub_219620A2C(255);
    v0 = MEMORY[0x277CDDF68];
    sub_219621E04(&qword_27CC1D3E8, sub_219620A2C, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_219621060(255);
    sub_219621E04(&qword_27CC1D488, sub_219621060, v0);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_27CC1D4A8);
    }
  }
}

void sub_219621D08(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219621E04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_219621E4C(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_219332B50(a1, a2, a3 & 1);
  }

  return result;
}

double sub_219621E90(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a4)
  {
    sub_2189A0BC8(a1, a2, a3 & 1);
  }

  return result;
}

uint64_t sub_219622050(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RecipeFilterView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

void sub_2196220C4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_219BEC6A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219622138@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for RecipeFilterView(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_21961CFB8(a1, v6, a2);
}

unint64_t sub_2196221B8()
{
  result = qword_27CC1D4D0;
  if (!qword_27CC1D4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D4D0);
  }

  return result;
}

void sub_21962220C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeFilterTagCapsulesSectionView(255);
    v7 = a3(a1, v6, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_219622270(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = MEMORY[0x277CE0338];
    sub_219622314(255, &qword_27CC1D2E8, MEMORY[0x277CE0338]);
    v8 = v7;
    sub_21962220C(255, &qword_27CC1D2F0, v6);
    v10 = a3(a1, v8, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

void sub_219622314(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for RecipeFilterTagCapsulesSectionView(255);
    v7 = a3(a1, &type metadata for RecipeFilterDurationsSectionView, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21962237C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2196223E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21962244C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, void))
{
  v6 = a4(0, a3, MEMORY[0x277CE0338]);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_2196224CC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void, uint64_t, void))
{
  v4 = a3(0, a2, MEMORY[0x277CE0338]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219622544(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_10Tm_1()
{
  v1 = *(type metadata accessor for RecipeFilterView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  sub_2196200A8(0, &unk_27CC22C50, MEMORY[0x277CDF3E0], MEMORY[0x277CDF458]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v3 = sub_219BEC614();
    (*(*(v3 - 8) + 8))(v0 + v2, v3);
  }

  else
  {
  }

  return swift_deallocObject();
}

unint64_t sub_219622794()
{
  result = qword_27CC1D4F0;
  if (!qword_27CC1D4F0)
  {
    sub_2196219B4(255);
    sub_219621664();
    sub_2196207D8();
    sub_219620724(255);
    sub_219620F28(255, &qword_27CC1D368, sub_219620A2C, &qword_27CC1D3E8, sub_219620A2C);
    sub_219620F28(255, &qword_27CC1D3F0, sub_219621060, &qword_27CC1D488, sub_219621060);
    sub_21961FDB8(255);
    sub_219621E04(&qword_27CC1D358, sub_21961FDB8, MEMORY[0x277CDD6E0]);
    swift_getOpaqueTypeConformance2();
    sub_219620A2C(255);
    v1 = MEMORY[0x277CDDF68];
    sub_219621E04(&qword_27CC1D3E8, sub_219620A2C, MEMORY[0x277CDDF68]);
    swift_getOpaqueTypeConformance2();
    sub_219621060(255);
    sub_219621E04(&qword_27CC1D488, sub_219621060, v1);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_219622A78();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D4F0);
  }

  return result;
}

unint64_t sub_219622A78()
{
  result = qword_27CC1D4F8;
  if (!qword_27CC1D4F8)
  {
    sub_219621D08(255, &qword_27CC1D4B0, MEMORY[0x277CE0F78], MEMORY[0x277CE0F60], MEMORY[0x277CE0718]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D4F8);
  }

  return result;
}

uint64_t type metadata accessor for SavedFeedEngagementBlueprintModifier(uint64_t a1)
{
  result = qword_280E9AA40;
  if (!qword_280E9AA40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219622B80(uint64_t a1)
{
  sub_219623B94(319, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_219622C1C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v57 = a3;
  v58 = a2;
  v4 = sub_219BE6DF4();
  v56 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219623A44(0, &qword_280EE4B10, MEMORY[0x277D6DF88]);
  v54 = *(v6 - 8);
  v55 = v6;
  MEMORY[0x28223BE20](v6);
  v52 = &v45 - v7;
  sub_218A75210(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v45 - v12;
  sub_219623A44(0, &qword_280EE5790, MEMORY[0x277D6D710]);
  v15 = v14;
  v16 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v59 = &v45 - v20;
  sub_219623A44(0, &qword_280EE3668, MEMORY[0x277D6EC60]);
  v22 = v21;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v45 - v24;
  v51 = v26;
  v27 = *(v26 + 16);
  v60 = a1;
  v27(&v45 - v24, a1, v22, v23);
  sub_2196233BC(v13);
  v28 = v16;
  v29 = *(v16 + 48);
  if (v29(v13, 1, v15) == 1)
  {
    sub_219623B38(v13);
    swift_bridgeObjectRelease_n();

    sub_219BEB214();

    v30 = v56;
    v31 = v53;
    (*(v56 + 104))(v53, *MEMORY[0x277D6D868], v4);
    type metadata accessor for SavedFeedSectionDescriptor(0);
    type metadata accessor for SavedFeedModel(0);
    v32 = v4;
    sub_219623BF8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    sub_219623BF8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    sub_219623BF8(&unk_280EBA590, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85AB4);
    v33 = v52;
    sub_219BE85E4();
    (*(v30 + 8))(v31, v32);
    v58(v33);
    (*(v54 + 8))(v33, v55);
    v34 = v22;
    v35 = v25;
  }

  else
  {
    v46 = v18;
    v47 = v25;
    v49 = v4;
    v36 = *(v28 + 32);
    v36(v59, v13, v15);
    v50 = v28;
    sub_219BE6944();
    sub_219BEB354();

    v37 = v29(v10, 1, v15);
    v48 = v22;
    if (v37 == 1)
    {
      sub_219623B38(v10);
      v38 = v47;
      sub_219BEB224();
    }

    else
    {
      v39 = v46;
      v36(v46, v10, v15);
      v38 = v47;
      sub_219BEB234();
      (*(v50 + 8))(v39, v15);
    }

    v40 = v56;
    v41 = v53;
    v42 = v49;
    (*(v56 + 104))(v53, *MEMORY[0x277D6D868], v49);
    type metadata accessor for SavedFeedSectionDescriptor(0);
    type metadata accessor for SavedFeedModel(0);
    sub_219623BF8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    sub_219623BF8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    sub_219623BF8(&unk_280EBA590, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85AB4);
    v43 = v52;
    sub_219BE85A4();
    (*(v40 + 8))(v41, v42);
    v58(v43);
    (*(v54 + 8))(v43, v55);
    (*(v50 + 8))(v59, v15);
    v34 = v48;
    v35 = v38;
  }

  return (*(v51 + 8))(v35, v34);
}

uint64_t sub_2196233BC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SavedFeedModel(0);
  MEMORY[0x28223BE20](v4);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A74F28(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for SavedFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v31);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219623B94(0, &qword_280E918A8, MEMORY[0x277D322C0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v29 - v13;
  v15 = sub_219BEEC14();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2195C64E4(v2, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_2195C6578(v14);
    v19 = 1;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    *v11 = 0x656D656761676E65;
    *(v11 + 1) = 0xEA0000000000746ELL;
    *(v11 + 2) = 0;
    *(v11 + 3) = 0xE000000000000000;
    *(v11 + 2) = 0u;
    *(v11 + 3) = 0u;
    *(v11 + 8) = 0;
    swift_storeEnumTagMultiPayload();
    sub_219623B94(0, &unk_280E8BFC0, sub_218A74FF4, MEMORY[0x277D84560]);
    sub_218A74FF4(0);
    v21 = v20;
    v30 = a1;
    v22 = swift_allocObject();
    v29[1] = v9;
    v23 = v22;
    *(v22 + 16) = xmmword_219C09BA0;
    (*(v16 + 16))(v6, v18, v15);
    swift_storeEnumTagMultiPayload();
    sub_219623BF8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    sub_219BE5FB4();
    v24 = sub_219623BF8(&qword_280EE5C48, sub_218A74FF4, MEMORY[0x277D6D408]);
    v25 = sub_219623BF8(&unk_280EE5C50, sub_218A74FF4, MEMORY[0x277D6D3F8]);
    v26 = v24;
    a1 = v30;
    MEMORY[0x21CEB9170](v23, v21, v26, v25);
    sub_219623BF8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    sub_219BE6924();
    (*(v16 + 8))(v18, v15);
    v19 = 0;
  }

  sub_219623A44(0, &qword_280EE5790, MEMORY[0x277D6D710]);
  return (*(*(v27 - 8) + 56))(a1, v19, 1, v27);
}

uint64_t sub_219623900(uint64_t a1)
{
  v2 = sub_219623BF8(qword_280E9AA80, type metadata accessor for SavedFeedEngagementBlueprintModifier, &unk_219C93EB0);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_219623A44(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SavedFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SavedFeedModel(255);
    v8[2] = sub_219623BF8(&qword_280EBA5A0, type metadata accessor for SavedFeedSectionDescriptor, &unk_219C85ADC);
    v8[3] = sub_219623BF8(&unk_280EDBC60, type metadata accessor for SavedFeedModel, &unk_219C73440);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219623B38(uint64_t a1)
{
  sub_218A75210(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_219623B94(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219623BF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_219623C40(uint64_t a1)
{
  v2 = v1;
  __swift_project_boxed_opaque_existential_1((v1 + 24), *(v1 + 48));
  sub_219623D54();
  result = sub_219BE1E34();
  if (v11)
  {
    sub_21875F93C(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    v7 = (*(v6 + 8))(a1, v5, v6);
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v9 = Strong;
      [Strong showViewController:v7 sender:v2];
    }

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_219623D54()
{
  result = qword_280EA4728[0];
  if (!qword_280EA4728[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_280EA4728);
  }

  return result;
}

uint64_t sub_219623DB8()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_219623EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[39] = a4;
  v5[40] = v4;
  v5[37] = a2;
  v5[38] = a3;
  v5[36] = a1;
  sub_219626D00(0);
  v5[41] = v6;
  v5[42] = swift_task_alloc();
  v5[43] = swift_task_alloc();
  sub_218C3F4B4(0);
  v5[44] = v7;
  v5[45] = *(v7 - 8);
  v5[46] = swift_task_alloc();
  sub_219626D6C(0);
  v5[47] = swift_task_alloc();
  v8 = sub_219BE8944();
  v5[48] = v8;
  v5[49] = *(v8 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v9 = sub_219BE8164();
  v5[52] = v9;
  v5[53] = *(v9 - 8);
  v5[54] = swift_task_alloc();
  v5[55] = swift_task_alloc();
  v10 = sub_219BEF974();
  v5[56] = v10;
  v5[57] = *(v10 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v11 = sub_219BF10E4();
  v5[60] = v11;
  v5[61] = *(v11 - 8);
  v5[62] = swift_task_alloc();
  v12 = sub_219BEE074();
  v5[63] = v12;
  v5[64] = *(v12 - 8);
  v5[65] = swift_task_alloc();
  v13 = sub_219BF0634();
  v5[66] = v13;
  v5[67] = *(v13 - 8);
  v5[68] = swift_task_alloc();
  sub_219BEF6B4();
  v5[69] = swift_task_alloc();
  sub_219BEF644();
  v5[70] = swift_task_alloc();
  sub_219BEF664();
  v5[71] = swift_task_alloc();
  sub_219626F24(0, &qword_280E91358, MEMORY[0x277D326A8]);
  v5[72] = swift_task_alloc();
  sub_219626F24(0, &qword_280E91368, MEMORY[0x277D32698]);
  v5[73] = swift_task_alloc();
  v14 = sub_219BEF594();
  v5[74] = v14;
  v5[75] = *(v14 - 8);
  v5[76] = swift_task_alloc();
  sub_219BEF5B4();
  v5[77] = swift_task_alloc();
  sub_219BEF604();
  v5[78] = swift_task_alloc();
  v15 = sub_219BEF694();
  v5[79] = v15;
  v5[80] = *(v15 - 8);
  v5[81] = swift_task_alloc();
  v16 = sub_219BEF6C4();
  v5[82] = v16;
  v5[83] = *(v16 - 8);
  v5[84] = swift_task_alloc();
  sub_219BDCAF4();
  v5[85] = swift_task_alloc();
  v17 = sub_219BDCAE4();
  v5[86] = v17;
  v5[87] = *(v17 - 8);
  v5[88] = swift_task_alloc();
  v18 = sub_219BDCAB4();
  v5[89] = v18;
  v5[90] = *(v18 - 8);
  v5[91] = swift_task_alloc();
  sub_219626F24(0, &unk_280E90C60, MEMORY[0x277D32FE0]);
  v5[92] = swift_task_alloc();
  sub_218B7E0BC(0);
  v5[93] = v19;
  v5[94] = *(v19 - 8);
  v5[95] = swift_task_alloc();
  v5[96] = swift_task_alloc();
  v5[97] = swift_task_alloc();
  sub_219070258(0);
  v5[98] = v20;
  v5[99] = *(v20 - 8);
  v5[100] = swift_task_alloc();
  sub_219626DA8(0);
  v5[101] = v21;
  v5[102] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196246E0, 0, 0);
}

unint64_t sub_2196246E0()
{
  v1 = v0[102];
  v2 = v0[101];
  v3 = MEMORY[0x277D84F90];
  v146 = MEMORY[0x277D84F90];
  v113 = *(v0[99] + 16);
  v113(v0[100], v0[37], v0[98]);
  sub_219626FCC(&qword_27CC1D510, sub_219070258, MEMORY[0x277D6EC68]);
  sub_219BF56A4();
  v4 = *(v2 + 36);
  sub_219626FCC(&qword_27CC15818, sub_219070258, MEMORY[0x277D6EC70]);
  sub_219BF5E84();
  if (*(v1 + v4) != v0[24])
  {
    v142 = (v0[94] + 16);
    do
    {
      v5 = v0[97];
      v6 = sub_219BF5EC4();
      (*v142)(v5);
      v6(v0 + 12, 0);
      sub_219BF5E94();
      sub_2191EFA98(v5);
      sub_219BF5E84();
    }

    while (*(v1 + v4) != v0[24]);
    v3 = v146;
  }

  sub_219627014(v0[102], sub_219626DA8);
  if (*(v3 + 16))
  {
    v7 = v0[92];
    v8 = v0[91];
    v9 = v0[90];
    v143 = v0;
    v10 = v0[89];
    v11 = v0[80];
    v132 = v0[79];
    v136 = v0[81];
    v12 = sub_219BF0BD4();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    (*(v9 + 104))(v8, *MEMORY[0x277D6D178], v10);
    sub_219BE8004();
    sub_219BF6B74();
    sub_219BE8004();
    sub_219BE8044();
    sub_219BE7FD4();
    sub_219BE8064();
    sub_219BE8034();
    sub_219BE7FF4();
    sub_219BE8024();
    sub_219BE8084();
    sub_219BE8014();
    sub_219BEE674();
    sub_219BEE664();
    sub_219BEE654();

    v13 = v0;
    sub_219BDCAC4();
    (*(v11 + 104))(v136, *MEMORY[0x277D326B8], v132);
    sub_219BEF5F4();
    sub_219BF5DF4();
    sub_219BF5E84();
    if (sub_219BF5E74() <= 1)
    {
      (*(v0[75] + 104))(v0[76], *MEMORY[0x277D32680], v0[74]);
    }

    else
    {
      v14 = v0[96];
      v15 = v0[94];
      v16 = v0[93];
      sub_2186D0D8C(0, &qword_280E8B660, MEMORY[0x277D83B88], MEMORY[0x277D84560]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_219C09BA0;
      sub_219BEB364();
      v18 = sub_219BE6A24();
      result = (*(v15 + 8))(v14, v16);
      v20 = v18 - 1;
      if (__OFSUB__(v18, 1))
      {
LABEL_61:
        __break(1u);
        goto LABEL_62;
      }

      v21 = v0[76];
      v22 = v0[75];
      v23 = v0[74];
      *(inited + 32) = v20;
      v24 = sub_2194B4A10(inited);
      swift_setDeallocating();
      *v21 = v24;
      (*(v22 + 104))(v21, *MEMORY[0x277D32688], v23);
    }

    v116 = v0[91];
    v118 = v0[92];
    v133 = v0[90];
    v137 = v0[89];
    v115 = v0[88];
    v125 = v0[87];
    v128 = v0[86];
    v32 = v0[84];
    v120 = v0[83];
    v123 = v0[82];
    v33 = v0[73];
    v34 = v143[72];
    v35 = v143[68];
    v36 = v143[67];
    v114 = v143[66];
    sub_219BEF5A4();
    v37 = sub_219BEF624();
    (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
    v38 = sub_219BEF684();
    (*(*(v38 - 8) + 56))(v34, 1, 1, v38);
    sub_219BEF654();
    sub_219BEF5F4();
    sub_219BEF6A4();

    sub_219BEF5C4();
    (*(v36 + 104))(v35, *MEMORY[0x277D32EC8], v114);
    sub_219BEE0E4();
    (*(v36 + 8))(v35, v114);
    (*(v120 + 8))(v32, v123);
    (*(v125 + 8))(v115, v128);
    (*(v133 + 8))(v116, v137);
    sub_218864E7C(v118, &unk_280E90C60, MEMORY[0x277D32FE0]);
    v39 = sub_219BF5E44();
    v40 = MEMORY[0x277D84F90];
    if (v39)
    {
      v41 = v39;
      v147 = MEMORY[0x277D84F90];
      sub_21870B65C(0, v39 & ~(v39 >> 63), 0);
      v40 = v147;
      result = sub_219BF5DF4();
      if (v41 < 0)
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v42 = v143[94];
      v140 = (v42 + 16);
      v43 = (v42 + 8);
      do
      {
        v44 = v13[95];
        v45 = sub_219BF5EC4();
        (*v140)(v44);
        v45(v143 + 16, 0);
        sub_219BE6934();
        v46 = *(v13 + 824);
        if (*(v13 + 824))
        {
          if (v46 == 1)
          {
            v47 = 0x746E65636572;
          }

          else
          {
            v47 = 0x64616F6C6E776F64;
          }

          if (v46 == 1)
          {
            v48 = 0xE600000000000000;
          }

          else
          {
            v48 = 0xEA00000000006465;
          }
        }

        else
        {
          v48 = 0xEA0000000000776FLL;
          v47 = 0x4E676E6964616572;
        }

        (*v43)(v143[95], v143[93]);
        v50 = *(v147 + 16);
        v49 = *(v147 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_21870B65C((v49 > 1), v50 + 1, 1);
        }

        *(v147 + 16) = v50 + 1;
        v51 = v147 + 16 * v50;
        *(v51 + 32) = v47;
        *(v51 + 40) = v48;
        sub_219BF5E94();
        --v41;
        v13 = v143;
      }

      while (v41);
    }

    v52 = v13[61];
    v53 = v13[62];
    v54 = v13[60];
    v13[28] = v40;
    sub_2186D0D8C(0, &qword_280E8EE20, MEMORY[0x277D837D0], MEMORY[0x277D83940]);
    sub_2189DD328();
    sub_219BF5324();

    (*(v52 + 104))(v53, *MEMORY[0x277D33168], v54);
    sub_219BEDDB4();
    swift_allocObject();
    sub_218953F20(0);
    sub_219626E7C();
    v13[29] = sub_219BEDDA4();
    sub_219626FCC(&qword_27CC1D528, MEMORY[0x277D31E90], MEMORY[0x277D31E88]);
    *(v13 + 1) = 0u;
    *(v13 + 2) = 0u;
    v13[6] = 0;
    sub_219BEE0A4();
    sub_218864E7C((v13 + 2), &qword_280E91020, sub_2189BD704);

    result = sub_219BEE004();
    v141 = *(result + 16);
    if (v141)
    {
      v55 = 0;
      v56 = v13[57];
      v134 = result + ((*(v56 + 80) + 32) & ~*(v56 + 80));
      v138 = v56;
      v124 = (v56 + 32);
      v129 = (v56 + 8);
      v121 = (v56 + 40);
      v57 = MEMORY[0x277D84F98];
      v126 = result;
      while (v55 < *(result + 16))
      {
        v60 = v13[58];
        v59 = v13[59];
        v61 = v13[56];
        v62 = *(v138 + 72);
        v63 = *(v138 + 16);
        v63(v59, v134 + v62 * v55, v61);
        v64 = sub_219BEF8E4();
        v66 = v65;
        v63(v60, v59, v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v148 = v57;
        result = sub_21870F700(v64, v66);
        v69 = v57[2];
        v70 = (v68 & 1) == 0;
        v71 = __OFADD__(v69, v70);
        v72 = v69 + v70;
        if (v71)
        {
          goto LABEL_58;
        }

        v73 = v68;
        if (v57[3] >= v72)
        {
          v75 = v143;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v82 = result;
            sub_2194968AC();
            result = v82;
          }
        }

        else
        {
          sub_219487974(v72, isUniquelyReferenced_nonNull_native);
          result = sub_21870F700(v64, v66);
          v75 = v143;
          if ((v73 & 1) != (v74 & 1))
          {

            return sub_219BF79A4();
          }
        }

        v77 = v75[58];
        v76 = v75[59];
        v78 = v75[56];
        if (v73)
        {
          v58 = result;

          v57 = v148;
          (*v121)(v148[7] + v58 * v62, v77, v78);
          (*v129)(v76, v78);
        }

        else
        {
          v57 = v148;
          v148[(result >> 6) + 8] |= 1 << result;
          v79 = (v148[6] + 16 * result);
          *v79 = v64;
          v79[1] = v66;
          (*v124)(v148[7] + result * v62, v77, v78);
          result = (*v129)(v76, v78);
          v80 = v148[2];
          v71 = __OFADD__(v80, 1);
          v81 = v80 + 1;
          if (v71)
          {
            goto LABEL_59;
          }

          v148[2] = v81;
        }

        ++v55;
        v13 = v143;
        result = v126;
        if (v141 == v55)
        {
          goto LABEL_40;
        }
      }

LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    v57 = MEMORY[0x277D84F98];
LABEL_40:
    v130 = v57;
    v83 = v13[98];
    v84 = v13[55];
    v86 = v13[52];
    v85 = v13[53];
    v144 = v13[51];
    v88 = v13[48];
    v87 = v13[49];
    v0 = v13;
    v89 = v13[47];
    v90 = v0[37];
    v91 = v0[38];

    (*(v85 + 16))(v84, v91, v86);
    (*(v87 + 104))(v144, *MEMORY[0x277D6E078], v88);
    v113(v89, v90, v83);
    v92 = sub_219BF5E44();
    if (v92)
    {
      v93 = v92;
      v149 = MEMORY[0x277D84F90];
      sub_218C37D00(0, v92 & ~(v92 >> 63), 0);
      result = sub_219BF5DF4();
      if (v93 < 0)
      {
LABEL_62:
        __break(1u);
        return result;
      }

      v94 = 0;
      v95 = v0[30];
      v96 = v0[94];
      v145 = v0[41];
      v117 = (v96 + 32);
      v119 = (v96 + 16);
      v122 = v0[45];
      v127 = v93;
      while (1)
      {
        v97 = v0[43];
        v98 = *(v145 + 48);
        v0[31] = v95;
        result = sub_219BF5DF4();
        if (v95 < v0[32])
        {
          break;
        }

        result = sub_219BF5E84();
        if (v95 >= v0[33])
        {
          goto LABEL_56;
        }

        v99 = v0[93];
        v100 = v0[42];
        v139 = v0[40];
        v101 = v0[38];
        v131 = v0[37];
        v135 = v0[46];
        v102 = sub_219BF5EC4();
        (*v119)(v97 + v98);
        v102(v0 + 20, 0);
        *v100 = v94;
        v103 = *(v145 + 48);
        (*v117)(v100 + v103, v97 + v98, v99);
        sub_219625CF8(v94, (v100 + v103), v101, v139, v131, v130, v135);
        sub_219627014(v100, sub_219626D00);
        v105 = *(v149 + 16);
        v104 = *(v149 + 24);
        if (v105 >= v104 >> 1)
        {
          sub_218C37D00((v104 > 1), v105 + 1, 1);
        }

        v106 = v0[46];
        v107 = v0[44];
        ++v94;
        *(v149 + 16) = v105 + 1;
        (*(v122 + 32))(v149 + ((*(v122 + 80) + 32) & ~*(v122 + 80)) + *(v122 + 72) * v105, v106, v107);
        v0[35] = v95;
        sub_219BF5E54();
        v95 = v0[34];
        if (v127 == v94)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

LABEL_48:
    v108 = v0[47];

    sub_219627014(v108, sub_219626D6C);
    v109 = v0[65];
    v110 = v0[63];
    v111 = v0[64];
    type metadata accessor for MyMagazinesLayoutModel(0);
    sub_219626F78();
    sub_219626FCC(&qword_27CC21DD0, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD35B0);
    sub_219BE6564();
    (*(v111 + 8))(v109, v110);
    sub_219BEE0C4();
  }

  else
  {
    v26 = v0[53];
    v25 = v0[54];
    v27 = v0[52];
    v29 = v0[49];
    v28 = v0[50];
    v30 = v0[48];
    v31 = v0[38];

    (*(v26 + 16))(v25, v31, v27);
    (*(v29 + 104))(v28, *MEMORY[0x277D6E078], v30);
    type metadata accessor for MyMagazinesLayoutModel(0);
    sub_219626F78();
    sub_219626FCC(&qword_27CC21DD0, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD35B0);
    sub_219BE6564();
  }

  v112 = v0[1];

  return v112();
}

uint64_t sub_219625CF8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v122 = a6;
  v111 = a5;
  v126 = a2;
  v116 = a7;
  v132 = type metadata accessor for MyMagazinesLayoutModel(0);
  MEMORY[0x28223BE20](v132);
  v130 = &v108 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F5C0(0);
  v129 = v11;
  v131 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v125 = &v108 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_219BEF974();
  v134 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v128 = &v108 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v120 = &v108 - v15;
  MEMORY[0x28223BE20](v16);
  v124 = &v108 - v17;
  sub_218953F20(0);
  v121 = v18;
  v112 = *(v18 - 8);
  MEMORY[0x28223BE20](v18 - 8);
  v135 = &v108 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E0BC(0);
  v127 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20 - 8);
  v123 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B7E028(0);
  v24 = v23;
  MEMORY[0x28223BE20](v23);
  v26 = &v108 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_219BE9FA4();
  v113 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v118 = &v108 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v108 = type metadata accessor for MyMagazinesSectionHeaderSeparatorViewLayoutOptions(0);
  MEMORY[0x28223BE20](v108);
  v30 = &v108 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for MyMagazinesSectionHeaderViewLayoutOptions(0);
  MEMORY[0x28223BE20](v31);
  v117 = &v108 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = v24;
  v115 = v21;
  v114 = v27;
  v109 = v30;
  if (a1)
  {
    sub_219BE7FE4();
    v34 = 1.0 / v33 + 15.0;
  }

  else
  {
    sub_219BE8014();
    v36 = v35;
    sub_219BE7FF4();
    v34 = v36 + v37;
  }

  sub_219BE7FE4();
  v39 = -10.0 / v38;
  v40 = sub_219BE8164();
  v41 = *(*(v40 - 8) + 16);
  v42 = v117;
  v110 = a3;
  v41(v117, a3, v40);
  v43 = v42 + *(v31 + 20);
  *v43 = 0x4024000000000000;
  *(v43 + 8) = v34;
  *(v43 + 16) = v39;
  *(v43 + 24) = 0;
  __swift_project_boxed_opaque_existential_1((a4 + 24), *(a4 + 48));
  v44 = v127;
  sub_219BE6934();
  sub_219584B8C(v136);
  sub_218D2F62C(v42, &v140);

  sub_219BE6934();
  v45 = v139;
  if (v139 && v139 == 1)
  {
    origin = v142.origin;
    size = v142.size;
    MinY = CGRectGetMinY(v142);
    v49 = v143;
    v50 = MinY + v143;
    v144.origin = origin;
    v144.size = size;
    v51 = v39 + CGRectGetHeight(v144) - v49;
    v52 = v109;
    v41(v109, v110, v40);
    v53 = v108;
    *(v52 + *(v108 + 20)) = v50;
    *(v52 + *(v53 + 24)) = v51;
    sub_219BE7FE4();
    v55 = v54;
    sub_219BE7FE4();
    v57 = v56;
    sub_219070258(0);
    sub_219626FCC(&qword_27CC15818, sub_219070258, MEMORY[0x277D6EC70]);
    sub_219BF5DF4();
    sub_219BF5E84();
    if (sub_219BF5E74() <= 1)
    {
      v58 = MEMORY[0x277D84F90];
    }

    else
    {
      sub_2186D0D8C(0, &qword_27CC173B8, &type metadata for MyMagazinesLayoutSectionDescriptor.Supplement, MEMORY[0x277D84560]);
      v58 = swift_allocObject();
      *(v58 + 16) = xmmword_219C09BA0;
      LOBYTE(v136) = 1;
      *(v58 + 32) = -1.0 / v55;
      *(v58 + 40) = v50;
      *(v58 + 48) = 1.0 / v57;
      *(v58 + 56) = v51;
      *(v58 + 104) = 1;
    }

    v63 = v121;
    v44 = v127;
    v65 = v119;
    v66 = v115;
    v68 = v114;
    sub_2186D0D8C(0, &qword_27CC173B8, &type metadata for MyMagazinesLayoutSectionDescriptor.Supplement, MEMORY[0x277D84560]);
    inited = swift_initStackObject();
    v70 = v142.origin;
    v71 = v142.size;
    v72 = v140;
    *(inited + 48) = v141;
    *(inited + 64) = v70;
    *(inited + 80) = v71;
    LOBYTE(v137) = 0;
    *(inited + 96) = v143;
    *(inited + 16) = xmmword_219C09BA0;
    *(inited + 32) = v72;
    *(inited + 104) = 0;
    v136 = v58;
    sub_2191F03C8(inited);
    sub_219627014(v52, type metadata accessor for MyMagazinesSectionHeaderSeparatorViewLayoutOptions);
    v59 = v136;
    v64 = v123;
    v67 = v68;
  }

  else
  {
    sub_2186D0D8C(0, &qword_27CC173B8, &type metadata for MyMagazinesLayoutSectionDescriptor.Supplement, MEMORY[0x277D84560]);
    v59 = swift_allocObject();
    v60 = v142.origin;
    v61 = v142.size;
    v62 = v140;
    *(v59 + 48) = v141;
    *(v59 + 64) = v60;
    *(v59 + 80) = v61;
    LOBYTE(v136) = 0;
    *(v59 + 96) = v143;
    *(v59 + 16) = xmmword_219C09BA0;
    *(v59 + 32) = v62;
    *(v59 + 104) = 0;
    v63 = v121;
    v64 = v123;
    v65 = v119;
    v66 = v115;
    v67 = v114;
  }

  v137 = v59;
  v138 = v45;
  (*(v113 + 104))(v118, *MEMORY[0x277D6E990], v67);
  (*(v66 + 16))(v64, v126, v44);
  sub_219626FCC(&unk_27CC173E0, sub_218B7E0BC, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v73 = *(v65 + 36);
  sub_219626FCC(&qword_27CC0E788, sub_218B7E0BC, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  v74 = *&v26[v73];
  v126 = MEMORY[0x277D84F90];
  v75 = v125;
  v76 = v122;
  if (v74 != v136)
  {
    v87 = (v112 + 16);
    v119 = v134 + 16;
    v88 = (v112 + 8);
    v123 = (v134 + 32);
    v126 = MEMORY[0x277D84F90];
    do
    {
      v89 = sub_219BF5EC4();
      (*v87)(v135);
      v89(&v136, 0);
      sub_219BF5E94();
      v90 = sub_219BE5F84();
      if (*(v76 + 16))
      {
        v92 = sub_21870F700(v90, v91);
        v94 = v93;

        if (v94)
        {
          v95 = *(v76 + 56);
          v96 = v134;
          v97 = *(v134 + 72);
          v98 = v95 + v97 * v92;
          v99 = v63;
          v100 = v120;
          v101 = v133;
          (*(v134 + 16))(v120, v98, v133);
          (*v88)(v135, v99);
          v102 = *(v96 + 32);
          v102(v124, v100, v101);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v75 = v125;
            v103 = v126;
          }

          else
          {
            v103 = sub_2191FB494(0, v126[2] + 1, 1, v126);
            v75 = v125;
          }

          v105 = v103[2];
          v104 = v103[3];
          if (v105 >= v104 >> 1)
          {
            v103 = sub_2191FB494((v104 > 1), v105 + 1, 1, v103);
          }

          v103[2] = v105 + 1;
          v106 = *(v134 + 80);
          v126 = v103;
          v102(v103 + ((v106 + 32) & ~v106) + v105 * v97, v124, v133);
          v76 = v122;
          v63 = v121;
          goto LABEL_21;
        }
      }

      else
      {
      }

      (*v88)(v135, v63);
      v75 = v125;
LABEL_21:
      sub_219BF5E84();
    }

    while (*&v26[v73] != v136);
  }

  sub_219627014(v26, sub_218B7E028);
  v77 = v126[2];
  if (v77)
  {
    v136 = MEMORY[0x277D84F90];
    v78 = v126;
    sub_218C37D50(0, v77, 0);
    v79 = v136;
    v80 = *(v134 + 16);
    v81 = v78 + ((*(v134 + 80) + 32) & ~*(v134 + 80));
    v135 = *(v134 + 72);
    v134 += 16;
    v82 = (v134 - 8);
    v127 = v131 + 32;
    do
    {
      v83 = v128;
      v84 = v133;
      v80(v128, v81, v133);
      v80(v130, v83, v84);
      sub_219626FCC(&qword_27CC0F678, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD3578);
      sub_219BE75D4();
      (*v82)(v83, v84);
      v136 = v79;
      v86 = *(v79 + 16);
      v85 = *(v79 + 24);
      if (v86 >= v85 >> 1)
      {
        sub_218C37D50((v85 > 1), v86 + 1, 1);
        v79 = v136;
      }

      *(v79 + 16) = v86 + 1;
      (*(v131 + 32))(v79 + ((*(v131 + 80) + 32) & ~*(v131 + 80)) + *(v131 + 72) * v86, v75, v129);
      v81 = &v135[v81];
      --v77;
    }

    while (v77);
  }

  sub_219626F78();
  sub_219626FCC(&qword_27CC21DD0, type metadata accessor for MyMagazinesLayoutModel, &unk_219CD35B0);
  sub_219BE81A4();
  return sub_219627014(v117, type metadata accessor for MyMagazinesSectionHeaderViewLayoutOptions);
}

uint64_t sub_219626C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_2187608D4;

  return sub_219623EB8(a1, a2, a3, a4);
}

void sub_219626D00(uint64_t a1)
{
  if (!qword_27CC1D500)
  {
    sub_218B7E0BC(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1D500);
    }
  }
}

void sub_219626DE4(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_219070258(255);
    v11 = v10;
    v12 = sub_219626FCC(a3, sub_219070258, a4);
    v13 = a5(a1, v11, v12);
    if (!v14)
    {
      atomic_store(v13, a2);
    }
  }
}

unint64_t sub_219626E7C()
{
  result = qword_27CC1D520;
  if (!qword_27CC1D520)
  {
    sub_218953F20(255);
    sub_219626FCC(&qword_27CC21EF0, type metadata accessor for MyMagazinesModel, &unk_219C3BAD0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D520);
  }

  return result;
}

void sub_219626F24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_219626F78()
{
  result = qword_27CC1D530;
  if (!qword_27CC1D530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D530);
  }

  return result;
}

uint64_t sub_219626FCC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219627014(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *sub_2196270EC(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  sub_2189522EC(0);
  v37 = v3;
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3);
  v35 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE60C4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for SportsManagementLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189523D8(0);
  sub_219BE8184();
  v16 = *(v15 + 3);
  v38[2] = *(v15 + 2);
  v38[3] = v16;
  v39 = *(v15 + 8);
  v17 = *(v15 + 1);
  v38[0] = *v15;
  v38[1] = v17;
  sub_218D57484(0);
  sub_218A52EFC(&v15[*(v18 + 48)], v12);
  sub_218D57584(0);
  v19 = sub_219BF5F94();
  v20 = sub_219BE5804();
  (*(v7 + 104))(v9, *MEMORY[0x277D6D4D0], v6);
  sub_219BE60E4();

  v21 = [v19 backgroundView];
  if (v21)
  {
    v22 = v21;
    v23 = [objc_opt_self() clearColor];
    [v22 setBackgroundColor_];
  }

  __swift_project_boxed_opaque_existential_1((v2 + 32), *(v2 + 56));
  v24 = sub_219BE57F4();
  sub_219357FA0(v38, v24, v12);

  v25 = sub_219BE57F4();
  v26 = *&v25[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

  v27 = *&v26[qword_280EDD8D8];
  v28 = swift_allocObject();
  swift_weakInit();
  v29 = v35;
  v30 = v37;
  (*(v4 + 16))(v35, v36, v37);
  v31 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v28;
  (*(v4 + 32))(v32 + v31, v29, v30);

  sub_218967CDC(v38);
  sub_218D57660(v12);
  return v19;
}

double sub_2196274FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = *(*(Strong + OBJC_IVAR____TtC7NewsUI230SportsManagementViewController_eventHandler) + 40);
      ObjectType = swift_getObjectType();
      (*(v5 + 72))(a2, ObjectType, v5);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_21962772C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_219627774()
{
  sub_2189522EC(0);
  v2 = *(v1 - 8);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_2196274FC(v3, v4);
}

uint64_t sub_219627810@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v83 = a2;
  sub_2186F64EC(0);
  v85 = v3;
  v82 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v81 = v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8A90(0);
  MEMORY[0x28223BE20](v5 - 8);
  v79 = v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E3B14(0);
  v76 = v7;
  v75 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v77 = v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v78 = v56 - v10;
  v87 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v87);
  v80 = v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218CE8AB0(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v56 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v84 = v56 - v16;
  sub_218CE8B24(0);
  MEMORY[0x28223BE20](v17 - 8);
  v74 = v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v86 = v56 - v20;
  sub_219628D5C(0, &qword_280E8C958, sub_219628CA4, &type metadata for BestOfBundleMagazineFeedGroupKnobs.Keys, MEMORY[0x277D844C8]);
  v22 = v21;
  v23 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v25 = v56 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219628CA4();
  v26 = v88;
  sub_219BF7B34();
  if (v26)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v70 = v23;
  v72 = 0;
  v88 = v14;
  v73 = a1;
  LOBYTE(v97) = 0;
  sub_2186EC7A0(&qword_280E919C8, sub_2186E3B14, MEMORY[0x277D321B0]);
  v28 = v86;
  v29 = v76;
  sub_219BF7674();
  LOBYTE(v97) = 1;
  sub_218CE8B98();
  sub_219BF7674();
  v68 = v103;
  LOBYTE(v97) = 2;
  sub_219BF7674();
  v67 = v102;
  LOBYTE(v95) = 7;
  sub_219BF7674();
  v66 = v97;
  v65 = v98;
  LOBYTE(v93) = 8;
  sub_219BF7674();
  v64 = v95;
  v63 = v96;
  LOBYTE(v91) = 9;
  sub_219BF7674();
  v61 = v93;
  v60 = v94;
  LOBYTE(v89) = 10;
  sub_219BF7674();
  v57 = v91;
  v56[1] = v92;
  v101 = 3;
  sub_219BF7674();
  v62 = v89;
  v59 = v90;
  v100 = 4;
  sub_219BF7674();
  v58 = v101;
  v99 = 5;
  sub_219BF7674();
  LODWORD(v23) = v100;
  v99 = 6;
  sub_2186EC7A0(&qword_280E91838, sub_2186F64EC, MEMORY[0x277D32328]);
  v71 = v22;
  v69 = v25;
  sub_219BF7674();
  v30 = v74;
  sub_218CE8CA0(v28, v74, sub_218CE8B24);
  v31 = v75;
  v32 = *(v75 + 48);
  if (v32(v30, 1, v29) == 1)
  {
    v56[0] = v23;
    v33 = v29;
    v34 = v87;
    v35 = v70;
    v36 = v78;
    if (qword_280E91AB8 != -1)
    {
      swift_once();
    }

    v37 = __swift_project_value_buffer(v33, qword_280F61818);
    v23 = v77;
    (*(v31 + 16))(v77, v37, v33);
    v38 = v32(v30, 1, v33);
    v39 = v23;
    LOBYTE(v23) = v56[0];
    if (v38 != 1)
    {
      sub_218CE8C40(v30, sub_218CE8B24);
    }
  }

  else
  {
    v39 = v77;
    (*(v31 + 32))(v77, v30, v29);
    v33 = v29;
    v34 = v87;
    v35 = v70;
    v36 = v78;
  }

  v40 = sub_219BEDB04();
  v41 = v79;
  (*(*(v40 - 8) + 56))(v79, 1, 1, v40);
  sub_219BEEA04();
  sub_218CE8C40(v41, sub_218CE8A90);
  (*(v31 + 8))(v39, v33);
  v42 = v80;
  (*(v31 + 32))(v80, v36, v33);
  v43 = v68;
  if (v68 == 3)
  {
    v43 = 0;
  }

  v42[v34[5]] = v43;
  v42[v34[6]] = v67 & 1;
  v44 = 3;
  if (!v59)
  {
    v44 = v62;
  }

  *&v42[v34[7]] = v44;
  v42[v34[8]] = (v58 == 2) | v58 & 1;
  v45 = v42;
  v42[v34[9]] = v23 & 1;
  v46 = v84;
  v47 = v88;
  sub_218CE8CA0(v84, v88, sub_218CE8AB0);
  v48 = v82;
  v49 = *(v82 + 48);
  v50 = v85;
  if (v49(v47, 1, v85) == 1)
  {
    type metadata accessor for MagazineFeedServiceConfig(0);
    sub_2186EC7A0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v51 = v81;
    sub_219BEEC74();
    v52 = v88;
    sub_218CE8C40(v46, sub_218CE8AB0);
    sub_218CE8C40(v86, sub_218CE8B24);
    v35[1](v69, v71);
    v53 = v49(v52, 1, v50);
    v54 = v73;
    v55 = v83;
    if (v53 != 1)
    {
      sub_218CE8C40(v52, sub_218CE8AB0);
    }
  }

  else
  {
    sub_218CE8C40(v46, sub_218CE8AB0);
    sub_218CE8C40(v86, sub_218CE8B24);
    v35[1](v69, v71);
    v51 = v81;
    (*(v48 + 32))(v81, v47, v50);
    v54 = v73;
    v55 = v83;
  }

  (*(v48 + 32))(v45 + *(v87 + 40), v51, v50);
  sub_219628CF8(v45, v55);
  return __swift_destroy_boxed_opaque_existential_1(v54);
}

unint64_t sub_2196283F0(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x73656C7572;
    v7 = 0xD000000000000011;
    v8 = 0xD000000000000010;
    if (a1 != 3)
    {
      v8 = 0xD000000000000017;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0x704F7265746C6966;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x746C754D6B6E6172;
    v2 = 0x72685465726F6373;
    if (a1 != 9)
    {
      v2 = 0x726F635365736162;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000015;
    v4 = 0x6C6F6F706572;
    if (a1 != 6)
    {
      v4 = 0x727563634F78616DLL;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_21962858C(void *a1)
{
  v3 = v1;
  sub_219628D5C(0, &qword_280E8C2D8, sub_219628DC4, &type metadata for BestOfBundleMagazineFeedGroupKnobs.CodingKeys, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219628DC4();
  sub_219BF7B44();
  v19 = 0;
  sub_2186E3B14(0);
  sub_2186EC7A0(&qword_280E919D0, sub_2186E3B14, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v18 = *(v3 + *(type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0) + 20));
    v17 = 1;
    sub_218CE8E28();
    sub_219BF7834();
    v16 = 2;
    sub_219BF7804();
    v15 = 3;
    sub_219BF7824();
    v14 = 4;
    sub_219BF7804();
    v13 = 5;
    sub_219BF7804();
    v12 = 6;
    sub_2186F64EC(0);
    sub_2186EC7A0(&unk_280E91840, sub_2186F64EC, MEMORY[0x277D32320]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2196288BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219629048(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_2196288E4(uint64_t a1)
{
  v2 = sub_219628CA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219628920(uint64_t a1)
{
  v2 = sub_219628CA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21962895C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x704F7265746C6966;
    if (v1 != 1)
    {
      v5 = 0xD000000000000011;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0x73656C7572;
    }
  }

  else
  {
    v2 = 0xD000000000000015;
    if (v1 != 5)
    {
      v2 = 0x6C6F6F706572;
    }

    v3 = 0xD000000000000010;
    if (v1 != 3)
    {
      v3 = 0xD000000000000017;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_219628A50@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_2196293E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219628A78(uint64_t a1)
{
  v2 = sub_219628DC4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219628AB4(uint64_t a1)
{
  v2 = sub_219628DC4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219628B24(uint64_t a1, uint64_t a2)
{
  type metadata accessor for MagazineFeedServiceConfig(0);
  sub_2186EC7A0(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
  if (*&aNone_16[8 * *(a1 + v4[5])] == *&aNone_16[8 * *(a2 + v4[5])])
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v5 = sub_219BF78F4();
    swift_bridgeObjectRelease_n();
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + v4[6]) != *(a2 + v4[6]) || *(a1 + v4[7]) != *(a2 + v4[7]) || *(a1 + v4[8]) != *(a2 + v4[8]) || *(a1 + v4[9]) != *(a2 + v4[9]))
  {
    return 0;
  }

  return sub_219BEEC64();
}

unint64_t sub_219628CA4()
{
  result = qword_280EA1048;
  if (!qword_280EA1048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1048);
  }

  return result;
}

uint64_t sub_219628CF8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BestOfBundleMagazineFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219628D5C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_219628DC4()
{
  result = qword_280EA1070;
  if (!qword_280EA1070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1070);
  }

  return result;
}

unint64_t sub_219628E3C()
{
  result = qword_27CC1D538;
  if (!qword_27CC1D538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D538);
  }

  return result;
}

unint64_t sub_219628E94()
{
  result = qword_27CC1D540;
  if (!qword_27CC1D540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D540);
  }

  return result;
}

unint64_t sub_219628EEC()
{
  result = qword_280EA1060;
  if (!qword_280EA1060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1060);
  }

  return result;
}

unint64_t sub_219628F44()
{
  result = qword_280EA1068;
  if (!qword_280EA1068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1068);
  }

  return result;
}

unint64_t sub_219628F9C()
{
  result = qword_280EA1050;
  if (!qword_280EA1050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1050);
  }

  return result;
}

unint64_t sub_219628FF4()
{
  result = qword_280EA1058;
  if (!qword_280EA1058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA1058);
  }

  return result;
}

uint64_t sub_219629048(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D2AA70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D2AA90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572 || (sub_219BF78F4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x746C754D6B6E6172 && a2 == 0xEE007265696C7069 || (sub_219BF78F4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x72685465726F6373 && a2 == 0xEE00646C6F687365 || (sub_219BF78F4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x726F635365736162 && a2 == 0xE900000000000065)
  {

    return 10;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 10;
    }

    else
    {
      return 11;
    }
  }
}

uint64_t sub_2196293E4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x704F7265746C6966 && a2 == 0xEC0000006E6F6974 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000219D2AA70 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000219CF5000 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000219D2AA90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C6F6F706572 && a2 == 0xE600000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

double sub_219629630(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v7 = *a1;
  v8 = *(a1 + 16);
  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  *(v9 + 32) = v8;
  *(v9 + 40) = v7;
  *(v9 + 48) = a4;
  v10 = v7;
  v11 = a2;

  v12 = a4;
  sub_219BDCD84();

  return result;
}

uint64_t sub_219629714(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, void *a5, uint64_t a6)
{
  v83 = a6;
  v84 = a2;
  v81 = a5;
  v80 = a4;
  v85 = a3;
  v90 = a1;
  sub_21962A2C0(0);
  v87 = *(v6 - 8);
  v88 = v6;
  MEMORY[0x28223BE20](v6);
  v86 = v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x277D83D88];
  sub_21962A3EC(0, &qword_280EE84A8, MEMORY[0x277D2E358], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v9 - 8);
  v82 = v67 - v10;
  v11 = sub_219BE0264();
  v74 = *(v11 - 8);
  v75 = v11;
  MEMORY[0x28223BE20](v11);
  v89 = v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962A3EC(0, &qword_280EE9C18, MEMORY[0x277CC9698], v8);
  MEMORY[0x28223BE20](v13 - 8);
  v73 = v67 - v14;
  v69 = sub_219BDBE14();
  v68 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v16 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BDBE34();
  v71 = *(v17 - 8);
  v72 = v17;
  MEMORY[0x28223BE20](v17);
  v70 = v67 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = v67 - v20;
  sub_21962A3EC(0, &qword_280EE9C20, MEMORY[0x277CC9640], v8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v67 - v23;
  v25 = sub_219BDBD34();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v28 = v67 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_219BDC084();
  v30 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v32 = v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDF204();
  v78 = *(v33 - 8);
  v79 = v33;
  MEMORY[0x28223BE20](v33);
  v76 = v67 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v77 = v67 - v36;
  sub_219BDC074();
  sub_219BDBD24();
  v37 = sub_219BDC044();
  (*(v26 + 8))(v28, v25);
  result = (*(v30 + 8))(v32, v29);
  if (v37 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v37 > 0x7FFFFFFF)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  v67[1] = v37;
  sub_219BDBDF4();
  sub_219BDBE24();
  v39 = v72;
  v40 = *(v71 + 8);
  v40(v21, v72);
  sub_219BDBE04();
  (*(v68 + 8))(v16, v69);
  v41 = sub_219BDBDA4();
  v42 = *(v41 - 8);
  if ((*(v42 + 48))(v24, 1, v41) == 1)
  {
    sub_21962A37C(v24, &qword_280EE9C20, MEMORY[0x277CC9640]);
    v71 = 0;
    v69 = 0;
  }

  else
  {
    v71 = sub_219BDBD94();
    v69 = v43;
    (*(v42 + 8))(v24, v41);
  }

  v44 = v70;
  sub_219BDBDF4();
  v45 = v73;
  sub_219BDBDE4();
  v40(v44, v39);
  v46 = sub_219BDBDD4();
  v47 = *(v46 - 8);
  if ((*(v47 + 48))(v45, 1, v46) == 1)
  {
    sub_21962A37C(v45, &qword_280EE9C18, MEMORY[0x277CC9698]);
    v72 = 0;
    v70 = 0;
  }

  else
  {
    v72 = sub_219BDBD94();
    v70 = v48;
    (*(v47 + 8))(v45, v46);
  }

  v49 = [objc_opt_self() sharedAccount];
  v50 = [v49 isUserSignedInToiCloud];

  v51 = MEMORY[0x277D2E400];
  if (!v50)
  {
    v51 = MEMORY[0x277D2E408];
  }

  (*(v74 + 104))(v89, *v51, v75);
  v52 = v84;
  v53 = *(v84 + OBJC_IVAR____TtC7NewsUI221SportsSessionObserver_cloudContext);
  v54 = [v53 appConfigurationManager];
  swift_getObjectType();
  v75 = sub_219BF6A44();
  swift_unknownObjectRelease();
  v55 = [v53 appConfigurationManager];
  swift_getObjectType();
  v74 = sub_219BF6A54();
  swift_unknownObjectRelease();
  NFStoreDemoMode();
  sub_219BF68D4();
  sub_219BDCF24();
  [v81 authorizationStatus];
  v56 = [objc_allocWithZone(MEMORY[0x277D23658]) init];
  [v56 personalizedAds];

  sub_219BF5EF4();
  __swift_project_boxed_opaque_existential_1((v52 + OBJC_IVAR____TtC7NewsUI221SportsSessionObserver_aggregateStateModeProvider), *(v52 + OBJC_IVAR____TtC7NewsUI221SportsSessionObserver_aggregateStateModeProvider + 24));
  v57 = v82;
  sub_219BE11B4();
  v58 = sub_219BE0114();
  (*(*(v58 - 8) + 56))(v57, 0, 1, v58);

  v59 = v77;
  sub_219BDF1F4();
  v61 = v78;
  v60 = v79;
  (*(v78 + 16))(v76, v59, v79);
  sub_21962A324();
  v62 = v86;
  sub_219BDCBE4();
  sub_21962A3EC(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v63 = sub_219BDCD44();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_219C09BA0;
  (*(v64 + 104))(v66 + v65, *MEMORY[0x277CEAD10], v63);
  sub_219BDCF34();

  (*(v87 + 8))(v62, v88);
  return (*(v61 + 8))(v59, v60);
}

void sub_21962A2C0(uint64_t a1)
{
  if (!qword_280EE8FE8)
  {
    sub_219BDF204();
    sub_21962A324();
    v1 = sub_219BDCBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8FE8);
    }
  }
}

unint64_t sub_21962A324()
{
  result = qword_280EE8820;
  if (!qword_280EE8820)
  {
    sub_219BDF204();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE8820);
  }

  return result;
}

uint64_t sub_21962A37C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_21962A3EC(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_21962A3EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21962A468(uint64_t a1)
{
  v2 = v1;
  sub_218AB7640(0);
  v5 = v4;
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962BF18(0);
  v14 = v13 - 8;
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v12, a1, v9, v15);
  sub_21962BED0(&qword_280EE57E8, sub_218953904, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v18 = *(v14 + 44);
  v19 = v17;
  v20 = sub_21962BED0(&qword_280EE57E0, sub_218953904, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  if (*&v17[v18] == v54[0])
  {
LABEL_2:
    sub_21962C130(v19, sub_21962BF18);
    return;
  }

  v49 = (v53 + 16);
  v50 = (v53 + 8);
  v21 = MEMORY[0x277D84F90];
  v44 = v9;
  v45 = v7;
  v47 = v18;
  v48 = v19;
  v46 = v20;
  v43 = v5;
  while (1)
  {
    v23 = sub_219BF5EC4();
    (*v49)(v7);
    v23(v54, 0);
    sub_219BF5E94();
    sub_21962BA40(&v55);
    if (v2)
    {
      goto LABEL_35;
    }

    (*v50)(v7, v5);
    v19 = v55;
    v24 = v55 >> 62;
    if (v55 >> 62)
    {
      v7 = sub_219BF7214();
    }

    else
    {
      v7 = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = v21 >> 62;
    if (v21 >> 62)
    {
      v41 = sub_219BF7214();
      v27 = &v7[v41];
      if (__OFADD__(v41, v7))
      {
LABEL_34:
        __break(1u);
LABEL_35:
        (*v50)(v7, v5);
        sub_21962C130(v19, sub_21962BF18);

        return;
      }
    }

    else
    {
      v26 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v27 = &v7[v26];
      if (__OFADD__(v26, v7))
      {
        goto LABEL_34;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    v53 = v7;
    if (isUniquelyReferenced_nonNull_bridgeObject)
    {
      if (!v25)
      {
        v29 = v21 & 0xFFFFFFFFFFFFFF8;
        if (v27 <= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_219BF7214();
      goto LABEL_17;
    }

    if (v25)
    {
      goto LABEL_16;
    }

LABEL_17:
    v21 = sub_219BF7364();
    v29 = v21 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v30 = *(v29 + 16);
    v31 = *(v29 + 24);
    if (v24)
    {
      break;
    }

    v32 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v32)
    {
      goto LABEL_4;
    }

LABEL_22:
    if (((v31 >> 1) - v30) < v53)
    {
      goto LABEL_37;
    }

    v51 = v21;
    v52 = 0;
    v33 = v29 + 8 * v30 + 32;
    if (v24)
    {
      if (v32 < 1)
      {
        goto LABEL_39;
      }

      sub_21962C190(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
      sub_21962C1F4();
      for (i = 0; i != v32; ++i)
      {
        v35 = sub_218A352D0(v54, i, v19);
        v37 = *v36;
        swift_unknownObjectRetain();
        (v35)(v54, 0);
        *(v33 + 8 * i) = v37;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v2 = v52;
    v5 = v43;
    v22 = v47;
    v19 = v48;
    v21 = v51;
    if (v53 >= 1)
    {
      v38 = *(v29 + 16);
      v39 = __OFADD__(v38, v53);
      v40 = v38 + v53;
      if (v39)
      {
        goto LABEL_38;
      }

      *(v29 + 16) = v40;
    }

LABEL_5:
    sub_219BF5E84();
    v7 = v45;
    if (*(v19 + v22) == v54[0])
    {
      goto LABEL_2;
    }
  }

  v32 = sub_219BF7214();
  if (v32)
  {
    goto LABEL_22;
  }

LABEL_4:

  v22 = v47;
  v19 = v48;
  if (v53 <= 0)
  {
    goto LABEL_5;
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
}

uint64_t sub_21962AA38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v126 = a2;
  v124 = a3;
  v4 = MEMORY[0x277D83D88];
  sub_21962C190(0, &unk_280EE8380, MEMORY[0x277D2E6C8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v123 = &v110 - v6;
  v7 = sub_219BE16E4();
  v128 = *(v7 - 8);
  v129 = v7;
  MEMORY[0x28223BE20](v7);
  v138 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = type metadata accessor for AudioFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v136);
  v122 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v120 = &v110 - v11;
  MEMORY[0x28223BE20](v12);
  v127 = &v110 - v13;
  MEMORY[0x28223BE20](v14);
  v125 = &v110 - v15;
  v114 = sub_219BF04A4();
  v131 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v117 = &v110 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v115 = v17;
  v119 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v116 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v141);
  v20 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962C190(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], v4);
  MEMORY[0x28223BE20](v21 - 8);
  v121 = &v110 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v139 = &v110 - v24;
  v135 = sub_219BDF584();
  v133 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v137 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v132 = &v110 - v27;
  sub_218AB7640(0);
  v29 = v28;
  v118 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v31 = &v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953904(0);
  v33 = v32;
  v34 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v36 = &v110 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962BF18(0);
  v38 = v37 - 8;
  MEMORY[0x28223BE20](v37);
  v40 = &v110 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962A468(a1);
  v140 = v41;
  v42 = *(v34 + 16);
  v134 = a1;
  v42(v36, a1, v33);
  sub_21962BED0(&qword_280EE57E8, sub_218953904, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v43 = *(v38 + 44);
  sub_21962BED0(&qword_280EE57E0, sub_218953904, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  if (*&v40[v43] != v142)
  {
    v59 = (v118 + 2);
    v60 = (v118 + 1);
    v118 = (v119 + 4);
    v113 = v131 + 8;
    ++v119;
    v131 = MEMORY[0x277D84F90];
    while (1)
    {
      v61 = sub_219BF5EC4();
      (*v59)(v31);
      v61(&v142, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 2)
      {
        break;
      }

      if (EnumCaseMultiPayload == 3)
      {
        goto LABEL_15;
      }

      if (EnumCaseMultiPayload != 4)
      {
        (*v60)(v31, v29);
        sub_2186FB36C(0);
        v68 = *(v67 + 48);
        v69 = sub_219BF1584();
        (*(*(v69 - 8) + 8))(&v20[v68], v69);
        v66 = type metadata accessor for AudioFeedGapLocation;
        goto LABEL_17;
      }

      (*v60)(v31, v29);

      sub_2186F151C(0);
      v64 = type metadata accessor for AudioFeedGapLocation;
      v65 = &v20[*(v63 + 48)];
LABEL_18:
      sub_21962C130(v65, v64);
LABEL_19:
      sub_219BF5E84();
      if (*&v40[v43] == v142)
      {
        goto LABEL_3;
      }
    }

    if (EnumCaseMultiPayload && EnumCaseMultiPayload != 2)
    {
      (*v118)(v116, v20, v115);
      sub_219BF07D4();
      v70 = sub_219BF0404();
      v112 = v70;
      (*v113)(v117, v114);
      v71 = [v70 identifier];
      swift_unknownObjectRelease();
      v112 = sub_219BF5414();
      v111 = v72;

      (*v119)(v116, v115);
      (*v60)(v31, v29);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v131 = sub_218840D24(0, *(v131 + 2) + 1, 1, v131);
      }

      v74 = *(v131 + 2);
      v73 = *(v131 + 3);
      v75 = v74 + 1;
      if (v74 >= v73 >> 1)
      {
        v110 = v74 + 1;
        v79 = sub_218840D24((v73 > 1), v74 + 1, 1, v131);
        v75 = v110;
        v131 = v79;
      }

      v76 = v131;
      *(v131 + 2) = v75;
      v77 = &v76[16 * v74];
      v78 = v111;
      *(v77 + 4) = v112;
      *(v77 + 5) = v78;
      goto LABEL_19;
    }

LABEL_15:
    (*v60)(v31, v29);
    v66 = type metadata accessor for AudioFeedModel;
LABEL_17:
    v64 = v66;
    v65 = v20;
    goto LABEL_18;
  }

  v131 = MEMORY[0x277D84F90];
LABEL_3:
  sub_21962C130(v40, sub_21962BF18);
  v45 = v132;
  v44 = v133;
  v46 = v135;
  (*(v133 + 104))(v132, *MEMORY[0x277D2DB58], v135);
  v47 = sub_219BDF474();
  (*(*(v47 - 8) + 56))(v139, 1, 1, v47);
  v48 = v134;
  result = sub_218E666F8(v134);
  if (v50)
  {
    goto LABEL_62;
  }

  v51 = result;
  v52 = sub_219690110(v126, v48);
  (*(v44 + 16))(v137, v45, v46);
  v53 = v125;
  sub_219BE6934();
  v54 = v127;
  sub_21962BFAC(v53, v127);
  v55 = swift_getEnumCaseMultiPayload();
  v56 = *(v128 + 104);
  v57 = v140;
  if (v55 <= 1)
  {
    if (v55)
    {
      v58 = MEMORY[0x277D2F5D8];
    }

    else
    {
      v58 = MEMORY[0x277D2F5E0];
    }
  }

  else if (v55 == 2)
  {
    v58 = MEMORY[0x277D2F808];
  }

  else
  {
    if (v55 != 3)
    {
      v56(v138, *MEMORY[0x277D2F818], v129);
      goto LABEL_32;
    }

    v58 = MEMORY[0x277D2F800];
  }

  v56(v138, *v58, v129);
  sub_21962C130(v54, type metadata accessor for AudioFeedSectionDescriptor);
LABEL_32:
  v80 = sub_219BE6944();
  if (v51 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_59;
  }

  if (v51 > 0x7FFFFFFF)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v128 = v81;
  LODWORD(v130) = v52;
  if (v57 >> 62)
  {
LABEL_60:
    v109 = v80;
    v82 = sub_219BF7214();
    v80 = v109;
    goto LABEL_36;
  }

  v82 = *((v57 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_36:
  v141 = v51;
  v129 = v80;
  if (!v82)
  {
    goto LABEL_49;
  }

  v142 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v82 & ~(v82 >> 63), 0);
  if ((v82 & 0x8000000000000000) == 0)
  {
    v83 = v142;
    if ((v57 & 0xC000000000000001) != 0)
    {
      v84 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v84, v140);
        v85 = [swift_unknownObjectRetain() articleID];
        v86 = sub_219BF5414();
        v88 = v87;
        swift_unknownObjectRelease_n();

        v142 = v83;
        v90 = *(v83 + 16);
        v89 = *(v83 + 24);
        if (v90 >= v89 >> 1)
        {
          sub_21870B65C((v89 > 1), v90 + 1, 1);
          v83 = v142;
        }

        ++v84;
        *(v83 + 16) = v90 + 1;
        v91 = v83 + 16 * v90;
        *(v91 + 32) = v86;
        *(v91 + 40) = v88;
      }

      while (v82 != v84);
    }

    else
    {
      v92 = v57 + 32;
      do
      {
        v93 = [swift_unknownObjectRetain_n() articleID];
        v94 = sub_219BF5414();
        v96 = v95;
        swift_unknownObjectRelease_n();

        v142 = v83;
        v98 = *(v83 + 16);
        v97 = *(v83 + 24);
        if (v98 >= v97 >> 1)
        {
          sub_21870B65C((v97 > 1), v98 + 1, 1);
          v83 = v142;
        }

        *(v83 + 16) = v98 + 1;
        v99 = v83 + 16 * v98;
        *(v99 + 32) = v94;
        *(v99 + 40) = v96;
        v92 += 8;
        --v82;
      }

      while (v82);
    }

    v46 = v135;
    v45 = v132;
    v44 = v133;
LABEL_49:
    v100 = v120;
    sub_219BE6934();
    v101 = v122;
    sub_21962BFAC(v100, v122);
    v102 = swift_getEnumCaseMultiPayload();
    v103 = v123;
    if (v102 > 2)
    {
      if (v102 == 3)
      {
        v105 = *MEMORY[0x277D2E6B8];
        v106 = sub_219BE0674();
        (*(*(v106 - 8) + 104))(v103, v105, v106);
        sub_21962C130(v101, type metadata accessor for AudioFeedSectionDescriptor);
LABEL_57:
        sub_219BE0674();
        (*(*(v106 - 8) + 56))(v103, 0, 1, v106);
        v108 = v139;
        sub_21962C010(v139, v121);
        sub_219BE15E4();

        sub_21962C0A4(v108);
        return (*(v44 + 8))(v45, v46);
      }
    }

    else
    {
      if (v102 < 2)
      {
        sub_21962C130(v101, type metadata accessor for AudioFeedSectionDescriptor);
        v104 = MEMORY[0x277D2E6A8];
LABEL_56:
        v107 = *v104;
        v106 = sub_219BE0674();
        (*(*(v106 - 8) + 104))(v103, v107, v106);
        goto LABEL_57;
      }

      sub_21962C130(v101, type metadata accessor for AudioFeedSectionDescriptor);
    }

    v104 = MEMORY[0x277D2E6C0];
    goto LABEL_56;
  }

  __break(1u);
LABEL_62:
  __break(1u);
  return result;
}

void sub_21962BA40(uint64_t *a1@<X8>)
{
  v35 = a1;
  v34 = sub_219BDEE04();
  v36 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v2 = v33 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_219BF0F34();
  v37 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AudioFeedModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218AB7640(0);
  sub_219BE5FC4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload == 4)
      {

        sub_2186F151C(0);
        v17 = type metadata accessor for AudioFeedGapLocation;
        v18 = &v13[*(v16 + 48)];
LABEL_14:
        sub_21962C130(v18, v17);
LABEL_15:
        v20 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }

      sub_2186FB36C(0);
      v31 = *(v30 + 48);
      v32 = sub_219BF1584();
      (*(*(v32 - 8) + 8))(&v13[v31], v32);
      v15 = type metadata accessor for AudioFeedGapLocation;
LABEL_13:
      v17 = v15;
      v18 = v13;
      goto LABEL_14;
    }

    v22 = *v13;
    v23 = sub_219BE5B44();
    v24 = *(v23 + 16);
    if (!v24)
    {

      goto LABEL_15;
    }

    v33[2] = v22;
    v38 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v25 = v34;
    v27 = v36 + 16;
    v26 = *(v36 + 16);
    v28 = *(v36 + 80);
    v33[1] = v23;
    v29 = v23 + ((v28 + 32) & ~v28);
    v36 = *(v36 + 72);
    v37 = v26;
    do
    {
      (v37)(v2, v29, v25);
      sub_219BDEDF4();
      (*(v27 - 8))(v2, v25);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v29 += v36;
      --v24;
    }

    while (v24);

    v20 = v38;
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v15 = type metadata accessor for AudioFeedModel;
      goto LABEL_13;
    }

    v19 = v8;
    (*(v8 + 32))(v10, v13, v7);
    sub_218725F94();
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_219C146A0;
    sub_219BF07D4();
    v21 = sub_219BF0F14();
    (*(v37 + 8))(v5, v3);
    *(v20 + 32) = v21;
    (*(v19 + 8))(v10, v7);
  }

LABEL_16:
  *v35 = v20;
}

uint64_t sub_21962BED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_21962BF18(uint64_t a1)
{
  if (!qword_280E8D4E8)
  {
    sub_218953904(255);
    sub_21962BED0(&qword_280EE57E0, sub_218953904, MEMORY[0x277D6D730]);
    v1 = sub_219BF7494();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8D4E8);
    }
  }
}

uint64_t sub_21962BFAC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21962C010(uint64_t a1, uint64_t a2)
{
  sub_21962C190(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21962C0A4(uint64_t a1)
{
  sub_21962C190(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_21962C130(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21962C190(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_21962C1F4()
{
  result = qword_280E8EBE0;
  if (!qword_280E8EBE0)
  {
    sub_21962C190(255, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EBE0);
  }

  return result;
}

uint64_t sub_21962C28C()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8D50);
  __swift_project_value_buffer(v0, qword_27CCD8D50);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_21962C4E4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8D68);
  __swift_project_value_buffer(v0, qword_27CCD8D68);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21962C698()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8D80);
  __swift_project_value_buffer(v0, qword_27CCD8D80);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  sub_218C73534(0);
  v5 = sub_219BF1564();
  v6 = *(v5 - 8);
  v7 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  (*(v6 + 104))(v8 + v7, *MEMORY[0x277D333B0], v5);
  return sub_219BF1514();
}

uint64_t sub_21962C8F0()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8D98);
  __swift_project_value_buffer(v0, qword_27CCD8D98);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21962CAA4()
{
  v0 = sub_219BF1584();
  __swift_allocate_value_buffer(v0, qword_27CCD8DB0);
  __swift_project_value_buffer(v0, qword_27CCD8DB0);
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = objc_opt_self();
  v3 = [v2 bundleForClass_];
  sub_219BDB5E4();

  v4 = [v2 bundleForClass_];
  sub_219BDB5E4();

  return sub_219BF1514();
}

uint64_t sub_21962CD0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v35 = a1;
  sub_218ADCCD0(0);
  v34 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF584();
  v38 = *(v8 - 8);
  v39 = v8;
  MEMORY[0x28223BE20](v8);
  v29 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF2A4();
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEF974();
  v32 = v13;
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for AudioHistoryFeedLayoutModel(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189BD2D0(0);
  sub_219BE75E4();
  (*(v14 + 32))(v16, v19, v13);
  v31 = *(v4 + 40);
  ObjectType = swift_getObjectType();
  sub_219BEF574();
  v20 = swift_allocObject();
  swift_weakInit();
  v22 = v33;
  v21 = v34;
  (*(v6 + 16))(v33, v35, v34);
  v23 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  (*(v6 + 32))(v24 + v23, v22, v21);

  v25 = v29;
  sub_219BEECD4();

  (*(v38 + 8))(v25, v39);

  v26 = sub_219BEF294();
  (*(v36 + 8))(v12, v37);
  (*(v14 + 8))(v16, v32);
  return v26;
}

double sub_21962D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_219BF0894();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_219BEDF44();
    if ((*(v5 + 88))(v7, v4) == *MEMORY[0x277D32F88])
    {
      (*(v5 + 96))(v7, v4);
      v9 = sub_219BF13B4();
      v10 = *(v9 - 8);
      if ((*(v10 + 88))(v7, v9) == *MEMORY[0x277D33328])
      {
        Strong = swift_unknownObjectWeakLoadStrong();
        if (Strong)
        {
          v12 = *(*(Strong + OBJC_IVAR____TtC7NewsUI230AudioHistoryFeedViewController_eventHandler) + 40);
          ObjectType = swift_getObjectType();
          (*(v12 + 56))(a3, ObjectType, v12);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }

      else
      {

        (*(v10 + 8))(v7, v9);
      }
    }

    else
    {

      (*(v5 + 8))(v7, v4);
    }
  }

  return result;
}

uint64_t sub_21962D3F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21962D440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = sub_21962CD0C(a1, a2, *a3, a4);
  *a5 = result;
  return result;
}

double sub_21962D470(uint64_t a1)
{
  sub_218ADCCD0(0);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_21962D108(a1, v4, v5);
}

void sub_21962D4F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BF6FB4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t type metadata accessor for TodayFeedGroupClusteringKnobOverrides(uint64_t a1)
{
  result = qword_280E987F0;
  if (!qword_280E987F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21962D5AC(uint64_t a1)
{
  sub_21962D4F8(319, qword_280E93FD0, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides);
  if (v1 <= 0x3F)
  {
    sub_21962D4F8(319, &qword_280E90FF0, MEMORY[0x277D32BE0]);
    if (v2 <= 0x3F)
    {
      sub_21962D4F8(319, qword_280E949D0, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21962D6A8()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21962D770(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21962D824(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21962D8E8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21962DF90(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21962D918(uint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x6C656E6E616863;
  v4 = 0xED0000736569726FLL;
  v5 = 0x745364657373696DLL;
  if (*v1 != 2)
  {
    v5 = 0x6369706F74;
    v4 = 0xE500000000000000;
  }

  if (*v1)
  {
    v3 = 0x756F59726F66;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

uint64_t sub_21962D99C()
{
  v1 = 0x6C656E6E616863;
  v2 = 0x745364657373696DLL;
  if (*v0 != 2)
  {
    v2 = 0x6369706F74;
  }

  if (*v0)
  {
    v1 = 0x756F59726F66;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_21962DA1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_21962DF90(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21962DA44(uint64_t a1)
{
  v2 = sub_21962DDDC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21962DA80(uint64_t a1)
{
  v2 = sub_21962DDDC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21962DABC(void *a1)
{
  sub_21962DD80(0);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21962DDDC();
  sub_219BF7B34();
  if (!v2)
  {
    type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides(0);
    v15 = 0;
    sub_21962DE30(&qword_280E94018, type metadata accessor for ChannelTodayFeedGroupClusteringKnobOverrides, &unk_219C1A658);
    sub_219BF7674();
    sub_219BF0204();
    v14 = 1;
    type metadata accessor for TodayFeedGroupClusteringKnobOverrides(0);
    sub_21962DE30(&qword_280E90FF8, MEMORY[0x277D32BE0], MEMORY[0x277D32BF0]);
    v11 = v6;
    sub_219BF7674();
    v13 = 2;
    sub_219BF7674();
    type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides(0);
    v12 = 3;
    sub_21962DE30(&qword_280E94A30, type metadata accessor for TopicTodayFeedGroupClusteringKnobOverrides, &protocol conformance descriptor for TopicTodayFeedGroupClusteringKnobOverrides);
    sub_219BF7674();
    (*(v11 + 8))(v8, v5);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_21962DD80(uint64_t a1)
{
  if (!qword_280E8C7A8)
  {
    sub_21962DDDC();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8C7A8);
    }
  }
}

unint64_t sub_21962DDDC()
{
  result = qword_280E98818;
  if (!qword_280E98818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98818);
  }

  return result;
}

uint64_t sub_21962DE30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_21962DE8C()
{
  result = qword_27CC1D548;
  if (!qword_27CC1D548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D548);
  }

  return result;
}

unint64_t sub_21962DEE4()
{
  result = qword_280E98808;
  if (!qword_280E98808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98808);
  }

  return result;
}

unint64_t sub_21962DF3C()
{
  result = qword_280E98810;
  if (!qword_280E98810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98810);
  }

  return result;
}

unint64_t sub_21962DF90(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21962DFDC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = a3;
  sub_21962EF4C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962EF80(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B6AF30(0);
  MEMORY[0x28223BE20](v10 - 8);
  v51 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v12);
  sub_2186DCF58(0);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v45 - v17;
  sub_21962F0D4(0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v45 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = a1;
  sub_219BF09A4();
  v22 = v54;
  if (v54)
  {
    sub_219BEF164();
    v49 = v54;
    v54 = 0;
    v23 = sub_219BEDA64();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = sub_219BDBD34();
    v25 = *(*(v24 - 8) + 56);
    v47 = v6;
    v25(v18, 1, 1, v24);
    v48 = v15;
    v25(v15, 1, 1, v24);
    v26 = *(v49 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 16);
    v27 = *(v49 + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_headlines + 24);
    v45[1] = v22;
    v28 = swift_allocObject();
    v46 = v9;
    *(v28 + 16) = v26;
    *(v28 + 24) = v27;

    v29 = sub_219BE2E54();
    sub_219BE2F74();

    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    swift_weakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v30;
    *(v32 + 24) = v31;
    v53 = MEMORY[0x277D84F90];
    sub_2186EC908(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
    sub_218A4E214(0);
    sub_2186EC908(&qword_280E8F600, sub_218A4E214, MEMORY[0x277D83970]);
    sub_219BF7164();
    sub_21962EFB4(0, &qword_280EE7180, sub_218DDC784, MEMORY[0x277D6CEE8]);
    swift_allocObject();
    sub_219BE2D14();

    v33 = sub_219BE2E54();
    v34 = sub_219BE2F74();

    type metadata accessor for MagazineFeedPool();
    v35 = swift_allocObject();
    *(v35 + 16) = v34;
    v53 = v35;
    v36 = sub_219BF0BD4();
    v37 = v51;
    (*(*(v36 - 8) + 56))(v51, 1, 1, v36);
    sub_21962F018(0);
    v39 = v46;
    (*(*(v38 - 8) + 56))(v46, 1, 1, v38);
    v40 = sub_219BEDC14();
    v41 = v47;
    (*(*(v40 - 8) + 56))(v47, 1, 1, v40);
    v42 = v48;
    v43 = sub_219BF0984();

    sub_21962F198(v41, sub_21962EF4C);
    sub_21962F198(v39, sub_21962EF80);
    sub_21962F198(v37, sub_218B6AF30);

    sub_21962F198(v42, sub_2186DCF58);
    sub_21962F198(v18, sub_2186DCF58);
    sub_21962F198(v21, sub_21962F0D4);
  }

  else
  {
    v43 = v52;
  }

  return v43;
}

uint64_t sub_21962E764@<X0>(uint64_t *a3@<X8>)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    goto LABEL_5;
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {

LABEL_5:
    v7 = sub_219BE1D94();
    sub_2186EC908(&qword_27CC0B2F0, MEMORY[0x277D6CAF0], MEMORY[0x277D6CAF8]);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277D6CAE0], v7);
    sub_218DDC784(0);
    swift_allocObject();
    result = sub_219BE2FF4();
    v5 = result;
    goto LABEL_6;
  }

  sub_21962EFB4(0, &qword_280E8ED70, sub_2189F1D78, MEMORY[0x277D83940]);
  sub_219BE3204();

  v4 = sub_219BE2E54();
  sub_21962F12C();
  v5 = sub_219BE2F74();

LABEL_6:
  *a3 = v5;
  return result;
}

void sub_21962E974(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X8>)
{
  v3 = a2;
  v5 = *a1;
  v6 = *(a2 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_cloudContext);
  v7 = [objc_msgSend(v6 configurationManager)];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_40:
    __break(1u);
    return;
  }

  v8 = [objc_opt_self() transformationWithFilterOptions:0x140220128 configuration:v7 context:v6];
  swift_unknownObjectRelease();
  if (v5 >> 62)
  {
    goto LABEL_34;
  }

  sub_219BF7924();
  sub_218FD28CC();
  while (1)
  {
    sub_218FD28CC();
    v9 = sub_219BF5904();

    v10 = [v8 transformFeedItems_];

    v11 = sub_219BF5924();
    v12 = sub_218B0C6F8(v11);

    v13 = MEMORY[0x277D84F90];
    v14 = v12 ? v12 : MEMORY[0x277D84F90];
    v15 = v14;
    if (v14 >> 62)
    {
      break;
    }

    v16 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_36;
    }

LABEL_9:
    sub_218C355D0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v33 = v8;
    v34 = a3;
    a3 = 0;
    v37 = v15;
    v38 = (v3 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_historyService);
    v17 = v15;
    v39 = v15 & 0xC000000000000001;
    v8 = v13;
    v35 = v15 & 0xFFFFFFFFFFFFFF8;
    v36 = v16;
    while (1)
    {
      v18 = a3 + 1;
      if (__OFADD__(a3, 1))
      {
        break;
      }

      if (v39)
      {
        v19 = MEMORY[0x21CECE0F0](a3, v17);
      }

      else
      {
        if (a3 >= *(v35 + 16))
        {
          goto LABEL_33;
        }

        v19 = *(v17 + 8 * a3 + 32);
      }

      v20 = v19;
      v21 = *__swift_project_boxed_opaque_existential_1(v38, v38[3]);
      v22 = [v20 articleID];
      if (!v22)
      {
        goto LABEL_39;
      }

      v23 = OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory;
      v24 = *(v21 + OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory);
      v25 = v22;
      if ([v24 hasArticleBeenRead_])
      {
        v26 = 2;
      }

      else
      {
        v26 = 0;
      }

      if ([*(v21 + v23) hasArticleBeenSeen_])
      {
        v3 = v26 | 4;
      }

      else
      {
        v3 = v26;
      }

      v27 = [*(v21 + v23) hasArticleBeenVisited_];

      if (v27)
      {
        v3 |= 8uLL;
      }

      v28 = [*(v21 + v23) hasArticleBeenConsumed_];

      if (v28)
      {
        v29 = v3 | 0x10;
      }

      else
      {
        v29 = v3;
      }

      v31 = v8[2];
      v30 = v8[3];
      if (v31 >= v30 >> 1)
      {
        sub_218C355D0((v30 > 1), v31 + 1, 1);
      }

      v8[2] = v31 + 1;
      v32 = &v8[2 * v31];
      v32[4] = v20;
      v32[5] = v29;
      ++a3;
      v17 = v37;
      if (v18 == v36)
      {

        a3 = v34;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    sub_218FD28CC();

    sub_219BF7534();
  }

  v16 = sub_219BF7214();
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_36:

  v8 = MEMORY[0x277D84F90];
LABEL_37:
  *a3 = v8;
}

uint64_t sub_21962ED5C()
{
  v1 = OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_location;
  sub_21962F038(0, &qword_280E909E0, MEMORY[0x277D33098]);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI235MagazineTodayFeedGroupEmitterCursor_historyService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MagazineTodayFeedGroupEmitterCursor(uint64_t a1)
{
  result = qword_280E9D2A0;
  if (!qword_280E9D2A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21962EE88(uint64_t a1)
{
  sub_21962F038(319, &qword_280E909E0, MEMORY[0x277D33098]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_21962EFB4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21962F038(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MagazineFeedServiceConfig(255);
    v7 = sub_2186EC908(&unk_280EBDFB0, type metadata accessor for MagazineFeedServiceConfig, &unk_219CC7FE8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_21962F12C()
{
  if (!qword_280E8F440)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_280E8F440);
    }
  }
}

uint64_t sub_21962F198(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t PuzzleTypeOfflineDatabaseSelector.supportedPuzzleTypes.getter()
{

  sub_219BE2E84();

  if (v1)
  {
    return v1;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_21962F2B0(uint64_t a1, unint64_t a2)
{

  sub_219BE2E84();

  v5 = v9;
  if (!v9)
  {
    return 0;
  }

  v9 = a1;
  v10 = a2;
  MEMORY[0x28223BE20](v4);
  v8[2] = &v9;
  v6 = sub_2186D128C(sub_2186D1338, v8, v5);

  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v10 = 0xE000000000000000;
  sub_219BF7314();

  v9 = a1;
  v10 = a2;
  MEMORY[0x21CECC330](0xD000000000000010, 0x8000000219CFE380);
  return v9;
}

uint64_t static PuzzleTypeOfflineDatabaseSelector.shared.getter()
{
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

double static PuzzleTypeOfflineDatabaseSelector.shared.setter(void *a1)
{
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_280EA25A8 = a1;

  return result;
}

uint64_t (*static PuzzleTypeOfflineDatabaseSelector.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess_0;
}

uint64_t sub_21962F550@<X0>(void *a1@<X8>)
{
  if (qword_280EA25A0 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = off_280EA25A8;
}

double sub_21962F5D0(void **a1)
{
  v1 = *a1;
  v2 = qword_280EA25A0;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_280EA25A8 = v1;

  return result;
}

uint64_t PuzzleTypeOfflineDatabaseSelector.deinit()
{

  return v0;
}

uint64_t PuzzleTypeOfflineDatabaseSelector.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void sub_21962F6E8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v26[1] = a2;
  v27 = sub_219BDFF34();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21962FA64(0);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDCC14();
  v16 = MEMORY[0x28223BE20](v15);
  (*(v18 + 16))(v26 - v17, a1, v15, v16);
  if (swift_dynamicCast())
  {
    (*(v12 + 8))(v14, v11);
    v19 = sub_219BDCC04();
    v20 = sub_219BDD084();
    v22 = v21;

    if (!v5)
    {
      sub_21962FAF8(&unk_27CC1D550, MEMORY[0x277D2E240], MEMORY[0x277D2E248]);
      v23 = v27;
      sub_219BE1974();
      sub_2186C6190(v20, v22);
      (*(v26[0] + 32))(a5, v9, v23);
      v24 = type metadata accessor for EngagementEvent(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v24 - 8) + 56))(a5, 0, 1, v24);
    }
  }

  else
  {
    v25 = type metadata accessor for EngagementEvent(0);
    (*(*(v25 - 8) + 56))(a5, 1, 1, v25);
  }
}

void sub_21962FA64(uint64_t a1)
{
  if (!qword_280EE8F90)
  {
    sub_219BDFF44();
    sub_21962FAF8(&qword_280EE8508, MEMORY[0x277D2E250], MEMORY[0x277D2E238]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8F90);
    }
  }
}

uint64_t sub_21962FAF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21962FB40(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_219BF09E4();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_219BDB734();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  sub_219BDBE34();
  v2[10] = swift_task_alloc();
  sub_219BF53C4();
  v2[11] = swift_task_alloc();
  sub_219BDB744();
  v2[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_21962FCE0, 0, 0);
}

uint64_t sub_21962FCE0()
{
  sub_218E93D80();
  v2 = v1;
  v3 = v1 >> 62;
  if (v1 >> 62)
  {
    goto LABEL_31;
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result >= 0xA)
  {
    v5 = 10;
  }

  else
  {
    v5 = result;
  }

  if (result < v5)
  {
LABEL_40:
    __break(1u);
  }

  else
  {
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {

        if (v5)
        {
          type metadata accessor for TagModel();
          v6 = 0;
          do
          {
            v7 = v6 + 1;
            sub_219BF7334();
            v6 = v7;
          }

          while (v5 != v7);
        }
      }

      else
      {
      }

      if (v3)
      {
        sub_219BF7564();
        v8 = v9;
        v3 = v10;
        v12 = v11;

        v5 = v12 >> 1;
      }

      else
      {
        v8 = (v2 & 0xFFFFFFFFFFFFFF8) + 32;
      }

      swift_unknownObjectRetain();
      if (v5 == v3)
      {
        break;
      }

      v17 = v0[5];
      v18 = v5 - v3;
      if (v5 <= v3)
      {
        v19 = v3;
      }

      else
      {
        v19 = v5;
      }

      v20 = v8 + 8 * v3;
      v3 = v19 - v3;
      v2 = MEMORY[0x277D84F90];
      while (v3)
      {
        swift_unknownObjectRetain();
        sub_219BF09D4();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v2 = sub_2191F7EC4(0, *(v2 + 16) + 1, 1, v2);
        }

        v22 = *(v2 + 16);
        v21 = *(v2 + 24);
        if (v22 >= v21 >> 1)
        {
          v2 = sub_2191F7EC4((v21 > 1), v22 + 1, 1, v2);
        }

        v23 = v0[6];
        v24 = v0[4];
        *(v2 + 16) = v22 + 1;
        (*(v17 + 32))(v2 + ((*(v17 + 80) + 32) & ~*(v17 + 80)) + *(v17 + 72) * v22, v23, v24);
        v20 += 8;
        --v3;
        if (!--v18)
        {
          goto LABEL_16;
        }
      }

      __break(1u);
LABEL_31:
      v25 = sub_219BF7214();
      if (sub_219BF7214() < 0)
      {
        __break(1u);
      }

      if (v25 >= 0xA)
      {
        v26 = 10;
      }

      else
      {
        v26 = v25;
      }

      if (v25 >= 0)
      {
        v5 = v26;
      }

      else
      {
        v5 = 10;
      }

      result = sub_219BF7214();
      if (result < v5)
      {
        goto LABEL_40;
      }
    }

LABEL_16:
    v13 = v0[9];
    v15 = v0[7];
    v14 = v0[8];
    swift_unknownObjectRelease_n();
    sub_219BF53B4();
    sub_219BDBDF4();
    (*(v14 + 104))(v13, *MEMORY[0x277CC9110], v15);
    sub_219BDB754();
    sub_218BB6E28();
    sub_219BDAE04();

    v16 = v0[1];

    return v16();
  }

  return result;
}

uint64_t sub_21963006C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_2187608D4;

  return sub_21962FB40(a1);
}

uint64_t sub_219630108(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a1;
  v5 = sub_219BDBD64();
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x28223BE20](v5);
  v50 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BDD6C4();
  v63 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v60 = v7;
  v67 = &v49 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_219BDEE04();
  v61 = *(v66 - 8);
  MEMORY[0x28223BE20](v66);
  v59 = v8;
  v65 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = sub_219BDCD34();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BDDDF4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_219BDF074();
  v70 = *(v15 - 8);
  v71 = v15;
  v16 = *(v70 + 64);
  MEMORY[0x28223BE20](v15);
  v64 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v49 - v18;
  sub_21963089C(a2);
  v20 = *(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_contentSizeManager);
  v62 = a2;
  v21 = [v20 contentSizeCategoryForArticle_];
  swift_unknownObjectRelease();
  v22 = *(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_startContentSizeCategory);
  *(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_startContentSizeCategory) = v21;
  v23 = v57;

  v68 = v19;
  sub_219630BC0(v2, v19);
  sub_219BDD6A4();
  v24 = (*(v12 + 88))(v14, v11);
  if (v24 == *MEMORY[0x277D2FD80])
  {
    sub_219BDD184();
    v25 = sub_219BDCD24();
    (*(v56 + 8))(v10, v58);
  }

  else
  {
    v25 = 0;
    if (v24 != *MEMORY[0x277D2FD78] && v24 != *MEMORY[0x277D2FD68] && v24 != *MEMORY[0x277D2FD70])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }
  }

  v54 = v16;
  LODWORD(v58) = v25;
  v26 = *(v2 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_issue);
  v27 = v26;
  v28 = v62;
  if (!v26)
  {
    v29 = sub_219BDEDF4();
    if (([v29 respondsToSelector_] & 1) == 0)
    {
      swift_unknownObjectRelease();
LABEL_11:
      v27 = 0;
      goto LABEL_12;
    }

    v30 = [v29 parentIssue];
    swift_unknownObjectRelease();
    v27 = v30;
    if (!v30)
    {
      goto LABEL_11;
    }
  }

LABEL_12:
  v31 = v26;
  v55 = v27;
  v32 = sub_2196316E4(v27, v3);
  v56 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession;
  v33 = *(v3 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession);
  *(v3 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession) = v32;

  v53 = *(v3 + 32);
  v34 = v61;
  (*(v61 + 16))(v65, v28, v66);
  v35 = v63;
  (*(v63 + 16))(v67, v23, v69);
  v36 = v70;
  (*(v70 + 16))(v64, v68, v71);
  v37 = (*(v34 + 80) + 16) & ~*(v34 + 80);
  v38 = (v59 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = (*(v35 + 80) + v39 + 8) & ~*(v35 + 80);
  v41 = (v60 + *(v36 + 80) + v40) & ~*(v36 + 80);
  v62 = v41 + v54;
  v42 = swift_allocObject();
  (*(v34 + 32))(v42 + v37, v65, v66);
  *(v42 + v38) = v3;
  v43 = v55;
  *(v42 + v39) = v55;
  (*(v35 + 32))(v42 + v40, v67, v69);
  (*(v36 + 32))(v42 + v41, v64, v71);
  *(v42 + v62) = v58 & 1;
  v44 = v43;

  sub_219BDD154();

  v45 = *(v3 + v56);
  if (v45)
  {
    v46 = v45;
    sub_219BDCE04();
  }

  else
  {
    v47 = v50;
    sub_219BDBD54();
    sub_219BDBD44();
    (*(v51 + 8))(v47, v52);
  }

  sub_219BDD114();

  return (*(v70 + 8))(v68, v71);
}

double sub_21963089C(uint64_t a1)
{
  sub_218748080(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v26 - v3;
  v5 = sub_219BDE294();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = (v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BDEDF4();
  if (([v9 respondsToSelector_] & 1) == 0)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v12 = *(v1 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_lastScrollPosition);
    if (v12)
    {
      v13 = v12;
      v14 = [sub_219BDEDF4() needsRapidUpdates];
      swift_unknownObjectRelease();
      if (!v14)
      {
        *v8 = v13;
        v15 = MEMORY[0x277D2FF10];
        goto LABEL_10;
      }
    }

    v15 = MEMORY[0x277D2FF08];
LABEL_10:
    (*(v6 + 104))(v8, *v15, v5);
    sub_2187B2C48(0);
    v17 = v16;
    v18 = swift_allocBox();
    v20 = v19;
    v21 = *(v17 + 48);
    sub_2187B2DA0(0);
    v23 = *(v22 + 48);
    v24 = sub_219BDB954();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    sub_219BDD904();
    sub_218745B8C(v4, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88], sub_218748080);
    v25 = MEMORY[0x277D84F90];
    *(v20 + v23) = MEMORY[0x277D84F90];
    *(v20 + v21) = v25;
    v26[1] = v18 | 2;

    sub_219BE7884();

    (*(v6 + 8))(v8, v5);

    return result;
  }

  v10 = [v9 role];
  swift_unknownObjectRelease();
  if (v10 != 3)
  {
    goto LABEL_5;
  }

  return result;
}

uint64_t sub_219630BC0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = sub_219BE15B4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v103 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v86 - v8;
  v10 = sub_219BDCD34();
  v11 = *(v10 - 8);
  v105 = v10;
  v106 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v86 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BDDDF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v86 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDD6A4();
  v18 = (*(v15 + 88))(v17, v14);
  if (v18 == *MEMORY[0x277D2FD80])
  {
    v104 = a2;
    v102 = *(a1 + 32);
    sub_219BDD184();
    sub_218748080(0, &unk_280E8C140, MEMORY[0x277CEAE60], MEMORY[0x277D84560]);
    v20 = v19;
    v21 = sub_219BDD0A4();
    v22 = *(v21 - 8);
    v23 = *(v22 + 72);
    v24 = (*(v22 + 80) + 32) & ~*(v22 + 80);
    v101 = *(v22 + 80);
    v99 = v20;
    v97 = v24 + 2 * v23;
    v25 = swift_allocObject();
    v98 = xmmword_219C09EC0;
    *(v25 + 16) = xmmword_219C09EC0;
    v100 = v24;
    v26 = v25 + v24;
    v27 = v23;
    v28 = v21;
    v29 = v13;
    v30 = *(v22 + 104);
    v96 = *MEMORY[0x277CEAE38];
    v30(v26);
    v31 = *MEMORY[0x277D2F548];
    v92 = *(v5 + 104);
    v93 = v5 + 104;
    v92(v9, v31, v4);
    sub_219BDD094();
    v32 = *(v5 + 8);
    v94 = v5 + 8;
    v95 = v4;
    v91 = v32;
    v32(v9, v4);
    v33 = sub_219BDCD14();

    v34 = v105;
    v36 = v106 + 8;
    v35 = *(v106 + 8);
    v35(v29, v105);
    if (v33 & 1) != 0 || (sub_219BDD184(), v37 = swift_allocObject(), *(v37 + 16) = v98, v38 = v37 + v100, (v30)(v37 + v100, v96, v28), v39 = (v38 + v27), *v39 = 0x6575737369, v39[1] = 0xE500000000000000, v96 = *MEMORY[0x277CEAE50], (v30)(), LOBYTE(v38) = sub_219BDCD14(), , v35(v29, v34), (v38))
    {
      v40 = MEMORY[0x277D2D7F0];
LABEL_5:
      v41 = *v40;
      v42 = sub_219BDF074();
      v43 = *(*(v42 - 8) + 104);
      v44 = v104;
LABEL_15:
      v53 = v41;
      return v43(v44, v53, v42);
    }

    v46 = v35;
    v47 = v34;
    v90 = v46;
    sub_219BDD184();
    v89 = v27;
    v48 = v100;
    v49 = swift_allocObject();
    v86 = xmmword_219C09BA0;
    *(v49 + 16) = xmmword_219C09BA0;
    v50 = *MEMORY[0x277CEAE58];
    v88 = v28;
    v87 = v30;
    (v30)(v49 + v48, v50, v28);
    v51 = sub_219BDCD14();

    v106 = v36;
    v90(v29, v47);
    v52 = v104;
    if (v51)
    {
      v41 = *MEMORY[0x277D2D858];
      v42 = sub_219BDF074();
      v43 = *(*(v42 - 8) + 104);
      v44 = v52;
      goto LABEL_15;
    }

    v55 = v29;
    v56 = v48;
    v57 = (sub_219BDD1E4() + 16);
    if (*v57)
    {
      v58 = &v57[2 * *v57];
      v60 = *v58;
      v59 = v58[1];
    }

    else
    {
      v60 = 0;
      v59 = 0;
    }

    v61 = v103;
    v62 = v95;
    v92(v103, *MEMORY[0x277D2F500], v95);
    v63 = sub_219BE15A4();
    v65 = v64;
    v91(v61, v62);
    if (v59)
    {
      if (v60 == v63 && v59 == v65)
      {

LABEL_26:
        v40 = MEMORY[0x277D2D7F8];
        goto LABEL_5;
      }

      v66 = sub_219BF78F4();

      if (v66)
      {
        goto LABEL_26;
      }
    }

    else
    {
    }

    sub_219BDD184();
    v67 = v56;
    v68 = v89;
    v69 = swift_allocObject();
    *(v69 + 16) = v86;
    v70 = (v69 + v67);
    *v70 = 0x636F546C61646F6DLL;
    v70[1] = 0xE800000000000000;
    v71 = v88;
    v72 = v87;
    v87();
    LOBYTE(v67) = sub_219BDCD14();

    v73 = v90;
    v90(v55, v105);
    if (v67 & 1) != 0 || (sub_219BDD184(), v74 = swift_allocObject(), v75 = v68, v76 = v72, *(v74 + 16) = v98, v77 = (v74 + v100), *v77 = 0x6169726F74696465, v77[1] = 0xE90000000000006CLL, LODWORD(v103) = *MEMORY[0x277CEAE48], (v72)(v77), v78 = (v77 + v75), *v78 = 0x656C6369747261, v78[1] = 0xE700000000000000, v72(), LOBYTE(v77) = sub_219BDCD14(), , v73(v55, v105), (v77))
    {
      v40 = MEMORY[0x277D2D808];
    }

    else
    {
      sub_219BDD184();
      v79 = swift_allocObject();
      *(v79 + 16) = v98;
      v80 = (v79 + v100);
      *v80 = 0x656E696C64616568;
      v80[1] = 0xE800000000000000;
      (v72)(v80, v103, v71);
      v81 = (v80 + v89);
      *v81 = 0x656C6369747261;
      v81[1] = 0xE700000000000000;
      v72();
      LOBYTE(v80) = sub_219BDCD14();
      v82 = v105;

      v73(v55, v82);
      if ((v80 & 1) == 0)
      {
        sub_219BDD184();
        v83 = swift_allocObject();
        *(v83 + 16) = v98;
        v84 = (v83 + v100);
        *v84 = 0x6575737369;
        v84[1] = 0xE500000000000000;
        (v76)(v84, v103, v71);
        v85 = (v84 + v89);
        *v85 = 0x6575737369;
        v85[1] = 0xE500000000000000;
        v76();
        LOBYTE(v84) = sub_219BDCD14();

        v73(v55, v82);
        v42 = sub_219BDF074();
        v43 = *(*(v42 - 8) + 104);
        v44 = v104;
        if (v84)
        {
          v53 = *MEMORY[0x277D2D860];
        }

        else
        {
          v53 = *MEMORY[0x277D2D810];
        }

        return v43(v44, v53, v42);
      }

      v40 = MEMORY[0x277D2D7E8];
    }

    goto LABEL_5;
  }

  if (v18 == *MEMORY[0x277D2FD78])
  {
    v45 = MEMORY[0x277D2D840];
LABEL_14:
    v41 = *v45;
    v42 = sub_219BDF074();
    v43 = *(*(v42 - 8) + 104);
    v44 = a2;
    goto LABEL_15;
  }

  if (v18 == *MEMORY[0x277D2FD68])
  {
    v45 = MEMORY[0x277D2D868];
    goto LABEL_14;
  }

  if (v18 == *MEMORY[0x277D2FD70])
  {
    v45 = MEMORY[0x277D2D800];
    goto LABEL_14;
  }

  result = sub_219BF7514();
  __break(1u);
  return result;
}

id sub_2196316E4(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = *(a2 + 80);
    v4 = a1;
    v5 = [v4 identifier];
    if (!v5)
    {
      sub_219BF5414();
      v5 = sub_219BF53D4();
    }

    v6 = *(a2 + 32);
    v10[4] = sub_21956EFC0;
    v10[5] = v6;
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 1107296256;
    v10[2] = sub_218B66540;
    v10[3] = &block_descriptor_149;
    v7 = _Block_copy(v10);

    v8 = [v3 viewingSessionForContentIdentifier:v5 object:a2 onEnd:v7];
    _Block_release(v7);

    sub_219BDCE04();
    sub_219BDD114();
  }

  else
  {
    [*(a2 + 80) endActiveViewingSession];
    return 0;
  }

  return v8;
}

uint64_t sub_219631854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, int a7)
{
  v195 = a7;
  v228 = a6;
  v229 = a5;
  v223 = a4;
  v238 = a3;
  v8 = sub_219BDBD34();
  v232 = *(v8 - 8);
  v233 = v8;
  MEMORY[0x28223BE20](v8);
  v231 = &v160 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x277D83D88];
  sub_218748080(0, &qword_280EE8348, MEMORY[0x277D2E6F8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v230 = &v160 - v12;
  v13 = sub_219BE06D4();
  v236 = *(v13 - 8);
  v237 = v13;
  MEMORY[0x28223BE20](v13);
  v194 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = sub_219BDF434();
  v192 = *(v193 - 8);
  MEMORY[0x28223BE20](v193);
  v191 = &v160 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &qword_280EE8300, MEMORY[0x277D2E770], v10);
  MEMORY[0x28223BE20](v16 - 8);
  v188 = &v160 - v17;
  v190 = sub_219BE0754();
  v189 = *(v190 - 8);
  MEMORY[0x28223BE20](v190);
  v164 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &qword_280EE8548, MEMORY[0x277D2E0C8], v10);
  MEMORY[0x28223BE20](v19 - 8);
  v185 = &v160 - v20;
  v187 = sub_219BDFD94();
  v186 = *(v187 - 8);
  MEMORY[0x28223BE20](v187);
  v163 = &v160 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &unk_280EE86F0, MEMORY[0x277D2DC88], v10);
  MEMORY[0x28223BE20](v22 - 8);
  v181 = &v160 - v23;
  v184 = sub_219BDF654();
  v183 = *(v184 - 8);
  MEMORY[0x28223BE20](v184);
  v162 = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &unk_280EE87F0, MEMORY[0x277D2D9E8], v10);
  MEMORY[0x28223BE20](v25 - 8);
  v178 = &v160 - v26;
  v180 = sub_219BDF2F4();
  v179 = *(v180 - 8);
  MEMORY[0x28223BE20](v180);
  v161 = &v160 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &qword_280EE8610, MEMORY[0x277D2DED0], v10);
  MEMORY[0x28223BE20](v28 - 8);
  v227 = &v160 - v29;
  v30 = sub_219BDFA44();
  v31 = *(v30 - 8);
  v234 = v30;
  v235 = v31;
  MEMORY[0x28223BE20](v30);
  v202 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_219BDF804();
  v225 = *(v33 - 8);
  v226 = v33;
  MEMORY[0x28223BE20](v33);
  v224 = &v160 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v222 = sub_219BDF074();
  v220 = *(v222 - 8);
  MEMORY[0x28223BE20](v222);
  v218 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v216 = sub_219BE1544();
  v214 = *(v216 - 8);
  MEMORY[0x28223BE20](v216);
  v215 = &v160 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = sub_219BE1524();
  v219 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v217 = &v160 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = sub_219BDFD14();
  v174 = *(v175 - 8);
  MEMORY[0x28223BE20](v175);
  v173 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v213 = sub_219BE06B4();
  v172 = *(v213 - 8);
  MEMORY[0x28223BE20](v213);
  v176 = &v160 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v212 = sub_219BDF5A4();
  v171 = *(v212 - 8);
  MEMORY[0x28223BE20](v212);
  v170 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v211 = sub_219BE1714();
  v169 = *(v211 - 8);
  MEMORY[0x28223BE20](v211);
  v168 = &v160 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v201 = sub_219BE09E4();
  v200 = *(v201 - 8);
  MEMORY[0x28223BE20](v201);
  v199 = &v160 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = sub_219BDF104();
  v197 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v196 = &v160 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748080(0, &qword_280EE8330, MEMORY[0x277D2E738], v10);
  MEMORY[0x28223BE20](v44 - 8);
  v208 = &v160 - v45;
  v210 = sub_219BE0724();
  v209 = *(v210 - 8);
  MEMORY[0x28223BE20](v210);
  v177 = &v160 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = sub_219BE1774();
  v166 = *(v167 - 8);
  MEMORY[0x28223BE20](v167);
  v165 = &v160 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0);
  v239 = sub_219BEFBD4();
  v205 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v204 = &v160 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_219BDF1A4();
  v207 = *(v206 - 8);
  MEMORY[0x28223BE20](v206);
  v203 = &v160 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_219BE0D44();
  v51 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v53 = &v160 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_219BDF0E4();
  v55 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v57 = &v160 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BDEDF4();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_21963E0E4(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();
  (*(v55 + 8))(v57, v54);
  sub_219BDEDF4();
  swift_getObjectType();
  sub_219BF6834();
  swift_unknownObjectRelease();
  sub_21963E0E4(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  sub_219BDCCC4();
  v58 = a1;
  (*(v51 + 8))(v53, v50);
  sub_219BDEDF4();
  v59 = v205;
  v60 = v204;
  v61 = v239;
  (*(v205 + 104))(v204, *MEMORY[0x277D329E0], v239);
  v62 = v203;
  sub_219BE02C4();
  swift_unknownObjectRelease();
  (*(v59 + 8))(v60, v61);
  sub_21963E0E4(&unk_280EE8850, MEMORY[0x277D2D950], MEMORY[0x277D2D948]);
  v63 = v206;
  v239 = v58;
  sub_219BDCCC4();
  (*(v207 + 8))(v62, v63);
  v64 = [sub_219BDEDF4() scoreProfile];
  swift_unknownObjectRelease();
  if (v64)
  {
    if ([v64 hasShadowScores])
    {
      [v64 shadowTabiScore];
      [v64 shadowAgedPersonalizationScore];
      v65 = v165;
      sub_219BE1764();
      sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v66 = sub_219BDCD44();
      v67 = *(v66 - 8);
      v68 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v69 = swift_allocObject();
      *(v69 + 16) = xmmword_219C09BA0;
      (*(v67 + 104))(v69 + v68, *MEMORY[0x277CEAD18], v66);
      sub_21963E0E4(&unk_280EE7F40, MEMORY[0x277D2F8F0], MEMORY[0x277D2F8E8]);
      v70 = v167;
      sub_219BDCCC4();

      (*(v166 + 8))(v65, v70);
    }

    else
    {
    }
  }

  sub_219BDEDF4();
  swift_getObjectType();
  v71 = v208;
  sub_219BF6824();
  swift_unknownObjectRelease();
  v72 = v209;
  v73 = v210;
  if ((*(v209 + 48))(v71, 1, v210) == 1)
  {
    sub_218745B8C(v71, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88], sub_218748080);
  }

  else
  {
    v74 = v177;
    (*(v72 + 32))(v177, v71, v73);
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v75 = sub_219BDCD44();
    v76 = *(v75 - 8);
    v77 = (*(v76 + 80) + 32) & ~*(v76 + 80);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_219C09BA0;
    (*(v76 + 104))(v78 + v77, *MEMORY[0x277CEAD18], v75);
    sub_21963E0E4(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v72 + 8))(v74, v73);
  }

  v79 = v236;
  v80 = v237;
  v81 = [sub_219BDEDF4() sourceChannel];
  swift_unknownObjectRelease();
  if (v81)
  {
    v82 = v80;
    v83 = v79;
    v84 = v196;
    sub_219BE01F4();
    sub_21963E0E4(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v85 = v198;
    sub_219BDCCC4();
    v86 = v84;
    v79 = v83;
    v80 = v82;
    (*(v197 + 8))(v86, v85);
    v87 = v199;
    sub_219BE01E4();
    sub_21963E0E4(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v88 = v201;
    sub_219BDCCC4();
    swift_unknownObjectRelease();
    (*(v200 + 8))(v87, v88);
  }

  v89 = v223;
  if (v223 && (v90 = *(v238 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_activeIssueViewingSession)) != 0)
  {
    v91 = v90;
    v92 = v89;
    v93 = v168;
    sub_21934C4BC();
    sub_21963E0E4(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
    v94 = v211;
    sub_219BDCCC4();
    (*(v169 + 8))(v93, v94);
    sub_219BDCE04();
    v95 = v170;
    sub_219BDF594();
    sub_21963E0E4(&unk_280EE8740, MEMORY[0x277D2DB78], MEMORY[0x277D2DB70]);
    v96 = v212;
    sub_219BDCCC4();
    (*(v171 + 8))(v95, v96);
    v97 = *(v174 + 104);
    v98 = (v172 + 8);
    if (*(v238 + OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_issue))
    {
      v97(v173, *MEMORY[0x277D2E078], v175);
    }

    else
    {
      v97(v173, *MEMORY[0x277D2E070], v175);
    }

    v99 = v176;
    sub_219BE06A4();
    sub_21963E0E4(&unk_280EE8370, MEMORY[0x277D2E6E8], MEMORY[0x277D2E6E0]);
    v100 = v213;
    sub_219BDCCC4();

    (*v98)(v99, v100);
  }

  else
  {
    sub_21963E0E4(&unk_280EE7F60, MEMORY[0x277D2F890], MEMORY[0x277D2F888]);
    sub_219BDCCA4();
    sub_21963E0E4(&unk_280EE8740, MEMORY[0x277D2DB78], MEMORY[0x277D2DB70]);
    sub_219BDCCA4();
    sub_21963E0E4(&unk_280EE8370, MEMORY[0x277D2E6E8], MEMORY[0x277D2E6E0]);
    sub_219BDCCA4();
  }

  sub_219BDD684();
  (*(v214 + 104))(v215, *MEMORY[0x277D2F3E0], v216);
  (*(v220 + 16))(v218, v228, v222);
  v101 = v217;
  sub_219BE1514();
  sub_21963E0E4(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v102 = v221;
  sub_219BDCCC4();
  (*(v219 + 8))(v101, v102);
  sub_219BDD684();
  v103 = v224;
  sub_219BDF7F4();
  sub_21963E0E4(&unk_280EE8660, MEMORY[0x277D2DD88], MEMORY[0x277D2DD80]);
  v104 = v226;
  sub_219BDCCC4();
  (*(v225 + 8))(v103, v104);
  v105 = OBJC_IVAR____TtC7NewsUI218ArticleCoordinator_urlReferralData;
  v106 = v238;
  swift_beginAccess();
  v107 = v106 + v105;
  v108 = v227;
  sub_21963E064(v107, v227, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v110 = v234;
  v109 = v235;
  if ((*(v235 + 48))(v108, 1, v234) == 1)
  {
    sub_218745B8C(v108, &qword_280EE8610, MEMORY[0x277D2DED0], MEMORY[0x277D83D88], sub_218748080);
  }

  else
  {
    v111 = v202;
    (*(v109 + 32))(v202, v108, v110);
    v112 = v178;
    sub_219BDFA24();
    v113 = v179;
    v114 = v180;
    v115 = (*(v179 + 48))(v112, 1, v180);
    v182 = "activeExperiment";
    if (v115 == 1)
    {
      sub_218745B8C(v112, &unk_280EE87F0, MEMORY[0x277D2D9E8], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      v116 = v161;
      (*(v113 + 32))(v161, v112, v114);
      sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v117 = sub_219BDCD44();
      v118 = *(v117 - 8);
      v119 = (*(v118 + 80) + 32) & ~*(v118 + 80);
      v120 = swift_allocObject();
      *(v120 + 16) = xmmword_219C09BA0;
      (*(v118 + 104))(v120 + v119, *MEMORY[0x277CEAD18], v117);
      sub_21963E0E4(&qword_280EE8800, MEMORY[0x277D2D9E8], MEMORY[0x277D2D9E0]);
      sub_219BDCCC4();

      (*(v113 + 8))(v116, v114);
    }

    v121 = v184;
    v122 = v183;
    v123 = v181;
    sub_219BDF9F4();
    if ((*(v122 + 48))(v123, 1, v121) == 1)
    {
      sub_218745B8C(v123, &unk_280EE86F0, MEMORY[0x277D2DC88], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      v124 = v162;
      (*(v122 + 32))(v162, v123, v121);
      sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v125 = sub_219BDCD44();
      v126 = *(v125 - 8);
      v127 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v128 = swift_allocObject();
      *(v128 + 16) = xmmword_219C09BA0;
      (*(v126 + 104))(v128 + v127, *MEMORY[0x277CEAD18], v125);
      sub_21963E0E4(&qword_280EE8700, MEMORY[0x277D2DC88], MEMORY[0x277D2DC80]);
      sub_219BDCCC4();

      (*(v122 + 8))(v124, v121);
    }

    v129 = v187;
    v130 = v186;
    v131 = v185;
    sub_219BDFA04();
    if ((*(v130 + 48))(v131, 1, v129) == 1)
    {
      sub_218745B8C(v131, &qword_280EE8548, MEMORY[0x277D2E0C8], MEMORY[0x277D83D88], sub_218748080);
    }

    else
    {
      v132 = v163;
      (*(v130 + 32))(v163, v131, v129);
      sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v133 = sub_219BDCD44();
      v134 = *(v133 - 8);
      v135 = (*(v134 + 80) + 32) & ~*(v134 + 80);
      v136 = swift_allocObject();
      *(v136 + 16) = xmmword_219C09BA0;
      (*(v134 + 104))(v136 + v135, *MEMORY[0x277CEAD18], v133);
      sub_21963E0E4(&qword_280EE8550, MEMORY[0x277D2E0C8], MEMORY[0x277D2E0C0]);
      sub_219BDCCC4();

      (*(v130 + 8))(v132, v129);
    }

    v137 = v190;
    v138 = v189;
    v139 = v188;
    sub_219BDFA14();
    if ((*(v138 + 48))(v139, 1, v137) == 1)
    {
      sub_218745B8C(v139, &qword_280EE8300, MEMORY[0x277D2E770], MEMORY[0x277D83D88], sub_218748080);
      v140 = *MEMORY[0x277CEAD18];
      v141 = v111;
      v142 = v110;
    }

    else
    {
      v143 = v164;
      (*(v138 + 32))(v164, v139, v137);
      sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
      v144 = v138;
      v145 = sub_219BDCD44();
      v146 = *(v145 - 8);
      v147 = (*(v146 + 80) + 32) & ~*(v146 + 80);
      v148 = swift_allocObject();
      *(v148 + 16) = xmmword_219C09BA0;
      v140 = *MEMORY[0x277CEAD18];
      v141 = v202;
      (*(v146 + 104))(v148 + v147, v140, v145);
      sub_21963E0E4(&qword_280EE8308, MEMORY[0x277D2E770], MEMORY[0x277D2E768]);
      sub_219BDCCC4();

      v149 = v143;
      v142 = v234;
      (*(v144 + 8))(v149, v137);
    }

    v150 = v191;
    sub_219BDFA34();
    sub_218748080(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
    v151 = sub_219BDCD44();
    v152 = *(v151 - 8);
    v153 = (*(v152 + 80) + 32) & ~*(v152 + 80);
    v154 = swift_allocObject();
    *(v154 + 16) = xmmword_219C09BA0;
    (*(v152 + 104))(v154 + v153, v140, v151);
    sub_21963E0E4(&qword_280EE87D0, MEMORY[0x277D2DA88], MEMORY[0x277D2DA80]);
    v155 = v193;
    sub_219BDCCC4();

    (*(v192 + 8))(v150, v155);
    (*(v235 + 8))(v141, v142);
    v79 = v236;
    v80 = v237;
  }

  v156 = v230;
  sub_21963E0E4(&unk_280EE8350, MEMORY[0x277D2E6F8], MEMORY[0x277D2E6F0]);
  sub_219BDCCB4();
  if ((*(v79 + 48))(v156, 1, v80) == 1)
  {
    sub_218745B8C(v156, &qword_280EE8348, MEMORY[0x277D2E6F8], MEMORY[0x277D83D88], sub_218748080);
  }

  else
  {
    v157 = v194;
    (*(v79 + 32))(v194, v156, v80);
    if (v195)
    {
      sub_219BDCCC4();
    }

    (*(v79 + 8))(v157, v80);
  }

  sub_219BE08E4();
  v158 = v231;
  sub_219BDBD24();
  sub_21963E0E4(&unk_280EE82A0, MEMORY[0x277D2E8C8], MEMORY[0x277D2E8C0]);
  sub_219BDCC34();
  return (*(v232 + 8))(v158, v233);
}