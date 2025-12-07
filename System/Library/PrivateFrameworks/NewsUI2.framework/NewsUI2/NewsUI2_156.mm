uint64_t sub_2198315F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = MEMORY[0x277D83D88];
  sub_2186D8EE0(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v4[6] = swift_task_alloc();
  sub_2186D8EE0(0, &qword_280E90150, MEMORY[0x277D33EC8], v5);
  v4[7] = swift_task_alloc();
  sub_2186D8EE0(0, &unk_280E91A10, sub_2189AE994, v5);
  v4[8] = swift_task_alloc();
  v6 = sub_219BF2AB4();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_219BF2034();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();
  sub_2186D8EE0(0, &unk_280E8FF30, sub_218A42400, v5);
  v4[15] = swift_task_alloc();
  sub_2186D8EE0(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v5);
  v4[16] = swift_task_alloc();
  v8 = sub_219BDBD64();
  v4[17] = v8;
  v4[18] = *(v8 - 8);
  v4[19] = swift_task_alloc();
  type metadata accessor for SubscriptionTodayFeedGroupConfigData(0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v9 = sub_219BF1934();
  v4[22] = v9;
  v4[23] = *(v9 - 8);
  v4[24] = swift_task_alloc();
  v10 = sub_219BF26F4();
  v4[25] = v10;
  v4[26] = *(v10 - 8);
  v4[27] = swift_task_alloc();
  v11 = sub_219BF3C84();
  v4[28] = v11;
  v4[29] = *(v11 - 8);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();
  v12 = sub_219BF3E84();
  v4[32] = v12;
  v4[33] = *(v12 - 8);
  v4[34] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219831AB8, 0, 0);
}

uint64_t sub_219831AB8()
{
  v83 = v0;
  v1 = *(v0 + 32);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2)
  {
    v82[0] = MEMORY[0x277D84F90];
    v3 = sub_218C34A88(0, v2 & ~(v2 >> 63), 0);
    if (v2 < 0)
    {
      __break(1u);
      return MEMORY[0x2821921B8](v3, v4, v5, v6, v7);
    }

    v8 = v82[0];
    v9 = *(v0 + 232);
    if ((v1 & 0xC000000000000001) != 0)
    {
      v10 = 0;
      v11 = *MEMORY[0x277D34128];
      do
      {
        v12 = *(v0 + 248);
        v13 = *(v0 + 224);
        *v12 = MEMORY[0x21CECE0F0](v10, *(v0 + 32));
        (*(v9 + 104))(v12, v11, v13);
        v82[0] = v8;
        v15 = *(v8 + 16);
        v14 = *(v8 + 24);
        if (v15 >= v14 >> 1)
        {
          sub_218C34A88((v14 > 1), v15 + 1, 1);
          v8 = v82[0];
        }

        v16 = *(v0 + 248);
        v17 = *(v0 + 224);
        ++v10;
        *(v8 + 16) = v15 + 1;
        (*(v9 + 32))(v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v16, v17);
      }

      while (v2 != v10);
    }

    else
    {
      v19 = (*(v0 + 32) + 32);
      v79 = *(v9 + 104);
      do
      {
        **(v0 + 240) = *v19;
        v79();
        v82[0] = v8;
        v21 = *(v8 + 16);
        v20 = *(v8 + 24);
        swift_unknownObjectRetain();
        if (v21 >= v20 >> 1)
        {
          sub_218C34A88((v20 > 1), v21 + 1, 1);
          v8 = v82[0];
        }

        v22 = *(v0 + 240);
        v23 = *(v0 + 224);
        *(v8 + 16) = v21 + 1;
        (*(v9 + 32))(v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v21, v22, v23);
        ++v19;
        --v2;
      }

      while (v2);
    }

    v18 = MEMORY[0x277D84F90];
  }

  else
  {
    v18 = MEMORY[0x277D84F90];
  }

  v67 = *(v0 + 272);
  v68 = *(v0 + 264);
  v69 = *(v0 + 256);
  v24 = *(v0 + 208);
  v25 = *(v0 + 216);
  v73 = *(v0 + 200);
  v81 = *(v0 + 184);
  v63 = *(v0 + 176);
  v78 = *(v0 + 168);
  v57 = *(v0 + 152);
  v59 = *(v0 + 144);
  v61 = *(v0 + 136);
  v62 = *(v0 + 160);
  v77 = *(v0 + 128);
  v64 = *(v0 + 120);
  v70 = *(v0 + 64);
  v71 = *(v0 + 56);
  v75 = *(v0 + 48);
  v76 = *(v0 + 40);
  v80 = *(v0 + 24);
  sub_218F0B984(v18);
  sub_218F0BA7C(v18);
  sub_218F0BB90(v18);
  sub_219BF3E74();
  v66 = MEMORY[0x277D84560];
  sub_2186D8EE0(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_219C09BA0;
  v56 = v26;
  sub_219BF1364();
  v27 = swift_allocBox();
  v29 = v28;
  swift_getObjectType();
  sub_2194F6464(v29);
  *v25 = v27;
  v30 = *MEMORY[0x277D33748];
  v31 = sub_219BF2124();
  (*(*(v31 - 8) + 104))(v25, v30, v31);
  (*(v24 + 104))(v25, *MEMORY[0x277D339C8], v73);
  sub_219BF1A04();
  v65 = type metadata accessor for SubscriptionTodayFeedGroupEmitter(0);
  v32 = (v76 + *(v65 + 24));
  v72 = v32[4];
  v74 = v32[3];
  __swift_project_boxed_opaque_existential_1(v32, v74);
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  sub_219BEDD14();
  v82[0] = 0;
  v82[1] = 0xE000000000000000;
  sub_219BF7314();

  strcpy(v82, "subscription::");
  HIBYTE(v82[1]) = -18;
  v33 = [v80 identifier];
  v34 = sub_219BF5414();
  v36 = v35;

  MEMORY[0x21CECC330](v34, v36);

  MEMORY[0x21CECC330](14906, 0xE200000000000000);
  sub_219BDBD54();
  v37 = sub_219BDBD44();
  v39 = v38;
  (*(v59 + 8))(v57, v61);
  MEMORY[0x21CECC330](v37, v39);

  v40 = [v80 identifier];
  sub_219BF5414();

  v60 = sub_219BEC004();
  v58 = *(*(v60 - 8) + 56);
  v58(v77, 1, 1, v60);
  sub_219BEDD14();
  v41 = sub_219BF1714();
  v42 = *(v81 + 8);
  *(v0 + 280) = v42;
  *(v0 + 288) = (v81 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v42(v62, v63);
  v82[0] = v41;
  sub_2191EED30(v56);
  sub_218A42400(0);
  (*(*(v43 - 8) + 56))(v64, 1, 1, v43);
  sub_219BF1764();

  sub_21983353C(v64, &unk_280E8FF30, sub_218A42400);
  sub_21983353C(v77, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
  v42(v78, v63);
  sub_2186DEF40(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C146A0;
  *(v44 + 32) = v80;
  sub_2186D8EE0(0, &unk_280E8B790, MEMORY[0x277D34258], v66);
  v45 = (*(v68 + 80) + 32) & ~*(v68 + 80);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_219C09BA0;
  (*(v68 + 16))(v46 + v45, v67, v69);
  v58(v77, 1, 1, v60);
  swift_unknownObjectRetain();
  sub_219A95188(v18);
  sub_219A95188(v18);
  sub_219A951A0(v18);
  sub_219A951B8(v18);
  sub_219A952CC(v18);
  sub_219A952E4(v18);
  sub_219A953F8(v18);
  sub_219BF2024();
  v47 = *(v65 + 20);
  sub_2189AE994(0);
  v49 = v48;
  v50 = *(v48 - 8);
  (*(v50 + 16))(v70, v76 + v47, v48);
  (*(v50 + 56))(v70, 0, 1, v49);
  v51 = sub_219BF35D4();
  (*(*(v51 - 8) + 56))(v71, 1, 1, v51);
  *(v0 + 320) = 11;
  sub_2198335AC(0, &qword_280E90070, type metadata accessor for TodayFeedServiceConfig, sub_2187DF448, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v52 = sub_219BF2774();
  (*(*(v52 - 8) + 56))(v75, 1, 1, v52);
  v53 = qword_280E8D7A0;
  *MEMORY[0x277D30BC8];
  if (v53 != -1)
  {
    swift_once();
  }

  qword_280F616D8;
  sub_219BF2A84();
  v54 = swift_task_alloc();
  *(v0 + 296) = v54;
  *v54 = v0;
  v54[1] = sub_2198326B8;
  v4 = *(v0 + 112);
  v5 = *(v0 + 88);
  v3 = *(v0 + 192);
  v7 = v72;
  v6 = v74;

  return MEMORY[0x2821921B8](v3, v4, v5, v6, v7);
}

uint64_t sub_2198326B8(uint64_t a1)
{
  v3 = *v2;
  v3[38] = v1;

  v15 = v3[35];
  v4 = v3[24];
  v5 = v3[22];
  v6 = v3[14];
  v7 = v3[13];
  v8 = v3[12];
  v9 = v3[11];
  v10 = v3[10];
  v11 = v3[9];
  if (v1)
  {
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219832A84;
  }

  else
  {
    v3[39] = a1;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    v15(v4, v5);
    v12 = sub_219832938;
  }

  return MEMORY[0x2822009F8](v12, 0, 0);
}

uint64_t sub_219832938()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];
  v2 = v0[39];

  return v1(v2);
}

uint64_t sub_219832A84()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219832BCC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = [objc_msgSend(*(a2 + *(type metadata accessor for SubscriptionTodayFeedGroupEmitter(0) + 44)) purchaseProvider)];
  v5 = sub_219BF5D44();

  LOBYTE(v2) = sub_2188537B8(v2, v3, v5);
  swift_unknownObjectRelease();

  return v2 & 1;
}

uint64_t sub_219832C8C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_21982D918(a1, a2);
}

uint64_t sub_219832D34(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2187608D4;

  return sub_21982F798(a1, a2, a3);
}

uint64_t sub_219832DE4@<X0>(uint64_t a1@<X8>)
{
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);
  (*(*(v3 - 8) + 16))(a1, v1, v3);
  type metadata accessor for TodayFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_219832EA8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 20);
  a2[3] = type metadata accessor for SubscriptionTodayFeedGroupKnobs(0);
  a2[4] = sub_21982D688(&qword_280EA7B38, type metadata accessor for SubscriptionTodayFeedGroupKnobs, &unk_219C1F180);
  a2[5] = sub_21982D688(&qword_280EA7B40, type metadata accessor for SubscriptionTodayFeedGroupKnobs, &unk_219C1F1A8);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_2198334D4(v2 + v4, boxed_opaque_existential_1, type metadata accessor for SubscriptionTodayFeedGroupKnobs);
}

uint64_t sub_219832FC4()
{
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);

  return sub_219BEDCA4();
}

