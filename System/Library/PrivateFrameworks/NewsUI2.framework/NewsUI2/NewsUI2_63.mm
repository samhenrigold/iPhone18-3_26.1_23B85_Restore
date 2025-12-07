uint64_t sub_218DD2224()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DD2304()
{
  sub_218DD6D68(*(v0 + 208), type metadata accessor for RecipesSearchFeedGroupEmitterCursor);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DD23F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_2187608D4;

  return sub_218DD24A8(a1, a3);
}

uint64_t sub_218DD24A8(uint64_t a1, uint64_t a2)
{
  v3[24] = a2;
  v3[25] = v2;
  v3[23] = a1;
  v4 = sub_219BF0B74();
  v3[26] = v4;
  v3[27] = *(v4 - 8);
  v3[28] = swift_task_alloc();
  sub_2186EB308(0);
  v3[29] = v5;
  v3[30] = *(v5 - 8);
  v3[31] = swift_task_alloc();
  v6 = MEMORY[0x277D83D88];
  sub_218DD6F40(0, &qword_280E90380, MEMORY[0x277D339F0], MEMORY[0x277D83D88]);
  v3[32] = swift_task_alloc();
  sub_218DD6F40(0, &qword_280E90150, MEMORY[0x277D33EC8], v6);
  v3[33] = swift_task_alloc();
  sub_218DD6F40(0, &qword_280E919F0, sub_2186FF4C0, v6);
  v3[34] = swift_task_alloc();
  v7 = sub_219BF2AB4();
  v3[35] = v7;
  v3[36] = *(v7 - 8);
  v3[37] = swift_task_alloc();
  sub_218DD6F40(0, &unk_280E91B60, MEMORY[0x277D32040], v6);
  v3[38] = swift_task_alloc();
  v8 = sub_219BEF554();
  v3[39] = v8;
  v3[40] = *(v8 - 8);
  v3[41] = swift_task_alloc();
  v3[42] = swift_task_alloc();
  v9 = sub_219BED8D4();
  v3[43] = v9;
  v3[44] = *(v9 - 8);
  v3[45] = swift_task_alloc();
  v3[46] = swift_task_alloc();
  v10 = sub_219BF2124();
  v3[47] = v10;
  v3[48] = *(v10 - 8);
  v3[49] = swift_task_alloc();
  v3[50] = type metadata accessor for RecipesSearchFeedGroupConfigData(0);
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v11 = sub_219BF0BD4();
  v3[54] = v11;
  v3[55] = *(v11 - 8);
  v3[56] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DD2938, 0, 0);
}

uint64_t sub_218DD2938(uint64_t a1)
{
  sub_219BEF164();
  v4 = *(v1 + 40);
  if (*(v4 + 16))
  {
    v6 = *(v1 + 440);
    v5 = *(v1 + 448);
    v7 = *(v1 + 432);
    v8 = *(v1 + 200);
    sub_218C92DAC(v4 + 32, v1 + 128);
    v59 = v8 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_knobs;
    type metadata accessor for RecipesSearchFeedGroupKnobs(0);
    sub_219BEF134();
    sub_219BEF524();
    (*(v6 + 8))(v5, v7);
    v57 = *(v1 + 176);
    if (qword_280E8D828 != -1)
    {
      swift_once();
    }

    v9 = *(v1 + 416);
    v10 = *(v1 + 424);
    v11 = *(v1 + 400);
    v60 = qword_280F61720;
    sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
    v12 = swift_allocObject();
    *(v12 + 16) = xmmword_219C0B8C0;
    v13 = *(v1 + 128);
    *(v1 + 456) = v13;
    v14 = *(v13 + 16);
    v15 = MEMORY[0x277D83C10];
    *(v12 + 56) = MEMORY[0x277D83B88];
    *(v12 + 64) = v15;
    *(v12 + 32) = v14;
    sub_2186FEF84(0);
    sub_219BEDD14();
    v16 = *(v10 + *(v11 + 24));
    sub_218DD6D68(v10, type metadata accessor for RecipesSearchFeedGroupConfigData);
    if (v16)
    {
      v17 = 1819047270;
    }

    else
    {
      v17 = 0x6C616974726170;
    }

    if (v16)
    {
      v18 = 0xE400000000000000;
    }

    else
    {
      v18 = 0xE700000000000000;
    }

    *(v12 + 96) = MEMORY[0x277D837D0];
    v19 = sub_2186FC3BC();
    *(v12 + 72) = v17;
    *(v12 + 80) = v18;
    *(v12 + 136) = MEMORY[0x277D83B88];
    *(v12 + 144) = MEMORY[0x277D83C10];
    *(v12 + 104) = v19;
    *(v12 + 112) = v57;
    v20 = sub_219BF6214();
    sub_219BE5314("Search recipes creating initial cursor with %ld recipes, searchMode=%{public}@, maxNumberOfItems=%ld", 100, 2, &dword_2186C1000, v60, v20, v12);

    sub_219BEDD14();
    v21 = *(v9 + *(v11 + 24));
    sub_218DD6D68(v9, type metadata accessor for RecipesSearchFeedGroupConfigData);
    v22 = (v21 & 1) == 0 && v57 < *(v13 + 16);
    v25 = *(v1 + 384);
    v26 = *(v1 + 392);
    v43 = *(v1 + 376);
    v44 = *(v1 + 408);
    v45 = *(v1 + 336);
    v46 = *(v1 + 328);
    v56 = *(v1 + 320);
    v58 = *(v1 + 312);
    v48 = *(v1 + 304);
    v53 = *(v1 + 296);
    v54 = *(v1 + 288);
    v55 = *(v1 + 280);
    v50 = *(v1 + 272);
    v51 = *(v1 + 264);
    v52 = *(v1 + 256);
    v47 = *(v1 + 200);
    v27 = MEMORY[0x277D84560];
    sub_218DD6F40(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    sub_219BF3E84();
    v28 = swift_allocObject();
    *(v28 + 16) = xmmword_219C09BA0;
    v49 = v28;
    sub_218DD6F40(0, &qword_280E8B860, MEMORY[0x277D333A8], v27);
    sub_219BF14C4();
    *(swift_allocObject() + 16) = xmmword_219C09BA0;
    sub_218B6F8A0();
    v29 = swift_allocBox();
    *(v1 + 488) = v22;
    v30 = MEMORY[0x277D84F90];
    sub_219BF2704();
    *v26 = v29;
    (*(v25 + 104))(v26, *MEMORY[0x277D33758], v43);
    sub_219BF14A4();
    sub_218F0B984(v30);
    sub_218F0BA7C(v30);
    sub_218F0BB90(v30);
    sub_219BF3E74();
    v32 = *(v47 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_formatService + 24);
    v31 = *(v47 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_formatService + 32);
    __swift_project_boxed_opaque_existential_1((v47 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_formatService), v32);
    sub_219BEDD14();
    sub_219BEDCC4();
    sub_219BEDCC4();
    v33 = sub_219BEE5D4();
    (*(*(v33 - 8) + 56))(v48, 1, 1, v33);
    sub_2186FF4C0(0);
    v35 = v34;
    v36 = *(v34 - 8);
    (*(v36 + 16))(v50, v59, v34);
    (*(v36 + 56))(v50, 0, 1, v35);
    v37 = sub_219BF35D4();
    (*(*(v37 - 8) + 56))(v51, 1, 1, v37);
    *(v1 + 489) = 4;
    sub_2186FF440(0, &qword_27CC0E508, type metadata accessor for SearchFeedServiceConfig, sub_2186FF508, MEMORY[0x277D33F88]);
    swift_allocObject();

    sub_219BF38D4();
    v38 = sub_219BF2774();
    (*(*(v38 - 8) + 56))(v52, 1, 1, v38);
    *MEMORY[0x277D30B98];
    v60;
    sub_219BF2A84();
    *(v1 + 464) = sub_218F0AF50(v44, 0x73657069636572, 0xE700000000000000, v45, v46, v49, v48, v53, v32, v31);

    (*(v54 + 8))(v53, v55);
    sub_218DD6CF8(v48, &unk_280E91B60, MEMORY[0x277D32040]);
    v39 = *(v56 + 8);
    v39(v46, v58);
    v39(v45, v58);
    v40 = sub_219BF1934();
    (*(*(v40 - 8) + 8))(v44, v40);
    v41 = swift_task_alloc();
    *(v1 + 472) = v41;
    *v41 = v1;
    v41[1] = sub_218DD3404;
    v42 = *(v1 + 368);

    return MEMORY[0x2821D23D8](v42);
  }

  else
  {
    v23 = sub_219BEEDD4();
    sub_218DD65E4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277D323A8], v23);
    swift_willThrow();
    sub_218B6F84C(v1 + 16);

    v2 = *(v1 + 8);

    return v2();
  }
}

