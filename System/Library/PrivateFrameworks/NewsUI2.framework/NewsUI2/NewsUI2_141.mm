uint64_t sub_219674FF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219675098()
{
  v1 = v0[36];
  v3 = v0[34];
  v2 = v0[35];
  v4 = v0[33];
  v5 = v0[28];

  sub_218C6F990(v4, v3, v2, v1);
  sub_219679DA4(v5, type metadata accessor for FoodBestOfRecipesClusteringRequest);

  v6 = v0[1];

  return v6();
}

uint64_t sub_219675198(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_219BF3C84();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_219BEE6F4();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_219BF14C4();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  sub_21873F65C(0);
  v3[22] = swift_task_alloc();
  v7 = sub_219BDB954();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  sub_219BF2124();
  v3[26] = swift_task_alloc();
  v8 = sub_219BEFA04();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v9 = sub_219BF01F4();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = sub_219BEFC44();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2196754F4, 0, 0);
}

uint64_t sub_2196754F4()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching channel recipes..", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF064();
  v0[37] = v0[7];

  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_21967574C;
  v6 = v0[36];

  return MEMORY[0x2821D18D0](v6);
}

uint64_t sub_21967574C()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_21967AB6C;
  }

  else
  {

    v2 = sub_219675868;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219675868(uint64_t a1)
{
  v2 = v1[39];
  sub_219BEF164();
  if (v2)
  {
    (*(v1[35] + 8))(v1[36], v1[34]);

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[32];
    v6 = v1[30];
    v7 = v1[31];
    v8 = *(v1[8] + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);

    sub_219BEFC14();
    sub_2186E2394();
    v1[5] = v9;
    v1[6] = sub_219667B1C(&qword_280E8E9B0, sub_2186E2394, MEMORY[0x277D83B78]);
    v1[2] = v8;
    sub_219BF01D4();
    v10 = *(v7 + 8);
    v1[40] = v10;
    v1[41] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);
    v11 = sub_219BF01E4();
    v1[42] = v11;
    v12 = swift_task_alloc();
    v1[43] = v12;
    *v12 = v1;
    v12[1] = sub_219675AE4;
    v13 = v1[29];

    return sub_219677D3C(v13, v11);
  }
}

uint64_t sub_219675AE4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_21967AB70;
  }

  else
  {
    v4 = sub_219675C20;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219675C20()
{
  v59 = v0;
  v1 = *(v0 + 192);
  v57 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_2186E4C9C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v6 = [sub_219BEF9F4() displayName];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v7 = v5;
  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BEF9F4();
  swift_getObjectType();
  sub_219BF6244();
  swift_unknownObjectRelease();
  if ((*(v1 + 48))(v2, 1, v57) != 1)
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
    sub_219BF20E4();
    sub_219BF14A4();
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = (v9 + 1);
    if (v9 >= v8 >> 1)
    {
      goto LABEL_25;
    }

    goto LABEL_4;
  }

  sub_219679DA4(*(v0 + 176), sub_21873F65C);
  while (1)
  {
    v14 = *(v0 + 352);
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = *MEMORY[0x277D32840];
    v19 = sub_219BEF9C4();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    (*(v15 + 104))(v16, *MEMORY[0x277D320D8], v17);
    sub_2186E4C9C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v20 = *(sub_219BF3E84() - 8);
    v4 = *(v20 + 72);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09EC0;
    v9 = v22 + v21;

    v23 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v23);
    sub_218F0BB90(v23);
    sub_219BF3E74();
    v24 = v14 >> 62 ? sub_219BF7214() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      break;
    }

    v58 = v23;
    v10 = &v58;
    sub_218C34A88(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = v58;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v26 = 0;
        v27 = *(v0 + 104);
        v28 = *MEMORY[0x277D34120];
        do
        {
          v29 = *(v0 + 120);
          v30 = *(v0 + 96);
          *v29 = MEMORY[0x21CECE0F0](v26, *(v0 + 352));
          (*(v27 + 104))(v29, v28, v30);
          v58 = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_218C34A88((v31 > 1), v32 + 1, 1);
            v25 = v58;
          }

          v33 = *(v0 + 120);
          v34 = *(v0 + 96);
          ++v26;
          *(v25 + 16) = v32 + 1;
          (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v32, v33, v34);
        }

        while (v24 != v26);
      }

      else
      {
        v35 = *(v0 + 104);
        v36 = (*(v0 + 352) + 32);
        v55 = *(v35 + 104);
        do
        {
          v37 = *v36;
          **(v0 + 112) = *v36;
          v55();
          v58 = v25;
          v38 = *(v25 + 16);
          v39 = *(v25 + 24);
          v40 = v37;
          if (v38 >= v39 >> 1)
          {
            sub_218C34A88((v39 > 1), v38 + 1, 1);
            v25 = v58;
          }

          v41 = *(v0 + 112);
          v42 = *(v0 + 96);
          *(v25 + 16) = v38 + 1;
          (*(v35 + 32))(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v38, v41, v42);
          ++v36;
          --v24;
        }

        while (v24);
      }

      break;
    }

    __break(1u);
LABEL_25:
    v7 = sub_2191F7664((v8 > 1), v10, 1, v7);
LABEL_4:
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    *(v7 + 2) = v10;
    (*(v12 + 32))(&v7[v4 + v9 * v56], v11, v13);
  }

  v53 = *(v0 + 320);
  v43 = *(v0 + 288);
  v44 = *(v0 + 280);
  v52 = *(v0 + 264);
  v54 = *(v0 + 272);
  v51 = *(v0 + 240);
  v45 = *(v0 + 224);
  v49 = *(v0 + 216);
  v50 = *(v0 + 232);
  v46 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v46);
  sub_218F0BB90(v46);
  sub_219BF3E74();
  sub_2186E19D0();
  sub_219BF2D04();

  (*(v45 + 8))(v50, v49);
  v53(v52, v51);
  (*(v44 + 8))(v43, v54);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_2196763EC(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v4 = sub_219BF3C84();
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v5 = sub_219BEE6F4();
  v3[16] = v5;
  v3[17] = *(v5 - 8);
  v3[18] = swift_task_alloc();
  v6 = sub_219BF14C4();
  v3[19] = v6;
  v3[20] = *(v6 - 8);
  v3[21] = swift_task_alloc();
  sub_21873F65C(0);
  v3[22] = swift_task_alloc();
  v7 = sub_219BDB954();
  v3[23] = v7;
  v3[24] = *(v7 - 8);
  v3[25] = swift_task_alloc();
  sub_219BF2124();
  v3[26] = swift_task_alloc();
  v8 = sub_219BEF754();
  v3[27] = v8;
  v3[28] = *(v8 - 8);
  v3[29] = swift_task_alloc();
  v9 = sub_219BF0174();
  v3[30] = v9;
  v3[31] = *(v9 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v10 = sub_219BEFC44();
  v3[34] = v10;
  v3[35] = *(v10 - 8);
  v3[36] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219676748, 0, 0);
}

uint64_t sub_219676748()
{
  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = sub_219BE5434();
  __swift_project_value_buffer(v1, qword_280F62520);
  v2 = sub_219BE5414();
  v3 = sub_219BF6214();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_2186C1000, v2, v3, "Food emitter fetching topic recipes..", v4, 2u);
    MEMORY[0x21CECF960](v4, -1, -1);
  }

  sub_219BEF064();
  v0[37] = v0[7];

  v5 = swift_task_alloc();
  v0[38] = v5;
  *v5 = v0;
  v5[1] = sub_2196769A0;
  v6 = v0[36];

  return MEMORY[0x2821D18D0](v6);
}

uint64_t sub_2196769A0()
{
  *(*v1 + 312) = v0;

  if (v0)
  {
    v2 = sub_219677640;
  }

  else
  {

    v2 = sub_219676ABC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219676ABC(uint64_t a1)
{
  v2 = v1[39];
  sub_219BEF164();
  if (v2)
  {
    (*(v1[35] + 8))(v1[36], v1[34]);

    v3 = v1[1];

    return v3();
  }

  else
  {
    v5 = v1[32];
    v6 = v1[30];
    v7 = v1[31];
    v8 = *(v1[8] + OBJC_IVAR____TtC7NewsUI213TodayFeedPool_recipes + 16);

    sub_219BEFC04();
    sub_2186E2394();
    v1[5] = v9;
    v1[6] = sub_219667B1C(&qword_280E8E9B0, sub_2186E2394, MEMORY[0x277D83B78]);
    v1[2] = v8;
    sub_219BF0154();
    v10 = *(v7 + 8);
    v1[40] = v10;
    v1[41] = (v7 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v5, v6);
    __swift_destroy_boxed_opaque_existential_1(v1 + 2);
    v11 = sub_219BF0164();
    v1[42] = v11;
    v12 = swift_task_alloc();
    v1[43] = v12;
    *v12 = v1;
    v12[1] = sub_219676D38;
    v13 = v1[29];

    return sub_2196789C8(v13, v11);
  }
}

uint64_t sub_219676D38(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 352) = a1;
  *(v3 + 360) = v1;

  if (v1)
  {
    v4 = sub_219677740;
  }

  else
  {
    v4 = sub_219676E74;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219676E74()
{
  v59 = v0;
  v1 = *(v0 + 192);
  v57 = *(v0 + 184);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  sub_2186E4C9C(0, &qword_280E8B860, MEMORY[0x277D333A8], MEMORY[0x277D84560]);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v56 = *(v3 + 72);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C09BA0;
  v6 = [sub_219BEF744() displayName];
  swift_unknownObjectRelease();
  sub_219BF5414();

  v7 = v5;
  sub_219BF20F4();

  sub_219BF14A4();
  sub_219BEF744();
  swift_getObjectType();
  sub_219BF6244();
  swift_unknownObjectRelease();
  if ((*(v1 + 48))(v2, 1, v57) != 1)
  {
    (*(*(v0 + 192) + 32))(*(v0 + 200), *(v0 + 176), *(v0 + 184));
    sub_219BF20E4();
    sub_219BF14A4();
    v9 = *(v5 + 16);
    v8 = *(v5 + 24);
    v10 = (v9 + 1);
    if (v9 >= v8 >> 1)
    {
      goto LABEL_25;
    }

    goto LABEL_4;
  }

  sub_219679DA4(*(v0 + 176), sub_21873F65C);
  while (1)
  {
    v14 = *(v0 + 352);
    v15 = *(v0 + 136);
    v16 = *(v0 + 144);
    v17 = *(v0 + 128);
    v18 = *MEMORY[0x277D32840];
    v19 = sub_219BEF9C4();
    (*(*(v19 - 8) + 104))(v16, v18, v19);
    (*(v15 + 104))(v16, *MEMORY[0x277D320D8], v17);
    sub_2186E4C9C(0, &unk_280E8B790, MEMORY[0x277D34258], MEMORY[0x277D84560]);
    v20 = *(sub_219BF3E84() - 8);
    v4 = *(v20 + 72);
    v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_219C09EC0;
    v9 = v22 + v21;

    v23 = MEMORY[0x277D84F90];
    sub_218F0B984(MEMORY[0x277D84F90]);
    sub_218F0BA7C(v23);
    sub_218F0BB90(v23);
    sub_219BF3E74();
    v24 = v14 >> 62 ? sub_219BF7214() : *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v24)
    {
      break;
    }

    v58 = v23;
    v10 = &v58;
    sub_218C34A88(0, v24 & ~(v24 >> 63), 0);
    if ((v24 & 0x8000000000000000) == 0)
    {
      v25 = v58;
      if ((v14 & 0xC000000000000001) != 0)
      {
        v26 = 0;
        v27 = *(v0 + 104);
        v28 = *MEMORY[0x277D34120];
        do
        {
          v29 = *(v0 + 120);
          v30 = *(v0 + 96);
          *v29 = MEMORY[0x21CECE0F0](v26, *(v0 + 352));
          (*(v27 + 104))(v29, v28, v30);
          v58 = v25;
          v32 = *(v25 + 16);
          v31 = *(v25 + 24);
          if (v32 >= v31 >> 1)
          {
            sub_218C34A88((v31 > 1), v32 + 1, 1);
            v25 = v58;
          }

          v33 = *(v0 + 120);
          v34 = *(v0 + 96);
          ++v26;
          *(v25 + 16) = v32 + 1;
          (*(v27 + 32))(v25 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v32, v33, v34);
        }

        while (v24 != v26);
      }

      else
      {
        v35 = *(v0 + 104);
        v36 = (*(v0 + 352) + 32);
        v55 = *(v35 + 104);
        do
        {
          v37 = *v36;
          **(v0 + 112) = *v36;
          v55();
          v58 = v25;
          v38 = *(v25 + 16);
          v39 = *(v25 + 24);
          v40 = v37;
          if (v38 >= v39 >> 1)
          {
            sub_218C34A88((v39 > 1), v38 + 1, 1);
            v25 = v58;
          }

          v41 = *(v0 + 112);
          v42 = *(v0 + 96);
          *(v25 + 16) = v38 + 1;
          (*(v35 + 32))(v25 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v38, v41, v42);
          ++v36;
          --v24;
        }

        while (v24);
      }

      break;
    }

    __break(1u);
LABEL_25:
    v7 = sub_2191F7664((v8 > 1), v10, 1, v7);
LABEL_4:
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    v13 = *(v0 + 152);
    (*(*(v0 + 192) + 8))(*(v0 + 200), *(v0 + 184));
    *(v7 + 2) = v10;
    (*(v12 + 32))(&v7[v4 + v9 * v56], v11, v13);
  }

  v53 = *(v0 + 320);
  v43 = *(v0 + 288);
  v44 = *(v0 + 280);
  v52 = *(v0 + 264);
  v54 = *(v0 + 272);
  v51 = *(v0 + 240);
  v45 = *(v0 + 224);
  v49 = *(v0 + 216);
  v50 = *(v0 + 232);
  v46 = MEMORY[0x277D84F90];
  sub_218F0B984(MEMORY[0x277D84F90]);
  sub_218F0BA7C(v46);
  sub_218F0BB90(v46);
  sub_219BF3E74();
  sub_2186E19D0();
  sub_219BF2D04();

  (*(v45 + 8))(v50, v49);
  v53(v52, v51);
  (*(v44 + 8))(v43, v54);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t sub_219677640()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_219677740()
{
  v1 = v0[40];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[30];

  v1(v5, v6);
  (*(v4 + 8))(v2, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_219677870(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_219677894, 0, 0);
}

uint64_t sub_219677894()
{
  v1 = v0[3];
  v2 = (v1 + *(type metadata accessor for FoodTodayFeedGroupEmitter(0) + 40));
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_219677964;
  v6 = v0[4];
  v7 = v0[2];

  return MEMORY[0x28218FB20](v7, v6, v3, v4);
}

uint64_t sub_219677964()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_219677A58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  return MEMORY[0x2822009F8](sub_219677A7C, 0, 0);
}

uint64_t sub_219677A7C()
{
  v1 = *(v0 + 80);
  v2 = *(v0 + 88);
  v3 = (v1 + *(type metadata accessor for FoodTodayFeedGroupEmitter(0) + 28));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v6 = *v2;
  v7 = v2[1];
  v8 = v2[2];
  *(v0 + 64) = *(v2 + 6);
  *(v0 + 32) = v7;
  *(v0 + 48) = v8;
  *(v0 + 16) = v6;
  v11 = (*(v5 + 16) + **(v5 + 16));
  v9 = swift_task_alloc();
  *(v0 + 96) = v9;
  *v9 = v0;
  v9[1] = sub_219677BD8;

  return v11(v0 + 16, v4, v5);
}

uint64_t sub_219677BD8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 104) = v1;

  if (v1)
  {
    v5 = sub_219677D24;
  }

  else
  {
    *(v4 + 112) = a1;
    v5 = sub_219677D00;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_219677D3C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_219BEFA04();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_21967A2EC(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219677E38, 0, 0);
}

uint64_t sub_219677E38()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v3 + 56);
  *(v0 + 80) = v5;
  *(v0 + 88) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  v6 = *(v4 + 16);
  *(v0 + 96) = v6;
  if (!v6)
  {
LABEL_5:
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_21967A354(*(v0 + 72), v11, sub_21967A2EC);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = *(v0 + 64);
    if (v14 == 1)
    {

      sub_219679DA4(v15, sub_21967A2EC);
LABEL_17:
      v26 = sub_219BEEDD4();
      sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D32428], v26);
      swift_willThrow();
      sub_219679DA4(*(v0 + 72), sub_21967A2EC);

      v28 = *(v0 + 8);

      return v28();
    }

    (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 64), *(v0 + 40));
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_9;
      }
    }

    else if (*((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      sub_219679DA4(*(v0 + 72), sub_21967A2EC);

      v16 = *(v0 + 8);
      v17 = MEMORY[0x277D84F90];

      return v16(v17);
    }

    (*(*(v0 + 48) + 8))(*(v0 + 16), *(v0 + 40));

    goto LABEL_17;
  }

  v7 = 0;
  v8 = *(v0 + 48);
  *(v0 + 168) = *(v8 + 80);
  *(v0 + 104) = *(v8 + 72);
  *(v0 + 112) = *(v8 + 16);
  while (1)
  {
    *(v0 + 120) = v7;
    (*(v0 + 112))(*(v0 + 56), *(v0 + 24) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 104) * v7, *(v0 + 40));
    v9 = sub_219BEF354();
    *(v0 + 128) = v9;
    v10 = *(sub_219BEF364() + 16);

    if (v10 >= v9)
    {
      break;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    v7 = *(v0 + 120) + 1;
    if (v7 == *(v0 + 96))
    {
      goto LABEL_5;
    }
  }

  v19 = *(v0 + 32);
  v20 = (v19 + *(type metadata accessor for FoodTodayFeedGroupEmitter(0) + 48));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = sub_219BEF364();
  *(v0 + 136) = v23;
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = sub_2186C6148(0, &qword_280E8E810, 0x277D312B0);
  *v24 = v0;
  v24[1] = sub_2196782C4;

  return MEMORY[0x282192290](v23, v21, v25, v22);
}

uint64_t sub_2196782C4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_219678910;
  }

  else
  {
    v4 = sub_219678400;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_219678400()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= *(v0 + 128))
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    sub_219679DA4(v6, sub_21967A2EC);
    (*(v8 + 32))(v6, v7, v9);
    v5(v6, 0, 1, v9);
    v4 = *(v0 + 152);
LABEL_7:
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_21967A354(*(v0 + 72), v10, sub_21967A2EC);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = *(v0 + 64);
    if (v13 == 1)
    {

      sub_219679DA4(v14, sub_21967A2EC);
LABEL_24:
      v26 = sub_219BEEDD4();
      sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D32428], v26);
      swift_willThrow();
      sub_219679DA4(*(v0 + 72), sub_21967A2EC);

      v28 = *(v0 + 8);

      return v28();
    }

    (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 64), *(v0 + 40));
    if (v4 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_11;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      sub_219679DA4(*(v0 + 72), sub_21967A2EC);

      v15 = *(v0 + 8);

      return v15(v4);
    }

    (*(*(v0 + 48) + 8))(*(v0 + 16), *(v0 + 40));

    goto LABEL_24;
  }

  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v3 = *(v0 + 120) + 1;
  if (v3 == *(v0 + 96))
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 120) = v3;
    (*(v0 + 112))(*(v0 + 56), *(v0 + 24) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 104) * v3, *(v0 + 40));
    v17 = sub_219BEF354();
    *(v0 + 128) = v17;
    v18 = *(sub_219BEF364() + 16);

    if (v18 >= v17)
    {
      break;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    v3 = *(v0 + 120) + 1;
    if (v3 == *(v0 + 96))
    {
      goto LABEL_7;
    }
  }

  v19 = *(v0 + 32);
  v20 = (v19 + *(type metadata accessor for FoodTodayFeedGroupEmitter(0) + 48));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = sub_219BEF364();
  *(v0 + 136) = v23;
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = sub_2186C6148(0, &qword_280E8E810, 0x277D312B0);
  *v24 = v0;
  v24[1] = sub_2196782C4;

  return MEMORY[0x282192290](v23, v21, v25, v22);
}

uint64_t sub_219678910()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_219679DA4(v0[9], sub_21967A2EC);

  v1 = v0[1];

  return v1();
}

uint64_t sub_2196789C8(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_219BEF754();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_21967A320(0);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_219678AC4, 0, 0);
}

uint64_t sub_219678AC4()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v3 + 56);
  *(v0 + 80) = v5;
  *(v0 + 88) = (v3 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v5(v1, 1, 1, v2);
  v6 = *(v4 + 16);
  *(v0 + 96) = v6;
  if (!v6)
  {
LABEL_5:
    v11 = *(v0 + 64);
    v12 = *(v0 + 40);
    v13 = *(v0 + 48);
    sub_21967A354(*(v0 + 72), v11, sub_21967A320);
    v14 = (*(v13 + 48))(v11, 1, v12);
    v15 = *(v0 + 64);
    if (v14 == 1)
    {

      sub_219679DA4(v15, sub_21967A320);
LABEL_17:
      v26 = sub_219BEEDD4();
      sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D32428], v26);
      swift_willThrow();
      sub_219679DA4(*(v0 + 72), sub_21967A320);

      v28 = *(v0 + 8);

      return v28();
    }

    (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 64), *(v0 + 40));
    if (MEMORY[0x277D84F90] >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_9;
      }
    }

    else if (*((MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_9:
      sub_219679DA4(*(v0 + 72), sub_21967A320);

      v16 = *(v0 + 8);
      v17 = MEMORY[0x277D84F90];

      return v16(v17);
    }

    (*(*(v0 + 48) + 8))(*(v0 + 16), *(v0 + 40));

    goto LABEL_17;
  }

  v7 = 0;
  v8 = *(v0 + 48);
  *(v0 + 168) = *(v8 + 80);
  *(v0 + 104) = *(v8 + 72);
  *(v0 + 112) = *(v8 + 16);
  while (1)
  {
    *(v0 + 120) = v7;
    (*(v0 + 112))(*(v0 + 56), *(v0 + 24) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 104) * v7, *(v0 + 40));
    v9 = sub_219BEF354();
    *(v0 + 128) = v9;
    v10 = *(sub_219BEF364() + 16);

    if (v10 >= v9)
    {
      break;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    v7 = *(v0 + 120) + 1;
    if (v7 == *(v0 + 96))
    {
      goto LABEL_5;
    }
  }

  v19 = *(v0 + 32);
  v20 = (v19 + *(type metadata accessor for FoodTodayFeedGroupEmitter(0) + 48));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = sub_219BEF364();
  *(v0 + 136) = v23;
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = sub_2186C6148(0, &qword_280E8E810, 0x277D312B0);
  *v24 = v0;
  v24[1] = sub_219678F50;

  return MEMORY[0x282192290](v23, v21, v25, v22);
}

uint64_t sub_219678F50(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v1;

  if (v1)
  {
    v4 = sub_21967959C;
  }

  else
  {
    v4 = sub_21967908C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_21967908C()
{
  v1 = *(v0 + 152);
  if (v1 >> 62)
  {
    v2 = sub_219BF7214();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v2 >= *(v0 + 128))
  {
    v5 = *(v0 + 80);
    v6 = *(v0 + 72);
    v8 = *(v0 + 48);
    v7 = *(v0 + 56);
    v9 = *(v0 + 40);
    sub_219679DA4(v6, sub_21967A320);
    (*(v8 + 32))(v6, v7, v9);
    v5(v6, 0, 1, v9);
    v4 = *(v0 + 152);
LABEL_7:
    v10 = *(v0 + 64);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    sub_21967A354(*(v0 + 72), v10, sub_21967A320);
    v13 = (*(v12 + 48))(v10, 1, v11);
    v14 = *(v0 + 64);
    if (v13 == 1)
    {

      sub_219679DA4(v14, sub_21967A320);
LABEL_24:
      v26 = sub_219BEEDD4();
      sub_219667B1C(&qword_280E917E0, MEMORY[0x277D32430], MEMORY[0x277D32438]);
      swift_allocError();
      (*(*(v26 - 8) + 104))(v27, *MEMORY[0x277D32428], v26);
      swift_willThrow();
      sub_219679DA4(*(v0 + 72), sub_21967A320);

      v28 = *(v0 + 8);

      return v28();
    }

    (*(*(v0 + 48) + 32))(*(v0 + 16), *(v0 + 64), *(v0 + 40));
    if (v4 >> 62)
    {
      if (sub_219BF7214())
      {
        goto LABEL_11;
      }
    }

    else if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_11:
      sub_219679DA4(*(v0 + 72), sub_21967A320);

      v15 = *(v0 + 8);

      return v15(v4);
    }

    (*(*(v0 + 48) + 8))(*(v0 + 16), *(v0 + 40));

    goto LABEL_24;
  }

  (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));

  v3 = *(v0 + 120) + 1;
  if (v3 == *(v0 + 96))
  {
    v4 = MEMORY[0x277D84F90];
    goto LABEL_7;
  }

  v4 = MEMORY[0x277D84F90];
  while (1)
  {
    *(v0 + 120) = v3;
    (*(v0 + 112))(*(v0 + 56), *(v0 + 24) + ((*(v0 + 168) + 32) & ~*(v0 + 168)) + *(v0 + 104) * v3, *(v0 + 40));
    v17 = sub_219BEF354();
    *(v0 + 128) = v17;
    v18 = *(sub_219BEF364() + 16);

    if (v18 >= v17)
    {
      break;
    }

    (*(*(v0 + 48) + 8))(*(v0 + 56), *(v0 + 40));
    v3 = *(v0 + 120) + 1;
    if (v3 == *(v0 + 96))
    {
      goto LABEL_7;
    }
  }

  v19 = *(v0 + 32);
  v20 = (v19 + *(type metadata accessor for FoodTodayFeedGroupEmitter(0) + 48));
  v21 = v20[3];
  v22 = v20[4];
  __swift_project_boxed_opaque_existential_1(v20, v21);
  v23 = sub_219BEF364();
  *(v0 + 136) = v23;
  v24 = swift_task_alloc();
  *(v0 + 144) = v24;
  v25 = sub_2186C6148(0, &qword_280E8E810, 0x277D312B0);
  *v24 = v0;
  v24[1] = sub_219678F50;

  return MEMORY[0x282192290](v23, v21, v25, v22);
}