uint64_t sub_219833034@<X0>(uint64_t *a2@<X8>)
{
  sub_2186D8EE0(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_219834194(0, &qword_280E921A0, type metadata accessor for SubscriptionTodayFeedGroupConfigData, sub_21982D620, sub_21982D654);

  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_219833388(inited + 32, sub_2188317B0);
  sub_2186D8EE0(0, &qword_280EE7728, type metadata accessor for SubscriptionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_2198342A8();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_2198331FC(uint64_t a1)
{
  sub_21982D688(&qword_280EA1760, type metadata accessor for SubscriptionTodayFeedGroupEmitter, &unk_219CABAF8);

  return sub_219BE2324();
}

uint64_t sub_219833388(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2198333E8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_21982DBD8(a1, v5, v4);
}

double sub_219833494(uint64_t a1)
{
  if (a1)
  {
    swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_2198334D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983353C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8EE0(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_2198335AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
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

uint64_t sub_21983364C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198336B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for SubscriptionTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + v7);
  v12 = *(v1 + v8);
  v13 = *(v1 + v8 + 8);
  v14 = *(v1 + v8 + 16);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_2187609C8;

  return sub_2198307AC(a1, v9, v10, v1 + v6, v11, v12, v13, v14);
}

uint64_t sub_219833808(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[9] = a3;
  v4[10] = v3;
  v4[7] = a1;
  v4[8] = a2;
  sub_2186D8EE0(0, &qword_280EE9C40, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();
  v4[13] = swift_task_alloc();
  type metadata accessor for TodayFeedServiceContext(0);
  v4[14] = swift_task_alloc();
  v5 = sub_219BDBD34();
  v4[15] = v5;
  v4[16] = *(v5 - 8);
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2198339D4, 0, 0);
}

uint64_t sub_2198339D4()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  v4 = v0[14];
  v5 = type metadata accessor for SubscriptionTodayFeedGroupEmitter(0);
  type metadata accessor for SubscriptionTodayFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  v30 = *(v1 + 8);
  v30(v2, v3);
  sub_219BEF0B4();
  sub_2198334D4(v0[3] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_context, v4, type metadata accessor for TodayFeedServiceContext);

  v6 = *(v4 + 8);
  sub_219833388(v4, type metadata accessor for TodayFeedServiceContext);
  v7 = [v6 startDate];

  v8 = v0[18];
  if (v7)
  {
    v29 = v5;
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    v12 = v0[13];
    sub_219BDBCA4();

    v13 = *(v10 + 32);
    v13(v12, v9, v11);
    v14 = *(v10 + 56);
    v14(v12, 0, 1, v11);
    v5 = v29;
    v13(v8, v12, v11);
  }

  else
  {
    v16 = v0[15];
    v15 = v0[16];
    v17 = v0[13];
    v14 = *(v15 + 56);
    v14(v17, 1, 1, v16);
    sub_219BDBD24();
    if ((*(v15 + 48))(v17, 1, v16) != 1)
    {
      sub_21983353C(v0[13], &qword_280EE9C40, MEMORY[0x277CC9578]);
    }
  }

  v18 = v0[18];
  v20 = v0[15];
  v19 = v0[16];
  v22 = v0[11];
  v21 = v0[12];
  sub_2186C6148(0, &qword_280E8E860, 0x277D30F38);
  (*(v19 + 16))(v21, v18, v20);
  v14(v21, 0, 1, v20);
  sub_219BDBBF4();
  v14(v22, 0, 1, v20);
  v23 = sub_2193707CC(v21, v22);
  v0[22] = v23;
  if (v23)
  {
    v24 = v0[21];
    v25 = v0[19];
    v26 = (v0[10] + *(v5 + 36));
    __swift_project_boxed_opaque_existential_1(v26, v26[3]);
    sub_219BEF134();
    sub_219BEF524();
    v30(v24, v25);
    v0[23] = sub_219BF27F4();
    v27 = swift_task_alloc();
    v0[24] = v27;
    *v27 = v0;
    v27[1] = sub_219833DF8;
    v23 = v0 + 4;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x2821D23D8](v23);
}

uint64_t sub_219833DF8()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_2198340B0;
  }

  else
  {
    v2 = sub_219833F2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219833F2C()
{
  v1 = v0[22];
  v2 = v0[18];
  v3 = v0[15];
  v4 = v0[16];
  v0[6] = v0[4];
  sub_2187E7248(0);
  sub_21982D688(&qword_280E8EBF0, sub_2187E7248, MEMORY[0x277D83970]);
  v5 = sub_219BF56E4();

  (*(v4 + 8))(v2, v3);

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_2198340B0()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 120);
  v3 = *(v0 + 128);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

void sub_219834194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    a5();
    v8 = sub_219BEDD94();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_2198342A8()
{
  result = qword_280EE7730;
  if (!qword_280EE7730)
  {
    sub_2186D8EE0(255, &qword_280EE7728, type metadata accessor for SubscriptionTodayFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE7730);
  }

  return result;
}

uint64_t sub_219834330(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);

  return MEMORY[0x2821FE9C0](a1, a2, v4, sub_21890A6BC);
}

uint64_t sub_219834388(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);

  return MEMORY[0x2821FEBD0](a1, a2, a3, v6, sub_21890A768);
}

uint64_t type metadata accessor for AudioHistoryFeedSectionDescriptor(uint64_t a1)
{
  result = qword_27CC1FE40;
  if (!qword_27CC1FE40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21983443C()
{
  v1 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = (&v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219834718(v0, v6);
  sub_2189BD64C(v6, v3);
  v7 = *v3;

  sub_218A30388(v3);
  return v7;
}

uint64_t sub_21983451C(uint64_t a1, uint64_t a2)
{
  sub_21983477C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v7 + 56);
  sub_219834718(a1, v6);
  sub_219834718(a2, &v6[v8]);
  type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  sub_2198347E0(&unk_27CC11168, &unk_219C2F948);
  LOBYTE(a2) = sub_219BF1174();
  sub_218A30388(&v6[v8]);
  sub_218A30388(v6);
  return a2 & 1;
}

uint64_t sub_219834604@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for ArticleListAudioHistoryFeedGroup(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219834718(v1, v8);
  sub_2189BD64C(v8, v5);
  a1[3] = v3;
  a1[4] = sub_2198347E0(&qword_27CC11148, &unk_219C2F8B0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_2189BD64C(v5, boxed_opaque_existential_1);
}

uint64_t sub_219834718(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedSectionDescriptor(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_21983477C(uint64_t a1)
{
  if (!qword_27CC1FE50)
  {
    type metadata accessor for AudioHistoryFeedSectionDescriptor(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1FE50);
    }
  }
}

uint64_t sub_2198347E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ArticleListAudioHistoryFeedGroup(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EA86E0;
  if (!qword_280EA86E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219834898(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186F9548();
    if (v2 <= 0x3F)
    {
      sub_2186F95C4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_219834934@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v26 = a4;
  v27 = a3;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v14 = v13;
  v15 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v17 = &v25 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v12);
  v18 = *(v15 + 48);
  if (v18(v12, 1, v14) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v25 = a6;
    sub_21877CD80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a6 = v25;
    sub_219BEE974();
    if (v18(v12, 1, v14) != 1)
    {
      sub_2189ADEC8(v12);
    }
  }

  else
  {
    (*(v15 + 32))(v17, v12, v14);
  }

  (*(v15 + 32))(a6, v17, v14);
  v19 = v27;
  if (a2)
  {
    v20 = a2;
  }

  else
  {
    v28 = 1;
    sub_2186F9548();
    swift_allocObject();
    v20 = sub_219BEF534();
  }

  v21 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
  *(a6 + v21[5]) = v20;
  if (v19)
  {

    v22 = v19;
  }

  else
  {
    v28 = 5;
    sub_2186F9548();
    swift_allocObject();

    v22 = sub_219BEF534();
  }

  *(a6 + v21[6]) = v22;
  v23 = v26;
  if (v26)
  {
  }

  else
  {
    LOBYTE(v28) = 0;
    sub_2186F95C4();
    swift_allocObject();

    v23 = sub_219BEF534();
  }

  *(a6 + v21[7]) = v23;
  if (!a5)
  {
    LOBYTE(v28) = 0;
    sub_2186F95C4();
    swift_allocObject();
    a5 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a6 + v21[8]) = a5;
  return result;
}

uint64_t sub_219834CEC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  sub_2189AD5C8(0);
  v59 = v3;
  v56 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v57 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v61 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v60 = &v47 - v11;
  sub_219835978(0, &qword_280E8CAA8, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v47 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198358C0();
  v17 = v62;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v49 = 0;
  v50 = v14;
  v51 = v7;
  v52 = v5;
  v53 = a1;
  LOBYTE(v67) = 0;
  sub_21877CD80(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v20 = v59;
  v19 = v60;
  sub_219BF7674();
  sub_2186F9548();
  LOBYTE(v66) = 1;
  v21 = MEMORY[0x277D32620];
  sub_21877CD80(&qword_280E913B8, sub_2186F9548, MEMORY[0x277D32620]);
  sub_219BF7674();
  v22 = v67;
  LOBYTE(v65) = 2;
  sub_219BF7674();
  v48 = v66;
  sub_2186F95C4();
  LOBYTE(v64) = 3;
  sub_21877CD80(&qword_280E913F8, sub_2186F95C4, v21);
  sub_219BF7674();
  v54 = v65;
  LOBYTE(v63) = 4;
  v62 = v16;
  sub_219BF7674();
  v55 = v64;
  v23 = v61;
  sub_2189ADE64(v19, v61);
  v24 = v56;
  v25 = *(v56 + 48);
  v26 = v25(v23, 1, v20);
  v27 = v13;
  v28 = v24;
  if (v26 == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CD80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v28 = v24;
    v29 = v22;
    v30 = v57;
    sub_219BEE974();
    v31 = v59;
    v32 = v25(v61, 1, v59);
    v33 = v31;
    v34 = v30;
    v22 = v29;
    if (v32 != 1)
    {
      sub_2189ADEC8(v61);
    }
  }

  else
  {
    v34 = v57;
    v33 = v59;
    (*(v24 + 32))(v57, v61, v59);
  }

  v35 = v51;
  (*(v28 + 32))(v51, v34, v33);
  v36 = v62;
  v37 = v48;
  if (v22)
  {
    v38 = v22;
  }

  else
  {
    v63 = 1;
    swift_allocObject();
    v38 = sub_219BEF534();
    v36 = v62;
  }

  v39 = v58;
  v40 = v52;
  *(v35 + v52[5]) = v38;
  v41 = v54;
  if (v37)
  {

    v42 = v37;
  }

  else
  {
    v63 = 5;
    swift_allocObject();

    v42 = sub_219BEF534();
    v41 = v54;
    v36 = v62;
  }

  v43 = v60;
  *(v35 + v40[6]) = v42;
  if (v41)
  {
  }

  else
  {
    LOBYTE(v63) = 0;
    swift_allocObject();

    v44 = sub_219BEF534();
    v36 = v62;
    v41 = v44;
  }

  *(v35 + v40[7]) = v41;
  if (v55)
  {

    sub_2189ADEC8(v43);
    (*(v50 + 8))(v36, v27);
    v45 = v55;
  }

  else
  {
    LOBYTE(v63) = 0;
    swift_allocObject();
    v46 = v36;
    v45 = sub_219BEF534();

    sub_2189ADEC8(v43);
    (*(v50 + 8))(v46, v27);
  }

  *(v35 + v40[8]) = v45;
  sub_219835914(v35, v39);
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_219835420(void *a1)
{
  v3 = v1;
  sub_219835978(0, &qword_27CC1FE58, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2198358C0();
  sub_219BF7B44();
  LOBYTE(v14) = 0;
  sub_2189AD5C8(0);
  sub_21877CD80(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
    v14 = *(v3 + v10[5]);
    v13 = 1;
    sub_2186F9548();
    sub_21877CD80(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[6]);
    v13 = 2;
    sub_219BF7834();
    v14 = *(v3 + v10[7]);
    v13 = 3;
    sub_2186F95C4();
    sub_21877CD80(&qword_280E91400, sub_2186F95C4, MEMORY[0x277D32610]);
    sub_219BF7834();
    v14 = *(v3 + v10[8]);
    v13 = 4;
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_219835740()
{
  v1 = *v0;
  v2 = 0x73656C7572;
  v3 = 0xD000000000000010;
  v4 = 0xD000000000000018;
  if (v1 != 3)
  {
    v4 = 0x54646574696D696CLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2198357EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219835BF4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219835814(uint64_t a1)
{
  v2 = sub_2198358C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219835850(uint64_t a1)
{
  v2 = sub_2198358C0();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_2198358C0()
{
  result = qword_280EA8708;
  if (!qword_280EA8708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8708);
  }

  return result;
}

uint64_t sub_219835914(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219835978(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2198358C0();
    v7 = a3(a1, &type metadata for PuzzleFeaturedTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_2198359DC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CD80(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if (sub_219BEE9F4() & 1) != 0 && (sub_2186F9548(), type metadata accessor for PuzzleFeaturedTagFeedGroupKnobs(0), (sub_219BEF504()) && (sub_219BEF504() & 1) != 0 && (sub_2186F95C4(), (sub_219BEF504()))
  {
    return sub_219BEF504() & 1;
  }

  else
  {
    return 0;
  }
}

unint64_t sub_219835AF0()
{
  result = qword_27CC1FE60;
  if (!qword_27CC1FE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FE60);
  }

  return result;
}

unint64_t sub_219835B48()
{
  result = qword_280EA86F8;
  if (!qword_280EA86F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA86F8);
  }

  return result;
}

unint64_t sub_219835BA0()
{
  result = qword_280EA8700;
  if (!qword_280EA8700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA8700);
  }

  return result;
}

uint64_t sub_219835BF4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCC90 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000219D32440 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x54646574696D696CLL && a2 == 0xEE007961646F546FLL)
  {

    return 4;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_219835DB4(uint64_t a1, uint64_t a2)
{
  sub_218700938(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_219835E20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218700938(0);
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_219835EE4(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  sub_218700938(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  a3(v6);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_219836094(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  sub_218700938(0);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v3, v12);
  (*(v7 + 32))(v9, v12, v6);
  v13 = a3(v6);
  (*(v7 + 8))(v9, v6);
  return v13;
}

uint64_t sub_2198361DC()
{
  sub_218700938(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v0, v8);
  (*(v3 + 32))(v5, v8, v2);
  v9 = sub_219BEDCA4();
  (*(v3 + 8))(v5, v2);
  return v9;
}

uint64_t sub_219836324(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_219836DEC(&qword_27CC15FD8, type metadata accessor for AudioHistoryFeedGroupConfig, &unk_219CABF5C);

  return MEMORY[0x282190458](a1, a2, a3, v6);
}

uint64_t sub_2198364C8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  sub_218700938(0);
  v5 = v4;
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836C84(0);
  v9 = v8;
  v21 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219836CE0();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v21;
    v16 = v5;
    v17 = v7;
    sub_219836D34();
    sub_219BF7734();
    sub_218718690(a1, v20);
    type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData(0);
    sub_219836DEC(&qword_280E95158, type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData, &unk_219C99F64);
    sub_219836DEC(&qword_280E95160, type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData, &unk_219C99F3C);
    v13 = v17;
    sub_219BEDD24();
    (*(v12 + 8))(v11, v9);
    (*(v18 + 32))(v19, v13, v16);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_219836788(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_2198367E0(uint64_t a1)
{
  v2 = sub_219836CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21983681C(uint64_t a1)
{
  v2 = sub_219836CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21983692C(uint64_t a1)
{
  v2 = v1;
  sub_218700938(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v2, v10);
  (*(v5 + 32))(v7, v10, v4);
  sub_219BEDD64();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_219836A84@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for ArticleListAudioHistoryFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218700938(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219836D88(v1, v13);
  (*(v8 + 32))(v10, v13, v7);
  sub_219BEDD14();
  (*(v8 + 8))(v10, v7);
  v14 = sub_219BF1934();
  v15 = *(v14 - 8);
  (*(v15 + 32))(a1, v5, v14);
  return (*(v15 + 56))(a1, 0, 1, v14);
}

void sub_219836C84(uint64_t a1)
{
  if (!qword_280E8CCC8)
  {
    sub_219836CE0();
    v1 = sub_219BF7774();
    if (!v2)
    {
      atomic_store(v1, &qword_280E8CCC8);
    }
  }
}

unint64_t sub_219836CE0()
{
  result = qword_280EB9478;
  if (!qword_280EB9478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9478);
  }

  return result;
}

unint64_t sub_219836D34()
{
  result = qword_280EB9458;
  if (!qword_280EB9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9458);
  }

  return result;
}

uint64_t sub_219836D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AudioHistoryFeedGroupConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219836DEC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219836E58()
{
  result = qword_27CC1FE78;
  if (!qword_27CC1FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FE78);
  }

  return result;
}

unint64_t sub_219836EB0()
{
  result = qword_27CC1FE80;
  if (!qword_27CC1FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FE80);
  }

  return result;
}

unint64_t sub_219836F08()
{
  result = qword_280EB9468;
  if (!qword_280EB9468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9468);
  }

  return result;
}

unint64_t sub_219836F60()
{
  result = qword_280EB9470;
  if (!qword_280EB9470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9470);
  }

  return result;
}

unint64_t sub_219836FB4()
{
  result = qword_280EB9460;
  if (!qword_280EB9460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EB9460);
  }

  return result;
}

uint64_t sub_219837008(char *a1, uint64_t a2)
{
  v138 = a1;
  v137 = a2;
  sub_218736B5C(0);
  v130 = *(v2 - 8);
  v131 = v2;
  MEMORY[0x28223BE20](v2);
  v122 = &v110 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v128 = &v110 - v5;
  v6 = type metadata accessor for SportsSearchFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v6 - 8);
  v123 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21872EF54(0);
  v129 = v8;
  v127 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v120 = &v110 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v126 = &v110 - v11;
  v12 = type metadata accessor for SavedRecipesSearchFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v12 - 8);
  v119 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FF0D4(0);
  v124 = *(v14 - 8);
  v125 = v14;
  MEMORY[0x28223BE20](v14);
  v115 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v121 = &v110 - v17;
  v18 = type metadata accessor for RecipesSearchFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v18 - 8);
  v114 = &v110 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEF84(0);
  v118 = v20;
  v117 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v113 = &v110 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v116 = &v110 - v23;
  v24 = type metadata accessor for TopicsSearchFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v24 - 8);
  v111 = &v110 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218713528(0);
  v135 = *(v26 - 8);
  v136 = v26;
  MEMORY[0x28223BE20](v26);
  v134 = &v110 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v133 = &v110 - v29;
  v30 = type metadata accessor for ChannelsSearchFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v30 - 8);
  v112 = &v110 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186FEEB8(0);
  v33 = v32;
  v132 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v35 = &v110 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v38 = &v110 - v37;
  v39 = type metadata accessor for ArticlesSearchFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v39 - 8);
  v41 = &v110 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218736A44(0);
  v43 = v42;
  v44 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v110 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v49 = &v110 - v48;
  v50 = type metadata accessor for SearchFeedGroupConfig(0);
  MEMORY[0x28223BE20](v50);
  v52 = &v110 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983825C(v138, v52, type metadata accessor for SearchFeedGroupConfig);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v131 = v41;
    v138 = v35;
    v65 = v49;
    v66 = v43;
    v67 = v133;
    v68 = v134;
    v70 = v135;
    v69 = v136;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v71 = v132;
        v72 = *(v132 + 32);
        v73 = v38;
        v74 = v33;
        v72(v38, v52, v33);
        v75 = v138;
        (*(v71 + 16))(v138, v38, v33);
        v76 = type metadata accessor for SearchFeedGroupKnobs(0);
        v77 = v112;
        sub_21983825C(v137 + *(v76 + 20), v112, type metadata accessor for ChannelsSearchFeedGroupKnobs);
        sub_218718690(v139 + 16, &v140);
        type metadata accessor for ChannelsSearchFeedGroupEmitter(0);
        v78 = swift_allocObject();
        v72((v78 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_config), v75, v74);
        sub_2198382C4(v77, v78 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_knobs, type metadata accessor for ChannelsSearchFeedGroupKnobs);
        sub_2186CB1F0(&v140, v78 + OBJC_IVAR____TtC7NewsUI230ChannelsSearchFeedGroupEmitter_formatService);
        *&v140 = v78;
        sub_2198381C8(0);
        swift_allocObject();
        sub_21983832C(&qword_27CC1FEB8, type metadata accessor for ChannelsSearchFeedGroupEmitter, &unk_219C666E8);
        v79 = sub_219BEDF84();
        (*(v71 + 8))(v73, v74);
      }

      else
      {
        v94 = *(v135 + 32);
        v95 = v136;
        v94(v133, v52, v136);
        (*(v70 + 16))(v68, v67, v69);
        v96 = type metadata accessor for SearchFeedGroupKnobs(0);
        v97 = v111;
        sub_21983825C(v137 + *(v96 + 24), v111, type metadata accessor for TopicsSearchFeedGroupKnobs);
        sub_218718690(v139 + 16, &v140);
        type metadata accessor for TopicsSearchFeedGroupEmitter(0);
        v98 = swift_allocObject();
        v94((v98 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_config), v68, v95);
        sub_2198382C4(v97, v98 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_knobs, type metadata accessor for TopicsSearchFeedGroupKnobs);
        sub_2186CB1F0(&v140, v98 + OBJC_IVAR____TtC7NewsUI228TopicsSearchFeedGroupEmitter_formatService);
        *&v140 = v98;
        sub_2198381C8(0);
        swift_allocObject();
        sub_21983832C(&qword_27CC1FEB0, type metadata accessor for TopicsSearchFeedGroupEmitter, &unk_219C6F718);
        v79 = sub_219BEDF84();
        (*(v70 + 8))(v67, v95);
      }
    }

    else
    {
      v88 = v44;
      v89 = *(v44 + 32);
      v90 = v65;
      v91 = v66;
      v89(v65, v52, v66);
      (*(v88 + 16))(v46, v90, v91);
      v92 = v131;
      sub_21983825C(v137, v131, type metadata accessor for ArticlesSearchFeedGroupKnobs);
      sub_218718690(v139 + 16, &v140);
      type metadata accessor for ArticlesSearchFeedGroupEmitter(0);
      v93 = swift_allocObject();
      v89((v93 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_config), v46, v91);
      sub_2198382C4(v92, v93 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_knobs, type metadata accessor for ArticlesSearchFeedGroupKnobs);
      sub_2186CB1F0(&v140, v93 + OBJC_IVAR____TtC7NewsUI230ArticlesSearchFeedGroupEmitter_formatService);
      *&v140 = v93;
      sub_2198381C8(0);
      swift_allocObject();
      sub_21983832C(&qword_27CC1FEC0, type metadata accessor for ArticlesSearchFeedGroupEmitter, &unk_219CC3A18);
      v79 = sub_219BEDF84();
      (*(v88 + 8))(v90, v91);
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        v56 = v126;
        v54 = v127;
        v80 = *(v127 + 32);
        v57 = v129;
        v80(v126, v52, v129);
        v81 = v120;
        (*(v54 + 16))(v120, v56, v57);
        v82 = type metadata accessor for SearchFeedGroupKnobs(0);
        v83 = v123;
        sub_21983825C(v137 + *(v82 + 36), v123, type metadata accessor for SportsSearchFeedGroupKnobs);
        sub_218718690(v139 + 16, &v140);
        type metadata accessor for SportsSearchFeedGroupEmitter(0);
        v84 = swift_allocObject();
        v80((v84 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_config), v81, v57);
        sub_2198382C4(v83, v84 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_knobs, type metadata accessor for SportsSearchFeedGroupKnobs);
        sub_2186CB1F0(&v140, v84 + OBJC_IVAR____TtC7NewsUI228SportsSearchFeedGroupEmitter_formatService);
        *&v140 = v84;
        sub_2198381C8(0);
        swift_allocObject();
        v85 = &unk_27CC1FE98;
        v86 = type metadata accessor for SportsSearchFeedGroupEmitter;
        v87 = &unk_219C1D588;
      }

      else
      {
        v54 = v130;
        v57 = v131;
        v106 = *(v130 + 32);
        v56 = v128;
        v106(v128, v52, v131);
        v107 = v122;
        (*(v54 + 16))(v122, v56, v57);
        sub_218718690(v139 + 16, &v140);
        type metadata accessor for TopResultSearchFeedGroupEmitter(0);
        v108 = swift_allocObject();
        v106((v108 + OBJC_IVAR____TtC7NewsUI231TopResultSearchFeedGroupEmitter_config), v107, v57);
        sub_2186CB1F0(&v140, v108 + OBJC_IVAR____TtC7NewsUI231TopResultSearchFeedGroupEmitter_formatService);
        *&v140 = v108;
        sub_2198381C8(0);
        swift_allocObject();
        v85 = &unk_27CC1FE90;
        v86 = type metadata accessor for TopResultSearchFeedGroupEmitter;
        v87 = &unk_219CBC6B8;
      }

      sub_21983832C(v85, v86, v87);
      v105 = sub_219BEDF84();
    }

    else
    {
      if (EnumCaseMultiPayload == 3)
      {
        v54 = v117;
        v55 = *(v117 + 32);
        v56 = v116;
        v57 = v118;
        v55(v116, v52, v118);
        v58 = v113;
        (*(v54 + 16))(v113, v56, v57);
        v59 = type metadata accessor for SearchFeedGroupKnobs(0);
        v60 = v114;
        sub_21983825C(v137 + *(v59 + 28), v114, type metadata accessor for RecipesSearchFeedGroupKnobs);
        sub_218718690(v139 + 16, &v140);
        type metadata accessor for RecipesSearchFeedGroupEmitter(0);
        v61 = swift_allocObject();
        v55((v61 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_config), v58, v57);
        sub_2198382C4(v60, v61 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_knobs, type metadata accessor for RecipesSearchFeedGroupKnobs);
        sub_2186CB1F0(&v140, v61 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_formatService);
        *&v140 = v61;
        sub_2198381C8(0);
        swift_allocObject();
        v62 = &unk_27CC1FEA8;
        v63 = type metadata accessor for RecipesSearchFeedGroupEmitter;
        v64 = &unk_219C399B8;
      }

      else
      {
        v54 = v124;
        v57 = v125;
        v99 = *(v124 + 32);
        v56 = v121;
        v99(v121, v52, v125);
        v100 = v115;
        (*(v54 + 16))(v115, v56, v57);
        v101 = type metadata accessor for SearchFeedGroupKnobs(0);
        v102 = v119;
        sub_21983825C(v137 + *(v101 + 32), v119, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
        sub_218718690(v139 + 16, &v140);
        type metadata accessor for SavedRecipesSearchFeedGroupEmitter(0);
        v103 = swift_allocObject();
        v104 = v103 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_name;
        strcpy((v103 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_name), "SavedRecipes");
        *(v104 + 13) = 0;
        *(v104 + 14) = -5120;
        v99((v103 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_config), v100, v57);
        sub_2198382C4(v102, v103 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_knobs, type metadata accessor for SavedRecipesSearchFeedGroupKnobs);
        sub_2186CB1F0(&v140, v103 + OBJC_IVAR____TtC7NewsUI234SavedRecipesSearchFeedGroupEmitter_formatService);
        *&v140 = v103;
        sub_2198381C8(0);
        swift_allocObject();
        v62 = &unk_27CC1FEA0;
        v63 = type metadata accessor for SavedRecipesSearchFeedGroupEmitter;
        v64 = &unk_219C297C8;
      }

      sub_21983832C(v62, v63, v64);
      v105 = sub_219BEDF94();
    }

    v79 = v105;
    (*(v54 + 8))(v56, v57);
  }

  return v79;
}

void sub_2198381C8(uint64_t a1)
{
  if (!qword_27CC1FE88)
  {
    type metadata accessor for SearchFeedServiceConfig(255);
    sub_21983832C(&qword_280EC37A0, type metadata accessor for SearchFeedServiceConfig, &unk_219C4DF90);
    v1 = sub_219BEDFA4();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1FE88);
    }
  }
}

uint64_t sub_21983825C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2198382C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983832C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219838374@<X0>(char *a1@<X0>, uint64_t a4@<X8>)
{
  v39 = a4;
  sub_2187EE82C(0, &qword_280EE4DF0, MEMORY[0x277D6DE10]);
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v34 = &v33 - v6;
  sub_218CA0600(0);
  v8 = v7;
  v37 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218B58900(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D51CC0(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218951DB0(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B5A8(0, &qword_280EE3600, MEMORY[0x277D6EC60]);
  sub_219BEB244();
  if ((*(v19 + 48))(v16, 1, v18) == 1)
  {
    sub_21983B69C(v16, sub_218D51CC0);
    v22 = sub_219BE16D4();
    return (*(*(v22 - 8) + 56))(v39, 1, 1, v22);
  }

  else
  {
    v33 = v8;
    (*(v19 + 32))(v21, v16, v18);
    v40 = *(v38 + 56);
    sub_2187EE748(0);
    sub_2186EF8AC(&unk_280EE4C90, sub_2187EE748, MEMORY[0x277D6DF38]);
    sub_219BE91E4();
    v24 = sub_218E66480(v21);
    if (v25)
    {
      v26 = 1;
      v27 = v39;
      v28 = v33;
    }

    else
    {
      v29 = v24;
      sub_2186EF8AC(&unk_280EE5A50, sub_218CA0600, MEMORY[0x277D6D628]);
      v28 = v33;
      sub_219BF5DF4();
      sub_219BF5E84();
      if (v29 >= sub_219BF5E74())
      {
        v26 = 1;
      }

      else
      {
        v30 = v34;
        sub_219BE65A4();
        v31 = v36;
        sub_219BE8194();
        (*(v35 + 8))(v30, v31);
        v26 = 0;
      }

      v27 = v39;
    }

    (*(v37 + 8))(v10, v28);
    v32 = sub_219BE97D4();
    (*(*(v32 - 8) + 56))(v13, v26, 1, v32);
    sub_2198388B8(v21, a1, v13, v27);
    sub_21983B69C(v13, sub_218B58900);
    return (*(v19 + 8))(v21, v18);
  }
}

void sub_2198388B8(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v151 = a2;
  v152 = a3;
  v135 = a4;
  v6 = MEMORY[0x277D83D88];
  sub_21983B544(0, &unk_280EE87A0, MEMORY[0x277D2DAB8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v7 - 8);
  v134 = &v114 - v8;
  v120 = sub_219BF0B74();
  v126 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v118 = v10;
  v125 = *(v10 - 1);
  MEMORY[0x28223BE20](v10);
  v117 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B544(0, &unk_280EE8380, MEMORY[0x277D2E6C8], v6);
  MEMORY[0x28223BE20](v12 - 8);
  v133 = &v114 - v13;
  v14 = sub_219BE16E4();
  MEMORY[0x28223BE20](v14 - 8);
  v140 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v149 = type metadata accessor for MagazineFeedSectionDescriptor(0);
  MEMORY[0x28223BE20](v149);
  v132 = &v114 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v131 = &v114 - v18;
  MEMORY[0x28223BE20](v19);
  v139 = &v114 - v20;
  v138 = sub_219BDF584();
  v137 = *(v138 - 8);
  MEMORY[0x28223BE20](v138);
  v143 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_219BF07A4();
  v122 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v123 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v156 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v156);
  v127 = &v114 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v129 = &v114 - v25;
  sub_2186FACE4(0);
  v136 = v26;
  v121 = *(v26 - 1);
  MEMORY[0x28223BE20](v26);
  v141 = &v114 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870(0);
  v29 = v28;
  v148 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v154 = &v114 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v153 = (&v114 - v32);
  MEMORY[0x28223BE20](v33);
  v128 = &v114 - v34;
  sub_218951DB0(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = (&v114 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_2195762F0(0);
  v150 = v40;
  MEMORY[0x28223BE20](v40);
  v155 = &v114 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v42);
  v44 = &v114 - v43;
  MEMORY[0x28223BE20](v45);
  v47 = &v114 - v46;
  v48 = v4[5];
  v147 = v4[6];
  v146 = __swift_project_boxed_opaque_existential_1(v4 + 2, v48);
  v145 = sub_219BE6944();
  sub_2186EF8AC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
  sub_2186EF8AC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
  v142 = sub_219BF00F4();

  v130 = sub_21983A340(a1, v152);
  v49 = *(v37 + 16);
  v151 = a1;
  v147 = (v37 + 16);
  v145 = v49;
  v49(v39, a1, v36);
  v50 = sub_2186EF8AC(&unk_280EE5940, sub_218951DB0, MEMORY[0x277D6D728]);
  v146 = v39;
  v144 = v50;
  sub_219BF56A4();
  v51 = *(v150 + 9);
  sub_2186EF8AC(&qword_280EE5938, sub_218951DB0, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  if (*&v47[v51] == v157)
  {
    v149 = MEMORY[0x277D84F90];
  }

  else
  {
    v152 = (v148 + 16);
    v52 = (v148 + 8);
    v116 = (v121 + 4);
    ++v122;
    ++v121;
    v149 = MEMORY[0x277D84F90];
    do
    {
      a1 = v129;
      v53 = v29;
      v54 = v128;
      while (1)
      {
        v55 = sub_219BF5EC4();
        (*v152)(v54);
        v55(&v157, 0);
        sub_219BF5E94();
        sub_219BE5FC4();
        if (swift_getEnumCaseMultiPayload() == 4)
        {
          break;
        }

        (*v52)(v54, v53);
        sub_21983B69C(a1, type metadata accessor for MagazineFeedModel);
        sub_219BF5E84();
        if (*&v47[v51] == v157)
        {
          v29 = v53;
          goto LABEL_13;
        }
      }

      (*v116)(v141, a1, v136);
      v56 = v123;
      sub_219BF07D4();
      v57 = sub_219BF06B4();
      (*v122)(v56, v124);
      v58 = v57;
      v59 = [v57 identifier];

      a1 = v136;
      v115 = sub_219BF5414();
      v114 = v60;

      (*v121)(v141, a1);
      (*v52)(v54, v53);
      v29 = v53;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v149 = sub_218840D24(0, *(v149 + 2) + 1, 1, v149);
      }

      v62 = *(v149 + 2);
      v61 = *(v149 + 3);
      if (v62 >= v61 >> 1)
      {
        v149 = sub_218840D24((v61 > 1), v62 + 1, 1, v149);
      }

      v63 = v149;
      *(v149 + 2) = v62 + 1;
      v64 = &v63[16 * v62];
      v65 = v114;
      *(v64 + 4) = v115;
      *(v64 + 5) = v65;
      sub_219BF5E84();
    }

    while (*&v47[v51] != v157);
  }

LABEL_13:
  sub_21983B69C(v47, sub_2195762F0);
  v145(v146, v151, v36);
  sub_219BF56A4();
  v66 = *(v150 + 9);
  sub_219BF5E84();
  if (*&v44[v66] == v157)
  {
    v152 = MEMORY[0x277D84F90];
  }

  else
  {
    v69 = (v148 + 16);
    a1 = (v148 + 8);
    v152 = MEMORY[0x277D84F90];
    do
    {
      v70 = sub_219BF5EC4();
      v71 = v153;
      (*v69)(v153);
      v70(&v157, 0);
      sub_219BF5E94();
      sub_219839E68(&v157);
      (*a1)(v71, v29);
      v72 = v158;
      if (v158)
      {
        v73 = v157;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v152 = sub_218840D24(0, *(v152 + 2) + 1, 1, v152);
        }

        v75 = *(v152 + 2);
        v74 = *(v152 + 3);
        v76 = v75 + 1;
        if (v75 >= v74 >> 1)
        {
          v141 = v75 + 1;
          v136 = v75;
          v79 = sub_218840D24((v74 > 1), (v75 + 1), 1, v152);
          v76 = v141;
          v75 = v136;
          v152 = v79;
        }

        v77 = v152;
        *(v152 + 2) = v76;
        v78 = &v77[16 * v75];
        *(v78 + 4) = v73;
        *(v78 + 5) = v72;
      }

      sub_219BF5E84();
    }

    while (*&v44[v66] != v157);
  }

  sub_21983B69C(v44, sub_2195762F0);
  v145(v146, v151, v36);
  v67 = v155;
  sub_219BF56A4();
  v68 = *(v150 + 9);
  sub_219BF5E84();
  if (*(v67 + v68) == v157)
  {
    v150 = MEMORY[0x277D84F90];
  }

  else
  {
    v153 = (v148 + 16);
    v80 = (v148 + 8);
    v148 = v125 + 32;
    v146 = (v125 + 8);
    v147 = (v126 + 8);
    v150 = MEMORY[0x277D84F90];
    while (2)
    {
      v81 = v127;
      a1 = v154;
LABEL_28:
      v44 = sub_219BF5EC4();
      (*v153)(a1);
      (v44)(&v157, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      switch(swift_getEnumCaseMultiPayload())
      {
        case 1u:
          v86 = sub_219BF1584();
          (*(*(v86 - 8) + 8))(v81, v86);
          goto LABEL_31;
        case 2u:
        case 3u:
        case 4u:
        case 5u:
        case 6u:
        case 7u:
        case 8u:
        case 9u:
        case 0xAu:
        case 0xBu:
          v82 = type metadata accessor for MagazineFeedModel;
          v83 = v81;
          goto LABEL_30;
        case 0xCu:
          v87 = v117;
          v44 = v118;
          (*v148)(v117, v81, v118);
          v88 = v119;
          a1 = v87;
          sub_219BF07D4();
          v89 = sub_219BF0B44();
          (*v147)(v88, v120);
          v90 = v89;
          v91 = [v89 identifier];

          v92 = sub_219BF5414();
          v144 = v93;
          v145 = v92;

          (*v146)(a1, v44);
          (*v80)(v154, v29);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v150 = sub_218840D24(0, *(v150 + 2) + 1, 1, v150);
          }

          v95 = *(v150 + 2);
          v94 = *(v150 + 3);
          if (v95 >= v94 >> 1)
          {
            v150 = sub_218840D24((v94 > 1), v95 + 1, 1, v150);
          }

          v96 = v150;
          *(v150 + 2) = v95 + 1;
          v97 = &v96[16 * v95];
          v98 = v144;
          *(v97 + 4) = v145;
          *(v97 + 5) = v98;
          v67 = v155;
          sub_219BF5E84();
          if (*(v67 + v68) != v157)
          {
            continue;
          }

          goto LABEL_40;
        default:

          sub_2186F6F00(0);
          v82 = type metadata accessor for MagazineFeedGapLocation;
          v83 = &v81[*(v85 + 48)];
LABEL_30:
          sub_21983B69C(v83, v82);
LABEL_31:
          a1 = v154;
          (*v80)(v154, v29);
          v84 = v155;
          sub_219BF5E84();
          if (*&v84[v68] != v157)
          {
            goto LABEL_28;
          }

          v67 = v84;
          break;
      }

      break;
    }
  }

LABEL_40:
  sub_21983B69C(v67, sub_2195762F0);
  (*(v137 + 104))(v143, *MEMORY[0x277D2DB58], v138);
  v99 = v139;
  v100 = v151;
  sub_219BE6934();
  sub_2193B127C(v140);
  sub_21983B69C(v99, type metadata accessor for MagazineFeedSectionDescriptor);
  sub_219BE6944();
  v102 = v101;
  sub_219BF5DF4();
  sub_219BF5E84();
  v103 = sub_219BF5E74();
  if (v103 > 0x7FFFFFFF)
  {
    __break(1u);
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v142 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  v29 = v103;
  if (v103 < 0xFFFFFFFF80000000)
  {
    goto LABEL_48;
  }

  if (v142 > 0x7FFFFFFF)
  {
LABEL_49:
    __break(1u);

    (*a1)(v100, v29);
    sub_21983B69C(v44, sub_2195762F0);

    __break(1u);
    return;
  }

  v104 = v131;
  sub_219BE6934();
  v105 = v133;
  sub_2193AE788(v133);
  sub_21983B69C(v104, type metadata accessor for MagazineFeedSectionDescriptor);
  v106 = sub_219BE0674();
  (*(*(v106 - 8) + 56))(v105, 0, 1, v106);
  v107 = v132;
  sub_219BE6934();
  v108 = sub_2193B1600();
  sub_21983B69C(v107, type metadata accessor for MagazineFeedSectionDescriptor);
  if (v108)
  {
    v109 = [v108 identifier];
    swift_unknownObjectRelease();
    sub_219BF5414();
  }

  v110 = v135;
  v111 = v134;
  v112 = sub_219BDF474();
  (*(*(v112 - 8) + 56))(v111, 1, 1, v112);
  sub_219BE15E4();
  v113 = sub_219BE16D4();
  (*(*(v113 - 8) + 56))(v110, 0, 1, v113);
}

uint64_t sub_219839E68@<X0>(uint64_t *a1@<X8>)
{
  v46 = a1;
  v1 = sub_219BF0B74();
  v42 = *(v1 - 8);
  v43 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v39 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v41 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BF04A4();
  v40 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v10 = v9;
  v11 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870(0);
  sub_219BE5FC4();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v38 = sub_219BF1584();
      result = (*(*(v38 - 8) + 8))(v16, v38);
      goto LABEL_4;
    case 2u:
    case 3u:
    case 4u:
    case 5u:
    case 6u:
    case 7u:
    case 8u:
    case 9u:
    case 0xAu:
      v17 = type metadata accessor for MagazineFeedModel;
      v18 = v16;
      goto LABEL_3;
    case 0xBu:
      (*(v11 + 32))(v13, v16, v10);
      sub_219BF07D4();
      v21 = sub_219BF0404();
      (*(v40 + 8))(v8, v6);
      v22 = [v21 identifier];
      swift_unknownObjectRelease();
      v23 = sub_219BF5414();
      v25 = v24;

      result = (*(v11 + 8))(v13, v10);
      v26 = v46;
      *v46 = v23;
      v26[1] = v25;
      return result;
    case 0xCu:
      v28 = v44;
      v27 = v45;
      v29 = v41;
      (*(v44 + 32))(v41, v16, v45);
      sub_219BF07D4();
      v30 = sub_219BF0B44();
      (*(v42 + 8))(v3, v43);
      v31 = [v30 sourceChannel];

      v32 = [v31 identifier];
      swift_unknownObjectRelease();
      v33 = sub_219BF5414();
      v35 = v34;

      result = (*(v28 + 8))(v29, v27);
      v36 = v46;
      *v46 = v33;
      v36[1] = v35;
      return result;
    default:

      sub_2186F6F00(0);
      v17 = type metadata accessor for MagazineFeedGapLocation;
      v18 = &v16[*(v37 + 48)];
LABEL_3:
      result = sub_21983B69C(v18, v17);
LABEL_4:
      v20 = v46;
      *v46 = 0;
      v20[1] = 0;
      return result;
  }
}

uint64_t sub_21983A340(uint64_t a1, uint64_t a2)
{
  v128 = a2;
  v126 = a1;
  v110 = sub_219BF1094();
  v102 = *(v110 - 8);
  MEMORY[0x28223BE20](v110);
  v109 = &v97 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218A127E0(0);
  MEMORY[0x28223BE20](v3 - 8);
  v108 = &v97 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F700C(0);
  v107 = v5;
  v101 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v106 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = sub_219BF0F34();
  v100 = *(v112 - 8);
  MEMORY[0x28223BE20](v112);
  v105 = &v97 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0758(0);
  v111 = v8;
  v99 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v104 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for MagazineFeedModel(0);
  MEMORY[0x28223BE20](v113);
  v125 = &v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218953870(0);
  v129 = v11;
  v103 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v127 = &v97 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3D3CC(0);
  v14 = *(v13 - 8);
  v123 = v13;
  v124 = v14;
  MEMORY[0x28223BE20](v13);
  v122 = (&v97 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v130 = &v97 - v17;
  MEMORY[0x28223BE20](v18);
  v121 = &v97 - v19;
  MEMORY[0x28223BE20](v20);
  v120 = (&v97 - v21);
  sub_218951DB0(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v26 = &v97 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B330(0);
  v28 = v27;
  MEMORY[0x28223BE20](v27);
  v30 = &v97 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B350(0, &qword_280E8D5C8, MEMORY[0x277D84118]);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v97 - v32;
  sub_218B58900(0);
  MEMORY[0x28223BE20](v34 - 8);
  v36 = &v97 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_219BE97D4();
  v38 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v40 = &v97 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983B4DC(v128, v36, sub_218B58900);
  if ((*(v38 + 48))(v36, 1, v37) == 1)
  {
    sub_21983B69C(v36, sub_218B58900);
    return MEMORY[0x277D84F90];
  }

  v128 = v38;
  v42 = *(v38 + 32);
  v98 = v37;
  v42(v40, v36, v37);
  v97 = v40;
  v43 = sub_219BE97C4();
  (*(v24 + 16))(v33, v126, v23);
  (*(v24 + 32))(v26, v33, v23);
  sub_2186EF8AC(&unk_280EE5940, sub_218951DB0, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v44 = &v30[*(v28 + 52)];
  v126 = v43;
  *v44 = v43;
  v44[1] = 0;
  v119 = v44;
  sub_2195762F0(0);
  v46 = *(v45 + 36);
  v47 = sub_2186EF8AC(&qword_280EE5938, sub_218951DB0, MEMORY[0x277D6D730]);
  sub_219BF5E84();
  if (*&v30[v46] == v131)
  {
    v48 = MEMORY[0x277D84F90];
    v50 = v124;
    v49 = v125;
  }

  else
  {
    v51 = v23;
    v52 = 0;
    v118 = (v103 + 16);
    v114 = (v103 + 32);
    v48 = MEMORY[0x277D84F90];
    v50 = v124;
    v49 = v125;
    v116 = v46;
    v117 = v30;
    v115 = v47;
    while (1)
    {
      v54 = sub_219BF5EC4();
      (*v118)(v127);
      v54(&v131, 0);
      result = sub_219BF5E94();
      v56 = *(v126 + 16);
      if (v52 == v56)
      {
        break;
      }

      if (v52 >= v56)
      {
        goto LABEL_45;
      }

      v57 = v51;
      v58 = v48;
      v59 = sub_219BE9364();
      v60 = *(v59 - 8);
      v61 = v127;
      v62 = v126 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v52;
      v119[1] = v52 + 1;
      v63 = *(v123 + 48);
      v64 = v121;
      (*v114)(v121, v61, v129);
      (*(v60 + 16))(v64 + v63, v62, v59);
      v65 = v120;
      sub_21983B478(v64, v120);
      if (sub_219BE9354())
      {
        sub_21983B478(v65, v122);
        v48 = v58;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v132 = v58;
        v50 = v124;
        v51 = v57;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_218C35290(0, *(v48 + 16) + 1, 1);
          v48 = v132;
        }

        v53 = v116;
        v30 = v117;
        v68 = *(v48 + 16);
        v67 = *(v48 + 24);
        if (v68 >= v67 >> 1)
        {
          sub_218C35290((v67 > 1), v68 + 1, 1);
          v48 = v132;
        }

        *(v48 + 16) = v68 + 1;
        sub_21983B478(v122, v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v68);
        v49 = v125;
      }

      else
      {
        sub_21983B69C(v65, sub_218C3D3CC);
        v50 = v124;
        v49 = v125;
        v48 = v58;
        v51 = v57;
        v53 = v116;
        v30 = v117;
      }

      sub_219BF5E84();
      ++v52;
      if (*&v30[v53] == v131)
      {
        goto LABEL_17;
      }
    }

    (*(v103 + 8))(v127, v129);
  }

LABEL_17:
  v30[*(v28 + 56)] = 1;
  result = sub_21983B69C(v30, sub_21983B330);
  v69 = *(v48 + 16);
  if (!v69)
  {
    v41 = MEMORY[0x277D84F90];
    v77 = v128;
LABEL_41:
    v96 = v98;
LABEL_42:

    (*(v77 + 8))(v97, v96);
    return v41;
  }

  v70 = 0;
  v126 = v101 + 32;
  v123 = v102 + 8;
  v121 = (v101 + 8);
  v122 = (v100 + 48);
  v127 = (v100 + 8);
  v119 = (v99 + 8);
  v120 = (v99 + 32);
  v118 = (v69 - 1);
  v41 = MEMORY[0x277D84F90];
  v71 = v111;
  while (v70 < *(v48 + 16))
  {
    v75 = v70;
    sub_21983B4DC(v48 + ((*(v50 + 80) + 32) & ~*(v50 + 80)) + *(v50 + 72) * v70++, v130, sub_218C3D3CC);
    sub_219BE5FC4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v77 = v128;
    switch(EnumCaseMultiPayload)
    {
      case 1:
        v86 = sub_219BF1584();
        (*(*(v86 - 8) + 8))(v49, v86);
        goto LABEL_22;
      case 2:
        v82 = v104;
        (*v120)(v104, v49, v71);
        v83 = v105;
        sub_219BF07D4();
        v84 = sub_219BF0F14();
        (*v127)(v83, v112);
        v85 = [v84 articleID];
        swift_unknownObjectRelease();
        if (!v85)
        {
          (*v119)(v82, v71);
          goto LABEL_30;
        }

        v87 = sub_219BF5414();
        v89 = v88;

        (*v119)(v82, v71);
        goto LABEL_34;
      case 3:
      case 4:
      case 6:
      case 7:
      case 8:
      case 9:
      case 10:
      case 11:
      case 12:
        v73 = type metadata accessor for MagazineFeedModel;
        v74 = v49;
        goto LABEL_21;
      case 5:
        v78 = v106;
        v79 = v107;
        (*v126)(v106, v49, v107);
        v80 = v109;
        sub_219BF07D4();
        v81 = v108;
        sub_219BF1074();
        (*v123)(v80, v110);
        if ((*v122)(v81, 1, v112) == 1)
        {
          (*v121)(v78, v79);
          sub_21983B69C(v81, sub_218A127E0);
          v71 = v111;
LABEL_30:
          v50 = v124;
          v49 = v125;
          v77 = v128;
LABEL_22:
          result = sub_21983B69C(v130, sub_218C3D3CC);
          if (v69 == v70)
          {
            goto LABEL_41;
          }
        }

        else
        {
          v90 = sub_219BF0F14();
          (*v127)(v81, v112);
          v91 = [v90 identifier];
          swift_unknownObjectRelease();
          v87 = sub_219BF5414();
          v89 = v92;

          (*v121)(v78, v79);
          v71 = v111;
LABEL_34:
          sub_21983B69C(v130, sub_218C3D3CC);
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_218840D24(0, *(v41 + 16) + 1, 1, v41);
            v41 = result;
          }

          v94 = *(v41 + 16);
          v93 = *(v41 + 24);
          if (v94 >= v93 >> 1)
          {
            result = sub_218840D24((v93 > 1), v94 + 1, 1, v41);
            v41 = result;
          }

          v70 = v75 + 1;
          *(v41 + 16) = v94 + 1;
          v95 = v41 + 16 * v94;
          *(v95 + 32) = v87;
          *(v95 + 40) = v89;
          v50 = v124;
          v49 = v125;
          v96 = v98;
          v77 = v128;
          if (v118 == v75)
          {
            goto LABEL_42;
          }
        }

        break;
      default:

        sub_2186F6F00(0);
        v73 = type metadata accessor for MagazineFeedGapLocation;
        v74 = &v49[*(v72 + 48)];
LABEL_21:
        sub_21983B69C(v74, v73);
        goto LABEL_22;
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
  return result;
}

void sub_21983B350(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_218951DB0(255);
    v7 = v6;
    sub_21983B444(255);
    v11[0] = v7;
    v11[1] = v8;
    v11[2] = sub_2186EF8AC(&unk_280EE5940, sub_218951DB0, MEMORY[0x277D6D728]);
    v11[3] = sub_2186EF8AC(&qword_280E8F490, sub_21983B444, MEMORY[0x277D83970]);
    v9 = a3(a1, v11);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_21983B478(uint64_t a1, uint64_t a2)
{
  sub_218C3D3CC(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_21983B4DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21983B544(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21983B5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for MagazineFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for MagazineFeedModel(255);
    v8[2] = sub_2186EF8AC(&qword_280EB0350, type metadata accessor for MagazineFeedSectionDescriptor, &unk_219C76C98);
    v8[3] = sub_2186EF8AC(&qword_280ED5CC0, type metadata accessor for MagazineFeedModel, &unk_219C6F020);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21983B69C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21983B6FC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  sub_21983CE30(v0 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model, type metadata accessor for SportsDetailModel);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SportsManagementDetailBlueprintLayoutBuilder(uint64_t a1)
{
  result = qword_27CC1FED0;
  if (!qword_27CC1FED0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_21983B7D8(uint64_t a1)
{
  result = type metadata accessor for SportsDetailModel(319);
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

uint64_t sub_21983B994(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_21983B9DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v21 = a4;
  v7 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v17[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for SportsManagementDetailLayoutSectionDescriptor(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v17[-v14];
  sub_218952B60(0);
  sub_219BE6934();
  sub_21983BC34(v9, a3, v15);
  sub_21983CE30(v9, type metadata accessor for SportsManagementDetailSectionDescriptor);
  sub_21983CDC8(v15, v12, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
  v18 = a3;
  v19 = a1;
  v20 = a2;
  sub_21894C788(sub_21983CDA4, v17);
  type metadata accessor for SportsManagementDetailLayoutModel(0);
  sub_21983B994(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor, &unk_219CB8FF8);
  sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel, &unk_219CC99C4);
  sub_219BE8174();
  return sub_21983CE30(v15, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor);
}

uint64_t sub_21983BC34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v33 = a2;
  v5 = type metadata accessor for TitleViewLayoutOptions(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for TitleViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v8 - 8);
  v34 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF3AF4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v32 - v18;
  sub_21983CDC8(a1, &v32 - v18, type metadata accessor for SportsManagementDetailSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 8))(v19, v10);
  }

  sub_21983CDC8(a1, v16, type metadata accessor for SportsManagementDetailSectionDescriptor);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v11 + 32))(v13, v16, v10);
    v20 = sub_219BF3AD4();
    v22 = v21;
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v22 = 0xEB00000000646564;
    v20 = 0x6E656D6D6F636572;
  }

  v23 = sub_21977633C();
  *&v35 = v20;
  *(&v35 + 1) = v22;
  *&v36 = v23;
  *(&v36 + 1) = v24;
  v37 = 0u;
  v38 = 0u;
  v39 = 0;
  __swift_project_boxed_opaque_existential_1((v32 + 56), *(v32 + 80));
  v25 = sub_219BE8164();
  (*(*(v25 - 8) + 16))(v7, v33, v25);
  *&v7[v5[5]] = 0x4024000000000000;
  *&v7[v5[6]] = 0x4024000000000000;
  v7[v5[7]] = 3;
  v26 = v34;
  sub_219459814(&v35, *&v7, v34);
  sub_21983CE30(v7, type metadata accessor for TitleViewLayoutOptions);
  sub_218D57484(0);
  v28 = *(v27 + 48);
  v29 = v38;
  *(a3 + 32) = v37;
  *(a3 + 48) = v29;
  *(a3 + 64) = v39;
  v30 = v36;
  *a3 = v35;
  *(a3 + 16) = v30;
  return sub_21983CE90(v26, a3 + v28, type metadata accessor for TitleViewLayoutAttributes);
}

uint64_t sub_21983BFF4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v104 = a3;
  v102 = a2;
  v100 = a1;
  v106 = a4;
  v105 = type metadata accessor for SportsManagementDetailLayoutModel(0);
  MEMORY[0x28223BE20](v105);
  v99 = &v85 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = type metadata accessor for SportsDetailModel(0);
  MEMORY[0x28223BE20](v103);
  v95 = &v85 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v96 = &v85 - v7;
  v101 = type metadata accessor for SportsManagementDetailSectionDescriptor(0);
  MEMORY[0x28223BE20](v101);
  v94 = &v85 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v92 = &v85 - v10;
  MEMORY[0x28223BE20](v11);
  v89 = &v85 - v12;
  MEMORY[0x28223BE20](v13);
  v87 = &v85 - v14;
  MEMORY[0x28223BE20](v15);
  v93 = &v85 - v16;
  MEMORY[0x28223BE20](v17);
  v90 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v88 = &v85 - v20;
  MEMORY[0x28223BE20](v21);
  v86 = &v85 - v22;
  v98 = sub_219BE8164();
  v97 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v24 = &v85 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v27 = &v85 - v26;
  v28 = type metadata accessor for SportsTagLayoutOptions(0);
  MEMORY[0x28223BE20](v28);
  v30 = &v85 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v33 = &v85 - v32;
  v91 = type metadata accessor for SportsModel(0);
  MEMORY[0x28223BE20](v91);
  v35 = &v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for SportsManagementDetailModel(0);
  MEMORY[0x28223BE20](v36);
  v38 = (&v85 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218952E24(0);
  sub_219BE5FC4();
  v39 = v97;
  v40 = (v97 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v96 = *v38;
    v41 = v98;
    (*v40)(v24, v100, v98);
    sub_218952B60(0);
    v42 = v87;
    sub_219BE6934();
    v43 = v89;
    sub_21983CE90(v42, v89, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v44 = sub_219BF3AF4();
      (*(*(v44 - 8) + 8))(v43, v44);
    }

    v45 = v92;
    sub_219BE6934();
    v46 = v94;
    sub_21983CE90(v45, v94, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v47 = sub_219BF3AF4();
      (*(*(v47 - 8) + 8))(v46, v47);
    }

    v48 = v95;
    sub_21983CDC8(v104 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model, v95, type metadata accessor for SportsDetailModel);
    v49 = swift_getEnumCaseMultiPayload() < 2;
    sub_21983CE30(v48, type metadata accessor for SportsDetailModel);
    __asm { FMOV            V0.2D, #24.0 }

    *&v30[v28[8]] = _Q0;
    *&v30[v28[9]] = 0x4020000000000000;
    *&v30[v28[10]] = 0x4031000000000000;
    (*(v39 + 32))(v30, v24, v41);
    v30[v28[5]] = 2;
    v30[v28[6]] = 1;
    v30[v28[11]] = v49;
    v30[v28[7]] = 0;
    v55 = v96;
    sub_219AE5AF0(*&v96, v30, &v107);
    v56 = v115;
    v57 = v99;
    *(v99 + 152) = v116;
    v58 = v118;
    *(v57 + 168) = v117;
    *(v57 + 184) = v58;
    v59 = v111;
    *(v57 + 88) = v112;
    v60 = v114;
    *(v57 + 104) = v113;
    *(v57 + 120) = v60;
    *(v57 + 136) = v56;
    v61 = v107;
    *(v57 + 24) = v108;
    v62 = v110;
    *(v57 + 40) = v109;
    *(v57 + 56) = v62;
    *(v57 + 72) = v59;
    *v57 = v55;
    *(v57 + 200) = v119;
    *(v57 + 8) = v61;
    swift_storeEnumTagMultiPayload();
    sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel, &unk_219CC99C4);
    sub_219BE75D4();
    v63 = type metadata accessor for SportsTagLayoutOptions;
    v64 = v30;
  }

  else
  {
    sub_21983CE90(v38, v35, type metadata accessor for SportsModel);
    v65 = *v40;
    v95 = v27;
    v66 = v98;
    v65(v27, v100, v98);
    sub_218952B60(0);
    v67 = v86;
    sub_219BE6934();
    v68 = v88;
    sub_21983CE90(v67, v88, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v69 = sub_219BF3AF4();
      (*(*(v69 - 8) + 8))(v68, v69);
    }

    v70 = v90;
    sub_219BE6934();
    v71 = v93;
    sub_21983CE90(v70, v93, type metadata accessor for SportsManagementDetailSectionDescriptor);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v72 = sub_219BF3AF4();
      (*(*(v72 - 8) + 8))(v71, v72);
    }

    v73 = v96;
    sub_21983CDC8(v104 + OBJC_IVAR____TtC7NewsUI244SportsManagementDetailBlueprintLayoutBuilder_model, v96, type metadata accessor for SportsDetailModel);
    v74 = swift_getEnumCaseMultiPayload() < 2;
    sub_21983CE30(v73, type metadata accessor for SportsDetailModel);
    __asm { FMOV            V0.2D, #24.0 }

    *&v33[v28[8]] = _Q0;
    *&v33[v28[9]] = 0x4020000000000000;
    *&v33[v28[10]] = 0x4031000000000000;
    (*(v39 + 32))(v33, v95, v66);
    v33[v28[5]] = 2;
    v33[v28[6]] = 1;
    v33[v28[11]] = v74;
    v33[v28[7]] = 0;
    sub_219AE5AF0(*&v35[*(v91 + 24)], v33, &v107);
    sub_218C95678(0);
    v77 = v99 + *(v76 + 48);
    sub_21983CDC8(v35, v99, type metadata accessor for SportsModel);
    v78 = v118;
    *(v77 + 160) = v117;
    *(v77 + 176) = v78;
    *(v77 + 192) = v119;
    v79 = v114;
    *(v77 + 96) = v113;
    *(v77 + 112) = v79;
    v80 = v116;
    *(v77 + 128) = v115;
    *(v77 + 144) = v80;
    v81 = v110;
    *(v77 + 32) = v109;
    *(v77 + 48) = v81;
    v82 = v112;
    *(v77 + 64) = v111;
    *(v77 + 80) = v82;
    v83 = v108;
    *v77 = v107;
    *(v77 + 16) = v83;
    swift_storeEnumTagMultiPayload();
    sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel, &unk_219CC99C4);
    sub_219BE75D4();
    sub_21983CE30(v33, type metadata accessor for SportsTagLayoutOptions);
    v63 = type metadata accessor for SportsModel;
    v64 = v35;
  }

  return sub_21983CE30(v64, v63);
}

uint64_t sub_21983CB38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = a2;
  v4[4] = a3;
  v4[2] = a1;
  v5 = sub_219BE8164();
  v4[5] = v5;
  v4[6] = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *v3;
  v4[7] = v6;
  v4[8] = v7;

  return MEMORY[0x2822009F8](sub_21983CC00, 0, 0);
}

uint64_t sub_21983CC00()
{
  v1 = v0[8];
  v2 = v0[4];
  (*(v0[6] + 16))(v0[7], v2, v0[5]);
  v3 = swift_task_alloc();
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  sub_21894C3F0(sub_21983CD84, v3);

  type metadata accessor for SportsManagementDetailLayoutSectionDescriptor(0);
  type metadata accessor for SportsManagementDetailLayoutModel(0);
  sub_21983B994(&qword_27CC0B050, type metadata accessor for SportsManagementDetailLayoutSectionDescriptor, &unk_219CB8FF8);
  sub_21983B994(&qword_27CC0B058, type metadata accessor for SportsManagementDetailLayoutModel, &unk_219CC99C4);
  sub_219BE6514();

  v4 = v0[1];

  return v4();
}

uint64_t sub_21983CDC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983CE30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_21983CE90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983CEF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34[1] = a3;
  v38 = a2;
  v43 = a1;
  sub_2189519D8(0);
  v42 = v3;
  v40 = *(v3 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v3);
  v39 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelPickerHeaderViewLayoutAttributes(0);
  MEMORY[0x28223BE20](v5 - 8);
  v37 = v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for ChannelPickerLayoutSectionDescriptor(0) - 8;
  MEMORY[0x28223BE20](v35);
  v8 = v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v34 - v10;
  v12 = sub_219BDC104();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40(0);
  (*(v17 + 104))(v19, *MEMORY[0x277D6E758], v16);
  sub_219BE9614();
  v20 = sub_219BF6424();
  (*(v13 + 8))(v15, v12);
  (*(v17 + 8))(v19, v16);
  __swift_project_boxed_opaque_existential_1((v36 + 32), *(v36 + 56));
  sub_218951AE4(0);
  sub_219BE8184();
  v21 = *(v11 + 3);
  v45[2] = *(v11 + 2);
  v45[3] = v21;
  v46 = *(v11 + 8);
  v22 = *(v11 + 1);
  v45[0] = *v11;
  v45[1] = v22;
  sub_218967C1C(v45, v44);
  sub_218967D30(v11, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219BE8184();
  v23 = v37;
  sub_218967C78(&v8[*(v35 + 28)], v37);
  sub_218967D30(v8, type metadata accessor for ChannelPickerLayoutSectionDescriptor);
  sub_219A4ECF4(v45, v20, v23);
  sub_218967CDC(v45);
  sub_218967D30(v23, type metadata accessor for ChannelPickerHeaderViewLayoutAttributes);
  v24 = sub_219BE8204();
  v25 = *&v24[OBJC_IVAR____TtC7NewsUI29TitleView_seeMoreButton];

  v26 = *&v25[qword_280EDD8D8];
  v27 = swift_allocObject();
  swift_weakInit();
  v28 = v40;
  v29 = v39;
  v30 = v42;
  (*(v40 + 16))(v39, v43, v42);
  v31 = (*(v28 + 80) + 24) & ~*(v28 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v27;
  (*(v28 + 32))(v32 + v31, v29, v30);

  return v20;
}

uint64_t sub_21983D41C(uint64_t a1)
{
  v1 = sub_219BE8C14();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ChannelPickerElementModel(0);
  MEMORY[0x28223BE20](v5);
  v7 = (&v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218951C88(0);
  v9 = v8;
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v27 = v2;
    sub_2189519D8(0);
    sub_219BE6934();
    memcpy(v51, v41, 0x151uLL);
    memcpy(v52, v41, 0x151uLL);
    sub_21898EAD4(v52);
    v13 = sub_21892DE88(v52);
    v14 = *(v13 + 232);
    v44 = *(v13 + 216);
    v45 = v14;
    v15 = *(v13 + 200);
    v42 = *(v13 + 184);
    v43 = v15;
    v16 = *(v13 + 296);
    v17 = *(v13 + 312);
    v18 = *(v13 + 264);
    v48 = *(v13 + 280);
    v49 = v16;
    v50[0] = v17;
    *(v50 + 9) = *(v13 + 321);
    v46 = *(v13 + 248);
    v47 = v18;
    v38 = v48;
    v39 = v16;
    v40[0] = v50[0];
    *(v40 + 9) = *(v50 + 9);
    v34 = v44;
    v35 = v45;
    v36 = v46;
    v37 = v18;
    v32 = v42;
    v33 = v43;
    if (sub_21881EB34(&v32) == 1)
    {

      return sub_218F9E778(v51);
    }

    else
    {
      v30[6] = v48;
      v30[7] = v49;
      v31[0] = v50[0];
      *(v31 + 9) = *(v50 + 9);
      v30[2] = v44;
      v30[3] = v45;
      v30[4] = v46;
      v30[5] = v47;
      v30[0] = v42;
      v30[1] = v43;
      sub_218D2E42C(v30, &v29);
      sub_218F9E778(v51);
      v19 = v39;
      v7[6] = v38;
      v7[7] = v19;
      v7[8] = v40[0];
      *(v7 + 137) = *(v40 + 9);
      v20 = v35;
      v7[2] = v34;
      v7[3] = v20;
      v21 = v37;
      v7[4] = v36;
      v7[5] = v21;
      v22 = v33;
      *v7 = v32;
      v7[1] = v22;
      swift_storeEnumTagMultiPayload();
      sub_218967BD4(&qword_27CC0AEE0, type metadata accessor for ChannelPickerElementModel, &protocol conformance descriptor for ChannelPickerElementModel);
      sub_219BE5FB4();
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v24 = *(Strong + OBJC_IVAR____TtC7NewsUI227ChannelPickerViewController_eventHandler);
        sub_219BE8C04();
        v25 = *(v24 + 40);
        ObjectType = swift_getObjectType();
        (*(v25 + 48))(v11, ObjectType, v25);

        (*(v27 + 8))(v4, v1);
        (*(v28 + 8))(v11, v9);
        return swift_unknownObjectRelease();
      }

      else
      {

        return (*(v28 + 8))(v11, v9);
      }
    }
  }

  return result;
}

uint64_t sub_21983D858()
{
  v0 = sub_219BE9834();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218967B40(0);
  (*(v1 + 104))(v3, *MEMORY[0x277D6E758], v0);
  sub_219BF6444();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_21983D994()
{
  sub_2189519D8(0);
  v1 = *(v0 + 16);

  return sub_21983D41C(v1);
}

uint64_t sub_21983DA08()
{
  v1 = [*(v0 + 24) appConfiguration];
  if (([v1 respondsToSelector_] & 1) != 0 && (v2 = objc_msgSend(v1, sel_sharedWithYouFeedLayoutConfigurationResourceId)) != 0)
  {
    v3 = v2;
    sub_219BF5414();

    MEMORY[0x28223BE20](v4);
    sub_2186E9518();
    sub_219BE3204();

    v5 = sub_219BE2E54();
    type metadata accessor for SharedWithYouFeedConfigFetchResult(0);
    sub_219BE2F84();

    v6 = sub_219BE2E54();
    v7 = sub_219BE2FD4();
    swift_unknownObjectRelease();

    return v7;
  }

  else
  {
    sub_21983E5E4();
    swift_allocError();
    *v9 = 1;
    sub_21983E778(0, &unk_27CC1FEE8, type metadata accessor for SharedWithYouFeedConfigFetchResult, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v10 = sub_219BE2FF4();
    swift_unknownObjectRelease();
    return v10;
  }
}

uint64_t sub_21983DC4C(void *a1, uint64_t a2, uint64_t a3)
{
  sub_21983E778(0, &qword_280EE7E80, MEMORY[0x277D6CA50], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v13 - v5);
  __swift_project_boxed_opaque_existential_1(a1 + 4, a1[7]);
  sub_219BF5CE4();
  *v6 = v7;
  v8 = *MEMORY[0x277D6CA48];
  v9 = sub_219BE1B34();
  v10 = *(v9 - 8);
  (*(v10 + 104))(v6, v8, v9);
  (*(v10 + 56))(v6, 0, 1, v9);
  v11 = sub_219BF2944();
  sub_21897DAD8(v6);
  return v11;
}

char *sub_21983DDE8(void **a1, unint64_t a2)
{
  v36 = a2;
  v34 = type metadata accessor for SharedWithYouFeedConfigFetchResult(0);
  MEMORY[0x28223BE20](v34);
  v35 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - v6;
  v8 = type metadata accessor for SharedWithYouFeedContentConfig(0);
  MEMORY[0x28223BE20](v8);
  v37 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDB954();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v15 = MEMORY[0x28223BE20](v14).n128_u64[0];
  v17 = &v31 - v16;
  v18 = *a1;
  v19 = [v18 fileURL];
  if (v19)
  {
    v20 = v19;
    sub_219BDB8B4();

    (*(v11 + 32))(v17, v13, v10);
    v21 = sub_219BDB974();
    if (!v2)
    {
      v32 = v7;
      v24 = v22;
      v25 = v21;
      sub_21983E658();
      v33 = v25;
      v36 = v24;
      sub_219BE1974();
      v27 = v37;
      v28 = v32;
      sub_21983E6B0(v37, v32, type metadata accessor for SharedWithYouFeedContentConfig);
      v29 = v35;
      *(v28 + *(v34 + 20)) = v18;
      sub_21983E6B0(v28, v29, type metadata accessor for SharedWithYouFeedConfigFetchResult);
      sub_21983E778(0, &unk_27CC1FEE8, type metadata accessor for SharedWithYouFeedConfigFetchResult, MEMORY[0x277D6CF30]);
      swift_allocObject();
      v30 = v18;
      v7 = sub_219BE3014();
      sub_2186C6190(v33, v36);
      sub_21983E718(v28, type metadata accessor for SharedWithYouFeedConfigFetchResult);
      sub_21983E718(v27, type metadata accessor for SharedWithYouFeedContentConfig);
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    sub_21983E5E4();
    swift_allocError();
    *v23 = 2;
    swift_willThrow();
  }

  return v7;
}

double sub_21983E1C8(uint64_t a1)
{
  if (qword_280E8D890 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61760;
  v2 = sub_219BF61F4();
  sub_2186F20D4(0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_2186FC3BC();
  *(v3 + 32) = 0;
  *(v3 + 40) = 0xE000000000000000;
  sub_219BE5314("Failed to fetch shared feed service config. Error=%{public}@)", 61, 2, &dword_2186C1000, v1, v2, v3);

  return result;
}

void *sub_21983E2F4@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedWithYouFeedContentConfig(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21983E658();
  result = sub_219BE1974();
  if (!v2)
  {
    sub_21983E7DC(v6, a2);
    result = type metadata accessor for SharedWithYouFeedConfigFetchResult(0);
    *(a2 + *(result + 5)) = 0;
  }

  return result;
}

uint64_t sub_21983E3DC(uint64_t a1, uint64_t a2)
{
  v3 = sub_219BDB954();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_219BDAF64();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v15[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v4 + 16))(v6, a1, v3, v9);
  sub_219BDAF44();
  v16 = v11;
  sub_219BE3204();
  v12 = sub_219BE2E54();
  type metadata accessor for SharedWithYouFeedConfigFetchResult(0);
  v13 = sub_219BE2F94();

  (*(v8 + 8))(v11, v7);
  return v13;
}

unint64_t sub_21983E5E4()
{
  result = qword_27CC1FEE0;
  if (!qword_27CC1FEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FEE0);
  }

  return result;
}

unint64_t sub_21983E658()
{
  result = qword_27CC1FEF8;
  if (!qword_27CC1FEF8)
  {
    type metadata accessor for SharedWithYouFeedContentConfig(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FEF8);
  }

  return result;
}

uint64_t sub_21983E6B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21983E718(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21983E778(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_21983E7DC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharedWithYouFeedContentConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_21983E854()
{
  result = qword_27CC1FF08;
  if (!qword_27CC1FF08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF08);
  }

  return result;
}

uint64_t sub_21983E8B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13[0] = a4;
  v13[1] = a5;
  sub_21983EE80(0, &qword_280E8C2C8, MEMORY[0x277D84538]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21983EE2C();
  sub_219BF7B44();
  v15 = 0;
  sub_219BF77F4();
  if (!v5)
  {
    v14 = 1;
    sub_219BF7794();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_21983EA38()
{
  if (*v0)
  {
    return 0x6E61726165707061;
  }

  else
  {
    return 0x6E656D6563616C70;
  }
}

void sub_21983EA84(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E656D6563616C70 && a2 == 0xE900000000000074;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E61726165707061 && a2 == 0xEE006F666E496563)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_21983EB70(uint64_t a1)
{
  v2 = sub_21983EE2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21983EBAC(uint64_t a1)
{
  v2 = sub_21983EE2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21983EBE8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_21983EC38(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_21983EC38(void *a1)
{
  sub_21983EE80(0, &qword_280E8C948, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21983EE2C();
  sub_219BF7B34();
  if (!v1)
  {
    v12 = 0;
    v8 = sub_219BF76F4();
    v11 = 1;
    sub_219BF7694();
    (*(v5 + 8))(v7, v4);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21983EE2C()
{
  result = qword_280EA0A28;
  if (!qword_280EA0A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A28);
  }

  return result;
}

void sub_21983EE80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21983EE2C();
    v7 = a3(a1, &type metadata for EngagementTodayFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21983EEF8()
{
  result = qword_27CC1FF10;
  if (!qword_27CC1FF10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF10);
  }

  return result;
}

unint64_t sub_21983EF50()
{
  result = qword_280EA0A18;
  if (!qword_280EA0A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A18);
  }

  return result;
}

unint64_t sub_21983EFA8()
{
  result = qword_280EA0A20;
  if (!qword_280EA0A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA0A20);
  }

  return result;
}

uint64_t sub_21983EFFC(uint64_t a1)
{
  sub_2186E5C80(0, &unk_280EE9D00, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v22 - v4;
  v6 = sub_219BDB954();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [*(v1 + 32) appConfiguration];
  v12 = *(v1 + 80);
  if (qword_27CC08130 != -1)
  {
    swift_once();
  }

  if ((sub_219BDC834() & 1) == 0)
  {
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    sub_218F85D20();
LABEL_10:
    sub_219374410(a1, v22);
    v18 = swift_allocObject();
    v19 = v22[1];
    *(v18 + 16) = v22[0];
    *(v18 + 32) = v19;
    *(v18 + 48) = v23[0];
    *(v18 + 57) = *(v23 + 9);
    *(v18 + 80) = v11;
    *(v18 + 88) = v12;

    swift_unknownObjectRetain();
    swift_unknownObjectRetain();
    v20 = sub_219BE2E54();
    type metadata accessor for SearchMoreFeedServiceConfig(0);
    v15 = sub_219BE2F74();

    swift_unknownObjectRelease();

    return v15;
  }

  if (qword_27CC08128 != -1)
  {
    swift_once();
  }

  sub_21983F5FC(&qword_27CC1FF20, v13, type metadata accessor for SearchMoreFeedServiceConfigFetcher, &unk_219CAC898);
  sub_219BDC7D4();
  sub_219BDB914();

  if ((*(v7 + 48))(v5, 1, v6) != 1)
  {
    (*(v7 + 32))(v10, v5, v6);
    __swift_project_boxed_opaque_existential_1((v1 + 40), *(v1 + 64));
    v16 = off_282A536F8;
    v17 = type metadata accessor for SearchMoreFeedConfigManager();
    v16(v10, v17);
    (*(v7 + 8))(v10, v6);
    goto LABEL_10;
  }

  sub_218838478(v5);
  sub_21983F644();
  swift_allocError();
  *v14 = 0;
  sub_2186E5C80(0, &qword_27CC1FF30, type metadata accessor for SearchMoreFeedServiceConfig, MEMORY[0x277D6CF30]);
  swift_allocObject();
  v15 = sub_219BE2FF4();
  swift_unknownObjectRelease();
  return v15;
}

double sub_21983F458@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_219374410(a2, a5);
  v9 = type metadata accessor for SearchMoreFeedServiceConfig(0);
  sub_21983F698(a1, a5 + v9[5]);
  v10 = v9[6];
  v11 = *MEMORY[0x277D32220];
  v12 = sub_219BEEA84();
  (*(*(v12 - 8) + 104))(a5 + v10, v11, v12);
  *(a5 + v9[7]) = [a3 autoRefreshMinimumInterval];
  *(a5 + v9[8]) = a4;
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_21983F5FC(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_21983F644()
{
  result = qword_27CC1FF28;
  if (!qword_27CC1FF28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF28);
  }

  return result;
}

uint64_t sub_21983F698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchMoreFeedContentConfig(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_21983F710()
{
  result = qword_27CC1FF38;
  if (!qword_27CC1FF38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF38);
  }

  return result;
}

uint64_t sub_21983F764(void *a1, uint64_t a2)
{
  v3 = v2;
  v67 = a2;
  v5 = MEMORY[0x277D83D88];
  sub_219840B58(0, &unk_280EE34A0, MEMORY[0x277D2D148], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v6 - 8);
  v66 = &v56 - v7;
  sub_219840B58(0, &qword_280E91C10, MEMORY[0x277D32010], v5);
  MEMORY[0x28223BE20](v8 - 8);
  v64 = &v56 - v9;
  sub_219840B58(0, &unk_280E90C60, MEMORY[0x277D32FE0], v5);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v56 - v11;
  v13 = sub_219BF0574();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v56 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v65 = &v56 - v17;
  v18 = type metadata accessor for HeadlineSharedState(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v56 - v22;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v24 = v3[3];
    ObjectType = swift_getObjectType();
    v62 = (*(v24 + 8))(a1, ObjectType, v24);
    swift_unknownObjectRelease();
  }

  else
  {
    v62 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v26 = v3[5];
    v27 = swift_getObjectType();
    v61 = (*(v26 + 8))(a1, v27, v26);
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v28 = v3[7];
    v29 = swift_getObjectType();
    (*(v28 + 8))(a1, v67, v29, v28);
    swift_unknownObjectRelease();
    sub_2198409E0(v20, v23);
  }

  else
  {
    v30 = sub_219BF12B4();
    (*(*(v30 - 8) + 56))(v23, 1, 1, v30);
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v3[9];
    v32 = swift_getObjectType();
    v60 = (*(v31 + 8))(a1, v32, v31);
    swift_unknownObjectRelease();
  }

  else
  {
    v60 = 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  v63 = v23;
  if (Strong)
  {
    v34 = v3[11];
    v35 = swift_getObjectType();
    v59 = (*(v34 + 8))(a1, v35, v34);
    swift_unknownObjectRelease();
  }

  else
  {
    v59 = 1;
  }

  v36 = sub_21983FF3C(a1);
  if (swift_unknownObjectWeakLoadStrong())
  {
    v37 = v3[14];
    v38 = swift_getObjectType();
    v58 = (*(v37 + 8))(a1, v38, v37);
    swift_unknownObjectRelease();
  }

  else
  {
    v58 = 0;
  }

  v39 = swift_unknownObjectWeakLoadStrong();
  v57 = v13;
  if (v39)
  {
    v40 = v3[16];
    v41 = swift_getObjectType();
    v42 = (*(v40 + 8))(a1, v41, v40);
    swift_unknownObjectRelease();
  }

  else
  {
    v42 = 0;
  }

  sub_219840A44(v67, v12);
  v43 = sub_219BF0BD4();
  v44 = *(v43 - 8);
  if ((*(v44 + 48))(v12, 1, v43) == 1)
  {
    sub_218EA3B08(v12);
    v45 = v65;
    v46 = v57;
    (*(v14 + 104))(v65, *MEMORY[0x277D32D70], v57);
  }

  else
  {
    v47 = v42;
    v48 = v56;
    sub_219BF0B94();
    (*(v44 + 8))(v12, v43);
    v45 = v65;
    v49 = v48;
    v42 = v47;
    v46 = v57;
    (*(v14 + 32))(v65, v49, v57);
  }

  v50 = v64;
  sub_2198403B0(a1, v67, v64);
  v51 = sub_219BEBD44();
  v52 = v66;
  (*(*(v51 - 8) + 56))(v66, 1, 1, v51);
  type metadata accessor for HeadlineModel(0);
  v53 = swift_allocObject();
  *(v53 + 16) = a1;
  sub_219840AD8(v50, v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_audioTrack, &qword_280E91C10, MEMORY[0x277D32010]);
  v54 = v61;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_likedState) = v62;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_savedState) = v54 & 1;
  sub_2198409E0(v63, v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_sharedState);
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_offensiveState) = v60 & 1;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_draggableState) = v59 & 1;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_accessLevel) = v36;
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_deletedState) = v58 & 1;
  sub_219840AD8(v52, v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_nativeAdInfo, &unk_280EE34A0, MEMORY[0x277D2D148]);
  *(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_blockedState) = v42 & 1;
  (*(v14 + 32))(v53 + OBJC_IVAR____TtC7NewsUI213HeadlineModel_premiumBadge, v45, v46);
  swift_unknownObjectRetain();
  return v53;
}

uint64_t sub_21983FF3C(void *a1)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    v4 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v5 = [a1 isBundlePaid];
    }

    else
    {
      v5 = 0;
    }

    v6 = [a1 sourceChannel];
    if (v6)
    {
      v7 = [v6 identifier];
      swift_unknownObjectRelease();
      v8 = sub_219BF5414();
      v10 = v9;

      if (v4)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v8 = 0;
      v10 = 0;
      if (v4)
      {
LABEL_7:
        v11 = [v3 purchaseProvider];
        if (v10)
        {
          v12 = [v11 purchasedTagIDs];
          v13 = sub_219BF5D44();

          LOBYTE(v12) = sub_2188537B8(v8, v10, v13);

          swift_unknownObjectRelease();
          if (v12)
          {

LABEL_37:
            swift_unknownObjectRelease();
            return 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (!v5)
        {
          goto LABEL_34;
        }

LABEL_15:
        if (!v10)
        {
          goto LABEL_39;
        }

        v14 = [objc_msgSend(v3 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v14, v14 + 1))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v15 = v24;
            v16 = [v24 integerValue];
            if (v16 == -1)
            {

              goto LABEL_36;
            }

            v17 = v16;
            goto LABEL_25;
          }
        }

        else
        {
          sub_218806FD0(&v27);
        }

        v15 = 0;
        v17 = 0;
LABEL_25:
        if (objc_getAssociatedObject(v14, ~v17))
        {
          sub_219BF70B4();
          swift_unknownObjectRelease();
        }

        else
        {
          v25 = 0u;
          v26 = 0u;
        }

        v27 = v25;
        v28 = v26;
        if (*(&v26 + 1))
        {
          sub_2186C6148(0, &qword_280E8DA20, 0x277CCABB0);
          if (swift_dynamicCast())
          {
            v18 = v24;
            v19 = [v18 integerValue];

            if ((v19 ^ v17))
            {
LABEL_36:
              v20 = [objc_msgSend(v3 bundleSubscriptionProvider)];
              swift_unknownObjectRelease();
              v21 = [v20 bundleChannelIDs];

              v22 = sub_219BF53D4();
              LODWORD(v20) = [v21 containsObject_];

              if (v20)
              {
                goto LABEL_37;
              }

              goto LABEL_39;
            }

            goto LABEL_34;
          }
        }

        else
        {
          sub_218806FD0(&v27);
        }

        if (v17)
        {
          goto LABEL_36;
        }

LABEL_34:

LABEL_39:
        v23 = [v3 canGetBundleSubscriptionToChannel_];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        if (v23)
        {
          return 1;
        }

        else
        {
          return 2;
        }
      }
    }

    if ((v5 & 1) == 0)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    goto LABEL_15;
  }

  return result;
}

uint64_t sub_2198403B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  sub_219840B58(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v31 - v9;
  v11 = sub_219BF0BD4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219840A44(a2, v7);
  v15 = *(v12 + 48);
  if (v15(v7, 1, v11) == 1)
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getObjectType();
      sub_219BEEFB4();
      swift_unknownObjectRelease();
      v16 = 0;
    }

    else
    {
      v16 = 1;
    }

    (*(v12 + 56))(v10, v16, 1, v11);
    if (v15(v7, 1, v11) != 1)
    {
      sub_218EA3B08(v7);
    }
  }

  else
  {
    (*(v12 + 32))(v10, v7, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
  }

  if (v15(v10, 1, v11) == 1)
  {
    sub_218EA3B08(v10);
LABEL_24:
    v24 = 1;
    v23 = v32;
    goto LABEL_25;
  }

  (*(v12 + 32))(v14, v10, v11);
  if (sub_219BF0B84())
  {
    if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrack))
    {
      if (([a1 respondsToSelector_] & 1) == 0)
      {
        goto LABEL_23;
      }

      v17 = [a1 narrativeTrackSample];
      if (!v17)
      {
        goto LABEL_23;
      }

      v18 = v17;
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v19 = sub_219BF6F74();
      v20 = sub_219BF61F4();
      sub_219840B58(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_219C09BA0;
      *(v21 + 56) = sub_2186C6148(0, &qword_280E8E2C0, 0x277D30DD0);
      *(v21 + 64) = sub_219336C7C();
      *(v21 + 32) = v18;
      v22 = v18;
      sub_219BE5314("Audio track model as a subscribed user, but only found a sample track %{public}@", 80, 2, &dword_2186C1000, v19, v20, v21);
LABEL_22:

LABEL_23:
      (*(v12 + 8))(v14, v11);
      goto LABEL_24;
    }
  }

  else if (([a1 respondsToSelector_] & 1) == 0 || !objc_msgSend(a1, sel_narrativeTrackSample))
  {
    if (([a1 respondsToSelector_] & 1) == 0)
    {
      goto LABEL_23;
    }

    v25 = [a1 narrativeTrack];
    if (!v25)
    {
      goto LABEL_23;
    }

    v26 = v25;
    sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
    v19 = sub_219BF6F74();
    v27 = sub_219BF61F4();
    sub_219840B58(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09BA0;
    *(v28 + 56) = sub_2186C6148(0, &qword_280E8E2C0, 0x277D30DD0);
    *(v28 + 64) = sub_219336C7C();
    *(v28 + 32) = v26;
    v22 = v26;
    sub_219BE5314("Audio track model as a non-subscribed user, but only found a full track %{public}@", 82, 2, &dword_2186C1000, v19, v27, v28);
    goto LABEL_22;
  }

  v23 = v32;
  sub_219BEE3F4();
  (*(v12 + 8))(v14, v11);
  v24 = 0;
LABEL_25:
  v29 = sub_219BEE404();
  return (*(*(v29 - 8) + 56))(v23, v24, 1, v29);
}

uint64_t sub_219840968()
{
  sub_218774F78(v0 + 16);
  sub_218774F78(v0 + 32);
  sub_218774F78(v0 + 48);
  sub_218774F78(v0 + 64);
  sub_218774F78(v0 + 80);
  sub_218774F78(v0 + 96);
  sub_218774F78(v0 + 104);
  sub_218774F78(v0 + 120);
  sub_218774F78(v0 + 136);

  return swift_deallocClassInstance();
}

uint64_t sub_2198409E0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HeadlineSharedState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219840A44(uint64_t a1, uint64_t a2)
{
  sub_219840B58(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219840AD8(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219840B58(0, a3, a4, MEMORY[0x277D83D88]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

void sub_219840B58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219840BBC()
{
  v23 = sub_219BE9C04();
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = v21 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_219BDF074();
  v3 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BE1544();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_219BE1524();
  v10 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v22 + 16);
  v13 = sub_219BE9924();
  v21[0] = v14;
  v21[1] = v13;
  (*(v7 + 104))(v9, *MEMORY[0x277D2F3F8], v6);
  sub_219BE9934();
  v15 = (*(v0 + 88))(v2, v23);
  if (v15 == *MEMORY[0x277D6E830])
  {
    v16 = MEMORY[0x277D2D868];
  }

  else
  {
    if (v15 != *MEMORY[0x277D6E840] && v15 != *MEMORY[0x277D6E848] && v15 != *MEMORY[0x277D6E838])
    {
      result = sub_219BF7514();
      __break(1u);
      return result;
    }

    v16 = MEMORY[0x277D2D810];
  }

  (*(v3 + 104))(v5, *v16, v25);
  sub_219BE1514();
  sub_219841E44(&qword_280EE7FE0, MEMORY[0x277D2F398], MEMORY[0x277D2F390]);
  v19 = v24;
  sub_219BDD1F4();
  return (*(v10 + 8))(v12, v19);
}

double sub_219840FAC(uint64_t a1)
{
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = v16 - v5;
  sub_218C72018(0);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE7564();
  sub_219BE5FC4();
  (*(v9 + 8))(v11, v8);
  v12 = v16[1];
  (*(v4 + 16))(v6, a1, v3);
  v13 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v14 = swift_allocObject();
  *(v14 + 16) = v12 & 0x7FFFFFFFFFFFFFFFLL;
  (*(v4 + 32))(v14 + v13, v6, v3);
  sub_218E2CACC();
  sub_219BDD154();
  sub_21892DE98(v12);

  return result;
}

uint64_t sub_219841204()
{
  sub_219BE0244();
  sub_219841E44(&qword_280EE8478, MEMORY[0x277D2E3E8], MEMORY[0x277D2E3D0]);
  return sub_219BDD234();
}

uint64_t sub_219841284(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = a1;
  v78 = a3;
  v4 = sub_219BDBD34();
  v68 = *(v4 - 8);
  v69 = v4;
  MEMORY[0x28223BE20](v4);
  v67 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_219BDF1E4();
  v54 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v53 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C72018(0);
  v63 = *(v7 - 8);
  v64 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219841D6C(0, &qword_27CC0B008, MEMORY[0x277D6EC60]);
  v62 = v9;
  v61 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v58 = &v52 - v10;
  sub_218E2C0C0(0);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v52 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219841D6C(0, &qword_27CC0AFD8, MEMORY[0x277D6D710]);
  v65 = *(v13 - 8);
  v66 = v13;
  MEMORY[0x28223BE20](v13);
  v52 = &v52 - v14;
  v57 = sub_219BDFCE4();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v16 = &v52 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_219BE1444();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v52 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v19) = *(a2 + 16);
  v21 = *(a2 + 24);
  v80 = 0;
  v81 = 0xE000000000000000;
  v79 = v19;
  sub_219BF7484();
  MEMORY[0x21CECC330](58, 0xE100000000000000);
  v22 = [*(v21 + 16) identifier];
  v23 = sub_219BF5414();
  v25 = v24;

  MEMORY[0x21CECC330](v23, v25);

  sub_219BE1424();
  sub_2187F3258(0);
  v27 = v26;
  v28 = sub_219BDCD44();
  v29 = *(v28 - 8);
  v30 = (*(v29 + 80) + 32) & ~*(v29 + 80);
  v73 = *(v29 + 72);
  v75 = v27;
  v31 = swift_allocObject();
  v70 = xmmword_219C09BA0;
  *(v31 + 16) = xmmword_219C09BA0;
  v32 = *(v29 + 104);
  v72 = *MEMORY[0x277CEAD18];
  v71 = v32;
  v32(v31 + v30);
  sub_219841E44(&unk_280EE8030, MEMORY[0x277D2F260], MEMORY[0x277D2F258]);
  v74 = "gDislikedTracker.swift";
  sub_219BDCCC4();

  (*(v18 + 8))(v20, v17);
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v34 = v33;
  sub_219841DF0();
  v76 = v34;
  result = sub_219BE75B4();
  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (result > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  sub_219BDFCD4();
  v36 = swift_allocObject();
  *(v36 + 16) = v70;
  v71(v36 + v30, v72, v28);
  sub_219841E44(&unk_280EE8590, MEMORY[0x277D2E058], MEMORY[0x277D2E050]);
  v37 = v57;
  sub_219BDCCC4();

  (*(v56 + 8))(v16, v37);
  v38 = v58;
  sub_219BE7594();
  v39 = v60;
  sub_219BE7564();
  v57 = v28;
  v40 = v64;
  sub_219BE5F84();
  (*(v63 + 8))(v39, v40);
  v41 = v59;
  v42 = v62;
  sub_219BEB244();

  (*(v61 + 8))(v38, v42);
  v43 = v65;
  v44 = v66;
  if ((*(v65 + 48))(v41, 1, v66) == 1)
  {
    sub_218E2C2B4(v41);
  }

  else
  {
    v45 = v52;
    (*(v43 + 32))(v52, v41, v44);
    sub_219BE6944();
    v46 = v53;
    sub_219BDF1C4();
    v47 = swift_allocObject();
    *(v47 + 16) = v70;
    v71(v47 + v30, v72, v57);
    sub_219841E44(&unk_280EE8840, MEMORY[0x277D2D970], MEMORY[0x277D2D968]);
    v48 = v55;
    sub_219BDCCC4();

    (*(v54 + 8))(v46, v48);
    (*(v43 + 8))(v45, v44);
  }

  sub_219BDFEC4();
  v49 = v67;
  sub_219BE75A4();
  sub_219841E44(&unk_280EE8520, MEMORY[0x277D2E1D0], MEMORY[0x277D2E1C8]);
  sub_219BDCC64();
  v50 = v69;
  v51 = *(v68 + 8);
  v51(v49, v69);
  sub_219BE7574();
  sub_219BDCC74();
  return (v51)(v49, v50);
}

uint64_t sub_219841CDC(uint64_t a1)
{
  sub_219841D6C(0, &qword_27CC1FF40, MEMORY[0x277D6DA48]);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80));

  return sub_219841284(a1, v4, v5);
}

void sub_219841D6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FollowingDislikedDescriptor;
    v8[1] = &type metadata for FollowingDislikedModel;
    v8[2] = sub_2189528B0();
    v8[3] = sub_218952904();
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_219841DF0()
{
  result = qword_27CC1FF48;
  if (!qword_27CC1FF48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF48);
  }

  return result;
}

uint64_t sub_219841E44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PromotedArticleListTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E95720;
  if (!qword_280E95720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219841F00(uint64_t a1)
{
  result = sub_219BF1934();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_219841F74@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = sub_219BF1934();
  v15 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v17 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198424A0(0, &qword_280E8C720, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21984244C();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v15;
    v11 = v16;
    v18 = 0;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *(v11 + *(type metadata accessor for PromotedArticleListTagFeedGroupConfigData(0) + 20)) = 2;
    (*(v12 + 32))(v11, v17, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2198421D8(void *a1)
{
  v3 = v1;
  sub_2198424A0(0, &qword_27CC1FF50, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21984244C();
  sub_219BF7B44();
  v11[15] = 0;
  sub_219BF1934();
  sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
  sub_219BF7834();
  if (!v2)
  {
    v11[14] = *(v3 + *(type metadata accessor for PromotedArticleListTagFeedGroupConfigData(0) + 20));
    v11[13] = 1;
    sub_218933D28();
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_2198423A4(uint64_t a1)
{
  v2 = sub_21984244C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2198423E0(uint64_t a1)
{
  v2 = sub_21984244C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21984244C()
{
  result = qword_280E95750;
  if (!qword_280E95750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95750);
  }

  return result;
}

void sub_2198424A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21984244C();
    v7 = a3(a1, &type metadata for PromotedArticleListTagFeedGroupConfigData.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219842518()
{
  result = qword_27CC1FF58;
  if (!qword_27CC1FF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF58);
  }

  return result;
}

unint64_t sub_219842570()
{
  result = qword_280E95740;
  if (!qword_280E95740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95740);
  }

  return result;
}

unint64_t sub_2198425C8()
{
  result = qword_280E95748;
  if (!qword_280E95748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E95748);
  }

  return result;
}

uint64_t sub_21984262C(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v20 = a3;
  v21 = a2;
  sub_218AF3D94(0);
  MEMORY[0x28223BE20](v3 - 8);
  sub_219842A98(0, &qword_280EE36F0, MEMORY[0x277D6EC60]);
  v19 = v4;
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  sub_219842A98(0, &qword_280EE4B28, MEMORY[0x277D6DF88]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v18 - v11;
  sub_218953A84(0);
  v14 = v13;
  v15 = sub_2186D7898(&qword_280EE58A0, sub_218953A84, MEMORY[0x277D6D720]);
  v16 = sub_2186D7898(&qword_280EE58A8, sub_218953A84, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v14, v15, v16);
  type metadata accessor for SearchSectionDescriptor(0);
  type metadata accessor for SearchModel(0);
  sub_2186D7898(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
  sub_2186D7898(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
  sub_219BEB2D4();
  sub_219BE85C4();
  (*(v5 + 8))(v7, v19);
  v21(v12);
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_219842974(uint64_t a1)
{
  v2 = sub_218E154D0();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_2198429B4()
{
  result = qword_27CC1FF60;
  if (!qword_27CC1FF60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FF60);
  }

  return result;
}

void sub_219842A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SearchSectionDescriptor(255);
    v8[1] = type metadata accessor for SearchModel(255);
    v8[2] = sub_2186D7898(qword_280EC3630, type metadata accessor for SearchSectionDescriptor, &unk_219C5AE78);
    v8[3] = sub_2186D7898(&qword_280EDF480, type metadata accessor for SearchModel, &unk_219C18D50);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_219842BAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v80 = a5;
  v81 = a4;
  v76 = a3;
  v87 = a2;
  v92 = a1;
  v67 = sub_219BE09E4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BDF104();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_219844950(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v60 - v9;
  v10 = sub_219BE0724();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219844950(0, &unk_27CC15A90, MEMORY[0x277D6E130], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v60 - v13;
  v14 = sub_219BDF274();
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BDEEB4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BE0D44();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF0E4();
  v85 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF2B24();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_219844950(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v88 = v21;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v89 = *(v23 + 72);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  v90 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277CEAD18];
  v82 = *(v23 + 104);
  v82(v26 + v25, v27, v22);
  v91 = "likedTracker.swift";
  sub_219844B00(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();

  (*(v85 + 8))(v20, v18);
  sub_219BF2B24();
  swift_getObjectType();
  v28 = v68;
  sub_219BF6834();
  swift_unknownObjectRelease();
  v85 = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = v90;
  v86 = v27;
  v83 = v22;
  v84 = v23 + 104;
  v30 = v22;
  v31 = v82;
  v82(v29 + v25, v27, v30);
  sub_219844B00(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v32 = v69;
  sub_219BDCCC4();

  (*(v70 + 8))(v28, v32);
  if (v76)
  {
    v33 = v71;
    sub_219BE8304();
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v71;
  }

  v35 = sub_219BE89F4();
  (*(*(v35 - 8) + 56))(v33, v34, 1, v35);
  sub_219BDF284();
  v36 = v73;
  sub_219BDEEA4();
  v37 = swift_allocObject();
  *(v37 + 16) = v90;
  v38 = v83;
  v31(v37 + v25, v86, v83);
  sub_219844B00(&unk_27CC15AA0, MEMORY[0x277D2D740], MEMORY[0x277D2D738]);
  v39 = v75;
  sub_219BDCCC4();

  (*(v74 + 8))(v36, v39);
  sub_219BF2B24();
  swift_getObjectType();
  v40 = v77;
  sub_219BF6824();
  swift_unknownObjectRelease();
  v41 = v78;
  v42 = v79;
  if ((*(v78 + 48))(v40, 1, v79) == 1)
  {
    sub_2198449B4(v40, &qword_280EE8330, MEMORY[0x277D2E738]);
    v43 = v86;
  }

  else
  {
    v44 = v38;
    v45 = v61;
    (*(v41 + 32))(v61, v40, v42);
    v46 = swift_allocObject();
    *(v46 + 16) = v90;
    v43 = v86;
    v31(v46 + v25, v86, v44);
    sub_219844B00(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v41 + 8))(v45, v42);
  }

  v47 = [sub_219BF2B24() sourceChannel];
  swift_unknownObjectRelease();
  if (v47)
  {
    v48 = v62;
    sub_219BE01F4();
    v49 = swift_allocObject();
    *(v49 + 16) = v90;
    v50 = v83;
    v51 = v82;
    v82(v49 + v25, v43, v83);
    sub_219844B00(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v52 = v64;
    sub_219BDCCC4();

    (*(v63 + 8))(v48, v52);
    v53 = v65;
    sub_219BE01E4();
    v54 = swift_allocObject();
    *(v54 + 16) = v90;
    v51(v54 + v25, v86, v50);
    sub_219844B00(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v55 = v67;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v66 + 8))(v53, v55);
  }

  if (v80)
  {
    sub_219BDFAC4();
    v56 = &unk_280EE8600;
    v57 = MEMORY[0x277D2DF20];
    v58 = MEMORY[0x277D2DF08];
  }

  else
  {
    sub_219BE01C4();
    v56 = &unk_280EE8488;
    v57 = MEMORY[0x277D2E3A8];
    v58 = MEMORY[0x277D2E390];
  }

  sub_219844B00(v56, v57, v58);
  memset(v93, 0, sizeof(v93));
  sub_219BDCCE4();
  return sub_218806FD0(v93);
}

void sub_219843898(uint64_t a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a5;
  v37 = a4;
  sub_219844950(0, &unk_280E902E0, MEMORY[0x277D33AE0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v30 - v11;
  v13 = sub_219BF2B34();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v30 - v18;
  v20 = *a2;
  sub_219843BD8(a1, v12);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_2198449B4(v12, &unk_280E902E0, MEMORY[0x277D33AE0]);
    return;
  }

  v35 = a6;
  v21 = *(v14 + 32);
  v21(v19, v12, v13);
  if (a3)
  {
    v22 = sub_219BE82D4();
    if (v22)
    {
      if (v20 == 2)
      {
        (*(v14 + 8))(v19, v13);

        return;
      }

      v34 = v22;
      v30 = sub_219BF2B04();
      v33 = v23;
      (*(v14 + 16))(v16, v19, v13);
      v24 = (*(v14 + 80) + 16) & ~*(v14 + 80);
      v32 = (v15 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
      v31 = (v32 + 15) & 0xFFFFFFFFFFFFFFF8;
      v25 = swift_allocObject();
      v21((v25 + v24), v16, v13);
      v26 = v31;
      *(v25 + v32) = a3;
      v27 = v25 + v26;
      *v27 = v37;
      v28 = v20 & 1;
      v29 = v33;
      *(v27 + 8) = v28;

      if (v29)
      {
        sub_219BDD1B4();
      }

      else
      {
        sub_219BDD154();
      }
    }
  }

  (*(v14 + 8))(v19, v13);
}

uint64_t sub_219843BD8(uint64_t a1, uint64_t a2)
{
  sub_219844950(0, &unk_280E902E0, MEMORY[0x277D33AE0], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219843C6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v80 = a5;
  v81 = a4;
  v76 = a3;
  v87 = a2;
  v92 = a1;
  v67 = sub_219BE09E4();
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = sub_219BDF104();
  v63 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v62 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x277D83D88];
  sub_219844950(0, &qword_280EE8330, MEMORY[0x277D2E738], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v8 - 8);
  v77 = &v60 - v9;
  v10 = sub_219BE0724();
  v78 = *(v10 - 8);
  v79 = v10;
  MEMORY[0x28223BE20](v10);
  v61 = &v60 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219844950(0, &unk_27CC15A90, MEMORY[0x277D6E130], v7);
  MEMORY[0x28223BE20](v12 - 8);
  v71 = &v60 - v13;
  v14 = sub_219BDF274();
  MEMORY[0x28223BE20](v14 - 8);
  v72 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = sub_219BDEEB4();
  v74 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v73 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_219BE0D44();
  v70 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v68 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_219BDF0E4();
  v85 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BF2B24();
  swift_getObjectType();
  sub_219BF67F4();
  swift_unknownObjectRelease();
  sub_219844950(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v88 = v21;
  v22 = sub_219BDCD44();
  v23 = *(v22 - 8);
  v89 = *(v23 + 72);
  v24 = *(v23 + 80);
  v25 = (v24 + 32) & ~v24;
  v26 = swift_allocObject();
  v90 = xmmword_219C09BA0;
  *(v26 + 16) = xmmword_219C09BA0;
  v27 = *MEMORY[0x277CEAD18];
  v82 = *(v23 + 104);
  v82(v26 + v25, v27, v22);
  v91 = "likedTracker.swift";
  sub_219844B00(&qword_280EE88B0, MEMORY[0x277D2D8A8], MEMORY[0x277D2D8A0]);
  sub_219BDCCC4();

  (*(v85 + 8))(v20, v18);
  sub_219BF2B24();
  swift_getObjectType();
  v28 = v68;
  sub_219BF6834();
  swift_unknownObjectRelease();
  v85 = v24;
  v29 = swift_allocObject();
  *(v29 + 16) = v90;
  v86 = v27;
  v83 = v22;
  v84 = v23 + 104;
  v30 = v22;
  v31 = v82;
  v82(v29 + v25, v27, v30);
  sub_219844B00(&qword_280EE8190, MEMORY[0x277D2ECA0], MEMORY[0x277D2EC98]);
  v32 = v69;
  sub_219BDCCC4();

  (*(v70 + 8))(v28, v32);
  if (v76)
  {
    v33 = v71;
    sub_219BE8304();
    v34 = 0;
  }

  else
  {
    v34 = 1;
    v33 = v71;
  }

  v35 = sub_219BE89F4();
  (*(*(v35 - 8) + 56))(v33, v34, 1, v35);
  sub_219BDF284();
  v36 = v73;
  sub_219BDEEA4();
  v37 = swift_allocObject();
  *(v37 + 16) = v90;
  v38 = v83;
  v31(v37 + v25, v86, v83);
  sub_219844B00(&unk_27CC15AA0, MEMORY[0x277D2D740], MEMORY[0x277D2D738]);
  v39 = v75;
  sub_219BDCCC4();

  (*(v74 + 8))(v36, v39);
  sub_219BF2B24();
  swift_getObjectType();
  v40 = v77;
  sub_219BF6824();
  swift_unknownObjectRelease();
  v41 = v78;
  v42 = v79;
  if ((*(v78 + 48))(v40, 1, v79) == 1)
  {
    sub_2198449B4(v40, &qword_280EE8330, MEMORY[0x277D2E738]);
    v43 = v86;
  }

  else
  {
    v44 = v38;
    v45 = v61;
    (*(v41 + 32))(v61, v40, v42);
    v46 = swift_allocObject();
    *(v46 + 16) = v90;
    v43 = v86;
    v31(v46 + v25, v86, v44);
    sub_219844B00(&unk_27CC0DC50, MEMORY[0x277D2E738], MEMORY[0x277D2E730]);
    sub_219BDCCC4();

    (*(v41 + 8))(v45, v42);
  }

  v47 = [sub_219BF2B24() sourceChannel];
  swift_unknownObjectRelease();
  if (v47)
  {
    v48 = v62;
    sub_219BE01F4();
    v49 = swift_allocObject();
    *(v49 + 16) = v90;
    v50 = v83;
    v51 = v82;
    v82(v49 + v25, v43, v83);
    sub_219844B00(&unk_280EE8890, MEMORY[0x277D2D8B8], MEMORY[0x277D2D8B0]);
    v52 = v64;
    sub_219BDCCC4();

    (*(v63 + 8))(v48, v52);
    v53 = v65;
    sub_219BE01E4();
    v54 = swift_allocObject();
    *(v54 + 16) = v90;
    v51(v54 + v25, v86, v50);
    sub_219844B00(&qword_280EE8270, MEMORY[0x277D2E9C0], MEMORY[0x277D2E9B8]);
    v55 = v67;
    sub_219BDCCC4();
    swift_unknownObjectRelease();

    (*(v66 + 8))(v53, v55);
  }

  if (v80)
  {
    sub_219BE0374();
    v56 = &unk_27CC1FF70;
    v57 = MEMORY[0x277D2E4D0];
    v58 = MEMORY[0x277D2E4C8];
  }

  else
  {
    sub_219BE0764();
    v56 = &unk_27CC1FF68;
    v57 = MEMORY[0x277D2E780];
    v58 = MEMORY[0x277D2E778];
  }

  sub_219844B00(v56, v57, v58);
  memset(v93, 0, sizeof(v93));
  sub_219BDCCE4();
  return sub_218806FD0(v93);
}

void sub_219844950(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_2198449B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219844950(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219844A3C(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t, uint64_t))
{
  v4 = *(sub_219BF2B34() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v2 + v6);
  v8 = v2 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 8);

  return a2(a1, v2 + v5, v7, v9, v10);
}

uint64_t sub_219844B00(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_219844B48(uint64_t a1)
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = *(v1 + 112);
  sub_219845048(a1, &v40);
  v11 = v40;
  v12 = *(v1 + 64);
  v13 = sub_219BDFA44();
  (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  sub_218718690(v1 + 72, v39);
  v38 = 0;
  memset(v37, 0, sizeof(v37));
  v36 = v10;
  sub_2187B171C(v37, &v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  if (v33)
  {
    sub_21875F93C(&v32, v34);
    *&v32 = v11;
    v14 = sub_2194DA78C(v34);
    v16 = v15;
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(v34);
  }

  else
  {
    sub_2187B1CC0(&v32, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
    if (qword_280ED32D0 != -1)
    {
      swift_once();
    }

    v14 = qword_280ED32D8;
    v16 = qword_280ED32E0;
    v18 = qword_280ED32E8;

    sub_2188202A8(v16);
  }

  v31 = v11;
  v33 = sub_219BDD274();
  *&v32 = v12;
  sub_2189B4E2C(v9, v6);
  sub_2187B171C(v39, v34, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  v19 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v20 = (v5 + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = v11;
  v21 = (v20 + 47) & 0xFFFFFFFFFFFFFFF8;
  v30 = v9;
  v22 = swift_allocObject();
  *(v22 + 16) = v12;
  sub_2189B4EAC(v6, v22 + v19);
  v23 = v22 + v20;
  v24 = v34[1];
  *v23 = v34[0];
  *(v23 + 16) = v24;
  *(v23 + 32) = v35;
  v25 = (v22 + v21);
  v26 = (v22 + ((v21 + 23) & 0xFFFFFFFFFFFFFFF8));
  *v25 = 0;
  v25[1] = 0;
  *v26 = v14;
  v26[1] = v16;
  v26[2] = v18;
  swift_retain_n();

  sub_2188202A8(v16);
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB464();

  sub_2187FABEC(v16, v18);
  sub_2187B1CC0(v37, &unk_280EE7DB0, &qword_280EE7DC0, MEMORY[0x277D6CB00]);
  sub_2187B1CC0(v39, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_219845F0C(v30, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218806FD0(&v32);
  return sub_218932F9C(v29);
}

uint64_t sub_219845048@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_219BF04A4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v8 = sub_219BDD944();
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  v11 = type metadata accessor for SearchRouteModel(0);
  MEMORY[0x28223BE20](v11);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0) + 40;
  sub_219845FC8(a1, v13, type metadata accessor for SearchRouteModel);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_218CFD610(0);
      v29 = &v13[*(v28 + 48)];
      v30 = *v29;
      v31 = v29[8];
      (*(v5 + 32))(v7, v13, v4);
      v32 = [objc_allocWithZone(type metadata accessor for FeedViewContext(0)) init];
      v33 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInt_];
      v34 = OBJC_IVAR___TSFeedViewContext_presentationReason;
      swift_beginAccess();
      v35 = *&v32[v34];
      *&v32[v34] = v33;

      if ((v31 & 1) == 0)
      {
        v36 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
        v37 = OBJC_IVAR___TSFeedViewContext_displayRank;
        swift_beginAccess();
        v38 = *&v32[v37];
        *&v32[v37] = v36;
      }

      v39 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v40 = OBJC_IVAR___TSFeedViewContext_externalAnalyticsFeedReferrer;
      swift_beginAccess();
      v41 = *&v32[v40];
      *&v32[v40] = v39;

      v42 = sub_219BF0404();
      (*(v5 + 8))(v7, v4);
      result = swift_allocObject();
      *(result + 16) = v42;
      *(result + 24) = v32;
      *(result + 32) = MEMORY[0x277D84F90];
      *(result + 40) = 0;
      *(result + 48) = 0;
      *(result + 56) = 0u;
      *(result + 72) = 0u;
      *(result + 88) = 0;
      *(result + 96) = -1;
      v18 = 0x2000000000000006;
    }

    else if (EnumCaseMultiPayload == 3)
    {
      result = swift_allocObject();
      v16 = *(v13 + 3);
      *(result + 48) = *(v13 + 2);
      *(result + 64) = v16;
      *(result + 80) = *(v13 + 4);
      *(result + 90) = *(v13 + 74);
      v17 = *(v13 + 1);
      *(result + 16) = *v13;
      *(result + 32) = v17;
      *(result + 106) = 1;
      v18 = 0x9000000000000002;
    }

    else
    {
      v43 = *(v13 + 4);
      v44 = v13[40];
      result = swift_allocObject();
      v48[0] = v44;
      v45 = *(v13 + 1);
      *(result + 16) = *v13;
      *(result + 32) = v45;
      *(result + 48) = v43;
      *(result + 56) = v44;
      *(result + 63) = 0;
      *(result + 61) = 0;
      *(result + 57) = 0;
      *(result + 64) = MEMORY[0x277D84F90];
      v18 = 0x5000000000000000;
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload)
  {
    v46 = *v13;
    result = swift_allocObject();
    *(result + 16) = v46;
    v18 = 0x7000000000000004;
LABEL_12:
    v27 = result | v18;
    goto LABEL_13;
  }

  sub_218A38F7C(v13, v10);
  sub_2187B2C48(0);
  v20 = v19;
  v21 = swift_allocBox();
  v23 = v22;
  v24 = *(v20 + 48);
  sub_2187B2DA0(0);
  v26 = *(v25 + 48);
  sub_219845FC8(v10, v23, MEMORY[0x277D2FB40]);
  *(v23 + v26) = MEMORY[0x277D84F90];
  result = sub_219845F68(v10, MEMORY[0x277D2FB40]);
  *(v23 + v24) = &unk_282A21D58;
  v27 = v21 | 2;
LABEL_13:
  *a2 = v27;
  return result;
}

uint64_t sub_2198454D4(uint64_t a1)
{
  sub_21896F9B8(0);
  v51 = v3;
  MEMORY[0x28223BE20](v3);
  v50 = (&v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v56 = type metadata accessor for NewsActivity2.Article(0);
  v5 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218748148(0, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v49 - v8;
  v53 = sub_219BDD944();
  MEMORY[0x28223BE20](v53);
  v54 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - v12;
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v57 = *(v13 - 8);
  v14 = *(v57 + 64);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v49 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = *(v1 + 112);
  sub_219845048(a1, &v64);
  v20 = v64;
  v21 = *(v1 + 64);
  v22 = sub_219BDFA44();
  v23 = *(*(v22 - 8) + 56);
  v58 = v18;
  v23(v18, 1, 1, v22);
  v63 = 0;
  memset(v62, 0, sizeof(v62));
  v61[5] = v19;
  sub_219BDC8D4();
  sub_219BDC8B4();
  if (qword_280EE9210 != -1)
  {
    swift_once();
  }

  v24 = sub_219BDC8C4();

  v25 = v20;
  if ((v24 & 1) == 0)
  {
    goto LABEL_6;
  }

  v26 = (v20 >> 58) & 0x3C | (v20 >> 1) & 3;
  if ((v26 - 9) < 0x34 || (v36 = 1 << v26, (v36 & 0xF9) != 0))
  {
    (*(v5 + 56))(v9, 1, 1, v56);
    sub_219845F0C(v9, qword_280EE0178, type metadata accessor for NewsActivity2.Article);
LABEL_6:
    v61[4] = v20;
    v61[3] = sub_219BDD274();
    v61[0] = v21;
    v27 = v58;
    sub_2189B4E2C(v58, v15);
    sub_2187B171C(v62, v59, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    v28 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    *(v30 + 16) = v21;
    sub_2189B4EAC(v15, v30 + v28);
    v31 = v30 + v29;
    v32 = v59[1];
    *v31 = v59[0];
    *(v31 + 16) = v32;
    *(v31 + 32) = v60;
    v33 = (v30 + ((v29 + 47) & 0xFFFFFFFFFFFFFFF8));
    *v33 = 0;
    v33[1] = 0;
    sub_2186CF94C(0);
    sub_2189B4DD4();
    swift_retain_n();
    v34 = sub_219BEB454();

    sub_2187B1CC0(v62, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
    sub_219845F0C(v27, &qword_280EE8610, MEMORY[0x277D2DED0]);
    sub_218806FD0(v61);
    sub_218932F9C(v25);
    return v34;
  }

  if ((v36 & 6) != 0)
  {
    sub_2187B2C48(0);
  }

  v37 = swift_projectBox();
  sub_219845FC8(v37, v9, type metadata accessor for NewsActivity2.Article);
  (*(v5 + 56))(v9, 0, 1, v56);
  v38 = v55;
  sub_219845FC8(v9, v55, type metadata accessor for NewsActivity2.Article);
  sub_2187B2DA0(0);

  v39 = v54;
  sub_218A38F7C(v38, v54);
  sub_219845F68(v9, type metadata accessor for NewsActivity2.Article);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_219845F68(v39, MEMORY[0x277D2FB40]);
    goto LABEL_6;
  }

  v40 = swift_projectBox();
  v41 = v50;
  sub_219845FC8(v40, v50, sub_21896F9B8);
  v42 = v52;
  sub_218A38F7C(v41 + *(v51 + 48), v52);
  __swift_destroy_boxed_opaque_existential_1(v41);

  sub_2186C66AC();
  v43 = sub_219BF6F44();
  sub_2186E7D5C(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_219C09BA0;
  v45 = sub_219BDD8C4();
  v47 = v46;
  *(v44 + 56) = MEMORY[0x277D837D0];
  *(v44 + 64) = sub_2186FC3BC();
  *(v44 + 32) = v45;
  *(v44 + 40) = v47;
  v48 = sub_219BF6214();
  sub_219BE5314("Unable to preview for blocked headline: %{public}@", 50, 2, &dword_2186C1000, v43, v48, v44);

  sub_219845F68(v42, MEMORY[0x277D2FB40]);
  sub_2187B1CC0(v62, &qword_280EE33A0, &qword_280EE33B0, MEMORY[0x277D2D578]);
  sub_219845F0C(v58, &qword_280EE8610, MEMORY[0x277D2DED0]);
  sub_218932F9C(v25);
  return 0;
}

uint64_t sub_219845CD4()
{
  MEMORY[0x21CECFA80](v0 + 2);
  __swift_destroy_boxed_opaque_existential_1(v0 + 3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 9);

  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_219845D60(void *a1)
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = (*(*(v3 - 8) + 80) + 24) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_2194DAC9C(a1, *(v1 + 16), v1 + v4, v1 + v5, *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v5 + 47) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t sub_219845E40(void *a1)
{
  sub_218748148(0, &qword_280EE8610, MEMORY[0x277D2DED0]);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 16);
  v8 = (v1 + ((v6 + 47) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];

  return sub_2194DAF24(a1, v7, v1 + v5, v1 + v6, v9, v10);
}

uint64_t sub_219845F0C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218748148(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_219845F68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219845FC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219846064(uint64_t a1)
{
  v2 = sub_219847D7C(&qword_27CC20010, type metadata accessor for MyMagazinesMagazineFeedGroup, &unk_219CACF60);

  return MEMORY[0x282191938](a1, v2);
}

void sub_2198461C8(void *a1@<X0>, uint64_t a2@<X8>)
{
  v86 = a2;
  sub_2186F97D4(0);
  MEMORY[0x28223BE20](v3 - 8);
  v87 = v82 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEF8A4();
  v91 = *(v5 - 8);
  v92 = v5;
  MEMORY[0x28223BE20](v5);
  v88 = v82 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2198479D8(0);
  MEMORY[0x28223BE20](v7 - 8);
  v89 = v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v90);
  v96 = v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF554();
  v93 = *(v10 - 8);
  v94 = v10;
  MEMORY[0x28223BE20](v10);
  v95 = v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v82 - v13;
  sub_219847BE0(0, &qword_27CC1FFA8, MEMORY[0x277D844C8]);
  v16 = v15;
  v97 = *(v15 - 1);
  MEMORY[0x28223BE20](v15);
  v18 = v82 - v17;
  v19 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v19);
  v21 = (v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v23 = [objc_opt_self() bundleForClass_];
  v24 = sub_219BDB5E4();
  v26 = v25;

  v21[2] = v24;
  v21[3] = v26;
  v100 = v26;
  v27 = objc_opt_self();
  v99 = [v27 labelColor];
  v21[4] = v99;
  v98 = [v27 labelColor];
  v21[5] = v98;
  v28 = a1[3];
  v102 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  sub_219847A0C();
  v29 = v101;
  sub_219BF7B34();
  if (v29)
  {
    __swift_destroy_boxed_opaque_existential_1(v102);

    return;
  }

  v30 = v95;
  v31 = v96;
  v101 = v21;
  v32 = v19;
  LOBYTE(v103) = 0;
  v33 = v18;
  v34 = sub_219BF76F4();
  v35 = v101;
  *v101 = v34;
  v35[1] = v36;
  LOBYTE(v103) = 1;
  v37 = sub_219BF7694();
  v39 = v97;
  v84 = v32;
  v35[6] = v37;
  v35[7] = v38;
  LOBYTE(v103) = 2;
  v83 = 0;
  v40 = sub_219BF7694();
  v85 = 0;
  v35[8] = v40;
  v35[9] = v41;
  LOBYTE(v103) = 3;
  v42 = sub_219847D7C(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
  v43 = v16;
  v44 = v14;
  v45 = v94;
  v46 = v43;
  v82[1] = v42;
  v47 = v85;
  sub_219BF7734();
  v85 = v47;
  if (v47)
  {
    (*(v39 + 8))(v33, v46);
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    goto LABEL_12;
  }

  v53 = v35 + v84[10];
  v82[0] = *(v93 + 32);
  (v82[0])(v53, v44, v45);
  LOBYTE(v103) = 4;
  v54 = v46;
  v55 = v85;
  sub_219BF7734();
  v85 = v55;
  if (v55)
  {
    (*(v97 + 8))(v33, v46);
    v49 = 0;
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v48 = 1;
    goto LABEL_12;
  }

  v56 = v84;
  (v82[0])(v35 + v84[11], v30, v45);
  LOBYTE(v103) = 5;
  v57 = v85;
  sub_219BF7714();
  v85 = v57;
  if (v57)
  {
    v59 = v97;
LABEL_11:
    (*(v59 + 8))(v33, v54);
    v50 = 0;
    v51 = 0;
    v52 = 0;
    v48 = 1;
    v49 = 1;
    goto LABEL_12;
  }

  *(v35 + v56[12]) = v58;
  LOBYTE(v103) = 6;
  sub_219847D7C(&qword_280EA30B0, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs, &unk_219CAAB64);
  v60 = v85;
  sub_219BF7734();
  v85 = v60;
  v59 = v97;
  if (v60)
  {
    goto LABEL_11;
  }

  sub_219847AB4(v31, v35 + v56[13], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  sub_21982C0EC(0);
  v69 = v68;
  LOBYTE(v103) = 7;
  sub_219847D7C(&unk_280EE67B0, sub_21982C0EC, MEMORY[0x277D6CF98]);
  v70 = v89;
  v71 = v85;
  sub_219BF76E4();
  v85 = v71;
  if (v71)
  {
    (*(v59 + 8))(v33, v54);
    v51 = 0;
    v52 = 0;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    goto LABEL_12;
  }

  v95 = v33;
  v96 = v54;
  v72 = *(v69 - 8);
  if ((*(v72 + 48))(v70, 1, v69) == 1)
  {
    sub_219847B80(v70, sub_2198479D8);
    v73 = 0;
  }

  else
  {
    sub_219BE3384();
    v73 = v103;
    (*(v72 + 8))(v70, v69);
  }

  *(v101 + v56[14]) = v73;
  v104 = 8;
  sub_219847A60();
  v74 = v95;
  v75 = v96;
  v76 = v85;
  sub_219BF7734();
  v85 = v76;
  if (v76)
  {
    (*(v59 + 8))(v74, v75);
LABEL_37:
    v52 = 0;
    v48 = 1;
    v49 = 1;
    v50 = 1;
    v51 = 1;
    goto LABEL_12;
  }

  *(v101 + v84[15]) = v103;
  LOBYTE(v103) = 9;
  sub_219847D7C(&qword_280E912B0, MEMORY[0x277D32770], MEMORY[0x277D32780]);
  v77 = v85;
  sub_219BF7734();
  v85 = v77;
  if (v77)
  {
    (*(v97 + 8))(v95, v96);
    goto LABEL_37;
  }

  (*(v91 + 32))(v101 + v32[16], v88, v92);
  sub_219BEE5D4();
  LOBYTE(v103) = 10;
  sub_219847D7C(&qword_280E91B70, MEMORY[0x277D32040], MEMORY[0x277D32058]);
  v78 = v85;
  sub_219BF76E4();
  v85 = v78;
  if (!v78)
  {
    v79 = v101;
    sub_219847AB4(v87, v101 + v32[17], sub_2186F97D4);
    sub_2186DEEEC(0, &qword_280E8EE20, MEMORY[0x277D83940]);
    v104 = 11;
    sub_218753294(&qword_280E8EDD0, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    v80 = v95;
    v81 = v96;
    sub_219BF7674();
    (*(v97 + 8))(v80, v81);
    *(v79 + v32[18]) = v103;
    sub_219847B1C(v79, v86);
    __swift_destroy_boxed_opaque_existential_1(v102);
    sub_219847B80(v79, type metadata accessor for MyMagazinesMagazineFeedGroup);
    return;
  }

  (*(v97 + 8))(v95, v96);
  v48 = 1;
  v49 = 1;
  v50 = 1;
  v51 = 1;
  v52 = 1;
LABEL_12:
  v61 = v83;
  __swift_destroy_boxed_opaque_existential_1(v102);
  v62 = v101;

  if (!v61)
  {
  }

  v63 = v84;
  if (v48)
  {
    v64 = v94;
    v65 = *(v93 + 8);
    v65(v62 + v84[10], v94);
    if (v49)
    {
      v65(v62 + v63[11], v64);
LABEL_19:
      if ((v50 & 1) == 0)
      {
        goto LABEL_20;
      }

      goto LABEL_24;
    }
  }

  else if (v49)
  {
    (*(v93 + 8))(v62 + v84[11], v94);
    goto LABEL_19;
  }

  if (!v50)
  {
LABEL_20:
    v66 = v92;
    if (v51)
    {
      goto LABEL_21;
    }

LABEL_25:
    v67 = v91;
    if (!v52)
    {
      return;
    }

    goto LABEL_26;
  }

LABEL_24:
  sub_219847B80(v62 + v63[13], type metadata accessor for MyMagazinesMagazineFeedGroupKnobs);
  v66 = v92;
  if ((v51 & 1) == 0)
  {
    goto LABEL_25;
  }

LABEL_21:
  swift_unknownObjectRelease();
  v67 = v91;
  if ((v52 & 1) == 0)
  {
    return;
  }

LABEL_26:
  (*(v67 + 8))(v62 + v63[16], v66);
}

uint64_t sub_219846EFC(void *a1)
{
  v2 = v1;
  sub_2198479D8(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219847BE0(0, &unk_27CC1FFD0, MEMORY[0x277D84538]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v18 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219847A0C();
  sub_219BF7B44();
  v20 = v2;
  LOBYTE(v23) = 0;
  v22 = v9;
  v13 = v21;
  sub_219BF77F4();
  if (v13)
  {
    return (*(v10 + 8))(v12, v22);
  }

  v21 = v10;
  v18[1] = v5;
  v19 = v7;
  v15 = v20;
  v23 = *(v20 + 48);
  v24 = 1;
  sub_2186DEEEC(0, &qword_280E8F860, MEMORY[0x277D83D88]);
  sub_21897A7C0();
  sub_219BF7834();
  v23 = *(v15 + 64);
  v24 = 2;
  sub_219BF7834();
  v16 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  LOBYTE(v23) = 3;
  sub_219BEF554();
  sub_219847D7C(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
  sub_219BF7834();
  LOBYTE(v23) = 4;
  sub_219BF7834();
  LOBYTE(v23) = 5;
  sub_219BF7814();
  LOBYTE(v23) = 6;
  type metadata accessor for MyMagazinesMagazineFeedGroupKnobs(0);
  sub_219847D7C(&qword_280EA30B8, type metadata accessor for MyMagazinesMagazineFeedGroupKnobs, &unk_219CAAB3C);
  sub_219BF7834();
  sub_2186D8870();
  swift_unknownObjectRetain();
  v17 = v19;
  sub_219BE33F4();
  LOBYTE(v23) = 7;
  sub_219847CCC(&unk_27CC1FFE0, sub_2198479D8, sub_219847C44);
  sub_219BF7834();
  sub_219847B80(v17, sub_2198479D8);
  LOBYTE(v23) = *(v15 + *(v16 + 60));
  v24 = 8;
  sub_219847C78();
  sub_219BF7834();
  LOBYTE(v23) = 9;
  sub_219BEF8A4();
  sub_219847D7C(&unk_280E912B8, MEMORY[0x277D32770], MEMORY[0x277D32778]);
  sub_219BF7834();
  LOBYTE(v23) = 10;
  sub_2186F97D4(0);
  sub_219847CCC(&unk_27CC20000, sub_2186F97D4, sub_219847D48);
  sub_219BF7834();
  *&v23 = *(v20 + *(v16 + 72));
  v24 = 11;
  sub_2186D0AF8(0);
  sub_21906C094();
  sub_219BF7834();
  return (*(v21 + 8))(0, v22);
}

uint64_t sub_219847524(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x7845676E6974756DLL;
    v7 = 0x6E696C6F6F706572;
    if (a1 != 10)
    {
      v7 = 0xD00000000000001BLL;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 0x73626F6E6BLL;
    v9 = 6775156;
    if (a1 != 7)
    {
      v9 = 0xD000000000000010;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x696669746E656469;
    v2 = 0x6973695664696170;
    v3 = 0xD000000000000016;
    if (a1 != 4)
    {
      v3 = 0x746C754D6B6E6172;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x62755370756F7267;
    if (a1 != 1)
    {
      v4 = 0x6E656449646E696BLL;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_2198476F0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = sub_219847524(*a1);
  v5 = v4;
  if (v3 == sub_219847524(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_219847778()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_219847524(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_2198477DC(uint64_t a1)
{
  sub_219847524(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_219847830(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_219847524(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_219847890@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219847EDC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_2198478C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_219847524(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_219847908@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219847EDC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_219847930(uint64_t a1)
{
  v2 = sub_219847A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21984796C(uint64_t a1)
{
  v2 = sub_219847A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219847A0C()
{
  result = qword_27CC1FFB0;
  if (!qword_27CC1FFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FFB0);
  }

  return result;
}

unint64_t sub_219847A60()
{
  result = qword_27CC1FFC0;
  if (!qword_27CC1FFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FFC0);
  }

  return result;
}

uint64_t sub_219847AB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_219847B1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219847B80(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219847BE0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219847A0C();
    v7 = a3(a1, &type metadata for MyMagazinesMagazineFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219847C78()
{
  result = qword_27CC1FFF0;
  if (!qword_27CC1FFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1FFF0);
  }

  return result;
}

uint64_t sub_219847CCC(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_219847D7C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_219847DD8()
{
  result = qword_27CC20018;
  if (!qword_27CC20018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20018);
  }

  return result;
}

unint64_t sub_219847E30()
{
  result = qword_27CC20020;
  if (!qword_27CC20020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20020);
  }

  return result;
}

unint64_t sub_219847E88()
{
  result = qword_27CC20028;
  if (!qword_27CC20028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC20028);
  }

  return result;
}

unint64_t sub_219847EDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 0xC)
  {
    return 12;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219847F3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for TopicMagazineFeedGroupEmitter(uint64_t a1)
{
  result = qword_280EAE060;
  if (!qword_280EAE060)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_219847FE4(uint64_t a1)
{
  sub_2186E60B0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for TopicMagazineFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      sub_2186CFDE4(319, &qword_280E90510, MEMORY[0x277D33778]);
      if (v3 <= 0x3F)
      {
        sub_219BEFF74();
        if (v4 <= 0x3F)
        {
          sub_2186CFDE4(319, &qword_280E910C0, MEMORY[0x277D32B88]);
          if (v5 <= 0x3F)
          {
            sub_2186C6148(319, &qword_280E8DE40, 0x277D31330);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t sub_21984810C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a1;
  v32 = v1;
  sub_218831BDC(0, &qword_280EC4780, &type metadata for MagazineFeedPoolContent, &type metadata for TopicMagazineFeedGroupEmitter.Cursor);
  sub_219BE3204();
  v30 = type metadata accessor for TopicMagazineFeedGroupEmitter;
  sub_21984D74C(v1, v7, type metadata accessor for TopicMagazineFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v29 = v8 + v6;
  v9 = (v8 + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  v28 = v8;
  sub_219848D74(v7, v10 + v8);
  *(v10 + v9) = a1;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_219848DD8;
  *(v11 + 24) = v10;

  v12 = sub_219BE2E54();
  sub_219848ED0(0);
  sub_219BE2F64();

  sub_21984D74C(v2, v7, v30);
  v13 = swift_allocObject();
  sub_219848D74(v7, v13 + v8);
  *(v13 + v9) = a1;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_21984901C;
  *(v14 + 24) = v13;

  v15 = sub_219BE2E54();
  sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
  sub_219BE2F64();

  v16 = v2;
  v17 = v30;
  sub_21984D74C(v2, v7, v30);
  v18 = swift_allocObject();
  v19 = v28;
  sub_219848D74(v7, v18 + v28);
  *(v18 + v9) = a1;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_21984A298;
  *(v20 + 24) = v18;

  v21 = sub_219BE2E54();
  sub_21984A8F0(0, &qword_280ED5D08, type metadata accessor for MagazineFeedGroup);
  sub_219BE2F74();

  v22 = sub_219BE2E54();
  sub_2186F9390(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
  sub_219BE2F74();

  sub_21984D74C(v16, v7, v17);
  v23 = swift_allocObject();
  sub_219848D74(v7, v23 + v19);
  v24 = sub_219BE2E54();
  v25 = sub_219BE3064();

  return v25;
}

uint64_t sub_2198485B8@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  sub_2186E60B0(0);
  v6 = v5;
  v7 = swift_allocBox();
  result = (*(*(v6 - 8) + 16))(v8, v2 + *(a1 + 20), v6);
  *a2 = v7 | 0x9000000000000000;
  return result;
}

uint64_t sub_219848644@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(a1 + 24);
  a2[3] = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  a2[4] = sub_219847F3C(&qword_280EB6210, type metadata accessor for TopicMagazineFeedGroupKnobs, &unk_219C53A3C);
  a2[5] = sub_219847F3C(&qword_280EB6218, type metadata accessor for TopicMagazineFeedGroupKnobs, &unk_219C53A14);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_21984D74C(v2 + v4, boxed_opaque_existential_1, type metadata accessor for TopicMagazineFeedGroupKnobs);
}

uint64_t sub_219848708(uint64_t a1)
{
  sub_2186E3B14(0);
  v2 = sub_219BEE964();
  sub_2191EE154(MEMORY[0x277D84F90]);
  return v2;
}

uint64_t sub_2198487A8@<X0>(uint64_t *a2@<X8>)
{
  sub_218C71780(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186E60B0(0);

  v4 = sub_219BEDCA4();
  v5 = MEMORY[0x277D837D0];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v6;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_21984CF24(inited + 32, &qword_280E8F6E0, v5, MEMORY[0x277D84F70] + 8, sub_218831BDC);
  sub_2186E4E90(0, &qword_280EE78D0, type metadata accessor for TopicMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v7;
  a2[4] = sub_21984D7B4();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_21984891C(uint64_t a1)
{
  sub_219847F3C(&qword_280EAE088, type metadata accessor for TopicMagazineFeedGroupEmitter, &unk_219CAD1B8);

  return sub_219BE2324();
}

uint64_t sub_219848AA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4 - 8);
  type metadata accessor for MagazineFeedPool();
  sub_219BE3204();
  v7 = sub_219BE2E54();
  sub_219BE2F64();

  sub_219BE3204();
  sub_21984D74C(a2, v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for TopicMagazineFeedGroupEmitter);
  v8 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v9 = swift_allocObject();
  sub_219848D74(v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v9 + v8);
  *(v9 + ((v6 + v8 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v10 = sub_219BE2E54();
  sub_219BE3054();

  v11 = sub_219BE31C4();

  return v11;
}

uint64_t sub_219848CDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_2186E4E90(0, &unk_27CC20050, sub_219848ED0, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE30B4();
}

uint64_t sub_219848D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_219848DD8(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_219848CDC(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_219848E80(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 48);
  v6[2] = *(a1 + 32);
  v6[3] = v3;
  v6[4] = *(a1 + 64);
  v4 = *(a1 + 16);
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6, *(a1 + 80));
}

void sub_219848ED0(uint64_t a1)
{
  if (!qword_27CC20048)
  {
    sub_219BEFB64();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC20048);
    }
  }
}

void *sub_219848F3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_2198490C4(a4, a1);
  if (!v4)
  {
    *(swift_allocObject() + 16) = a2;

    v7 = sub_219BE2E54();
    sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
    v8 = sub_219BE2F74();

    return v8;
  }

  return result;
}

void *sub_21984901C(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  return sub_219848F3C(a1, a2, v2 + v6, *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *sub_2198490C4(uint64_t a1, uint64_t a2)
{
  v99 = a1;
  v3 = MEMORY[0x277D83D88];
  sub_2186E4E90(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v4 - 8);
  v106 = v94 - v5;
  sub_2186E4E90(0, &qword_280E90150, MEMORY[0x277D33EC8], v3);
  MEMORY[0x28223BE20](v6 - 8);
  v98 = v94 - v7;
  v130 = v3;
  sub_2186E4E90(0, &unk_280E919B0, sub_2186E3B14, v3);
  MEMORY[0x28223BE20](v8 - 8);
  v97 = v94 - v9;
  v105 = sub_219BF2AB4();
  v104 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v101 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v103 = sub_219BF2034();
  v102 = *(v103 - 8);
  MEMORY[0x28223BE20](v103);
  v100 = v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = sub_219BF3C84();
  v135 = *(v120 - 8);
  MEMORY[0x28223BE20](v120);
  v119 = (v94 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = sub_219BF3E84();
  v123 = *(v13 - 8);
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  v122 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_218A42400;
  sub_2186E4E90(0, &unk_280E8FF30, sub_218A42400, v3);
  MEMORY[0x28223BE20](v15 - 8);
  v118 = v94 - v16;
  v131 = MEMORY[0x277D2D4E0];
  sub_2186E4E90(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], v3);
  MEMORY[0x28223BE20](v17 - 8);
  v128 = v94 - v18;
  v19 = type metadata accessor for TopicMagazineFeedGroupConfigData(0);
  v20 = v19 - 8;
  MEMORY[0x28223BE20](v19);
  v116 = v94 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = v94 - v23;
  v25 = sub_219BF1934();
  v129 = v25;
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v113 = v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v30 = v94 - v29;
  v117 = v94 - v29;
  MEMORY[0x28223BE20](v31);
  v126 = v94 - v32;
  v121 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v110 = v121[5];
  sub_2186E60B0(0);
  v109 = v33;
  sub_219BEDD14();
  v34 = *(v20 + 44);
  v108 = *(v26 + 16);
  v108(v30, &v24[v34], v25);
  v107 = type metadata accessor for TopicMagazineFeedGroupConfigData;
  sub_21984CFE0(v24, type metadata accessor for TopicMagazineFeedGroupConfigData);
  v133 = 0;
  v134 = 0xE000000000000000;
  sub_219BF7314();

  v133 = 0x616D2D6369706F74;
  v134 = 0xEF2D656E697A6167;
  v35 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v36 = sub_219BF5414();
  v38 = v37;

  MEMORY[0x21CECC330](v36, v38);

  v114 = v134;
  v115 = v133;
  v125 = a2;
  v39 = [sub_219BEFB34() identifier];
  swift_unknownObjectRelease();
  v112 = sub_219BF5414();
  v111 = v40;

  v41 = sub_219BEC004();
  v42 = *(v41 - 8);
  v43 = *(v42 + 56);
  v96 = v41;
  v95 = v43;
  v94[1] = v42 + 56;
  (v43)(v128, 1, 1);
  v44 = v116;
  sub_219BEDD14();
  v45 = &v44[*(v20 + 44)];
  v46 = v44;
  v47 = v113;
  v48 = v129;
  v108(v113, v45, v129);
  sub_21984CFE0(v46, v107);
  v49 = sub_219BF1714();
  v50 = *(v26 + 8);
  v50(v47, v48);
  sub_219BEFB34();
  sub_2186E4E90(0, &qword_280E8B850, MEMORY[0x277D334E0], MEMORY[0x277D84560]);
  sub_219BF1A44();
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_219C09EC0;
  swift_getObjectType();
  sub_21984CC54(v52);
  sub_21984CDBC(v53);
  swift_unknownObjectRelease();
  v133 = v49;
  sub_2191EED30(v51);
  sub_218A42400(0);
  v55 = v118;
  (*(*(v54 - 8) + 56))(v118, 1, 1, v54);
  v56 = v128;
  v57 = v117;
  sub_219BF1764();

  v58 = v55;
  v59 = v130;
  sub_21984CF24(v58, &unk_280E8FF30, v132, v130, sub_2186E4E90);
  sub_21984CF24(v56, &qword_280EE33F0, v131, v59, sub_2186E4E90);
  v118 = (v26 + 8);
  v50(v57, v129);
  v60 = sub_219BEFB44();
  if (v60 >> 62)
  {
    v93 = v60;
    v61 = sub_219BF7214();
    v60 = v93;
  }

  else
  {
    v61 = *((v60 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v62 = v119;
  v63 = v120;
  v116 = v50;
  if (v61)
  {
    v64 = v60;
    v133 = MEMORY[0x277D84F90];
    result = sub_218C34A88(0, v61 & ~(v61 >> 63), 0);
    if (v61 < 0)
    {
      __break(1u);
      return result;
    }

    v66 = 0;
    v67 = v133;
    v68 = v64;
    v131 = v64 & 0xC000000000000001;
    v132 = v61;
    LODWORD(v130) = *MEMORY[0x277D34128];
    v69 = (v135 + 104);
    do
    {
      if (v131)
      {
        v70 = MEMORY[0x21CECE0F0](v66, v68);
      }

      else
      {
        v70 = swift_unknownObjectRetain();
      }

      *v62 = v70;
      (*v69)(v62, v130, v63);
      v133 = v67;
      v72 = *(v67 + 16);
      v71 = *(v67 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_218C34A88((v71 > 1), v72 + 1, 1);
        v67 = v133;
      }

      v66 = (v66 + 1);
      *(v67 + 16) = v72 + 1;
      (*(v135 + 32))(v67 + ((*(v135 + 80) + 32) & ~*(v135 + 80)) + *(v135 + 72) * v72, v62, v63);
      v68 = v64;
    }

    while (v132 != v66);
  }

  v73 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v73);
  sub_218F0BB90(v73);
  v74 = v122;
  sub_219BF3E74();
  v75 = (v127 + v121[7]);
  v76 = v75[3];
  v132 = v75[4];
  v135 = v76;
  v131 = __swift_project_boxed_opaque_existential_1(v75, v76);
  sub_2186F8318(0, &qword_280E8B5A0, MEMORY[0x277D84F68] + 8, MEMORY[0x277D84560]);
  v77 = swift_allocObject();
  *(v77 + 16) = xmmword_219C146A0;
  *(v77 + 32) = sub_219BEFB34();
  sub_2186E4E90(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
  v78 = v123;
  v79 = (*(v123 + 80) + 32) & ~*(v123 + 80);
  v80 = swift_allocObject();
  *(v80 + 16) = xmmword_219C09BA0;
  (*(v78 + 16))(v80 + v79, v74, v124);
  v95(v128, 1, 1, v96);
  v130 = sub_219A95188(v73);
  sub_219A95188(v73);
  sub_219A951A0(v73);
  sub_219A951B8(v73);
  sub_219A952CC(v73);
  sub_219A952E4(v73);
  sub_219A953F8(v73);
  v81 = v100;
  sub_219BF2024();
  v82 = v121[6];
  sub_2186E3B14(0);
  v84 = v83;
  v85 = *(v83 - 8);
  v86 = v97;
  (*(v85 + 16))(v97, v127 + v82, v83);
  (*(v85 + 56))(v86, 0, 1, v84);
  v87 = sub_219BF35D4();
  (*(*(v87 - 8) + 56))(v98, 1, 1, v87);
  LOBYTE(v133) = 9;
  sub_2186F9390(0, &qword_280E90058, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D33F88]);
  swift_allocObject();

  sub_219BF38D4();
  v88 = sub_219BF2774();
  (*(*(v88 - 8) + 56))(v106, 1, 1, v88);
  v89 = qword_280E8D920;
  *MEMORY[0x277D30B70];
  if (v89 != -1)
  {
    swift_once();
  }

  qword_280F617C8;
  v90 = v101;
  sub_219BF2A84();
  v91 = v126;
  v92 = sub_219BF2194();
  (*(v104 + 8))(v90, v105);
  (*(v102 + 8))(v81, v103);
  (*(v123 + 8))(v122, v124);
  (v116)(v91, v129);
  return v92;
}

double sub_21984A198@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
  v7 = *(v6 + 48);
  v8 = sub_219BF1904();
  (*(*(v8 - 8) + 16))(a3, a1, v8);
  *(a3 + v7) = a2;

  return result;
}

uint64_t sub_21984A248(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_219848ED0(0);
  return v3(a1, *(a1 + *(v4 + 48)));
}

double sub_21984A298(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  sub_21984A350(*(v2 + ((*(v5 + 64) + ((*(v5 + 80) + 16) & ~*(v5 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8)), a2, a1);

  return result;
}

uint64_t sub_21984A350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v33 = a1;
  v36 = a3;
  sub_2186E4E90(0, &unk_280E91B60, MEMORY[0x277D32040], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v3 - 8);
  v35 = v28 - v4;
  v5 = type metadata accessor for TopicMagazineFeedGroupConfigData(0);
  v6 = v5 - 8;
  MEMORY[0x28223BE20](v5);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEF554();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v28[0] = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v28[1] = v28 - v13;
  v14 = sub_219BF1904();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28[3] = v17;
  v34 = sub_219BED8D4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) + 20);
  (*(v15 + 16))(v17, v29, v14);
  sub_2186E60B0(0);
  v21 = v20;
  v22 = v31;
  v29 = sub_219BEDCB4();
  v28[2] = v23;
  sub_219BEDCC4();
  sub_219BEDD14();
  (*(v10 + 16))(v28[0], &v8[*(v6 + 36)], v9);
  sub_21984CFE0(v8, type metadata accessor for TopicMagazineFeedGroupConfigData);
  sub_2186E3B14(0);
  sub_219BEE9B4();
  sub_219BEE984();
  sub_219BEE9D4();
  type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  sub_219BEEC84();
  v24 = v30;
  sub_219BED854();
  v25 = v36;
  (*(*(v21 - 8) + 16))(v36, v22 + v19, v21);
  v26 = type metadata accessor for TopicMagazineFeedGroup(0);
  (*(v32 + 32))(v25 + *(v26 + 20), v24, v34);
  type metadata accessor for MagazineFeedGroup(0);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_21984A83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_21984A8F0(0, &qword_280E90830, MEMORY[0x277D33470]);
  v7 = *(a1 + *(v6 + 48));
  sub_21984A8F0(0, &qword_280ED5D08, type metadata accessor for MagazineFeedGroup);
  v9 = *(v8 + 48);
  result = v5(a2, a1, v7);
  *(a2 + v9) = result;
  return result;
}

void sub_21984A8F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_21984A954(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_21984A8F0(0, &qword_280ED5D08, type metadata accessor for MagazineFeedGroup);
  v5 = *(a1 + *(v4 + 48));
  if (*(v5 + 16))
  {
    sub_218FFC5A4(0);
    v7 = (a2 + *(v6 + 48));
    sub_21984D74C(a1, a2, type metadata accessor for MagazineFeedGroup);
    v7[3] = &type metadata for TopicMagazineFeedGroupEmitter.Cursor;
    *v7 = v5;
    sub_2186F9390(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_21984D74C(a1, a2, type metadata accessor for MagazineFeedGroup);
    sub_2186F9390(0, &qword_280E916F0, type metadata accessor for MagazineFeedGroup, sub_218D827D0, MEMORY[0x277D324E8]);
    swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_21984AAE8(uint64_t a1, uint64_t *a2)
{
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  type metadata accessor for MagazineFeedGroup(0);
  sub_218D827D0();
  return sub_219BEF194();
}

double sub_21984AC30(void (*a1)(char *), uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v73 = a4;
  sub_219848ED0(0);
  v67 = v15;
  MEMORY[0x28223BE20](v15);
  v68 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v70 = *(v17 - 8);
  MEMORY[0x28223BE20](v17 - 8);
  v71 = v18;
  v72 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_219BEFB64();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_allocObject();
  v69 = a1;
  *(v23 + 16) = a1;
  *(v23 + 24) = a2;
  v74 = a2;
  v24 = *(a6 + 16);
  if (v24)
  {
    v62 = a5;
    v64 = a8;
    v65 = a3;
    v66 = v23;
    v25 = a7;
    v26 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v61 = *(v20 + 16);
    v61(v22, a6 + v26, v19);
    v27 = *(v25 + 8);
    v63 = v25;

    sub_2194796A0(v28, v27);
    v30 = v29;
    v31 = sub_219BEFB14();
    LOBYTE(v25) = sub_2190D6964(v31, v30);

    if (v25)
    {
      sub_218B676E8(a6, a6 + v26, 1, (2 * v24) | 1);
      v33 = v32;
      v34 = v68;
      v61(v68, v22, v19);
      *(v34 + *(v67 + 48)) = v33;
      v69(v34);

      sub_21984CFE0(v34, sub_219848ED0);
      (*(v20 + 8))(v22, v19);
    }

    else
    {
      (*(v20 + 8))(v22, v19);
      if (qword_280E8D920 != -1)
      {
        swift_once();
      }

      v39 = qword_280F617C8;
      v40 = sub_219BF6214();
      sub_219BE5314("Recreating topic clusters because some of the original articles have been consumed by other groups", 98, 2, &dword_2186C1000, v39, v40, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v41);
      v42 = v62;
      v43 = v64;
      *(&v60 - 2) = v62;
      *(&v60 - 1) = v43;
      sub_219BE3204();
      v44 = v72;
      sub_21984D74C(v42, v72, type metadata accessor for TopicMagazineFeedGroupEmitter);
      v45 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v46 = (v71 + v45 + 7) & 0xFFFFFFFFFFFFFFF8;
      v47 = (v46 + 87) & 0xFFFFFFFFFFFFFFF8;
      v48 = (v47 + 15) & 0xFFFFFFFFFFFFFFF8;
      v49 = swift_allocObject();
      sub_219848D74(v44, v49 + v45);
      v50 = (v49 + v46);
      v51 = v63;
      v52 = v63[3];
      v50[2] = v63[2];
      v50[3] = v52;
      v50[4] = v51[4];
      v53 = v51[1];
      *v50 = *v51;
      v50[1] = v53;
      *(v49 + v47) = v43;
      v54 = (v49 + v48);
      v55 = v65;
      v56 = v66;
      *v54 = sub_21984CF90;
      v54[1] = v56;
      v57 = (v49 + ((v48 + 23) & 0xFFFFFFFFFFFFFFF8));
      v58 = v73;
      *v57 = v55;
      v57[1] = v58;
      sub_218F0A1CC(v51, v75);

      v59 = sub_219BE2E54();
      sub_219BE2F74();
    }
  }

  else
  {
    v36 = sub_219BEEDD4();
    sub_219847F3C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    v37 = swift_allocError();
    (*(*(v36 - 8) + 104))(v38, *MEMORY[0x277D323C8], v36);

    a3(v37);
  }

  return result;
}

uint64_t sub_21984B248(uint64_t a1, uint64_t a2, void (*a3)(char *))
{
  sub_219848ED0(0);
  v7 = v6 - 8;
  MEMORY[0x28223BE20](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEFB64();
  (*(*(v10 - 8) + 16))(v9, a1, v10);
  *&v9[*(v7 + 56)] = a2;

  a3(v9);
  return sub_21984CFE0(v9, sub_219848ED0);
}

uint64_t sub_21984B344(uint64_t a1)
{
  v3 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](v3 - 8);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE3204();
  sub_21984D74C(v1, v6, type metadata accessor for TopicMagazineFeedGroupEmitter);
  v7 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v8 = swift_allocObject();
  sub_219848D74(v6, v8 + v7);
  v9 = sub_219BE2E54();
  sub_2189FE7E4(0);
  sub_219BE2F64();

  sub_21984D74C(v15[1], v6, type metadata accessor for TopicMagazineFeedGroupEmitter);
  v10 = swift_allocObject();
  sub_219848D74(v6, v10 + v7);
  *(v10 + ((v7 + v5 + 7) & 0xFFFFFFFFFFFFFFF8)) = a1;

  v11 = sub_219BE2E54();
  sub_219BF02B4();
  sub_219BE2F64();

  v12 = sub_219BE2E54();
  v13 = sub_219BE2F64();

  return v13;
}

void sub_21984B5AC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t, __n128), void (*a6)(char *, uint64_t, __n128), void (*a7)(void *), void (*a8)(void *))
{
  v62 = a7;
  v63 = a8;
  v60 = a4;
  v61 = a5;
  v58 = a2;
  v11 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v57 = *(v11 - 8);
  v12 = *(v57 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v59 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_219BEFB64();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v53 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *a1;
  v19 = *(*a1 + 16);
  if (!v19)
  {
    v28 = sub_219BEEDD4();
    sub_219847F3C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    v29 = swift_allocError();
    (*(*(v28 - 8) + 104))(v30, *MEMORY[0x277D323C8], v28);
    v62(v29);

    return;
  }

  v56 = a6;
  v20 = *(v14 + 16);
  v54 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v20(v17, v18 + v54, v13, v15);
  v21 = *(a3 + 8);
  v55 = a3;

  sub_2194796A0(v22, v21);
  v24 = v23;
  v25 = sub_219BEFB14();
  v26 = sub_2190D6964(v25, v24);

  if ((v26 & 1) == 0)
  {
    (*(v14 + 8))(v17, v13);
    if (qword_280E8D920 == -1)
    {
LABEL_9:
      v31 = qword_280F617C8;
      v32 = sub_219BF6214();
      sub_219BE5314("Recreating topic clusters because some of the original articles have been consumed by other groups", 98, 2, &dword_2186C1000, v31, v32, MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v33);
      v34 = v58;
      v35 = v60;
      *(&v53 - 2) = v58;
      *(&v53 - 1) = v35;
      sub_219BE3204();
      v36 = v59;
      sub_21984D74C(v34, v59, type metadata accessor for TopicMagazineFeedGroupEmitter);
      v37 = (*(v57 + 80) + 16) & ~*(v57 + 80);
      v38 = (v12 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
      v39 = (v38 + 87) & 0xFFFFFFFFFFFFFFF8;
      v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
      v41 = swift_allocObject();
      sub_219848D74(v36, v41 + v37);
      v42 = (v41 + v38);
      v43 = v55;
      v44 = v56;
      v45 = *(v55 + 48);
      v42[2] = *(v55 + 32);
      v42[3] = v45;
      v42[4] = v43[4];
      v46 = v43[1];
      *v42 = *v43;
      v42[1] = v46;
      *(v41 + v39) = v35;
      v47 = (v41 + v40);
      v48 = v62;
      *v47 = v61;
      v47[1] = v44;
      v49 = (v41 + ((v40 + 23) & 0xFFFFFFFFFFFFFFF8));
      v50 = v63;
      *v49 = v48;
      v49[1] = v50;
      sub_218F0A1CC(v43, v64);

      v51 = sub_219BE2E54();
      sub_219BE2F74();

      return;
    }

LABEL_11:
    swift_once();
    goto LABEL_9;
  }

  v27 = *(v18 + 16);
  if (v27 < v19)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v27 == v19 - 1)
  {
  }

  else
  {
    sub_218B676E8(v18, v18 + v54, 1, (2 * v19) | 1);
    v18 = v52;
  }

  (v61)(v17, v18);

  (*(v14 + 8))(v17, v13);
}

uint64_t sub_21984BAC8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) + 24);
  v3 = type metadata accessor for TopicMagazineFeedGroupKnobs(0);
  return sub_219B6D49C(*(v2 + *(v3 + 20)), 1, 0);
}

void *sub_21984BB40(char **a1, uint64_t a2, uint64_t a3)
{
  v121 = a3;
  v94 = sub_219BEDC04();
  v124 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v93 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_219BEED94();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v98 = &v92 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_219BEFD94();
  v110 = *(v9 - 8);
  v111 = v9;
  MEMORY[0x28223BE20](v9);
  v112 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x277D83D88];
  sub_2186E4E90(0, &qword_280EE9B98, MEMORY[0x277D7E9E8], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v106 = &v92 - v13;
  sub_2186E4E90(0, &qword_280E90F70, MEMORY[0x277D32C58], v11);
  MEMORY[0x28223BE20](v14 - 8);
  v105 = &v92 - v15;
  sub_2186E4E90(0, &qword_280E91148, MEMORY[0x277D32A88], v11);
  MEMORY[0x28223BE20](v16 - 8);
  v120 = &v92 - v17;
  sub_2186E4E90(0, &qword_280EE9B90, MEMORY[0x277D7E9F0], v11);
  MEMORY[0x28223BE20](v18 - 8);
  v103 = &v92 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v101 = &v92 - v21;
  MEMORY[0x28223BE20](v22);
  v102 = &v92 - v23;
  MEMORY[0x28223BE20](v24);
  v118 = &v92 - v25;
  MEMORY[0x28223BE20](v26);
  v119 = &v92 - v27;
  MEMORY[0x28223BE20](v28);
  v117 = &v92 - v29;
  sub_2186E4E90(0, &unk_280E91800, MEMORY[0x277D32348], v11);
  MEMORY[0x28223BE20](v30 - 8);
  v116 = &v92 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v107 = &v92 - v33;
  MEMORY[0x28223BE20](v34);
  v115 = &v92 - v35;
  MEMORY[0x28223BE20](v36);
  v114 = &v92 - v37;
  v38 = sub_219BEEDB4();
  v96 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v95 = &v92 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = sub_219BEE6F4();
  v41 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v43 = &v92 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = *a1;
  v45 = *MEMORY[0x277D32930];
  v46 = sub_219BEFBD4();
  (*(*(v46 - 8) + 104))(v43, v45, v46);
  v47 = *MEMORY[0x277D320E8];
  v108 = v41;
  v48 = *(v41 + 104);
  v123 = v43;
  v109 = v40;
  v49 = v40;
  v50 = v44;
  v48(v43, v47, v49);
  v104 = type metadata accessor for TopicMagazineFeedGroupEmitter(0);
  v51 = *(v104 + 36);
  v113 = a2;
  __swift_project_boxed_opaque_existential_1((a2 + v51), *(a2 + v51 + 24));
  v52 = v44 >> 62;
  v125 = v50;
  if (v52)
  {
    sub_2195C35FC();

    sub_219BF7534();
  }

  else
  {

    sub_219BF7924();
    sub_2195C35FC();
  }

  v53 = v122;
  sub_219BF0004();
  v100 = v6;
  v99 = v7;
  v97 = v38;
  v122 = v53;
  if (!v53)
  {

    goto LABEL_20;
  }

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v54 = qword_280F617C8;
  v55 = sub_219BF61F4();
  sub_2186F20D4(0);
  v56 = swift_allocObject();
  *(v56 + 16) = xmmword_219C09BA0;
  v126[0] = v53;
  v57 = v53;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  v58 = sub_219BF5484();
  v60 = v59;
  *(v56 + 56) = MEMORY[0x277D837D0];
  *(v56 + 64) = sub_2186FC3BC();
  *(v56 + 32) = v58;
  *(v56 + 40) = v60;
  sub_219BE5314("TopicMagazineFeedGroupEmitter failed to score feed items; clustering with scores set to zero, error=%{public}@", 110, 2, &dword_2186C1000, v54, v55, v56);

  if (v52)
  {
    v61 = v125;
    v62 = sub_219BF7214();
    if (v62)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v61 = v125;
    v62 = *((v125 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v62)
    {
LABEL_8:
      v126[0] = MEMORY[0x277D84F90];
      result = sub_218C34908(0, v62 & ~(v62 >> 63), 0);
      if (v62 < 0)
      {
        __break(1u);
        goto LABEL_24;
      }

      v64 = 0;
      v65 = v126[0];
      v66 = v61;
      v67 = v94;
      v68 = v93;
      do
      {
        if ((v61 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v64, v66);
        }

        else
        {
          v69 = *&v66[8 * v64 + 32];
        }

        sub_219BEDBD4();
        v126[0] = v65;
        v71 = *(v65 + 16);
        v70 = *(v65 + 24);
        if (v71 >= v70 >> 1)
        {
          sub_218C34908((v70 > 1), v71 + 1, 1);
          v67 = v94;
          v65 = v126[0];
        }

        ++v64;
        *(v65 + 16) = v71 + 1;
        v124[4](v65 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + v124[9] * v71, v68, v67);
        v66 = v125;
      }

      while (v62 != v64);
    }
  }

  v122 = 0;
LABEL_20:
  v73 = v114;
  v72 = v115;
  sub_219BEF0B4();
  v94 = *(v126[7] + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v74 = sub_219BEED84();
  v75 = *(v74 - 8);
  v76 = *(v75 + 56);
  v124 = v76;
  v125 = (v75 + 56);
  (v76)(v73, 1, 1, v74);
  (v76)(v72, 1, 1, v74);
  v77 = sub_219BDC1C4();
  v78 = *(*(v77 - 8) + 56);
  v78(v117, 1, 1, v77);
  v78(v119, 1, 1, v77);
  v79 = sub_219BEFD84();
  (*(*(v79 - 8) + 56))(v120, 1, 1, v79);
  v78(v118, 1, 1, v77);
  v78(v102, 1, 1, v77);
  v78(v101, 1, 1, v77);
  v78(v103, 1, 1, v77);
  v80 = sub_219BF0354();
  (*(*(v80 - 8) + 56))(v105, 1, 1, v80);
  v81 = sub_219BDC1B4();
  (*(*(v81 - 8) + 56))(v106, 1, 1, v81);
  v82 = v107;
  sub_219BEED64();
  v83 = v124;
  (v124)(v82, 0, 1, v74);
  (v83)(v116, 1, 1, v74);
  v125 = sub_21984CA20();
  (*(v110 + 104))(v112, *MEMORY[0x277D32A90], v111);
  v84 = v109;
  v126[3] = v109;
  v126[4] = MEMORY[0x277D320F0];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v126);
  v86 = v108;
  (*(v108 + 16))(boxed_opaque_existential_1, v123, v84);
  result = [*(v113 + *(v104 + 40)) autoFavoriteTagIDs];
  if (result)
  {
    v87 = result;
    v88 = sub_219BF5924();

    sub_218845F78(v88);

    (*(v99 + 104))(v98, *MEMORY[0x277D32358], v100);
    v89 = v95;
    sub_219BEEDA4();
    sub_219BEFF64();
    v90 = sub_219BE2E54();
    sub_219BF02B4();
    v91 = sub_219BE2F74();

    (*(v96 + 8))(v89, v97);
    (*(v86 + 8))(v123, v84);
    return v91;
  }

LABEL_24:
  __break(1u);
  return result;
}

char *sub_21984CA20()
{
  v0 = sub_21921C130();
  v1 = sub_219BEF0A4();
  v2 = sub_21921D158(v1);

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_13:

    v6 = MEMORY[0x277D84F90];
LABEL_14:
    v14 = sub_2194B1FF0(v6, v0);

    return v14;
  }

  v3 = sub_219BF7214();
  if (!v3)
  {
    goto LABEL_13;
  }

LABEL_3:
  v15 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v3 & ~(v3 >> 63), 0);
  if ((v3 & 0x8000000000000000) == 0)
  {
    v5 = 0;
    v6 = v15;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x21CECE0F0](v5, v2);
      }

      else
      {
        swift_unknownObjectRetain();
      }

      v7 = [swift_unknownObjectRetain() identifier];
      v8 = sub_219BF5414();
      v10 = v9;
      swift_unknownObjectRelease_n();

      v12 = *(v15 + 16);
      v11 = *(v15 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_21870B65C((v11 > 1), v12 + 1, 1);
      }

      ++v5;
      *(v15 + 16) = v12 + 1;
      v13 = v15 + 16 * v12;
      *(v13 + 32) = v8;
      *(v13 + 40) = v10;
    }

    while (v3 != v5);

    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_21984CBD8()
{
  sub_219BF02A4();
  sub_2186F8318(0, &unk_280EE6CF0, &type metadata for TopicMagazineFeedGroupEmitter.Cursor, MEMORY[0x277D6CF30]);
  swift_allocObject();
  return sub_219BE3014();
}

uint64_t sub_21984CC54(__n128 a1)
{
  v1 = sub_219BF26F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BF1364();
  v5 = swift_allocBox();
  sub_2194F6464(v6);
  *v4 = v5;
  v7 = *MEMORY[0x277D33748];
  v8 = sub_219BF2124();
  (*(*(v8 - 8) + 104))(v4, v7, v8);
  (*(v2 + 104))(v4, *MEMORY[0x277D339C8], v1);
  return sub_219BF1A04();
}

uint64_t sub_21984CDBC(__n128 a1)
{
  v1 = sub_219BF26F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = (&v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_219BF1364();
  v5 = swift_allocBox();
  sub_2194F6464(v6);
  *v4 = v5;
  v7 = *MEMORY[0x277D33748];
  v8 = sub_219BF2124();
  (*(*(v8 - 8) + 104))(v4, v7, v8);
  (*(v2 + 104))(v4, *MEMORY[0x277D339C8], v1);
  return sub_219BF1A04();
}

uint64_t sub_21984CF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = (a5)(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_21984CFE0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_27Tm_1()
{
  v1 = (type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2186E60B0(0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2186E3B14(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for TopicMagazineFeedGroupKnobs(0) + 28);
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[11]));

  return swift_deallocObject();
}

void sub_21984D2C8(uint64_t *a1)
{
  v3 = *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 87) & 0xFFFFFFFFFFFFFFF8;
  sub_21984B5AC(a1, v1 + v4, v1 + v5, *(v1 + v6), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((((v6 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8));
}

uint64_t objectdestroy_18Tm()
{
  v1 = (type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  v2 = v0 + ((*(*v1 + 80) + 16) & ~*(*v1 + 80));

  v3 = v1[7];
  sub_2186E60B0(0);
  (*(*(v4 - 8) + 8))(v2 + v3, v4);
  v5 = v2 + v1[8];
  sub_2186E3B14(0);
  (*(*(v6 - 8) + 8))(v5, v6);
  v7 = *(type metadata accessor for TopicMagazineFeedGroupKnobs(0) + 28);
  sub_2186F9390(0, &qword_280E91830, type metadata accessor for MagazineFeedServiceConfig, sub_2187EF390, MEMORY[0x277D32318]);
  (*(*(v8 - 8) + 8))(v5 + v7, v8);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1[9]));

  __swift_destroy_boxed_opaque_existential_1((v2 + v1[11]));

  return swift_deallocObject();
}

void *sub_21984D5F0(char **a1)
{
  v3 = *(type metadata accessor for TopicMagazineFeedGroupEmitter(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  return sub_21984BB40(a1, v1 + v4, *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_21984D74C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_21984D7B4()
{
  result = qword_280EE78D8;
  if (!qword_280EE78D8)
  {
    sub_2186E4E90(255, &qword_280EE78D0, type metadata accessor for TopicMagazineFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EE78D8);
  }

  return result;
}

uint64_t sub_21984D894(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    return swift_initClassMetadata2();
  }

  return result;
}

void sub_21984D97C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v23 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v1, 0);
    v3 = a1 + 56;
    v4 = sub_219BF7174();
    v5 = 0;
    v20 = v1;
    while ((v4 & 0x8000000000000000) == 0 && v4 < 1 << *(a1 + 32))
    {
      v7 = v4 >> 6;
      if ((*(v3 + 8 * (v4 >> 6)) & (1 << v4)) == 0)
      {
        goto LABEL_21;
      }

      v21 = *(a1 + 36);
      v8 = (*(a1 + 48) + 16 * v4);
      v9 = v8[1];
      v22 = *v8;
      v10 = *(v23 + 16);
      v11 = *(v23 + 24);

      if (v10 >= v11 >> 1)
      {
        sub_21870B65C((v11 > 1), v10 + 1, 1);
      }

      *(v23 + 16) = v10 + 1;
      v12 = v23 + 16 * v10;
      *(v12 + 32) = v22;
      *(v12 + 40) = v9;
      v6 = 1 << *(a1 + 32);
      if (v4 >= v6)
      {
        goto LABEL_22;
      }

      v3 = a1 + 56;
      v13 = *(a1 + 56 + 8 * v7);
      if ((v13 & (1 << v4)) == 0)
      {
        goto LABEL_23;
      }

      if (v21 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v14 = v13 & (-2 << (v4 & 0x3F));
      if (v14)
      {
        v6 = __clz(__rbit64(v14)) | v4 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v15 = v7 << 6;
        v16 = v7 + 1;
        v17 = (a1 + 64 + 8 * v7);
        while (v16 < (v6 + 63) >> 6)
        {
          v19 = *v17++;
          v18 = v19;
          v15 += 64;
          ++v16;
          if (v19)
          {
            sub_2187BC250(v4, v21, 0);
            v6 = __clz(__rbit64(v18)) + v15;
            goto LABEL_4;
          }
        }

        sub_2187BC250(v4, v21, 0);
      }

LABEL_4:
      ++v5;
      v4 = v6;
      if (v5 == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

double sub_21984DBEC(uint64_t a1)
{
  (*(*((*MEMORY[0x277D85000] & *v1) + 0x58) + 88))(a1, *((*MEMORY[0x277D85000] & *v1) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2, MEMORY[0x277D6D890]);
  sub_219BE6EF4();

  return result;
}

uint64_t sub_21984DD28(uint64_t a1)
{
  v3 = *MEMORY[0x277D85000] & *v1;
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = sub_219BF1584();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v22 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v14 = Strong;
      v15 = swift_allocObject();
      v21 = v6;
      *(v15 + 16) = v14;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
      v6 = v21;
    }

    swift_unknownObjectRelease();
  }

  sub_219BE7B14();
  sub_219BF5054();
  sub_219BF1B74();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_219869D08(v9, sub_218B0847C);
  }

  else
  {
    v16 = v22;
    (*(v11 + 32))(v22, v9, v10);
    if (swift_unknownObjectWeakLoadStrong())
    {
      if (swift_unknownObjectWeakLoadStrong())
      {
        v17 = v22;
        (*(v11 + 16))(v6, v22, v10);
        (*(v11 + 56))(v6, 0, 1, v10);
        sub_218CF14AC(v6);
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();
        sub_219869D08(v6, sub_218B0847C);
        (*(v11 + 8))(v17, v10);
      }

      else
      {
        swift_unknownObjectRelease();
        (*(v11 + 8))(v22, v10);
      }
    }

    else
    {
      (*(v11 + 8))(v16, v10);
    }
  }

  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = *(v3 + 80);
  v19[3] = *(v3 + 88);
  v19[4] = v18;

  return sub_21984E25C(a1);
}

void sub_21984E154(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      v6 = v5;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v7 = off_282A42A30;
        type metadata accessor for TagFeedViewController();
        v7(v6, &off_282A9F6D8, a1);
        swift_unknownObjectRelease();
      }

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_21984E25C(uint64_t a1)
{
  swift_getObjectType();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v2 = sub_219BF66A4();
  sub_219BE2F84();

  v3 = sub_219BF66A4();
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = swift_allocObject();
  v7 = *(a1 + 16);
  v6[1] = *a1;
  v6[2] = v7;
  v6[3] = *(a1 + 32);
  sub_219866778(0);
  v8 = v4;
  v9 = v5;
  sub_219BE2F84();

  v10 = sub_219BF66A4();
  v11 = sub_219BE2FE4();

  return v11;
}

void sub_21984E424(uint64_t a1, uint64_t a2)
{
  v57 = a2;
  v54 = a1;
  ObjectType = swift_getObjectType();
  v47 = *MEMORY[0x277D85000] & *v2;
  v4 = sub_219BE61B4();
  v52 = *(v4 - 8);
  v53 = v4;
  MEMORY[0x28223BE20](v4);
  v51 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v46 - v7;
  v9 = sub_219BEE644();
  v49 = *(v9 - 8);
  v50 = v9;
  MEMORY[0x28223BE20](v9);
  v55 = v10;
  v48 = &v46 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954408(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280EE95A0 != -1)
  {
    swift_once();
  }

  swift_getWitnessTable();
  v56 = ObjectType;
  sub_219BDC7D4();
  v16 = v59;
  sub_219BE6EC4();
  v58 = v59;
  v17 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v17, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v18 = sub_219759E94();
  (*(v13 + 8))(v15, v12);
  if ((~v18 & 0xF000000000000007) == 0)
  {
    sub_219BE6EC4();
    sub_219BE6F74();

    v20 = v51;
    v19 = v52;
    v21 = v53;
    (*(v52 + 104))(v51, *MEMORY[0x277D6D510], v53);
    v22 = sub_219BE61A4();
    v23 = *(v19 + 8);
    v23(v20, v21);
    v23(v8, v21);
    if (v22)
    {
      sub_21984E25C(v54);
    }

    return;
  }

  if (sub_21984EBF4(v18))
  {
    v24 = v57;
    sub_21984EE00(v57);
    v25 = CACurrentMediaTime();
    MEMORY[0x28223BE20](v26);
    *(&v46 - 4) = v2;
    *(&v46 - 3) = v18;
    *(&v46 - 2) = v54;
    *(&v46 - 1) = v24;
    sub_219BE3204();
    v27 = swift_allocObject();
    *(v27 + 16) = v25;
    *(v27 + 24) = v16;
    v28 = sub_219BE2E54();
    v54 = sub_219BE2F64();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v29 = sub_219BF66A4();
    v31 = v48;
    v30 = v49;
    v53 = *(v49 + 16);
    v32 = v50;
    v53(v48, v24, v50);
    v33 = *(v30 + 80);
    v34 = swift_allocObject();
    v35 = v47;
    v36 = *(v47 + 80);
    *(v34 + 2) = v36;
    v51 = *(v35 + 88);
    v52 = v36;
    *(v34 + 3) = v51;
    v34[4] = v25;
    v49 = *(v30 + 32);
    (v49)(v34 + ((v33 + 40) & ~v33), v31, v32);
    v47 = sub_219BE2F94();

    v53(v31, v57, v32);
    v37 = swift_allocObject();
    v38 = v51;
    *(v37 + 2) = v52;
    *(v37 + 3) = v38;
    v37[4] = v25;
    *(v37 + 5) = v16;
    (v49)(v37 + ((v33 + 48) & ~v33), v31, v32);
    v39 = sub_219BE2E54();
    sub_219BE2FE4();

    v40 = sub_219BE2E54();
    sub_219BE3034();

LABEL_11:
    sub_21885AB78(v18);
    return;
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v42 = Strong;
  v44 = v48;
  v43 = v49;
  v45 = v50;
  (*(v49 + 104))(v48, *MEMORY[0x277D320A8], v50);
  sub_219BEE634();
  (*(v43 + 8))(v44, v45);
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_2198674E4(v42, 0);
    sub_21885AB78(v18);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_21885AB78(v18);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_21984EBF4(uint64_t a1)
{
  v1 = sub_219BF0644();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();
  sub_219BEE844();
  v5 = (*(v2 + 88))(v4, v1);
  if (v5 == *MEMORY[0x277D32EF0])
  {
    if ((sub_219BF1B84() & 1) == 0)
    {
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v6 = sub_219BF6F44();
      v7 = sub_219BF6214();
      sub_219BE5314("Tag feed cannot refresh while offline", 37, 2, &dword_2186C1000, v6, v7, MEMORY[0x277D84F90]);
LABEL_6:

      return 0;
    }
  }

  else
  {
    if (v5 == *MEMORY[0x277D32EF8])
    {
      sub_2186C6148(0, &qword_280E8D790, 0x277D86200);
      v6 = sub_219BF6F44();
      v8 = sub_219BF6214();
      sub_219BE5314("Tag feed cannot refresh an Offline Mode cursor", 46, 2, &dword_2186C1000, v6, v8, MEMORY[0x277D84F90]);
      goto LABEL_6;
    }

    (*(v2 + 8))(v4, v1);
  }

  return 1;
}

void sub_21984EE00(uint64_t a1)
{
  sub_2198668E4(0, &qword_280E8EAA0, MEMORY[0x277D85720], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - v3;
  v5 = sub_219BEE644();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 104))(v9, *MEMORY[0x277D320A8], v5, v7);
  v10 = sub_219BEE634();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v11 = *(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor);
    if ([v11 feedConfiguration] == 9 || objc_msgSend(v11, sel_feedConfiguration) == 10 && (v15 = objc_msgSend(objc_msgSend(v11, sel_backingTag), sel_isPuzzleType), swift_unknownObjectRelease(), v15))
    {
      v12 = sub_219BF5BF4();
      (*(*(v12 - 8) + 56))(v4, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v1;
      v14 = v1;
      sub_218AB3D80(0, 0, v4, &unk_219CAD5A0, v13);
    }
  }
}

uint64_t sub_21984F0A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();
  v6 = sub_219BEE774();
  v7 = sub_2196A20F8(v6, a3, a4);

  return v7;
}

uint64_t sub_21984F150(uint64_t *a1, double a2, double a3)
{
  v4 = sub_219BED214();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v16 - v9;
  v11 = *a1;
  CACurrentMediaTime();
  sub_219BED1F4();
  sub_219BED244();
  v12 = *(v5 + 8);
  v12(v7, v4);
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v13 = sub_219BF66A4();
  v16[1] = v11;
  v14 = sub_219BE2E04();

  v12(v10, v4);
  return v14;
}

uint64_t sub_21984F2F4(void *a1, void *a2, uint64_t a3, double a4)
{
  v6 = sub_219BEE644();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(a2 + *((*MEMORY[0x277D85000] & *a2) + 0xC0)) = *a1;

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v11 = MEMORY[0x277D83A80];
  *(v10 + 56) = MEMORY[0x277D839F8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v12;
  sub_219BF6214();
  sub_219BE5314("Tag feed successfully refreshed with visible duration %fms", v15);

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v14 = result;
    (*(v7 + 104))(v9, *MEMORY[0x277D320A8], v6);
    sub_219BEE634();
    (*(v7 + 8))(v9, v6);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2198674E4(v14, 1);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_21984F58C(uint64_t a1, void *a2, uint64_t a3, double a4, double a5)
{
  v40 = a3;
  v44 = a2;
  v41 = *MEMORY[0x277D85000] & *a2;
  v6 = sub_219BED174();
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BED1D4();
  v46 = *(v8 - 8);
  v47 = v8;
  MEMORY[0x28223BE20](v8);
  v45 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEE644();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v39 = v12;
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_219BED214();
  v42 = *(v14 - 8);
  v43 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v39 - v18;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v20 = qword_280F61708;
  v21 = sub_219BF61F4();
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09EC0;
  sub_219BF5CD4();
  v23 = MEMORY[0x277D83A80];
  *(v22 + 56) = MEMORY[0x277D839F8];
  *(v22 + 64) = v23;
  *(v22 + 32) = v24;
  aBlock = 0;
  v52 = 0xE000000000000000;
  v57 = a1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v25 = aBlock;
  v26 = v52;
  *(v22 + 96) = MEMORY[0x277D837D0];
  *(v22 + 104) = sub_2186FC3BC();
  *(v22 + 72) = v25;
  *(v22 + 80) = v26;
  sub_219BE5314("Error while refreshing tag feed with visible duration %fms, error=%{public}@", 76, 2, &dword_2186C1000, v20, v21, v22);

  CACurrentMediaTime();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v27 = sub_219BF66A4();
  sub_219BED1F4();
  sub_219BED244();
  v28 = v43;
  v42 = *(v42 + 8);
  (v42)(v16, v43);
  (*(v11 + 16))(v13, v40, v10);
  v29 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v30 = swift_allocObject();
  v31 = v41;
  *(v30 + 2) = *(v41 + 80);
  v32 = v44;
  *(v30 + 3) = *(v31 + 88);
  *(v30 + 4) = v32;
  (*(v11 + 32))(&v30[v29], v13, v10);
  v55 = sub_2198679F0;
  v56 = v30;
  aBlock = MEMORY[0x277D85DD0];
  v52 = 1107296256;
  v53 = sub_218793E0C;
  v54 = &block_descriptor_84_2;
  v33 = _Block_copy(&aBlock);
  v34 = v32;

  v35 = v45;
  sub_219BED1A4();
  aBlock = MEMORY[0x277D84F90];
  sub_2186CC41C(&qword_280E927E0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_2198668E4(0, &qword_280E8EFB0, MEMORY[0x277D85198], MEMORY[0x277D83940]);
  sub_21874EB68();
  v36 = v48;
  v37 = v50;
  sub_219BF7164();
  MEMORY[0x21CECD420](v19, v35, v36, v33);
  _Block_release(v33);

  (*(v49 + 8))(v36, v37);
  (*(v46 + 8))(v35, v47);
  return (v42)(v19, v28);
}

uint64_t sub_21984FC00(void *a1, uint64_t a2)
{
  v2 = sub_219BEE644();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v7 = result;
    (*(v3 + 104))(v5, *MEMORY[0x277D320A8], v2);
    sub_219BEE634();
    (*(v3 + 8))(v5, v2);
    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_2198674E4(v7, 0);
      swift_unknownObjectRelease();
    }

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_21984FD60()
{
  swift_getObjectType();
  v0 = CACurrentMediaTime();
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v1 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v0;
  v2 = sub_219BE2E54();
  sub_219BE2F74();

  v3 = sub_219BE2E54();
  sub_219BE2FD4();
}

void sub_21984FEE8(uint64_t a1)
{
  v2 = v1;
  v32 = a1;
  v28[1] = swift_getObjectType();
  v3 = sub_219BE61B4();
  v30 = *(v3 - 8);
  v31 = v3;
  MEMORY[0x28223BE20](v3);
  v29 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v28 - v6;
  sub_218954408(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219BE6EC4();
  v33 = v34;
  v13 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v13, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v14 = sub_219759E94();
  (*(v10 + 8))(v12, v9);
  if ((~v14 & 0xF000000000000007) != 0)
  {
    if (sub_21984EBF4(v14))
    {
      sub_219BDEC34();
      sub_219BDEB94();
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v20 = qword_280F61708;
      v21 = sub_219BF6214();
      sub_219BE5314("Tag feed refreshing for sports subscription change...", 53, 2, &dword_2186C1000, v20, v21, MEMORY[0x277D84F90]);
      v22 = CACurrentMediaTime();
      MEMORY[0x28223BE20](v23);
      v28[-4] = v2;
      v28[-3] = v14;
      v28[-2] = v32;
      sub_219BE3204();
      v24 = sub_219BE2E54();
      sub_219BE95D4();
      sub_219BE2F84();

      *(swift_allocObject() + 16) = v22;
      v25 = sub_219BE2E54();
      sub_219BE2F74();

      v26 = sub_219BE2E54();
      sub_219BE2FD4();

      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v27 = sub_219BF66A4();
      sub_219BE3034();
    }

    sub_21885AB78(v14);
  }

  else
  {
    sub_219BE6EC4();
    sub_219BE6F74();

    v16 = v29;
    v15 = v30;
    v17 = v31;
    (*(v30 + 104))(v29, *MEMORY[0x277D6D510], v31);
    v18 = sub_219BE61A4();
    v19 = *(v15 + 8);
    v19(v16, v17);
    v19(v7, v17);
    if (v18)
    {
      sub_21984E25C(v32);
    }
  }
}

uint64_t sub_219850454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();
  v4 = sub_219BEE774();
  v5 = sub_2196A25C8(v4, a3);

  return v5;
}

uint64_t sub_2198504F4(void *a1, void *a2)
{
  (*(*((*MEMORY[0x277D85000] & *a2) + 0x58) + 16))(*a1, *((*MEMORY[0x277D85000] & *a2) + 0x50));
  v2 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v2, MEMORY[0x277D6D890]);
  v3 = sub_219BE6E84();

  return v3;
}

double sub_21985063C(uint64_t a1)
{
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v1 = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_219C09BA0;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_2186FC3BC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0xE000000000000000;
  v3 = sub_219BF6214();
  sub_219BE5314("Tag feed failed to refresh for sports subscription change, error=%{public}@", 75, 2, &dword_2186C1000, v1, v3, v2);

  return result;
}

void sub_219850788(uint64_t a1)
{
  swift_getObjectType();
  v3 = MEMORY[0x277D85000];
  sub_219BDEC34();
  sub_219BDEB94();
  *(v1 + *((*v3 & *v1) + 0xC0)) = 0;

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = swift_unknownObjectWeakLoadStrong();
    if (v5)
    {
      *(swift_allocObject() + 16) = v5;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    Strong = swift_unknownObjectRelease();
  }

  MEMORY[0x28223BE20](Strong);
  sub_219BE3204();
  sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
  v6 = sub_219BF66A4();
  sub_219BE95D4();
  sub_219BE2F84();

  *(swift_allocObject() + 16) = v1;
  v7 = v1;
  v8 = sub_219BE2E54();
  sub_219BE2F94();

  v9 = *a1;
  v10 = *(a1 + 8);
  v11 = swift_allocObject();
  v12 = *(a1 + 16);
  v11[1] = *a1;
  v11[2] = v12;
  v11[3] = *(a1 + 32);
  v13 = v9;
  v14 = v10;
  v15 = sub_219BE2E54();
  sub_219BE3034();
}

uint64_t sub_219850A8C(uint64_t *a1, void *a2)
{
  v2 = *MEMORY[0x277D85000] & *a2;
  v3 = *a1;
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v4 = sub_219BE5434();
  __swift_project_value_buffer(v4, qword_280F62598);
  v5 = sub_219BE5414();
  v6 = sub_219BF6214();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_2186C1000, v5, v6, "TagFeed interactor did reload", v7, 2u);
    MEMORY[0x21CECF960](v7, -1, -1);
  }

  (*(*(v2 + 88) + 8))(v3, *(v2 + 80));
  v8 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v8, MEMORY[0x277D6D890]);
  v9 = sub_219BE6E84();

  return v9;
}

uint64_t sub_219850CA0(uint64_t a1, void *a2)
{
  v3 = sub_219BE95D4();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  result = (*(v4 + 88))(v7, v3);
  if (result != *MEMORY[0x277D6E6A0])
  {
    if (result == *MEMORY[0x277D6E6A8])
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v9 = result;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v10 = off_282A429D0;
          type metadata accessor for TagFeedViewController();
          v10(v9, &off_282A9F6D8, 0);
          swift_unknownObjectRelease();
        }

        return swift_unknownObjectRelease();
      }
    }

    else
    {
      return (*(v4 + 8))(v7, v3);
    }
  }

  return result;
}

uint64_t sub_219850E68(uint64_t a1, double *a2)
{
  if (qword_280EE5F50 != -1)
  {
    swift_once();
  }

  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62598);
  v3 = sub_219BE5414();
  v4 = sub_219BF6214();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_2186C1000, v3, v4, "TagFeed interactor did run prewarm modifier after force reload", v5, 2u);
    MEMORY[0x21CECF960](v5, -1, -1);
  }

  sub_219850FB0();
  sub_219BDEC84();
  return sub_219BDEBE4();
}

void sub_219850FB0()
{
  v1 = v0;
  v2 = sub_219BE66C4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v53 = v4;
  v54 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v50 - v6;
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v59 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BF1584();
  v60 = *(v10 - 8);
  v61 = v10;
  v11 = *(v60 + 64);
  MEMORY[0x28223BE20](v10);
  v55 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v56 = &v50 - v13;
  sub_219866A94(0, &qword_280EE5A20, MEMORY[0x277D6D618]);
  v57 = *(v14 - 8);
  v58 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v50 - v15;
  sub_218954408(0);
  v18 = v17;
  v19 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_219BE7B04();
  if (v22 >> 62)
  {
    if (v22 >> 62 != 1)
    {
      return;
    }
  }

  else
  {
    sub_21880BB00(v22);
  }

  v50 = v7;
  v51 = v3;
  v52 = v2;
  sub_219BE6EC4();
  v62 = v63;
  v23 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v23, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v24 = sub_219759FB8();
  (*(v19 + 8))(v21, v18);
  if (v24)
  {
    v63 = *(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x88));
    sub_219866A94(0, &qword_280EE4BC0, MEMORY[0x277D6DF28]);
    sub_2190CEAE0();
    sub_219BE91E4();
    sub_2186CC41C(&unk_280ED2718, type metadata accessor for TagFeedLayoutModel, "euXh<]\r");
    v25 = v58;
    v26 = sub_219BE6574();
    (*(v57 + 8))(v16, v25);
    if (v26)
    {
      if (qword_280E8D7F8 != -1)
      {
        swift_once();
      }

      v27 = qword_280F61708;
      v28 = sub_219BF6214();
      sub_219BE5314("Tag feed has content but is still resizing, keeping loading cover", 65, 2, &dword_2186C1000, v27, v28, MEMORY[0x277D84F90]);
    }

    else
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v42 = Strong;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v43 = off_282A429E0;
          type metadata accessor for TagFeedViewController();
          v43(v42);
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    v29 = v59;
    sub_219BF1B74();
    v31 = v60;
    v30 = v61;
    if ((*(v60 + 48))(v29, 1, v61) == 1)
    {
      sub_219869D08(v29, sub_218B0847C);
      v32 = swift_unknownObjectWeakLoadStrong();
      v34 = v51;
      v33 = v52;
      v35 = v50;
      if (v32)
      {
        sub_2198615A4(*(*(v1 + *((*MEMORY[0x277D85000] & *v1) + 0x78)) + OBJC_IVAR____TtC7NewsUI218TagFeedDataManager_feedDescriptor));
        v36 = swift_unknownObjectWeakLoadStrong();
        if (v36)
        {
          v37 = v36;
          v38 = v54;
          (*(v34 + 16))(v54, v35, v33);
          v39 = (*(v34 + 80) + 24) & ~*(v34 + 80);
          v40 = swift_allocObject();
          *(v40 + 16) = v37;
          (*(v34 + 32))(v40 + v39, v38, v33);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }

        (*(v34 + 8))(v35, v33);
      }
    }

    else
    {
      v44 = *(v31 + 32);
      v45 = v56;
      v44(v56, v29, v30);
      if (swift_unknownObjectWeakLoadStrong())
      {
        v46 = swift_unknownObjectWeakLoadStrong();
        if (v46)
        {
          v47 = v46;
          (*(v31 + 16))(v55, v45, v30);
          v48 = (*(v31 + 80) + 24) & ~*(v31 + 80);
          v49 = swift_allocObject();
          *(v49 + 16) = v47;
          v44((v49 + v48), v55, v30);
          swift_unknownObjectRetain();
          sub_219BE3494();
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      (*(v31 + 8))(v45, v30);
    }
  }
}

void sub_21985189C(uint64_t a1)
{
  swift_getObjectType();
  v2 = (*MEMORY[0x277D85000] & *v1);
  v3 = v2[24];
  v4 = *(v1 + v3);
  if (v4)
  {
    *(v1 + v3) = 0;
    sub_219BDEC34();
    sub_219BDEB94();
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v5 = qword_280F61708;
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_219C09BA0;
    sub_219BEFAD4();
    sub_219BF7484();
    *(v6 + 56) = MEMORY[0x277D837D0];
    *(v6 + 64) = sub_2186FC3BC();
    *(v6 + 32) = 0;
    *(v6 + 40) = 0xE000000000000000;
    v7 = sub_219BF6214();
    sub_219BE5314("Will apply a queued refresh update with behavior=%{public}@", 59, 2, &dword_2186C1000, v5, v7, v6);

    (*(v2[11] + 16))(v4, v2[10]);

    v8 = CACurrentMediaTime();
    MEMORY[0x28223BE20](v9);
    sub_219BE95D4();
    sub_219BE3204();
    *(swift_allocObject() + 16) = v8;
    v10 = sub_219BE2E54();
    sub_219BE2F94();

    v11 = sub_219BE2E54();
    sub_219BE2FD4();

    sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v12 = sub_219BF66A4();
    sub_219BE3034();
  }
}

uint64_t sub_219851D28(double a1)
{
  sub_218954408(0);
  v2 = v1;
  v3 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v17 - v6;
  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_219C09BA0;
  sub_219BF5CD4();
  v9 = MEMORY[0x277D83A80];
  *(v8 + 56) = MEMORY[0x277D839F8];
  *(v8 + 64) = v9;
  *(v8 + 32) = v10;
  sub_219BF6214();
  sub_219BE5314("Tag feed successfully applied refresh update with visible duration %fms", *&v17);

  sub_219BE6EC4();
  v18 = v19;
  v11 = MEMORY[0x277D6D8B8];
  sub_219866854(0, &qword_280EE54E0, MEMORY[0x277D6D8B8]);
  sub_219866B54(&qword_280EE54F0, &qword_280EE54E0, v11, MEMORY[0x277D6D8C8]);
  sub_219BE7B94();

  v12 = sub_219759E94();
  v13 = *(v3 + 8);
  v13(v7, v2);
  if ((~v12 & 0xF000000000000007) != 0)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_2186F7CA4();
    sub_219BEE7D4();
    sub_21885AB78(v12);
    sub_219BEE2F4();
  }

  sub_219BE6EC4();
  v18 = v19;
  v14 = v17;
  sub_219BE7B94();

  v15 = sub_2196A49FC(v14);
  return (v13)(v14, v2, v15);
}

uint64_t sub_21985212C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v86 = a3;
  ObjectType = swift_getObjectType();
  v79 = (*MEMORY[0x277D85000] & *v3);
  sub_21898BF70(0);
  v8 = v7;
  v87 = *(v7 - 8);
  v9 = *(v87 + 64);
  MEMORY[0x28223BE20](v7);
  v82 = v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for TagFeedExpandRequest(0);
  MEMORY[0x28223BE20](v10);
  v81 = (v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = type metadata accessor for TagFeedGapLocation(0);
  v78 = *(v15 - 8);
  v16 = *(v78 + 64);
  MEMORY[0x28223BE20](v15 - 8);
  v80 = v64 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = v64 - v18;
  v85 = v8;
  v83 = a2;
  sub_219BE5FC4();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_219869D08(v14, type metadata accessor for TagFeedModel);
    v20 = v86[3];
    v21 = v86[4];
    __swift_project_boxed_opaque_existential_1(v86, v20);
    return MEMORY[0x21CEC0B20](0, v20, v21);
  }

  else
  {
    v23 = *v14;
    v24 = v14[1];
    sub_2186F0CC0(0);
    v26 = *(v25 + 48);
    v76 = v19;
    v77 = type metadata accessor for TagFeedGapLocation;
    v27 = v14 + v26;
    v28 = v19;
    sub_219867CDC(v27, v19, type metadata accessor for TagFeedGapLocation);
    v29 = v81;
    v30 = v81 + *(v10 + 20);
    v73 = type metadata accessor for TagFeedGapLocation;
    v31 = sub_219867D44(v28, v30, type metadata accessor for TagFeedGapLocation);
    *v29 = v23;
    v29[1] = v24;
    v32 = (v29 + *(v10 + 24));
    v33 = *(a1 + 8);
    v34 = *(a1 + 32);
    v32[1] = *(a1 + 16);
    v32[2] = v34;
    *v32 = *a1;
    MEMORY[0x28223BE20](v31);
    v64[-2] = v4;
    v64[-1] = v29;
    v66 = v35;
    v65 = v33;
    v64[1] = sub_219BE3204();
    v64[2] = sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
    v36 = sub_219BF66A4();
    v37 = v87;
    v38 = *(v87 + 16);
    v72 = v87 + 16;
    v74 = v38;
    v75 = v4;
    v39 = v82;
    v40 = v85;
    (v38)(v82, v83);
    v41 = a1;
    v42 = v80;
    sub_219867D44(v76, v80, type metadata accessor for TagFeedGapLocation);
    v67 = *(v37 + 80);
    v43 = v37;
    v44 = (v67 + 32) & ~v67;
    v71 = *(v78 + 80);
    v78 = v9 + v71;
    v45 = (v9 + v71 + v44) & ~v71;
    v70 = v67 | v71;
    v46 = swift_allocObject();
    v47 = v79;
    v69 = v79[10];
    *(v46 + 16) = v69;
    v68 = v47[11];
    *(v46 + 24) = v68;
    v48 = *(v43 + 32);
    v87 = v43 + 32;
    v79 = v48;
    (v48)(v46 + v44, v39, v40);
    sub_219867CDC(v42, v46 + v45, v77);
    sub_219BE95D4();
    sub_219BE2F84();

    v49 = sub_219BF66A4();
    v50 = v86;
    sub_218718690(v86, v88);
    v51 = swift_allocObject();
    v52 = v41[1];
    v51[1] = *v41;
    v51[2] = v52;
    v51[3] = v41[2];
    sub_2186CB1F0(v88, (v51 + 4));
    v53 = v66;
    v54 = v65;
    sub_219BE2F94();

    v55 = sub_219BF66A4();
    sub_218718690(v50, v88);
    v56 = v82;
    v57 = v85;
    v74(v82, v83, v85);
    v58 = v76;
    v59 = v80;
    sub_219867D44(v76, v80, v73);
    v60 = (v67 + 72) & ~v67;
    v61 = (v78 + v60) & ~v71;
    v62 = swift_allocObject();
    v63 = v68;
    *(v62 + 16) = v69;
    *(v62 + 24) = v63;
    sub_2186CB1F0(v88, v62 + 32);
    (v79)(v62 + v60, v56, v57);
    sub_219867CDC(v59, v62 + v61, v77);
    sub_219BE2FE4();

    sub_219869D08(v58, type metadata accessor for TagFeedGapLocation);
    return sub_219869D08(v81, type metadata accessor for TagFeedExpandRequest);
  }
}

uint64_t sub_219852884(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v33 = a3;
  v40 = a2;
  v41 = *MEMORY[0x277D85000] & *a2;
  v32 = type metadata accessor for TagFeedFailedData(0);
  MEMORY[0x28223BE20](v32);
  v34 = (&v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218B0847C(0);
  MEMORY[0x28223BE20](v6 - 8);
  v36 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219867FE8(0);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = (&v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_219BF0644();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v38 = a1[1];
  v39 = v16;
  v17 = a1[2];
  v37 = a1[3];
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186F7CA4();

  sub_219BEF3D4();
  sub_219BEE844();

  v18 = *(v9 + 56);
  *v11 = v17;
  (*(v13 + 32))(v11 + v18, v15, v12);
  if (v17 >> 61 == 4 && (*(v13 + 88))(v11 + v18, v12) == *MEMORY[0x277D32EF0])
  {
    v19 = v36;
    sub_219BF1B74();
    v20 = sub_219BF1584();
    v21 = (*(*(v20 - 8) + 48))(v19, 1, v20);
    sub_219869D08(v19, sub_218B0847C);
    if (v21 != 1)
    {
      sub_21898BF70(0);
      v25 = sub_219BE5F84();
      v27 = v26;
      v28 = v34;
      sub_219867D44(v35, v34 + *(v32 + 20), type metadata accessor for TagFeedGapLocation);
      *v28 = v25;
      v28[1] = v27;
      v29 = (*(*(v41 + 88) + 80))(v28, *(v41 + 80));
      sub_219869D08(v28, type metadata accessor for TagFeedFailedData);
      v42 = v29;
      v30 = MEMORY[0x277D6D888];
      sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
      sub_219866B54(&qword_280EE5680, &qword_280EE5670, v30, MEMORY[0x277D6D890]);
      v23 = sub_219BE6E84();

      goto LABEL_7;
    }
  }

  else
  {
    sub_219869D08(v11, sub_219867FE8);
  }

  v42 = (*(*(v41 + 88) + 24))(v39, v38, v17, v37, *(v41 + 80));
  v22 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v22, MEMORY[0x277D6D890]);
  v23 = sub_219BE6E84();
LABEL_7:

  return v23;
}

uint64_t sub_219852E20(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_219BE95D4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219850FB0();
  (*(v7 + 16))(v9, a1, v6);
  v10 = (*(v7 + 88))(v9, v6);
  if (v10 == *MEMORY[0x277D6E6A0])
  {
    goto LABEL_5;
  }

  if (v10 != *MEMORY[0x277D6E6A8])
  {
    (*(v7 + 8))(v9, v6);
LABEL_5:
    v11 = 0;
    goto LABEL_6;
  }

  v11 = 1;
LABEL_6:
  v12 = a4[3];
  v13 = a4[4];
  __swift_project_boxed_opaque_existential_1(a4, v12);
  return MEMORY[0x21CEC0B20](v11, v12, v13);
}

double sub_219852FA8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v9 = *MEMORY[0x277D85000] & *a2;
  v10 = type metadata accessor for TagFeedFailedData(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (sub_219BE81D4())
  {
    v13 = a3[3];
    v14 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v13);
    MEMORY[0x21CEC0B20](0, v13, v14);
  }

  else
  {
    v30 = a4;
    v31 = v9;
    v32 = a5;
    if (qword_280E8D7F8 != -1)
    {
      swift_once();
    }

    v29 = qword_280F61708;
    v28 = sub_219BF61F4();
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_219C09EC0;
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    sub_2186CFDE4(0, &unk_280EE3DF0, MEMORY[0x277D6E8E8]);
    sub_219BF7484();
    v17 = v33[0];
    v18 = MEMORY[0x277D837D0];
    *(v16 + 56) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v16 + 64) = v19;
    *(v16 + 32) = v17;
    *&v33[0] = 0;
    *(&v33[0] + 1) = 0xE000000000000000;
    v34 = a1;
    sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
    sub_219BF7484();
    v20 = v33[0];
    *(v16 + 96) = v18;
    *(v16 + 104) = v19;
    *(v16 + 72) = v20;
    sub_219BE5314("Error while trying to expand tag feed, request=%{public}@, error=%{public}@", 75, 2, &dword_2186C1000, v29, v28, v16);

    sub_21898BF70(0);
    v21 = sub_219BE5F84();
    v23 = v22;
    sub_219867D44(v32, v12 + *(v10 + 20), type metadata accessor for TagFeedGapLocation);
    *v12 = v21;
    v12[1] = v23;
    v24 = (*(*(v31 + 88) + 80))(v12, *(v31 + 80));
    sub_219869D08(v12, type metadata accessor for TagFeedFailedData);
    v34 = v24;
    sub_218718690(a3, v33);
    v25 = swift_allocObject();
    sub_2186CB1F0(v33, v25 + 16);
    v26 = MEMORY[0x277D6D888];
    sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
    sub_219866B54(&qword_280EE5680, &qword_280EE5670, v26, MEMORY[0x277D6D890]);
    sub_219BE6EF4();
  }

  return result;
}

void sub_2198533C0(double a1, double a2, double a3, double a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = *MEMORY[0x277D85000];
  v15 = *MEMORY[0x277D85000] & v13;
  v16 = sub_219BE9F74();
  v49 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = v17;
  v48 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(v7 + *((v14 & v13) + 0x68));
  sub_219BE6EC4();
  LOBYTE(v13) = sub_218982810();

  if ((v13 & 1) != 0 && swift_unknownObjectWeakLoadStrong())
  {
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      *(swift_allocObject() + 16) = Strong;
      swift_unknownObjectRetain();
      sub_219BE3494();
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  v19 = CACurrentMediaTime();
  sub_219BE6084();
  v20 = *(v15 + 88);
  v21 = *(v20 + 40);
  v44 = *(v15 + 80);
  v45 = v20;
  *&v46 = COERCE_DOUBLE(v21());

  if (qword_280E8D7F8 != -1)
  {
    swift_once();
  }

  v43 = qword_280F61708;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_219C09EC0;
  v51 = 0.0;
  v52 = -2.68156159e154;
  sub_219BF7484();
  v23 = v16;
  v25 = v51;
  v24 = v52;
  v26 = MEMORY[0x277D837D0];
  *(v22 + 56) = MEMORY[0x277D837D0];
  v27 = sub_2186FC3BC();
  v42 = a6;
  v28 = v27;
  *(v22 + 64) = v27;
  *(v22 + 32) = v25;
  *(v22 + 40) = v24;
  v55 = 0;
  v56 = 0xE000000000000000;
  v51 = a1;
  v52 = a2;
  v53 = a3;
  v54 = a4;
  type metadata accessor for CGRect(0);
  sub_219BF7484();
  v29 = v55;
  v30 = v56;
  *(v22 + 96) = v26;
  *(v22 + 104) = v28;
  *(v22 + 72) = v29;
  *(v22 + 80) = v30;
  v31 = sub_219BF6214();
  sub_219BE5314("Tag feed relayout for trigger %{public}@ with bounds %{public}@", 63, 2, &dword_2186C1000, v43, v31, v22);

  v51 = *&v46;
  v32 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v34 = v48;
  v33 = v49;
  (*(v49 + 16))(v48, v42, v23);
  v35 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v36 = (v47 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 39) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v45;
  *(v38 + 16) = v44;
  *(v38 + 24) = v39;
  (*(v33 + 32))(v38 + v35, v34, v23);
  v40 = (v38 + v36);
  *v40 = a1;
  v40[1] = a2;
  v40[2] = a3;
  v40[3] = a4;
  *(v38 + v37) = v19;
  *(v38 + ((v37 + 15) & 0xFFFFFFFFFFFFFFF8)) = v32;
  v41 = MEMORY[0x277D6D888];
  sub_219866854(0, &qword_280EE5670, MEMORY[0x277D6D888]);
  sub_219866B54(&qword_280EE5680, &qword_280EE5670, v41, MEMORY[0x277D6D890]);

  sub_219BE6EF4();
}