uint64_t sub_218DD3404()
{
  *(*v1 + 480) = v0;

  if (v0)
  {
    v2 = sub_218DD385C;
  }

  else
  {
    v2 = sub_218DD3538;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DD3538()
{
  v1 = v0[57];
  (*(v0[44] + 16))(v0[45], v0[46], v0[43]);
  v2 = *(v1 + 16);
  v22 = v2;
  if (v2)
  {
    v3 = v25[57];
    v4 = v25[30];
    v5 = v25[27];
    v26 = MEMORY[0x277D84F90];
    sub_219BF73F4();
    v6 = *(v4 + 16);
    v4 += 16;
    v7 = v3 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v23 = *(v4 + 56);
    v24 = v6;
    v8 = (v5 + 8);
    v9 = (v4 - 8);
    do
    {
      v10 = v25[31];
      v12 = v25[28];
      v11 = v25[29];
      v13 = v25[26];
      v24(v10, v7, v11);
      sub_219BF07D4();
      sub_219BF0B44();
      (*v8)(v12, v13);
      (*v9)(v10, v11);
      sub_219BF73D4();
      sub_219BF7414();
      sub_219BF7424();
      sub_219BF73E4();
      v7 += v23;
      --v2;
    }

    while (v2);
    (*(v25[44] + 8))(v25[46], v25[43]);
    v14 = v26;
  }

  else
  {
    (*(v25[44] + 8))(v25[46], v25[43]);
    v14 = MEMORY[0x277D84F90];
  }

  v15 = v25[45];
  v16 = v25[43];
  v17 = v25[44];
  v18 = v25[23];
  v19 = type metadata accessor for RecipesSearchFeedGroupEmitterCursor(0);
  sub_218C93D70((v25 + 17), v18 + v19[7]);
  (*(v17 + 32))(v18, v15, v16);
  *(v18 + v19[5]) = 0;
  *(v18 + v19[6]) = v14;
  *(v18 + v19[8]) = v22;
  sub_218C92E08((v25 + 16));
  sub_218B6F84C((v25 + 2));

  v20 = v25[1];

  return v20();
}

uint64_t sub_218DD385C()
{
  sub_218C92E08(v0 + 128);
  sub_218B6F84C(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_218DD39A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[36] = a3;
  v4[37] = v3;
  v4[34] = a1;
  v4[35] = a2;
  v5 = type metadata accessor for RecipesSearchFeedGroupEmitterCursor(0);
  v4[38] = v5;
  v4[39] = *(v5 - 8);
  v4[40] = swift_task_alloc();
  v4[41] = swift_task_alloc();
  v6 = sub_219BF0BD4();
  v4[42] = v6;
  v4[43] = *(v6 - 8);
  v4[44] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_218DD3ACC, 0, 0);
}

uint64_t sub_218DD3ACC()
{
  v74 = v0;
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v3 = *(v0 + 336);
  type metadata accessor for RecipesSearchFeedGroupKnobs(0);
  sub_219BEF134();
  sub_219BEF524();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 248);
  if (qword_280E8D828 != -1)
  {
    swift_once();
  }

  v5 = *(v0 + 304);
  v6 = *(v0 + 288);
  *(v0 + 360) = qword_280F61720;
  sub_2186E7BB0(0, &qword_280E8B5B0, &qword_280E8B560, MEMORY[0x277D84D98], MEMORY[0x277D84560]);
  v8 = v7;
  *(v0 + 368) = v7;
  v9 = swift_allocObject();
  v71 = 1;
  *(v9 + 16) = xmmword_219C09BA0;
  v10 = *(v6 + *(v5 + 24));
  *(v0 + 376) = v10;
  v11 = v10 >> 62;
  if (v10 >> 62)
  {
    v12 = sub_219BF7214();
  }

  else
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = MEMORY[0x277D83C10];
  *(v9 + 56) = MEMORY[0x277D83B88];
  *(v9 + 64) = v13;
  *(v9 + 32) = v12;
  sub_219BF6214();
  sub_219BE5314("Search recipes processing cursor with %ld recipes...", v66);

  if (!v11)
  {
    if (v4 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_7;
    }

LABEL_11:
    if ((v4 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      if (v11)
      {
        if (v10 < 0)
        {
          v9 = v10;
        }

        else
        {
          v9 = v10 & 0xFFFFFFFFFFFFFF8;
        }

        v19 = sub_219BF7214();
        if (sub_219BF7214() < 0)
        {
          __break(1u);
          goto LABEL_122;
        }

        if (v19 >= v4)
        {
          v20 = v4;
        }

        else
        {
          v20 = v19;
        }

        if (v19 < 0)
        {
          v20 = v4;
        }

        if (v4)
        {
          v18 = v20;
        }

        else
        {
          v18 = 0;
        }

        v16 = sub_219BF7214();
      }

      else
      {
        v16 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16 >= v4)
        {
          v17 = v4;
        }

        else
        {
          v17 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v4)
        {
          v18 = v17;
        }

        else
        {
          v18 = 0;
        }
      }

      if (v16 >= v18)
      {
        v71 = v10 & 0xC000000000000001;
        if ((v10 & 0xC000000000000001) != 0)
        {

          if (v18)
          {
            sub_218799788();
            v21 = 0;
            do
            {
              v22 = v21 + 1;
              sub_219BF7334();
              v21 = v22;
            }

            while (v18 != v22);
          }

          if (!v11)
          {
LABEL_38:
            v9 = 0;
            v19 = v10 & 0xFFFFFFFFFFFFFF8;
            v23 = (v10 & 0xFFFFFFFFFFFFFF8) + 32;
            v4 = (2 * v18) | 1;
            if (v4)
            {
LABEL_46:
              v69 = v8;
              v8 = v5;
              v68 = v23;
              sub_219BF7934();
              swift_unknownObjectRetain_n();
              v27 = swift_dynamicCastClass();
              if (!v27)
              {
                swift_unknownObjectRelease();
                v27 = MEMORY[0x277D84F90];
              }

              v28 = *(v27 + 16);

              if (!__OFSUB__(v4 >> 1, v9))
              {
                if (v28 == (v4 >> 1) - v9)
                {
                  v9 = swift_dynamicCastClass();
                  swift_unknownObjectRelease();
                  v8 = v69;
                  if (v9)
                  {
LABEL_53:
                    sub_218DD6E30(*(v0 + 288), *(v0 + 328), type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
                    if ((v9 & 0x8000000000000000) == 0 && (v9 & 0x4000000000000000) == 0)
                    {
                      v29 = *(v9 + 16);
                      goto LABEL_56;
                    }

LABEL_113:
                    v65 = sub_219BF7214();
                    if (v65 < 0)
                    {
                      __break(1u);
                      goto LABEL_115;
                    }

                    v29 = v65;
LABEL_56:
                    v70 = v5;
                    if (v11)
                    {
                      v30 = sub_219BF7214();
                    }

                    else
                    {
                      v30 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                    }

                    if (v30 >= v29)
                    {
                      v31 = v29;
                    }

                    else
                    {
                      v31 = v30;
                    }

                    if (v30 < 0)
                    {
                      v31 = v29;
                    }

                    if (v29)
                    {
                      v32 = v31;
                    }

                    else
                    {
                      v32 = 0;
                    }

                    if (v30 >= v32)
                    {
                      if (!v11)
                      {
                        v33 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
                        if (v33 < v32)
                        {
                          goto LABEL_116;
                        }

LABEL_73:
                        if (v33 < v30)
                        {
LABEL_117:
                          __break(1u);
                          goto LABEL_118;
                        }

                        if (v30 < 0)
                        {
LABEL_118:
                          __break(1u);
                          goto LABEL_119;
                        }

                        if (!v71 || v32 == v30)
                        {

                          if (!v11)
                          {
                            goto LABEL_82;
                          }
                        }

                        else
                        {
                          if (v32 >= v30)
                          {
                            __break(1u);
                            goto LABEL_124;
                          }

                          sub_218799788();

                          v34 = v32;
                          do
                          {
                            v35 = v34 + 1;
                            sub_219BF7334();
                            v34 = v35;
                          }

                          while (v30 != v35);
                          if (!v11)
                          {
LABEL_82:
                            v10 &= 0xFFFFFFFFFFFFFF8uLL;
                            v36 = v10 + 32;
                            v30 = (2 * v30) | 1;
                            if (v30)
                            {
LABEL_87:
                              v71 = v36;
                              sub_219BF7934();
                              swift_unknownObjectRetain_n();
                              v41 = swift_dynamicCastClass();
                              if (!v41)
                              {
                                swift_unknownObjectRelease();
                                v41 = MEMORY[0x277D84F90];
                              }

                              v42 = *(v41 + 16);

                              if (!__OFSUB__(v30 >> 1, v32))
                              {
                                if (v42 == (v30 >> 1) - v32)
                                {
                                  v40 = swift_dynamicCastClass();
                                  swift_unknownObjectRelease();
                                  if (v40)
                                  {
                                    goto LABEL_94;
                                  }

                                  v40 = MEMORY[0x277D84F90];
LABEL_93:
                                  swift_unknownObjectRelease();
LABEL_94:
                                  v43 = *(v0 + 328);
                                  v44 = *(v0 + 304);
                                  v45 = *(v70 + 24);

                                  *(v43 + v45) = v40;
                                  v46 = *(v44 + 20);
                                  v47 = *(v43 + v46);
                                  v48 = __OFADD__(v47, 1);
                                  v49 = v47 + 1;
                                  if (!v48)
                                  {
                                    *(v43 + v46) = v49;
                                    v8 = swift_allocObject();
                                    *(v8 + 16) = xmmword_219C09EC0;
                                    *(v8 + 56) = MEMORY[0x277D83B88];
                                    *(v8 + 64) = MEMORY[0x277D83C10];
                                    *(v8 + 32) = v29;
                                    if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
                                    {
                                      v50 = *(v40 + 16);
LABEL_98:
                                      v51 = *(v0 + 328);
                                      v53 = *(v0 + 304);
                                      v52 = *(v0 + 312);
                                      v54 = *(v0 + 272);

                                      *(v8 + 96) = MEMORY[0x277D83B88];
                                      *(v8 + 104) = MEMORY[0x277D83C10];
                                      *(v8 + 72) = v50;
                                      sub_219BF6214();
                                      sub_219BE5314("Search recipes created batch with %ld recipes, %ld remaining recipes", v67, v68);

                                      sub_218DD6E30(v51, v54, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
                                      (*(v52 + 56))(v54, 0, 1, v53);
                                      sub_218DD6D68(v51, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
                                      goto LABEL_99;
                                    }

LABEL_120:
                                    v50 = sub_219BF7214();
                                    goto LABEL_98;
                                  }

LABEL_119:
                                  __break(1u);
                                  goto LABEL_120;
                                }

                                goto LABEL_125;
                              }

LABEL_124:
                              __break(1u);
LABEL_125:
                              swift_unknownObjectRelease();
                              v36 = v71;
                            }

LABEL_86:
                            sub_218B66DE0(v10, v36, v32, v30);
                            v40 = v39;
                            goto LABEL_93;
                          }
                        }

                        v10 = sub_219BF7564();
                        v32 = v37;
                        v30 = v38;
                        if (v38)
                        {
                          goto LABEL_87;
                        }

                        goto LABEL_86;
                      }

                      if (sub_219BF7214() >= v32)
                      {
                        v33 = sub_219BF7214();
                        goto LABEL_73;
                      }

LABEL_116:
                      __break(1u);
                      goto LABEL_117;
                    }

LABEL_115:
                    __break(1u);
                    goto LABEL_116;
                  }

                  v9 = MEMORY[0x277D84F90];
LABEL_52:
                  swift_unknownObjectRelease();
                  goto LABEL_53;
                }

                goto LABEL_123;
              }

LABEL_122:
              __break(1u);
LABEL_123:
              swift_unknownObjectRelease();
              v23 = v68;
              v5 = v8;
              v8 = v69;
            }

LABEL_45:
            sub_218B66DE0(v19, v23, v9, v4);
            v9 = v26;
            goto LABEL_52;
          }
        }

        else
        {

          if (!v11)
          {
            goto LABEL_38;
          }
        }

        v19 = sub_219BF7564();
        v9 = v24;
        v4 = v25;
        if (v25)
        {
          goto LABEL_46;
        }

        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_113;
  }

  if (v4 < sub_219BF7214())
  {
    goto LABEL_11;
  }

LABEL_7:
  sub_218C93D70(*(v0 + 288) + *(*(v0 + 304) + 28), v0 + 168);
  if (*(v0 + 192))
  {
    sub_2186CB1F0((v0 + 168), v0 + 128);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_219C09BA0;
    if (v11)
    {
      v15 = sub_219BF7214();
    }

    else
    {
      v15 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v57 = *(v0 + 304);
    v58 = *(v0 + 288);
    *(v14 + 56) = MEMORY[0x277D83B88];
    *(v14 + 64) = MEMORY[0x277D83C10];
    *(v14 + 32) = v15;
    sub_219BF6214();
    sub_219BE5314("Search recipes will expand the stream for more result with %ld recipes in the cursor", v67);

    v59 = *(v0 + 152);
    v60 = *(v0 + 160);
    __swift_project_boxed_opaque_existential_1((v0 + 128), v59);
    v72 = *(v58 + *(v57 + 32));
    v73 = 0;
    *(v0 + 384) = (*(v60 + 24))(&v72, j__swift_bridgeObjectRetain, 0, v59, v60);
    v61 = swift_task_alloc();
    *(v0 + 392) = v61;
    *v61 = v0;
    v61[1] = sub_218DD4558;

    return MEMORY[0x2821D23D8](v0 + 208);
  }

  sub_218DD6E98(v0 + 168);
  if (v11)
  {
    if (sub_219BF7214())
    {
      goto LABEL_42;
    }
  }

  else if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_42:
    (*(*(v0 + 312) + 56))(*(v0 + 272), 1, 1, *(v0 + 304));

    v9 = v10;
LABEL_99:

    v55 = *(v0 + 8);

    return v55(v9);
  }

  v62 = sub_219BEEDD4();
  sub_218DD65E4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v62 - 8) + 104))(v63, *MEMORY[0x277D323A8], v62);
  swift_willThrow();

  v64 = *(v0 + 8);

  return v64();
}

uint64_t sub_218DD4558()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_218DD4F34;
  }

  else
  {

    v2 = sub_218DD4674;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_218DD4674()
{
  v1 = v0[26];
  if (!(v1 >> 62))
  {
    if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_15:

    v24 = sub_219BEEDD4();
    sub_218DD65E4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
    v3 = swift_allocError();
    (*(*(v24 - 8) + 104))(v25, *MEMORY[0x277D323A8], v24);
    swift_willThrow();
    goto LABEL_16;
  }

  if (!sub_219BF7214())
  {
    goto LABEL_15;
  }

LABEL_3:
  v2 = v0[50];
  sub_219BEF164();
  v3 = v2;
  if (!v2)
  {
    v4 = v0[47];
    v5 = v0[40];
    v43 = v0[38];
    v6 = v0[36];
    v7 = swift_task_alloc();
    *(v7 + 16) = v0 + 2;

    v8 = sub_2195EB2AC(sub_218DD6F20, v7, v1);

    sub_2191ED69C(v8);
    v0[33] = v4;
    sub_218DD6F40(0, &qword_280E8EB20, sub_218799788, MEMORY[0x277D83940]);
    sub_218A4EB28();
    v9 = sub_219BF56E4();

    sub_218DD6E30(v6, v5, type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
    v10 = *(v43 + 24);

    *(v5 + v10) = v9;
    if (v1 >> 62)
    {
      v11 = sub_219BF7214();

      if (v11 < 0)
      {
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v0[40];
    v13 = *(v0[38] + 32);
    v14 = *(v12 + v13);
    v10 = v14 + v11;
    if (!__CFADD__(v14, v11))
    {
      *(v12 + v13) = v10;
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_219C09EC0;
      if (!(v9 >> 62))
      {
        v15 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:

        v16 = MEMORY[0x277D83C10];
        *(v1 + 56) = MEMORY[0x277D83B88];
        *(v1 + 64) = v16;
        v17 = MEMORY[0x277D83E88];
        *(v1 + 32) = v15;
        v18 = MEMORY[0x277D83ED0];
        *(v1 + 96) = v17;
        *(v1 + 104) = v18;
        *(v1 + 72) = v10;
        sub_219BF6214();
        sub_219BE5314("Search recipes expanded the stream, next cursor has %ld recipes with %ld offset", v43, v4);

        v19 = swift_task_alloc();
        v0[51] = v19;
        *v19 = v0;
        v19[1] = sub_218DD4D58;
        v20 = v0[40];
        v21 = v0[34];
        v22 = v0[35];

        return sub_218DD39A0(v21, v22, v20);
      }

LABEL_30:
      v15 = sub_219BF7214();
      goto LABEL_11;
    }

LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

LABEL_16:
  v26 = v0[47];
  v27 = sub_219BF61F4();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_219C09EC0;
  v29 = v0[47];
  if (v26 >> 62)
  {
    v30 = sub_219BF7214();
    v29 = v0[47];
  }

  else
  {
    v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = v0[45];
  v32 = MEMORY[0x277D83C10];
  *(v28 + 56) = MEMORY[0x277D83B88];
  *(v28 + 64) = v32;
  *(v28 + 32) = v30;
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  v0[32] = v3;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v33 = v0[29];
  v34 = v0[30];
  *(v28 + 96) = MEMORY[0x277D837D0];
  *(v28 + 104) = sub_2186FC3BC();
  *(v28 + 72) = v33;
  *(v28 + 80) = v34;
  sub_219BE5314("Search recipes failed to expand the stream; will end with remaining %ld recipes, error=%{public}@", 97, 2, &dword_2186C1000, v31, v27, v28);

  if (v29 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_21;
    }
  }

  else if (*((v0[47] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_21:
    v35 = v0[38];
    v36 = v0[39];
    v37 = v0[34];

    (*(v36 + 56))(v37, 1, 1, v35);

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v38 = v0[47];

    v39 = v0[1];

    return v39(v38);
  }

  v40 = sub_219BEEDD4();
  sub_218DD65E4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v40 - 8) + 104))(v41, *MEMORY[0x277D323A8], v40);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v42 = v0[1];

  return v42();
}

uint64_t sub_218DD4D58(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 416) = v1;

  if (v1)
  {
    v5 = sub_218DD5250;
  }

  else
  {
    *(v4 + 424) = a1;
    v5 = sub_218DD4E80;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_218DD4E80()
{
  sub_218DD6D68(v0[40], type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
  sub_218B6F84C((v0 + 2));
  __swift_destroy_boxed_opaque_existential_1(v0 + 16);
  v1 = v0[53];

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_218DD4F34()
{

  v1 = v0[50];
  v2 = v0[47];
  v3 = sub_219BF61F4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = v0[47];
  if (v2 >> 62)
  {
    v6 = sub_219BF7214();
    v5 = v0[47];
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v0[45];
  v8 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  v0[32] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v9 = v0[29];
  v10 = v0[30];
  *(v4 + 96) = MEMORY[0x277D837D0];
  *(v4 + 104) = sub_2186FC3BC();
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_219BE5314("Search recipes failed to expand the stream; will end with remaining %ld recipes, error=%{public}@", 97, 2, &dword_2186C1000, v7, v3, v4);

  if (v5 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_6;
    }
  }

  else if (*((v0[47] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v11 = v0[38];
    v12 = v0[39];
    v13 = v0[34];

    (*(v12 + 56))(v13, 1, 1, v11);

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v14 = v0[47];

    v15 = v0[1];

    return v15(v14);
  }

  v17 = sub_219BEEDD4();
  sub_218DD65E4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D323A8], v17);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v19 = v0[1];

  return v19();
}

uint64_t sub_218DD5250()
{
  sub_218DD6D68(v0[40], type metadata accessor for RecipesSearchFeedGroupEmitterCursor);
  sub_218B6F84C((v0 + 2));
  v1 = v0[52];
  v2 = v0[47];
  v3 = sub_219BF61F4();
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = v0[47];
  if (v2 >> 62)
  {
    v6 = sub_219BF7214();
    v5 = v0[47];
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v0[45];
  v8 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v8;
  *(v4 + 32) = v6;
  v0[29] = 0;
  v0[30] = 0xE000000000000000;
  v0[32] = v1;
  sub_2186CFDE4(0, &qword_280E8B580, MEMORY[0x277D84948]);
  sub_219BF7484();
  v9 = v0[29];
  v10 = v0[30];
  *(v4 + 96) = MEMORY[0x277D837D0];
  *(v4 + 104) = sub_2186FC3BC();
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  sub_219BE5314("Search recipes failed to expand the stream; will end with remaining %ld recipes, error=%{public}@", 97, 2, &dword_2186C1000, v7, v3, v4);

  if (v5 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_6;
    }
  }

  else if (*((v0[47] & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_6:
    v11 = v0[38];
    v12 = v0[39];
    v13 = v0[34];

    (*(v12 + 56))(v13, 1, 1, v11);

    __swift_destroy_boxed_opaque_existential_1(v0 + 16);
    v14 = v0[47];

    v15 = v0[1];

    return v15(v14);
  }

  v17 = sub_219BEEDD4();
  sub_218DD65E4(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
  swift_allocError();
  (*(*(v17 - 8) + 104))(v18, *MEMORY[0x277D323A8], v17);
  swift_willThrow();

  __swift_destroy_boxed_opaque_existential_1(v0 + 16);

  v19 = v0[1];

  return v19();
}

BOOL sub_218DD558C(id *a1, uint64_t a2)
{
  v2 = *(a2 + 104);
  v3 = [*a1 identifier];
  v4 = sub_219BF5414();
  v6 = v5;

  LOBYTE(v2) = sub_2188537B8(v4, v6, v2);

  return (v2 & 1) == 0;
}

uint64_t sub_218DD5614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v82 = a4;
  v79 = a2;
  v80 = a5;
  v7 = sub_219BF2134();
  v93 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v97 = v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v96 = v72 - v10;
  v11 = MEMORY[0x277D83D88];
  sub_218DD6F40(0, &qword_280EE33F0, MEMORY[0x277D2D4E0], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = v72 - v13;
  sub_218DD6F40(0, &unk_280E8FE90, MEMORY[0x277D343A8], v11);
  MEMORY[0x28223BE20](v15 - 8);
  v92 = v72 - v16;
  sub_218DD6F40(0, &qword_280E91210, MEMORY[0x277D32A30], v11);
  MEMORY[0x28223BE20](v17 - 8);
  v91 = v72 - v18;
  sub_218DD6F40(0, &qword_280E907B0, MEMORY[0x277D33528], v11);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = v72 - v20;
  sub_218DD6F40(0, &qword_280EE9C40, MEMORY[0x277CC9578], v11);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = v72 - v23;
  sub_218DD6F40(0, &qword_280E90840, MEMORY[0x277D33470], v11);
  MEMORY[0x28223BE20](v25 - 8);
  v27 = v72 - v26;
  v98 = sub_219BF2DA4();
  v90 = *(v98 - 8);
  MEMORY[0x28223BE20](v98);
  v94 = v72 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v95 = v72 - v30;
  v31 = sub_219BF1904();
  v32 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  MEMORY[0x28223BE20](v33);
  v35 = v72 - v34;
  v78 = v36;
  if (a3 < 1)
  {
    sub_219BED874();
    v54 = sub_219BDBD34();
    (*(*(v54 - 8) + 56))(v24, 1, 1, v54);
    v55 = sub_219BF1AD4();
    (*(*(v55 - 8) + 56))(v21, 1, 1, v55);
    v56 = sub_219BEFC64();
    v57 = v91;
    (*(*(v56 - 8) + 56))(v91, 1, 1, v56);
    v58 = sub_219BF4334();
    v59 = v92;
    (*(*(v58 - 8) + 56))(v92, 1, 1, v58);
    v60 = sub_219BEC004();
    (*(*(v60 - 8) + 56))(v14, 1, 1, v60);
    v61 = v78;
    sub_219BF1854();
    sub_218DD6CF8(v14, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_218DD6CF8(v59, &unk_280E8FE90, MEMORY[0x277D343A8]);
    sub_218DD6CF8(v57, &qword_280E91210, MEMORY[0x277D32A30]);
    sub_218DD6CF8(v21, &qword_280E907B0, MEMORY[0x277D33528]);
    sub_218DD6CF8(v24, &qword_280EE9C40, MEMORY[0x277CC9578]);
    (*(v32 + 8))(v61, v31);
    (*(v32 + 56))(v27, 0, 1, v31);
LABEL_19:
    sub_219BED824();
    return sub_218DD6CF8(v27, &qword_280E90840, MEMORY[0x277D33470]);
  }

  v75 = v24;
  v76 = v21;
  v77 = v27;
  sub_219BED874();
  v37 = sub_219BF18F4();
  v38 = *(v32 + 8);
  v72[1] = v32 + 8;
  v72[0] = v38;
  v38(v35, v31);
  result = v37;
  v89 = *(v37 + 16);
  v74 = v31;
  v73 = v32;
  if (!v89)
  {
    v43 = v91;
    v44 = v92;
LABEL_18:

    v62 = v78;
    sub_219BED874();
    v63 = sub_219BDBD34();
    v64 = v75;
    (*(*(v63 - 8) + 56))(v75, 1, 1, v63);
    v65 = sub_219BF1AD4();
    v66 = v76;
    (*(*(v65 - 8) + 56))(v76, 1, 1, v65);
    v67 = sub_219BEFC64();
    (*(*(v67 - 8) + 56))(v43, 1, 1, v67);
    sub_219BF4E84();

    sub_219BF4E74();

    v68 = sub_219BF4334();
    (*(*(v68 - 8) + 56))(v44, 0, 1, v68);
    v69 = sub_219BEC004();
    (*(*(v69 - 8) + 56))(v14, 1, 1, v69);
    v70 = v43;
    v27 = v77;
    sub_219BF1854();

    sub_218DD6CF8(v14, &qword_280EE33F0, MEMORY[0x277D2D4E0]);
    sub_218DD6CF8(v44, &unk_280E8FE90, MEMORY[0x277D343A8]);
    sub_218DD6CF8(v70, &qword_280E91210, MEMORY[0x277D32A30]);
    sub_218DD6CF8(v66, &qword_280E907B0, MEMORY[0x277D33528]);
    sub_218DD6CF8(v64, &qword_280EE9C40, MEMORY[0x277CC9578]);
    v71 = v74;
    (v72[0])(v62, v74);
    (*(v73 + 56))(v27, 0, 1, v71);
    goto LABEL_19;
  }

  v40 = 0;
  v85 = v90 + 16;
  v84 = *MEMORY[0x277D33760];
  v83 = (v93 + 13);
  v41 = (v93 + 1);
  v81 = (v90 + 8);
  v93 = (v90 + 32);
  v42 = MEMORY[0x277D84F90];
  v87 = v14;
  v88 = a1;
  v86 = v37;
  while (v40 < *(result + 16))
  {
    v45 = (*(v90 + 80) + 32) & ~*(v90 + 80);
    v46 = *(v90 + 72);
    (*(v90 + 16))(v95, result + v45 + v46 * v40, v98);
    sub_219BF2D84();
    sub_219BF3074();

    (*v83)(v97, v84, v7);
    sub_218DD65E4(&qword_27CC12200, MEMORY[0x277D33768], MEMORY[0x277D33770]);
    sub_219BF5874();
    sub_219BF5874();
    if (v101 == v99 && v102 == v100)
    {
      v47 = *v41;
      (*v41)(v97, v7);
      v47(v96, v7);

LABEL_11:
      v50 = *v93;
      (*v93)(v94, v95, v98);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v103 = v42;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_218C359F0(0, *(v42 + 16) + 1, 1);
        v42 = v103;
      }

      v53 = *(v42 + 16);
      v52 = *(v42 + 24);
      if (v53 >= v52 >> 1)
      {
        sub_218C359F0((v52 > 1), v53 + 1, 1);
        v42 = v103;
      }

      *(v42 + 16) = v53 + 1;
      v50((v42 + v45 + v53 * v46), v94, v98);
      goto LABEL_5;
    }

    v48 = sub_219BF78F4();
    v49 = *v41;
    (*v41)(v97, v7);
    v49(v96, v7);

    if (v48)
    {
      goto LABEL_11;
    }

    (*v81)(v95, v98);
LABEL_5:
    v43 = v91;
    v44 = v92;
    ++v40;
    result = v86;
    v14 = v87;
    if (v89 == v40)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_218DD63EC()
{
  v1 = OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_config;
  sub_2186FEF84(0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_218DD6D68(v0 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_knobs, type metadata accessor for RecipesSearchFeedGroupKnobs);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_formatService));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for RecipesSearchFeedGroupEmitter(uint64_t a1)
{
  result = qword_27CC121C8;
  if (!qword_27CC121C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_218DD6510(uint64_t a1)
{
  sub_2186FEF84(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for RecipesSearchFeedGroupKnobs(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_218DD65E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_218DD662C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2187609C8;

  return sub_218DD1704(a1, a2);
}

uint64_t sub_218DD66F0@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_config;
  sub_2186FEF84(0);
  (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
  type metadata accessor for SearchFeedGroupConfig(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_218DD6784@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC7NewsUI229RecipesSearchFeedGroupEmitter_knobs;
  a1[3] = type metadata accessor for RecipesSearchFeedGroupKnobs(0);
  a1[4] = sub_218DD65E4(&qword_280EB7510, type metadata accessor for RecipesSearchFeedGroupKnobs, &unk_219C6DC54);
  a1[5] = sub_218DD65E4(&qword_27CC0ECB0, type metadata accessor for RecipesSearchFeedGroupKnobs, &unk_219C6DC2C);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  return sub_218DD6E30(v3 + v4, boxed_opaque_existential_1, type metadata accessor for RecipesSearchFeedGroupKnobs);
}

uint64_t sub_218DD68AC@<X0>(uint64_t *a2@<X8>)
{
  sub_218DD6F40(0, &qword_280E8B6A0, sub_2188317B0, MEMORY[0x277D84560]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09BA0;
  *(inited + 32) = 0x696669746E656469;
  *(inited + 40) = 0xEA00000000007265;
  sub_2186FEF84(0);
  v4 = sub_219BEDCA4();
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  sub_218831A70(inited);
  swift_setDeallocating();
  sub_218DD6D68(inited + 32, sub_2188317B0);
  sub_218DD6F40(0, &qword_27CC12208, type metadata accessor for RecipesSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
  a2[3] = v6;
  a2[4] = sub_218DD6FA4();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_219BE2334();
}

uint64_t sub_218DD6A2C(uint64_t a1)
{
  sub_218DD65E4(&qword_27CC121E8, type metadata accessor for RecipesSearchFeedGroupEmitter, &unk_219C398D0);

  return sub_219BE2324();
}

uint64_t sub_218DD6BB8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_2187608D4;

  return sub_218DD23F8(a1, v5, v4);
}

uint64_t sub_218DD6C64(uint64_t a1, uint64_t a2)
{
  sub_218DD6F40(0, &qword_27CC121F8, type metadata accessor for RecipesSearchFeedGroupEmitterCursor, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_218DD6CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_218DD6F40(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_218DD6D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_218DD6DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DD6E30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DD6E98(uint64_t a1)
{
  sub_2186E7BB0(0, &qword_280EC6990, &qword_280EC69A0, &protocol descriptor for StreamingRecipeResults, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_218DD6F40(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_218DD6FA4()
{
  result = qword_27CC12210;
  if (!qword_27CC12210)
  {
    sub_218DD6F40(255, &qword_27CC12208, type metadata accessor for RecipesSearchFeedGroupEmitter, MEMORY[0x277D6CC20]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12210);
  }

  return result;
}

void sub_218DD702C(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == 1)
  {
    __swift_project_boxed_opaque_existential_1((a2 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_paidBundleViaOfferHandler), *(a2 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_paidBundleViaOfferHandler + 24));
    sub_219BE45E4();
    sub_218DD7160(a3);
  }

  else
  {
    if (qword_280EE5FC0 != -1)
    {
      swift_once();
    }

    v4 = sub_219BE5434();
    __swift_project_value_buffer(v4, qword_280F62658);
    v5 = sub_219BE5414();
    v6 = sub_219BF6214();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2186C1000, v5, v6, "BundleViaOfferUpsellHandler: Cannot present BundleViaOffer upsell. Skipping.", v7, 2u);
      MEMORY[0x21CECF960](v7, -1, -1);
    }
  }
}

uint64_t sub_218DD7160(uint64_t a1)
{
  v2 = v1;
  if (qword_280EE5FC0 != -1)
  {
    swift_once();
  }

  v3 = sub_219BE5434();
  __swift_project_value_buffer(v3, qword_280F62658);
  v4 = sub_219BE5414();
  v5 = sub_219BF6214();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_2186C1000, v4, v5, "BundleViaOfferUpsellHandler: Attempting to present upsell...", v6, 2u);
    MEMORY[0x21CECF960](v6, -1, -1);
  }

  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_router), *(v2 + OBJC_IVAR____TtC7NewsUI227BundleViaOfferUpsellHandler_router + 24));
  sub_218DD73A8();
  return sub_219BE43B4();
}

unint64_t sub_218DD73A8()
{
  result = qword_27CC12238;
  if (!qword_27CC12238)
  {
    type metadata accessor for BundleViaOfferUpsellHandler();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12238);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7NewsUI232AudioFeedLayoutSectionDescriptorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_218DD7414(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 24))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218DD7468(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

void *sub_218DD74C8(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_218DD74F8()
{
  if (*v0 < 2)
  {
    return 0;
  }

  v2 = v0[1];
  v3 = sub_218DD7E20(*v0, type metadata accessor for AudioFeedLayoutSectionDescriptor.Header, type metadata accessor for AudioFeedLayoutSectionDescriptor.Header);
  v4 = sub_218DD7E20(v2, type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer, type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer);
  sub_2191ED57C(v4);
  return v3;
}

uint64_t sub_218DD75A4(uint64_t a1)
{
  v2 = sub_218DD858C();

  return MEMORY[0x2821D5BC0](a1, v2);
}

uint64_t sub_218DD75E0(uint64_t a1)
{
  v2 = sub_218DD7624();

  return MEMORY[0x2821D5688](a1, v2);
}

unint64_t sub_218DD7624()
{
  result = qword_280EA6DB0;
  if (!qword_280EA6DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA6DB0);
  }

  return result;
}

uint64_t sub_218DD7678()
{
  if (*v0 >= 2uLL)
  {
    return sub_218DD80C8(v0[2]);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_218DD76AC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v12);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_1, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_2186CB1F0(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_218DD7744(uint64_t a1)
{
  v2 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Decoration(0);
  v68 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer(0);
  v59 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Header(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_219BE9834();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *MEMORY[0x277D6E758];
  v61 = *(v13 + 104);
  v62 = v13 + 104;
  v61(v16, v17, v12, v14);
  v18 = sub_219BEE054();
  v20 = *(v13 + 8);
  v19 = v13 + 8;
  v63 = v16;
  v60 = v20;
  v20(v16, v12);
  v21 = *(v18 + 16);
  v22 = MEMORY[0x277D84F90];
  v64 = v4;
  v65 = a1;
  if (v21)
  {
    v56 = v19;
    v57 = v12;
    v58 = v7;
    v69 = MEMORY[0x277D84F90];
    sub_218C35AE0(0, v21, 0);
    v23 = v18;
    v24 = v69;
    v67 = sub_219BF00D4();
    v25 = *(v67 - 8);
    v66 = *(v25 + 16);
    v26 = v23 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v27 = *(v25 + 72);
    do
    {
      v66(v11, v26, v67);
      v69 = v24;
      v29 = *(v24 + 16);
      v28 = *(v24 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_218C35AE0((v28 > 1), v29 + 1, 1);
        v24 = v69;
      }

      *(v24 + 16) = v29 + 1;
      sub_218DD845C(v11, v24 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v29, type metadata accessor for AudioFeedLayoutSectionDescriptor.Header);
      v26 += v27;
      --v21;
    }

    while (v21);

    v4 = v64;
    a1 = v65;
    v12 = v57;
    v7 = v58;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {

    v24 = MEMORY[0x277D84F90];
  }

  v30 = v63;
  (v61)(v63, *MEMORY[0x277D6E750], v12);
  v31 = sub_219BEE054();
  v32 = v30;
  v33 = v31;
  v60(v32, v12);
  v34 = *(v33 + 16);
  if (v34)
  {
    v69 = v22;
    sub_218C35A90(0, v34, 0);
    v35 = v69;
    v67 = sub_219BF00D4();
    v36 = *(v67 - 8);
    v66 = *(v36 + 16);
    v37 = *(v36 + 80);
    v63 = v33;
    v38 = v33 + ((v37 + 32) & ~v37);
    v39 = *(v36 + 72);
    v40 = v59;
    do
    {
      v66(v7, v38, v67);
      v69 = v35;
      v41 = v7;
      v43 = *(v35 + 16);
      v42 = *(v35 + 24);
      if (v43 >= v42 >> 1)
      {
        sub_218C35A90((v42 > 1), v43 + 1, 1);
        v40 = v59;
        v35 = v69;
      }

      *(v35 + 16) = v43 + 1;
      sub_218DD845C(v41, v35 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v43, type metadata accessor for AudioFeedLayoutSectionDescriptor.Footer);
      v38 += v39;
      --v34;
      v7 = v41;
    }

    while (v34);

    v4 = v64;
    a1 = v65;
    v22 = MEMORY[0x277D84F90];
  }

  else
  {
  }

  v44 = sub_219BEE044();
  v45 = *(v44 + 16);
  if (v45)
  {
    v69 = v22;
    sub_218C35A40(0, v45, 0);
    v46 = v69;
    v67 = sub_219BEE914();
    v47 = *(v67 - 8);
    v66 = *(v47 + 16);
    v48 = *(v47 + 80);
    v63 = v44;
    v49 = v44 + ((v48 + 32) & ~v48);
    v50 = *(v47 + 72);
    do
    {
      v66(v4, v49, v67);
      v69 = v46;
      v52 = *(v46 + 16);
      v51 = *(v46 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_218C35A40((v51 > 1), v52 + 1, 1);
        v46 = v69;
      }

      *(v46 + 16) = v52 + 1;
      sub_218DD845C(v4, v46 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v52, type metadata accessor for AudioFeedLayoutSectionDescriptor.Decoration);
      v49 += v50;
      --v45;
    }

    while (v45);
    v53 = sub_219BEE074();
    (*(*(v53 - 8) + 8))(v65, v53);
  }

  else
  {

    v54 = sub_219BEE074();
    (*(*(v54 - 8) + 8))(a1, v54);
  }

  return v24;
}

uint64_t sub_218DD7E20(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v29 = a3;
  v4 = a2(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v28 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_219BF00D4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(a1 + 16);
  v15 = MEMORY[0x277D84F90];
  if (v14)
  {
    v33 = MEMORY[0x277D84F90];
    sub_218C34270(0, v14, 0);
    v15 = v33;
    v16 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v17 = *(v5 + 72);
    v26 = (v11 + 32);
    v27 = v17;
    v18 = (v11 + 16);
    v19 = (v11 + 8);
    do
    {
      v20 = v29;
      sub_218DD84C4(v16, v9, v29);
      v21 = v28;
      sub_218DD84C4(v9, v28, v20);
      (*v26)(v13, v21, v10);
      sub_218DD852C(v9, v20);
      v33 = v15;
      v23 = *(v15 + 16);
      v22 = *(v15 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_218C34270((v22 > 1), v23 + 1, 1);
      }

      v31 = v10;
      v32 = sub_21897FB18();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
      (*v18)(boxed_opaque_existential_1, v13, v10);
      v15 = v33;
      *(v33 + 16) = v23 + 1;
      sub_2186CB1F0(&v30, v15 + 40 * v23 + 32);
      (*v19)(v13, v10);
      v16 += v27;
      --v14;
    }

    while (v14);
  }

  return v15;
}

uint64_t sub_218DD80C8(uint64_t a1)
{
  v32 = sub_219BEE914();
  v2 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for AudioFeedLayoutSectionDescriptor.Decoration(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v31 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v36 = MEMORY[0x277D84F90];
    sub_218C35B30(0, v11, 0);
    v12 = v36;
    v13 = a1 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v14 = *(v6 + 72);
    v29 = (v2 + 32);
    v30 = v14;
    v15 = (v2 + 8);
    do
    {
      sub_218DD84C4(v13, v10, type metadata accessor for AudioFeedLayoutSectionDescriptor.Decoration);
      v16 = v31;
      sub_218DD84C4(v10, v31, type metadata accessor for AudioFeedLayoutSectionDescriptor.Decoration);
      v17 = v16;
      v18 = v32;
      (*v29)(v4, v17, v32);
      sub_219BEE8F4();
      (*v15)(v4, v18);
      sub_218DD852C(v10, type metadata accessor for AudioFeedLayoutSectionDescriptor.Decoration);
      v36 = v12;
      v20 = *(v12 + 16);
      v19 = *(v12 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_218C35B30((v19 > 1), v20 + 1, 1);
      }

      v21 = v34;
      v22 = v35;
      v23 = __swift_mutable_project_boxed_opaque_existential_1(v33, v34);
      v24 = MEMORY[0x28223BE20](v23);
      v26 = &v29 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v27 + 16))(v26, v24);
      sub_218DD76AC(v20, v26, &v36, v21, v22);
      __swift_destroy_boxed_opaque_existential_1(v33);
      v12 = v36;
      v13 += v30;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t sub_218DD845C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DD84C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_218DD852C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_218DD858C()
{
  result = qword_27CC12240;
  if (!qword_27CC12240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12240);
  }

  return result;
}

uint64_t sub_218DD85F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t sub_218DD8680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, a2, a3, v8);
}

uint64_t sub_218DD8718(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    v7 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v7 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_218DD87DC(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_219497B60(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_218DD88E0(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_219497B60(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_218DD8A2C(uint64_t a1, void (*a2)(char *, void))
{
  v4 = 0;
  v5 = a1 + 56;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 56);
  v9 = (v6 + 63) >> 6;
  if (v8)
  {
    while (1)
    {
      v10 = v4;
LABEL_9:
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      a2(&v12, *(*(a1 + 48) + (v11 | (v10 << 6))));
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
      return;
    }

    if (v10 >= v9)
    {
      break;
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      v4 = v10;
      goto LABEL_9;
    }
  }
}

void sub_218DD8B18(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_218C811FC(v2);
  }

  v3 = *(v2 + 2);
  v4[0] = (v2 + 32);
  v4[1] = v3;
  sub_218DDB1D0(v4);
  *a1 = v2;
}

id sub_218DD8B84()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v1 = sub_219BF53D4();
  [v0 setName_];

  result = [v0 setMaxConcurrentOperationCount_];
  qword_280EC4770 = v0;
  return result;
}

uint64_t sub_218DD8C10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_218DDC100(a1);
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v4 = qword_280F617C8;
  sub_2186E7EF0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09EC0;
  sub_218DDC19C();
  v6 = sub_219BF5D54();
  v8 = v7;
  v9 = MEMORY[0x277D837D0];
  *(v5 + 56) = MEMORY[0x277D837D0];
  v10 = sub_2186FC3BC();
  *(v5 + 64) = v10;
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  type metadata accessor for MagazineFeedServiceContext(0);
  sub_219BF7484();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  *(v5 + 72) = 0;
  *(v5 + 80) = 0xE000000000000000;
  v11 = sub_219BF6214();
  sub_219BE5314("Feed pool fetching requirements=%{public}@, context=%{public}@", 62, 2, &dword_2186C1000, v4, v11, v5);

  v12 = sub_2194B37A8(&unk_282A245F8);
  LOBYTE(v5) = sub_218C33668(v12, v3);

  if (v5)
  {

    sub_218DDC1FC();
    swift_allocError();
    *v14 = 7;
    sub_21870F3D4(0, &unk_280EE6DB0, &type metadata for MagazineFeedPoolContent, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v15 = sub_219BE2FF4();
  }

  else
  {
    MEMORY[0x28223BE20](v13);
    sub_21870F3D4(0, &unk_280EE6DB0, &type metadata for MagazineFeedPoolContent, MEMORY[0x277D6CF30]);
    swift_allocObject();
    v15 = sub_219BE30B4();
  }

  type metadata accessor for MagazineFeedPool();
  result = swift_allocObject();
  *(result + 16) = v15;
  return result;
}

void sub_218DD8EF8(uint64_t a1, id a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  v15 = 0;
  v16 = 0;
  v17 = 1 << *(a5 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a5 + 56);
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  v20 = (v17 + 63) >> 6;
  while (v19)
  {
LABEL_4:
    v21 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v22 = *(*(a5 + 48) + (v21 | (v16 << 6)));
    if (v22)
    {
      if (v22 == 1)
      {
        v15 |= 4uLL;
      }

      else if (v22 == 2)
      {
        v15 |= 1uLL;
      }

      else
      {
        v15 |= 2uLL;
      }
    }
  }

  while (1)
  {
    v23 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_21:
      swift_once();
      goto LABEL_19;
    }

    if (v23 >= v20)
    {
      break;
    }

    v19 = *(a5 + 56 + 8 * v23);
    ++v16;
    if (v19)
    {
      v16 = v23;
      goto LABEL_4;
    }
  }

  v37 = v15;
  v38 = v14;
  v24 = a3;

  v25 = *(a6 + 16);
  v26 = OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_baseContentConfig;
  sub_218DDC29C((a7 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_baseContentConfig), sub_21915379C);
  sub_218DDC29C((a7 + v26), sub_219152B54);
  sub_218DDC41C((a7 + v26));
  v28 = v27;
  v29 = sub_219BF5904();

  v30 = sub_219BF5904();

  if (v28)
  {
    v31 = sub_219BF53D4();
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_allocWithZone(MEMORY[0x277D30F30]) initWithContext:v25 configIssueIDs:v29 configArticleIDs:v30 trendingArticleListID:v31];

  [v32 setQualityOfService_];
  a2 = v32;
  [a2 setRelativePriority_];
  [a2 setPurpose_];

  v33 = sub_219BEEA74();
  [a2 setCachedPolicy_];

  [a2 setContentOptions_];
  v34 = swift_allocObject();
  swift_weakInit();
  v35 = swift_allocObject();
  v35[2] = v34;
  v35[3] = v24;
  v35[4] = a4;
  v35[5] = a7;
  v35[6] = a5;
  v35[7] = sub_218DDC250;
  v35[8] = v38;
  aBlock[4] = sub_218DDC6E4;
  aBlock[5] = v35;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_218DDA52C;
  aBlock[3] = &block_descriptor_58;
  v36 = _Block_copy(aBlock);

  [a2 setFetchCompletionHandler_];
  _Block_release(v36);
  if (qword_280EC4768 != -1)
  {
    goto LABEL_21;
  }

LABEL_19:
  [qword_280EC4770 addOperation_];
}

void sub_218DD9310(void *a1, unint64_t a2, uint64_t a3, char *a4, uint64_t a5, uint64_t a6, void (*a7)(void), uint64_t a8, void (*a9)(void, __n128), char *a10, void (*a11)(char **), uint64_t a12)
{
  v17 = sub_219BE1BF4();
  MEMORY[0x28223BE20](v17);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    sub_218DDC1FC();
    v32 = swift_allocError();
    *v33 = 0;
    a7();

    return;
  }

  v19 = Strong;
  if (!a1)
  {
    sub_218DDC1FC();
    v35 = swift_allocError();
    v36 = 3;
LABEL_24:
    *v34 = v36;
    a7();

    goto LABEL_25;
  }

  if (!a2)
  {
    sub_218DDC1FC();
    v35 = swift_allocError();
    v36 = 2;
    goto LABEL_24;
  }

  if (!a3)
  {
    sub_218DDC1FC();
    v35 = swift_allocError();
    v36 = 5;
    goto LABEL_24;
  }

  if (!a4)
  {
    sub_218DDC1FC();
    v35 = swift_allocError();
    v36 = 6;
    goto LABEL_24;
  }

  sub_218DDC71C(0, &qword_280E8EC00, &qword_280E8E260, &protocolRef_FCHeadlineProviding, sub_2186D6710);
  sub_218A4EC18();
  v44 = a4;

  v43 = sub_219BF56E4();
  v42 = sub_218DD99E0(a9 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_baseContentConfig, a1);
  v20 = swift_allocObject();
  v20[2] = v19;
  v20[3] = a10;
  v20[4] = a9;
  v47[0] = MEMORY[0x277D84F90];
  sub_2186EC710(&qword_280EE7E70, MEMORY[0x277D6CA70], MEMORY[0x277D6CA78]);
  sub_2186E7EF0(0, &qword_280E8F610, MEMORY[0x277D6CA70], MEMORY[0x277D83940]);
  sub_218711654();

  sub_219BF7164();
  sub_2186E7EF0(0, &qword_280EE7180, sub_218DDC784, MEMORY[0x277D6CEE8]);
  swift_allocObject();
  v45 = sub_219BE2D14();
  if (a2 >> 62)
  {
    v21 = sub_219BF7214();
  }

  else
  {
    v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  if (!v21)
  {
LABEL_22:
    v46 = sub_218845F78(v22);

    v47[0] = v42;

    sub_218DD8B18(v47);

    v37 = v47[0];
    v47[0] = v43;

    v38 = sub_219BF56E4();

    v47[0] = v38;
    v39 = sub_219BF57C4();

    v47[0] = v37;
    sub_21870F3D4(0, &qword_280E8F200, &type metadata for MagazineFeedPoolIssue, MEMORY[0x277D83940]);
    sub_218DDC800();
    v40 = sub_219BF56E4();

    v47[0] = v40;
    sub_218D4B35C();
    v41 = sub_219BF56C4();

    v47[0] = v44;
    v47[1] = MEMORY[0x277D84FA0];
    v47[2] = MEMORY[0x277D84FA0];
    v47[3] = v46;
    v47[4] = v43;
    v47[5] = v45;
    v47[6] = 0;
    v47[7] = v39;
    v47[8] = v37;
    v47[9] = v41;
    a11(v47);
    sub_218DDC87C(v47);
LABEL_25:

    return;
  }

  v47[0] = MEMORY[0x277D84F90];
  sub_21870B65C(0, v21 & ~(v21 >> 63), 0);
  if ((v21 & 0x8000000000000000) == 0)
  {
    v23 = 0;
    v22 = v47[0];
    do
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x21CECE0F0](v23, a2);
      }

      else
      {
        v24 = *(a2 + 8 * v23 + 32);
        swift_unknownObjectRetain();
      }

      v25 = [v24 identifier];
      v26 = sub_219BF5414();
      v28 = v27;
      swift_unknownObjectRelease();

      v47[0] = v22;
      v30 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v30 >= v29 >> 1)
      {
        sub_21870B65C((v29 > 1), v30 + 1, 1);
        v22 = v47[0];
      }

      ++v23;
      *(v22 + 2) = v30 + 1;
      v31 = &v22[16 * v30];
      *(v31 + 4) = v26;
      *(v31 + 5) = v28;
    }

    while (v21 != v23);
    goto LABEL_22;
  }

  __break(1u);

  __break(1u);
}

void *sub_218DD99E0(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = sub_219BEDF04();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v108 = &v104 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BEF564();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v104 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = a2;

  sub_2191EE91C(v12);
  sub_218DDC71C(0, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, sub_2186C6148);
  sub_218DDCE9C();
  v13 = sub_219BF56E4();

  v14 = *(v3 + 48);
  v105 = v3;
  __swift_project_boxed_opaque_existential_1((v3 + 24), v14);
  (*(v9 + 104))(v11, *MEMORY[0x277D32660], v8);
  v113 = v13;
  v15 = sub_219BF0014();
  (*(v9 + 8))(v11, v8);
  v16 = v15;
  v112 = *(v15 + 16);
  if (v112)
  {
    v17 = 0;
    v111 = v15 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v109 = (v6 + 8);
    v110 = v6 + 16;
    v18 = MEMORY[0x277D84F98];
    v19 = v108;
    v106 = v15;
    v107 = v6;
    while (1)
    {
      if (v17 >= *(v16 + 16))
      {
        __break(1u);
LABEL_88:
        __break(1u);
LABEL_89:
        __break(1u);
LABEL_90:
        __break(1u);
LABEL_91:
        __break(1u);
LABEL_92:
        __break(1u);
LABEL_93:
        v42 = sub_219BF7214();
        goto LABEL_25;
      }

      (*(v6 + 16))(v19, v111 + *(v6 + 72) * v17, v5);
      v22 = sub_219BEDEC4();
      if (v18[2])
      {
        v15 = v23;
        sub_21870F700(v22, v23);
        v25 = v24;

        if (v25)
        {
          (*v109)(v19, v5);
          goto LABEL_5;
        }
      }

      else
      {
      }

      v26 = v5;
      v27 = sub_219BEDEC4();
      v11 = v28;
      v29 = sub_219BEDED4();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v114 = v18;
      v15 = sub_21870F700(v27, v11);
      v32 = v18[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_90;
      }

      v35 = v31;
      if (v18[3] >= v34)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v19 = v108;
          if ((v31 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_219490304();
          v19 = v108;
          if ((v35 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_21947DE54(v34, isUniquelyReferenced_nonNull_native);
        v36 = sub_21870F700(v27, v11);
        if ((v35 & 1) != (v37 & 1))
        {
          goto LABEL_96;
        }

        v15 = v36;
        v19 = v108;
        if ((v35 & 1) == 0)
        {
LABEL_18:
          v18 = v114;
          v114[(v15 >> 6) + 8] |= 1 << v15;
          v38 = (v18[6] + 16 * v15);
          *v38 = v27;
          v38[1] = v11;
          *(v18[7] + 8 * v15) = v29;
          v5 = v26;
          (*v109)(v19, v26);
          v39 = v18[2];
          v40 = __OFADD__(v39, 1);
          v41 = v39 + 1;
          if (v40)
          {
            goto LABEL_91;
          }

          v18[2] = v41;
          goto LABEL_4;
        }
      }

      v18 = v114;
      v20 = v114[7];
      v21 = *(v20 + 8 * v15);
      *(v20 + 8 * v15) = v29;

      v5 = v26;
      (*v109)(v19, v26);
LABEL_4:
      v16 = v106;
      v6 = v107;
LABEL_5:
      if (v112 == ++v17)
      {
        goto LABEL_23;
      }
    }
  }

  v18 = MEMORY[0x277D84F98];
LABEL_23:

  v15 = v113;
  v109 = (v113 >> 62);
  v11 = (v113 & 0xFFFFFFFFFFFFFF8);
  if (v113 >> 62)
  {
    goto LABEL_93;
  }

  v42 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_25:
  v112 = v15 & 0xC000000000000001;
  if (!v42)
  {
    v44 = MEMORY[0x277D84F98];
    if (v109)
    {
      goto LABEL_84;
    }

LABEL_63:
    v77 = *(v11 + 2);
    v78 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
    if (v77)
    {
      goto LABEL_64;
    }

LABEL_85:

    return MEMORY[0x277D84F90];
  }

  v43 = 0;
  v44 = MEMORY[0x277D84F98];
  do
  {
    v45 = v43;
    while (1)
    {
      if (v112)
      {
        v46 = MEMORY[0x21CECE0F0](v45, v15);
      }

      else
      {
        if (v45 >= *(v11 + 2))
        {
          goto LABEL_89;
        }

        v46 = *(v15 + 8 * v45 + 32);
      }

      v47 = v46;
      v43 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        goto LABEL_88;
      }

      v48 = [v46 identifier];
      v49 = sub_219BF5414();
      v51 = v50;

      if (!v44[2])
      {
        break;
      }

      sub_21870F700(v49, v51);
      v53 = v52;

      if ((v53 & 1) == 0)
      {
        goto LABEL_38;
      }

      ++v45;
      v15 = v113;
      if (v43 == v42)
      {
        goto LABEL_62;
      }
    }

LABEL_38:
    v54 = [v47 identifier];
    v110 = sub_219BF5414();
    v111 = v55;

    v56 = *(*__swift_project_boxed_opaque_existential_1((v105 + 64), *(v105 + 88)) + OBJC_IVAR____TtC7NewsUI214HistoryService_issueReadingHistory);
    v57 = [v47 identifier];
    if (!v57)
    {
      sub_219BF5414();
      v57 = sub_219BF53D4();
    }

    v58 = [v56 hasIssueWithIDBeenSeen_];

    if (v58)
    {
      v59 = 4;
    }

    else
    {
      v59 = 0;
    }

    v60 = [v47 identifier];
    if (!v60)
    {
      sub_219BF5414();
      v60 = sub_219BF53D4();
    }

    v61 = [v56 hasIssueWithIDBeenVisited_];

    if (v61)
    {
      v59 = 14;
    }

    v15 = [v47 identifier];
    if (!v15)
    {
      sub_219BF5414();
      v15 = sub_219BF53D4();
    }

    v62 = [v56 hasIssueWithIDBeenEngaged_];

    if (v62)
    {
      v59 = 30;
    }

    v63 = swift_isUniquelyReferenced_nonNull_native();
    v114 = v44;
    v64 = sub_21870F700(v110, v111);
    v66 = v44[2];
    v67 = (v65 & 1) == 0;
    v40 = __OFADD__(v66, v67);
    v68 = v66 + v67;
    if (v40)
    {
      goto LABEL_92;
    }

    v69 = v65;
    if (v44[3] < v68)
    {
      sub_219482624(v68, v63);
      v64 = sub_21870F700(v110, v111);
      if ((v69 & 1) != (v70 & 1))
      {
        goto LABEL_96;
      }

LABEL_56:
      if (v69)
      {
        goto LABEL_57;
      }

      goto LABEL_59;
    }

    if (v63)
    {
      goto LABEL_56;
    }

    v72 = v64;
    sub_219492FE0();
    v64 = v72;
    if (v69)
    {
LABEL_57:
      v71 = v64;

      v44 = v114;
      *(v114[7] + 8 * v71) = v59;

      goto LABEL_61;
    }

LABEL_59:
    v44 = v114;
    v114[(v64 >> 6) + 8] |= 1 << v64;
    v73 = (v44[6] + 16 * v64);
    v74 = v111;
    *v73 = v110;
    v73[1] = v74;
    *(v44[7] + 8 * v64) = v59;

    v75 = v44[2];
    v40 = __OFADD__(v75, 1);
    v76 = v75 + 1;
    if (v40)
    {
      goto LABEL_95;
    }

    v44[2] = v76;
LABEL_61:
    v15 = v113;
  }

  while (v43 != v42);
LABEL_62:
  if (!v109)
  {
    goto LABEL_63;
  }

LABEL_84:
  v77 = sub_219BF7214();
  v78 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
  if (!v77)
  {
    goto LABEL_85;
  }

LABEL_64:
  v114 = MEMORY[0x277D84F90];
  sub_218C355F0(0, v77 & ~(v77 >> 63), 0);
  if ((v77 & 0x8000000000000000) == 0)
  {
    v79 = 0;
    v80 = v114;
    v111 = v77;
    while (1)
    {
      if (v112)
      {
        v81 = MEMORY[0x21CECE0F0](v79, v113);
      }

      else
      {
        v81 = *(v113 + 8 * v79 + 32);
      }

      v82 = v81;
      v83 = [v81 v78[278]];
      v84 = sub_219BF5414();
      v86 = v85;

      if (v18[2])
      {
        v87 = sub_21870F700(v84, v86);
        v89 = v88;

        if (v89)
        {
          v90 = *(v18[7] + 8 * v87);
          goto LABEL_74;
        }
      }

      else
      {
      }

      v90 = [objc_allocWithZone(MEMORY[0x277D30FD0]) init];
LABEL_74:
      v91 = v90;
      v92 = [v82 v78[278]];
      v93 = sub_219BF5414();
      v95 = v94;

      if (!v44[2])
      {

LABEL_78:
        v99 = 0;
        goto LABEL_79;
      }

      v96 = sub_21870F700(v93, v95);
      v98 = v97;

      if ((v98 & 1) == 0)
      {
        goto LABEL_78;
      }

      v99 = *(v44[7] + 8 * v96);
LABEL_79:
      v114 = v80;
      v101 = v80[2];
      v100 = v80[3];
      if (v101 >= v100 >> 1)
      {
        sub_218C355F0((v100 > 1), v101 + 1, 1);
        v80 = v114;
      }

      ++v79;
      v80[2] = v101 + 1;
      v102 = &v80[3 * v101];
      v102[4] = v82;
      v102[5] = v91;
      v102[6] = v99;
      v78 = &_OBJC_LABEL_PROTOCOL___FCAudioPlaylistType;
      if (v111 == v79)
      {

        return v80;
      }
    }
  }

  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  result = sub_219BF79A4();
  __break(1u);
  return result;
}

uint64_t sub_218DDA448@<X0>(uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_2194B37A8(&unk_282A24620);
  LOBYTE(a2) = sub_218C33668(v6, a2);

  if (a2)
  {
    sub_218DDC1FC();
    swift_allocError();
    *v7 = 7;
    sub_218DDC784(0);
    swift_allocObject();
    result = sub_219BE2FF4();
  }

  else
  {
    sub_218DDC784(0);
    swift_allocObject();
    result = sub_219BE30B4();
  }

  *a3 = result;
  return result;
}

double sub_218DDA52C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = a2;
  v11 = *(a1 + 32);
  if (a2)
  {
    sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
    v10 = sub_219BF5924();
  }

  if (a3)
  {
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    a3 = sub_219BF5924();
  }

  if (a4)
  {
    sub_2186C6148(0, &qword_280E8DAB0, 0x277D310B0);
    a4 = sub_219BF5924();
  }

  if (a5)
  {
    sub_2186D6710(0, &qword_280E8E260, &protocolRef_FCHeadlineProviding);
    a5 = sub_219BF5924();
  }

  v12 = a6;
  v11(v10, a3, a4, a5, a6);

  return result;
}

double sub_218DDA68C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = swift_allocObject();
  v11[2] = a5;
  v11[3] = sub_218846958;
  v11[4] = v10;
  v12 = a5[18];
  swift_retain_n();

  v13 = [objc_msgSend(v12 globalInventory)];
  swift_unknownObjectRelease();
  sub_2186C6148(0, &qword_280E8E800, 0x277D35488);
  v14 = sub_219BF5924();

  if (v14 >> 62)
  {
    if (sub_219BF7214())
    {
      goto LABEL_3;
    }
  }

  else if (*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    if (qword_280E8D920 != -1)
    {
      swift_once();
    }

    v15 = qword_280F617C8;
    v16 = sub_219BF6214();
    sub_219BE5314("Feed pool will use ESL Inventory for unreserved articles", 56, 2, &dword_2186C1000, v15, v16, MEMORY[0x277D84F90]);

    sub_218DDC8E4(v14, a5, a1, a2);

    return result;
  }

  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  v18 = qword_280F617C8;
  v19 = sub_219BF6214();
  sub_219BE5314("Feed pool will use Featured for unreserved articles", 51, 2, &dword_2186C1000, v18, v19, MEMORY[0x277D84F90]);
  v20 = [objc_allocWithZone(MEMORY[0x277D30FA0]) initWithContext_];
  v21 = swift_allocObject();
  v21[2] = sub_218DDC8D8;
  v21[3] = v11;
  v21[4] = a3;
  v21[5] = a4;
  v23[4] = sub_218DDCE90;
  v23[5] = v21;
  v23[0] = MEMORY[0x277D85DD0];
  v23[1] = 1107296256;
  v23[2] = sub_218DDB08C;
  v23[3] = &block_descriptor_23_0;
  v22 = _Block_copy(v23);

  [v20 setFetchCompletionHandler_];
  _Block_release(v22);
  if (qword_280EC4768 != -1)
  {
    swift_once();
  }

  [qword_280EC4770 addOperation_];

  return result;
}

void sub_218DDAA4C(unint64_t a1, void *a2, void (*a3)(void, __n128))
{
  v5 = a2[2];
  v6 = [objc_msgSend(v5 configurationManager)];
  swift_unknownObjectRelease();
  if (!v6)
  {
LABEL_46:
    __break(1u);
    return;
  }

  v7 = [objc_opt_self() transformationWithFilterOptions:0x14022012CLL configuration:v6 context:v5];
  swift_unknownObjectRelease();
  v8 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  sub_219BF7924();
  sub_2186D6710(0, qword_280E8DE80, &protocolRef_FCFeedTransformationItem);
  while (1)
  {
    sub_2186D6710(0, qword_280E8DE80, &protocolRef_FCFeedTransformationItem);
    v9 = sub_219BF5904();

    v10 = [v7 transformFeedItems_];

    v11 = sub_219BF5924();
    v12 = sub_218B0C6F8(v11);

    v13 = MEMORY[0x277D84F90];
    v14 = v12 ? v12 : MEMORY[0x277D84F90];
    if (v14 >> 62)
    {
      break;
    }

    v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v15)
    {
      goto LABEL_35;
    }

LABEL_9:
    sub_218C355D0(0, v15 & ~(v15 >> 63), 0);
    if (v15 < 0)
    {
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v42 = v8;
    v43 = v7;
    v44 = a1;
    v16 = 0;
    v47 = v15;
    v48 = v14 & 0xC000000000000001;
    v17 = v13;
    v45 = a3;
    v46 = v14 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v7 = (v16 + 1);
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v50 = v17;
      if (v48)
      {
        v18 = MEMORY[0x21CECE0F0](v16, v14);
      }

      else
      {
        if (v16 >= *(v46 + 16))
        {
          goto LABEL_32;
        }

        v18 = *(v14 + 8 * v16 + 32);
      }

      v19 = v18;
      v20 = v14;
      v21 = *__swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
      v22 = [v19 articleID];
      if (!v22)
      {
        goto LABEL_45;
      }

      v23 = v22;
      sub_219BF5414();

      v24 = *(v21 + OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory);
      v25 = sub_219BF53D4();
      v26 = [v24 hasArticleBeenRead_];

      if (v26)
      {
        a1 = 2;
      }

      else
      {
        a1 = 0;
      }

      v27 = sub_219BF53D4();
      v28 = [v24 hasArticleBeenSeen_];

      if (v28)
      {
        a1 |= 4uLL;
      }

      v29 = sub_219BF53D4();
      v8 = [v24 hasArticleBeenVisited_];

      if (v8)
      {
        a1 |= 8uLL;
      }

      v30 = sub_219BF53D4();
      v31 = [v24 hasArticleBeenConsumed_];

      if (v31)
      {
        a3 = (a1 | 0x10);
      }

      else
      {
        a3 = a1;
      }

      v17 = v50;
      v33 = *(v50 + 16);
      v32 = *(v50 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_218C355D0((v32 > 1), v33 + 1, 1);
        v17 = v50;
      }

      *(v17 + 16) = v33 + 1;
      v34 = v17 + 16 * v33;
      *(v34 + 32) = v19;
      *(v34 + 40) = a3;
      ++v16;
      v14 = v20;
      if (v7 == v47)
      {
        v35 = v17;

        a3 = v45;
        v7 = v43;
        a1 = v44;
        v8 = v42;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_2186D6710(0, qword_280E8DE80, &protocolRef_FCFeedTransformationItem);

    sub_219BF7534();
  }

  v15 = sub_219BF7214();
  if (v15)
  {
    goto LABEL_9;
  }

LABEL_35:

  v35 = MEMORY[0x277D84F90];
LABEL_36:
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186E7EF0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_219C09EC0;
  if (v8)
  {
    v37 = sub_219BF7214();
  }

  else
  {
    v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v38 = MEMORY[0x277D83B88];
  v39 = MEMORY[0x277D83C10];
  *(v36 + 56) = MEMORY[0x277D83B88];
  *(v36 + 64) = v39;
  *(v36 + 32) = v37;
  v40 = *(v35 + 16);
  *(v36 + 96) = v38;
  *(v36 + 104) = v39;
  *(v36 + 72) = v40;
  sub_219BF6214();
  sub_219BE5314("Feed pool filtered from %lu to %lu unreserved articles", v41, v42);

  (a3)(v35);
}

void sub_218DDAFE4(uint64_t a1, id a2, void (*a3)(uint64_t, id, __n128), __n128 a4, uint64_t a5, void (*a6)(uint64_t))
{
  if (a1)
  {
    a3(a1, a2, a4);
  }

  else
  {
    if (a2)
    {
      v7 = a2;
      v8 = a2;
      v9 = v7;
    }

    else
    {
      sub_218DDC1FC();
      v9 = swift_allocError();
      v7 = v9;
      *v10 = 4;
    }

    a6(v9);
  }
}

double sub_218DDB08C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {
    sub_2186C6148(0, &qword_280E8E800, 0x277D35488);
    v4 = sub_219BF5924();
  }

  v6 = a3;
  v5(v4, a3);

  return result;
}

uint64_t sub_218DDB130()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_218DDB188@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  result = sub_218DD8C10(*a1, a2, a3);
  *a4 = result;
  return result;
}

void sub_218DDB1D0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_219BF7884();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        v5 = sub_219BF5A34();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_218DDB404(v7, v8, a1, v4);
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
    sub_218DDB2C8(0, v2, 1, a1);
  }
}

void sub_218DDB2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 24 * a3 - 24;
    v7 = a1 - a3;
LABEL_5:
    v8 = v5 + 24 * v4;
    v9 = *v8;
    v10 = *(v8 + 8);
    v25 = v7;
    v26 = v6;
    while (1)
    {
      v11 = *v6;
      v12 = *(v6 + 8);
      v13 = v9;
      v14 = v10;
      v15 = v11;
      v16 = v12;
      [v14 agedPersonalizationScore];
      v18 = v17;
      [v16 agedPersonalizationScore];
      v20 = v19;

      if (v20 >= v18)
      {
LABEL_4:
        ++v4;
        v6 = v26 + 24;
        v7 = v25 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v10 = *(v6 + 32);
      v21 = *(v6 + 40);
      v22 = *(v6 + 16);
      v9 = *(v6 + 24);
      *(v6 + 24) = *v6;
      *(v6 + 40) = v22;
      *v6 = v9;
      *(v6 + 8) = v10;
      *(v6 + 16) = v21;
      v6 -= 24;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_218DDB404(uint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_90:
    v5 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v10 = sub_218C81048(v10);
    }

    v112 = *(v10 + 16);
    if (v112 >= 2)
    {
      while (*v5)
      {
        v113 = v10;
        v10 = v112 - 1;
        v114 = *&v113[16 * v112];
        v115 = *&v113[16 * v112 + 24];
        sub_218DDBB38((*v5 + 24 * v114), (*v5 + 24 * *&v113[16 * v112 + 16]), *v5 + 24 * v115, v7);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v115 < v114)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v113 = sub_218C81048(v113);
        }

        if (v112 - 2 >= *(v113 + 2))
        {
          goto LABEL_116;
        }

        v116 = &v113[16 * v112];
        *v116 = v114;
        *(v116 + 1) = v115;
        sub_218C80FBC(v10);
        v10 = v113;
        v112 = *(v113 + 2);
        if (v112 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v124 = v9;
    if (v9 + 1 >= v8)
    {
      v24 = v9 + 1;
    }

    else
    {
      v129 = v8;
      v119 = v10;
      v121 = v6;
      v11 = *v7 + 24 * (v9 + 1);
      v12 = *(v11 + 8);
      v10 = 24 * v9;
      v13 = *v7 + 24 * v9;
      v14 = *v13;
      v15 = *(v13 + 8);
      v127 = *v11;
      v5 = v12;
      v16 = v14;
      v17 = v15;
      [v5 agedPersonalizationScore];
      v19 = v18;
      [v17 agedPersonalizationScore];
      v21 = v20;

      v22 = v9 + 2;
      v23 = v13 + 32;
      while (1)
      {
        v24 = v129;
        if (v129 == v22)
        {
          break;
        }

        v25 = v23 + 24;
        v26 = *(v23 + 24);
        v27 = *(v23 - 8);
        v28 = *v23;
        v29 = *(v23 + 16);
        v5 = v26;
        v30 = v27;
        v31 = v28;
        [v5 agedPersonalizationScore];
        v33 = v32;
        [v31 agedPersonalizationScore];
        v35 = v34;

        ++v22;
        v23 = v25;
        if (v21 < v19 == v35 >= v33)
        {
          v24 = v22 - 1;
          break;
        }
      }

      v6 = v121;
      v7 = a3;
      v9 = v124;
      if (v21 < v19)
      {
        if (v24 < v124)
        {
          goto LABEL_119;
        }

        if (v124 < v24)
        {
          v36 = 0;
          v37 = 24 * v24;
          v38 = v124;
          do
          {
            if (v38 != v24 + v36 - 1)
            {
              v44 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v39 = v44 + v10;
              v40 = v44 + v37;
              v41 = *(v39 + 16);
              v42 = *v39;
              v43 = *(v40 - 8);
              *v39 = *(v40 - 24);
              *(v39 + 16) = v43;
              *(v40 - 24) = v42;
              *(v40 - 8) = v41;
            }

            ++v38;
            --v36;
            v37 -= 24;
            v10 += 24;
          }

          while (v38 < v24 + v36);
        }
      }

      v10 = v119;
    }

    v45 = v7[1];
    if (v24 < v45)
    {
      if (__OFSUB__(v24, v9))
      {
        goto LABEL_118;
      }

      if (v24 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 >= v45)
        {
          v46 = v7[1];
        }

        else
        {
          v46 = v9 + a4;
        }

        if (v46 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v24 != v46)
        {
          break;
        }
      }
    }

    v47 = v24;
    if (v24 < v9)
    {
      goto LABEL_117;
    }

LABEL_30:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_2191F6B60(0, *(v10 + 16) + 1, 1, v10);
    }

    v49 = *(v10 + 16);
    v48 = *(v10 + 24);
    v50 = v49 + 1;
    if (v49 >= v48 >> 1)
    {
      v10 = sub_2191F6B60((v48 > 1), v49 + 1, 1, v10);
    }

    *(v10 + 16) = v50;
    v51 = v10 + 16 * v49;
    *(v51 + 32) = v124;
    *(v51 + 40) = v47;
    v52 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    v125 = v47;
    if (v49)
    {
      while (1)
      {
        v5 = v50 - 1;
        if (v50 >= 4)
        {
          break;
        }

        if (v50 == 3)
        {
          v53 = *(v10 + 32);
          v54 = *(v10 + 40);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_49:
          if (v56)
          {
            goto LABEL_106;
          }

          v69 = (v10 + 16 * v50);
          v71 = *v69;
          v70 = v69[1];
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_109;
          }

          v75 = (v10 + 32 + 16 * v5);
          v77 = *v75;
          v76 = v75[1];
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_113;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v5 = v50 - 2;
            }

            goto LABEL_70;
          }

          goto LABEL_63;
        }

        v79 = (v10 + 16 * v50);
        v81 = *v79;
        v80 = v79[1];
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_63:
        if (v74)
        {
          goto LABEL_108;
        }

        v82 = v10 + 16 * v5;
        v84 = *(v82 + 32);
        v83 = *(v82 + 40);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_111;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_70:
        v90 = v5 - 1;
        if (v5 - 1 >= v50)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
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
          goto LABEL_121;
        }

        if (!*v7)
        {
          goto LABEL_124;
        }

        v91 = *(v10 + 32 + 16 * v90);
        v92 = *(v10 + 32 + 16 * v5 + 8);
        sub_218DDBB38((*v7 + 24 * v91), (*v7 + 24 * *(v10 + 32 + 16 * v5)), *v7 + 24 * v92, v52);
        if (v6)
        {
          goto LABEL_100;
        }

        if (v92 < v91)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_218C81048(v10);
        }

        if (v90 >= *(v10 + 16))
        {
          goto LABEL_103;
        }

        v93 = v10 + 16 * v90;
        *(v93 + 32) = v91;
        *(v93 + 40) = v92;
        sub_218C80FBC(v5);
        v50 = *(v10 + 16);
        if (v50 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = v10 + 32 + 16 * v50;
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_104;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_105;
      }

      v64 = (v10 + 16 * v50);
      v66 = *v64;
      v65 = v64[1];
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_107;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_110;
      }

      if (v68 >= v60)
      {
        v86 = (v10 + 32 + 16 * v5);
        v88 = *v86;
        v87 = v86[1];
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_114;
        }

        if (v55 < v89)
        {
          v5 = v50 - 2;
        }

        goto LABEL_70;
      }

      goto LABEL_49;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v125;
    if (v125 >= v8)
    {
      goto LABEL_90;
    }
  }

  v120 = v10;
  v122 = v6;
  v94 = *v7;
  v95 = *v7 + 24 * v24 - 24;
  v96 = v9 - v24;
  v126 = v46;
LABEL_81:
  v128 = v95;
  v130 = v24;
  v97 = v94 + 24 * v24;
  v98 = *v97;
  v5 = *(v97 + 8);
  v99 = v96;
  while (1)
  {
    v100 = *v95;
    v101 = *(v95 + 8);
    v102 = v98;
    v5 = v5;
    v103 = v100;
    v104 = v101;
    [v5 agedPersonalizationScore];
    v106 = v105;
    [v104 agedPersonalizationScore];
    v108 = v107;

    if (v108 >= v106)
    {
LABEL_80:
      v24 = v130 + 1;
      v95 = v128 + 24;
      --v96;
      v47 = v126;
      if (v130 + 1 != v126)
      {
        goto LABEL_81;
      }

      v10 = v120;
      v6 = v122;
      v7 = a3;
      if (v126 < v124)
      {
        goto LABEL_117;
      }

      goto LABEL_30;
    }

    if (!v94)
    {
      break;
    }

    v5 = *(v95 + 32);
    v109 = *(v95 + 40);
    v110 = *(v95 + 16);
    v98 = *(v95 + 24);
    *(v95 + 24) = *v95;
    *(v95 + 40) = v110;
    *v95 = v98;
    *(v95 + 8) = v5;
    *(v95 + 16) = v109;
    v95 -= 24;
    if (__CFADD__(v99++, 1))
    {
      goto LABEL_80;
    }
  }

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
}

uint64_t sub_218DDBB38(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v48 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v14 = *(v6 + 1);
      v15 = *v4;
      v16 = *(v4 + 1);
      v17 = *v6;
      v18 = v14;
      v19 = v4;
      v20 = v15;
      v21 = v16;
      [v18 agedPersonalizationScore];
      v23 = v22;
      [v21 agedPersonalizationScore];
      v25 = v24;

      if (v25 < v23)
      {
        break;
      }

      v12 = v19;
      v4 = v19 + 24;
      if (v7 != v19)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v48)
      {
        goto LABEL_6;
      }
    }

    v12 = v6;
    v26 = v7 == v6;
    v6 += 24;
    v4 = v19;
    if (v26)
    {
      goto LABEL_9;
    }

LABEL_8:
    v13 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v13;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v48 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v47 = v6;
    v46 = v6 - 24;
    v5 -= 24;
    v27 = v48;
    do
    {
      v28 = v4;
      v29 = v5 + 24;
      v30 = *(v27 - 3);
      v31 = *(v27 - 2);
      v27 -= 24;
      v32 = *(v47 - 3);
      v33 = *(v47 - 2);
      v34 = v30;
      v35 = v31;
      v36 = v32;
      v37 = v33;
      [v35 agedPersonalizationScore];
      v39 = v38;
      [v37 agedPersonalizationScore];
      v41 = v40;

      if (v41 < v39)
      {
        v4 = v28;
        if (v29 != v47)
        {
          v43 = *v46;
          *(v5 + 16) = *(v46 + 2);
          *v5 = v43;
        }

        if (v48 <= v28 || (v6 = v46, v46 <= v7))
        {
          v6 = v46;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v4 = v28;
      if (v29 != v48)
      {
        v42 = *v27;
        *(v5 + 16) = *(v27 + 2);
        *v5 = v42;
      }

      v5 -= 24;
      v48 = v27;
    }

    while (v27 > v28);
    v48 = v27;
    v6 = v47;
  }

LABEL_31:
  v44 = (v48 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v44])
  {
    memmove(v6, v4, 24 * v44);
  }

  return 1;
}

void sub_218DDBE70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = (a1 + 40);
    do
    {
      v4 = *(v2 - 1);
      v3 = *v2;

      sub_219497B60(&v5, v4, v3);

      v2 += 2;
      --v1;
    }

    while (v1);
  }
}

void sub_218DDBEE0(uint64_t a1)
{
  v2 = sub_219BF1E34();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = *(a1 + 16);
  if (v10)
  {
    v13 = *(v3 + 16);
    v11 = v3 + 16;
    v12 = v13;
    v14 = a1 + ((*(v11 + 64) + 32) & ~*(v11 + 64));
    v15 = *(v11 + 56);
    do
    {
      v12(v5, v14, v2, v7);
      sub_21949A16C(v9, v5);
      (*(v11 - 8))(v9, v2);
      v14 += v15;
      --v10;
    }

    while (v10);
  }
}

void sub_218DDC028(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x21CECE0F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_21949A44C(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_218DDC100(uint64_t a1)
{
  result = MEMORY[0x277D84FA0];
  v9 = MEMORY[0x277D84FA0];
  v3 = *(a1 + OBJC_IVAR____TtC7NewsUI225MagazineFeedServiceConfig_baseContentConfig);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 32);
    do
    {
      v6 = *v5++;

      v8 = sub_21915410C(v6, v7);
      sub_218DD8A2C(v8, sub_219499DD4);

      --v4;
    }

    while (v4);
    return v9;
  }

  return result;
}

unint64_t sub_218DDC19C()
{
  result = qword_280EAC5F0[0];
  if (!qword_280EAC5F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EAC5F0);
  }

  return result;
}

unint64_t sub_218DDC1FC()
{
  result = qword_280EC4758;
  if (!qword_280EC4758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EC4758);
  }

  return result;
}

uint64_t sub_218DDC250(_OWORD *a1)
{
  v2 = *(v1 + 16);
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v6[4] = a1[4];
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return v2(v6);
}

void sub_218DDC29C(uint64_t *a1, uint64_t (*a2)(uint64_t))
{
  v2 = *a1;
  v3 = *(*a1 + 16);
  if (!v3)
  {
    return;
  }

  v4 = 0;
  v5 = MEMORY[0x277D84F90];
  while (v4 < *(v2 + 16))
  {
    v6 = *(v2 + 32 + 8 * v4);

    v7 = a2(v6);
    v8 = *(v7 + 16);
    v9 = *(v5 + 2);
    v10 = v9 + v8;
    if (__OFADD__(v9, v8))
    {
      goto LABEL_21;
    }

    v11 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v13 = *(v5 + 3) >> 1, v13 >= v10))
    {
      if (*(v11 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v9 <= v10)
      {
        v14 = v9 + v8;
      }

      else
      {
        v14 = v9;
      }

      v5 = sub_218840D24(isUniquelyReferenced_nonNull_native, v14, 1, v5);
      v13 = *(v5 + 3) >> 1;
      if (*(v11 + 16))
      {
LABEL_15:
        if (v13 - *(v5 + 2) < v8)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v8)
        {
          v15 = *(v5 + 2);
          v16 = __OFADD__(v15, v8);
          v17 = v15 + v8;
          if (v16)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v17;
        }

        goto LABEL_4;
      }
    }

    if (v8)
    {
      goto LABEL_22;
    }

LABEL_4:
    ++v4;

    if (v3 == v4)
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

void sub_218DDC41C(uint64_t *a1)
{
  v26 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  MEMORY[0x28223BE20](v26);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218D7EFE8(0);
  v5 = v4;
  MEMORY[0x28223BE20](v4);
  v25 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = *a1;
  v29 = *(*a1 + 16);
  if (v29)
  {
    v12 = 0;
    v27 = 0;
    v28 = v11 + 32;
    v13 = (v8 + 16);
    v14 = (v8 + 8);
    v15 = 0xE000000000000000;
    while (1)
    {
      if (v12 >= *(v11 + 16))
      {
        __break(1u);
        return;
      }

      v18 = *(v28 + 8 * v12);
      v19 = v18 >> 60;
      v20 = v18 & 0xFFFFFFFFFFFFFFFLL;
      if (v18 >> 60 == 10)
      {

        v16 = swift_projectBox();
        (*v13)(v10, v16, v5);
        sub_219BEDD14();
        (*v14)(v10, v5);
      }

      else
      {

        if (v19 != 14 || *(v20 + 16) >> 60 != 10)
        {
          goto LABEL_5;
        }

        v21 = swift_projectBox();
        v22 = v25;
        (*v13)(v25, v21, v5);

        sub_219BEDD14();
        (*v14)(v22, v5);
      }

      v17 = &v3[*(v26 + 36)];
      v15 = *(v17 + 1);
      v27 = *v17;

      sub_218DDCF20(v3);
LABEL_5:

      if (v29 == ++v12)
      {
        goto LABEL_12;
      }
    }
  }

  v27 = 0;
  v15 = 0xE000000000000000;
LABEL_12:
  v23 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v23 = v27 & 0xFFFFFFFFFFFFLL;
  }

  if (!v23)
  {
  }
}

void sub_218DDC71C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_219BF5B14();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_218DDC784(uint64_t a1)
{
  if (!qword_280EE6B70)
  {
    sub_21870F3D4(255, &qword_280E8F440, &type metadata for MagazineFeedPoolFeedItem, MEMORY[0x277D83940]);
    v1 = sub_219BE3114();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE6B70);
    }
  }
}

unint64_t sub_218DDC800()
{
  result = qword_280E8F1F8;
  if (!qword_280E8F1F8)
  {
    sub_21870F3D4(255, &qword_280E8F200, &type metadata for MagazineFeedPoolIssue, MEMORY[0x277D83940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8F1F8);
  }

  return result;
}

void sub_218DDC8E4(unint64_t a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a2[2];
  v7 = [objc_msgSend(v6 configurationManager)];
  swift_unknownObjectRelease();
  if (!v7)
  {
LABEL_46:

    __break(1u);
    return;
  }

  v8 = [objc_opt_self() transformationWithFilterOptions:0x14022012CLL configuration:v7 context:v6];
  swift_unknownObjectRelease();
  v9 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_33;
  }

  sub_219BF7924();
  sub_2186D6710(0, qword_280E8DE80, &protocolRef_FCFeedTransformationItem);
  while (1)
  {
    sub_2186D6710(0, qword_280E8DE80, &protocolRef_FCFeedTransformationItem);
    v10 = sub_219BF5904();

    v11 = [v8 transformFeedItems_];

    v12 = sub_219BF5924();
    v13 = sub_218B0C6F8(v12);

    v14 = MEMORY[0x277D84F90];
    v15 = v13 ? v13 : MEMORY[0x277D84F90];
    if (v15 >> 62)
    {
      break;
    }

    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_35;
    }

LABEL_9:
    v52 = v14;
    sub_218C355D0(0, v16 & ~(v16 >> 63), 0);
    if (v16 < 0)
    {
      __break(1u);
LABEL_45:

      __break(1u);
      goto LABEL_46;
    }

    v43 = v9;
    v44 = v8;
    v45 = a1;
    v46 = a3;
    v17 = 0;
    v48 = v16;
    v49 = v15 & 0xC000000000000001;
    v18 = v52;
    v47 = v15 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      v8 = (v17 + 1);
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v51 = v18;
      if (v49)
      {
        v19 = MEMORY[0x21CECE0F0](v17, v15);
      }

      else
      {
        if (v17 >= *(v47 + 16))
        {
          goto LABEL_32;
        }

        v19 = *(v15 + 8 * v17 + 32);
      }

      v20 = v19;
      v21 = v15;
      v22 = *__swift_project_boxed_opaque_existential_1(a2 + 8, a2[11]);
      v23 = [v20 articleID];
      if (!v23)
      {
        goto LABEL_45;
      }

      v24 = v23;
      sub_219BF5414();

      v25 = *(v22 + OBJC_IVAR____TtC7NewsUI214HistoryService_readingHistory);
      v26 = sub_219BF53D4();
      v27 = [v25 hasArticleBeenRead_];

      if (v27)
      {
        a1 = 2;
      }

      else
      {
        a1 = 0;
      }

      v28 = sub_219BF53D4();
      v29 = [v25 hasArticleBeenSeen_];

      if (v29)
      {
        a1 |= 4uLL;
      }

      v30 = sub_219BF53D4();
      v9 = [v25 hasArticleBeenVisited_];

      if (v9)
      {
        a1 |= 8uLL;
      }

      v31 = sub_219BF53D4();
      v32 = [v25 hasArticleBeenConsumed_];

      if (v32)
      {
        v33 = a1 | 0x10;
      }

      else
      {
        v33 = a1;
      }

      v18 = v51;
      v52 = v51;
      a3 = *(v51 + 16);
      v34 = *(v51 + 24);
      if (a3 >= v34 >> 1)
      {
        sub_218C355D0((v34 > 1), a3 + 1, 1);
        v18 = v52;
      }

      *(v18 + 16) = a3 + 1;
      v35 = v18 + 16 * a3;
      *(v35 + 32) = v20;
      *(v35 + 40) = v33;
      ++v17;
      v15 = v21;
      if (v8 == v48)
      {
        v36 = v18;

        a3 = v46;
        v8 = v44;
        a1 = v45;
        v9 = v43;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    sub_2186D6710(0, qword_280E8DE80, &protocolRef_FCFeedTransformationItem);

    sub_219BF7534();
  }

  v16 = sub_219BF7214();
  if (v16)
  {
    goto LABEL_9;
  }

LABEL_35:

  v36 = MEMORY[0x277D84F90];
LABEL_36:
  if (qword_280E8D920 != -1)
  {
    swift_once();
  }

  sub_2186E7EF0(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v37 = swift_allocObject();
  *(v37 + 16) = xmmword_219C09EC0;
  if (v9)
  {
    v38 = sub_219BF7214();
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = MEMORY[0x277D83B88];
  v40 = MEMORY[0x277D83C10];
  *(v37 + 56) = MEMORY[0x277D83B88];
  *(v37 + 64) = v40;
  *(v37 + 32) = v38;
  v41 = *(v36 + 16);
  *(v37 + 96) = v39;
  *(v37 + 104) = v40;
  *(v37 + 72) = v41;
  sub_219BF6214();
  sub_219BE5314("Feed pool filtered from %lu to %lu unreserved articles", v42, v43);

  v52 = v36;
  (a3)(&v52);
}

unint64_t sub_218DDCE9C()
{
  result = qword_280E8EB38;
  if (!qword_280E8EB38)
  {
    sub_218DDC71C(255, &qword_280E8EB40, &qword_280E8DAB0, 0x277D310B0, sub_2186C6148);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E8EB38);
  }

  return result;
}

uint64_t sub_218DDCF20(uint64_t a1)
{
  v2 = type metadata accessor for TrendingMagazineFeedGroupConfigData(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_218DDCF90()
{
  result = qword_27CC12248;
  if (!qword_27CC12248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12248);
  }

  return result;
}

uint64_t sub_218DDD004@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (a2 == 3)
  {
    v5 = *(v3 + 16);
    v6 = type metadata accessor for ExplicitContentRestrictionAlertPresenter();
    v7 = swift_allocObject();
    v7[3] = 0;
    v7[4] = 0;
    v7[2] = v5;
    a3[3] = v6;
    a3[4] = sub_218DDD1EC(&qword_27CC0D818, type metadata accessor for ExplicitContentRestrictionAlertPresenter, &unk_219C7E898);
    *a3 = v7;

    return swift_unknownObjectRetain();
  }

  else
  {
    if (a1)
    {
      v14 = sub_219BDE254();
      v15 = sub_218DDD1EC(&qword_27CC0D7F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
      __swift_allocate_boxed_opaque_existential_1(v13);
      v10 = a1;
      sub_219BDE224();
    }

    else
    {
      v14 = sub_219BDE254();
      v15 = sub_218DDD1EC(&qword_27CC0D7F8, MEMORY[0x277D2FEF0], MEMORY[0x277D2FED0]);
      __swift_allocate_boxed_opaque_existential_1(v13);
      sub_219BDE214();
    }

    v11 = sub_219BEA744();
    swift_allocObject();
    result = sub_219BEA6C4();
    v12 = MEMORY[0x277D6EB90];
    a3[3] = v11;
    a3[4] = v12;
    *a3 = result;
  }

  return result;
}

uint64_t sub_218DDD1EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_218DDD234(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_2186C61E4();
  sub_219BE3204();
  v5 = sub_219BE2E54();
  type metadata accessor for OptimizedStorageStartupTask();
  sub_219BE2F94();

  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;

  v7 = sub_219BE2E54();
  sub_219BE3024();
}

uint64_t sub_218DDD364(uint64_t a1)
{
  v1 = [*(a1 + 16) appConfigurationManager];
  swift_getObjectType();
  v2 = sub_219BF6A64();
  swift_unknownObjectRelease();
  return v2;
}

void sub_218DDD3CC(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = NewsCoreUserDefaults();
  v5 = *MEMORY[0x277D30BE0];
  v6 = [v4 BOOLForKey_];

  if (v6)
  {
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F62790);
    v8 = sub_219BE5414();
    v9 = sub_219BF6214();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_8;
    }

    v10 = swift_slowAlloc();
    *v10 = 0;
    v11 = "will not consider auto-enabling Optimized Storage because it's already enabled";
    goto LABEL_6;
  }

  v13 = NewsCoreUserDefaults();
  v14 = [v13 objectForKey_];

  if (v14)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    if (qword_280EE6070 != -1)
    {
      swift_once();
    }

    v15 = sub_219BE5434();
    __swift_project_value_buffer(v15, qword_280F62790);
    sub_2186D1230(v35, v34);
    v16 = sub_219BE5414();
    v17 = sub_219BF6214();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v36 = v19;
      *v18 = 136446210;
      sub_219BF7484();
      __swift_destroy_boxed_opaque_existential_1(v34);
      v20 = sub_2186D1058(0, 0xE000000000000000, &v36);

      *(v18 + 4) = v20;
      _os_log_impl(&dword_2186C1000, v16, v17, "will not consider auto-enabling Optimized Storage because the user modified the setting on %{public}s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      MEMORY[0x21CECF960](v19, -1, -1);
      MEMORY[0x21CECF960](v18, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1(v34);
    }

    __swift_destroy_boxed_opaque_existential_1(v35);
  }

  else
  {
    if (([v3 respondsToSelector_] & 1) == 0)
    {
      if (qword_280EE6070 != -1)
      {
        swift_once();
      }

      v30 = sub_219BE5434();
      __swift_project_value_buffer(v30, qword_280F62790);
      v8 = sub_219BE5414();
      v9 = sub_219BF6214();
      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_8;
      }

      v10 = swift_slowAlloc();
      *v10 = 0;
      v11 = "will not consider auto-enabling Optimized Storage because there's no configured threshold";
LABEL_6:
      _os_log_impl(&dword_2186C1000, v8, v9, v11, v10, 2u);
      v12 = v10;
LABEL_7:
      MEMORY[0x21CECF960](v12, -1, -1);
LABEL_8:

      return;
    }

    v21 = [v3 optimizedStorageAutoEnablementThreshold];
    v22 = [*(a2 + 16) contentHostDirectoryURL];
    if (v22)
    {
      v23 = v22;
      v24 = [v22 fc_fileSystemFreeSize];

      if (v24 >= v21)
      {
        if (qword_280EE6070 != -1)
        {
          swift_once();
        }

        v31 = sub_219BE5434();
        __swift_project_value_buffer(v31, qword_280F62790);
        v8 = sub_219BE5414();
        v32 = sub_219BF6214();
        if (!os_log_type_enabled(v8, v32))
        {
          goto LABEL_8;
        }

        v33 = swift_slowAlloc();
        *v33 = 134349312;
        *(v33 + 4) = v24;
        *(v33 + 12) = 2050;
        *(v33 + 14) = v21;
        _os_log_impl(&dword_2186C1000, v8, v32, "will not auto-enable Optimized Storage because available=%{public}lld >= threshold=%{public}lld", v33, 0x16u);
        v12 = v33;
        goto LABEL_7;
      }

      if (qword_280EE6070 != -1)
      {
        swift_once();
      }

      v25 = sub_219BE5434();
      __swift_project_value_buffer(v25, qword_280F62790);
      v26 = sub_219BE5414();
      v27 = sub_219BF6214();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134349312;
        *(v28 + 4) = v24;
        *(v28 + 12) = 2050;
        *(v28 + 14) = v21;
        _os_log_impl(&dword_2186C1000, v26, v27, "will auto-enable Optimized Storage because available=%{public}lld < threshold=%{public}lld", v28, 0x16u);
        MEMORY[0x21CECF960](v28, -1, -1);
      }

      v29 = NewsCoreUserDefaults();
      [v29 setBool:1 forKey:v5];
    }

    else
    {
      __break(1u);
    }
  }
}

void *sub_218DDDA14(void *a1, uint64_t (*a2)(void), uint64_t (*a3)(void *))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E90100, MEMORY[0x277D33F00], 1);
  result = sub_219BE1E34();
  if (v7)
  {
    a2(0);
    swift_allocObject();
    return a3(v6);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218DDDAC4(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, qword_280EC3EF0, &protocol descriptor for PuzzleRadarReporterType, 0);
  result = sub_219BE1E34();
  if (v2)
  {
    type metadata accessor for PuzzleTapToRadarCommandHandler();
    result = swift_allocObject();
    result[2] = v2;
    result[3] = v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_218DDDB88(void *a1, uint64_t (*a2)(void))
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (!result)
  {
    __break(1u);
    goto LABEL_6;
  }

  v5 = result;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &qword_280EE5390, MEMORY[0x277D6D908], 1);
  result = sub_219BE1E34();
  if (!v11)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  sub_2186CB1F0(&v10, v12);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186C709C(0, &unk_280E8FDF0, MEMORY[0x277D344E0], 1);
  result = sub_219BE1E34();
  if (v9)
  {
    a2(0);
    v6 = swift_allocObject();
    *(v6 + 16) = v5;
    v7 = v12[1];
    *(v6 + 24) = v12[0];
    *(v6 + 40) = v7;
    *(v6 + 56) = v13;
    sub_2186CB1F0(&v8, v6 + 64);
    return v6;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_218DDDCEC(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2186CF94C(0);
  result = sub_219BE1E24();
  if (result)
  {
    v2 = result;
    type metadata accessor for OpenMainWindowCommandHandler();
    result = swift_allocObject();
    *(result + 16) = v2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_218DDDE50()
{
  result = qword_27CC12250;
  if (!qword_27CC12250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC12250);
  }

  return result;
}

void sub_218DDDEAC(unint64_t a1, void *a2)
{
  v4 = v2;
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
  {
    v21 = MEMORY[0x277D84F90];
    sub_21870B65C(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      __break(1u);
LABEL_20:

      __break(1u);
      return;
    }

    v7 = 0;
    v8 = v21;
    while (1)
    {
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x21CECE0F0](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v10 = *(a1 + 8 * v7 + 32);
      }

      v3 = v10;
      v18 = v10;
      sub_218DE11F4(&v18, a2, &v19);
      if (v4)
      {
        goto LABEL_20;
      }

      v4 = 0;

      v12 = v19;
      v11 = v20;
      v21 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      v3 = (v14 + 1);
      if (v14 >= v13 >> 1)
      {
        v16 = v20;
        sub_21870B65C((v13 > 1), v14 + 1, 1);
        v11 = v16;
        v8 = v21;
      }

      *(v8 + 16) = v3;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v12;
      *(v15 + 40) = v11;
      ++v7;
      if (v9 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }
}

void sub_218DDE044(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return;
  }

  v34 = *MEMORY[0x277D31A80];
  v33 = *MEMORY[0x277D31A78];
  v32 = *MEMORY[0x277D31AC8];
  sub_2186E7F54(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
  v31 = sub_219BE5A04();
  v5 = *(v31 - 8);
  v29 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v30 = *(v5 + 72);
  v28 = (v5 + 104);
  for (i = (a1 + 40); ; i += 2)
  {
    v35 = v2;
    v7 = *(i - 1);
    v8 = *i;
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_219C0B8C0;
    v10 = *v28;
    (*v28)(v9 + v29, v34, v31);
    v10(v9 + v29 + v30, v33, v31);
    v10(v9 + v29 + 2 * v30, v32, v31);

    v11 = sub_2194B21CC(v9);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *a2;
    v36 = *a2;
    v14 = a2;
    *a2 = 0x8000000000000000;
    v16 = sub_21870F700(v7, v8);
    v17 = v13[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      break;
    }

    v20 = v15;
    if (v13[3] >= v19)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v36;
        if (v15)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_21949313C();
        v23 = v36;
        if (v20)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_2194828B8(v19, isUniquelyReferenced_nonNull_native);
      v21 = sub_21870F700(v7, v8);
      if ((v20 & 1) != (v22 & 1))
      {
        goto LABEL_19;
      }

      v16 = v21;
      v23 = v36;
      if (v20)
      {
LABEL_3:
        *(v23[7] + 8 * v16) = v11;

        goto LABEL_4;
      }
    }

    v23[(v16 >> 6) + 8] |= 1 << v16;
    v24 = (v23[6] + 16 * v16);
    *v24 = v7;
    v24[1] = v8;
    *(v23[7] + 8 * v16) = v11;
    v25 = v23[2];
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (v26)
    {
      goto LABEL_18;
    }

    v23[2] = v27;

LABEL_4:
    a2 = v14;
    *v14 = v23;

    v2 = v35 - 1;
    if (v35 == 1)
    {
      return;
    }
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  sub_219BF79A4();
  __break(1u);
}

unint64_t sub_218DDE4A8(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D34298];
        sub_2186E7F54(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC0CC70, &qword_280E8EE90, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF4044();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

void sub_218DDE84C(void (*a1)(unint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v11 = 0;
  v12 = MEMORY[0x277D84F90];
  v37 = v10;
  v38 = v6;
  v35 = v5;
  while (v9)
  {
LABEL_11:
    v44 = *(*(v5 + 56) + ((v11 << 9) | (8 * __clz(__rbit64(v9)))));

    a1(&v43, &v44);
    if (v4)
    {

      return;
    }

    v14 = v43;
    v15 = v43 >> 62;
    if (v43 >> 62)
    {
      v16 = sub_219BF7214();
    }

    else
    {
      v16 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v12 >> 62;
    if (v12 >> 62)
    {
      v18 = sub_219BF7214();
    }

    else
    {
      v18 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v41 = v16;
    v19 = __OFADD__(v18, v16);
    v20 = v18 + v16;
    if (v19)
    {
      goto LABEL_42;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v17)
      {
        v21 = v12 & 0xFFFFFFFFFFFFFF8;
        if (v20 <= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }

LABEL_22:
      sub_219BF7214();
      goto LABEL_23;
    }

    if (v17)
    {
      goto LABEL_22;
    }

LABEL_23:
    v12 = sub_219BF7364();
    v21 = v12 & 0xFFFFFFFFFFFFFF8;
LABEL_24:
    v40 = v12;
    v22 = *(v21 + 16);
    v23 = *(v21 + 24);
    if (v15)
    {
      v25 = v21;
      v26 = sub_219BF7214();
      v21 = v25;
      v24 = v26;
      if (v26)
      {
LABEL_28:
        if (((v23 >> 1) - v22) < v41)
        {
          goto LABEL_44;
        }

        v36 = v21;
        v27 = v21 + 8 * v22 + 32;
        if (v15)
        {
          if (v24 < 1)
          {
            goto LABEL_46;
          }

          v28 = MEMORY[0x277D34298];
          sub_2186E7F54(0, &qword_280E8EE90, MEMORY[0x277D34298], MEMORY[0x277D83940]);
          sub_218DE7728(&qword_27CC0CC70, &qword_280E8EE90, v28);
          for (i = 0; i != v24; ++i)
          {
            v30 = sub_218A35350(v42, i, v14);
            v32 = *v31;

            (v30)(v42, 0);
            *(v27 + 8 * i) = v32;
          }
        }

        else
        {
          sub_219BF4044();
          swift_arrayInitWithCopy();
        }

        v12 = v40;
        v4 = 0;
        v10 = v37;
        v5 = v35;
        v6 = v38;
        if (v41 > 0)
        {
          v33 = *(v36 + 16);
          v19 = __OFADD__(v33, v41);
          v34 = v33 + v41;
          if (v19)
          {
            goto LABEL_45;
          }

          *(v36 + 16) = v34;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v24 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v24)
      {
        goto LABEL_28;
      }
    }

    v12 = v40;
    v10 = v37;
    v6 = v38;
    if (v41 > 0)
    {
      goto LABEL_43;
    }

LABEL_5:
    v9 &= v9 - 1;
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_11;
    }
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
}

unint64_t sub_218DDEBF0(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D34630];
        sub_2186E7F54(0, &qword_27CC10A00, MEMORY[0x277D34630], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC12288, &qword_27CC10A00, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF4C44();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

void sub_218DDEF94(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = *(a3 + 16);
  if (!v30)
  {
    return;
  }

  v6 = 0;
  v7 = *(sub_219BF3AA4() - 8);
  v29 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v28 = *(v7 + 72);
  while (1)
  {
    a1(&v35, v29 + v28 * v6);
    if (v4)
    {

      return;
    }

    v9 = v35;
    v10 = v35 >> 62;
    if (v35 >> 62)
    {
      v11 = sub_219BF7214();
    }

    else
    {
      v11 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v8 >> 62;
    if (v8 >> 62)
    {
      v27 = sub_219BF7214();
      v14 = v27 + v11;
      if (__OFADD__(v27, v11))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    v33 = v11;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v12)
      {
        v15 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_219BF7214();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    v8 = sub_219BF7364();
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v33)
    {
      goto LABEL_38;
    }

    v32 = v8;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      v19 = MEMORY[0x277D34630];
      sub_2186E7F54(0, &qword_27CC10A00, MEMORY[0x277D34630], MEMORY[0x277D83940]);
      sub_218DE7728(&qword_27CC12288, &qword_27CC10A00, v19);
      for (i = 0; i != v18; ++i)
      {
        v21 = sub_218A35350(v34, i, v9);
        v23 = *v22;

        (v21)(v34, 0);
        *(v15 + 8 * v16 + 32 + 8 * i) = v23;
      }
    }

    else
    {
      sub_219BF4C44();
      swift_arrayInitWithCopy();
    }

    v4 = 0;
    v8 = v32;
    if (v33 > 0)
    {
      v24 = *(v15 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_39;
      }

      *(v15 + 16) = v26;
    }

LABEL_4:
    if (++v6 == v30)
    {
      return;
    }
  }

  v18 = sub_219BF7214();
  if (v18)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_218DDF348(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = *(a3 + 16);
  if (!v30)
  {
    return;
  }

  v6 = 0;
  v7 = *(sub_219BF3AA4() - 8);
  v29 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v28 = *(v7 + 72);
  while (1)
  {
    a1(&v35, v29 + v28 * v6);
    if (v4)
    {

      return;
    }

    v9 = v35;
    v10 = v35 >> 62;
    if (v35 >> 62)
    {
      v11 = sub_219BF7214();
    }

    else
    {
      v11 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v8 >> 62;
    if (v8 >> 62)
    {
      v27 = sub_219BF7214();
      v14 = v27 + v11;
      if (__OFADD__(v27, v11))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    v33 = v11;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v12)
      {
        v15 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_219BF7214();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    v8 = sub_219BF7364();
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v33)
    {
      goto LABEL_38;
    }

    v32 = v8;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      v19 = MEMORY[0x277D34470];
      sub_2186E7F54(0, &qword_27CC12260, MEMORY[0x277D34470], MEMORY[0x277D83940]);
      sub_218DE7728(&qword_27CC12268, &qword_27CC12260, v19);
      for (i = 0; i != v18; ++i)
      {
        v21 = sub_218A35350(v34, i, v9);
        v23 = *v22;

        (v21)(v34, 0);
        *(v15 + 8 * v16 + 32 + 8 * i) = v23;
      }
    }

    else
    {
      sub_219BF4664();
      swift_arrayInitWithCopy();
    }

    v4 = 0;
    v8 = v32;
    if (v33 > 0)
    {
      v24 = *(v15 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_39;
      }

      *(v15 + 16) = v26;
    }

LABEL_4:
    if (++v6 == v30)
    {
      return;
    }
  }

  v18 = sub_219BF7214();
  if (v18)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void sub_218DDF6A8(void (*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v30 = *(a3 + 16);
  if (!v30)
  {
    return;
  }

  v6 = 0;
  v7 = *(sub_219BF3AA4() - 8);
  v29 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v8 = MEMORY[0x277D84F90];
  v28 = *(v7 + 72);
  while (1)
  {
    a1(&v35, v29 + v28 * v6);
    if (v4)
    {

      return;
    }

    v9 = v35;
    v10 = v35 >> 62;
    if (v35 >> 62)
    {
      v11 = sub_219BF7214();
    }

    else
    {
      v11 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = v8 >> 62;
    if (v8 >> 62)
    {
      v27 = sub_219BF7214();
      v14 = v27 + v11;
      if (__OFADD__(v27, v11))
      {
LABEL_33:
        __break(1u);
        return;
      }
    }

    else
    {
      v13 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v14 = v13 + v11;
      if (__OFADD__(v13, v11))
      {
        goto LABEL_33;
      }
    }

    v33 = v11;
    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v12)
      {
        v15 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v14 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_17;
        }

        goto LABEL_16;
      }

LABEL_15:
      sub_219BF7214();
      goto LABEL_16;
    }

    if (v12)
    {
      goto LABEL_15;
    }

LABEL_16:
    v8 = sub_219BF7364();
    v15 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_17:
    v16 = *(v15 + 16);
    v17 = *(v15 + 24);
    if (v10)
    {
      break;
    }

    v18 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v18)
    {
      goto LABEL_3;
    }

LABEL_21:
    if (((v17 >> 1) - v16) < v33)
    {
      goto LABEL_38;
    }

    v32 = v8;
    if (v10)
    {
      if (v18 < 1)
      {
        goto LABEL_40;
      }

      v19 = MEMORY[0x277D34518];
      sub_2186E7F54(0, &unk_27CC1A2B0, MEMORY[0x277D34518], MEMORY[0x277D83940]);
      sub_218DE7728(&qword_27CC1A2C0, &unk_27CC1A2B0, v19);
      for (i = 0; i != v18; ++i)
      {
        v21 = sub_218A35350(v34, i, v9);
        v23 = *v22;

        (v21)(v34, 0);
        *(v15 + 8 * v16 + 32 + 8 * i) = v23;
      }
    }

    else
    {
      sub_219BF48C4();
      swift_arrayInitWithCopy();
    }

    v4 = 0;
    v8 = v32;
    if (v33 > 0)
    {
      v24 = *(v15 + 16);
      v25 = __OFADD__(v24, v33);
      v26 = v24 + v33;
      if (v25)
      {
        goto LABEL_39;
      }

      *(v15 + 16) = v26;
    }

LABEL_4:
    if (++v6 == v30)
    {
      return;
    }
  }

  v18 = sub_219BF7214();
  if (v18)
  {
    goto LABEL_21;
  }

LABEL_3:

  if (v33 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
}

void *sub_218DDFB04(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = a3;
  if (a3 >> 62)
  {
    goto LABEL_31;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5)
  {
    while (1)
    {
      v6 = 0;
      v21 = v4 & 0xFFFFFFFFFFFFFF8;
      v22 = v4 & 0xC000000000000001;
      v25 = MEMORY[0x277D84F90];
      while (v22)
      {
        v7 = MEMORY[0x21CECE0F0](v6, v4);
        v8 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
LABEL_24:
          __break(1u);
LABEL_25:

          return v25;
        }

LABEL_9:
        v27 = v7;
        a1(&v26, &v27);
        if (v3)
        {
          goto LABEL_25;
        }

        v9 = v8;
        v10 = v4;

        v11 = v26;
        v12 = *(v26 + 16);
        v13 = v25[2];
        v4 = v13 + v12;
        if (__OFADD__(v13, v12))
        {
          goto LABEL_27;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = v25;
        if (!isUniquelyReferenced_nonNull_native || v4 > v25[3] >> 1)
        {
          if (v13 <= v4)
          {
            v16 = v13 + v12;
          }

          else
          {
            v16 = v13;
          }

          v15 = sub_2191F9304(isUniquelyReferenced_nonNull_native, v16, 1, v25);
        }

        v25 = v15;
        if (*(v11 + 16))
        {
          v24 = (v15[3] >> 1) - v15[2];
          v4 = v15;
          type metadata accessor for TagFeedCurationServiceConfig(0);
          if (v24 < v12)
          {
            goto LABEL_29;
          }

          swift_arrayInitWithCopy();

          v4 = v10;
          v3 = 0;
          if (v12)
          {
            v17 = v25[2];
            v18 = __OFADD__(v17, v12);
            v19 = v17 + v12;
            if (v18)
            {
              goto LABEL_30;
            }

            v25[2] = v19;
          }
        }

        else
        {

          v4 = v10;
          v3 = 0;
          if (v12)
          {
            goto LABEL_28;
          }
        }

        ++v6;
        if (v9 == v5)
        {
          return v25;
        }
      }

      if (v6 < *(v21 + 16))
      {
        break;
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v5 = sub_219BF7214();
      if (!v5)
      {
        return MEMORY[0x277D84F90];
      }
    }

    v7 = *(v4 + 8 * v6 + 32);

    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      goto LABEL_24;
    }

    goto LABEL_9;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_218DDFEC4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D34610];
        sub_2186E7F54(0, &unk_280E8EE50, MEMORY[0x277D34610], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC12270, &unk_280E8EE50, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF4BF4();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_218DE0310(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D34518];
        sub_2186E7F54(0, &unk_27CC1A2B0, MEMORY[0x277D34518], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC1A2C0, &unk_27CC1A2B0, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF48C4();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_218DE06B4(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D344C0];
        sub_2186E7F54(0, &unk_280E8EE60, MEMORY[0x277D344C0], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC12290, &unk_280E8EE60, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF46E4();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_218DE0A58(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D34470];
        sub_2186E7F54(0, &qword_27CC12260, MEMORY[0x277D34470], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC12268, &qword_27CC12260, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF4664();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_218DE0DFC(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_48;
  }

  v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v5)
  {
    v6 = 0;
    v33 = a3 & 0xFFFFFFFFFFFFFF8;
    v34 = a3 & 0xC000000000000001;
    v7 = MEMORY[0x277D84F90];
    v30 = a3;
    v31 = v5;
    v32 = a3 + 32;
    while (v34)
    {
      v8 = MEMORY[0x21CECE0F0](v6, v30);
      v9 = __OFADD__(v6++, 1);
      if (v9)
      {
        goto LABEL_42;
      }

LABEL_9:
      v41 = v8;
      a1(&v40, &v41);
      if (v4)
      {
        goto LABEL_41;
      }

      v10 = v40;
      v38 = v40 >> 62;
      if (v40 >> 62)
      {
        v11 = sub_219BF7214();
      }

      else
      {
        v11 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v12 = v7 >> 62;
      if (v7 >> 62)
      {
        v27 = sub_219BF7214();
        v14 = v27 + v11;
        if (__OFADD__(v27, v11))
        {
LABEL_40:
          __break(1u);
LABEL_41:

          return v7;
        }
      }

      else
      {
        v13 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v14 = v13 + v11;
        if (__OFADD__(v13, v11))
        {
          goto LABEL_40;
        }
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v12)
        {
          v15 = v7 & 0xFFFFFFFFFFFFFF8;
          if (v14 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_219BF7214();
        goto LABEL_20;
      }

      if (v12)
      {
        goto LABEL_19;
      }

LABEL_20:
      v7 = sub_219BF7364();
      v15 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
      if (v38)
      {
        v18 = sub_219BF7214();
        if (!v18)
        {
LABEL_4:

          if (v11 > 0)
          {
            goto LABEL_44;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v18 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v18)
        {
          goto LABEL_4;
        }
      }

      if (((v17 >> 1) - v16) < v11)
      {
        goto LABEL_45;
      }

      v37 = v11;
      v36 = v7;
      v19 = v15 + 8 * v16 + 32;
      if (v38)
      {
        if (v18 < 1)
        {
          goto LABEL_47;
        }

        v20 = MEMORY[0x277D34520];
        sub_2186E7F54(0, &qword_27CC12278, MEMORY[0x277D34520], MEMORY[0x277D83940]);
        sub_218DE7728(&qword_27CC12280, &qword_27CC12278, v20);
        for (i = 0; i != v18; ++i)
        {
          v22 = sub_218A35350(v39, i, v10);
          v24 = *v23;

          (v22)(v39, 0);
          *(v19 + 8 * i) = v24;
        }
      }

      else
      {
        sub_219BF4904();
        swift_arrayInitWithCopy();
      }

      v4 = 0;
      v7 = v36;
      if (v37 > 0)
      {
        v25 = *(v15 + 16);
        v9 = __OFADD__(v25, v37);
        v26 = v25 + v37;
        if (v9)
        {
          goto LABEL_46;
        }

        *(v15 + 16) = v26;
      }

LABEL_5:
      if (v6 == v31)
      {
        return v7;
      }
    }

    if (v6 >= *(v33 + 16))
    {
      goto LABEL_43;
    }

    v8 = *(v32 + 8 * v6);

    v9 = __OFADD__(v6++, 1);
    if (!v9)
    {
      goto LABEL_9;
    }

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
    v28 = a3;
    v5 = sub_219BF7214();
    a3 = v28;
  }

  return MEMORY[0x277D84F90];
}

void sub_218DE11F4(id *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = [*a1 identifier];
  v29 = sub_219BF5414();
  v30 = v6;

  v31 = v4;
  v7 = [v4 identifier];
  v8 = sub_219BF5414();
  v10 = v9;

  v11 = *a2;
  if (!*(*a2 + 16))
  {

    goto LABEL_5;
  }

  v12 = sub_21870F700(v8, v10);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_5:
    v15 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  v15 = *(*(v11 + 56) + 8 * v12);

LABEL_6:
  sub_2186E7F54(0, &unk_280E8C008, MEMORY[0x277D31AD0], MEMORY[0x277D84560]);
  v16 = sub_219BE5A04();
  v17 = *(v16 - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_219C0B8C0;
  v21 = v20 + v19;
  v22 = *(v17 + 104);
  v22(v21, *MEMORY[0x277D31A80], v16);
  v22(v21 + v18, *MEMORY[0x277D31A78], v16);
  v22(v21 + 2 * v18, *MEMORY[0x277D31AC8], v16);
  v23 = sub_2194AD2D8(v20, v15);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = *a2;
  *a2 = 0x8000000000000000;
  sub_21948D168(v23, v29, v30, isUniquelyReferenced_nonNull_native);

  *a2 = v33;
  v25 = [v31 identifier];
  v26 = sub_219BF5414();
  v28 = v27;

  *a3 = v26;
  a3[1] = v28;
}

uint64_t sub_218DE14BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v102 = a5;
  v100 = a4;
  v101 = a3;
  v106 = a6;
  sub_218853400(0);
  v116 = *(v9 - 8);
  v117 = v9;
  MEMORY[0x28223BE20](v9);
  v108 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TodayModel(0);
  v107 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v114 = &v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v119 = &v93 - v14;
  sub_218853494(0);
  MEMORY[0x28223BE20](v15 - 8);
  v105 = &v93 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_219BF2094();
  v110 = *(v118 - 8);
  MEMORY[0x28223BE20](v118);
  v111 = &v93 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_219BF2DA4();
  v18 = *(v115 - 1);
  MEMORY[0x28223BE20](v115);
  v20 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = sub_219BF1904();
  v98 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v22 = &v93 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = *(v6 + 88);
  v103 = a2;
  sub_219BED874();
  v104 = a1;
  v94 = sub_2188539DC(a1);
  v96 = v23;
  v121 = MEMORY[0x277D84F90];
  v97 = v22;
  v24 = sub_219BF18F4();
  v25 = *(v24 + 16);
  v109 = v11;
  if (!v25)
  {

    v31 = MEMORY[0x277D84F90];
    v26 = *(MEMORY[0x277D84F90] + 16);
    if (!v26)
    {
      goto LABEL_37;
    }

LABEL_19:
    v115 = *(v110 + 16);
    v42 = v31 + ((*(v110 + 80) + 32) & ~*(v110 + 80));
    v113 = *(v110 + 72);
    v25 = v110 + 8;
    v43 = MEMORY[0x277D84F90];
    while (1)
    {
      v44 = v111;
      v45 = v118;
      v115(v111, v42, v118);
      v46 = sub_219BF2084();
      (*v25)(v44, v45);
      v47 = *(v46 + 16);
      v48 = v43[2];
      v49 = v48 + v47;
      if (__OFADD__(v48, v47))
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v49 <= v43[3] >> 1)
      {
        if (*(v46 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v48 <= v49)
        {
          v51 = v48 + v47;
        }

        else
        {
          v51 = v48;
        }

        v43 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v51, 1, v43);
        if (*(v46 + 16))
        {
LABEL_31:
          v52 = (v43[3] >> 1) - v43[2];
          sub_219BF3C84();
          if (v52 < v47)
          {
            goto LABEL_58;
          }

          swift_arrayInitWithCopy();

          if (v47)
          {
            v53 = v43[2];
            v40 = __OFADD__(v53, v47);
            v54 = v53 + v47;
            if (v40)
            {
              goto LABEL_60;
            }

            v43[2] = v54;
          }

          goto LABEL_21;
        }
      }

      if (v47)
      {
        goto LABEL_56;
      }

LABEL_21:
      v42 = &v113[v42];
      if (!--v26)
      {

        goto LABEL_38;
      }
    }
  }

  v27 = *(v18 + 16);
  v26 = v18 + 16;
  v113 = v27;
  v28 = (*(v26 + 64) + 32) & ~*(v26 + 64);
  v93 = v24;
  v29 = v24 + v28;
  v112 = *(v26 + 56);
  v30 = (v26 - 8);
  v31 = MEMORY[0x277D84F90];
  do
  {
    v32 = v115;
    v33 = v26;
    (v113)(v20, v29, v115);
    v26 = sub_219BF2D94();
    (*v30)(v20, v32);
    v34 = *(v26 + 16);
    v35 = v31[2];
    v36 = v35 + v34;
    if (__OFADD__(v35, v34))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v37 = swift_isUniquelyReferenced_nonNull_native();
    if (v37 && v36 <= v31[3] >> 1)
    {
      if (!*(v26 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v35 <= v36)
      {
        v38 = v35 + v34;
      }

      else
      {
        v38 = v35;
      }

      v31 = sub_2191F7160(v37, v38, 1, v31);
      if (!*(v26 + 16))
      {
LABEL_3:

        v26 = v33;
        if (v34)
        {
          goto LABEL_54;
        }

        goto LABEL_4;
      }
    }

    if ((v31[3] >> 1) - v31[2] < v34)
    {
      goto LABEL_57;
    }

    swift_arrayInitWithCopy();

    v26 = v33;
    if (v34)
    {
      v39 = v31[2];
      v40 = __OFADD__(v39, v34);
      v41 = v39 + v34;
      if (v40)
      {
        goto LABEL_59;
      }

      v31[2] = v41;
    }

LABEL_4:
    v29 += v112;
    --v25;
  }

  while (v25);

  v26 = v31[2];
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_37:

  v43 = MEMORY[0x277D84F90];
LABEL_38:
  MEMORY[0x28223BE20](v55);
  v56 = v95;
  *(&v93 - 8) = v100;
  *(&v93 - 7) = v56;
  v57 = v94;
  *(&v93 - 6) = v101;
  *(&v93 - 5) = v57;
  v58 = v102;
  *(&v93 - 4) = v96;
  *(&v93 - 3) = v58;
  *(&v93 - 2) = &v121;
  sub_2188555F4(sub_218DE765C, (&v93 - 10), v43, MEMORY[0x277D34138], sub_218855FE8, type metadata accessor for TodayModel);
  v25 = v59;

  (*(v98 + 8))(v97, v99);

  v26 = v108;
  if (qword_280E8D7A0 != -1)
  {
LABEL_61:
    swift_once();
  }

  v115 = qword_280F616D8;
  LODWORD(v113) = sub_219BF6214();
  sub_2186E7F54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v60 = swift_allocObject();
  *(v60 + 16) = xmmword_219C09EC0;
  v61 = sub_219BED784();
  v63 = v62;
  *(v60 + 56) = MEMORY[0x277D837D0];
  v111 = sub_2186FC3BC();
  v112 = v60;
  *(v60 + 64) = v111;
  *(v60 + 32) = v61;
  *(v60 + 40) = v63;
  v121 = 0;
  v122 = 0xE000000000000000;
  v64 = *(v25 + 16);
  v65 = MEMORY[0x277D84F90];
  v118 = v25;
  if (v64)
  {
    v120 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v64, 0);
    v65 = v120;
    v66 = v25 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v67 = *(v107 + 72);
    v68 = v64;
    do
    {
      v69 = v119;
      sub_218853560(v66, v119, type metadata accessor for TodayModel);
      v70 = sub_2188578D8();
      v72 = v71;
      sub_2188536F8(v69, type metadata accessor for TodayModel);
      v120 = v65;
      v74 = *(v65 + 16);
      v73 = *(v65 + 24);
      if (v74 >= v73 >> 1)
      {
        sub_21870B65C((v73 > 1), v74 + 1, 1);
        v65 = v120;
      }

      *(v65 + 16) = v74 + 1;
      v75 = v65 + 16 * v74;
      *(v75 + 32) = v70;
      *(v75 + 40) = v72;
      v66 += v67;
      --v68;
    }

    while (v68);
    v26 = v108;
    v25 = v118;
  }

  v76 = MEMORY[0x277D837D0];
  v77 = MEMORY[0x21CECC6D0](v65, MEMORY[0x277D837D0]);
  v79 = v78;

  MEMORY[0x21CECC330](v77, v79);

  v80 = v121;
  v81 = v122;
  v82 = v111;
  v83 = v112;
  *(v112 + 96) = v76;
  v83[13] = v82;
  v83[9] = v80;
  v83[10] = v81;
  sub_219BE5314("tagPlaceholderSection for %{public}@ created with models:\n %{public}@", 69, 2, &dword_2186C1000, v115, v113, v83);

  v121 = v104;
  if (v64)
  {
    v120 = MEMORY[0x277D84F90];

    sub_21885760C(0, v64, 0);
    v85 = v119;
    v84 = v120;
    v86 = v25 + ((*(v107 + 80) + 32) & ~*(v107 + 80));
    v87 = *(v107 + 72);
    do
    {
      sub_218853560(v86, v85, type metadata accessor for TodayModel);
      sub_218853560(v85, v114, type metadata accessor for TodayModel);
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE5FB4();
      sub_2188536F8(v85, type metadata accessor for TodayModel);
      v120 = v84;
      v89 = *(v84 + 16);
      v88 = *(v84 + 24);
      if (v89 >= v88 >> 1)
      {
        sub_21885760C((v88 > 1), v89 + 1, 1);
        v84 = v120;
      }

      *(v84 + 16) = v89 + 1;
      (*(v116 + 32))(v84 + ((*(v116 + 80) + 32) & ~*(v116 + 80)) + *(v116 + 72) * v89, v26, v117);
      v86 += v87;
      --v64;
    }

    while (v64);
  }

  else
  {

    v84 = MEMORY[0x277D84F90];
  }

  v90 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
  v91 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v84, v117, v90, v91);
  sub_2186EB3E8();
  sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
  return sub_219BE6924();
}

void sub_218DE215C(uint64_t a1, uint64_t a2)
{
  v4 = sub_219BF0644();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v26[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  v10 = *MEMORY[0x277D32EF8];
  (*(v5 + 8))(v8, v4);
  v11 = [*(a2 + 232) allSortedArticleIDsInReadingList];
  v12 = sub_219BF5924();

  if (v9 != v10)
  {
    goto LABEL_8;
  }

  MEMORY[0x28223BE20](v13);
  *&v26[-16] = a2;
  sub_2195E6068(sub_218DE76AC, &v26[-32], v12);
  type metadata accessor for SavedStoriesTodayFeedGroup(0);
  v17 = sub_219A79734();
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  v18 = v16;
  v19 = v15;
  v20 = v14;
  sub_219BF7934();
  swift_unknownObjectRetain_n();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    swift_unknownObjectRelease();
    v21 = MEMORY[0x277D84F90];
  }

  v22 = *(v21 + 16);

  v23 = (v18 >> 1) - v19;
  if (__OFSUB__(v18 >> 1, v19))
  {
    __break(1u);
LABEL_8:
    type metadata accessor for SavedStoriesTodayFeedGroup(0);
    v17 = sub_219A79734();
    if ((v16 & 1) == 0)
    {
      goto LABEL_9;
    }

    v18 = v16;
    v19 = v15;
    v20 = v14;
    sub_219BF7934();
    swift_unknownObjectRetain_n();
    v24 = swift_dynamicCastClass();
    if (!v24)
    {
      swift_unknownObjectRelease();
      v24 = MEMORY[0x277D84F90];
    }

    v22 = *(v24 + 16);

    v23 = (v18 >> 1) - v19;
    if (__OFSUB__(v18 >> 1, v19))
    {
      __break(1u);
      return;
    }
  }

  if (v22 == v23)
  {
    v25 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v25)
    {
      return;
    }

    goto LABEL_15;
  }

  swift_unknownObjectRelease();
  v16 = v18;
  v15 = v19;
  v14 = v20;
LABEL_9:
  sub_218B666EC(v17, v14, v15, v16);
LABEL_15:
  swift_unknownObjectRelease();
}

uint64_t sub_218DE2454@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a4;
  v107 = a3;
  v111 = a5;
  sub_218853400(0);
  v120 = *(v8 - 8);
  v121 = v8;
  MEMORY[0x28223BE20](v8);
  v113 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v122 = type metadata accessor for TodayModel(0);
  v112 = *(v122 - 8);
  MEMORY[0x28223BE20](v122);
  v118 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v124 = &v98 - v12;
  sub_218853494(0);
  MEMORY[0x28223BE20](v13 - 8);
  v110 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_219BF2094();
  v114 = *(v123 - 8);
  MEMORY[0x28223BE20](v123);
  v115 = &v98 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = sub_219BF2DA4();
  v16 = *(v119 - 8);
  MEMORY[0x28223BE20](v119);
  v18 = &v98 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E7F54(0, &unk_280EE34A0, MEMORY[0x277D2D148], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v98 - v20;
  v104 = sub_219BF1904();
  v103 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v23 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = *(v5 + 88);
  v108 = a2;
  sub_219BED874();
  v109 = a1;
  v99 = sub_2188539DC(a1);
  v101 = v24;
  v25 = sub_219BEBD44();
  v26 = *(*(v25 - 8) + 56);
  v105 = v21;
  v26(v21, 1, 1, v25);
  v126 = MEMORY[0x277D84F90];
  v102 = v23;
  v27 = sub_219BF18F4();
  v28 = *(v27 + 16);
  if (!v28)
  {

    v34 = MEMORY[0x277D84F90];
    v29 = *(MEMORY[0x277D84F90] + 16);
    if (!v29)
    {
      goto LABEL_37;
    }

LABEL_19:
    v119 = *(v114 + 16);
    v18 = v34 + ((*(v114 + 80) + 32) & ~*(v114 + 80));
    v117 = *(v114 + 72);
    v45 = (v114 + 8);
    v46 = MEMORY[0x277D84F90];
    while (1)
    {
      v47 = v115;
      v48 = v123;
      (v119)(v115, v18, v123);
      v49 = sub_219BF2084();
      (*v45)(v47, v48);
      v50 = *(v49 + 16);
      v51 = v46[2];
      v52 = v51 + v50;
      if (__OFADD__(v51, v50))
      {
        goto LABEL_55;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v52 <= v46[3] >> 1)
      {
        if (*(v49 + 16))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v51 <= v52)
        {
          v54 = v51 + v50;
        }

        else
        {
          v54 = v51;
        }

        v46 = sub_218855C7C(isUniquelyReferenced_nonNull_native, v54, 1, v46);
        if (*(v49 + 16))
        {
LABEL_31:
          v55 = (v46[3] >> 1) - v46[2];
          sub_219BF3C84();
          if (v55 < v50)
          {
            goto LABEL_58;
          }

          swift_arrayInitWithCopy();

          if (v50)
          {
            v56 = v46[2];
            v43 = __OFADD__(v56, v50);
            v57 = v56 + v50;
            if (v43)
            {
              goto LABEL_60;
            }

            v46[2] = v57;
          }

          goto LABEL_21;
        }
      }

      if (v50)
      {
        goto LABEL_56;
      }

LABEL_21:
      v18 += v117;
      if (!--v29)
      {

        goto LABEL_38;
      }
    }
  }

  v30 = *(v16 + 16);
  v29 = v16 + 16;
  v117 = v30;
  v31 = (*(v29 + 64) + 32) & ~*(v29 + 64);
  v98 = v27;
  v32 = v27 + v31;
  v116 = *(v29 + 56);
  v33 = (v29 - 8);
  v34 = MEMORY[0x277D84F90];
  do
  {
    v35 = v119;
    v36 = v29;
    (v117)(v18, v32, v119);
    v29 = sub_219BF2D94();
    (*v33)(v18, v35);
    v37 = *(v29 + 16);
    v38 = v34[2];
    v39 = v38 + v37;
    if (__OFADD__(v38, v37))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
LABEL_59:
      __break(1u);
LABEL_60:
      __break(1u);
      goto LABEL_61;
    }

    v40 = swift_isUniquelyReferenced_nonNull_native();
    if (v40 && v39 <= v34[3] >> 1)
    {
      if (!*(v29 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v38 <= v39)
      {
        v41 = v38 + v37;
      }

      else
      {
        v41 = v38;
      }

      v34 = sub_2191F7160(v40, v41, 1, v34);
      if (!*(v29 + 16))
      {
LABEL_3:

        v29 = v36;
        if (v37)
        {
          goto LABEL_54;
        }

        goto LABEL_4;
      }
    }

    if ((v34[3] >> 1) - v34[2] < v37)
    {
      goto LABEL_57;
    }

    swift_arrayInitWithCopy();

    v29 = v36;
    if (v37)
    {
      v42 = v34[2];
      v43 = __OFADD__(v42, v37);
      v44 = v42 + v37;
      if (v43)
      {
        goto LABEL_59;
      }

      v34[2] = v44;
    }

LABEL_4:
    v32 += v116;
    --v28;
  }

  while (v28);

  v29 = v34[2];
  if (v29)
  {
    goto LABEL_19;
  }

LABEL_37:

  v46 = MEMORY[0x277D84F90];
LABEL_38:
  MEMORY[0x28223BE20](v58);
  v59 = v100;
  *(&v98 - 8) = v106;
  *(&v98 - 7) = v59;
  v60 = v99;
  *(&v98 - 6) = v107;
  *(&v98 - 5) = v60;
  v61 = v105;
  *(&v98 - 4) = v101;
  *(&v98 - 3) = v61;
  *(&v98 - 2) = &v126;
  sub_2188555F4(sub_218DE7684, (&v98 - 10), v46, MEMORY[0x277D34138], sub_218855FE8, type metadata accessor for TodayModel);
  v18 = v62;

  (*(v103 + 8))(v102, v104);

  sub_218DE75EC(v61, &unk_280EE34A0, MEMORY[0x277D2D148]);
  v29 = v113;
  if (qword_280E8D7A0 != -1)
  {
LABEL_61:
    swift_once();
  }

  v63 = qword_280F616D8;
  v64 = sub_219BF6214();
  sub_2186E7F54(0, &qword_280E8B5B0, sub_2186C66F8, MEMORY[0x277D84560]);
  v65 = swift_allocObject();
  *(v65 + 16) = xmmword_219C09EC0;
  v66 = sub_219BED784();
  v68 = v67;
  *(v65 + 56) = MEMORY[0x277D837D0];
  v117 = sub_2186FC3BC();
  *(v65 + 64) = v117;
  *(v65 + 32) = v66;
  *(v65 + 40) = v68;
  v119 = v65;
  v126 = 0;
  v127 = 0xE000000000000000;
  v69 = *(v18 + 2);
  v70 = MEMORY[0x277D84F90];
  v123 = v18;
  if (v69)
  {
    LODWORD(v115) = v64;
    v116 = v63;
    v125 = MEMORY[0x277D84F90];
    sub_21870B65C(0, v69, 0);
    v70 = v125;
    v71 = &v18[(*(v112 + 80) + 32) & ~*(v112 + 80)];
    v72 = *(v112 + 72);
    v73 = v69;
    do
    {
      v74 = v124;
      sub_218853560(v71, v124, type metadata accessor for TodayModel);
      v75 = sub_2188578D8();
      v77 = v76;
      sub_2188536F8(v74, type metadata accessor for TodayModel);
      v125 = v70;
      v79 = *(v70 + 16);
      v78 = *(v70 + 24);
      if (v79 >= v78 >> 1)
      {
        sub_21870B65C((v78 > 1), v79 + 1, 1);
        v70 = v125;
      }

      *(v70 + 16) = v79 + 1;
      v80 = v70 + 16 * v79;
      *(v80 + 32) = v75;
      *(v80 + 40) = v77;
      v71 += v72;
      --v73;
    }

    while (v73);
    v29 = v113;
    v18 = v123;
    v63 = v116;
    v64 = v115;
  }

  v81 = MEMORY[0x277D837D0];
  v82 = MEMORY[0x21CECC6D0](v70, MEMORY[0x277D837D0]);
  v84 = v83;

  MEMORY[0x21CECC330](v82, v84);

  v85 = v126;
  v86 = v127;
  v87 = v119;
  v88 = v117;
  *(v119 + 96) = v81;
  v87[13] = v88;
  v87[9] = v85;
  v87[10] = v86;
  sub_219BE5314("headlinePlaceholderSection for %{public}@ created with models:\n %{public}@", 74, 2, &dword_2186C1000, v63, v64, v87);

  v126 = v109;
  if (v69)
  {
    v125 = MEMORY[0x277D84F90];

    sub_21885760C(0, v69, 0);
    v90 = v124;
    v89 = v125;
    v91 = &v18[(*(v112 + 80) + 32) & ~*(v112 + 80)];
    v92 = *(v112 + 72);
    do
    {
      sub_218853560(v91, v90, type metadata accessor for TodayModel);
      sub_218853560(v90, v118, type metadata accessor for TodayModel);
      sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
      sub_219BE5FB4();
      sub_2188536F8(v90, type metadata accessor for TodayModel);
      v125 = v89;
      v94 = *(v89 + 16);
      v93 = *(v89 + 24);
      if (v94 >= v93 >> 1)
      {
        sub_21885760C((v93 > 1), v94 + 1, 1);
        v89 = v125;
      }

      *(v89 + 16) = v94 + 1;
      (*(v120 + 32))(v89 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v94, v29, v121);
      v91 += v92;
      --v69;
    }

    while (v69);
  }

  else
  {

    v89 = MEMORY[0x277D84F90];
  }

  v95 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
  v96 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
  MEMORY[0x21CEB9170](v89, v121, v95, v96);
  sub_2186EB3E8();
  sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
  return sub_219BE6924();
}

void sub_218DE31CC(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v50 = a3;
  v49 = a2;
  v46 = a4;
  sub_218853494(0);
  MEMORY[0x28223BE20](v5 - 8);
  v45 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BEF8A4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  sub_219BE6934();
  v14 = sub_2193B4730();

  if (v14)
  {
    v15 = [v14 identifier];
    swift_unknownObjectRelease();
    v43 = sub_219BF5414();
    v44 = v16;

    sub_219BE6934();
    v17 = a1;
    if (((v51 >> 58) & 0x3C | (v51 >> 1) & 3) == 1)
    {
      v18 = swift_projectBox();
      sub_218853560(v18, v9, type metadata accessor for CuratedTodayFeedGroup);
      (*(v11 + 16))(v13, &v9[*(v7 + 28)], v10);
      sub_2188536F8(v9, type metadata accessor for CuratedTodayFeedGroup);
    }

    else
    {
      (*(v11 + 104))(v13, *MEMORY[0x277D32768], v10);
    }

    v21 = v48;
    v20 = v49;

    v22 = sub_219BEF894();
    (*(v11 + 8))(v13, v10);
    v23 = v44;
    if (v22)
    {

      v19 = v50;
      goto LABEL_8;
    }

    v27 = v21[5];
    v28 = [v27 mutedTagIDs];
    v19 = v50;
    if (v28)
    {
      v29 = v28;
      v30 = sub_219BF5D44();

      v31 = v43;
      LOBYTE(v29) = sub_2188537B8(v43, v23, v30);

      if (v29)
      {
        goto LABEL_17;
      }

      v39 = [v27 ignoredTagIDs];
      if (v39)
      {
        v40 = v39;
        v41 = sub_219BF5D44();

        LOBYTE(v40) = sub_2188537B8(v31, v23, v41);

        if ((v40 & 1) == 0)
        {

          goto LABEL_8;
        }

LABEL_17:
        type metadata accessor for TodaySectionFactoryError(0);
        sub_2186EF9CC(&qword_27CC12258, type metadata accessor for TodaySectionFactoryError, &unk_219C3A0D4);
        swift_allocError();
        *v42 = v31;
        v42[1] = v23;
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    return;
  }

  v17 = a1;
  v19 = v50;
  v21 = v48;
  v20 = v49;
LABEL_8:
  sub_219BEE5A4();
  sub_218BB79DC(v20, v19);
  v24 = sub_218AF1EEC(v20, v19);
  v25 = v47;
  sub_218DE3860(v17, v21, v20, v19, v24);
  if (!v25)
  {
    v51 = v26;
    MEMORY[0x28223BE20](v26);
    *(&v43 - 6) = v24;
    *(&v43 - 5) = v21;
    *(&v43 - 4) = v32;
    *(&v43 - 3) = v20;
    *(&v43 - 16) = v19;

    sub_218945840(sub_218DE78E8, (&v43 - 8));
    v34 = v33;
    sub_218853400(0);
    v36 = v35;
    v37 = sub_2186EF9CC(&qword_280EE5D38, sub_218853400, MEMORY[0x277D6D408]);
    v38 = sub_2186EF9CC(&qword_280EE5D40, sub_218853400, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v34, v36, v37, v38);
    type metadata accessor for TodayModel(0);
    sub_2186EB3E8();
    sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
    sub_219BE6924();
  }
}

void sub_218DE3860(uint64_t a1, void *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v68 = a5;
  v67 = a4;
  v66 = a3;
  v64 = a2;
  v62 = type metadata accessor for SpotlightTodayFeedGroup(0);
  MEMORY[0x28223BE20](v62);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v61);
  v9 = &v58 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MyMagazinesMagazineFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  v14 = v13;
  v59 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v58 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for TodayBlueprintCollapsedSection(0);
  v65 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v60 = &v58 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v58 - v19;
  v21 = type metadata accessor for TodaySectionGapDescriptor(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v58 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a1;
  v70 = v14;
  sub_219BE6934();
  v24 = (v73 >> 58) & 0x3C | (v73 >> 1) & 3;
  if (v24 > 13)
  {
    if (v24 == 14)
    {
      v39 = swift_projectBox();
      sub_218853560(v39, v7, type metadata accessor for SpotlightTodayFeedGroup);
      if (sub_219BEE554())
      {
        v40 = sub_219BED884();
        if (!__OFADD__(*v41, 1))
        {
          ++*v41;
          v40(v72, 0);
          swift_allocBox();
          sub_2187C5960(v7, v42, type metadata accessor for SpotlightTodayFeedGroup);

          return;
        }

        goto LABEL_27;
      }

      sub_219BE6934();
      v43 = type metadata accessor for SpotlightTodayFeedGroup;
      v44 = v7;
      goto LABEL_22;
    }

    if (v24 == 33)
    {
      sub_2186EBC7C(0);
      v30 = v29;
      v31 = swift_projectBox();
      v32 = *(v31 + *(v30 + 48));
      sub_218853560(v31, v12, type metadata accessor for MyMagazinesMagazineFeedGroup);
      if (v67 == 3 && !v66)
      {
        v33 = v64;
        v34 = v64[22];
        v35 = v64[23];
        __swift_project_boxed_opaque_existential_1(v64 + 19, v34);
        sub_2195ED0E0(v33 + 24, v34, v35);
        if (v36 != v32)
        {
          v46 = v36;
          swift_allocBox();
          v48 = v47;
          v49 = *(v30 + 48);
          sub_2187C5960(v12, v47, type metadata accessor for MyMagazinesMagazineFeedGroup);

          *(v48 + v49) = v46;
          return;
        }
      }

      sub_219BE6934();
      sub_2188536F8(v12, type metadata accessor for MyMagazinesMagazineFeedGroup);
LABEL_23:

      return;
    }

LABEL_14:

    sub_219BE6934();
    return;
  }

  if (!v24)
  {
    v37 = swift_projectBox();
    v38 = v63;
    if ((*(v65 + 48))(v37, 1, v63) != 1)
    {
      sub_218853560(v37, v23, type metadata accessor for TodaySectionGapDescriptor);
      sub_2187C5960(v23, v20, type metadata accessor for TodayBlueprintCollapsedSection);
      v45 = v71;
      sub_218DE31CC(v20, v66, v67, v16);
      if (v45)
      {
        sub_2188536F8(v20, type metadata accessor for TodayBlueprintCollapsedSection);
      }

      else
      {
        v50 = v60;
        (*(v59 + 32))(v60, v16, v70);
        v51 = &v20[*(v38 + 20)];
        v53 = *v51;
        v52 = *(v51 + 1);
        v54 = *&v20[*(v38 + 24)];

        sub_2188536F8(v20, type metadata accessor for TodayBlueprintCollapsedSection);
        v55 = (v50 + *(v38 + 20));
        *v55 = v53;
        v55[1] = v52;
        *(v50 + *(v38 + 24)) = v54;
        swift_allocBox();
        v57 = v56;
        sub_2187C5960(v50, v56, type metadata accessor for TodayBlueprintCollapsedSection);
        (*(v65 + 56))(v57, 0, 1, v38);
      }

      goto LABEL_23;
    }

    goto LABEL_14;
  }

  if (v24 != 1)
  {
    goto LABEL_14;
  }

  v25 = swift_projectBox();
  sub_218853560(v25, v9, type metadata accessor for CuratedTodayFeedGroup);
  if ((sub_219BEE554() & 1) == 0)
  {
    sub_219BE6934();
    v43 = type metadata accessor for CuratedTodayFeedGroup;
    v44 = v9;
LABEL_22:
    sub_2188536F8(v44, v43);
    goto LABEL_23;
  }

  v26 = sub_219BED884();
  if (!__OFADD__(*v27, 1))
  {
    ++*v27;
    v26(v72, 0);
    swift_allocBox();
    sub_2187C5960(v9, v28, type metadata accessor for CuratedTodayFeedGroup);

    return;
  }

  __break(1u);
LABEL_27:
  __break(1u);
}

uint64_t sub_218DE3FF4@<X0>(void (*a1)(char *, uint64_t)@<X0>, void (*a2)(char *, uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, uint64_t a7@<X8>)
{
  v185 = a6;
  v158 = a5;
  v214 = a4;
  v211 = a3;
  v208 = a2;
  v218 = a7;
  v189 = sub_219BF0B74();
  v188 = *(v189 - 8);
  MEMORY[0x28223BE20](v189);
  v187 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v194 = v9;
  v192 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v190 = &v156 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v186 = sub_219BEEAD4();
  v184 = *(v186 - 8);
  MEMORY[0x28223BE20](v186);
  v183 = &v156 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = sub_219BF1D54();
  v198 = *(v195 - 8);
  MEMORY[0x28223BE20](v195);
  v159 = &v156 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v182 = &v156 - v14;
  MEMORY[0x28223BE20](v15);
  v160 = &v156 - v16;
  sub_2186EB228(0);
  v193 = v17;
  v191 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v201 = &v156 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v176 = sub_219BEDB94();
  v175 = *(v176 - 8);
  MEMORY[0x28223BE20](v176);
  v173 = &v156 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB140(0);
  v181 = v20;
  v180 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v179 = &v156 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = sub_219BF0AC4();
  v168 = *(v169 - 8);
  MEMORY[0x28223BE20](v169);
  v167 = &v156 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EFC0C(0);
  v178 = v23;
  v177 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v174 = &v156 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x277D83D88];
  sub_2186E7F54(0, &qword_280E90EB0, MEMORY[0x277D32F30], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v26 - 8);
  v161 = &v156 - v27;
  v166 = sub_219BF07A4();
  v165 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v164 = &v156 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38(0);
  v172 = v29;
  v171 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v199 = &v156 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E7F54(0, &unk_280E90A30, MEMORY[0x277D33058], v25);
  MEMORY[0x28223BE20](v31 - 8);
  v33 = &v156 - v32;
  v196 = sub_219BF1094();
  v200 = *(v196 - 8);
  MEMORY[0x28223BE20](v196);
  v156 = &v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v157 = &v156 - v36;
  MEMORY[0x28223BE20](v37);
  v39 = &v156 - v38;
  sub_2186EAC68(0);
  v170 = v40;
  v197 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v202 = &v156 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186E7F54(0, &unk_280EE34A0, MEMORY[0x277D2D148], v25);
  MEMORY[0x28223BE20](v42 - 8);
  v163 = &v156 - v43;
  v44 = sub_219BF0BD4();
  v209 = *(v44 - 8);
  v210 = v44;
  MEMORY[0x28223BE20](v44);
  v215 = &v156 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_219BF0F34();
  v47 = *(v46 - 8);
  v203 = v46;
  v204 = v47;
  MEMORY[0x28223BE20](v46);
  v162 = &v156 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v51 = &v156 - v50;
  MEMORY[0x28223BE20](v52);
  v54 = &v156 - v53;
  sub_2186EAB88(0);
  v205 = *(v55 - 8);
  v206 = v55;
  MEMORY[0x28223BE20](v55);
  v57 = &v156 - ((v56 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v58);
  v60 = &v156 - v59;
  v61 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v61);
  v207 = (&v156 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v63);
  v213 = &v156 - v64;
  MEMORY[0x28223BE20](v65);
  v67 = &v156 - v66;
  sub_218853400(0);
  v216 = v68;
  v217 = a1;
  sub_219BE5FC4();
  v212 = v61;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_218A1C3F0(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
      v110 = *(v109 + 48);
      v111 = sub_219BF1584();
      (*(*(v111 - 8) + 8))(&v67[v110], v111);
      v69 = type metadata accessor for TodayGapLocation;
      goto LABEL_3;
    case 2u:
      v86 = v205;
      v85 = v206;
      (*(v205 + 32))(v60, v67, v206);
      sub_219BF07D4();
      sub_219BF0F14();
      v87 = v203;
      v207 = *(v204 + 8);
      (v207)(v54, v203);
      v88 = sub_219BEE584();
      swift_unknownObjectRelease();
      if (v88)
      {
        v217 = *(v211 + 88);
        sub_219BF07D4();
        v216 = sub_219BF0F14();
        v89 = v207;
        (v207)(v54, v87);
        v90 = v215;
        sub_219BF07E4();
        v214 = sub_2188539DC(v214);
        sub_219BF07D4();
        v91 = v163;
        sub_219BF0E54();
        v89(v51, v87);
        sub_219BEE204();
        swift_unknownObjectRelease();

        sub_218DE75EC(v91, &unk_280EE34A0, MEMORY[0x277D2D148]);
        (*(v209 + 8))(v90, v210);
        swift_storeEnumTagMultiPayload();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
        sub_219BE5FB4();
        return (*(v205 + 8))(v60, v206);
      }

      (*(v86 + 8))(v60, v85);
      return (*(*(v216 - 8) + 16))(v218, v217);
    case 3u:
      v101 = v197;
      v102 = v202;
      v103 = v67;
      v104 = v170;
      (*(v197 + 32))(v202, v103, v170);
      sub_219BF07D4();
      sub_219BF1074();
      v105 = v200 + 8;
      v207 = *(v200 + 8);
      (v207)(v39, v196);
      v107 = v203;
      v106 = v204;
      if ((*(v204 + 48))(v33, 1, v203) == 1)
      {
        (*(v101 + 8))(v102, v104);
        sub_218DE75EC(v33, &unk_280E90A30, MEMORY[0x277D33058]);
        return (*(*(v216 - 8) + 16))(v218, v217);
      }

      v200 = v105;
      v144 = v162;
      (*(v106 + 32))(v162, v33, v107);
      sub_219BF0F14();
      v145 = sub_219BEE584();
      swift_unknownObjectRelease();
      if (v145)
      {
        v217 = *(v211 + 88);
        v216 = sub_219BF0F14();
        sub_219BF07E4();
        sub_2188539DC(v214);
        v146 = v104;
        v147 = sub_219BEBD44();
        v148 = v163;
        (*(*(v147 - 8) + 56))(v163, 1, 1, v147);
        sub_219BEE204();

        sub_218DE75EC(v148, &unk_280EE34A0, MEMORY[0x277D2D148]);
        v149 = v156;
        sub_219BF07D4();
        v150 = v206;
        sub_219BF07D4();
        v151 = v157;
        sub_219BF1054();
        v152 = *(v204 + 8);
        v204 += 8;
        v217 = v152;
        v152(v54, v203);
        v153 = v196;
        v154 = v207;
        (v207)(v149, v196);
        v155 = v202;
        sub_219BF0834();
        swift_unknownObjectRelease();
        v154(v151, v153);
        (*(v205 + 8))(v57, v150);
        (*(v209 + 8))(v215, v210);
        swift_storeEnumTagMultiPayload();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
        sub_219BE5FB4();
        v217(v162, v203);
        return (*(v197 + 8))(v155, v146);
      }

      (*(v106 + 8))(v144, v107);
      (*(v101 + 8))(v202, v104);
      return (*(*(v216 - 8) + 16))(v218, v217);
    case 4u:
    case 5u:
    case 7u:
    case 8u:
    case 9u:
    case 0xBu:
      v69 = type metadata accessor for TodayModel;
LABEL_3:
      v70 = v69;
      v71 = v67;
      goto LABEL_4;
    case 6u:
      sub_218A1C3F0(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
      (*(v205 + 8))(&v67[*(v76 + 48)], v206);
      sub_2186EAD48(0);
      (*(*(v77 - 8) + 8))(v67, v77);
      return (*(*(v216 - 8) + 16))(v218, v217);
    case 0xAu:
      v115 = v171;
      v116 = v199;
      v117 = v172;
      (*(v171 + 32))(v199, v67, v172);
      v118 = v164;
      sub_219BF07D4();
      v119 = sub_219BF06B4();
      v120 = *(v165 + 8);
      v121 = v166;
      v120(v118, v166);
      v122 = MEMORY[0x21CEC5300](v119);

      if (v122)
      {
        v217 = *(v211 + 88);
        sub_219BF07D4();
        v123 = sub_219BF06B4();
        v120(v118, v121);
        v124 = v215;
        sub_219BF07E4();
        sub_2188539DC(v214);
        v125 = sub_219BF0744();
        v126 = v161;
        (*(*(v125 - 8) + 56))(v161, 1, 1, v125);
        sub_219BEE194();

        sub_218DE75EC(v126, &qword_280E90EB0, MEMORY[0x277D32F30]);
        (*(v209 + 8))(v124, v210);
        swift_storeEnumTagMultiPayload();
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
        sub_219BE5FB4();
        return (*(v115 + 8))(v199, v117);
      }

      (*(v115 + 8))(v116, v117);
      return (*(*(v216 - 8) + 16))(v218, v217);
    case 0xCu:
      v78 = v177;
      v79 = v174;
      v80 = v67;
      v81 = v178;
      (*(v177 + 32))(v174, v80, v178);
      v82 = v167;
      sub_219BF07D4();
      sub_219BF0AA4();
      (*(v168 + 8))(v82, v169);
      v83 = v215;
      sub_219BF07E4();
      sub_2188539DC(v214);
      v84 = v213;
      sub_219BEE1C4();
      swift_unknownObjectRelease();

      (*(v209 + 8))(v83, v210);
      goto LABEL_19;
    case 0xDu:
      v78 = v180;
      v79 = v179;
      v112 = v67;
      v81 = v181;
      (*(v180 + 32))(v179, v112, v181);
      v113 = v173;
      sub_219BF07D4();
      sub_219BEDB74();
      (*(v175 + 8))(v113, v176);
      v114 = v215;
      sub_219BF07E4();
      sub_2188539DC(v214);
      v84 = v213;
      sub_219BEE134();
      swift_unknownObjectRelease();

      (*(v209 + 8))(v114, v210);
      goto LABEL_19;
    case 0xEu:
      v72 = v191;
      v73 = v201;
      v74 = v193;
      (*(v191 + 32))(v201, v67, v193);
      if (v185 > 1u)
      {
        v75 = v195;
        if (v185 == 2)
        {
          v127 = v158;

          goto LABEL_25;
        }
      }

      else
      {
        v75 = v195;
      }

      v127 = sub_2194AF2AC(MEMORY[0x277D84F90]);
LABEL_25:
      v128 = v183;
      sub_219BF07D4();
      v129 = v182;
      sub_219BEEAB4();
      (*(v184 + 8))(v128, v186);
      v130 = sub_219BF1D24();
      v132 = v131;
      v133 = v129;
      v134 = v75;
      v208 = *(v198 + 8);
      v208(v133, v75);
      if (*(v127 + 16))
      {
        v135 = sub_21870F700(v130, v132);
        v137 = v136;

        if (v137)
        {
          v138 = v198;
          v139 = *(v127 + 56) + *(v198 + 72) * v135;
          v140 = v159;
          (*(v198 + 16))(v159, v139, v75);

          v141 = v160;
          (*(v138 + 32))(v160, v140, v134);
          v142 = v215;
          sub_219BF07E4();
          sub_2188539DC(v214);
          v143 = v213;
          sub_219BEE154();

          (*(v209 + 8))(v142, v210);
          swift_storeEnumTagMultiPayload();
          sub_218853560(v143, v207, type metadata accessor for TodayModel);
          sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
          sub_219BE5FB4();
          sub_2188536F8(v143, type metadata accessor for TodayModel);
          v208(v141, v134);
          return (*(v72 + 8))(v201, v74);
        }

        v73 = v201;
      }

      else
      {
      }

      (*(v72 + 8))(v73, v74);
      return (*(*(v216 - 8) + 16))(v218, v217);
    case 0xFu:
      v78 = v192;
      v79 = v190;
      v93 = v67;
      v81 = v194;
      (*(v192 + 32))(v190, v93, v194);
      v94 = v187;
      sub_219BF07D4();
      v95 = sub_219BF0B44();
      v96 = *(v188 + 8);
      v97 = v189;
      v96(v94, v189);
      v98 = MEMORY[0x21CEC5310](v95);

      if (v98)
      {
        v217 = *(v211 + 88);
        sub_219BF07D4();
        v99 = sub_219BF0B44();
        v96(v94, v97);
        v100 = v215;
        sub_219BF07E4();
        sub_2188539DC(v214);
        v84 = v213;
        sub_219BEE1E4();

        (*(v209 + 8))(v100, v210);
LABEL_19:
        swift_storeEnumTagMultiPayload();
        sub_218853560(v84, v207, type metadata accessor for TodayModel);
        sub_2186EF9CC(&qword_280EDF9E0, type metadata accessor for TodayModel, &unk_219CCC5A4);
        sub_219BE5FB4();
        sub_2188536F8(v84, type metadata accessor for TodayModel);
        return (*(v78 + 8))(v79, v81);
      }

      else
      {
        (*(v78 + 8))(v79, v81);
        return (*(*(v216 - 8) + 16))(v218, v217);
      }

    default:

      sub_2186EA920(0);
      v70 = type metadata accessor for TodayGapLocation;
      v71 = &v67[*(v108 + 48)];
LABEL_4:
      sub_2188536F8(v71, v70);
      return (*(*(v216 - 8) + 16))(v218, v217);
  }
}