uint64_t sub_21967959C()
{
  (*(v0[6] + 8))(v0[7], v0[5]);
  sub_219679DA4(v0[9], sub_21967A320);

  v1 = v0[1];

  return v1();
}

uint64_t sub_219679654(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  return MEMORY[0x2822009F8](sub_219679678, 0, 0);
}

uint64_t sub_219679678()
{
  sub_218824C10(0, &unk_280E8BD00, &type metadata for TagFeedCurationRequestTag, MEMORY[0x277D84560]);
  v1 = swift_allocObject();
  v0[7] = v1;
  *(v1 + 16) = xmmword_219C09BA0;
  swift_getObjectType();
  nullsub_1();
  *(v1 + 32) = v2;
  *(v1 + 40) = v3;
  swift_unknownObjectRetain();
  sub_219BEF0B4();
  v4 = *(v0[2] + OBJC_IVAR____TtC7NewsUI222TodayFeedServiceConfig_appConfig);
  swift_unknownObjectRetain();

  v5 = [v4 recipeCatalogTagID];
  swift_unknownObjectRelease();
  if (v5)
  {
    v6 = v0[6];
    v7 = sub_219BF5414();
    v9 = v8;

    v10 = type metadata accessor for FoodTodayFeedGroupEmitter(0);
    __swift_project_boxed_opaque_existential_1((v6 + *(v10 + 44)), *(v6 + *(v10 + 44) + 24));
    sub_218824C10(0, &qword_280E8B750, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_219C09BA0;
    *(v11 + 32) = v7;
    *(v11 + 40) = v9;
    v0[8] = sub_219BF1C34();

    v12 = swift_task_alloc();
    v0[9] = v12;
    *v12 = v0;
    v12[1] = sub_219679988;

    return MEMORY[0x2821D23D8](v0 + 3);
  }

  else
  {
    if (qword_280EE5F08 != -1)
    {
      swift_once();
    }

    v13 = sub_219BE5434();
    __swift_project_value_buffer(v13, qword_280F62520);
    v14 = sub_219BE5414();
    v15 = sub_219BF61F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      MEMORY[0x21CECF960](v16, -1, -1);
    }

    v17 = v0[1];

    return v17(v1);
  }
}

uint64_t sub_219679988()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_219679BEC;
  }

  else
  {

    v2 = sub_219679AA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_219679AA4(uint64_t a1, uint64_t a2)
{
  v3 = v2[3];
  if (v3 >> 62)
  {
    result = sub_219BF7214();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_8:

    v11 = v2[7];
    goto LABEL_9;
  }

  result = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((v3 & 0xC000000000000001) != 0)
  {
    MEMORY[0x21CECE0F0](0, v3);
  }

  else
  {
    if (!*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    swift_unknownObjectRetain();
  }

  v5 = v2[7];

  swift_getObjectType();
  nullsub_1();
  v7 = v6;
  v9 = v8;
  swift_unknownObjectRetain();
  v10 = sub_2191F92BC(1, 2, 1, v5);
  swift_unknownObjectRelease();
  v11 = v10;
  *(v10 + 2) = 2;
  *(v10 + 6) = v7;
  *(v10 + 7) = v9;
LABEL_9:
  v12 = v2[1];

  return v12(v11);
}

uint64_t sub_219679BEC()
{

  if (qword_280EE5F08 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_219BE5434();
  __swift_project_value_buffer(v2, qword_280F62520);
  v3 = v1;
  v4 = sub_219BE5414();
  v5 = sub_219BF61F4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[10];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_2186C1000, v4, v5, "Food emitter failed to fetch the curation tag, error=%{public}@", v8, 0xCu);
    sub_219679DA4(v9, sub_2189B3F3C);
    MEMORY[0x21CECF960](v9, -1, -1);
    MEMORY[0x21CECF960](v8, -1, -1);
  }

  else
  {
  }

  v12 = v0[7];
  v13 = v0[1];

  return v13(v12);
}

uint64_t sub_219679DA4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_219679E04(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v8 = *(type metadata accessor for FoodTodayFeedGroupEmitter(0) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v3 + v10);
  v12 = *(v3 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v4 + 16) = v13;
  *v13 = v4;
  v13[1] = sub_2187609C8;

  return sub_21966CD64(a1, a2, a3, v3 + v9, v11, v12);
}

unint64_t sub_219679F40()
{
  result = qword_27CC1D950;
  if (!qword_27CC1D950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D950);
  }

  return result;
}

uint64_t sub_219679F94(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for FoodTodayFeedGroupEmitter(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_219BED6B4() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_2187609C8;

  return sub_219677870(a1, v1 + v6, v1 + v9);
}

uint64_t sub_21967A0D0(uint64_t a1)
{
  v4 = *(type metadata accessor for FoodTodayFeedGroupEmitter(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_2187609C8;

  return sub_219677A58(a1, v1 + v5, v1 + v6);
}

void sub_21967A288(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2186E19D0();
    v7 = a3(a1, &type metadata for FoodTodayFeedGroupArrangementDataSource, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_21967A354(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_21967A3BC(uint64_t a1)
{
  if (!qword_280EE7E28)
  {
    sub_219BEFC44();
    sub_2186CFDE4(255, &qword_280E8B580, MEMORY[0x277D84948]);
    v1 = sub_219BE1CF4();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE7E28);
    }
  }
}

uint64_t sub_21967A43C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21967A4A4(uint64_t a1)
{
  v3 = v2;
  sub_21967AA64(0, &qword_280E92610, MEMORY[0x277D31C80]);
  v6 = (*(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = (*(*(v5 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(type metadata accessor for FoodTodayFeedGroupKnobs(0) - 8);
  v9 = (v7 + *(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_2187609C8;

  return sub_21966AEF4(a1, v10, v1 + v6, v1 + v7, v1 + v9);
}

void sub_21967A638(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v59 = a5;
  v9 = sub_219BEED84();
  v48 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v45 = v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v51 = v44 - v12;
  sub_2186E4C9C(0, &qword_280E8F7A8, sub_2189B7694, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = (v44 - v14);
  v16 = -1 << *(a1 + 32);
  v17 = ~v16;
  v18 = *(a1 + 64);
  v19 = -v16;
  v52 = a1;
  v53 = a1 + 64;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  else
  {
    v20 = -1;
  }

  v54 = v17;
  v55 = 0;
  v56 = v20 & v18;
  v57 = a2;
  v58 = a3;

  v44[1] = a3;

  sub_218CC71F8(v15);
  sub_2189B7694(0);
  v22 = v21;
  v23 = *(v21 - 8);
  v24 = *(v23 + 48);
  v46 = v23 + 48;
  v47 = v24;
  if (v24(v15, 1, v21) == 1)
  {
LABEL_5:
    sub_21892DE98(v52);
  }

  else
  {
    v49 = *(v48 + 32);
    v50 = v48 + 32;
    v44[4] = v48 + 8;
    v44[5] = v48 + 16;
    v44[3] = v48 + 40;
    while (1)
    {
      v29 = *v15;
      v28 = v15[1];
      v49(v51, v15 + *(v22 + 48), v9);
      v30 = *v59;
      v32 = sub_21870F700(v29, v28);
      v33 = v30[2];
      v34 = (v31 & 1) == 0;
      v35 = v33 + v34;
      if (__OFADD__(v33, v34))
      {
        break;
      }

      v36 = v31;
      if (v30[3] >= v35)
      {
        if ((a4 & 1) == 0)
        {
          sub_21949059C();
        }
      }

      else
      {
        sub_21947E20C(v35, a4 & 1);
        v37 = sub_21870F700(v29, v28);
        if ((v36 & 1) != (v38 & 1))
        {
          goto LABEL_20;
        }

        v32 = v37;
      }

      v39 = *v59;
      if (v36)
      {
        v25 = v48;
        v26 = *(v48 + 72) * v32;
        v27 = v45;
        (*(v48 + 16))(v45, v39[7] + v26, v9);
        (*(v25 + 8))(v51, v9);

        (*(v25 + 40))(v39[7] + v26, v27, v9);
      }

      else
      {
        v39[(v32 >> 6) + 8] |= 1 << v32;
        v40 = (v39[6] + 16 * v32);
        *v40 = v29;
        v40[1] = v28;
        v49((v39[7] + *(v48 + 72) * v32), v51, v9);
        v41 = v39[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (v42)
        {
          goto LABEL_19;
        }

        v39[2] = v43;
      }

      sub_218CC71F8(v15);
      a4 = 1;
      if (v47(v15, 1, v22) == 1)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    sub_219BF79A4();
    __break(1u);
  }
}

void sub_21967AA64(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for TodayFeedServiceConfig(255);
    v7 = sub_219667B1C(&qword_280EC6590, type metadata accessor for TodayFeedServiceConfig, &unk_219C92E28);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void (*sub_21967AB98(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = *v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v7 = *(v5 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v7;
  return sub_218963B4C;
}

uint64_t sub_21967AC30(__n128 a1)
{
  sub_219BDFFC4();
  sub_21967ACC8(v1);
  return sub_219BDD214();
}

uint64_t sub_21967AC78(__n128 a1)
{
  sub_219BDFFC4();
  sub_21967ACC8(v1);
  return sub_219BDD234();
}

unint64_t sub_21967ACC8(__n128 a1)
{
  result = qword_27CC1BE78;
  if (!qword_27CC1BE78)
  {
    sub_219BDFFC4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1BE78);
  }

  return result;
}

uint64_t sub_21967AD34(void *a1, char a2)
{
  sub_21967B650(0, &qword_27CC1D958, MEMORY[0x277D84538]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21967B5A8();
  sub_219BF7B44();
  if (a2)
  {
    v10[15] = 1;
  }

  else
  {
    v10[14] = 0;
  }

  sub_21967B6B4();
  sub_219BF7834();
  return (*(v6 + 8))(v8, v5);
}

void sub_21967AEB0(BOOL *a2@<X8>)
{
  v3 = sub_219BF7614();

  *a2 = v3 != 0;
}

void sub_21967AF04(BOOL *a3@<X8>)
{
  v4 = sub_219BF7614();

  *a3 = v4 != 0;
}

uint64_t sub_21967AF5C(uint64_t a1)
{
  v2 = sub_21967B5A8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21967AF98(uint64_t a1)
{
  v2 = sub_21967B5A8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21967AFD4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C616E6F73726570;
  }

  else
  {
    v3 = 0xD000000000000014;
  }

  if (v2)
  {
    v4 = 0x8000000219CD7330;
  }

  else
  {
    v4 = 0xEC00000064657A69;
  }

  if (*a2)
  {
    v5 = 0x6C616E6F73726570;
  }

  else
  {
    v5 = 0xD000000000000014;
  }

  if (*a2)
  {
    v6 = 0xEC00000064657A69;
  }

  else
  {
    v6 = 0x8000000219CD7330;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

uint64_t sub_21967B088()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21967B118(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21967B194(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

void sub_21967B220(char *a2@<X8>)
{
  v3 = sub_219BF7614();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_21967B280(unint64_t *a1@<X8>)
{
  v2 = 0x8000000219CD7330;
  v3 = 0xD000000000000014;
  if (*v1)
  {
    v3 = 0x6C616E6F73726570;
    v2 = 0xEC00000064657A69;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_21967B37C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_21967B410(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_21967B3C8()
{
  if (*v0)
  {
    return 0x6C616E6F73726550;
  }

  else
  {
    return 0xD000000000000015;
  }
}

void *sub_21967B410(void *a1)
{
  sub_21967B650(0, &qword_280E8CAE8, MEMORY[0x277D844C8]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v10[-v6];
  v8 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21967B5A8();
  sub_219BF7B34();
  if (!v1)
  {
    sub_21967B5FC();
    sub_219BF7734();
    (*(v5 + 8))(v7, v4);
    v8 = v10[15];
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8;
}

unint64_t sub_21967B5A8()
{
  result = qword_280EA9F58[0];
  if (!qword_280EA9F58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EA9F58);
  }

  return result;
}

unint64_t sub_21967B5FC()
{
  result = qword_280EA9F38;
  if (!qword_280EA9F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F38);
  }

  return result;
}

void sub_21967B650(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21967B5A8();
    v7 = a3(a1, &type metadata for ArticleListTagFeedGroupOrdering.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21967B6B4()
{
  result = qword_27CC1D960;
  if (!qword_27CC1D960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D960);
  }

  return result;
}

unint64_t sub_21967B72C()
{
  result = qword_27CC1D968;
  if (!qword_27CC1D968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D968);
  }

  return result;
}

unint64_t sub_21967B784()
{
  result = qword_27CC1D970;
  if (!qword_27CC1D970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D970);
  }

  return result;
}

unint64_t sub_21967B7DC()
{
  result = qword_280EA9F48;
  if (!qword_280EA9F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F48);
  }

  return result;
}

unint64_t sub_21967B834()
{
  result = qword_280EA9F50;
  if (!qword_280EA9F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F50);
  }

  return result;
}

unint64_t sub_21967B888()
{
  result = qword_280EA9F40;
  if (!qword_280EA9F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EA9F40);
  }

  return result;
}

uint64_t sub_21967B8DC()
{
  v1 = *(v0 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_fetchedRegions);
  v2 = OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_localNewsRegions;
  if (v1)
  {
    v3 = sub_219417FCC(*(v0 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_fetchedRegions), *(v0 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_localNewsRegions));
    v4 = v1;
    if (v3)
    {
      return 1;
    }
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
  }

  *(v0 + v2) = v4;

  return 257;
}

void sub_21967B958(uint64_t a1)
{
  v2 = sub_219BE0154();
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v52 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BE08C4();
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_219BDFEB4();
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_219BE05A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for EngagementEvent(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v52 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_218A153EC(a1, v17);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload != 6)
    {
      v19 = v57;
      if (EnumCaseMultiPayload == 7)
      {
        v24 = *v17;
        v23 = v17[1];
        v25 = *(v57 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs);
        v26 = *(v25 + 16);

        if (v26)
        {
          v27 = 0;
          v28 = v25 + 40;
          v55 = v26 - 1;
          v29 = MEMORY[0x277D84F90];
          v56 = v25 + 40;
          do
          {
            v30 = (v28 + 16 * v27);
            v31 = v27;
            while (1)
            {
              if (v31 >= *(v25 + 16))
              {
                __break(1u);
                goto LABEL_32;
              }

              v32 = *(v30 - 1);
              v33 = *v30;
              v34 = v32 == v24 && v33 == v23;
              if (!v34 && (sub_219BF78F4() & 1) == 0)
              {
                break;
              }

              ++v31;
              v30 += 2;
              if (v26 == v31)
              {
                goto LABEL_26;
              }
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v58 = v29;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_21870B65C(0, *(v29 + 16) + 1, 1);
              v29 = v58;
            }

            v37 = *(v29 + 16);
            v36 = *(v29 + 24);
            if (v37 >= v36 >> 1)
            {
              sub_21870B65C((v36 > 1), v37 + 1, 1);
              v29 = v58;
            }

            v27 = v31 + 1;
            *(v29 + 16) = v37 + 1;
            v38 = v29 + 16 * v37;
            *(v38 + 32) = v32;
            *(v38 + 40) = v33;
            v28 = v56;
            v19 = v57;
          }

          while (v55 != v31);
        }

LABEL_26:

        goto LABEL_27;
      }

      goto LABEL_23;
    }

    v39 = *v17;
    v19 = v57;
    v40 = *(v57 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs);
    v59 = v17[1];
    v60 = v40;
    v58 = v39;
    sub_2186D0BA8();

    sub_219BF59B4();
  }

  else
  {
    if (EnumCaseMultiPayload)
    {
      v19 = v57;
      if (EnumCaseMultiPayload == 1)
      {
        v20 = v52;
        v21 = v17;
        v22 = v53;
        (*(v52 + 32))(v4, v21, v53);
        sub_219BE0124();
        sub_219BDFEA4();
        (*(v54 + 8))(v10, v8);
        sub_219BE08B4();
        (*(v55 + 8))(v7, v56);
        (*(v20 + 8))(v4, v22);
        goto LABEL_27;
      }

LABEL_23:
      sub_218C1023C(v17);
      return;
    }

    (*(v12 + 32))(v14, v17, v11);
    sub_219BE0574();
    sub_219BDFEA4();
    (*(v54 + 8))(v10, v8);
    sub_219BE08B4();
    (*(v55 + 8))(v7, v56);
    (*(v12 + 8))(v14, v11);
    v19 = v57;
  }

LABEL_27:
  v41 = *(v19 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_tagController);
  v42 = sub_219BF5904();

  v43 = [v41 fastCachedTagsForIDs_];

  if (v43)
  {
    sub_2186D8870();
    v44 = sub_219BF5214();

    v45 = sub_21967C404(v44);

    sub_218C0C7A0(v45);
    v47 = v46;

    v48 = OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs;
    v49 = *(v19 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs);

    sub_218C0FD28(v47, v49);
    v51 = v50;

    if ((v51 & 1) == 0)
    {
      *(v19 + v48) = v47;
    }
  }

  else
  {
LABEL_32:
    __break(1u);
  }
}

double sub_21967BFE4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_219BE5294();
  if (*(v3 + 16))
  {
    v4 = sub_21870F700(0xD000000000000023, 0x8000000219D2C170);
    if (v5)
    {
      sub_2186D1230(*(v3 + 56) + 32 * v4, v10);
      sub_2186D0BA8();
      if (swift_dynamicCast())
      {
        *(v2 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs) = v9;
      }
    }
  }

  if (*(v3 + 16))
  {
    v6 = sub_21870F700(0xD000000000000010, 0x8000000219D2C110);
    if (v7)
    {
      sub_2186D1230(*(v3 + 56) + 32 * v6, v10);

      sub_2186D0BA8();
      if ((swift_dynamicCast() & 1) == 0)
      {
        return result;
      }

      *(v2 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_localNewsRegions) = v9;
    }
  }

  return result;
}

uint64_t sub_21967C12C@<X0>(uint64_t a1@<X8>)
{
  sub_218C71780(0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_219C09EC0;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x8000000219D2C110;
  v4 = *(v1 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_localNewsRegions);
  sub_2186D0BA8();
  *(inited + 48) = v4;
  *(inited + 72) = v5;
  *(inited + 80) = 0xD000000000000023;
  *(inited + 88) = 0x8000000219D2C170;
  v6 = *(v1 + OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_followedLocalNewsTagIDs);
  *(inited + 120) = v5;
  *(inited + 96) = v6;

  sub_218831A70(inited);
  swift_setDeallocating();
  sub_2188317B0();
  swift_arrayDestroy();
  sub_219BE52B4();
  v7 = sub_219BE52A4();
  return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
}

uint64_t sub_21967C278()
{

  v1 = OBJC_IVAR____TtC7NewsUI237QueryLocalNewsEngagementDonorProperty_configuration;
  v2 = sub_219BE5244();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_21967C37C(uint64_t a1)
{
  v2 = sub_21967B8DC();
  sub_21967B958(a1);
  if (v2 & 1) != 0 || (v3)
  {
    if (((v2 | v3) & 0x100) != 0)
    {
      return;
    }

    v4 = 1;
  }

  else
  {
    v4 = 0;
  }

  sub_218C10298();
  swift_allocError();
  *v5 = v4;
  swift_willThrow();
}

unint64_t *sub_21967C404(uint64_t a1)
{
  v2 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v6 = v10 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v6, v5);
    result = sub_21967C564(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_21967C690(v8, v4, v2);
  result = MEMORY[0x21CECF960](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_21967C564(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
    v12 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_11:
    v15 = v12 | (v6 << 6);
    result = [*(*(a3 + 56) + 8 * v15) isLocal];
    if (result)
    {
      *(v4 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      if (__OFADD__(v5++, 1))
      {
        __break(1u);
        return sub_218B9DE54(v4, a2, v5, a3);
      }
    }
  }

  v13 = v6;
  while (1)
  {
    v6 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      return sub_218B9DE54(v4, a2, v5, a3);
    }

    v14 = *(v7 + 8 * v6);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v10 = (v14 - 1) & v14;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_21967C690(unint64_t *result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    v6 = sub_21967C564(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_21967C708(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6572676F72506E69;
  v4 = 0xEA00000000007373;
  if (v2 != 1)
  {
    v3 = 0x6574656C706D6F63;
    v4 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x646579616C706E75;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  v7 = 0x6572676F72506E69;
  v8 = 0xEA00000000007373;
  if (*a2 != 1)
  {
    v7 = 0x6574656C706D6F63;
    v8 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x646579616C706E75;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_219BF78F4();
  }

  return v11 & 1;
}

uint64_t sub_21967C814()
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_21967C8BC(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

uint64_t sub_21967C950(uint64_t a1)
{
  sub_219BF7AA4();
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_21967C9F4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_21967CE74(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_21967CA24(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xEA00000000007373;
  v5 = 0x6572676F72506E69;
  if (v2 != 1)
  {
    v5 = 0x6574656C706D6F63;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x646579616C706E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

unint64_t sub_21967CA9C()
{
  result = qword_27CC1D978;
  if (!qword_27CC1D978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D978);
  }

  return result;
}

uint64_t sub_21967CAF0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  if (*(a2 + 8) != 4)
  {
LABEL_7:
    if (qword_280EE5F80 != -1)
    {
      swift_once();
    }

    v7 = sub_219BE5434();
    __swift_project_value_buffer(v7, qword_280F625E0);
    v8 = sub_219BE5414();
    v9 = sub_219BF61F4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136315138;
      v12 = PuzzleArchiveFilterOption.identifier.getter();
      v14 = sub_2186D1058(v12, v13, &v25);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_2186C1000, v8, v9, "Incompatible archive filter option %s used for PuzzlePlayStateFilterOptionPredicate!", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x21CECF960](v11, -1, -1);
      MEMORY[0x21CECF960](v10, -1, -1);
    }

    goto LABEL_12;
  }

  if (v3 != 4)
  {
    if (v3 == 3)
    {
      v15 = 1;
      if (sub_21967CEC0(*(v2 + 56), 1u))
      {
        v18 = v2;
        __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
        v19 = [a1 identifier];
        sub_219BF5414();

        v20 = sub_219BF3404();

        if ((v20 & 1) == 0)
        {
          v15 = 0;
          return v15 & 1;
        }

        __swift_project_boxed_opaque_existential_1((v18 + 16), *(v18 + 40));
        v21 = [a1 identifier];
        sub_219BF5414();

        v6 = sub_219BF3414();
        goto LABEL_17;
      }

      return v15 & 1;
    }

    if (v3 == 2)
    {
      if (sub_21967CEC0(*(v2 + 56), 0))
      {
        __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
        v5 = [a1 identifier];
        sub_219BF5414();

        v6 = sub_219BF3404();
LABEL_17:
        v22 = v6;

        v15 = v22 ^ 1;
        return v15 & 1;
      }

      goto LABEL_12;
    }

    goto LABEL_7;
  }

  if ((sub_21967CEC0(*(v2 + 56), 2u) & 1) == 0)
  {
LABEL_12:
    v15 = 1;
    return v15 & 1;
  }

  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v24 = [a1 identifier];
  sub_219BF5414();

  LOBYTE(v24) = sub_219BF3414();

  return v24 & 1;
}

unint64_t sub_21967CE74(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_21967CEC0(char a1, unsigned __int8 a2)
{
  v2 = 0x646579616C706E75;
  if (a1)
  {
    v3 = 0x6572676F72506E69;
    if (a1 == 1)
    {
      v4 = 0xEA00000000007373;
    }

    else
    {
      v3 = 0x6574656C706D6F63;
      v4 = 0xE800000000000000;
    }

    v5 = a2;
    if (a2)
    {
LABEL_6:
      if (v5 == 1)
      {
        v6 = 0x6572676F72506E69;
      }

      else
      {
        v6 = 0x6574656C706D6F63;
      }

      if (v5 == 1)
      {
        v7 = 0xEA00000000007373;
      }

      else
      {
        v7 = 0xE800000000000000;
      }

      if (v3 != v6)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v4 = 0xE800000000000000;
    v3 = 0x646579616C706E75;
    v5 = a2;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  v7 = 0xE800000000000000;
  if (v3 != 0x646579616C706E75)
  {
    goto LABEL_18;
  }

LABEL_16:
  if (v4 == v7)
  {

    return 1;
  }

LABEL_18:
  v11 = sub_219BF78F4();

  if (v11)
  {
    return 1;
  }

  if (qword_280EE5F80 != -1)
  {
    swift_once();
  }

  v12 = sub_219BE5434();
  __swift_project_value_buffer(v12, qword_280F625E0);
  v13 = sub_219BE5414();
  v14 = sub_219BF61F4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    if (a1)
    {
      if (a1 == 1)
      {
        v17 = 0x6572676F72506E69;
      }

      else
      {
        v17 = 0x6574656C706D6F63;
      }

      if (a1 == 1)
      {
        v18 = 0xEA00000000007373;
      }

      else
      {
        v18 = 0xE800000000000000;
      }
    }

    else
    {
      v18 = 0xE800000000000000;
      v17 = 0x646579616C706E75;
    }

    v19 = sub_2186D1058(v17, v18, &v22);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2080;
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x6572676F72506E69;
      }

      else
      {
        v2 = 0x6574656C706D6F63;
      }

      if (a2 == 1)
      {
        v20 = 0xEA00000000007373;
      }

      else
      {
        v20 = 0xE800000000000000;
      }
    }

    else
    {
      v20 = 0xE800000000000000;
    }

    v21 = sub_2186D1058(v2, v20, &v22);

    *(v15 + 14) = v21;
    _os_log_impl(&dword_2186C1000, v13, v14, "Required PlayState %s doesn't match checked PlayState %s.  Filter will not be applied.", v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x21CECF960](v16, -1, -1);
    MEMORY[0x21CECF960](v15, -1, -1);
  }

  return 0;
}

void sub_21967D230(uint64_t a1)
{
  sub_21898BF70(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_21967D29C(uint64_t a1, void (*a2)(uint64_t *), void (*a3)(uint64_t *))
{
  v84 = a2;
  v85 = a3;
  v86 = a1;
  sub_21967F10C(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v83 = v4;
  v81 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v82 = (&v65 - v5);
  sub_21967F10C(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v7 = v6;
  v74 = *(v6 - 8);
  v73 = *(v74 + 64);
  MEMORY[0x28223BE20](v6);
  v79 = &v65 - v8;
  v9 = type metadata accessor for TagFeedUncollapsedBlueprintModifier(0);
  v70 = *(v9 - 8);
  MEMORY[0x28223BE20](v9 - 8);
  v71 = v10;
  v72 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v11 - 8);
  v77 = &v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v78 = *(v76 - 8);
  v13 = *(v78 + 64);
  MEMORY[0x28223BE20](v76);
  v69 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v80 = &v65 - v15;
  sub_21898BBC4(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v65 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v20 = v19;
  v21 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v24 = v3;
  sub_219BE5F84();
  v75 = v7;
  sub_219BEB244();
  v25 = v21;

  if ((*(v21 + 48))(v18, 1, v20) == 1)
  {
    sub_21967F488(v18, sub_21898BBC4);
    type metadata accessor for TagFeedUncollapsedBlueprintModifier.Errors(0);
    sub_2186CC344(&qword_27CC1D998, type metadata accessor for TagFeedUncollapsedBlueprintModifier.Errors, &unk_219C974AC);
    v26 = swift_allocError();
    v28 = v27;
    *v27 = sub_219BE5F84();
    v28[1] = v29;
    swift_storeEnumTagMultiPayload();
    v31 = v82;
    v30 = v83;
    *v82 = v26;
    v32 = v81;
    (*(v81 + 104))(v31, *MEMORY[0x277D6DF68], v30);
    v84(v31);
    return (*(v32 + 8))(v31, v30);
  }

  v34 = v24;
  v35 = v83;
  v68 = v25;
  (*(v25 + 32))(v23, v18, v20);
  sub_219BE6934();
  v36 = v82;
  v67 = v23;
  v66 = v20;
  if ((v87 >> 58) & 0x3C | (v87 >> 1) & 3)
  {
    v37 = v84;
    v38 = v35;
  }

  else
  {
    v39 = swift_projectBox();
    v40 = v77;
    sub_21967F208(v39, v77, type metadata accessor for TagFeedSectionGapDescriptor);
    v41 = v78;
    if ((*(v78 + 48))(v40, 1, v76) != 1)
    {
      v83 = type metadata accessor for TagFeedBlueprintCollapsedSection;
      v48 = v80;
      sub_21967F270(v40, v80, type metadata accessor for TagFeedBlueprintCollapsedSection);

      MEMORY[0x28223BE20](v49);
      *(&v65 - 2) = v48;
      sub_21898BB10(0);
      v82 = sub_219BE3204();
      v50 = v72;
      sub_21967F208(v34, v72, type metadata accessor for TagFeedUncollapsedBlueprintModifier);
      v51 = v74;
      v52 = v75;
      (*(v74 + 16))(v79, v86, v75);
      v53 = v48;
      v54 = v69;
      sub_21967F208(v53, v69, type metadata accessor for TagFeedBlueprintCollapsedSection);
      v55 = (*(v70 + 80) + 16) & ~*(v70 + 80);
      v56 = (v71 + *(v51 + 80) + v55) & ~*(v51 + 80);
      v57 = (v73 + *(v41 + 80) + v56) & ~*(v41 + 80);
      v58 = swift_allocObject();
      sub_21967F270(v50, v58 + v55, type metadata accessor for TagFeedUncollapsedBlueprintModifier);
      (*(v51 + 32))(v58 + v56, v79, v52);
      sub_21967F270(v54, v58 + v57, v83);
      v59 = (v58 + ((v13 + v57 + 7) & 0xFFFFFFFFFFFFFFF8));
      v61 = v84;
      v60 = v85;
      *v59 = v84;
      v59[1] = v60;

      v62 = sub_219BE2E54();
      sub_219BE2F74();

      v63 = swift_allocObject();
      *(v63 + 16) = v61;
      *(v63 + 24) = v60;

      v64 = sub_219BE2E54();
      sub_219BE2FD4();

      (*(v68 + 8))(v67, v66);
      return sub_21967F488(v80, type metadata accessor for TagFeedBlueprintCollapsedSection);
    }

    v38 = v35;
    sub_21967F488(v40, type metadata accessor for TagFeedSectionGapDescriptor);
    v37 = v84;
  }

  type metadata accessor for TagFeedUncollapsedBlueprintModifier.Errors(0);
  sub_2186CC344(&qword_27CC1D998, type metadata accessor for TagFeedUncollapsedBlueprintModifier.Errors, &unk_219C974AC);
  v42 = swift_allocError();
  v43 = v67;
  v44 = v68;
  v45 = v66;
  (*(v68 + 16))(v46, v67, v66);
  swift_storeEnumTagMultiPayload();
  *v36 = v42;
  v47 = v81;
  (*(v81 + 104))(v36, *MEMORY[0x277D6DF68], v38);
  v37(v36);
  (*(v47 + 8))(v36, v38);
  return (*(v44 + 8))(v43, v45);
}

uint64_t sub_21967DC24(uint64_t a1)
{
  sub_21967F4E8(0, &qword_280EE7028, MEMORY[0x277D6D310], MEMORY[0x277D6CF30]);
  type metadata accessor for TagFeedBlueprintCollapsedSection(0);

  v1 = sub_219BE2E54();
  sub_21898C1B8(0);
  sub_2186CC344(&qword_280E8FC68, sub_21898C1B8, MEMORY[0x277D834C8]);
  v2 = sub_219BE2F34();

  return v2;
}

uint64_t sub_21967DD28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *), uint64_t a6)
{
  v45 = a6;
  v53 = a5;
  v8 = sub_219BE6DF4();
  v43 = *(v8 - 8);
  v44 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21967F10C(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x28223BE20](v10);
  v39 = &v36 - v11;
  sub_21898BCDC(0);
  MEMORY[0x28223BE20](v12 - 8);
  sub_21967F10C(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v14 = v13;
  v38 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v36 - v15;
  v49 = *a1;
  sub_21898BB10(0);
  sub_2186CC344(&qword_280E8F520, sub_21898BB10, MEMORY[0x277D83970]);
  sub_2186CC344(&unk_280EE5DD0, MEMORY[0x277D6D310], MEMORY[0x277D6D308]);
  v17 = sub_219BF56C4();
  v37 = v14;
  sub_219BEB1B4();
  v47 = a4;
  v48 = v17;
  v18 = v36;
  sub_2189467A0(sub_21967F468, v46, v19);
  v21 = v20;
  v36 = v18;

  sub_218954350(0);
  v23 = v22;
  v24 = sub_2186CC344(&qword_280EE5870, sub_218954350, MEMORY[0x277D6D720]);
  v25 = sub_2186CC344(&qword_280EE5880, sub_218954350, MEMORY[0x277D6D718]);
  MEMORY[0x21CEB9170](v21, v23, v24, v25);
  type metadata accessor for TagFeedModel(0);
  sub_2186F7410();
  sub_2186CC344(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
  sub_219BEB1A4();
  v26 = sub_219759E94();
  sub_219BEEFF4();
  sub_219BEEFE4();
  type metadata accessor for TagFeedServiceConfig(0);
  sub_2186CC344(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  v27 = sub_219BEEFC4();

  v28 = 0;
  if (v27)
  {
    v28 = sub_219BEDC74();
  }

  else
  {
    v50 = 0;
    v51 = 0;
  }

  v49 = v27;
  v52 = v28;
  v29 = v37;
  sub_219BEB2C4();
  v30 = sub_21885AB78(v26);
  v32 = v42;
  v31 = v43;
  v33 = v44;
  (*(v43 + 104))(v42, *MEMORY[0x277D6D850], v44, v30);
  sub_218D5BF28();
  v34 = v39;
  sub_219BE85A4();
  (*(v31 + 8))(v32, v33);
  v53(v34);
  (*(v40 + 8))(v34, v41);
  return (*(v38 + 8))(v16, v29);
}

uint64_t sub_21967E2D0(void *a1, void (*a2)(char *))
{
  sub_21967F10C(0, &qword_280EE4B20, MEMORY[0x277D6DF88]);
  v5 = v4;
  v6 = *(v4 - 8);
  v7 = MEMORY[0x28223BE20](v4);
  v9 = &v12 - v8;
  *(&v12 - v8) = a1;
  (*(v6 + 104))(&v12 - v8, *MEMORY[0x277D6DF68], v5, v7);
  v10 = a1;
  a2(v9);
  return (*(v6 + 8))(v9, v5);
}

void sub_21967E3F4(uint64_t a1@<X0>, void (**a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v89 = a4;
  v87 = a3;
  v85 = a2;
  v82 = sub_219BDBD64();
  v81 = *(v82 - 1);
  MEMORY[0x28223BE20](v82);
  v80 = v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v88);
  v84 = v74 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v90 = v74 - v8;
  sub_21898BF70(0);
  v10 = v9;
  v91 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v94 = v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v95 = (v74 - v13);
  sub_21898BEA4(0);
  MEMORY[0x28223BE20](v14 - 8);
  v79 = v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v77 = v74 - v17;
  v18 = type metadata accessor for TagFeedBlueprintCollapsedSection(0);
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v78 = v74 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v86 = v74 - v22;
  MEMORY[0x28223BE20](v23);
  v92 = v74 - v24;
  v25 = type metadata accessor for TagFeedSectionGapDescriptor(0);
  MEMORY[0x28223BE20](v25);
  v83 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218954350(0);
  v93 = v27;
  v28 = a1;
  sub_219BE6934();
  v29 = v100;
  if ((v29 >> 58) & 0x3C | (v29 >> 1) & 3 || (v30 = swift_projectBox(), (*(v19 + 48))(v30, 1, v18) == 1))
  {

    (*(*(v93 - 8) + 16))(v89, v28);
    return;
  }

  v74[2] = v29;
  v31 = v30;
  v32 = v83;
  sub_21967F208(v31, v83, type metadata accessor for TagFeedSectionGapDescriptor);
  v33 = v92;
  sub_21967F208(v32, v92, type metadata accessor for TagFeedBlueprintCollapsedSection);
  v34 = sub_2186F7410();
  v35 = sub_2186CC344(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
  v36 = v85;
  v74[1] = v34;
  v76 = v35;
  if ((sub_219BE6954() & 1) == 0 || ((v37 = *(v18 + 20), v38 = *(v33 + v37), v39 = *(v33 + v37 + 8), v40 = (v36 + v37), v38 != *v40) || v39 != v40[1]) && (sub_219BF78F4() & 1) == 0)
  {
    v95 = type metadata accessor for TagFeedBlueprintCollapsedSection;
    sub_21967F488(v33, type metadata accessor for TagFeedBlueprintCollapsedSection);
    v58 = v86;
    sub_21967F270(v83, v86, type metadata accessor for TagFeedBlueprintCollapsedSection);
    v59 = v78;
    (*(*(v93 - 8) + 16))(v78, v58);
    v60 = v80;
    sub_219BDBD54();
    v61 = sub_219BDBD44();
    v63 = v62;
    (*(v81 + 8))(v60, v82);
    v64 = *(v58 + *(v18 + 24));
    v65 = (v59 + *(v18 + 20));
    *v65 = v61;
    v65[1] = v63;
    *(v59 + *(v18 + 24)) = v64;
    v66 = swift_allocBox();
    v68 = v67;
    sub_21967F208(v59, v67, type metadata accessor for TagFeedBlueprintCollapsedSection);
    (*(v19 + 56))(v68, 0, 1, v18);
    v96[0] = v66;

    sub_219BE6974();
    sub_219BE6924();
    v69 = v95;
    sub_21967F488(v59, v95);
    v70 = v86;
    v71 = v69;
LABEL_25:
    sub_21967F488(v70, v71);

    return;
  }

  sub_219BE6934();
  v98 = v99;
  v41 = sub_2186CC344(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
  v42 = sub_219BF5E44();
  v43 = MEMORY[0x277D84F90];
  v44 = v33;
  if (!v42)
  {
LABEL_24:
    v72 = sub_2186CC344(&qword_280EE5CE8, sub_21898BF70, MEMORY[0x277D6D408]);
    v73 = sub_2186CC344(&unk_280EE5CF0, sub_21898BF70, MEMORY[0x277D6D3F8]);
    MEMORY[0x21CEB9170](v43, v10, v72, v73);
    sub_219BE6924();
    sub_21967F488(v44, type metadata accessor for TagFeedBlueprintCollapsedSection);
    v70 = v83;
    v71 = type metadata accessor for TagFeedBlueprintCollapsedSection;
    goto LABEL_25;
  }

  v45 = v42;
  v97 = MEMORY[0x277D84F90];
  sub_218C342A8(0, v42 & ~(v42 >> 63), 0);
  v43 = v97;
  v86 = v41;
  sub_219BF5DF4();
  if ((v45 & 0x8000000000000000) == 0)
  {
    v85 = (v91 + 16);
    v82 = (v91 + 8);
    v46 = (v91 + 32);
    v75 = v10;
    while (1)
    {
      v47 = sub_219BF5EC4();
      (*v85)(v94);
      v47(v96, 0);
      v48 = v90;
      sub_219BE5FC4();
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        break;
      }

      v49 = sub_219BE5B24();
      if (!*(v87 + 16))
      {

        goto LABEL_18;
      }

      v51 = v84;
      v52 = v87;
      v53 = sub_21870F700(v49, v50);
      v55 = v54;

      if ((v55 & 1) == 0)
      {

        v10 = v75;
        goto LABEL_18;
      }

      *v51 = *(*(v52 + 56) + 8 * v53);
      swift_storeEnumTagMultiPayload();
      swift_retain_n();
      sub_219BE5FB4();

      v10 = v75;
      (*v82)(v94, v75);
LABEL_19:
      v97 = v43;
      v57 = *(v43 + 16);
      v56 = *(v43 + 24);
      if (v57 >= v56 >> 1)
      {
        sub_218C342A8((v56 > 1), v57 + 1, 1);
        v43 = v97;
      }

      *(v43 + 16) = v57 + 1;
      (*(v91 + 32))(v43 + ((*(v91 + 80) + 32) & ~*(v91 + 80)) + *(v91 + 72) * v57, v95, v10);
      v44 = v92;
      sub_219BF5E94();
      if (!--v45)
      {
        goto LABEL_24;
      }
    }

    sub_21967F488(v48, type metadata accessor for TagFeedModel);
LABEL_18:
    (*v46)(v95, v94, v10);
    goto LABEL_19;
  }

  __break(1u);
}

uint64_t sub_21967EEA8()
{
  sub_21967F4E8(0, &qword_280E8BDD0, MEMORY[0x277D6DE60], MEMORY[0x277D84560]);
  v0 = sub_219BE81C4();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_219C09EC0;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D6DE38], v0);
  v6(v5 + v2, *MEMORY[0x277D6DE30], v0);
  v7 = sub_218847E58(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_21967F010(uint64_t a1)
{
  v2 = sub_2186CC344(&qword_27CC1D9A0, type metadata accessor for TagFeedUncollapsedBlueprintModifier, &unk_219C9744C);

  return MEMORY[0x2821D4040](a1, v2);
}

void sub_21967F10C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for TagFeedSectionDescriptor;
    v8[1] = type metadata accessor for TagFeedModel(255);
    v8[2] = sub_2186F7410();
    v8[3] = sub_2186CC344(&unk_280EDE820, type metadata accessor for TagFeedModel, &unk_219C47934);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_21967F208(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21967F270(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_21967F2D8(uint64_t *a1)
{
  v3 = *(type metadata accessor for TagFeedUncollapsedBlueprintModifier(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  sub_21967F10C(0, &qword_280EE36C0, MEMORY[0x277D6EC60]);
  v7 = (v5 + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v8 = *(*(v6 - 8) + 64);
  v9 = *(type metadata accessor for TagFeedBlueprintCollapsedSection(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v1 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_21967DD28(a1, v1 + v4, v1 + v7, v1 + v10, *v11, *(v11 + 8));
}

uint64_t sub_21967F488(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_21967F4E8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_21967F54C(uint64_t a1)
{
  sub_218954350(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

uint64_t type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes(uint64_t a1)
{
  result = qword_27CC1D9B8;
  if (!qword_27CC1D9B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21967F62C(uint64_t a1)
{
  sub_219BE9834();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGRect(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_21967F6B0(uint64_t a1)
{
  v2 = sub_21967F770(&unk_27CC1D9D0, &unk_219C97560);

  return MEMORY[0x2821D5688](a1, v2);
}

uint64_t sub_21967F770(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FollowingNotificationsSectionFooterViewLayoutAttributes(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_21967F7B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v49 = a3;
  v4 = type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Footer(0);
  v42 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v43 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v44 = &v42 - v7;
  v8 = sub_219BF00D4();
  v50 = *(v8 - 8);
  v51 = v8;
  MEMORY[0x28223BE20](v8);
  v46 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Header(0);
  v45 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v42 - v14;
  v16 = sub_219BE9834();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v42 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C3F934(0);
  sub_219BE8184();
  v20 = v57;
  if (v57 < 2)
  {
    goto LABEL_17;
  }

  v21 = v58;
  v47 = v59;
  sub_219BE95F4();
  v22 = (*(v17 + 88))(v19, v16);
  if (v22 == *MEMORY[0x277D6E758])
  {
    v23 = sub_219BE9604();
    if ((v23 & 0x8000000000000000) == 0)
    {
      if (v23 < *(v20 + 16))
      {
        sub_2196800D0(v20 + ((*(v45 + 80) + 32) & ~*(v45 + 80)) + *(v45 + 72) * v23, v15, type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Header);
        sub_2196800D0(v15, v12, type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Header);
        v45 = v21;
        v25 = v50;
        v24 = v51;
        v26 = v46;
        (*(v50 + 32))(v46, v12, v51);
        __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
        v27 = sub_219BF0234();

        (*(v25 + 8))(v26, v24);
        v28 = v15;
        v29 = type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Header;
LABEL_11:
        sub_219680138(v28, v29);
        return v27;
      }

      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v22 == *MEMORY[0x277D6E750])
  {
    v30 = sub_219BE9604();
    v31 = *(v20 + 16);
    v32 = __OFSUB__(v30, v31);
    v33 = v30 - v31;
    if (!v32)
    {
      if ((v33 & 0x8000000000000000) == 0)
      {
        if (v33 < *(v21 + 16))
        {
          v34 = v44;
          sub_2196800D0(v21 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v33, v44, type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Footer);
          v35 = v43;
          sub_2196800D0(v34, v43, type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Footer);
          v37 = v50;
          v36 = v51;
          v38 = v46;
          (*(v50 + 32))(v46, v35, v51);
          __swift_project_boxed_opaque_existential_1((v48 + 16), *(v48 + 40));
          v27 = sub_219BF0234();

          (*(v37 + 8))(v38, v36);
          v28 = v34;
          v29 = type metadata accessor for SharedWithYouFeedLayoutSectionDescriptor.Footer;
          goto LABEL_11;
        }

        goto LABEL_16;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      __break(1u);
LABEL_17:
      v57 = 0;
      v58 = 0xE000000000000000;
      sub_219BF7314();
      v55 = v57;
      v56 = v58;
      sub_219BE8184();
      v40 = v57;
      v52 = v57;
      v53 = v58;
      v54 = v59;
      sub_219BF7484();
      v41 = sub_218DFACB4(v40);
      MEMORY[0x21CECC330](0xD00000000000002CLL, 0x8000000219CE1A00, v41);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

LABEL_18:
  result = sub_219BF7514();
  __break(1u);
  return result;
}

uint64_t sub_21967FF28(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = sub_219BEF974();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SharedWithYouFeedLayoutModel(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v4;
  sub_218C3FA40(0);
  sub_219BE75E4();
  (*(v6 + 32))(v8, v11, v5);
  __swift_project_boxed_opaque_existential_1((v12 + 16), *(v12 + 40));
  v13 = sub_219BF0224();
  (*(v6 + 8))(v8, v5);
  return v13;
}

uint64_t sub_2196800D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_219680138(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2196801E4(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = v2();

  return v4 & 1;
}

uint64_t sub_219680228(void *a1, void *a2)
{
  v4 = a1;
  sub_218A450F0();
  if (swift_dynamicCast())
  {

    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D2C360);
    MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D2C3F0);
    MEMORY[0x21CECC330](0xD000000000000026, 0x8000000219D2C3A0);
    v5 = [a2 description];
    v6 = sub_219BF5414();
    v8 = v7;

    MEMORY[0x21CECC330](v6, v8);

    sub_2196818E4();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    sub_219681890(0, &qword_27CC1DA18, type metadata accessor for TodayViewController);
    swift_allocObject();
    v10 = sub_219BE2FF4();

    return v10;
  }

  else
  {

    sub_219681890(0, &qword_27CC1DA18, type metadata accessor for TodayViewController);
    swift_allocObject();
    v12 = a1;
    return sub_219BE2FF4();
  }
}

uint64_t sub_21968042C(void *a1, void *a2)
{
  sub_2186C6148(0, &qword_27CC12690, 0x277D6ED48);
  v14 = a1;
  v4 = a1;
  sub_218A450F0();
  if (swift_dynamicCast())
  {

    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D2C360);
    v5 = sub_219BF7C74();
    MEMORY[0x21CECC330](v5);

    MEMORY[0x21CECC330](0xD000000000000026, 0x8000000219D2C3A0);
    v6 = [a2 description];
    v7 = sub_219BF5414();
    v9 = v8;

    MEMORY[0x21CECC330](v7, v9);

    sub_2196818E4();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0xE000000000000000;
    sub_218E2A220(0, &qword_27CC1DA08, &qword_27CC12690, 0x277D6ED48);
    swift_allocObject();
    v11 = sub_219BE2FF4();

    return v11;
  }

  else
  {

    sub_218E2A220(0, &qword_27CC1DA08, &qword_27CC12690, 0x277D6ED48);
    swift_allocObject();
    v13 = a1;
    return sub_219BE2FF4();
  }
}

uint64_t sub_219680650(void *a1, void *a2)
{
  v4 = a1;
  sub_218A450F0();
  if (swift_dynamicCast())
  {

    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D2C360);
    MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219D2C3D0);
    MEMORY[0x21CECC330](0xD000000000000026, 0x8000000219D2C3A0);
    v5 = [a2 description];
    v6 = sub_219BF5414();
    v8 = v7;

    MEMORY[0x21CECC330](v6, v8);

    sub_2196818E4();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    sub_219681890(0, &qword_27CC1DA10, MEMORY[0x277D2FD90]);
    swift_allocObject();
    v10 = sub_219BE2FF4();

    return v10;
  }

  else
  {

    sub_219681890(0, &qword_27CC1DA10, MEMORY[0x277D2FD90]);
    swift_allocObject();
    v12 = a1;
    return sub_219BE2FF4();
  }
}

uint64_t sub_219680850(void *a1, void *a2)
{
  v4 = a1;
  sub_218A450F0();
  if (swift_dynamicCast())
  {

    sub_219BF7314();
    MEMORY[0x21CECC330](0xD000000000000013, 0x8000000219D2C360);
    MEMORY[0x21CECC330](0xD000000000000015, 0x8000000219D2C380);
    MEMORY[0x21CECC330](0xD000000000000026, 0x8000000219D2C3A0);
    v5 = [a2 description];
    v6 = sub_219BF5414();
    v8 = v7;

    MEMORY[0x21CECC330](v6, v8);

    sub_2196818E4();
    swift_allocError();
    *v9 = 0;
    v9[1] = 0xE000000000000000;
    sub_219681890(0, &qword_27CC1D9F0, type metadata accessor for TagFeedViewController);
    swift_allocObject();
    v10 = sub_219BE2FF4();

    return v10;
  }

  else
  {

    sub_219681890(0, &qword_27CC1D9F0, type metadata accessor for TagFeedViewController);
    swift_allocObject();
    v12 = a1;
    return sub_219BE2FF4();
  }
}

void sub_219680A50(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = sub_219BE8C14();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_219BE9414();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;

  v12 = sub_219BF53D4();

  v26 = a2;
  v13 = [a2 objectForKey_];

  if (v13)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v27, v28);
    sub_2186CF94C(0);
    swift_dynamicCast();
    v14 = *(v11 + 16);
    v15 = objc_allocWithZone(type metadata accessor for FeedViewContext(0));
    swift_unknownObjectRetain();
    v16 = [v15 init];
    v17 = swift_allocObject();
    *(v17 + 16) = v14;
    *(v17 + 24) = v16;
    *(v17 + 32) = 0;
    *(v17 + 40) = 0;
    *(v17 + 48) = 0;
    *(v17 + 56) = 0u;
    *(v17 + 72) = 0u;
    *(v17 + 88) = 0;
    *(v17 + 96) = -1;
    *&v28[0] = v17 | 0x2000000000000004;
    sub_219BE8C04();
    sub_219BE9424();
    sub_219BE6474();
    if (v3)
    {

      (*(v8 + 8))(v10, v7);
      sub_218932F9C(*&v28[0]);
      return;
    }

    (*(v8 + 8))(v10, v7);
    sub_218932F9C(*&v28[0]);

    v18 = sub_219BF53D4();

    v19 = [v26 objectForKey_];

    if (v19)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v27, v28);
      sub_2186C6148(0, &qword_280E8E480, 0x277D75D28);
      swift_dynamicCast();
      v20 = v29;
      sub_218E2A220(0, &qword_280EE69A0, &qword_280E8E480, 0x277D75D28);
      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v21 = sub_219BF66A4();
      *(swift_allocObject() + 16) = v20;
      type metadata accessor for TagFeedViewController();
      v22 = v20;
      sub_219BE2FB4();

      *(swift_allocObject() + 16) = v22;
      v23 = v22;
      v24 = sub_219BE2E54();
      sub_219BE3054();

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_219680EDC(uint64_t *a1, void *a2, uint64_t (*a3)(void))
{
  v5 = *a1;

  v6 = sub_219BF53D4();

  [a2 setObject:v5 forKey:v6];

  return a3(0);
}

void sub_219680F7C(void *a1, void (*a2)(id))
{
  v3 = a1;
  sub_218A450F0();
  if (swift_dynamicCast())
  {
    v4 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v5 = sub_219BF53D4();

    v6 = [v4 initWithMessage_];

    a2(v6);
  }

  else
  {

    sub_219BF7314();
    MEMORY[0x21CECC330](0xD00000000000001ALL, 0x8000000219D2C340);
    sub_219BF7484();
    v7 = objc_allocWithZone(MEMORY[0x277D6D138]);
    v8 = sub_219BF53D4();

    v9 = [v7 initWithMessage_];

    a2(v9);
  }
}

uint64_t sub_2196811E8@<X0>(uint64_t *a2@<X8>)
{
  v6[4] = sub_2196801A8;
  v6[5] = 0;
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 1107296256;
  v6[2] = sub_2196801E4;
  v6[3] = &block_descriptor_153;
  v3 = _Block_copy(v6);

  v4 = NUFirstViewControllerPassing();
  _Block_release(v3);
  result = swift_isEscapingClosureAtFileLocation();
  if (result)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for TagFeedViewController();
    result = swift_dynamicCastClass();
    if (!result)
    {

      result = 0;
    }

    *a2 = result;
  }

  return result;
}

void sub_2196812F8(void *a1, uint64_t a2, void (**a3)(void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  _Block_copy(a3);

  v6 = sub_219BF53D4();

  v7 = [a1 objectForKey_];

  if (v7)
  {
    sub_219BF70B4();
    swift_unknownObjectRelease();
    sub_218751558(v23, v24);
    v8 = swift_dynamicCast();
    if (v22 - 3 >= 0x1B && ((1 << v22) & 0x180000003) == 0)
    {
      MEMORY[0x28223BE20](v8);
      type metadata accessor for TagModel();
      sub_219BE3204();

      sub_2186C6148(0, &qword_280E8E3B0, 0x277D85C78);
      v15 = sub_219BF66A4();
      *(swift_allocObject() + 16) = a1;
      type metadata accessor for TagFeedViewController();
      v16 = a1;
      sub_219BE2F64();

      v17 = swift_allocObject();
      v17[2] = v16;
      v17[3] = sub_218967168;
      v17[4] = v5;
      v18 = v16;

      v19 = sub_219BE2E54();
      sub_219BE2F74();

      v20 = swift_allocObject();
      *(v20 + 16) = sub_218967168;
      *(v20 + 24) = v5;

      v14 = sub_219BE2E54();
      sub_219BE2FD4();

      goto LABEL_5;
    }

    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_219BF7314();

    v9 = sub_219BF53D4();

    v10 = [a1 objectForKey_];

    if (v10)
    {
      sub_219BF70B4();
      swift_unknownObjectRelease();
      sub_218751558(v23, v24);
      swift_dynamicCast();
      LOBYTE(v24[0]) = v21;
      v11 = PPT.Test.rawValue.getter();
      MEMORY[0x21CECC330](v11);

      MEMORY[0x21CECC330](0xD00000000000001CLL, 0x8000000219D2C320);
      v12 = objc_allocWithZone(MEMORY[0x277D6D138]);
      v13 = sub_219BF53D4();

      v14 = [v12 initWithMessage_];

      (a3)[2](a3, v14);
LABEL_5:

      return;
    }
  }

  else
  {
    _Block_release(a3);
    __break(1u);
  }

  _Block_release(a3);
  __break(1u);
}

uint64_t sub_2196817C4()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = off_282A4D750[0];
  type metadata accessor for TagService();
  return v3(v1, v2);
}

void sub_219681890(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_219BE3114();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_2196818E4()
{
  result = qword_27CC1D9F8;
  if (!qword_27CC1D9F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1D9F8);
  }

  return result;
}

uint64_t sub_219681958(uint64_t a1, void (*a2)(char *), uint64_t a3)
{
  v55 = a3;
  v56 = a2;
  sub_219682414(0, &qword_27CC1DA28, MEMORY[0x277D6DF88]);
  v53 = *(v4 - 8);
  v54 = v4;
  MEMORY[0x28223BE20](v4);
  v52 = &v45 - v5;
  v6 = type metadata accessor for SharedWithYouFeedGapLocation(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_219BF0BD4();
  v45 = *(v9 - 8);
  v46 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218C40594(0);
  v13 = v12;
  v58 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v57 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SharedWithYouFeedGroup(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219682348(0);
  MEMORY[0x28223BE20](v18 - 8);
  sub_219682414(0, &qword_27CC104F8, MEMORY[0x277D6EC60]);
  v20 = v19;
  v51 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v45 - v21;
  v23 = sub_218713A40(&qword_27CC1DA38, sub_218C40594, MEMORY[0x277D6D720]);
  v24 = sub_218713A40(&qword_27CC1DA40, sub_218C40594, MEMORY[0x277D6D718]);
  v59 = v13;
  MEMORY[0x21CEB9150](MEMORY[0x277D84F90], v13, v23, v24);
  v25 = type metadata accessor for SharedWithYouFeedSectionDescriptor(0);
  v26 = type metadata accessor for SharedWithYouFeedModel(0);
  v27 = sub_218713A40(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
  v28 = sub_218713A40(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
  v49 = v26;
  v50 = v25;
  v47 = v28;
  v48 = v27;
  sub_219BEB2D4();
  v29 = v3[2] >> 61;
  if (v29 <= 2 && v29 != 1)
  {
    sub_218C60E54(0);
    v30 = swift_projectBox();
    sub_218C60F58(v30, v17);
    __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
    type metadata accessor for SharedWithYouFeedServiceConfig(0);
    sub_218713A40(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);

    sub_219BEE7A4();
    v31 = v57;
    sub_21934DF3C(v17, v11, v57);
    (*(v45 + 8))(v11, v46);
    sub_219BEB1E4();

    (*(v58 + 8))(v31, v59);
    sub_2196825A4(v17, type metadata accessor for SharedWithYouFeedGroup);
  }

  type metadata accessor for SharedWithYouFeedServiceConfig(0);
  sub_218713A40(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
  sub_219BEF3D4();
  if (sub_219BEF394())
  {
    if ((sub_219BEE854() & 1) == 0)
    {
      goto LABEL_9;
    }

    v32 = swift_allocObject();
    sub_219682508(0, &qword_27CC1DA48, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v32 + 16) = sub_219BEE874();
    *v8 = v32;
    v33 = MEMORY[0x277D33068];
  }

  else
  {
    v34 = swift_allocObject();
    sub_219682508(0, &qword_27CC1DA48, MEMORY[0x277D32188]);
    swift_allocObject();

    *(v34 + 16) = sub_219BEE874();
    *v8 = v34;
    v33 = MEMORY[0x277D33090];
  }

  v35 = *v33;
  sub_219682508(0, &qword_27CC12F80, MEMORY[0x277D33098]);
  v37 = v36;
  v38 = v20;
  v39 = *(v36 - 8);
  (*(v39 + 104))(v8, v35, v36);
  (*(v39 + 56))(v8, 0, 1, v37);
  v20 = v38;
  v40 = v57;
  sub_219A368AC(v8, v57);
  sub_2196825A4(v8, type metadata accessor for SharedWithYouFeedGapLocation);
  sub_219BEB1E4();
  (*(v58 + 8))(v40, v59);
LABEL_9:
  sub_219BEEFF4();

  sub_219BEEFE4();
  v41 = sub_219BEEFC4();

  v42 = 0;
  if (v41)
  {
    v42 = sub_219BEDC74();
  }

  else
  {
    v61 = 0;
    v62 = 0;
  }

  v60 = v41;
  v63 = v42;
  sub_219BEB2C4();

  v43 = v52;
  sub_219BE85C4();
  v56(v43);

  (*(v53 + 8))(v43, v54);
  return (*(v51 + 8))(v22, v20);
}

uint64_t sub_219682224(uint64_t a1)
{
  v2 = sub_219682604();

  return MEMORY[0x2821D4040](a1, v2);
}

unint64_t sub_219682264()
{
  result = qword_27CC1DA20;
  if (!qword_27CC1DA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DA20);
  }

  return result;
}

void sub_219682348(uint64_t a1)
{
  if (!qword_27CC1DA30)
  {
    sub_218C40594(255);
    sub_218713A40(&qword_27CC1DA38, sub_218C40594, MEMORY[0x277D6D720]);
    sub_218713A40(&qword_27CC1DA40, sub_218C40594, MEMORY[0x277D6D718]);
    v1 = sub_219BE2454();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1DA30);
    }
  }
}

void sub_219682414(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = type metadata accessor for SharedWithYouFeedSectionDescriptor(255);
    v8[1] = type metadata accessor for SharedWithYouFeedModel(255);
    v8[2] = sub_218713A40(&qword_27CC0FB80, type metadata accessor for SharedWithYouFeedSectionDescriptor, &unk_219C1903C);
    v8[3] = sub_218713A40(&unk_27CC0B830, type metadata accessor for SharedWithYouFeedModel, &unk_219C72588);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_219682508(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for SharedWithYouFeedServiceConfig(255);
    v7 = sub_218713A40(&qword_280EAB3F0, type metadata accessor for SharedWithYouFeedServiceConfig, &unk_219C438B8);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_2196825A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_219682604()
{
  result = qword_27CC1DA50;
  if (!qword_27CC1DA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DA50);
  }

  return result;
}

uint64_t sub_219682698(uint64_t a1)
{
  v2 = sub_2196837C0(&unk_27CC1C580, type metadata accessor for IssueListTagFeedGroup, &unk_219C97B50);

  return MEMORY[0x282191938](a1, v2);
}

void sub_219682704(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  sub_219683704(0);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x28223BE20](v3);
  v38 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_219BEF554();
  v6 = *(v5 - 8);
  v39 = v5;
  v40 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219683738(0);
  v10 = v9;
  v41 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196838C8(0, &qword_27CC1DA68, MEMORY[0x277D844C8]);
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for IssueListTagFeedGroup(0);
  MEMORY[0x28223BE20](v16);
  v18 = (&v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = a1[3];
  v46 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_21968376C();
  v44 = v15;
  v20 = v45;
  sub_219BF7B34();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_1(v46);
  }

  else
  {
    v21 = v41;
    v34 = v8;
    v45 = v16;
    LOBYTE(v47) = 0;
    *v18 = sub_219BF76F4();
    v18[1] = v22;
    LOBYTE(v47) = 1;
    sub_2196837C0(&qword_27CC1DA78, sub_219683738, MEMORY[0x277D6CF98]);
    sub_219BF7734();
    sub_219BE3384();
    (*(v21 + 8))(v12, v10);
    v18[2] = v47;
    LOBYTE(v47) = 2;
    v18[3] = sub_219BF7694();
    v18[4] = v23;
    LOBYTE(v47) = 3;
    sub_2196837C0(&unk_280E91390, MEMORY[0x277D32648], MEMORY[0x277D32658]);
    v24 = v34;
    v25 = v39;
    v41 = 0;
    sub_219BF7734();
    v26 = v45;
    (*(v40 + 32))(v18 + *(v45 + 28), v24, v25);
    LOBYTE(v47) = 4;
    sub_2196837C0(&unk_280EE6780, sub_219683704, MEMORY[0x277D6CF98]);
    v27 = v37;
    v28 = v38;
    sub_219BF7734();
    sub_219BE3384();
    (*(v36 + 8))(v28, v27);
    *(v18 + *(v26 + 32)) = v47;
    LOBYTE(v47) = 5;
    v29 = sub_219BF76F4();
    v31 = v30;
    (*(v42 + 8))(v44, v43);
    v32 = (v18 + *(v26 + 36));
    *v32 = v29;
    v32[1] = v31;
    sub_219683808(v18, v35);
    __swift_destroy_boxed_opaque_existential_1(v46);
    sub_21968386C(v18);
  }
}

uint64_t sub_219682DD4(void *a1)
{
  v2 = v1;
  sub_219683704(0);
  v27 = *(v4 - 8);
  v28 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219683738(0);
  v29 = *(v7 - 8);
  v30 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196838C8(0, &unk_27CC1DA80, MEMORY[0x277D84538]);
  v11 = v10;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v25 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21968376C();
  sub_219BF7B44();
  v31 = v2;
  LOBYTE(v33) = 0;
  v15 = v32;
  sub_219BF77F4();
  if (v15)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v17 = v29;
  v26 = v6;
  v32 = v12;
  v18 = v31;
  *&v33 = *(v31 + 16);
  sub_2186E330C(0);
  sub_2196837C0(&qword_280E8EB38, sub_2186E330C, MEMORY[0x277D83970]);

  v19 = v11;
  sub_219BE33D4();
  LOBYTE(v33) = 1;
  sub_2196837C0(&qword_27CC1DA90, sub_219683738, MEMORY[0x277D6CF90]);
  v20 = v30;
  v21 = v14;
  sub_219BF7834();
  (*(v17 + 8))(v9, v20);
  v33 = *(v18 + 24);
  v34 = 2;
  sub_2186E3374();
  sub_21897A7C0();
  sub_219BF7834();
  type metadata accessor for IssueListTagFeedGroup(0);
  LOBYTE(v33) = 3;
  sub_219BEF554();
  sub_2196837C0(&qword_280E913A0, MEMORY[0x277D32648], MEMORY[0x277D32650]);
  sub_219BF7834();
  sub_2186D80B0();
  swift_unknownObjectRetain();
  v22 = v26;
  sub_219BE3404();
  LOBYTE(v33) = 4;
  sub_2196837C0(&unk_280EE6790, sub_219683704, MEMORY[0x277D6CF90]);
  v23 = v28;
  sub_219BF7834();
  v24 = v32;
  (*(v27 + 8))(v22, v23);
  LOBYTE(v33) = 5;
  sub_219BF77F4();
  return (*(v24 + 8))(v21, v19);
}

double sub_219683354(uint64_t a1)
{
  sub_219BF5524();

  return result;
}

unint64_t sub_219683460@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219683B44(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_219683490(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA00000000007265;
  v4 = 0x696669746E656469;
  v5 = 0xEE007974696C6962;
  v6 = 0x6973695664696170;
  v7 = 0xE700000000000000;
  v8 = 0x6C656E6E616863;
  if (v2 != 4)
  {
    v8 = 0x656C746974;
    v7 = 0xE500000000000000;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736575737369;
  if (v2 != 1)
  {
    v10 = 0x6E656449646E696BLL;
    v9 = 0xEE00726569666974;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t sub_219683564()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x6973695664696170;
  v4 = 0x6C656E6E616863;
  if (v1 != 4)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x736575737369;
  if (v1 != 1)
  {
    v5 = 0x6E656449646E696BLL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_219683634@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_219683B44(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_21968365C(uint64_t a1)
{
  v2 = sub_21968376C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219683698(uint64_t a1)
{
  v2 = sub_21968376C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_21968376C()
{
  result = qword_27CC1DA70;
  if (!qword_27CC1DA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DA70);
  }

  return result;
}

uint64_t sub_2196837C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_219683808(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IssueListTagFeedGroup(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_21968386C(uint64_t a1)
{
  v2 = type metadata accessor for IssueListTagFeedGroup(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_2196838C8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21968376C();
    v7 = a3(a1, &type metadata for IssueListTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219683968()
{
  result = qword_27CC1DA98;
  if (!qword_27CC1DA98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DA98);
  }

  return result;
}

unint64_t sub_2196839C0()
{
  result = qword_27CC1DAA0;
  if (!qword_27CC1DAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DAA0);
  }

  return result;
}

unint64_t sub_219683A18()
{
  result = qword_27CC1DAA8;
  if (!qword_27CC1DAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DAA8);
  }

  return result;
}

unint64_t sub_219683B44(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_219683B90@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  sub_218C42540(0);
  v5 = v4;
  v20 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219684678(0, &qword_280E8CCE8, MEMORY[0x277D844C8]);
  v8 = v7;
  v19 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v17 - v9;
  v11 = type metadata accessor for SportsScoreSortingOrFilter(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196845C0();
  sub_219BF7B34();
  if (!v2)
  {
    v14 = v19;
    v15 = v20;
    sub_218C425D4(0);
    sub_219684504(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
    sub_219BF7764();
    (*(v14 + 8))(v10, v8);
    (*(v15 + 32))(v13, v21, v5);
    sub_219684614(v13, v18);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219683E44(uint64_t a1)
{
  v2 = sub_2196845C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219683E80(uint64_t a1)
{
  v2 = sub_2196845C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219683ED4(void *a1)
{
  sub_219684678(0, &qword_280E8C4B8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2196845C0();
  sub_219BF7B44();
  sub_218C425D4(0);
  sub_219684504(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
  sub_219BF7854();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_21968405C(uint64_t a1, uint64_t a2)
{
  sub_218C425D4(0);
  sub_219684504(&qword_280E8FDC8, sub_218C425D4, MEMORY[0x277D344F8]);
  sub_218C4A1E8();

  return sub_219BF2694();
}

void sub_2196840F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_218C42540(0);
  sub_219BF2664();
  v4 = *(v37[0] + 16);

  if (!v4)
  {
LABEL_36:

    return;
  }

  sub_219BF2664();
  v5 = v37[0];
  v33 = *(v37[0] + 16);
  if (!v33)
  {

    v7 = MEMORY[0x277D84F90];
LABEL_39:
    v37[0] = v7;
    sub_218ACC4E4(0);
    sub_219684504(&qword_280E8EE88, sub_218ACC4E4, MEMORY[0x277D83970]);
    sub_219BF56E4();

    return;
  }

  v6 = 0;
  v32 = v37[0] + 32;
  v7 = MEMORY[0x277D84F90];
  v30 = v37[0];
  v31 = a2;
  while (v6 < *(v5 + 16))
  {
    v8 = *(v32 + 8 * v6);

    sub_219659C8C(a2, a3, v8);
    v10 = v9;
    v11 = v9 >> 62;
    if (v9 >> 62)
    {
      v12 = sub_219BF7214();
    }

    else
    {
      v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v13 = v7 >> 62;
    if (v7 >> 62)
    {
      v29 = sub_219BF7214();
      v15 = v29 + v12;
      if (__OFADD__(v29, v12))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }
    }

    else
    {
      v14 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v15 = v14 + v12;
      if (__OFADD__(v14, v12))
      {
        goto LABEL_35;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v13)
      {
        v16 = v7 & 0xFFFFFFFFFFFFFF8;
        if (v15 <= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_18;
        }

        goto LABEL_17;
      }

LABEL_16:
      sub_219BF7214();
      goto LABEL_17;
    }

    if (v13)
    {
      goto LABEL_16;
    }

LABEL_17:
    v7 = sub_219BF7364();
    v16 = v7 & 0xFFFFFFFFFFFFFF8;
LABEL_18:
    v36 = v12;
    v17 = *(v16 + 16);
    v18 = *(v16 + 24);
    if (v11)
    {
      v19 = sub_219BF7214();
      if (!v19)
      {
LABEL_4:

        if (v36 > 0)
        {
          goto LABEL_41;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v19 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v19)
      {
        goto LABEL_4;
      }
    }

    if (((v18 >> 1) - v17) < v36)
    {
      goto LABEL_42;
    }

    v35 = v6;
    v20 = v16 + 8 * v17 + 32;
    if (v11)
    {
      if (v19 < 1)
      {
        goto LABEL_44;
      }

      sub_218ACC4E4(0);
      sub_219684504(&qword_27CC0CC70, sub_218ACC4E4, MEMORY[0x277D83988]);
      for (i = 0; i != v19; ++i)
      {
        v23 = sub_218A35350(v37, i, v10);
        v25 = *v24;

        (v23)(v37, 0);
        *(v20 + 8 * i) = v25;
      }

      a2 = v31;
      v5 = v30;
      v21 = v36;
    }

    else
    {
      sub_219BF4044();
      v21 = v36;
      swift_arrayInitWithCopy();
    }

    v6 = v35;
    if (v21 > 0)
    {
      v26 = *(v16 + 16);
      v27 = __OFADD__(v26, v21);
      v28 = v26 + v21;
      if (v27)
      {
        goto LABEL_43;
      }

      *(v16 + 16) = v28;
    }

LABEL_5:
    if (++v6 == v33)
    {

      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
}

uint64_t sub_219684504(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsScoreSortingOrFilter(uint64_t a1)
{
  result = qword_280EBA120;
  if (!qword_280EBA120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_2196845C0()
{
  result = qword_280EBA178[0];
  if (!qword_280EBA178[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_280EBA178);
  }

  return result;
}

uint64_t sub_219684614(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsScoreSortingOrFilter(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219684678(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_2196845C0();
    v7 = a3(a1, &type metadata for SportsScoreSortingOrFilter.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_2196846F0()
{
  result = qword_27CC1DAB8;
  if (!qword_27CC1DAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DAB8);
  }

  return result;
}

unint64_t sub_219684748()
{
  result = qword_280EBA168;
  if (!qword_280EBA168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA168);
  }

  return result;
}

unint64_t sub_2196847A0()
{
  result = qword_280EBA170;
  if (!qword_280EBA170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280EBA170);
  }

  return result;
}

uint64_t sub_2196847F4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BED8D4();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219685004(0, &qword_27CC1DAD8, MEMORY[0x277D844C8]);
  v7 = v6;
  v18 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - v8;
  v10 = type metadata accessor for SportsBracketTagFeedGroup(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219684F4C();
  sub_219BF7B34();
  if (!v2)
  {
    v13 = v18;
    v14 = v19;
    sub_219685068(&unk_280E92630, MEMORY[0x277D31C50], MEMORY[0x277D31C60]);
    sub_219BF7734();
    (*(v13 + 8))(v9, v7);
    (*(v14 + 32))(v12, v20, v4);
    sub_219684FA0(v12, v17);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219684AA0(uint64_t a1)
{
  v2 = sub_219684F4C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219684ADC(uint64_t a1)
{
  v2 = sub_219684F4C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_219684B30(void *a1)
{
  sub_219685004(0, &qword_27CC1DAE8, MEMORY[0x277D84538]);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219684F4C();
  sub_219BF7B44();
  sub_219BED8D4();
  sub_219685068(&qword_280E92640, MEMORY[0x277D31C50], MEMORY[0x277D31C58]);
  sub_219BF7834();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_219684CB8(uint64_t a1)
{
  v2 = sub_219685068(&qword_27CC1DAD0, type metadata accessor for SportsBracketTagFeedGroup, &unk_219C97EA4);

  return MEMORY[0x282191938](a1, v2);
}

uint64_t sub_219684E48(uint64_t a1)
{
  result = sub_219685068(&qword_27CC1A530, type metadata accessor for SportsBracketTagFeedGroup, &unk_219C97F78);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219684EA0(void *a1)
{
  a1[1] = sub_219685068(&qword_27CC1DAD0, type metadata accessor for SportsBracketTagFeedGroup, &unk_219C97EA4);
  a1[2] = sub_219685068(&qword_27CC1C770, type metadata accessor for SportsBracketTagFeedGroup, &unk_219C97F50);
  result = sub_219685068(&qword_27CC1C880, type metadata accessor for SportsBracketTagFeedGroup, &unk_219C97F28);
  a1[3] = result;
  return result;
}

unint64_t sub_219684F4C()
{
  result = qword_27CC1DAE0;
  if (!qword_27CC1DAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DAE0);
  }

  return result;
}

uint64_t sub_219684FA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsBracketTagFeedGroup(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_219685004(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219684F4C();
    v7 = a3(a1, &type metadata for SportsBracketTagFeedGroup.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t sub_219685068(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2196850C4()
{
  result = qword_27CC1DAF0;
  if (!qword_27CC1DAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DAF0);
  }

  return result;
}

unint64_t sub_21968511C()
{
  result = qword_27CC1DAF8;
  if (!qword_27CC1DAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DAF8);
  }

  return result;
}

unint64_t sub_219685174()
{
  result = qword_27CC1DB00;
  if (!qword_27CC1DB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB00);
  }

  return result;
}

uint64_t sub_2196851C8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v47 = a5;
  v45 = a4;
  v41 = a1;
  v46 = sub_219BDB184();
  v40 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v42 = v7;
  v43 = v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219686124(0, &unk_280EE8780, MEMORY[0x277D2DAD8], MEMORY[0x277D83D88]);
  v39 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  __swift_project_boxed_opaque_existential_1((v5 + 24), *(v5 + 48));
  v14 = [a3 identifier];
  sub_219BF5414();

  v37 = sub_219BF4774();

  sub_218718690(v5 + 64, v48);
  v15 = v49;
  v36[1] = v50;
  v16 = __swift_project_boxed_opaque_existential_1(v48, v49);
  v17 = [a3 respondsToSelector_];
  v44 = a3;
  if ((v17 & 1) != 0 && (v17 = [a3 dismissingIdentifier]) != 0)
  {
    v18 = v17;
    v19 = sub_219BF5414();
    v21 = v20;
  }

  else
  {
    v19 = 0;
    v21 = 0;
  }

  v22 = MEMORY[0x28223BE20](v17);
  v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 16))(v24, v16, v15, v22);
  v36[0] = v13;
  sub_218A75968(v19, v21, v24, v15, v13);
  __swift_destroy_boxed_opaque_existential_1(v48);
  v26 = v10;
  sub_219685F74(v13, v10);
  v27 = v40;
  v28 = v43;
  v29 = v46;
  (*(v40 + 16))(v43, v41, v46);
  v30 = (*(v39 + 80) + 33) & ~*(v39 + 80);
  v31 = (v38 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = (*(v27 + 80) + v31 + 8) & ~*(v27 + 80);
  v33 = swift_allocObject();
  v34 = v47;
  *(v33 + 16) = v45;
  *(v33 + 24) = v34;
  *(v33 + 32) = v37 & 1;
  sub_218BD385C(v26, v33 + v30);
  *(v33 + v31) = v44;
  (*(v27 + 32))(v33 + v32, v28, v29);

  swift_unknownObjectRetain();
  sub_219BDD154();

  return sub_219686188(v36[0], &unk_280EE8780, MEMORY[0x277D2DAD8]);
}

uint64_t sub_219685628(uint64_t a1, void (*a2)(void), uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v73 = a7;
  v75 = a6;
  v68 = a5;
  LODWORD(v67) = a4;
  v78 = a1;
  v8 = sub_219BDBD34();
  v76 = *(v8 - 8);
  v77 = v8;
  MEMORY[0x28223BE20](v8);
  v74 = &v51[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = MEMORY[0x277D83D88];
  sub_219686124(0, &unk_280EE8690, MEMORY[0x277D2DD28], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v11 - 8);
  v69 = &v51[-v12];
  v13 = sub_219BDF754();
  v71 = *(v13 - 8);
  v72 = v13;
  MEMORY[0x28223BE20](v13);
  v56 = &v51[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_219686124(0, &unk_280EE8780, MEMORY[0x277D2DAD8], v10);
  MEMORY[0x28223BE20](v15 - 8);
  v63 = &v51[-v16];
  v62 = sub_219BDF4A4();
  v60 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v66 = &v51[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = sub_219BDF8A4();
  v58 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v19 = &v51[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for HeadlineExposureDataStack();
  v20 = swift_allocObject();
  *(v20 + 16) = MEMORY[0x277D84F98];
  a2();
  sub_219686124(0, &qword_280E8C160, MEMORY[0x277CEAD20], MEMORY[0x277D84560]);
  v22 = v21;
  v23 = sub_219BDCD44();
  v24 = *(v23 - 8);
  v25 = *(v24 + 72);
  v26 = *(v24 + 80);
  v65 = v22;
  v27 = swift_allocObject();
  v64 = xmmword_219C09BA0;
  *(v27 + 16) = xmmword_219C09BA0;
  v28 = *MEMORY[0x277CEAD18];
  v29 = *(v24 + 104);
  v61 = (v26 + 32) & ~v26;
  v59 = v29;
  v29(v27 + v61, v28, v23);
  v70 = v20;
  sub_2196E07C0(v78, v27);

  sub_219BDF894();
  sub_2196861F8(&qword_280EE8640, MEMORY[0x277D2DE40], MEMORY[0x277D2DE38]);
  v30 = v57;
  sub_219BDCCC4();
  v31 = v63;
  v32 = v19;
  v33 = v60;
  v34 = v62;
  (*(v58 + 8))(v32, v30);
  sub_219685F74(v68, v31);
  v35 = (*(v33 + 48))(v31, 1, v34);
  v55 = v23;
  v54 = v25;
  v53 = v26;
  v52 = v28;
  v67 = "faultHeadlineExposureTracker";
  if (v35 == 1)
  {
    sub_219686188(v31, &unk_280EE8780, MEMORY[0x277D2DAD8]);
    v36 = v61;
    v37 = v59;
  }

  else
  {
    (*(v33 + 32))(v66, v31, v34);
    v36 = v61;
    v38 = swift_allocObject();
    *(v38 + 16) = v64;
    v39 = v23;
    v37 = v59;
    v59(v38 + v36, v28, v39);
    sub_2196861F8(&unk_280EE8790, MEMORY[0x277D2DAD8], MEMORY[0x277D2DAD0]);
    v40 = v66;
    sub_219BDCCC4();

    (*(v33 + 8))(v40, v34);
  }

  swift_getObjectType();
  v41 = v69;
  sub_219BF6804();
  v43 = v71;
  v42 = v72;
  if ((*(v71 + 48))(v41, 1, v72) == 1)
  {
    sub_219686188(v41, &unk_280EE8690, MEMORY[0x277D2DD28]);
  }

  else
  {
    v44 = v41;
    v45 = v56;
    (*(v43 + 32))(v56, v44, v42);
    v46 = swift_allocObject();
    *(v46 + 16) = v64;
    v37(v46 + v36, v52, v55);
    sub_2196861F8(&unk_280EE86A0, MEMORY[0x277D2DD28], MEMORY[0x277D2DD20]);
    sub_219BDCCC4();

    (*(v43 + 8))(v45, v42);
  }

  sub_219BE0834();
  v47 = v74;
  sub_219BDB164();
  sub_2196861F8(&qword_280EE82C0, MEMORY[0x277D2E858], MEMORY[0x277D2E840]);
  sub_219BDCC64();
  v48 = v77;
  v49 = *(v76 + 8);
  v49(v47, v77);
  sub_219BDB134();
  v79[3] = sub_219BDF4D4();
  __swift_allocate_boxed_opaque_existential_1(v79);
  swift_unknownObjectRetain();
  sub_219BDF4C4();
  sub_219BDCC84();

  v49(v47, v48);
  return sub_218806FD0(v79);
}

uint64_t sub_219685F74(uint64_t a1, uint64_t a2)
{
  sub_219686124(0, &unk_280EE8780, MEMORY[0x277D2DAD8], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_219686008(uint64_t a1)
{
  sub_219686124(0, &unk_280EE8780, MEMORY[0x277D2DAD8], MEMORY[0x277D83D88]);
  v4 = (*(*(v3 - 8) + 80) + 33) & ~*(*(v3 - 8) + 80);
  v5 = (*(*(v3 - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_219BDB184() - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = *(v1 + 32);
  v10 = *(v1 + v5);
  v11 = v1 + ((v5 + *(v6 + 80) + 8) & ~*(v6 + 80));

  return sub_219685628(a1, v7, v8, v9, v1 + v4, v10, v11);
}

void sub_219686124(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_219686188(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219686124(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2196861F8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for PaywallTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280EC0C90;
  if (!qword_280EC0C90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2196862B4(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_219686328@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v20 = a1;
    sub_21877C5E8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    sub_219BEE974();
    sub_2189ADEC8(v20);
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    sub_2189ADEC8(a1);
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (a3)
  {
    v17 = 1;
  }

  else
  {
    v17 = a2;
  }

  result = type metadata accessor for PaywallTagFeedGroupKnobs(0);
  *(a4 + *(result + 20)) = v17;
  return result;
}

uint64_t sub_2196865AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a2;
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219686BC0(0, &qword_27CC1DB08, MEMORY[0x277D844C8]);
  v8 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219686B6C();
  sub_219BF7B34();
  if (!v2)
  {
    sub_2189AD5C8(0);
    v18 = 0;
    sub_21877C5E8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
    sub_219BF7674();
    v17 = 1;
    sub_219BF7674();
    sub_219686328(v6, v15, v16, v14);
    (*(v9 + 8))(v11, v8);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2196867D8(void *a1)
{
  sub_219686BC0(0, &qword_27CC1DB18, MEMORY[0x277D84538]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v7 = &v9[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219686B6C();
  sub_219BF7B44();
  v9[15] = 0;
  sub_2189AD5C8(0);
  sub_21877C5E8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v1)
  {
    type metadata accessor for PaywallTagFeedGroupKnobs(0);
    v9[14] = 1;
    sub_219BF7824();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_2196869A0()
{
  if (*v0)
  {
    return 0x727563634F78616DLL;
  }

  else
  {
    return 0x73656C7572;
  }
}

void sub_2196869E4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v6 || (sub_219BF78F4() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x727563634F78616DLL && a2 == 0xED000065636E6572)
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

uint64_t sub_219686AC4(uint64_t a1)
{
  v2 = sub_219686B6C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_219686B00(uint64_t a1)
{
  v2 = sub_219686B6C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_219686B6C()
{
  result = qword_27CC1DB10;
  if (!qword_27CC1DB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB10);
  }

  return result;
}

void sub_219686BC0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_219686B6C();
    v7 = a3(a1, &type metadata for PaywallTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_219686C38()
{
  result = qword_27CC1DB20;
  if (!qword_27CC1DB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB20);
  }

  return result;
}

unint64_t sub_219686C90()
{
  result = qword_27CC1DB28;
  if (!qword_27CC1DB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB28);
  }

  return result;
}

unint64_t sub_219686CE8()
{
  result = qword_27CC1DB30;
  if (!qword_27CC1DB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB30);
  }

  return result;
}

double sub_219686D3C(uint64_t a1, uint64_t a2, id a3, void *a4)
{
  v7 = [a3 puzzleFullArchiveMenuOptionsConfigByPuzzleTypeID];
  sub_219686F98(0);
  v8 = sub_219BF5214();

  if (*(v8 + 16))
  {
    v9 = sub_21870F700(a1, a2);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      if (v11 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
      {
        v13 = 0;
        v14 = v11 & 0xC000000000000001;
        v26 = v11 & 0xFFFFFFFFFFFFFF8;
        v27 = v11;
        v25 = v11 + 32;
        while (1)
        {
          if (v14)
          {
            v15 = MEMORY[0x21CECE0F0](v13, v27);
          }

          else
          {
            if (v13 >= *(v26 + 16))
            {
              goto LABEL_26;
            }

            v15 = *(v25 + 8 * v13);
          }

          v16 = v15;
          if (__OFADD__(v13++, 1))
          {
            break;
          }

          v18 = [v15 items];
          sub_2186C6148(0, &qword_27CC1DB40, 0x277D31228);
          v19 = sub_219BF5924();

          if (v19 >> 62)
          {
            v20 = sub_219BF7214();
            if (!v20)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v20)
            {
              goto LABEL_6;
            }
          }

          if (v20 < 1)
          {
            goto LABEL_25;
          }

          v21 = 0;
          v11 = v19 & 0xC000000000000001;
          do
          {
            if (v11)
            {
              v22 = MEMORY[0x21CECE0F0](v21, v19);
            }

            else
            {
              v22 = *(v19 + 8 * v21 + 32);
            }

            v23 = v22;
            ++v21;
            sub_21957B2E0(v22, a4);
          }

          while (v20 != v21);
LABEL_6:

          if (v13 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }
    }
  }

LABEL_28:

  return result;
}

void sub_219686F98(uint64_t a1)
{
  if (!qword_27CC1DB38)
  {
    sub_2186C6148(255, &qword_27CC1A960, 0x277D31230);
    v1 = sub_219BF5B14();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1DB38);
    }
  }
}

double sub_219687000(uint64_t a1, uint64_t a2, id a3, uint64_t *a4, void *a5, uint64_t a6)
{
  v11 = [a3 puzzleFullArchiveMenuOptionsConfigByPuzzleTypeID];
  sub_219686F98(0);
  v12 = sub_219BF5214();

  if (*(v12 + 16))
  {
    v13 = sub_21870F700(a1, a2);
    if (v14)
    {
      v15 = *(*(v12 + 56) + 8 * v13);

      if (v15 >> 62)
      {
        goto LABEL_27;
      }

      for (i = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_219BF7214())
      {
        v17 = 0;
        v29 = v15 & 0xC000000000000001;
        v27 = v15 & 0xFFFFFFFFFFFFFF8;
        v28 = v15;
        v26 = (v15 + 32);
        while (1)
        {
          if (v29)
          {
            v18 = MEMORY[0x21CECE0F0](v17, v28);
          }

          else
          {
            if (v17 >= *(v27 + 16))
            {
              goto LABEL_26;
            }

            v18 = *&v26[8 * v17];
          }

          v19 = v18;
          if (__OFADD__(v17++, 1))
          {
            break;
          }

          v15 = [v18 items];
          sub_2186C6148(0, &qword_27CC1DB40, 0x277D31228);
          v21 = sub_219BF5924();

          if (v21 >> 62)
          {
            v22 = sub_219BF7214();
            if (!v22)
            {
              goto LABEL_6;
            }
          }

          else
          {
            v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (!v22)
            {
              goto LABEL_6;
            }
          }

          if (v22 < 1)
          {
            goto LABEL_25;
          }

          for (j = 0; j != v22; ++j)
          {
            if ((v21 & 0xC000000000000001) != 0)
            {
              v24 = MEMORY[0x21CECE0F0](j, v21);
            }

            else
            {
              v24 = *(v21 + 8 * j + 32);
            }

            v15 = v24;
            sub_219875748(v24, v19, a4, a5, a6);
          }

LABEL_6:

          if (v17 == i)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        __break(1u);
LABEL_27:
        ;
      }
    }
  }

LABEL_28:

  return result;
}

uint64_t sub_21968727C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 104));

  return swift_deallocClassInstance();
}

uint64_t sub_2196872E4(void *a1)
{
  result = [a1 isPaid];
  if (result)
  {
    result = [*(v1 + 56) paidAccessChecker];
    if (!result)
    {
      __break(1u);
      return result;
    }

    v4 = result;
    v5 = [a1 isPaid];
    if ([a1 respondsToSelector_])
    {
      v6 = [a1 isBundlePaid];
    }

    else
    {
      v6 = 0;
    }

    v7 = [a1 sourceChannel];
    if (v7)
    {
      v8 = [v7 identifier];
      swift_unknownObjectRelease();
      v9 = sub_219BF5414();
      v11 = v10;

      if (v5)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v9 = 0;
      v11 = 0;
      if (v5)
      {
LABEL_8:
        v12 = [v4 purchaseProvider];
        if (v11)
        {
          v13 = [v12 purchasedTagIDs];
          v14 = sub_219BF5D44();

          LOBYTE(v13) = sub_2188537B8(v9, v11, v14);

          swift_unknownObjectRelease();
          if (v13)
          {

            swift_unknownObjectRelease();
            return 0;
          }
        }

        else
        {
          swift_unknownObjectRelease();
        }

        if (!v6)
        {
          swift_unknownObjectRelease();

          return 1;
        }

LABEL_16:
        if (!v11)
        {
LABEL_37:
          swift_unknownObjectRelease();
          return 1;
        }

        v15 = [objc_msgSend(v4 bundleSubscriptionProvider)];
        swift_unknownObjectRelease();
        if (objc_getAssociatedObject(v15, v15 + 1))
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
          sub_21870AD58();
          if (swift_dynamicCast())
          {
            v16 = v24;
            v17 = [v24 integerValue];
            if (v17 == -1)
            {

              goto LABEL_39;
            }

            v18 = v17;
LABEL_27:
            if (objc_getAssociatedObject(v15, ~v18))
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
              sub_21870AD58();
              if (swift_dynamicCast())
              {
                v19 = v24;
                v20 = [v19 integerValue];

                if ((v20 ^ v18))
                {
LABEL_39:
                  v21 = [objc_msgSend(v4 bundleSubscriptionProvider)];
                  swift_unknownObjectRelease();
                  v22 = [v21 bundleChannelIDs];

                  v23 = sub_219BF53D4();
                  LOBYTE(v21) = [v22 containsObject_];

                  swift_unknownObjectRelease();
                  return (v21 & 1) == 0;
                }

                goto LABEL_36;
              }
            }

            else
            {
              sub_218806FD0(&v27);
            }

            if (v18)
            {
              goto LABEL_39;
            }

LABEL_36:

            goto LABEL_37;
          }
        }

        else
        {
          sub_218806FD0(&v27);
        }

        v16 = 0;
        v18 = 0;
        goto LABEL_27;
      }
    }

    if ((v6 & 1) == 0)
    {
      swift_unknownObjectRelease();

      return 0;
    }

    goto LABEL_16;
  }

  return result;
}

void sub_219687730(void *a1, uint64_t a2, void (*a3)(id, void), uint64_t a4)
{
  sub_219687B80(0, &unk_280E90C60, MEMORY[0x277D32FE0], MEMORY[0x277D83D88]);
  *&v9 = MEMORY[0x28223BE20](v8 - 8).n128_u64[0];
  v11 = &v22 - v10;
  if (![a1 status])
  {
    v15 = [a1 fetchedObject];
    if (!v15)
    {
      return;
    }

    v25 = v15;
    sub_219687B80(0, &qword_280E8EC00, sub_218731D50, MEMORY[0x277D83940]);
    if ((swift_dynamicCast() & 1) == 0)
    {
      return;
    }

    v16 = v24;
    if (v24 >> 62)
    {
      v17 = sub_219BF7214();
      if (v17)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v17 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_11:
        v22 = a4;
        v23 = a3;
        v25 = MEMORY[0x277D84F90];
        sub_219BF73F4();
        if (v17 < 0)
        {
          __break(1u);
          return;
        }

        v18 = 0;
        do
        {
          if ((v16 & 0xC000000000000001) != 0)
          {
            v21 = MEMORY[0x21CECE0F0](v18, v16);
          }

          else
          {
            v21 = *(v16 + 8 * v18 + 32);
            swift_unknownObjectRetain();
          }

          __swift_project_boxed_opaque_existential_1((a2 + 16), *(a2 + 40));
          if (swift_unknownObjectWeakLoadStrong())
          {
            swift_getObjectType();
            sub_219BEEFB4();
            swift_unknownObjectRelease();
            v19 = 0;
          }

          else
          {
            v19 = 1;
          }

          v20 = sub_219BF0BD4();
          (*(*(v20 - 8) + 56))(v11, v19, 1, v20);
          ++v18;
          sub_21983F764(v21, v11);
          swift_unknownObjectRelease();
          sub_218EA3B08(v11);
          sub_219BF73D4();
          sub_219BF7414();
          sub_219BF7424();
          sub_219BF73E4();
        }

        while (v17 != v18);

        v23(v25, 0);
        goto LABEL_23;
      }
    }

    a3(MEMORY[0x277D84F90], 0);
LABEL_23:

    return;
  }

  v12 = [a1 error];
  if (!v12)
  {
    sub_219687AD8();
    v12 = swift_allocError();
  }

  sub_219687B2C();
  v13 = swift_allocError();
  *v14 = v12;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  a3(v13, 1);
}

unint64_t sub_219687AD8()
{
  result = qword_27CC1DB48;
  if (!qword_27CC1DB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB48);
  }

  return result;
}

unint64_t sub_219687B2C()
{
  result = qword_27CC1DB50;
  if (!qword_27CC1DB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB50);
  }

  return result;
}

void sub_219687B80(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_219687C14()
{
  result = qword_27CC1DB58;
  if (!qword_27CC1DB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB58);
  }

  return result;
}

char *sub_219687C68(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  v10 = OBJC_IVAR____TtC7NewsUI219FollowingFooterView_backgroundView;
  *&v4[OBJC_IVAR____TtC7NewsUI219FollowingFooterView_backgroundView] = v9;
  v11 = [objc_allocWithZone(MEMORY[0x277D75D18]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC7NewsUI219FollowingFooterView_stripe] = v11;
  v12 = sub_219BE6104();
  v13 = [objc_allocWithZone(v12) initWithFrame_];
  *&v4[OBJC_IVAR____TtC7NewsUI219FollowingFooterView_topHairline] = v13;
  v14 = [objc_allocWithZone(v12) initWithFrame_];
  *&v4[OBJC_IVAR____TtC7NewsUI219FollowingFooterView_bottomHairline] = v14;
  [*&v4[v10] frame];
  v16 = v15;
  v18 = v17;
  v20 = v19;
  v22 = v21;
  v28.receiver = v4;
  v28.super_class = type metadata accessor for FollowingFooterView();
  v23 = objc_msgSendSuper2(&v28, sel_initWithFrame_, v16, v18, v20, v22);
  v24 = *&v23[OBJC_IVAR____TtC7NewsUI219FollowingFooterView_backgroundView];
  v25 = v23;
  [v25 addSubview_];
  v26 = OBJC_IVAR____TtC7NewsUI219FollowingFooterView_stripe;
  [v25 addSubview_];
  [*&v25[v26] addSubview_];
  [*&v25[v26] addSubview_];

  return v25;
}

id sub_219687EAC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for FollowingFooterView();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_219687F70(uint64_t a1)
{
  swift_getWitnessTable();

  JUMPOUT(0x21CEC1E40);
}

unint64_t sub_219687FC8()
{
  result = qword_27CC1DB80;
  if (!qword_27CC1DB80)
  {
    type metadata accessor for FollowingFooterView();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DB80);
  }

  return result;
}

void sub_21968801C(uint64_t a1)
{
  v37 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SavedFeedGroup(0) - 8;
  MEMORY[0x28223BE20](v3);
  v35 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = *(a1 + 16);
  if (!v34)
  {
    return;
  }

  v6 = 0;
  v7 = *(v4 + 80);
  v32 = *(v4 + 72);
  v33 = a1 + ((v7 + 32) & ~v7);
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v35;
    sub_2193C3C68(v33 + v32 * v6, v35);
    v10 = v9;
    v11 = v36;
    sub_2196886AC(v10, v36, type metadata accessor for ArticleListSavedFeedGroup);
    v12 = *(v11 + *(v37 + 24));

    sub_218FC1534(v11);
    v13 = v12 >> 62;
    if (v12 >> 62)
    {
      v14 = sub_219BF7214();
    }

    else
    {
      v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = v8 >> 62;
    if (v8 >> 62)
    {
      v30 = sub_219BF7214();
      v17 = v30 + v14;
      if (__OFADD__(v30, v14))
      {
LABEL_32:
        __break(1u);
        return;
      }
    }

    else
    {
      v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v17 = v16 + v14;
      if (__OFADD__(v16, v14))
      {
        goto LABEL_32;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v15)
      {
        v18 = v8 & 0xFFFFFFFFFFFFFF8;
        if (v17 <= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_16;
        }

        goto LABEL_15;
      }

LABEL_14:
      sub_219BF7214();
      goto LABEL_15;
    }

    if (v15)
    {
      goto LABEL_14;
    }

LABEL_15:
    v8 = sub_219BF7364();
    v18 = v8 & 0xFFFFFFFFFFFFFF8;
LABEL_16:
    v19 = *(v18 + 16);
    v20 = *(v18 + 24);
    if (v13)
    {
      break;
    }

    v21 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v21)
    {
      goto LABEL_3;
    }

LABEL_20:
    if (((v20 >> 1) - v19) < v14)
    {
      goto LABEL_35;
    }

    v38 = v14;
    v39 = v6;
    v41 = v8;
    v22 = v18 + 8 * v19 + 32;
    if (v13)
    {
      if (v21 < 1)
      {
        goto LABEL_37;
      }

      sub_2187E7248(0);
      sub_2186EE794(&qword_280E8EBE0, sub_2187E7248, MEMORY[0x277D83988]);
      for (i = 0; i != v21; ++i)
      {
        v24 = sub_218A352D0(v40, i, v12);
        v26 = *v25;
        swift_unknownObjectRetain();
        (v24)(v40, 0);
        *(v22 + 8 * i) = v26;
      }
    }

    else
    {
      sub_218731D50();
      swift_arrayInitWithCopy();
    }

    v6 = v39;
    v8 = v41;
    if (v38 >= 1)
    {
      v27 = *(v18 + 16);
      v28 = __OFADD__(v27, v38);
      v29 = v27 + v38;
      if (v28)
      {
        goto LABEL_36;
      }

      *(v18 + 16) = v29;
    }

LABEL_4:
    if (++v6 == v34)
    {
      return;
    }
  }

  v21 = sub_219BF7214();
  if (v21)
  {
    goto LABEL_20;
  }

LABEL_3:

  if (v14 <= 0)
  {
    goto LABEL_4;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
}

uint64_t sub_2196883F4(unint64_t a1)
{
  v2 = type metadata accessor for ArticleListSavedFeedGroup(0);
  MEMORY[0x28223BE20](v2);
  v4 = &v17[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = type metadata accessor for SavedFeedGroup(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v10 = &v17[-v9];
  v11 = a1 >> 61;
  if ((a1 >> 61) <= 1)
  {
    if (v11)
    {
      goto LABEL_6;
    }

LABEL_7:
    sub_2196885A8(0);
    v15 = swift_projectBox();
    sub_2193C3C68(v15, v10);
    sub_2196886AC(v10, v7, type metadata accessor for SavedFeedGroup);
    sub_2196886AC(v7, v4, type metadata accessor for ArticleListSavedFeedGroup);
    v12 = *&v4[*(v2 + 24)];

    sub_218FC1534(v4);
    return v12;
  }

  if (v11 == 2)
  {
    goto LABEL_7;
  }

  if (v11 == 3)
  {
LABEL_6:

    sub_21968801C(v13);
    v12 = v14;

    return v12;
  }

  return MEMORY[0x277D84F90];
}

void sub_2196885A8(uint64_t a1)
{
  if (!qword_27CC1DB90)
  {
    type metadata accessor for SavedFeedGroup(255);
    sub_219688618(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_27CC1DB90);
    }
  }
}

void sub_219688618(uint64_t a1)
{
  if (!qword_27CC1DB98)
  {
    type metadata accessor for SavedFeedServiceConfig(255);
    sub_2186EE794(&qword_280EC6CF0, type metadata accessor for SavedFeedServiceConfig, &unk_219CAA790);
    v1 = sub_219BEE864();
    if (!v2)
    {
      atomic_store(v1, &qword_27CC1DB98);
    }
  }
}

uint64_t sub_2196886AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_219688728()
{
  result = qword_27CC1DBA0;
  if (!qword_27CC1DBA0)
  {
    sub_219688780();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBA0);
  }

  return result;
}

void sub_219688780()
{
  if (!qword_27CC1DBA8)
  {
    v0 = sub_219BF5B14();
    if (!v1)
    {
      atomic_store(v0, &qword_27CC1DBA8);
    }
  }
}

uint64_t sub_2196887D0(char a1)
{
  result = 0x69726F6765746143;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000011;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x6465727574616546;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x7A6167614D20794DLL;
      break;
    case 6:
      result = 0x757373492077654ELL;
      break;
    case 7:
      result = 0x6C6C6177796150;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6369706F54;
      break;
    case 10:
      result = 0x676E69646E657254;
      break;
    case 11:
      result = 0x20664F2074736542;
      break;
    case 12:
      result = 0x657061707377654ELL;
      break;
    case 13:
      result = 0x64657461727543;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_21968898C(char a1)
{
  result = 0x69726F6765746163;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000010;
      break;
    case 2:
    case 3:
      result = 0x6465727574616566;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x697A6167614D796DLL;
      break;
    case 6:
      result = 0x657573734977656ELL;
      break;
    case 7:
      result = 0x6C6C6177796170;
      break;
    case 8:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0x6369706F74;
      break;
    case 10:
      result = 0x676E69646E657274;
      break;
    case 11:
      result = 0x7542664F74736562;
      break;
    case 12:
      result = 0x657061707377656ELL;
      break;
    case 13:
      result = 0x64657461727563;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_219688B30()
{
  v1 = *v0;
  sub_219BF7AA4();
  sub_21968898C(v1);
  sub_219BF5524();

  return sub_219BF7AE4();
}

double sub_219688B94(uint64_t a1)
{
  sub_21968898C(*v1);
  sub_219BF5524();

  return result;
}

uint64_t sub_219688BE8(uint64_t a1)
{
  v2 = *v1;
  sub_219BF7AA4();
  sub_21968898C(v2);
  sub_219BF5524();

  return sub_219BF7AE4();
}

unint64_t sub_219688C48@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_219688E4C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_219688C78@<X0>(unint64_t *a1@<X8>)
{
  result = sub_21968898C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_219688CA4(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_21968898C(*a1);
  v5 = v4;
  if (v3 == sub_21968898C(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_219BF78F4();
  }

  return v8 & 1;
}

unint64_t sub_219688DF0()
{
  result = qword_280ECA8B0;
  if (!qword_280ECA8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280ECA8B0);
  }

  return result;
}

unint64_t sub_219688E4C(uint64_t a1, uint64_t a2)
{
  v2 = sub_219BF7614();

  if (v2 >= 0xE)
  {
    return 14;
  }

  else
  {
    return v2;
  }
}

void *sub_219688E98()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  type metadata accessor for FollowingViewController(0);
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v0;
  v1 = sub_219BE1E04();

  result = swift_unownedRelease();
  if (!v1)
  {
    __break(1u);
    goto LABEL_8;
  }

  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  sub_219689398();
  swift_unownedRetainStrong();
  swift_unownedRetain();
  swift_unownedRetain();

  *(swift_allocObject() + 16) = v0;
  sub_219BE1E14();

  result = swift_unownedRelease();
  if (!v11)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  swift_getObjectType();
  sub_219689400(0);
  v4 = objc_allocWithZone(v3);
  v5 = v1;
  swift_unknownObjectRetain();
  v6 = sub_219BE8344();
  if (sub_219BED0C4())
  {
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = [objc_allocWithZone(sub_219BE79B4()) initWithRootViewController_];
    v8 = [v7 navigationBar];
    [v8 setPrefersLargeTitles_];

    sub_219BE9D54();
    v9 = v7;
    v10 = sub_219BE9CE4();
    swift_unknownObjectRelease();

    v6 = v10;
  }

  return v6;
}

double sub_21968911C(void *a1)
{
  v2 = sub_219BE15B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();

  (*(v3 + 104))(v5, *MEMORY[0x277D2F570], v2);
  sub_219BDD0F4();

  (*(v3 + 8))(v5, v2);
  sub_219BDD274();
  sub_219BE1B94();

  return result;
}

uint64_t sub_2196892A0(void *a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_unownedRetainStrong();
  sub_218718690(a2 + 64, v6);

  v3 = v7;
  v4 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  (*(v4 + 8))(v3, v4);
  sub_219BE1BA4();

  return __swift_destroy_boxed_opaque_existential_1(v6);
}

unint64_t sub_219689398()
{
  result = qword_280EE05D8;
  if (!qword_280EE05D8)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_280EE05D8);
  }

  return result;
}

void sub_219689400(uint64_t a1)
{
  if (!qword_280EE4CF0)
  {
    type metadata accessor for FollowingViewController(255);
    sub_218AE5D40();
    v1 = sub_219BE8364();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE4CF0);
    }
  }
}

char *sub_219689464@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v289 = a3;
  v286 = a2;
  v299 = a1;
  v302 = a4;
  sub_2186D8E28(0, qword_280EDB700, type metadata accessor for TodayFeedGroup);
  MEMORY[0x28223BE20](v5 - 8);
  v283 = v214 - v6;
  sub_2186D8E28(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v7 - 8);
  v264 = v214 - v8;
  sub_2186D8E28(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v9 - 8);
  v284 = v214 - v10;
  v263 = sub_219BE1394();
  v262 = *(v263 - 8);
  MEMORY[0x28223BE20](v263);
  v261 = v214 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8E28(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v12 - 8);
  v298 = v214 - v13;
  v288 = sub_219BDF584();
  v287 = *(v288 - 8);
  MEMORY[0x28223BE20](v288);
  v301 = v214 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v260 = sub_219BE1444();
  v259 = *(v260 - 8);
  MEMORY[0x28223BE20](v260);
  v258 = v214 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8E28(0, &qword_280E91DB0, MEMORY[0x277D31F08]);
  MEMORY[0x28223BE20](v16 - 8);
  v285 = v214 - v17;
  sub_2187FAD00(0);
  v19 = v18;
  v295 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v291 = v214 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v248 = sub_219BF07A4();
  v297 = *(v248 - 8);
  MEMORY[0x28223BE20](v248);
  v247 = v214 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAF38(0);
  v257 = v22;
  v275 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v256 = v214 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v246 = sub_219BF0B74();
  v274 = *(v246 - 8);
  MEMORY[0x28223BE20](v246);
  v245 = v214 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB308(0);
  v255 = v25;
  v273 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v254 = v214 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v244 = sub_219BF04A4();
  v272 = *(v244 - 8);
  MEMORY[0x28223BE20](v244);
  v243 = v214 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EB018(0);
  v253 = v28;
  v271 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v252 = v214 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v294 = sub_219BDD374();
  v277 = *(v294 - 8);
  MEMORY[0x28223BE20](v294);
  v293 = v214 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v292 = sub_219BDEE04();
  v276 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v233 = v214 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v242 = sub_219BEC504();
  v270 = *(v242 - 8);
  MEMORY[0x28223BE20](v242);
  v241 = v214 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAD48(0);
  v240 = v33;
  v269 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v239 = v214 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v238 = sub_219BF1094();
  v268 = *(v238 - 8);
  MEMORY[0x28223BE20](v238);
  v237 = v214 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8E28(0, &unk_280E90A30, MEMORY[0x277D33058]);
  MEMORY[0x28223BE20](v36 - 8);
  v236 = v214 - v37;
  sub_2186EAC68(0);
  v279 = v38;
  v267 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v251 = v214 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v250 = sub_219BF0F34();
  v266 = *(v250 - 8);
  MEMORY[0x28223BE20](v250);
  v235 = v214 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186EAB88(0);
  v249 = v41;
  v265 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v234 = v214 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v311 = type metadata accessor for TodayModel(0);
  MEMORY[0x28223BE20](v311);
  v304 = v214 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v44);
  v309 = v214 - v45;
  sub_218853400(0);
  v47 = v46;
  v290 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v310 = v214 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v49);
  v308 = v214 - v50;
  sub_218C0BBC4(0);
  v303 = v51;
  MEMORY[0x28223BE20](v51);
  v53 = v214 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v56 = v214 - v55;
  sub_2186D8E28(0, &qword_280EE7F78, MEMORY[0x277D2F870]);
  MEMORY[0x28223BE20](v57 - 8);
  v59 = v214 - v58;
  v60 = sub_219BE16E4();
  v61 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v300 = v214 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v63);
  v65 = v214 - v64;
  v66 = v19;
  sub_219BE6934();
  sub_21968BE24(v314, v59);

  if ((*(v61 + 48))(v59, 1, v60) == 1)
  {
    sub_21968CC6C(v59, &qword_280EE7F78, MEMORY[0x277D2F870]);
    v67 = sub_219BE16D4();
    return (*(*(v67 - 8) + 56))(v302, 1, 1, v67);
  }

  v281 = v61;
  v69 = *(v61 + 32);
  v280 = v65;
  v69(v65, v59, v60);
  v70 = MEMORY[0x277D84F90];
  v315 = MEMORY[0x277D84F90];
  v316 = MEMORY[0x277D84F90];
  v71 = v295 + 16;
  v232 = *(v295 + 16);
  v232(v56, v4, v19);
  v72 = *(v303 + 36);
  sub_2186EFB34(&qword_280EE58D0, sub_2187FAD00, MEMORY[0x277D6D730]);
  v296 = v4;
  sub_219BF5DF4();
  sub_219BF5E84();
  v73 = *&v56[v72];
  v74 = v70;
  v278 = v70;
  v75 = v72;
  v305 = v19;
  v282 = v60;
  v76 = v71;
  v77 = v303;
  if (v73 != v314)
  {
    v306 = (v290 + 8);
    v307 = (v290 + 16);
    v230 = (v273 + 32);
    v229 = (v274 + 8);
    v228 = (v273 + 8);
    v227 = (v271 + 4);
    v226 = (v272 + 8);
    v225 = v271 + 1;
    v224 = (v275 + 32);
    v223 = v297 + 8;
    v222 = (v275 + 8);
    v221 = (v269 + 4);
    v220 = (v270 + 8);
    v219 = v269 + 1;
    v231 = (v265 + 1);
    v271 = (v276 + 8);
    v270 = v277 + 16;
    v269 = (v277 + 8);
    v218 = (v267 + 32);
    v217 = (v268 + 8);
    v216 = (v266 + 6);
    ++v266;
    v215 = (v267 + 8);
    v265 += 4;
    v278 = MEMORY[0x277D84F90];
    v74 = MEMORY[0x277D84F90];
    v312 = v75;
    v272 = v276 + 16;
    while (2)
    {
      v297 = v74;
      v78 = v279;
LABEL_8:
      v86 = sub_219BF5EC4();
      v87 = v308;
      (*v307)(v308);
      v86(&v314, 0);
      sub_219BF5E94();
      v88 = v309;
      sub_219BE5FC4();
      v89 = v88;
      (*v306)(v87, v47);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v85 = v312;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          sub_2186EAB00(0, &qword_280ED7560, type metadata accessor for TodayGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
          v79 = v89;
          v81 = *(v80 + 48);
          v82 = sub_219BF1584();
          (*(*(v82 - 8) + 8))(&v79[v81], v82);
          v83 = type metadata accessor for TodayGapLocation;
          v84 = v79;
          v85 = v312;
          goto LABEL_7;
        case 2:
          v116 = v234;
          v117 = v249;
          (*v265)(v234, v89, v249);
          v118 = v235;
          sub_219BF07D4();
          v295 = sub_219BF0F14();
          v119 = (*v266)(v118, v250);
          MEMORY[0x21CECC690](v119);
          if (*((v316 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v316 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
            v66 = v305;
          }

          sub_219BF5A54();
          (*v231)(v116, v117);
          goto LABEL_53;
        case 3:
          (*v218)(v251, v89, v78);
          v120 = v237;
          sub_219BF07D4();
          v121 = v236;
          sub_219BF1074();
          v122 = v121;
          (*v217)(v120, v238);
          v123 = v121;
          v124 = v250;
          if ((*v216)(v123, 1, v250) == 1)
          {
            (*v215)(v251, v279);
            sub_21968CC6C(v122, &unk_280E90A30, MEMORY[0x277D33058]);
            v77 = v303;
          }

          else
          {
            sub_219BF0F14();
            (*v266)(v122, v124);
            v141 = swift_unknownObjectRetain();
            MEMORY[0x21CECC690](v141);
            if (*((v316 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v316 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_219BF5A14();
              v66 = v305;
            }

            sub_219BF5A54();
            swift_unknownObjectRelease();
            (*v215)(v251, v279);
LABEL_53:
            v77 = v303;
LABEL_54:
            v85 = v312;
          }

          sub_219BF5E84();
          v74 = v297;
          if (*&v56[v85] == v314)
          {
            break;
          }

          continue;
        case 4:
          v295 = v76;
          v102 = *v89;
          v103 = sub_219BE5B44();
          v104 = *(v103 + 16);
          v214[1] = v102;
          if (v104)
          {
            v314 = MEMORY[0x277D84F90];
            sub_219BF73F4();
            v105 = (*(v276 + 80) + 32) & ~*(v276 + 80);
            v273 = v103;
            v106 = v103 + v105;
            v275 = *(v276 + 72);
            v274 = *(v276 + 16);
            v107 = v233;
            do
            {
              v108 = v292;
              (v274)(v107, v106, v292);
              sub_219BDEDF4();
              (*v271)(v107, v108);
              sub_219BF73D4();
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
              v106 += v275;
              --v104;
            }

            while (v104);

            v109 = v314;
          }

          else
          {

            v109 = MEMORY[0x277D84F90];
          }

          sub_2191ED6C8(v109);
          v142 = sub_219BE5B34();
          v143 = *(v142 + 16);
          if (v143)
          {
            v314 = MEMORY[0x277D84F90];
            v275 = v143;
            sub_21870B65C(0, v143, 0);
            v144 = v314;
            v145 = (*(v277 + 80) + 32) & ~*(v277 + 80);
            v214[0] = v142;
            v146 = v142 + v145;
            v268 = *(v277 + 72);
            v267 = *(v277 + 16);
            do
            {
              v147 = v293;
              v148 = v294;
              (v267)(v293, v146, v294);
              v149 = sub_219BDD364();
              v150 = [v149 identifier];
              v274 = sub_219BF5414();
              v273 = v151;

              (*v269)(v147, v148);
              v314 = v144;
              v153 = *(v144 + 16);
              v152 = *(v144 + 24);
              if (v153 >= v152 >> 1)
              {
                sub_21870B65C((v152 > 1), v153 + 1, 1);
                v144 = v314;
              }

              *(v144 + 16) = v153 + 1;
              v154 = v144 + 16 * v153;
              v155 = v273;
              *(v154 + 32) = v274;
              *(v154 + 40) = v155;
              v146 += v268;
              --v275;
            }

            while (v275);

            v156 = v144;
          }

          else
          {

            v156 = MEMORY[0x277D84F90];
          }

          sub_2191ED3E8(v156);

          goto LABEL_52;
        case 5:
        case 7:
        case 8:
        case 9:
        case 12:
        case 13:
        case 14:
          v83 = type metadata accessor for TodayModel;
          v84 = v89;
          goto LABEL_7;
        case 6:
          v295 = v76;
          v110 = v239;
          v111 = v240;
          (*v221)(v239, v89, v240);
          v112 = v241;
          sub_219BF07D4();
          v275 = sub_219BEC4F4();
          v113 = (*v220)(v112, v242);
          MEMORY[0x21CECC690](v113);
          v77 = v303;
          if (*((v316 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v316 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_2186EAB00(0, &qword_280E90E70, sub_2186EAD48, sub_2186EAB88, " fallback ");
          v115 = *(v114 + 48);
          sub_219BF5A54();
          (*v219)(v110, v111);
          (*v231)(&v309[v115], v249);
          goto LABEL_39;
        case 10:
          v295 = v76;
          (*v224)(v256, v89, v257);
          v134 = v247;
          sub_219BF07D4();
          v135 = sub_219BF06B4();
          (*v223)(v134, v248);
          v136 = [v135 identifier];

          v95 = sub_219BF5414();
          v97 = v137;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v297 = sub_218840D24(0, *(v297 + 2) + 1, 1, v297);
          }

          v77 = v303;
          v99 = *(v297 + 2);
          v138 = *(v297 + 3);
          v100 = v99 + 1;
          if (v99 >= v138 >> 1)
          {
            v297 = sub_218840D24((v138 > 1), v99 + 1, 1, v297);
          }

          (*v222)(v256, v257);
          v101 = &v317;
          goto LABEL_38;
        case 11:
          v295 = v76;
          (*v227)(v252, v89, v253);
          v92 = v243;
          sub_219BF07D4();
          v93 = sub_219BF0404();
          (*v226)(v92, v244);
          v94 = [v93 identifier];
          swift_unknownObjectRelease();
          v95 = sub_219BF5414();
          v97 = v96;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v278 = sub_218840D24(0, *(v278 + 2) + 1, 1, v278);
          }

          v77 = v303;
          v99 = *(v278 + 2);
          v98 = *(v278 + 3);
          v100 = v99 + 1;
          if (v99 >= v98 >> 1)
          {
            v278 = sub_218840D24((v98 > 1), v99 + 1, 1, v278);
          }

          (*v225)(v252, v253);
          v101 = &v310;
LABEL_38:
          v139 = *(v101 - 32);
          *(v139 + 16) = v100;
          v140 = v139 + 16 * v99;
          *(v140 + 32) = v95;
          *(v140 + 40) = v97;
LABEL_39:
          v66 = v305;
          v76 = v295;
          goto LABEL_54;
        case 15:
          v295 = v76;
          (*v230)(v254, v89, v255);
          v125 = v245;
          sub_219BF07D4();
          v126 = sub_219BF0B44();
          (*v229)(v125, v246);
          v127 = [v126 identifier];

          v275 = sub_219BF5414();
          v129 = v128;

          v130 = v315;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v130 = sub_218840D24(0, *(v130 + 2) + 1, 1, v130);
          }

          v132 = *(v130 + 2);
          v131 = *(v130 + 3);
          if (v132 >= v131 >> 1)
          {
            v130 = sub_218840D24((v131 > 1), v132 + 1, 1, v130);
          }

          (*v228)(v254, v255);
          *(v130 + 2) = v132 + 1;
          v133 = &v130[16 * v132];
          *(v133 + 4) = v275;
          *(v133 + 5) = v129;
          v315 = v130;
LABEL_52:
          v66 = v305;
          v76 = v295;
          goto LABEL_53;
        default:

          sub_2186EA920(0);
          v83 = type metadata accessor for TodayGapLocation;
          v84 = &v89[*(v91 + 48)];
LABEL_7:
          sub_2188795A8(v84, v83);
          sub_219BF5E84();
          if (*&v56[v85] != v314)
          {
            goto LABEL_8;
          }

          v77 = v303;
          v74 = v297;
          goto LABEL_58;
      }

      break;
    }
  }

LABEL_58:
  v297 = v74;
  sub_2188795A8(v56, sub_218C0BBC4);
  v232(v291, v296, v66);
  sub_2186EFB34(&qword_280EE58D8, sub_2187FAD00, MEMORY[0x277D6D728]);
  sub_219BF56A4();
  v157 = *(v77 + 36);
  sub_219BF5E84();
  if (*(v53 + v157) == v314)
  {
    v312 = 0;
LABEL_60:
    sub_2188795A8(v53, sub_218C0BBC4);
    v158 = sub_21968C718();
    v159 = v285;
    sub_21968CCC8(v286, v285);
    v160 = sub_219BEDFD4();
    v161 = *(v160 - 8);
    if ((*(v161 + 48))(v159, 1, v160) == 1)
    {
      sub_21968CC6C(v159, &qword_280E91DB0, MEMORY[0x277D31F08]);
      v311 = 0;
    }

    else
    {
      sub_218E84FD0();
      v311 = v171;
      (*(v161 + 8))(v159, v160);
    }

    v172 = v288;
    v173 = v287;
    v174 = v282;
    v175 = v281;
    v176 = v280;
    if ((v289 & 1) != 0 && (sub_219BE6934(), v53 = sub_2193B4730(), , v53))
    {
      v177 = v258;
      sub_219BE1414();
      v178 = sub_219BE1434();
      v309 = v179;
      v310 = v178;
      swift_unknownObjectRelease();
      (*(v259 + 8))(v177, v260);
    }

    else
    {
      sub_219BE6934();
      v53 = sub_2193B4730();

      if (v53)
      {
        v180 = [v53 identifier];
        swift_unknownObjectRelease();
        v181 = sub_219BF5414();
        v309 = v182;
        v310 = v181;
      }

      else
      {
        v309 = 0;
        v310 = 0;
      }
    }

    (*(v173 + 104))(v301, *MEMORY[0x277D2DB58], v172);
    (*(v175 + 16))(v300, v176, v174);
    v183 = sub_219BE6944();
    if (v312 > 0x7FFFFFFF)
    {
      goto LABEL_95;
    }

    if (v299 < 0xFFFFFFFF80000000 || v312 < 0xFFFFFFFF80000000)
    {
      goto LABEL_96;
    }

    if (v299 > 0x7FFFFFFF)
    {
      goto LABEL_97;
    }

    v306 = v184;
    v307 = v183;
    v53 = v316;
    if (v316 >> 62)
    {
      goto LABEL_98;
    }

    v185 = *((v316 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v308 = v158;
    if (!v185)
    {
      goto LABEL_99;
    }

    goto LABEL_83;
  }

  v312 = 0;
  v162 = (v290 + 16);
  v158 = (v290 + 8);
  v163 = v304;
  v164 = v310;
  while (1)
  {
    v165 = sub_219BF5EC4();
    (*v162)(v164);
    v165(&v314, 0);
    sub_219BF5E94();
    sub_219BE5FC4();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      break;
    }

    (*v158)(v164, v47);
    sub_2188795A8(v163, type metadata accessor for TodayModel);
    if (__OFADD__(v312, 1))
    {
      goto LABEL_93;
    }

    ++v312;
LABEL_65:
    sub_219BF5E84();
    if (*(v53 + v157) == v314)
    {
      goto LABEL_60;
    }
  }

  v166 = *(sub_219BE5B44() + 16);

  v167 = __OFADD__(v312, v166);
  v168 = v312 + v166;
  if (!v167)
  {
    v169 = sub_219BE5B34();

    v170 = *(v169 + 16);

    (*v158)(v310, v47);
    if (__OFADD__(v168, v170))
    {
      goto LABEL_94;
    }

    v312 = v168 + v170;
    v163 = v304;
    goto LABEL_65;
  }

  __break(1u);
LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
LABEL_96:
  __break(1u);
LABEL_97:
  __break(1u);
LABEL_98:
  v185 = sub_219BF7214();
  v308 = v158;
  if (v185)
  {
LABEL_83:
    v314 = MEMORY[0x277D84F90];
    result = sub_21870B65C(0, v185 & ~(v185 >> 63), 0);
    if ((v185 & 0x8000000000000000) == 0)
    {
      v186 = 0;
      v187 = v314;
      do
      {
        if ((v53 & 0xC000000000000001) != 0)
        {
          MEMORY[0x21CECE0F0](v186, v53);
        }

        else
        {
          swift_unknownObjectRetain();
        }

        v188 = [swift_unknownObjectRetain() articleID];
        v189 = sub_219BF5414();
        v191 = v190;
        swift_unknownObjectRelease_n();

        v314 = v187;
        v193 = *(v187 + 16);
        v192 = *(v187 + 24);
        if (v193 >= v192 >> 1)
        {
          sub_21870B65C((v192 > 1), v193 + 1, 1);
          v187 = v314;
        }

        ++v186;
        *(v187 + 16) = v193 + 1;
        v194 = v187 + 16 * v193;
        *(v194 + 32) = v189;
        *(v194 + 40) = v191;
      }

      while (v185 != v186);
      goto LABEL_99;
    }

    __break(1u);
    return result;
  }

LABEL_99:

  v195 = sub_21968C5D8();
  v303 = v196;
  v304 = v195;
  sub_219BE6934();
  v197 = v298;
  sub_2193B6C2C(v314, v298);

  v198 = sub_219BE0674();
  (*(*(v198 - 8) + 56))(v197, 0, 1, v198);
  v199 = v283;
  v200 = v311;
  if (v311)
  {
    if (*(v311 + 16))
    {
      v201 = v262;
      v202 = v261;
      v203 = v263;
      (*(v262 + 16))(v261, v311 + ((*(v201 + 80) + 32) & ~*(v201 + 80)), v263);
      sub_219BE1374();
      (*(v201 + 8))(v202, v203);
      v200 = v311;
    }
  }

  sub_21968CBE4(v200);

  sub_219BE6934();
  sub_2193B5F80(v313, v199);

  v204 = type metadata accessor for TodayFeedGroup(0);
  if ((*(*(v204 - 8) + 48))(v199, 1, v204) == 1)
  {
    v205 = qword_280EDB700;
    v206 = type metadata accessor for TodayFeedGroup;
    goto LABEL_106;
  }

  v207 = v199;
  v199 = v264;
  sub_21882D12C(v264);
  sub_2188795A8(v207, type metadata accessor for TodayFeedGroup);
  v208 = sub_219BF1904();
  v209 = *(v208 - 8);
  if ((*(v209 + 48))(v199, 1, v208) == 1)
  {
    v205 = &qword_280E90840;
    v206 = MEMORY[0x277D33470];
LABEL_106:
    sub_21968CC6C(v199, v205, v206);
    v210 = v284;
    v211 = sub_219BDF474();
    (*(*(v211 - 8) + 56))(v210, 1, 1, v211);
  }

  else
  {
    sub_219BF17C4();
    (*(v209 + 8))(v199, v208);
  }

  v212 = v302;
  sub_219BE15E4();
  (*(v281 + 8))(v280, v282);
  v213 = sub_219BE16D4();
  return (*(*(v213 - 8) + 56))(v212, 0, 1, v213);
}

uint64_t sub_21968BE24@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for MagazineFeedGroup(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855330(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_218855280(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v41 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v16);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch((a1 >> 58) & 0x3C | (a1 >> 1) & 3)
  {
    case 1uLL:
      v21 = v17;
      v22 = swift_projectBox();
      sub_218859270(v22, v19, type metadata accessor for CuratedTodayFeedGroup);
      v23 = &v19[*(v21 + 20)];
      v24 = MEMORY[0x277D2F5C8];
      v25 = *v23 == 0x69726F7453706F74 && *(v23 + 1) == 0xEA00000000007365;
      if (!v25 && (sub_219BF78F4() & 1) == 0)
      {
        v24 = MEMORY[0x277D2F800];
      }

      v26 = *v24;
      v27 = sub_219BE16E4();
      v28 = *(v27 - 8);
      v29 = v43;
      (*(v28 + 104))(v43, v26, v27);
      sub_2188795A8(v19, type metadata accessor for CuratedTodayFeedGroup);
      return (*(v28 + 56))(v29, 0, 1, v27);
    case 2uLL:
      v20 = MEMORY[0x277D2F858];
      goto LABEL_43;
    case 3uLL:
      v20 = MEMORY[0x277D2F598];
      goto LABEL_43;
    case 4uLL:
      v20 = MEMORY[0x277D2F848];
      goto LABEL_43;
    case 5uLL:
      v20 = MEMORY[0x277D2F7E8];
      goto LABEL_43;
    case 6uLL:
      v20 = MEMORY[0x277D2F668];
      goto LABEL_43;
    case 7uLL:
      v20 = MEMORY[0x277D2F660];
      goto LABEL_43;
    case 8uLL:
      v20 = MEMORY[0x277D2F5B0];
      goto LABEL_43;
    case 9uLL:
      v20 = MEMORY[0x277D2F7E0];
      goto LABEL_43;
    case 0xAuLL:
      v30 = swift_projectBox();
      (*(v8 + 16))(v10, v30, v7);
      sub_219BEDE64();
      v31 = sub_218CDEEC0();
      sub_2188795A8(v5, type metadata accessor for MagazineFeedGroup);
      (*(v8 + 8))(v10, v7);
      switch(v31)
      {
        case 2:
          v39 = MEMORY[0x277D2F6E0];
          goto LABEL_57;
        case 3:
          v39 = MEMORY[0x277D2F648];
          goto LABEL_57;
        case 4:
          v39 = MEMORY[0x277D2F7A8];
          goto LABEL_57;
        case 5:
          v39 = MEMORY[0x277D2F5E8];
          goto LABEL_57;
        case 6:
          v39 = MEMORY[0x277D2F840];
          goto LABEL_57;
        case 8:
          v39 = MEMORY[0x277D2F778];
          goto LABEL_57;
        case 9:
          v39 = MEMORY[0x277D2F7E0];
          goto LABEL_57;
        case 10:
          v39 = MEMORY[0x277D2F848];
          goto LABEL_57;
        case 11:
          v39 = MEMORY[0x277D2F600];
          goto LABEL_57;
        case 12:
          v39 = MEMORY[0x277D2F858];
          goto LABEL_57;
        case 13:
          v39 = MEMORY[0x277D2F800];
LABEL_57:
          v40 = *v39;
          v27 = sub_219BE16E4();
          v28 = *(v27 - 8);
          v29 = v43;
          (*(v28 + 104))(v43, v40, v27);
          return (*(v28 + 56))(v29, 0, 1, v27);
        default:
          v32 = sub_219BE16E4();
          return (*(*(v32 - 8) + 56))(v43, 1, 1, v32);
      }

    case 0xBuLL:
      v20 = MEMORY[0x277D2F850];
      goto LABEL_43;
    case 0xCuLL:
      v20 = MEMORY[0x277D2F728];
      goto LABEL_43;
    case 0xDuLL:
    case 0x13uLL:
      v20 = MEMORY[0x277D2F7D0];
      goto LABEL_43;
    case 0xEuLL:
      v20 = MEMORY[0x277D2F868];
      goto LABEL_43;
    case 0xFuLL:
      v20 = MEMORY[0x277D2F5F8];
      goto LABEL_43;
    case 0x10uLL:
      v20 = MEMORY[0x277D2F6F0];
      goto LABEL_43;
    case 0x11uLL:
      v34 = swift_projectBox();
      (*(v13 + 16))(v15, v34, v12);
      sub_219BEE474();
      sub_21968BE24(v44, v43);

      return (*(v13 + 8))(v15, v12);
    case 0x12uLL:
      v20 = MEMORY[0x277D2F688];
      goto LABEL_43;
    case 0x14uLL:
      v20 = MEMORY[0x277D2F838];
      goto LABEL_43;
    case 0x15uLL:
      v20 = MEMORY[0x277D2F650];
      goto LABEL_43;
    case 0x16uLL:
      v20 = MEMORY[0x277D2F860];
      goto LABEL_43;
    case 0x17uLL:
      v20 = MEMORY[0x277D2F7F8];
      goto LABEL_43;
    case 0x18uLL:
      v20 = MEMORY[0x277D2F618];
      goto LABEL_43;
    case 0x19uLL:
      v20 = MEMORY[0x277D2F640];
      goto LABEL_43;
    case 0x1AuLL:
      v20 = MEMORY[0x277D2F7D8];
      goto LABEL_43;
    case 0x1BuLL:
      v20 = MEMORY[0x277D2F6E0];
      goto LABEL_43;
    case 0x1CuLL:
      v20 = MEMORY[0x277D2F7A8];
      goto LABEL_43;
    case 0x1DuLL:
      v20 = MEMORY[0x277D2F648];
      goto LABEL_43;
    case 0x1EuLL:
      v20 = MEMORY[0x277D2F600];
      goto LABEL_43;
    case 0x1FuLL:
      v20 = MEMORY[0x277D2F720];
      goto LABEL_43;
    case 0x20uLL:
      v20 = MEMORY[0x277D2F840];
      goto LABEL_43;
    case 0x21uLL:
      v20 = MEMORY[0x277D2F5E8];
      goto LABEL_43;
    case 0x22uLL:
      v20 = MEMORY[0x277D2F778];
      goto LABEL_43;
    default:
      v20 = MEMORY[0x277D2F818];
LABEL_43:
      v35 = *v20;
      v36 = sub_219BE16E4();
      v42 = *(v36 - 8);
      v37 = v43;
      (*(v42 + 104))(v43, v35, v36);
      v38 = *(v42 + 56);

      return v38(v37, 0, 1, v36);
  }
}

uint64_t sub_21968C5D8()
{
  v0 = type metadata accessor for CuratedTodayFeedGroup(0);
  MEMORY[0x28223BE20](v0);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  sub_219BE6934();
  if (((v7 >> 58) & 0x3C | (v7 >> 1) & 3) == 1)
  {
    v4 = swift_projectBox();
    sub_218859270(v4, v2, type metadata accessor for CuratedTodayFeedGroup);
    v5 = *&v2[*(v0 + 20)];

    sub_2188795A8(v2, type metadata accessor for CuratedTodayFeedGroup);

    return v5;
  }

  else
  {

    return 0;
  }
}

char *sub_21968C718()
{
  v0 = sub_219BF2DA4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186D8E28(0, qword_280EDB700, type metadata accessor for TodayFeedGroup);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - v5;
  sub_2186D8E28(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v30 - v8;
  v10 = sub_219BF1904();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v33 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2187FAD00(0);
  sub_219BE6934();
  sub_2193B5F80(v37, v6);

  v13 = type metadata accessor for TodayFeedGroup(0);
  if ((*(*(v13 - 8) + 48))(v6, 1, v13) == 1)
  {
    sub_21968CC6C(v6, qword_280EDB700, type metadata accessor for TodayFeedGroup);
    (*(v11 + 56))(v9, 1, 1, v10);
LABEL_4:
    sub_21968CC6C(v9, &qword_280E90840, MEMORY[0x277D33470]);
    return 0;
  }

  sub_21882D12C(v9);
  sub_2188795A8(v6, type metadata accessor for TodayFeedGroup);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    goto LABEL_4;
  }

  (*(v11 + 32))(v33, v9, v10);
  v15 = sub_219BF18F4();
  v16 = *(v15 + 16);
  if (v16)
  {
    v31 = v11;
    v32 = v10;
    v18 = *(v1 + 16);
    v17 = v1 + 16;
    v19 = *(v17 + 64);
    v30 = v15;
    v20 = v15 + ((v19 + 32) & ~v19);
    v35 = *(v17 + 56);
    v36 = v18;
    v21 = (v17 - 8);
    v14 = MEMORY[0x277D84F90];
    v34 = v17;
    v18(v3, v20, v0);
    while (1)
    {
      v22 = *(sub_219BF2D94() + 16);

      if (v22)
      {
        sub_219BF2D84();
        v23 = sub_219BF3054();
        v25 = v24;

        (*v21)(v3, v0);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_218840D24(0, *(v14 + 2) + 1, 1, v14);
        }

        v27 = *(v14 + 2);
        v26 = *(v14 + 3);
        if (v27 >= v26 >> 1)
        {
          v14 = sub_218840D24((v26 > 1), v27 + 1, 1, v14);
        }

        *(v14 + 2) = v27 + 1;
        v28 = &v14[16 * v27];
        *(v28 + 4) = v23;
        *(v28 + 5) = v25;
      }

      else
      {
        (*v21)(v3, v0);
      }

      v20 += v35;
      if (!--v16)
      {
        break;
      }

      v36(v3, v20, v0);
    }

    v11 = v31;
    v10 = v32;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  (*(v11 + 8))(v33, v10);
  return v14;
}

void sub_21968CBE4(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      v2 = (2 * v1) | 1;
      v4 = *(sub_219BE1394() - 8);
      sub_218B66910(a1, a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), 1, v2);
    }

    else
    {
    }
  }
}

uint64_t sub_21968CC6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_2186D8E28(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_21968CCC8(uint64_t a1, uint64_t a2)
{
  sub_2186D8E28(0, &qword_280E91DB0, MEMORY[0x277D31F08]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_21968CD48@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_219BE8154();
  v8 = v7;
  sub_219BE8014();
  sub_219BF6034();
  v10 = v9;
  v11 = sub_219BE8034();
  [v11 horizontalSizeClass];
  if ((([v11 userInterfaceIdiom] - 1) & 0xFFFFFFFFFFFFFFFBLL) != 0)
  {
    v12 = MEMORY[0x277D769D0];
  }

  else
  {
    v12 = MEMORY[0x277D76A28];
  }

  v13 = *v12;
  sub_218A293AC();
  v14 = v13;
  rect_24 = sub_219BF6BD4();

  __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
  v15 = *a1;
  v16 = a1[1];
  v17 = a1 + *(type metadata accessor for MagazineCatalogSectionHeaderModel(0) + 20);
  v18 = &v17[*(type metadata accessor for MagazineCatalogSectionDescriptor.Categories(0) + 20)];
  v19 = *v18;
  v20 = v18[1];
  v21 = sub_219BE8034();
  v22 = sub_218EBBBA0(v15, v16, v19, v20, v21);

  v23 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutOptions(0);
  v24 = v8 - v10;
  rect_8 = *(a2 + v23[7]);
  rect_16 = v8 - v10 - *(a2 + v23[8]) - rect_8;
  v25 = (a2 + v23[5]);
  [v22 boundingRectWithSize:3 options:0 context:{rect_16 - v25[3], 1.79769313e308}];
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  sub_219BE8014();
  v35 = v34;
  v55 = v34;
  v36 = *(a2 + v23[6]);
  v64.origin.x = v27;
  v64.origin.y = v29;
  v64.size.width = v31;
  v64.size.height = v33;
  Height = CGRectGetHeight(v64);
  v38 = v25[2];
  rect = v25[1];
  v39 = Height + v38;
  if (v36 <= v39)
  {
    v36 = v39;
  }

  v65.origin.y = 0.0;
  v65.origin.x = v35;
  v65.size.width = v24;
  v40 = v24;
  v65.size.height = v36;
  v41 = CGRectGetHeight(v65) - v38;
  v66.origin.x = v27;
  v66.origin.y = v29;
  v66.size.width = v31;
  v66.size.height = v33;
  v42 = v41 - CGRectGetHeight(v66);
  [rect_24 descender];
  v67.origin.y = v42 - v43;
  v67.origin.x = rect;
  v67.size.width = v31;
  v67.size.height = v33;
  v68 = CGRectIntegral(v67);
  y = v68.origin.y;
  recta = v68.origin.x;
  v56 = v68.size.height;
  width = v68.size.width;
  v68.origin.y = 0.0;
  v68.origin.x = v55;
  v68.size.width = v40;
  v68.size.height = v36;
  v44 = CGRectGetHeight(v68);
  v69.size.width = rect_8;
  v69.origin.y = v44 - v38 - rect_8 + 4.0;
  v69.origin.x = rect_16;
  v69.size.height = rect_8;
  v70 = CGRectIntegral(v69);
  x = v70.origin.x;
  v46 = v70.origin.y;
  v47 = v70.size.width;
  v48 = v70.size.height;

  sub_21968D0C8(a1, a3, v49);
  v50 = type metadata accessor for MagazineCatalogSectionHeaderViewLayoutAttributes(0);
  v51 = a3 + v50[5];
  *v51 = v55;
  *(v51 + 8) = 0;
  *(v51 + 16) = v40;
  *(v51 + 24) = v36;
  v52 = (a3 + v50[6]);
  *v52 = recta;
  v52[1] = y;
  result = v56;
  v52[2] = width;
  v52[3] = v56;
  v54 = (a3 + v50[7]);
  *v54 = x;
  v54[1] = v46;
  v54[2] = v47;
  v54[3] = v48;
  *(a3 + v50[8]) = rect_8;
  return result;
}

uint64_t sub_21968D0C8(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for MagazineCatalogSectionHeaderModel(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_21968D12C()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(uint64_t a1)
{
  result = qword_280E98230;
  if (!qword_280E98230)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_21968D1FC(uint64_t a1)
{
  sub_2189AD5C8(319);
  if (v1 <= 0x3F)
  {
    sub_2186ECA28();
    if (v2 <= 0x3F)
    {
      sub_2186F9548();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_21968D298@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189AD5C8(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE64(a1, v10);
  v16 = *(v13 + 48);
  if (v16(v10, 1, v12) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    v19 = a2;
    sub_21877CCA8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    a2 = v19;
    sub_219BEE974();
    if (v16(v10, 1, v12) != 1)
    {
      sub_2189ADEC8(v10);
    }
  }

  else
  {
    (*(v13 + 32))(v15, v10, v12);
  }

  (*(v13 + 32))(a4, v15, v12);
  if (!a2)
  {
    v20 = 0x4122750000000000;
    sub_2186ECA28();
    swift_allocObject();
    a2 = sub_219BEF534();
  }

  v17 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
  *(a4 + *(v17 + 20)) = a2;
  if (!a3)
  {
    v20 = 5;
    sub_2186F9548();
    swift_allocObject();
    a3 = sub_219BEF534();
  }

  result = sub_2189ADEC8(a1);
  *(a4 + *(v17 + 24)) = a3;
  return result;
}

uint64_t sub_21968D590@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  sub_2189AD5C8(0);
  v46 = *(v3 - 8);
  v47 = v3;
  MEMORY[0x28223BE20](v3);
  v48 = v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
  MEMORY[0x28223BE20](v5);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2189ADE0C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v50 = v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v51 = v40 - v11;
  sub_21968E0A4(0, &qword_280E8C780, MEMORY[0x277D844C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = v40 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21968DFEC();
  v17 = v52;
  sub_219BF7B34();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v43 = 0;
  v44 = v14;
  v45 = a1;
  v52 = v7;
  LOBYTE(v55) = 0;
  sub_21877CCA8(&qword_280E91A88, sub_2189AD5C8, MEMORY[0x277D321B0]);
  v19 = v51;
  v20 = v47;
  sub_219BF7674();
  sub_2186ECA28();
  v22 = v21;
  LOBYTE(v54) = 1;
  v23 = MEMORY[0x277D32620];
  sub_21877CCA8(&qword_280E913D8, sub_2186ECA28, MEMORY[0x277D32620]);
  v40[0] = v22;
  sub_219BF7674();
  v41 = v55;
  sub_2186F9548();
  v25 = v24;
  LOBYTE(v53) = 2;
  sub_21877CCA8(&qword_280E913B8, sub_2186F9548, v23);
  v26 = v13;
  v40[1] = v25;
  sub_219BF7674();
  v42 = v54;
  v27 = v50;
  sub_2189ADE64(v19, v50);
  v28 = v46;
  v29 = *(v46 + 48);
  if (v29(v27, 1, v20) == 1)
  {
    type metadata accessor for TagFeedServiceConfig(0);
    sub_21877CCA8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
    v30 = v48;
    sub_219BEE974();
    v31 = v29(v27, 1, v20);
    v32 = v45;
    if (v31 != 1)
    {
      sub_2189ADEC8(v50);
    }
  }

  else
  {
    v30 = v48;
    (*(v28 + 32))(v48, v27, v20);
    v32 = v45;
  }

  v33 = v52;
  (*(v28 + 32))(v52, v30, v20);
  v34 = v26;
  v35 = v41;
  if (!v41)
  {
    v53 = 0x4122750000000000;
    swift_allocObject();
    v35 = sub_219BEF534();
  }

  v36 = v49;
  v37 = v51;
  v38 = v44;
  *(v33 + *(v5 + 20)) = v35;
  v39 = v42;
  if (!v42)
  {
    v53 = 5;
    swift_allocObject();
    v39 = sub_219BEF534();
  }

  sub_2189ADEC8(v37);
  (*(v38 + 8))(v16, v34);
  *(v33 + *(v5 + 24)) = v39;
  sub_21968E040(v33, v36);
  return __swift_destroy_boxed_opaque_existential_1(v32);
}

uint64_t sub_21968DB4C(void *a1)
{
  v3 = v1;
  sub_21968E0A4(0, &qword_27CC1DBB0, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v12 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_21968DFEC();
  sub_219BF7B44();
  LOBYTE(v13) = 0;
  sub_2189AD5C8(0);
  sub_21877CCA8(&qword_27CC0BEC8, sub_2189AD5C8, MEMORY[0x277D321A8]);
  sub_219BF7834();
  if (!v2)
  {
    v10 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
    v13 = *(v3 + *(v10 + 20));
    HIBYTE(v12) = 1;
    sub_2186ECA28();
    sub_21877CCA8(&qword_280E913E0, sub_2186ECA28, MEMORY[0x277D32610]);
    sub_219BF7834();
    v13 = *(v3 + *(v10 + 24));
    HIBYTE(v12) = 2;
    sub_2186F9548();
    sub_21877CCA8(&qword_280E913C0, sub_2186F9548, MEMORY[0x277D32610]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}

unint64_t sub_21968DDE4()
{
  v1 = 0x4973646E6F636573;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_21968DE4C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_21968E220(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_21968DE74(uint64_t a1)
{
  v2 = sub_21968DFEC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_21968DEB0(uint64_t a1)
{
  v2 = sub_21968DFEC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_21968DF1C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for TagFeedServiceConfig(0);
  sub_21877CCA8(&unk_280ECCB90, type metadata accessor for TagFeedServiceConfig, &unk_219C2C2C8);
  if ((sub_219BEE9F4() & 1) == 0)
  {
    return 0;
  }

  sub_2186ECA28();
  if ((sub_219BEF504() & 1) == 0)
  {
    return 0;
  }

  sub_2186F9548();
  return sub_219BEF504() & 1;
}

unint64_t sub_21968DFEC()
{
  result = qword_280E98258;
  if (!qword_280E98258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98258);
  }

  return result;
}

uint64_t sub_21968E040(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PuzzleContinuePlayingTagFeedGroupKnobs(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_21968E0A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_21968DFEC();
    v7 = a3(a1, &type metadata for PuzzleContinuePlayingTagFeedGroupKnobs.CodingKeys, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_21968E11C()
{
  result = qword_27CC1DBB8;
  if (!qword_27CC1DBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBB8);
  }

  return result;
}

unint64_t sub_21968E174()
{
  result = qword_280E98248;
  if (!qword_280E98248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98248);
  }

  return result;
}

unint64_t sub_21968E1CC()
{
  result = qword_280E98250;
  if (!qword_280E98250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280E98250);
  }

  return result;
}

uint64_t sub_21968E220(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73656C7572 && a2 == 0xE500000000000000;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4973646E6F636573 && a2 == 0xED0000747361506ELL || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000219CDCCB0 == a2)
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

void sub_21968E344(void *a1)
{
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  sub_219BDB5E4();

  v5 = sub_219BF53D4();

  [a1 setTitle_];

  if (sub_219BED0C4())
  {
    v6 = [objc_opt_self() clearColor];
  }

  else
  {
    v6 = *(*__swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80)) + OBJC_IVAR____TtC7NewsUI210BaseStyler_theme);
  }

  v7 = v6;
  sub_219BEDA04();
}

uint64_t sub_21968E4D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v187 = a4;
  v188 = a3;
  v190 = a2;
  v189 = a5;
  sub_219690234(0, &unk_280EE8380, MEMORY[0x277D2E6C8]);
  MEMORY[0x28223BE20](v6 - 8);
  v186 = v151 - v7;
  v8 = sub_219BE16E4();
  MEMORY[0x28223BE20](v8 - 8);
  v200 = v151 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219690234(0, qword_280EDE900, type metadata accessor for TagFeedGroup);
  MEMORY[0x28223BE20](v10 - 8);
  v191 = v151 - v11;
  sub_219690234(0, &qword_280E90840, MEMORY[0x277D33470]);
  MEMORY[0x28223BE20](v12 - 8);
  v177 = v151 - v13;
  sub_219690234(0, &unk_280EE87A0, MEMORY[0x277D2DAB8]);
  MEMORY[0x28223BE20](v14 - 8);
  v185 = v151 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v202 = v151 - v17;
  v18 = sub_219BDF584();
  v194 = *(v18 - 8);
  v195 = v18;
  MEMORY[0x28223BE20](v18);
  v199 = v151 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v201 = v151 - v21;
  v198 = sub_219BDD374();
  v192 = *(v198 - 8);
  MEMORY[0x28223BE20](v198);
  v183 = v151 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_219BDEE04();
  v193 = *(v182 - 8);
  MEMORY[0x28223BE20](v182);
  v181 = v151 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v164 = sub_219BF0B74();
  v180 = *(v164 - 8);
  MEMORY[0x28223BE20](v164);
  v163 = v151 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F1164(0);
  v169 = v25;
  v179 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v168 = v151 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_219BF04A4();
  v178 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v161 = v151 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0F3C(0);
  v167 = v28;
  v176 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v166 = v151 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v160 = sub_219BF0F34();
  v175 = *(v160 - 8);
  MEMORY[0x28223BE20](v160);
  v159 = v151 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2186F0E54(0);
  v207 = v31;
  v174 = *(v31 - 1);
  MEMORY[0x28223BE20](v31);
  v165 = v151 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = type metadata accessor for TagFeedModel(0);
  MEMORY[0x28223BE20](v206);
  v34 = v151 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898BF70(0);
  v36 = v35;
  v37 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v39 = v151 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21898C06C(0);
  v41 = v40 - 8;
  MEMORY[0x28223BE20](v40);
  v43 = v151 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = MEMORY[0x277D84F90];
  v210 = MEMORY[0x277D84F90];
  v211 = MEMORY[0x277D84F90];
  sub_218954350(0);
  v46 = v45;
  (*(*(v45 - 8) + 16))(v43, a1, v45);
  v47 = *(v41 + 44);
  sub_2186EF864(&unk_280EE5850, sub_218954350, MEMORY[0x277D6D730]);
  v196 = a1;
  sub_219BF5DF4();
  v203 = v46;
  sub_219BF5E84();
  v48 = v193;
  v49 = *&v43[v47];
  v197 = v44;
  if (v49 != v209)
  {
    v204 = (v37 + 8);
    v205 = (v37 + 16);
    v184 = (v174 + 1);
    v158 = (v179 + 32);
    v157 = (v180 + 8);
    v156 = (v179 + 8);
    v172 = (v193 + 8);
    v171 = v192 + 16;
    v170 = (v192 + 8);
    v155 = (v176 + 32);
    v154 = (v178 + 8);
    v153 = (v176 + 8);
    v174 += 4;
    v152 = (v175 + 8);
    v197 = v44;
    v173 = v193 + 16;
    while (2)
    {
      v58 = v48;
LABEL_6:
      v59 = sub_219BF5EC4();
      (*v205)(v39);
      v59(&v209, 0);
      sub_219BF5E94();
      sub_219BE5FC4();
      (*v204)(v39, v36);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v61 = v207;
      switch(EnumCaseMultiPayload)
      {
        case 1:
          sub_218A128AC(0, &qword_280ED2960, type metadata accessor for TagFeedGapLocation, MEMORY[0x277D333C8], "location offlineModel ");
          v67 = *(v66 + 48);
          v68 = sub_219BF1584();
          (*(*(v68 - 8) + 8))(&v34[v67], v68);
          v62 = type metadata accessor for TagFeedGapLocation;
          goto LABEL_8;
        case 2:
          (*v174)(v165, v34, v207);
          v81 = v159;
          sub_219BF07D4();
          sub_219BF0F14();
          v82 = (*v152)(v81, v160);
          MEMORY[0x21CECC690](v82);
          if (*((v211 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v211 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_219BF5A14();
          }

          sub_219BF5A54();
          (*v184)(v165, v207);
          goto LABEL_41;
        case 3:
          (*v155)(v166, v34, v167);
          v83 = v161;
          sub_219BF07D4();
          v84 = sub_219BF0404();
          (*v154)(v83, v162);
          v85 = [v84 identifier];
          swift_unknownObjectRelease();
          v86 = sub_219BF5414();
          v88 = v87;

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v197 = sub_218840D24(0, *(v197 + 2) + 1, 1, v197);
          }

          v90 = *(v197 + 2);
          v89 = *(v197 + 3);
          if (v90 >= v89 >> 1)
          {
            v197 = sub_218840D24((v89 > 1), v90 + 1, 1, v197);
          }

          (*v153)(v166, v167);
          v91 = v197;
          *(v197 + 2) = v90 + 1;
          v92 = &v91[16 * v90];
          *(v92 + 4) = v86;
          *(v92 + 5) = v88;
          goto LABEL_41;
        case 4:
        case 6:
        case 8:
        case 9:
        case 10:
        case 11:
        case 12:
        case 13:
          v62 = type metadata accessor for TagFeedModel;
LABEL_8:
          v63 = v62;
          v64 = v34;
          goto LABEL_9;
        case 5:
          v151[2] = *v34;
          v93 = sub_219BE5B44();
          v94 = *(v93 + 16);
          if (v94)
          {
            v209 = MEMORY[0x277D84F90];
            sub_219BF73F4();
            v95 = (*(v58 + 80) + 32) & ~*(v58 + 80);
            v96 = v58;
            v176 = v93;
            v97 = v93 + v95;
            v179 = *(v96 + 72);
            v178 = *(v96 + 16);
            do
            {
              v98 = v181;
              v99 = v182;
              (v178)(v181, v97, v182);
              v180 = sub_219BDEDF4();
              (*v172)(v98, v99);
              sub_219BF73D4();
              sub_219BF7414();
              sub_219BF7424();
              sub_219BF73E4();
              v97 += v179;
              --v94;
            }

            while (v94);

            v100 = v209;
            v101 = MEMORY[0x277D84F90];
          }

          else
          {

            v101 = MEMORY[0x277D84F90];
            v100 = MEMORY[0x277D84F90];
          }

          sub_2191ED6C8(v100);
          v102 = sub_219BE5B34();
          v103 = *(v102 + 16);
          v104 = v192;
          if (v103)
          {
            v151[0] = v36;
            v209 = v101;
            v180 = v103;
            sub_21870B65C(0, v103, 0);
            v105 = v209;
            v106 = (*(v104 + 80) + 32) & ~*(v104 + 80);
            v151[1] = v102;
            v107 = v102 + v106;
            v176 = *(v104 + 72);
            v175 = *(v104 + 16);
            do
            {
              v108 = v183;
              (v175)(v183, v107, v198);
              v109 = sub_219BDD364();
              v110 = [v109 identifier];
              v179 = sub_219BF5414();
              v178 = v111;

              (*v170)(v108, v198);
              v209 = v105;
              v113 = *(v105 + 16);
              v112 = *(v105 + 24);
              if (v113 >= v112 >> 1)
              {
                sub_21870B65C((v112 > 1), v113 + 1, 1);
                v105 = v209;
              }

              *(v105 + 16) = v113 + 1;
              v114 = v105 + 16 * v113;
              v115 = v178;
              *(v114 + 32) = v179;
              *(v114 + 40) = v115;
              v107 += v176;
              --v180;
            }

            while (v180);

            v116 = v105;
            v36 = v151[0];
          }

          else
          {

            v116 = v101;
          }

          sub_2191ED3E8(v116);

          goto LABEL_41;
        case 7:
          sub_218A128AC(0, &qword_280E90E78, sub_2186EAD48, sub_2186F0E54, " fallback ");
          (*v184)(&v34[*(v69 + 48)], v61);
          sub_2186EAD48(0);
          (*(*(v70 - 8) + 8))(v34, v70);
          goto LABEL_10;
        case 14:
          (*v158)(v168, v34, v169);
          v71 = v163;
          sub_219BF07D4();
          v72 = sub_219BF0B44();
          (*v157)(v71, v164);
          v73 = [v72 identifier];

          v74 = sub_219BF5414();
          v180 = v75;

          v76 = v210;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v76 = sub_218840D24(0, *(v76 + 2) + 1, 1, v76);
          }

          v78 = *(v76 + 2);
          v77 = *(v76 + 3);
          if (v78 >= v77 >> 1)
          {
            v76 = sub_218840D24((v77 > 1), v78 + 1, 1, v76);
          }

          (*v156)(v168, v169);
          *(v76 + 2) = v78 + 1;
          v79 = &v76[16 * v78];
          v80 = v180;
          *(v79 + 4) = v74;
          *(v79 + 5) = v80;
          v210 = v76;
LABEL_41:
          sub_219BF5E84();
          v48 = v193;
          if (*&v43[v47] == v209)
          {
            break;
          }

          continue;
        default:

          sub_2186F0CC0(0);
          v63 = type metadata accessor for TagFeedGapLocation;
          v64 = &v34[*(v65 + 48)];
LABEL_9:
          sub_2196901D4(v64, v63);
LABEL_10:
          sub_219BF5E84();
          if (*&v43[v47] == v209)
          {
            goto LABEL_2;
          }

          goto LABEL_6;
      }

      break;
    }
  }

LABEL_2:
  v50 = 0xFFFFFFFFFFFFFF9;
  sub_2196901D4(v43, sub_21898C06C);
  v52 = v194;
  v51 = v195;
  v53 = v201;
  (*(v194 + 104))(v201, *MEMORY[0x277D2DB58], v195);
  v54 = v211;
  v207 = v210;
  v55 = v196;
  sub_219BE6934();
  v56 = v191;
  sub_21943EC40(v209, v191);

  v57 = type metadata accessor for TagFeedGroup(0);
  if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
  {
    sub_219690178(v56, qword_280EDE900, type metadata accessor for TagFeedGroup);
LABEL_45:
    v120 = sub_219BDF474();
    (*(*(v120 - 8) + 56))(v202, 1, 1, v120);
    goto LABEL_47;
  }

  v117 = v177;
  sub_2195A5C88(v177);
  sub_2196901D4(v56, type metadata accessor for TagFeedGroup);
  v118 = sub_219BF1904();
  v119 = *(v118 - 8);
  if ((*(v119 + 48))(v117, 1, v118) == 1)
  {
    sub_219690178(v117, &qword_280E90840, MEMORY[0x277D33470]);
    v50 = 0xFFFFFFFFFFFFFF9;
    goto LABEL_45;
  }

  sub_219BF17C4();
  (*(v119 + 8))(v117, v118);
  v50 = 0xFFFFFFFFFFFFFF9;
LABEL_47:
  result = sub_218E65D18(v55);
  if (v122)
  {
    goto LABEL_70;
  }

  v123 = result;
  v124 = sub_21968FE88(v190, v55, sub_218954350, &unk_280EE5850, sub_218954350);
  (*(v52 + 16))(v199, v53, v51);
  sub_219BE6934();
  sub_2194420E8(v209, v200);

  v125 = sub_219BE6944();
  if (v123 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_67;
  }

  if (v123 > 0x7FFFFFFF)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v50 = v125;
  v53 = v126;
  LODWORD(v205) = v124;
  if (v54 >> 62)
  {
LABEL_68:
    v127 = sub_219BF7214();
    goto LABEL_52;
  }

  v127 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_52:
  v206 = v123;
  v204 = v50;
  v198 = v53;
  if (!v127)
  {
LABEL_65:
    sub_219BE6934();
    v145 = **(&unk_278242FD8 + ((v208 >> 58) & 0x3C | (v208 >> 1) & 3));
    v146 = sub_219BE0674();
    v147 = *(v146 - 8);
    v148 = v186;
    (*(v147 + 104))(v186, v145, v146);

    (*(v147 + 56))(v148, 0, 1, v146);
    v149 = MEMORY[0x277D2DAB8];
    v150 = v202;
    sub_219690288(v202, v185, &unk_280EE87A0, MEMORY[0x277D2DAB8]);

    sub_219BE15E4();

    sub_219690178(v150, &unk_280EE87A0, v149);
    return (*(v52 + 8))(v201, v51);
  }

  v208 = MEMORY[0x277D84F90];
  result = sub_21870B65C(0, v127 & ~(v127 >> 63), 0);
  if ((v127 & 0x8000000000000000) == 0)
  {
    v128 = v208;
    if ((v54 & 0xC000000000000001) != 0)
    {
      v129 = 0;
      do
      {
        MEMORY[0x21CECE0F0](v129, v54);
        v130 = [swift_unknownObjectRetain() articleID];
        v131 = sub_219BF5414();
        v133 = v132;
        swift_unknownObjectRelease_n();

        v208 = v128;
        v135 = *(v128 + 16);
        v134 = *(v128 + 24);
        if (v135 >= v134 >> 1)
        {
          sub_21870B65C((v134 > 1), v135 + 1, 1);
          v128 = v208;
        }

        ++v129;
        *(v128 + 16) = v135 + 1;
        v136 = v128 + 16 * v135;
        *(v136 + 32) = v131;
        *(v136 + 40) = v133;
      }

      while (v127 != v129);
    }

    else
    {
      v137 = v54 + 32;
      do
      {
        v138 = [swift_unknownObjectRetain_n() articleID];
        v139 = sub_219BF5414();
        v141 = v140;
        swift_unknownObjectRelease_n();

        v208 = v128;
        v143 = *(v128 + 16);
        v142 = *(v128 + 24);
        if (v143 >= v142 >> 1)
        {
          sub_21870B65C((v142 > 1), v143 + 1, 1);
          v128 = v208;
        }

        *(v128 + 16) = v143 + 1;
        v144 = v128 + 16 * v143;
        *(v144 + 32) = v139;
        *(v144 + 40) = v141;
        v137 += 8;
        --v127;
      }

      while (v127);
    }

    v51 = v195;
    v52 = v194;
    goto LABEL_65;
  }

  __break(1u);
LABEL_70:
  __break(1u);
  return result;
}

uint64_t sub_21968FE88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  v19 = a5;
  v8 = MEMORY[0x277D6E740];
  sub_219690234(0, &qword_280EE42A0, MEMORY[0x277D6E740]);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v18 - v10;
  v12 = sub_219BE97D4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v18 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219690288(a1, v11, &qword_280EE42A0, v8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_219690178(v11, &qword_280EE42A0, MEMORY[0x277D6E740]);
    a3(0);
    sub_2186EF864(a4, v19, MEMORY[0x277D6D730]);
    sub_219BF5DF4();
    sub_219BF5E84();
    result = sub_219BF5E74();
    if (result < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_9;
    }

    v17 = result;
    if (result <= 0x7FFFFFFF)
    {
      return v17;
    }

    __break(1u);
  }

  (*(v13 + 32))(v15, v11, v12);
  v17 = sub_219BE97A4();
  result = (*(v13 + 8))(v15, v12);
  if (v17 < 0xFFFFFFFF80000000)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (v17 <= 0x7FFFFFFF)
  {
    return v17;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t sub_219690178(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_219690234(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_2196901D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_219690234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_219690288(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_219690234(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

double sub_219690314(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v30 = a2;
  v31 = a1;
  v32 = sub_219BDE294();
  v4 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_21873F65C(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_219BDD534();
  v28 = *(v10 - 8);
  v29 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = a3;
  sub_2187B2C48(0);
  v14 = v13;
  v15 = swift_allocBox();
  v17 = v16;
  v26 = *(v14 + 48);
  v27 = v15;
  sub_2187B2DA0(0);
  v25 = *(v18 + 48);
  v19 = sub_219BDB954();
  v20 = *(*(v19 - 8) + 56);
  v20(v9, 1, 1, v19);

  sub_219BDD514();
  v20(v9, 1, 1, v19);
  v21 = v32;
  (*(v4 + 104))(v6, *MEMORY[0x277D2FF08], v32);
  sub_219BDD894();
  (*(v4 + 8))(v6, v21);
  sub_218838478(v9);
  (*(v28 + 8))(v12, v29);
  v22 = MEMORY[0x277D84F90];
  v23 = v26;
  *(v17 + v25) = MEMORY[0x277D84F90];
  *(v17 + v23) = v22;
  v33 = v27 | 2;
  sub_2186CF94C(0);
  sub_2189B4DD4();
  sub_219BEB484();
  sub_218932F9C(v33);

  return result;
}

uint64_t sub_219690640@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_219690854(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_219690668(uint64_t a1)
{
  v2 = sub_2187C3014();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2196906A4(uint64_t a1)
{
  v2 = sub_2187C3014();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2196906E0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 20));
  if (*v2 == 0x69726F7453706F74 && v2[1] == 0xEA00000000007365)
  {
    return 1;
  }

  else
  {
    return sub_219BF78F4();
  }
}

uint64_t sub_219690728(uint64_t a1)
{
  result = sub_2187C3618(&qword_280ECB720, type metadata accessor for CuratedTodayFeedGroup, &unk_219C98D34);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_219690780(uint64_t a1)
{
  v2 = sub_2187C3618(&qword_280ECB750, type metadata accessor for CuratedTodayFeedGroup, &unk_219C98C18);

  return MEMORY[0x282191938](a1, v2);
}

unint64_t sub_219690800()
{
  result = qword_27CC1DBC0;
  if (!qword_27CC1DBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CC1DBC0);
  }

  return result;
}

uint64_t sub_219690854(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x724774616D726F66 && a2 == 0xEB0000000070756FLL;
  if (v4 || (sub_219BF78F4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65707974627573 && a2 == 0xE700000000000000 || (sub_219BF78F4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000219CD7220 == a2 || (sub_219BF78F4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7845676E6974756DLL && a2 == 0xEF6E6F6974706D65)
  {

    return 3;
  }

  else
  {
    v6 = sub_219BF78F4();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_2196909CC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X8>)
{
  v26[1] = a2;
  v27 = sub_219BDFC94();
  v26[0] = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_219690D48(0);
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
      sub_219690DDC(&unk_280EE85A8, MEMORY[0x277D2E018], MEMORY[0x277D2E020]);
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

void sub_219690D48(uint64_t a1)
{
  if (!qword_280EE8FA0)
  {
    sub_219BDFCA4();
    sub_219690DDC(&qword_280EE85A0, MEMORY[0x277D2E028], MEMORY[0x277D2E010]);
    v1 = sub_219BDCC14();
    if (!v2)
    {
      atomic_store(v1, &qword_280EE8FA0);
    }
  }
}

uint64_t sub_219690DDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for SportsEventTopicTagFeedGroupConfigData(uint64_t a1)
{
  result = qword_280E97E50;
  if (!qword_280E97E50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_219690EA8@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v17 = a2;
  v4 = sub_219BF1934();
  v16 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v18 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2196913D8(0, &qword_280E8C768, MEMORY[0x277D844C8]);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v15 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219691384();
  sub_219BF7B34();
  if (!v2)
  {
    v12 = v16;
    v11 = v17;
    v19 = 1;
    sub_218933D7C(&qword_280E90808, MEMORY[0x277D33488]);
    sub_219BF7734();
    (*(v8 + 8))(v10, v7);
    *v11 = 34;
    v13 = type metadata accessor for SportsEventTopicTagFeedGroupConfigData(0);
    (*(v12 + 32))(&v11[*(v13 + 20)], v18, v4);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_219691110(void *a1)
{
  v3 = v1;
  sub_2196913D8(0, &qword_27CC1DBC8, MEMORY[0x277D84538]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_219691384();
  sub_219BF7B44();
  v11[15] = *v3;
  v11[14] = 0;
  sub_218933D28();
  sub_219BF7834();
  if (!v2)
  {
    type metadata accessor for SportsEventTopicTagFeedGroupConfigData(0);
    v11[13] = 1;
    sub_219BF1934();
    sub_218933D7C(&qword_280E90810, MEMORY[0x277D33480]);
    sub_219BF7834();
  }

  return (*(v7 + 8))(v9, v6);
}