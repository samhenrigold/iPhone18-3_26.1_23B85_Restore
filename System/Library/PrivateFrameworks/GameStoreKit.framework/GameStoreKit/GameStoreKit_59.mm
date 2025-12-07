id sub_24EC06680(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v21 = a6;
  v15 = *(a8 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(type metadata accessor for WeakNotificationObserver());
  (*(v15 + 16))(v17, a3, a8);
  return sub_24EC06420(a1, a2, v17, a4, a5, v21, v18, a8, a9);
}

uint64_t sub_24EC06828(uint64_t a1, uint64_t a2)
{
  v3 = sub_24F91EB58();
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_24EC06954(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v3[12] = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent(0);
  v3[13] = swift_task_alloc();
  v3[14] = type metadata accessor for GSKShelf(0);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D110, &qword_24F948460);
  v3[17] = v4;
  v3[18] = *(v4 - 8);
  v3[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213760, qword_24F93AF80);
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC06B04, 0, 0);
}

uint64_t sub_24EC06B04()
{
  v1 = v0[10];
  v2 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  v3 = v1 + v2[5];
  v0[24] = *(v3 + 16);
  v4 = *(v3 + 24);
  v0[25] = v4;
  if (v4)
  {
    v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22EBA0, &unk_24F980F50);

    v6 = swift_task_alloc();
    v0[26] = v6;
    *v6 = v0;
    v6[1] = sub_24EC06D2C;
    v7 = v0 + 7;
    v8 = v5;
    v9 = v5;
  }

  else
  {
    v11 = v0[12];
    v10 = v0[13];
    v13 = *v1;
    v12 = v1[1];
    sub_24EC09C18(v3, v10 + v11[5], type metadata accessor for Game);
    sub_24EC09C18(v1 + v2[6], v10 + v11[6], type metadata accessor for Player);
    sub_24EC09C18(v1 + v2[7], v10 + v11[7], type metadata accessor for Leaderboard);
    v14 = *(v1 + v2[8]);
    *v10 = v13;
    v10[1] = v12;
    *(v10 + v11[8]) = v14;
    *(v10 + v11[9]) = 1;
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

    v16 = swift_task_alloc();
    v0[28] = v16;
    *v16 = v0;
    v16[1] = sub_24EC070A0;
    v7 = v0 + 2;
    v8 = v15;
    v9 = v15;
  }

  return MEMORY[0x28217F228](v7, v8, v9);
}

uint64_t sub_24EC06D2C()
{
  *(*v1 + 216) = v0;

  if (v0)
  {

    v2 = sub_24EC076D4;
  }

  else
  {
    v2 = sub_24EC06E48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC06E48()
{
  v22 = v0;
  v2 = *(v0 + 192);
  v1 = *(v0 + 200);
  v19 = *(v0 + 184);
  v20 = *(v0 + 176);
  v3 = *(v0 + 160);
  v4 = *(v0 + 168);
  v5 = *(v0 + 144);
  v6 = *(v0 + 152);
  v18 = *(v0 + 136);
  v7 = *(v0 + 64);
  ObjectType = swift_getObjectType();
  v21[0] = v2;
  v21[1] = v1;
  v17 = *(v0 + 80);
  v9 = (*(v7 + 56))(v21, ObjectType, v7);
  v11 = v10;

  v12 = swift_task_alloc();
  *(v12 + 16) = v9;
  *(v12 + 24) = v11;
  *(v12 + 32) = v17;
  (*(v5 + 104))(v6, *MEMORY[0x277D85778], v18);
  sub_24F92B928();

  (*(v4 + 16))(v20, v19, v3);
  sub_24E613678();
  sub_24F9280F8();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  (*(v4 + 8))(v19, v3);
  v13 = *(v0 + 72);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v14 - 8) + 56))(v13, 0, 1, v14);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_24EC070A0()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_24EC073C4;
  }

  else
  {
    v2 = sub_24EC071B4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC071B4()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[30] = v3;
  v4 = sub_24EC09698(&qword_27F21D580, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent, &unk_24F9CCB78);
  *v3 = v0;
  v3[1] = sub_24EC072B0;
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24EC072B0()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_24EC07608;
  }

  else
  {
    v2 = sub_24EC07488;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC073C4()
{
  sub_24EC096E0(*(v0 + 104), type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC07488()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24EC096E0(v3, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  sub_24EC09C18(v2, v1, type metadata accessor for GSKShelf);
  sub_24F928138();
  sub_24EC096E0(v2, type metadata accessor for GSKShelf);
  v4 = v0[9];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);

  v6 = v0[1];

  return v6();
}

uint64_t sub_24EC07608()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24EC096E0(v0[13], type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC076D4()
{

  v1 = *(v0 + 8);

  return v1();
}

double sub_24EC0777C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v42 = a5;
  v36 = a3;
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v40 = *(v8 - 8);
  v41 = *(v40 + 64);
  MEMORY[0x28223BE20](v8);
  v43 = &v34 - v9;
  v10 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  v11 = v10 - 8;
  v39 = *(v10 - 8);
  v12 = *(v39 + 64);
  MEMORY[0x28223BE20](v10);
  v37 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v35 = &v34 - v14;
  v16 = (a4 + *(v11 + 28));
  v18 = *v16;
  v17 = v16[1];
  type metadata accessor for LeaderboardHeaderShelfUpdater(0);
  swift_allocObject();

  v19 = swift_unknownObjectRetain();
  v20 = a2;
  v21 = sub_24EC0974C(v19, a3, v18, v17);
  swift_unknownObjectRelease();

  v34 = v8;
  v22 = v38;
  sub_24F92B898();
  v23 = sub_24F92B858();
  (*(*(v23 - 8) + 56))(v15, 1, 1, v23);
  v24 = v37;
  sub_24EC09C18(a4, v37, type metadata accessor for LeaderboardDetailHeaderShelfIntent);
  v25 = v40;
  (*(v40 + 16))(v43, v22, v8);
  v26 = (*(v39 + 80) + 40) & ~*(v39 + 80);
  v27 = (v12 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = (*(v25 + 80) + v27 + 16) & ~*(v25 + 80);
  v29 = (v41 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  *(v30 + 2) = 0;
  *(v30 + 3) = 0;
  *(v30 + 4) = v42;
  sub_24EC0A5D8(v24, &v30[v26]);
  v31 = &v30[v27];
  v32 = v36;
  *v31 = v20;
  v31[1] = v32;
  (*(v25 + 32))(&v30[v28], v43, v34);
  *&v30[v29] = v21;
  swift_unknownObjectRetain();

  sub_24F1D3DA4(0, 0, v35, &unk_24F98C170, v30);

  return result;
}

uint64_t sub_24EC07B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a8;
  v8[25] = v13;
  v8[22] = a6;
  v8[23] = a7;
  v8[20] = a4;
  v8[21] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B698, &unk_24F98C178);
  v8[26] = v9;
  v8[27] = *(v9 - 8);
  v8[28] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent(0);
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v8[35] = swift_task_alloc();
  v8[36] = swift_task_alloc();
  v8[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EC07CD4, 0, 0);
}

uint64_t sub_24EC07CD4()
{
  v1 = v0[11].i64[1];
  v2 = v0[10].i64[1];
  ObjectType = swift_getObjectType();
  (*(v1 + 40))(1, ObjectType, v1);
  v4 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  v5 = v4[5];
  v0[27].i32[2] = v5;
  v6 = (v2 + v5);
  v7 = v0[4].u64[0];
  v8 = v7 >> 60;
  if (v7 >> 60 == 8 && !v0[4].i64[1] && v7 == 0x8000000000000000 && v0[1].i64[0] == 4 && (v9 = vorrq_s8(v0[2], v0[3]), !(*&vorr_s8(*v9.i8, *&vextq_s8(v9, v9, 8uLL)) | v0[1].i64[1])))
  {
    v10 = *v6;
    v11 = v6[1];
    objc_allocWithZone(MEMORY[0x277CC1E70]);

    v24 = sub_24F3E5298(v10, v11, 0);

    v25 = v24 != 0;
  }

  else
  {
    v12 = v8 == 2 || v8 == 7;
    LOBYTE(v25) = v12 || v8 == 8 && !v0[4].i64[1] && v7 == 0x8000000000000000 && v0[1].i64[0] == 1 && (v13 = vorrq_s8(v0[2], v0[3]), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v0[1].i64[1]));
    sub_24E88D2AC(v0[1].i64);
  }

  v14 = v0[17].i64[0];
  v15 = v0[16].i64[0];
  v16 = v0[10].i64[1];
  v17 = *v16;
  v0[19].i64[0] = *v16;
  v18 = v16[1];
  v0[19].i64[1] = v18;
  sub_24EC09C18(v6, v14 + v15[5], type metadata accessor for Game);
  v19 = v4[6];
  v0[27].i32[3] = v19;
  sub_24EC09C18(v16 + v19, v14 + v15[6], type metadata accessor for Player);
  v20 = v4[7];
  v0[28].i32[0] = v20;
  sub_24EC09C18(v16 + v20, v14 + v15[7], type metadata accessor for Leaderboard);
  v21 = *(v16 + v4[8]);
  v0[20].i64[0] = v21;
  *v14 = v17;
  v14[1] = v18;
  *(v14 + v15[8]) = v21;
  *(v14 + v15[9]) = v25;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v0[20].i64[1] = v22;

  v23 = swift_task_alloc();
  v0[21].i64[0] = v23;
  *v23 = v0;
  v23[1] = sub_24EC07FE0;

  return MEMORY[0x28217F228](&v0[5], v22, v22);
}

uint64_t sub_24EC07FE0()
{
  *(*v1 + 344) = v0;

  if (v0)
  {
    v2 = sub_24EC0830C;
  }

  else
  {
    v2 = sub_24EC080F4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC080F4()
{
  v1 = v0[13];
  v2 = v0[14];
  __swift_project_boxed_opaque_existential_1(v0 + 10, v1);
  v3 = swift_task_alloc();
  v0[44] = v3;
  v4 = sub_24EC09698(&qword_27F21D580, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent, &unk_24F9CCB78);
  v0[45] = v4;
  *v3 = v0;
  v3[1] = sub_24EC081F8;
  v5 = v0[37];
  v6 = v0[34];
  v7 = v0[32];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24EC081F8()
{
  *(*v1 + 368) = v0;

  if (v0)
  {
    v2 = sub_24EC08578;
  }

  else
  {
    v2 = sub_24EC083E4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC0830C()
{
  sub_24EC096E0(*(v0 + 272), type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EC083E4()
{
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[34];
  v5 = v0[30];
  v4 = v0[31];
  v6 = v0[29];
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  sub_24EC096E0(v3, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  sub_24EC09C18(v2, v1, type metadata accessor for GSKShelf);
  v0[47] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();
  v7 = *(v5 + 8);
  v0[48] = v7;
  v0[49] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B690, &qword_24F98C0C8);
  sub_24F92B8F8();
  v8 = swift_task_alloc();
  v0[50] = v8;
  *v8 = v0;
  v8[1] = sub_24EC08658;
  v9 = v0[26];

  return MEMORY[0x2822003E8](v0 + 452, 0, 0, v9);
}

uint64_t sub_24EC08578()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 10);
  sub_24EC096E0(v0[34], type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24EC08658()
{

  return MEMORY[0x2822009F8](sub_24EC08754, 0, 0);
}

uint64_t sub_24EC08754()
{
  v1 = *(v0 + 452);
  if (v1 == 2)
  {
    v2 = *(v0 + 296);
    (*(*(v0 + 216) + 8))(*(v0 + 224), *(v0 + 208));
    sub_24EC096E0(v2, type metadata accessor for GSKShelf);

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 312);
    v6 = *(v0 + 320);
    v7 = *(v0 + 448);
    v8 = *(v0 + 444);
    v9 = *(v0 + 304);
    v11 = *(v0 + 256);
    v10 = *(v0 + 264);
    v12 = *(v0 + 168);
    sub_24EC09C18(v12 + *(v0 + 440), v10 + v11[5], type metadata accessor for Game);
    sub_24EC09C18(v12 + v8, v10 + v11[6], type metadata accessor for Player);
    sub_24EC09C18(v12 + v7, v10 + v11[7], type metadata accessor for Leaderboard);
    *v10 = v9;
    v10[1] = v5;
    *(v10 + v11[8]) = v6;
    *(v10 + v11[9]) = v1 & 1;

    v13 = swift_task_alloc();
    *(v0 + 408) = v13;
    *v13 = v0;
    v13[1] = sub_24EC0899C;
    v14 = *(v0 + 328);

    return MEMORY[0x28217F228](v0 + 120, v14, v14);
  }
}

uint64_t sub_24EC0899C()
{
  *(*v1 + 416) = v0;

  if (v0)
  {
    v2 = sub_24EC08C8C;
  }

  else
  {
    v2 = sub_24EC08AB0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC08AB0()
{
  v1 = v0[18];
  v2 = v0[19];
  __swift_project_boxed_opaque_existential_1(v0 + 15, v1);
  v3 = swift_task_alloc();
  v0[53] = v3;
  *v3 = v0;
  v3[1] = sub_24EC08B78;
  v4 = v0[45];
  v5 = v0[35];
  v7 = v0[32];
  v6 = v0[33];
  v8 = v0[20];

  return MEMORY[0x28217F4B0](v5, v6, v8, v7, v4, v1, v2);
}

uint64_t sub_24EC08B78()
{
  *(*v1 + 432) = v0;

  if (v0)
  {
    v2 = sub_24EC08F04;
  }

  else
  {
    v2 = sub_24EC08DA4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24EC08C8C()
{
  v1 = v0[37];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_24EC096E0(v0[33], type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24EC096E0(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EC08DA4()
{
  v1 = v0[48];
  v3 = v0[35];
  v2 = v0[36];
  v4 = v0[33];
  v5 = v0[31];
  v6 = v0[29];
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  sub_24EC096E0(v4, type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  sub_24EC09C18(v3, v2, type metadata accessor for GSKShelf);
  sub_24F92B8C8();
  v1(v5, v6);
  sub_24EC096E0(v3, type metadata accessor for GSKShelf);
  v7 = swift_task_alloc();
  v0[50] = v7;
  *v7 = v0;
  v7[1] = sub_24EC08658;
  v8 = v0[26];

  return MEMORY[0x2822003E8](v0 + 452, 0, 0, v8);
}

uint64_t sub_24EC08F04()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 15);
  v1 = v0[37];
  v3 = v0[27];
  v2 = v0[28];
  v4 = v0[26];
  sub_24EC096E0(v0[33], type metadata accessor for LeaderboardDetailHeaderShelfConstructionIntent);
  (*(v3 + 8))(v2, v4);
  sub_24EC096E0(v1, type metadata accessor for GSKShelf);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EC09024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return sub_24EC06954(a1, a2, a3);
}

void sub_24EC090D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6A8, &unk_24F98C190);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v19[-v6];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    v10 = *(Strong + 32);
    ObjectType = swift_getObjectType();
    (*(a2 + 40))(&v20, 1, ObjectType, a2);
    v12 = v24 >> 60;
    if (v24 >> 60 == 8 && !v25 && v24 == 0x8000000000000000 && v20 == 4 && (v13 = vorrq_s8(v22, v23), !(*&vorr_s8(*v13.i8, *&vextq_s8(v13, v13, 8uLL)) | v21)))
    {
      v14 = *(v9 + 40);
      v15 = *(v9 + 48);
      objc_allocWithZone(MEMORY[0x277CC1E70]);

      v17 = sub_24F3E5298(v14, v15, 0);

      v18 = v17 != 0;
    }

    else
    {
      v18 = 1;
      if (v12 != 2 && v12 != 7)
      {
        if (v12 != 8 || v25 || v24 != 0x8000000000000000 || v20 != 1 || (v16 = vorrq_s8(v22, v23), *&vorr_s8(*v16.i8, *&vextq_s8(v16, v16, 8uLL)) | v21))
        {
          v18 = 0;
        }
      }

      sub_24E88D2AC(&v20);
    }

    *(v9 + 32) = v18;
    if (v10 == v18)
    {
    }

    else
    {
      v19[23] = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B688, &qword_24F98C0C0);
      sub_24F92B8C8();

      (*(v5 + 8))(v7, v4);
    }
  }
}

uint64_t sub_24EC0937C()
{
  swift_unknownObjectRelease();

  v1 = OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledContinuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B688, &qword_24F98C0C0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B690, &qword_24F98C0C8);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LeaderboardHeaderShelfUpdater(uint64_t a1)
{
  result = qword_27F22B668;
  if (!qword_27F22B668)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC094D4(uint64_t a1)
{
  sub_24EC095EC(319, &qword_27F22B678, MEMORY[0x277D85788]);
  if (v1 <= 0x3F)
  {
    sub_24EC095EC(319, &qword_27F22B680, MEMORY[0x277D857B8]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_24EC095EC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277D839B0]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EC09698(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC096E0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24EC0974C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a3;
  v37 = a4;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6A0, &qword_24F98C188);
  v8 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v10 = &v33 - v9;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B688, &qword_24F98C0C0);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v34 = &v33 - v11;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B690, &qword_24F98C0C8);
  v12 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v14 = &v33 - v13;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  ObjectType = swift_getObjectType();
  v16 = *(a2 + 40);
  swift_unknownObjectRetain();
  v16(&v40, 1, ObjectType, a2);
  v17 = v44 >> 60;
  if (v44 >> 60 == 8 && !v45 && v44 == 0x8000000000000000 && v40 == 4 && (v18 = vorrq_s8(v42, v43), !(*&vorr_s8(*v18.i8, *&vextq_s8(v18, v18, 8uLL)) | v41)))
  {
    v19 = objc_allocWithZone(MEMORY[0x277CC1E70]);
    v20 = v37;

    v21 = v36;
    v23 = sub_24F3E5298(v36, v20, 0);

    v24 = v23 != 0;
    v26 = v38;
    v25 = v39;
  }

  else
  {
    v24 = 1;
    if (v17 == 2)
    {
      v26 = v38;
      v25 = v39;
      v21 = v36;
      v20 = v37;
    }

    else
    {
      v26 = v38;
      v25 = v39;
      v21 = v36;
      v20 = v37;
      if (v17 != 7)
      {
        if (v17 != 8 || v45 || v44 != 0x8000000000000000 || v40 != 1 || (v22 = vorrq_s8(v42, v43), *&vorr_s8(*v22.i8, *&vextq_s8(v22, v22, 8uLL)) | v41))
        {
          v24 = 0;
        }
      }
    }

    sub_24E88D2AC(&v40);
  }

  *(v5 + 32) = v24;
  *(v5 + 40) = v21;
  *(v5 + 48) = v20;
  (*(v8 + 104))(v10, *MEMORY[0x277D85778], v25);
  v27 = v34;
  sub_24F92B868();
  (*(v8 + 8))(v10, v25);
  (*(v12 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledStream, v14, v33);
  (*(v35 + 32))(v5 + OBJC_IVAR____TtC12GameStoreKitP33_E2C0F04C9137CD60886E8B0B62F74E8629LeaderboardHeaderShelfUpdater_isInstalledContinuation, v27, v26);
  v28 = *(v5 + 24);
  v29 = swift_getObjectType();
  v30 = swift_allocObject();
  swift_weakInit();
  v31 = *(v28 + 72);

  v31(v5, sub_24EC0A838, v30, v29, v28);

  return v5;
}

uint64_t sub_24EC09BC4()
{
  v1 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  return (*(v1 + 80))(v0, ObjectType, v1);
}

uint64_t sub_24EC09C18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC09C80()
{
  v1 = v0;
  v2 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  v50 = *(*(v2 - 8) + 80);
  v44 = *(*(v2 - 8) + 64);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v46 = *(v3 - 8);
  v47 = v3;
  v43 = *(v46 + 80);
  swift_unknownObjectRelease();

  v45 = (v50 + 40) & ~v50;
  v4 = v0 + v45;

  v5 = v0 + v45 + *(v2 + 20);

  v6 = type metadata accessor for Game(0);
  v7 = v6[18];
  v8 = sub_24F9289E8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 8);
  v10(v5 + v7, v8);
  v11 = v6[19];
  v49 = *(v9 + 48);
  if (!v49(v5 + v11, 1, v8))
  {
    v10(v5 + v11, v8);
  }

  v52 = v10;

  v12 = v6[21];
  v13 = sub_24F920818();
  v14 = *(v13 - 8);
  v51 = *(v14 + 48);
  if (!v51(v5 + v12, 1, v13))
  {
    (*(v14 + 8))(v5 + v12, v13);
  }

  v40 = v14;
  v41 = v13;

  v48 = v2;
  v42 = v4;
  v15 = v4 + *(v2 + 24);

  v16 = type metadata accessor for Player(0);
  v52(v15 + v16[6], v8);

  if (*(v15 + v16[9] + 8) != 1)
  {
  }

  v17 = v15 + v16[13];
  v18 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    v39 = v1;
    v19 = type metadata accessor for CallProviderConversationHandle(0);
    v20 = *(*(v19 - 8) + 48);
    if (!v20(v17, 1, v19))
    {

      v21 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v49(v17 + v21, 1, v8))
      {
        v52(v17 + v21, v8);
      }
    }

    v22 = v17 + *(v18 + 20);
    if (!v20(v22, 1, v19))
    {

      v23 = *(type metadata accessor for CallProvider(0) + 24);
      if (!v49(v22 + v23, 1, v8))
      {
        v52(v22 + v23, v8);
      }
    }

    v1 = v39;
  }

  if (*(v15 + v16[15] + 8))
  {
  }

  v24 = v15 + v16[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v24, 1, PlayedTogetherInfo))
  {

    v52(v24 + v6[18], v8);
    v26 = v6[19];
    if (!v49(v24 + v26, 1, v8))
    {
      v52(v24 + v26, v8);
    }

    v27 = v6[21];
    if (!v51(v24 + v27, 1, v41))
    {
      (*(v40 + 8))(v24 + v27, v41);
    }
  }

  v28 = v15 + v16[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v28, 1, ChallengeInfo))
  {

    v52(v28 + v6[18], v8);
    v30 = v6[19];
    if (!v49(v28 + v30, 1, v8))
    {
      v52(v28 + v30, v8);
    }

    v31 = v6[21];
    if (!v51(v28 + v31, 1, v41))
    {
      (*(v40 + 8))(v28 + v31, v41);
    }
  }

  v32 = v42 + *(v48 + 28);

  v33 = type metadata accessor for Leaderboard(0);
  v34 = *(v33 + 24);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128A0, &qword_24F9396A0);
  if (!(*(*(v35 - 8) + 48))(v32 + v34, 1, v35))
  {
    v36 = sub_24F91F648();
    (*(*(v36 - 8) + 8))(v32 + v34, v36);
  }

  v37 = *(v33 + 72);
  if (!v51(v32 + v37, 1, v41))
  {
    (*(v40 + 8))(v32 + v37, v41);
  }

  swift_unknownObjectRelease();
  (*(v46 + 8))(v1 + ((((v44 + v45 + 7) & 0xFFFFFFFFFFFFFFF8) + v43 + 16) & ~v43), v47);

  return swift_deallocObject();
}

uint64_t sub_24EC0A5D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LeaderboardDetailHeaderShelfIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC0A63C(uint64_t a1)
{
  v3 = *(type metadata accessor for LeaderboardDetailHeaderShelfIntent(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = (v5 + *(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[4];
  v11 = v1 + v5;
  v12 = *(v1 + v5);
  v13 = *(v11 + 1);
  v14 = swift_task_alloc();
  *(v2 + 16) = v14;
  *v14 = v2;
  v14[1] = sub_24E614970;

  return sub_24EC07B10(a1, v8, v9, v10, v1 + v4, v12, v13, v1 + v7);
}

uint64_t sub_24EC0A800()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_24EC0A854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 32);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24EC0A998(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F9289E8();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsMediaPreviewPageIntent(uint64_t a1)
{
  result = qword_27F22B6B0;
  if (!qword_27F22B6B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EC0AB14(uint64_t a1)
{
  sub_24F9289E8();
  if (v1 <= 0x3F)
  {
    sub_24E6D5010(319, &qword_27F22B6C0, &type metadata for GameDetailsMedia);
    if (v2 <= 0x3F)
    {
      sub_24E6D5010(319, &qword_27F214308, &type metadata for MediaPreviewPlatform);
      if (v3 <= 0x3F)
      {
        sub_24E7D231C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_24EC0AC08(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6D8, &qword_24F98C338);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0BB08();
  sub_24F92D128();
  LOBYTE(v12) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
    LOBYTE(v12) = 1;
    sub_24F9289E8();
    sub_24EC0C10C(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80, &qword_24F986010);
    sub_24EB6A3E4(&qword_27F229A98, sub_24E6ED170, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448, &qword_24F93CBF0);
    sub_24EC0BC1C(&qword_27F22B6E0, sub_24EC0BC94, MEMORY[0x277D83948]);
    sub_24F92CD48();
    LOBYTE(v12) = 4;
    type metadata accessor for Page.Background(0);
    sub_24EC0C10C(&qword_27F21D920, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24EC0AF48@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v3 - 8);
  v24 = v22 - v4;
  v5 = sub_24F9289E8();
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6C8, &qword_24F98C330);
  v9 = *(v8 - 8);
  v25 = v8;
  v26 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = v22 - v10;
  v12 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  MEMORY[0x28223BE20](v12);
  v14 = (v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0BB08();
  v28 = v11;
  v15 = v29;
  sub_24F92D108();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v29 = a1;
  v16 = v27;
  LOBYTE(v31) = 0;
  v17 = v25;
  *v14 = sub_24F92CC28();
  v14[1] = v18;
  v22[1] = v18;
  LOBYTE(v31) = 1;
  sub_24EC0C10C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  sub_24F92CC68();
  (*(v16 + 32))(v14 + v12[5], v7, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F229A80, &qword_24F986010);
  v30 = 2;
  sub_24EB6A3E4(&qword_27F229A88, sub_24E6ED11C, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v19 = v29;
  *(v14 + v12[6]) = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214448, &qword_24F93CBF0);
  v30 = 3;
  sub_24EC0BC1C(&qword_27F214450, sub_24E62AC48, MEMORY[0x277D83978]);
  sub_24F92CC68();
  *(v14 + v12[7]) = v31;
  type metadata accessor for Page.Background(0);
  LOBYTE(v31) = 4;
  sub_24EC0C10C(&qword_27F21D930, type metadata accessor for Page.Background, &protocol conformance descriptor for Page.Background);
  v20 = v24;
  sub_24F92CC18();
  (*(v26 + 8))(v28, v17);
  sub_24E7DF71C(v20, v14 + v12[8]);
  sub_24EC0BB5C(v14, v23);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24EC0BBC0(v14);
}

uint64_t sub_24EC0B544(void *a1, uint64_t a2, uint64_t a3, int a4, double a5)
{
  v15 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B700, &qword_24F98C350);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0C01C();
  sub_24F92D128();
  v17 = a2;
  v16 = 0;
  type metadata accessor for MediaPlatform();
  sub_24EC0C10C(&qword_27F214070, type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  sub_24F92CD48();
  if (!v5)
  {
    v17 = a3;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498, &qword_24F97EA20);
    sub_24EC0C070(&qword_27F22B708, &qword_27F22B710, &unk_24F93C170, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v17 = *&a5;
    v16 = 2;
    sub_24E620F7C();
    sub_24F92CD48();
    LOBYTE(v17) = 3;
    sub_24F92CD18();
  }

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_24EC0B7D8()
{
  v1 = *v0;
  v2 = 0x656D614E656D6167;
  v3 = 0x6964654D656D6167;
  v4 = 0x6D726F6674616C70;
  if (v1 != 3)
  {
    v4 = 0x756F72676B636162;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E6F6349656D6167;
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

uint64_t sub_24EC0B880@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EC0C384(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EC0B8A8(uint64_t a1)
{
  v2 = sub_24EC0BB08();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC0B8E4(uint64_t a1)
{
  v2 = sub_24EC0BB08();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EC0B988()
{
  v1 = 0x6D726F6674616C70;
  v2 = 0x6152746365707361;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x736D657469;
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

uint64_t sub_24EC0BA0C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EC0C548(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EC0BA34(uint64_t a1)
{
  v2 = sub_24EC0C01C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC0BA70(uint64_t a1)
{
  v2 = sub_24EC0C01C();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_24EC0BAAC(uint64_t a1@<X8>, void *a2@<X0>)
{
  v7 = sub_24EC0BCE8(a2);
  if (!v2)
  {
    *a1 = v4;
    *(a1 + 8) = v5;
    *(a1 + 16) = v7;
    *(a1 + 24) = v6 & 1;
  }
}

unint64_t sub_24EC0BB08()
{
  result = qword_27F22B6D0;
  if (!qword_27F22B6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B6D0);
  }

  return result;
}

uint64_t sub_24EC0BB5C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC0BBC0(uint64_t a1)
{
  v2 = type metadata accessor for GameDetailsMediaPreviewPageIntent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC0BC1C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F214448, &qword_24F93CBF0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EC0BC94()
{
  result = qword_27F22B6E8;
  if (!qword_27F22B6E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B6E8);
  }

  return result;
}

double sub_24EC0BCE8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B6F0, &unk_24F98C340);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC0C01C();
  sub_24F92D108();
  type metadata accessor for MediaPlatform();
  HIBYTE(v8) = 0;
  sub_24EC0C10C(&qword_27F214028, type metadata accessor for MediaPlatform, &protocol conformance descriptor for MediaPlatform);
  sub_24F92CC68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227498, &qword_24F97EA20);
  HIBYTE(v8) = 1;
  sub_24EC0C070(&qword_27F2274A0, &qword_27F2274A8, &unk_24F93C198, MEMORY[0x277D83978]);
  sub_24F92CC68();
  HIBYTE(v8) = 2;
  sub_24E620E90();
  sub_24F92CC68();
  v7 = v9;
  LOBYTE(v9) = 3;
  sub_24F92CC38();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_24EC0C01C()
{
  result = qword_27F22B6F8;
  if (!qword_27F22B6F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B6F8);
  }

  return result;
}

uint64_t sub_24EC0C070(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F227498, &qword_24F97EA20);
    sub_24EC0C10C(a2, type metadata accessor for GameDetailsMediaItem, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EC0C10C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EC0C178()
{
  result = qword_27F22B718;
  if (!qword_27F22B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B718);
  }

  return result;
}

unint64_t sub_24EC0C1D0()
{
  result = qword_27F22B720;
  if (!qword_27F22B720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B720);
  }

  return result;
}

unint64_t sub_24EC0C228()
{
  result = qword_27F22B728;
  if (!qword_27F22B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B728);
  }

  return result;
}

unint64_t sub_24EC0C280()
{
  result = qword_27F22B730;
  if (!qword_27F22B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B730);
  }

  return result;
}

unint64_t sub_24EC0C2D8()
{
  result = qword_27F22B738;
  if (!qword_27F22B738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B738);
  }

  return result;
}

unint64_t sub_24EC0C330()
{
  result = qword_27F22B740;
  if (!qword_27F22B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B740);
  }

  return result;
}

uint64_t sub_24EC0C384(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6964654D656D6167 && a2 == 0xE900000000000061 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D726F6674616C70 && a2 == 0xE900000000000073 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEA0000000000646ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EC0C548(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D726F6674616C70 && a2 == 0xE800000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6152746365707361 && a2 == 0xEB000000006F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA45210 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t VideoViewManager.__allocating_init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C570, "Ю ");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v6 - v1;
  v3 = sub_24F929158();
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for VideoViewManager(0);
  v4 = swift_allocObject();
  VideoViewManager.init(networkInquiry:metricsPipeline:)(v6, v2);
  return v4;
}

uint64_t VideoViewManager.__allocating_init(networkInquiry:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  VideoViewManager.init(networkInquiry:metricsPipeline:)(a1, a2);
  return v4;
}

uint64_t type metadata accessor for VideoViewManager(uint64_t a1)
{
  result = qword_27F22B770;
  if (!qword_27F22B770)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t VideoViewManager.init(networkInquiry:metricsPipeline:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F92AAB8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v5, qword_27F39C380);
  (*(v6 + 16))(v8, v9, v5);
  sub_24F92AAD8();
  *(v2 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_videoViews) = sub_24E60E4E0(MEMORY[0x277D84F90]);
  sub_24E60169C(a1, v2 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_networkInquiry, &qword_27F22B760, &unk_24F99B6F0);
  sub_24E60169C(a2, v2 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_metricsPipeline, &qword_27F21C570, "Ю ");
  v10 = [objc_opt_self() defaultCenter];

  v11 = sub_24F92B098();
  [v10 addObserver:v2 selector:sel_videoDecodersUnavailable_ name:v11 object:0];

  sub_24E601704(a2, &qword_27F21C570, "Ю ");
  sub_24E601704(a1, &qword_27F22B760, &unk_24F99B6F0);
  return v2;
}

uint64_t VideoViewManager.deinit()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = sub_24F92B098();
  [v1 removeObserver:v0 name:v2 object:0];

  v3 = OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_logger;
  v4 = sub_24F92AAE8();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_networkInquiry, &qword_27F22B760, &unk_24F99B6F0);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_metricsPipeline, &qword_27F21C570, "Ю ");
  return v0;
}

uint64_t VideoViewManager.__deallocating_deinit()
{
  VideoViewManager.deinit();

  return swift_deallocClassInstance();
}

id sub_24EC0CC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v69 = a8;
  v70 = a7;
  v66 = a5;
  v64 = a4;
  v68 = a3;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21EB88, &unk_24F95FAF0);
  MEMORY[0x28223BE20](v12 - 8);
  v67 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v65 = &v60 - v15;
  v16 = type metadata accessor for VideoConfiguration(0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v60 - v20;
  v22 = sub_24F91F4A8();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v60 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v60 - v27;
  sub_24E60169C(a1, &v72, &qword_27F235830, &qword_24F93B8C0);
  if (!*(&v73 + 1))
  {
    v29 = &qword_27F235830;
    v30 = &qword_24F93B8C0;
    v31 = &v72;
    goto LABEL_5;
  }

  v75[0] = v72;
  v75[1] = v73;
  v76 = v74;
  sub_24E60169C(a2, v21, &qword_27F228530, &unk_24F93C6E0);
  if ((*(v23 + 48))(v21, 1, v22) != 1)
  {
    v33 = v28;
    v34 = a6;
    v35 = v33;
    (*(v23 + 32))();
    v36 = OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_videoViews;
    swift_beginAccess();
    v37 = *(v8 + v36);
    v38 = *(v37 + 16);
    v63 = v8;
    v62 = v22;
    if (v38)
    {

      v39 = sub_24E76D934(v75);
      if (v40)
      {
        v41 = *(*(v37 + 56) + 16 * v39);

        v42 = swift_dynamicCastUnknownClass();
        if (v42)
        {
          v32 = v42;
          sub_24EC0D864(v68, v18);
          v43 = v69;
          v44 = v70;
          (*(v69 + 120))(v18, v70, v69);
          v45 = *(v43 + 32);

          v45(v46, v44, v43);
          (*(v23 + 8))(v35, v62);
LABEL_13:
          sub_24E6585F8(v75);
          return v32;
        }

        v8 = v63;
        v22 = v62;
      }

      else
      {

        v8 = v63;
      }
    }

    v60 = v23;
    sub_24E65864C(v75, &v72);
    v47 = *(v23 + 16);
    v61 = v35;
    v47(v25, v35, v22);
    v48 = v8;
    v49 = v18;
    sub_24EC0D864(v68, v18);
    v50 = v65;
    sub_24E60169C(v64, v65, &qword_27F21EB88, &unk_24F95FAF0);
    v51 = v67;
    sub_24E60169C(v66, v67, &qword_27F21EB88, &unk_24F95FAF0);
    sub_24E60169C(v48 + OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_networkInquiry, v71, &qword_27F22B760, &unk_24F99B6F0);
    v52 = v69;
    v53 = v70;
    v54 = *(v69 + 16);

    v55 = v25;
    v56 = v63;
    v57 = v54(&v72, v55, v49, v50, v51, v71, v34, v53, v52);
    swift_beginAccess();
    v32 = v57;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v71[0] = *(v56 + v36);
    *(v56 + v36) = 0x8000000000000000;
    sub_24EC0D8C8(v32, v75, isUniquelyReferenced_nonNull_native, v71, v53, v52);
    *(v56 + v36) = v71[0];
    swift_endAccess();
    (*(v60 + 8))(v61, v62);
    goto LABEL_13;
  }

  sub_24E6585F8(v75);
  v29 = &qword_27F228530;
  v30 = &unk_24F93C6E0;
  v31 = v21;
LABEL_5:
  sub_24E601704(v31, v29, v30);
  return 0;
}

void sub_24EC0D1D0()
{
  v1 = v0;
  v2 = sub_24F91EB48();
  if (!v2)
  {
    goto LABEL_13;
  }

  v3 = v2;
  *&v39[0] = 0x6B63616279616C50;
  *(&v39[0] + 1) = 0xEA00000000006449;
  sub_24F92C7F8();
  if (!*(v3 + 16) || (v4 = sub_24E76D934(v40), (v5 & 1) == 0))
  {

    sub_24E6585F8(v40);
LABEL_13:
    v36 = 0u;
    v37 = 0u;
    goto LABEL_14;
  }

  sub_24E643A9C(*(v3 + 56) + 32 * v4, &v36);
  sub_24E6585F8(v40);

  if (!*(&v37 + 1))
  {
LABEL_14:
    sub_24E601704(&v36, &qword_27F2129B0, &unk_24F945320);
    return;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return;
  }

  v7 = v40[0];
  v6 = v40[1];
  v8 = sub_24F91EB48();
  if (!v8)
  {

    goto LABEL_13;
  }

  v9 = v8;
  strcpy(v38, "videoViewError");
  v38[15] = -18;
  sub_24F92C7F8();
  if (!*(v9 + 16) || (v10 = sub_24E76D934(v40), (v11 & 1) == 0))
  {

    sub_24E6585F8(v40);
    v36 = 0u;
    v37 = 0u;
    goto LABEL_17;
  }

  sub_24E643A9C(*(v9 + 56) + 32 * v10, &v36);
  sub_24E6585F8(v40);

  if (!*(&v37 + 1))
  {
LABEL_17:

    goto LABEL_14;
  }

  sub_24E612B0C(&v36, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A070;
  sub_24F9283A8();
  v12 = OBJC_IVAR____TtC12GameStoreKit16VideoViewManager_videoViews;
  swift_beginAccess();
  v13 = *(*(v1 + v12) + 16);
  v41 = MEMORY[0x277D83B88];
  v40[0] = v13;
  sub_24F928438();
  sub_24E601704(v40, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  sub_24E643A9C(v39, v40);
  sub_24F928438();
  sub_24E601704(v40, &qword_27F2129B0, &unk_24F945320);
  sub_24F9283A8();
  v14 = *(v1 + v12);
  *&v36 = v7;
  *(&v36 + 1) = v6;

  sub_24F92C7F8();
  if (*(v14 + 16))
  {
    sub_24E76D934(v40);
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  sub_24E6585F8(v40);

  v41 = MEMORY[0x277D839B0];
  LOBYTE(v40[0]) = v16 & 1;
  sub_24F928438();
  sub_24E601704(v40, &qword_27F2129B0, &unk_24F945320);
  sub_24F92AAE8();
  sub_24F92A5A8();

  v17 = *(v1 + v12);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(v1 + v12) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v35 = *(v1 + v12);

  v25 = 0;
  while (v23)
  {
LABEL_29:
    v27 = *(v35 + 56) + ((v25 << 10) | (16 * __clz(__rbit64(v23))));
    v28 = *v27;
    v29 = *(v27 + 8);
    ObjectType = swift_getObjectType();
    v31 = *(v29 + 8);
    v32 = *(v31 + 8);
    v33 = v28;
    v32(v40, ObjectType, v31);

    sub_24F92C7F8();
    v34 = MEMORY[0x253052150](v40, &v36);
    sub_24E6585F8(&v36);
    sub_24E6585F8(v40);
    if ((v34 & 1) == 0)
    {
      (*(v29 + 144))(1, ObjectType, v29);
    }

    v23 &= v23 - 1;
  }

  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {

      __swift_destroy_boxed_opaque_existential_1(v39);
      return;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      v25 = v26;
      goto LABEL_29;
    }
  }

  __break(1u);
}

uint64_t sub_24EC0D864(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VideoConfiguration(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_24EC0D8C8(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = *a4;
  v13 = sub_24E76D934(a2);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_24E8A2AB0(v16, a3 & 1);
      v22 = sub_24E76D934(a2);
      if ((v17 & 1) != (v23 & 1))
      {
LABEL_17:
        sub_24F92CF88();
        __break(1u);
        return;
      }

      v13 = v22;
      v19 = *a4;
      if (v17)
      {
        goto LABEL_8;
      }

      goto LABEL_13;
    }

    sub_24E8B3164();
  }

  v19 = *a4;
  if ((v17 & 1) == 0)
  {
LABEL_13:
    sub_24E65864C(a2, v31);
    v19[(v13 >> 6) + 8] |= 1 << v13;
    v24 = v19[6] + 40 * v13;
    v25 = v32;
    v26 = v31[1];
    *v24 = v31[0];
    *(v24 + 16) = v26;
    *(v24 + 32) = v25;
    v27 = (v19[7] + 16 * v13);
    *v27 = a1;
    v27[1] = a6;
    v28 = v19[2];
    v29 = __OFADD__(v28, 1);
    v30 = v28 + 1;
    if (!v29)
    {
      v19[2] = v30;
      return;
    }

    goto LABEL_16;
  }

LABEL_8:
  v20 = v19[7] + 16 * v13;
  v21 = *v20;
  *v20 = a1;
  *(v20 + 8) = a6;
}

void sub_24EC0DA60(uint64_t a1)
{
  sub_24F92AAE8();
  if (v1 <= 0x3F)
  {
    sub_24E78F45C(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EC0DBF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v167 = a3;
  v168 = a2;
  v159 = a1;
  v156 = sub_24F927D88();
  v155 = *(v156 - 8);
  MEMORY[0x28223BE20](v156);
  v152 = &v136 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = sub_24F927DC8();
  v153 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v151 = &v136 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = sub_24F927DE8();
  v150 = *(v166 - 8);
  MEMORY[0x28223BE20](v166);
  v146 = &v136 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v148 = &v136 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v8 - 8);
  v158 = &v136 - v9;
  v162 = sub_24F91F6B8();
  v161 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v160 = &v136 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v11 - 8);
  v157 = &v136 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v143 = &v136 - v14;
  MEMORY[0x28223BE20](v15);
  v165 = &v136 - v16;
  MEMORY[0x28223BE20](v17);
  v170 = (&v136 - v18);
  v19 = sub_24F92A6B8();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v136 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_24F928AD8();
  v177 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v149 = &v136 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v147 = &v136 - v26;
  MEMORY[0x28223BE20](v27);
  v145 = &v136 - v28;
  MEMORY[0x28223BE20](v29);
  v144 = &v136 - v30;
  MEMORY[0x28223BE20](v31);
  v163 = &v136 - v32;
  MEMORY[0x28223BE20](v33);
  v164 = &v136 - v34;
  MEMORY[0x28223BE20](v35);
  v37 = &v136 - v36;
  MEMORY[0x28223BE20](v38);
  v40 = &v136 - v39;
  MEMORY[0x28223BE20](v41);
  v43 = &v136 - v42;
  v194 = MEMORY[0x277D84F90];
  v180 = 0;
  v179 = 0u;
  aBlock = 0u;
  sub_24F928A98();
  sub_24F92A678();
  v138 = type metadata accessor for FlowBackAction(0);
  v44 = swift_allocObject();
  sub_24F928A98();
  v139 = v40;
  sub_24F92A668();
  v45 = *(v20 + 32);
  v140 = v22;
  v46 = v22;
  v47 = v162;
  v142 = v19;
  v141 = v20 + 32;
  v45(v44 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v46, v19);
  sub_24E60169C(&aBlock, &v191, &qword_27F235830, &qword_24F93B8C0);
  v49 = (v177 + 16);
  v48 = *(v177 + 16);
  v169 = v23;
  v50 = v23;
  v51 = v161;
  v176 = v48;
  v48(v37, v43, v50);
  v52 = sub_24F929608();
  v53 = *(v52 - 8);
  v54 = *(v53 + 56);
  v175 = v52;
  v174 = v54;
  v173 = v53 + 56;
  (v54)(v170, 1, 1);
  v55 = (v44 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v55 = 0u;
  v55[1] = 0u;
  sub_24E60169C(&v191, &v185, &qword_27F235830, &qword_24F93B8C0);
  v56 = v160;
  if (*(&v186 + 1))
  {
    v188 = v185;
    v189 = v186;
    v190 = v187;
  }

  else
  {
    sub_24F91F6A8();
    v57 = v49;
    v58 = v37;
    v59 = v44;
    v60 = v45;
    v61 = sub_24F91F668();
    v63 = v62;
    (*(v51 + 8))(v56, v47);
    *&v184[0] = v61;
    v45 = v60;
    v44 = v59;
    v37 = v58;
    v49 = v57;
    *(&v184[0] + 1) = v63;
    sub_24F92C7F8();
    sub_24E601704(&v185, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v191, &qword_27F235830, &qword_24F93B8C0);
  v64 = v177;
  v65 = *(v177 + 8);
  v66 = v169;
  v172 = v177 + 8;
  v171 = v65;
  v65(v43, v169);
  sub_24E601704(&aBlock, &qword_27F235830, &qword_24F93B8C0);
  v67 = v44 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v68 = v189;
  *v67 = v188;
  *(v67 + 16) = v68;
  *(v67 + 32) = v190;
  sub_24E65E0D4(v170, v44 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  v70 = *(v64 + 32);
  v69 = v64 + 32;
  v170 = v70;
  v70(v44 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v37, v66);

  MEMORY[0x253050F00](v71);
  if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  v72 = v159;
  v73 = *(v159 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab);
  v74 = v158;
  v137 = v45;
  if (v73 <= 3)
  {
    if (v73 > 1)
    {
      if (v73 == 2)
      {
        v75 = 0xE500000000000000;
        v76 = 0x7961646F74;
      }

      else
      {
        v75 = 0xE400000000000000;
        v76 = 1936748641;
      }
    }

    else if (v73)
    {
      v75 = 0xE800000000000000;
      v76 = 0x64657463656C6573;
    }

    else
    {
      v75 = 0xE500000000000000;
      v76 = 0x7265666E69;
    }
  }

  else if (v73 <= 5)
  {
    if (v73 == 4)
    {
      v75 = 0xE500000000000000;
      v76 = 0x73656D6167;
    }

    else
    {
      v75 = 0xE600000000000000;
      v76 = 0x686372616573;
    }
  }

  else if (v73 == 6)
  {
    v75 = 0xE700000000000000;
    v76 = 0x73657461647075;
  }

  else if (v73 == 7)
  {
    v75 = 0xE600000000000000;
    v76 = 0x656461637261;
  }

  else
  {
    v75 = 0xE700000000000000;
    v76 = 0x676E6964616F6CLL;
  }

  *&v191 = v76;
  *(&v191 + 1) = v75;
  sub_24F92C7F8();
  v77 = sub_24F91F4A8();
  (*(*(v77 - 8) + 56))(v74, 1, 1, v77);
  memset(v184, 0, sizeof(v184));
  v78 = v164;
  sub_24F928A98();
  v79 = sub_24F929D28();
  v81 = v80;
  type metadata accessor for FlowAction(0);
  v82 = swift_allocObject();
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
  v83 = v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
  *v83 = 0u;
  *(v83 + 16) = 0u;
  *(v83 + 32) = 0;
  v84 = (v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
  *v84 = 0;
  v84[1] = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 8;
  sub_24E60169C(v74, v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
  v85 = (v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
  *v85 = 0;
  v85[1] = 0;
  v86 = v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
  *v86 = xmmword_24F9406F0;
  *(v86 + 24) = 0;
  *(v86 + 32) = 0;
  *(v86 + 16) = 0;
  *(v86 + 40) = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
  *(v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
  v87 = (v82 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
  *v87 = v79;
  v87[1] = v81;
  sub_24E60169C(&aBlock, &v191, &qword_27F235830, &qword_24F93B8C0);
  v176(v163, v78, v66);
  v174(v165, 1, 1, v175);
  v88 = (v82 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v88 = 0u;
  v88[1] = 0u;
  sub_24E60169C(&v191, &v185, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v186 + 1))
  {
    v188 = v185;
    v189 = v186;
    v190 = v187;
  }

  else
  {
    v89 = v160;
    sub_24F91F6A8();
    v90 = sub_24F91F668();
    v92 = v91;
    v93 = v89;
    v74 = v158;
    (*(v161 + 8))(v93, v162);
    v182 = v90;
    v183 = v92;
    sub_24F92C7F8();
    sub_24E601704(&v185, &qword_27F235830, &qword_24F93B8C0);
  }

  v158 = v49;
  sub_24E601704(&v191, &qword_27F235830, &qword_24F93B8C0);
  v94 = v82 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v95 = v189;
  *v94 = v188;
  *(v94 + 16) = v95;
  *(v94 + 32) = v190;
  sub_24E65E0D4(v165, v82 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v82 + 16) = 0u;
  *(v82 + 32) = 0u;
  v170(v82 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v163, v66);

  FlowAction.setPageData(_:)(v184);

  v171(v164, v66);
  sub_24E601704(v184, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v74, &qword_27F228530, &unk_24F93C6E0);
  sub_24E601704(&aBlock, &qword_27F235830, &qword_24F93B8C0);

  MEMORY[0x253050F00](v96);
  if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_24F92B5E8();
  }

  sub_24F92B638();
  if (*(v72 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_popToRoot) == 1)
  {
    v180 = 0;
    v179 = 0u;
    aBlock = 0u;
    v97 = v144;
    sub_24F928A98();
    sub_24F92A688();
    v98 = swift_allocObject();
    sub_24F928A98();
    v99 = v140;
    sub_24F92A668();
    v137(v98 + OBJC_IVAR____TtC12GameStoreKit14FlowBackAction_base, v99, v142);
    sub_24E60169C(&aBlock, &v191, &qword_27F235830, &qword_24F93B8C0);
    v176(v145, v97, v66);
    v100 = v143;
    v174(v143, 1, 1, v175);
    v101 = (v98 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v101 = 0u;
    v101[1] = 0u;
    sub_24E60169C(&v191, &v185, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v186 + 1))
    {
      v188 = v185;
      v189 = v186;
      v190 = v187;
    }

    else
    {
      v102 = v160;
      sub_24F91F6A8();
      v103 = sub_24F91F668();
      v105 = v104;
      (*(v161 + 8))(v102, v162);
      *&v184[0] = v103;
      *(&v184[0] + 1) = v105;
      sub_24F92C7F8();
      sub_24E601704(&v185, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(&v191, &qword_27F235830, &qword_24F93B8C0);
    v171(v144, v66);
    sub_24E601704(&aBlock, &qword_27F235830, &qword_24F93B8C0);
    v106 = v98 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v107 = v189;
    *v106 = v188;
    *(v106 + 16) = v107;
    *(v106 + 32) = v190;
    sub_24E65E0D4(v100, v98 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    *(v98 + 16) = 0u;
    *(v98 + 32) = 0u;
    v170(v98 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v145, v66);

    MEMORY[0x253050F00](v108);
    v72 = v159;
    if (*((v194 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v194 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_24F92B5E8();
    }

    sub_24F92B638();
  }

  v165 = v44;
  v177 = v69;
  v164 = v194;
  sub_24E74EC40();
  v109 = sub_24F92BEF8();
  v110 = v146;
  sub_24F927DD8();
  v111 = v148;
  sub_24F927E58();
  v163 = *(v150 + 8);
  (v163)(v110, v166);
  v112 = swift_allocObject();
  v112[2] = v167;
  v112[3] = v72;
  v112[4] = v168;
  v180 = sub_24EC0F8AC;
  v181 = v112;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v179 = sub_24EAF8248;
  *(&v179 + 1) = &block_descriptor_60;
  v113 = _Block_copy(&aBlock);

  v114 = v151;
  sub_24F927DA8();
  *&aBlock = MEMORY[0x277D84F90];
  sub_24EC0F8D0(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E8582A8();
  v115 = v152;
  v116 = v156;
  sub_24F92C6A8();
  MEMORY[0x253051820](v111, v114, v115, v113);
  _Block_release(v113);

  v117 = v115;
  v118 = v169;
  (*(v155 + 8))(v117, v116);
  (*(v153 + 8))(v114, v154);
  (v163)(v111, v166);
  v119 = v147;
  sub_24F928A98();
  v120 = type metadata accessor for CompoundAction(0);
  v121 = swift_allocObject();
  *(v121 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = v164;
  v180 = 0;
  v179 = 0u;
  aBlock = 0u;
  v122 = v149;
  v176(v149, v119, v118);
  v123 = v157;
  v174(v157, 1, 1, v175);
  v124 = (v121 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v124 = 0u;
  v124[1] = 0u;
  sub_24E60169C(&aBlock, &v188, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v189 + 1))
  {
    v191 = v188;
    v192 = v189;
    v193 = v190;
  }

  else
  {
    v125 = v160;
    sub_24F91F6A8();
    v126 = sub_24F91F668();
    v128 = v127;
    v129 = v125;
    v118 = v169;
    (*(v161 + 8))(v129, v162);
    *&v185 = v126;
    *(&v185 + 1) = v128;
    sub_24F92C7F8();
    sub_24E601704(&v188, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&aBlock, &qword_27F235830, &qword_24F93B8C0);
  v171(v119, v118);
  v130 = v121 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v131 = v192;
  *v130 = v191;
  *(v130 + 16) = v131;
  *(v130 + 32) = v193;
  sub_24E65E0D4(v123, v121 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v121 + 16) = 0u;
  *(v121 + 32) = 0u;
  v170(v121 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v122, v118);
  *(&v179 + 1) = v120;
  v180 = sub_24EC0F8D0(&qword_27F221050, type metadata accessor for CompoundAction, &protocol conformance descriptor for Action);
  *&aBlock = v121;
  type metadata accessor for TabChangeActionImplementation(0, v167, v132, v133);

  swift_getWitnessTable();
  v134 = sub_24F1489C4(&aBlock, v168);

  __swift_destroy_boxed_opaque_existential_1(&aBlock);
  return v134;
}

uint64_t sub_24EC0F3EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v37 = a2;
  v5 = sub_24F91F6B8();
  v35 = *(v5 - 8);
  v36 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v33 - v9;
  v11 = sub_24F928AD8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v33 - v16;
  v18 = *(a1 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions);

  sub_24F928A98();
  v19 = type metadata accessor for CompoundAction(0);
  v20 = swift_allocObject();
  *(v20 + OBJC_IVAR____TtC12GameStoreKit14CompoundAction_actions) = v18;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  (*(v12 + 16))(v14, v17, v11);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v10, 1, 1, v21);
  v22 = (v20 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E60169C(&v46, &v40, &qword_27F235830, &qword_24F93B8C0);
  if (*(&v41 + 1))
  {
    v43 = v40;
    v44 = v41;
    v45 = v42;
  }

  else
  {
    sub_24F91F6A8();
    v34 = v14;
    v23 = v10;
    v24 = a3;
    v25 = sub_24F91F668();
    v27 = v26;
    (*(v35 + 8))(v7, v36);
    v38 = v25;
    v39 = v27;
    a3 = v24;
    v10 = v23;
    v14 = v34;
    sub_24F92C7F8();
    sub_24E601704(&v40, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(&v46, &qword_27F235830, &qword_24F93B8C0);
  (*(v12 + 8))(v17, v11);
  v28 = v20 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  v29 = v44;
  *v28 = v43;
  *(v28 + 16) = v29;
  *(v28 + 32) = v45;
  sub_24E65E0D4(v10, v20 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  *(v20 + 16) = 0u;
  *(v20 + 32) = 0u;
  (*(v12 + 32))(v20 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v14, v11);
  *(&v47 + 1) = v19;
  v48 = sub_24EC0F8D0(&qword_27F221050, type metadata accessor for CompoundAction, &protocol conformance descriptor for Action);
  *&v46 = v20;
  type metadata accessor for TabChangeActionImplementation(0, a3, v30, v31);

  swift_getWitnessTable();
  sub_24F1489C4(&v46, v37);

  return __swift_destroy_boxed_opaque_existential_1(&v46);
}

uint64_t sub_24EC0F86C()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC0F8D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TabChangeAction.__allocating_init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(_BYTE *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(a1, a2, v7, a4, a5);
  return v10;
}

void *TabChangeAction.init(navigationTab:actions:popToRoot:presentationStyle:actionMetrics:)(_BYTE *a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v45 = a4;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v44 - v16;
  v18 = sub_24F928AD8();
  MEMORY[0x28223BE20](v18);
  v22 = &v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) = *a1;
  v23 = MEMORY[0x277D84F90];
  if (a2)
  {
    v23 = a2;
  }

  *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions) = v23;
  *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_popToRoot) = a3;
  v24 = v19;
  v56 = 0;
  memset(v55, 0, sizeof(v55));
  v46 = v20;
  v25 = *(v20 + 16);
  v44 = a5;
  v25(v22, a5, v19);
  v26 = sub_24F929608();
  (*(*(v26 - 8) + 56))(v17, 1, 1, v26);
  v27 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v27 = 0u;
  v27[1] = 0u;
  sub_24E65E064(v55, &v49);
  if (*(&v50 + 1))
  {
    v52 = v49;
    v53 = v50;
    v54 = v51;
  }

  else
  {
    sub_24F91F6A8();
    v28 = sub_24F91F668();
    v29 = v24;
    v31 = v30;
    (*(v12 + 8))(v14, v11);
    v47 = v28;
    v48 = v31;
    v24 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v49, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v55, &qword_27F235830, &qword_24F93B8C0);
  v32 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v32 + 4) = v54;
  v33 = v53;
  *v32 = v52;
  *(v32 + 1) = v33;
  sub_24E65E0D4(v17, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v6[2] = 0;
  v6[3] = 0;
  v34 = v45;
  v35 = v46;
  v6[4] = 0;
  v6[5] = v34;
  (*(v35 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v22, v24);
  if (*(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) < 2u && *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab))
  {

LABEL_10:
    (*(v35 + 8))(v44, v24);

    return v6;
  }

  v36 = sub_24F92CE08();

  if (v36)
  {
    goto LABEL_10;
  }

  v38 = *(v6 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions);
  if (!(v38 >> 62))
  {
    v39 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_13;
    }

LABEL_23:

LABEL_24:
    (*(v35 + 8))(v44, v24);
    return v6;
  }

  result = sub_24F92C738();
  v39 = result;
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_13:
  if (v39 >= 1)
  {
    v45 = v24;

    for (i = 0; i != v39; ++i)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        MEMORY[0x253052270](i, v38);
      }

      else
      {
      }

      type metadata accessor for FlowAction(0);
      v41 = swift_dynamicCastClass();
      if (v41)
      {
        v42 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
        v43 = v41;
        swift_beginAccess();
        *(v43 + v42) = 1;
      }
    }

    v24 = v45;
    v35 = v46;
    goto LABEL_24;
  }

  __break(1u);
  return result;
}

uint64_t TabChangeAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t TabChangeAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t sub_24EC10204(uint64_t a1, char *a2)
{
  v82 = a2;
  v70 = sub_24F91F6B8();
  v69 = *(v70 - 8);
  MEMORY[0x28223BE20](v70);
  v68 = &v68 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F9285B8();
  v79 = *(v4 - 8);
  v80 = v4;
  MEMORY[0x28223BE20](v4);
  v71 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F223CE8, &unk_24F983FE0);
  MEMORY[0x28223BE20](v6 - 8);
  v73 = &v68 - v7;
  v78 = sub_24F928AD8();
  v81 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v74 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v85 = &v68 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v68 - v12;
  v14 = sub_24F928388();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v72 = &v68 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v68 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v68 - v21;
  v23 = sub_24F92AC28();
  v24 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v26 = &v68 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = a1;
  sub_24F928398();
  sub_24F9282B8();
  v27 = *(v15 + 8);
  v77 = v14;
  v76 = v15 + 8;
  v75 = v27;
  v27(v22, v14);
  if ((*(v24 + 48))(v13, 1, v23) == 1)
  {
    sub_24E601704(v13, &qword_27F2213B0, &qword_24F965EC0);
    v86 = MEMORY[0x277D84F90];
    v28 = v82;
  }

  else
  {
    (*(v24 + 32))(v26, v13, v23);
    v29 = type metadata accessor for Action(0);
    MEMORY[0x28223BE20](v29);
    v28 = v82;
    v30 = v83;
    *(&v68 - 2) = v31;
    *(&v68 - 1) = v28;
    v86 = sub_24F92ABB8();
    v83 = v30;
    (*(v24 + 8))(v26, v23);
  }

  sub_24F928398();
  (*(v79 + 16))(v71, v28, v80);
  v32 = v73;
  v33 = v78;
  sub_24F929548();
  v34 = v81;
  v35 = *(v81 + 48);
  if (v35(v32, 1, v33) == 1)
  {
    sub_24F928A98();
    if (v35(v32, 1, v33) != 1)
    {
      sub_24E601704(v32, &qword_27F223CE8, &unk_24F983FE0);
    }
  }

  else
  {
    (*(v34 + 32))(v85, v32, v33);
  }

  sub_24F928398();
  sub_24E9EF1BC();
  sub_24F928208();
  v36 = v19;
  v37 = v77;
  v38 = v75;
  v75(v36, v77);
  v39 = v94;
  v40 = v72;
  sub_24F928398();
  v41 = sub_24F928278();
  v38(v40, v37);
  v42 = *(v34 + 16);
  v43 = v74;
  v42(v74, v85, v33);
  type metadata accessor for TabChangeAction(0);
  v44 = swift_allocObject();
  *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) = v39;
  v45 = v86;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_actions) = v86;
  *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_popToRoot) = v41 & 1;
  v93 = 0;
  memset(v92, 0, sizeof(v92));
  v42((v44 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics), v43, v33);
  v46 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v47 = sub_24F929608();
  (*(*(v47 - 8) + 56))(v44 + v46, 1, 1, v47);
  v48 = (v44 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v48 = 0u;
  v48[1] = 0u;
  v49 = v44 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v92, &v89);
  if (*(&v90 + 1))
  {
    v50 = v90;
    *v49 = v89;
    *(v49 + 16) = v50;
    *(v49 + 32) = v91;
  }

  else
  {
    v51 = v68;
    sub_24F91F6A8();
    v52 = sub_24F91F668();
    v54 = v53;
    (*(v69 + 8))(v51, v70);
    v87 = v52;
    v88 = v54;
    sub_24F92C7F8();
    sub_24E601704(&v89, &qword_27F235830, &qword_24F93B8C0);
  }

  sub_24E601704(v92, &qword_27F235830, &qword_24F93B8C0);
  *(v44 + 16) = 0u;
  *(v44 + 32) = 0u;
  v55 = v81;
  v56 = v85;
  if (*(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) <= 3u)
  {
    v57 = v82;
    if (*(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab) <= 1u && *(v44 + OBJC_IVAR____TtC12GameStoreKit15TabChangeAction_navigationTab))
    {

LABEL_33:
      v75(v84, v77);
      v66 = *(v55 + 8);
      v67 = v78;
      v66(v43, v78);
      v66(v56, v67);
      (*(v79 + 8))(v57, v80);
      return v44;
    }
  }

  else
  {
    v57 = v82;
  }

  v58 = sub_24F92CE08();

  if (v58)
  {

    v56 = v85;
    goto LABEL_33;
  }

  if (!(v45 >> 62))
  {
    v60 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v56 = v85;
    if (v60)
    {
      goto LABEL_22;
    }

LABEL_32:

    goto LABEL_33;
  }

  result = sub_24F92C738();
  v60 = result;
  v56 = v85;
  if (!result)
  {
    goto LABEL_32;
  }

LABEL_22:
  if (v60 >= 1)
  {
    v61 = v45 & 0xC000000000000001;

    for (i = 0; i != v60; ++i)
    {
      if (v61)
      {
        MEMORY[0x253052270](i, v45);
      }

      else
      {
      }

      type metadata accessor for FlowAction(0);
      v63 = swift_dynamicCastClass();
      if (v63)
      {
        v64 = OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior;
        v65 = v63;
        swift_beginAccess();
        *(v65 + v64) = 1;
        v45 = v86;
      }
    }

    v57 = v82;
    v55 = v81;
    v43 = v74;
    v56 = v85;
    goto LABEL_33;
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for TabChangeAction(uint64_t a1)
{
  result = qword_27F22B808;
  if (!qword_27F22B808)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AdProcessingPipelineProxy.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  return result;
}

uint64_t AdProcessingPipelineProxy.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  return result;
}

uint64_t sub_24EC10EC8(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  swift_unknownObjectRetain();

  return swift_unknownObjectRelease();
}

uint64_t sub_24EC10F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (*(v5 + 16))
  {
    v10 = *(v5 + 24);
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 8);
    swift_unknownObjectRetain();
    v13 = v12(a3, a4, ObjectType, v10);
    if (v13)
    {
      v14 = v13[15];
      v15 = v13[16];
      __swift_project_boxed_opaque_existential_1(v13 + 12, v14);
      v16 = (*(v15 + 8))(a1, a2, a5 & 1, v14, v15);
      swift_unknownObjectRelease();

      return v16;
    }

    else
    {
      sub_24EC11078();
      swift_allocError();
      *v19 = 1;
      swift_willThrow();
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_24EC11078();
    swift_allocError();
    *v18 = 0;
    return swift_willThrow();
  }
}

unint64_t sub_24EC11078()
{
  result = qword_27F22B818;
  if (!qword_27F22B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B818);
  }

  return result;
}

uint64_t AdProcessingPipelineProxy.JSAdvertProcessingPipelineProxyError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

uint64_t AdProcessingPipelineProxy.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

unint64_t sub_24EC111B4()
{
  result = qword_27F22B820;
  if (!qword_27F22B820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B820);
  }

  return result;
}

id sub_24EC112D4(uint64_t a1)
{
  v3 = objc_opt_self();
  result = [v3 valueWithNewObjectInContext_];
  if (result)
  {
    v5 = result;
    __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
    v6 = [v3 valueWithObject:sub_24F92CDE8() inContext:a1];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      sub_24F92C328();
      return v5;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_24EC113B4()
{
  result = qword_27F22B828;
  if (!qword_27F22B828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B828);
  }

  return result;
}

double sub_24EC1140C@<D0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B830, &qword_24F98C900);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  v42 = inited;
  *(inited + 32) = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B838, &qword_24F98C908);
  v5 = type metadata accessor for CardLeaderboardView.LayoutMetrics.ChartStyle.BarMark(0);
  v6 = *(*(v5 - 1) + 72);
  v7 = (*(*(v5 - 1) + 80) + 32) & ~*(*(v5 - 1) + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93A400;
  v51 = v7;
  v44 = v8;
  v9 = v8 + v7;
  if (qword_27F210DA8 != -1)
  {
    swift_once();
  }

  v10 = qword_27F39D340;

  v47 = a2;
  v11 = sub_24EFED180(a2 & 1);
  if (qword_27F210DB0 != -1)
  {
    swift_once();
  }

  v12 = sub_24F9234D8();
  v13 = __swift_project_value_buffer(v12, qword_27F39D348);
  *v9 = 0x4046000000000000;
  *(v9 + 8) = v10;
  *(v9 + 16) = xmmword_24F98B440;
  *(v9 + 32) = v11;
  v43 = v13;
  v14 = *(*(v12 - 8) + 16);
  v14(v9 + v5[9]);
  *(v9 + v5[10]) = 0x4042000000000000;
  v15 = (v9 + v5[11]);
  __asm { FMOV            V1.2D, #4.0 }

  v41 = _Q1;
  *v15 = xmmword_24F98C8C0;
  v15[1] = _Q1;
  v21 = qword_27F210DB8;
  v45 = v10;

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_27F39D360;
  v23 = qword_27F210DC0;
  swift_retain_n();
  if (v23 != -1)
  {
    swift_once();
  }

  v24 = qword_27F39D368;
  v25 = qword_27F210DC8;
  swift_retain_n();
  if (v25 != -1)
  {
    swift_once();
  }

  v26 = v9 + v6;
  v40 = __swift_project_value_buffer(v12, qword_27F39D370);
  *v26 = 0x4044000000000000;
  *(v26 + 8) = v22;
  *(v26 + 16) = xmmword_24F98B440;
  *(v26 + 32) = v24;
  v27 = v14;
  v28 = v12;
  (v14)(v9 + v6 + v5[9], v40, v12);
  *(v26 + v5[10]) = 0x4040000000000000;
  v29 = (v9 + v6 + v5[11]);
  *v29 = xmmword_24F98C8C0;
  v29[1] = v41;
  *(v42 + 40) = v44;
  *(v42 + 48) = 0x4010000000000000;
  *(v42 + 56) = 0;
  *(v42 + 64) = 0;
  *(v42 + 72) = 3;
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_24F9479A0;
  v30 = v46 + v51;

  v31 = sub_24EFED180(v47 & 1);
  *v30 = 0x4041000000000000;
  *(v30 + 8) = v45;
  *(v30 + 16) = xmmword_24F98B440;
  *(v30 + 32) = v31;
  v27(v46 + v51 + v5[9], v43, v12);
  *(v30 + v5[10]) = 0x403E000000000000;
  v32 = (v46 + v51 + v5[11]);
  __asm { FMOV            V1.2D, #2.0 }

  v50 = _Q1;
  *v32 = xmmword_24F98C8D0;
  v32[1] = _Q1;
  v34 = v46 + v51 + v6;
  *v34 = 0x403C000000000000;
  *(v34 + 8) = v22;
  *(v34 + 16) = xmmword_24F98B440;
  *(v34 + 32) = v24;
  v27(v34 + v5[9], v40, v28);
  *(v34 + v5[10]) = 0x4038000000000000;
  v35 = (v34 + v5[11]);
  *v35 = xmmword_24F98C8D0;
  v35[1] = v50;
  v36 = v46 + v51 + 2 * v6;
  *v36 = 0x403C000000000000;
  *(v36 + 8) = v22;
  *(v36 + 16) = xmmword_24F98B440;
  *(v36 + 32) = v24;
  v27(v36 + v5[9], v40, v28);
  *(v36 + v5[10]) = 0x4038000000000000;
  v37 = (v36 + v5[11]);
  *v37 = xmmword_24F98C8D0;
  v37[1] = v50;
  *(v42 + 80) = v46;
  *(v42 + 88) = xmmword_24F9475C0;
  *(v42 + 104) = 0x4028000000000000;
  v38 = sub_24E60E620(v42);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B840, &unk_24F98C910);
  swift_arrayDestroy();
  *a3 = v38;
  *(a3 + 8) = 3;
  *(a3 + 16) = 0;
  *(a3 + 17) = a1 & 1;
  *(a3 + 18) = v52;
  *(a3 + 22) = v53;
  *(a3 + 24) = xmmword_24F98C8E0;
  result = 0.05;
  *(a3 + 40) = xmmword_24F98C8F0;
  *(a3 + 56) = 1;
  return result;
}

uint64_t (*Array<A>.visibleItemsTransformer(for:observing:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, uint64_t a2, double a3)
{
  v21 = a1;
  v22 = a2;
  v23 = a3;
  v4 = sub_24EA0D600(sub_24EA11960, v20, a4);
  v19 = v4[2];
  if (v19)
  {
    v5 = type metadata accessor for CompoundScrollObserver();
    v6 = objc_allocWithZone(v5);
    *&v6[OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children] = MEMORY[0x277D84F90];
    v24.receiver = v6;
    v24.super_class = v5;
    result = objc_msgSendSuper2(&v24, sel_init);
    v8 = result;
    v9 = 0;
    v10 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
    v11 = v4 + 5;
    while (v9 < v4[2])
    {
      v12 = *(v11 - 1);
      v13 = *(*v11 + 8);
      swift_beginAccess();
      v14 = *(v8 + v10);
      swift_unknownObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v8 + v10) = v14;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v14 = sub_24E618CD4(0, v14[2] + 1, 1, v14);
        *(v8 + v10) = v14;
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_24E618CD4((v16 > 1), v17 + 1, 1, v14);
      }

      ++v9;
      v14[2] = v17 + 1;
      v18 = &v14[2 * v17];
      v18[4] = v12;
      v18[5] = v13;
      *(v8 + v10) = v14;
      swift_endAccess();
      result = swift_unknownObjectRelease();
      v11 += 2;
      if (v19 == v9)
      {

        *(swift_allocObject() + 16) = v8;
        return sub_24EC11D14;
      }
    }

    __break(1u);
  }

  else
  {

    return 0;
  }

  return result;
}

uint64_t sub_24EC11BA8(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = OBJC_IVAR____TtC12GameStoreKit22CompoundScrollObserver_children;
  result = swift_beginAccess();
  v9 = *(a3 + v7);
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = 32;
    do
    {
      v12 = *(v9 + v11);
      swift_getObjectType();
      v13 = swift_conformsToProtocol2();
      if (v13)
      {
        v14 = v12 == 0;
      }

      else
      {
        v14 = 1;
      }

      if (!v14)
      {
        v15 = v13;
        ObjectType = swift_getObjectType();
        v17 = *(v15 + 8);
        v18 = *(v17 + 56);
        swift_unknownObjectRetain();
        v18(a1, a2, ObjectType, v17, a4, 0.0);
        swift_unknownObjectRelease();
      }

      v11 += 16;
      --v10;
    }

    while (v10);
  }

  return result;
}

uint64_t sub_24EC11CDC()
{

  return swift_deallocObject();
}

uint64_t SearchResultsContentPresenter.__allocating_init()()
{
  v0 = swift_allocObject();
  SearchResultsContentPresenter.init()();
  return v0;
}

void *SearchResultsContentPresenter.init()()
{
  v9 = sub_24F92BEE8();
  v1 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_24F92BE88();
  MEMORY[0x28223BE20](v4);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24E74EC40();
  v8[0] = "sessionProviding";
  v8[1] = v6;
  sub_24F927DA8();
  v10 = MEMORY[0x277D84F90];
  sub_24EC1358C(&qword_27F2394E0, 255, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E602068(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (*(v1 + 104))(v3, *MEMORY[0x277D85260], v9);
  v0[2] = sub_24F92BF38();
  v0[3] = MEMORY[0x277D84F90];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B848, &unk_24F98C958);
  swift_allocObject();
  v0[4] = sub_24F9280D8();
  return v0;
}

void *sub_24EC1200C@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a1;
  v44 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B868, &unk_24F9FAAE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v38 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B870, &qword_24F98CB20);
  MEMORY[0x28223BE20](v8 - 8);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B878, &qword_24F98CB28);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v38 - v12;
  v14 = MEMORY[0x277D21C20];
  sub_24E602068(&qword_27F22B880, &qword_27F22B878, &qword_24F98CB28, MEMORY[0x277D21C20]);
  sub_24E602068(&qword_27F22B888, &qword_27F22B868, &unk_24F9FAAE0, v14);
  v45 = v2;
  sub_24F922E28();
  sub_24EC13538();
  sub_24F9288A8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B898, &unk_24F98CB30);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_24F93DE60;
  v39 = v13;
  v40 = v11;
  v17 = *(v11 + 16);
  v41 = v10;
  v17(v16 + v15, v13, v10);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B860, &unk_24F98CB10);
  sub_24F922DB8();

  v19 = v43;
  if (v43 >> 62)
  {
    v36 = v43;
    v37 = sub_24F92C738();
    v19 = v36;
    v20 = v37;
  }

  else
  {
    v20 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v20)
  {
LABEL_15:
    v34 = v40;
    v33 = v41;
    v35 = v42;
    (*(v40 + 56))(v42, 1, 1, v41);
    sub_24F922D88();

    sub_24EC135D4(v35);
    return (*(v34 + 8))(v39, v33);
  }

  v21 = v19;
  v47 = MEMORY[0x277D84F90];
  result = sub_24F4587FC(0, v20 & ~(v20 >> 63), 0);
  if ((v20 & 0x8000000000000000) == 0)
  {
    v43 = v18;
    v23 = v47;
    v24 = v21;
    if ((v21 & 0xC000000000000001) != 0)
    {
      v25 = 0;
      do
      {
        v26 = v24;
        v46 = MEMORY[0x253052270](v25);
        type metadata accessor for SearchResult(0);
        sub_24EC1358C(&qword_27F22B8A0, 255, type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
        sub_24F928898();
        v47 = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_24F4587FC((v27 > 1), v28 + 1, 1);
          v23 = v47;
        }

        ++v25;
        *(v23 + 16) = v28 + 1;
        (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v28, v7, v45);
        v24 = v26;
      }

      while (v20 != v25);
    }

    else
    {
      v29 = (v21 + 32);
      type metadata accessor for SearchResult(0);
      sub_24EC1358C(&qword_27F22B8A0, 255, type metadata accessor for SearchResult, &protocol conformance descriptor for SearchResult);
      v30 = v38;
      do
      {
        v46 = *v29;

        sub_24F928898();
        v47 = v23;
        v32 = *(v23 + 16);
        v31 = *(v23 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_24F4587FC((v31 > 1), v32 + 1, 1);
          v30 = v38;
          v23 = v47;
        }

        *(v23 + 16) = v32 + 1;
        (*(v3 + 32))(v23 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v32, v30, v45);
        ++v29;
        --v20;
      }

      while (v20);
    }

    goto LABEL_15;
  }

  __break(1u);
  return result;
}

double sub_24EC125B8(uint64_t a1, uint64_t a2)
{
  v5 = sub_24F927D88();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24F927DC8();
  v9 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v11 = v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *(v2 + 16);
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = v2;
  aBlock[4] = sub_24EC1352C;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_16_0;
  v13 = _Block_copy(aBlock);

  sub_24F927DA8();
  v17 = MEMORY[0x277D84F90];
  sub_24EC1358C(&qword_27F222930, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v11, v8, v13);
  _Block_release(v13);
  (*(v6 + 8))(v8, v5);
  (*(v9 + 8))(v11, v16);

  return result;
}

uint64_t sub_24EC1289C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B860, &unk_24F98CB10);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = sub_24F927E38();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  a1(a3 + 24);
  swift_endAccess();
  v13 = *(a3 + 16);
  *v12 = v13;
  (*(v10 + 104))(v12, *MEMORY[0x277D85200], v9);
  v14 = v13;
  LOBYTE(v13) = sub_24F927E68();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {

    sub_24EC1200C(v16, v8);

    sub_24F9280C8();
    return (*(v6 + 8))(v8, v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

Swift::Void __swiftcall SearchResultsContentPresenter.reapplySnapshot()()
{
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927DC8();
  v5 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[1] = *(v0 + 16);
  aBlock[4] = sub_24EC12FB4;
  v13 = v0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_61;
  v8 = _Block_copy(aBlock);

  sub_24F927DA8();
  v11 = MEMORY[0x277D84F90];
  sub_24EC1358C(&qword_27F222930, 255, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v7, v4, v8);
  _Block_release(v8);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v10);
}

uint64_t sub_24EC12D98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B860, &unk_24F98CB10);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - v4;
  v6 = sub_24F927E38();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(a1 + 16);
  *v10 = v11;
  (*(v7 + 104))(v10, *MEMORY[0x277D85200], v6, v8);
  v12 = v11;
  LOBYTE(v11) = sub_24F927E68();
  result = (*(v7 + 8))(v10, v6);
  if (v11)
  {
    swift_beginAccess();

    sub_24EC1200C(v14, v5);

    sub_24F9280C8();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EC12FF4(void *a1)
{

  *a1 = MEMORY[0x277D84F90];

  return sub_24EA0B4A0(v2);
}

uint64_t sub_24EC13038()
{

  return swift_deallocObject();
}

double sub_24EC13098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;

  sub_24EC125B8(a3, v5);

  return result;
}

uint64_t SearchResultsContentPresenter.deinit()
{

  return v0;
}

uint64_t SearchResultsContentPresenter.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t SearchResultsContentPresenter.Section.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_24F92CB88();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_24EC132E4()
{
  result = qword_27F22B858;
  if (!qword_27F22B858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B858);
  }

  return result;
}

uint64_t sub_24EC13338()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC133A4()
{
  sub_24F92D068();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t sub_24EC133F4@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_24F92CB88();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_24EC134EC()
{

  return swift_deallocObject();
}

unint64_t sub_24EC13538()
{
  result = qword_27F22B890;
  if (!qword_27F22B890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B890);
  }

  return result;
}

uint64_t sub_24EC1358C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_24EC135D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B870, &qword_24F98CB20);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t ProductRatingsLayout.init(metrics:averageRatingText:denominatorRatingText:ratingCountText:histogramStarViews:histogramRatingProgressViews:)@<X0>(void *__src@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  memcpy(a7, __src, 0x190uLL);
  sub_24E612C80(a2, (a7 + 50));
  sub_24E612C80(a3, (a7 + 55));
  result = sub_24E612C80(a4, (a7 + 60));
  a7[65] = a5;
  a7[66] = a6;
  return result;
}

uint64_t ProductRatingsLayout.Metrics.init(averageRatingTextSpace:compactDenominatorTextSpace:denominatorLeadingMargin:columnWidth:columnMargin:histogramLeadingMargin:progressBarMargin:histogramStarSpacing:histogramBarHeight:bottomSpace:layoutMargins:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, __int128 *a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, __int128 *a6@<X5>, __int128 *a7@<X6>, __int128 *a8@<X7>, double *a9@<X8>, double a10@<D0>, double a11@<D1>, double a12@<D2>, double a13@<D3>, double a14@<D4>, __int128 *a15)
{
  sub_24E612C80(a1, a9);
  sub_24E612C80(a2, (a9 + 5));
  sub_24E612C80(a3, (a9 + 10));
  sub_24E612C80(a4, (a9 + 15));
  sub_24E612C80(a5, (a9 + 20));
  sub_24E612C80(a6, (a9 + 30));
  sub_24E612C80(a7, (a9 + 25));
  sub_24E612C80(a8, (a9 + 35));
  a9[40] = a10;
  result = sub_24E612C80(a15, (a9 + 41));
  a9[46] = a11;
  a9[47] = a12;
  a9[48] = a13;
  a9[49] = a14;
  return result;
}

uint64_t ProductRatingsLayout.Metrics.averageRatingTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1(v1);

  return sub_24E612C80(a1, v1);
}

uint64_t ProductRatingsLayout.Metrics.compactDenominatorTextSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 40));

  return sub_24E612C80(a1, v1 + 40);
}

uint64_t ProductRatingsLayout.Metrics.denominatorLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 80));

  return sub_24E612C80(a1, v1 + 80);
}

uint64_t ProductRatingsLayout.Metrics.columnWidth.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 120));

  return sub_24E612C80(a1, v1 + 120);
}

uint64_t ProductRatingsLayout.Metrics.columnMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 160));

  return sub_24E612C80(a1, v1 + 160);
}

uint64_t ProductRatingsLayout.Metrics.progressBarMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 200));

  return sub_24E612C80(a1, v1 + 200);
}

uint64_t ProductRatingsLayout.Metrics.histogramLeadingMargin.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 240));

  return sub_24E612C80(a1, v1 + 240);
}

uint64_t ProductRatingsLayout.Metrics.histogramStarSpacing.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 280));

  return sub_24E612C80(a1, v1 + 280);
}

uint64_t ProductRatingsLayout.Metrics.bottomSpace.setter(__int128 *a1)
{
  __swift_destroy_boxed_opaque_existential_1((v1 + 328));

  return sub_24E612C80(a1, v1 + 328);
}

void ProductRatingsLayout.Metrics.layoutMargins.setter(double a1, double a2, double a3, double a4)
{
  v4[46] = a1;
  v4[47] = a2;
  v4[48] = a3;
  v4[49] = a4;
}

uint64_t ProductRatingsLayout.placeChildren(relativeTo:in:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, CGFloat a6@<D3>)
{
  v7 = v6;
  v130 = a5;
  v131 = a6;
  v128 = a3;
  v129 = a4;
  v118 = a2;
  v9 = sub_24F92CDB8();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 traitCollection];
  v116 = sub_24F92BF68();

  v15 = v7[18];
  __swift_project_boxed_opaque_existential_1(v7 + 15, v15);
  sub_24E8ED7D8(v15);
  v119 = sub_24F9223A8();
  v16 = *(v10 + 8);
  v16(v13, v9);
  v17 = v7[23];
  __swift_project_boxed_opaque_existential_1(v7 + 20, v17);
  sub_24E8ED7D8(v17);
  v109 = sub_24F9223A8();
  v16(v13, v9);
  sub_24F92C1C8();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  __swift_project_boxed_opaque_existential_1(v7 + 50, v7[53]);
  sub_24F922288();
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v33 = v32;
  v132.origin.x = v19;
  v132.origin.y = v21;
  v132.size.width = v23;
  v132.size.height = v25;
  MinX = CGRectGetMinX(v132);
  v123 = v21;
  v124 = v19;
  v133.origin.x = v19;
  v133.origin.y = v21;
  v133.size.width = v23;
  v133.size.height = v25;
  MinY = CGRectGetMinY(v133);
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v117 = v31;
  v115 = v33;
  sub_24F9223C8();
  v36 = MinY + v35;
  __swift_project_boxed_opaque_existential_1(v7 + 50, v7[53]);
  v37 = MinX;
  v38 = v25;
  v39 = v29;
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 55, v7[58]);
  v40 = v23;
  sub_24F922288();
  v114 = v41;
  v113 = v42;
  v120 = v43;
  v45 = v44;
  v46 = [a1 traitCollection];
  v47 = sub_24F92BF68();

  v121 = v39;
  v122 = v27;
  v125 = v36;
  if (v47)
  {
    v134.origin.y = v123;
    v134.origin.x = v124;
    v134.size.width = v23;
    v108 = v23;
    v134.size.height = v38;
    v48 = CGRectGetMinX(v134);
    v49 = v38;
    v112 = v45;
    v50 = v36;
    v51 = v48;
    v135.origin.x = v37;
    v135.origin.y = v50;
    v135.size.width = v27;
    v135.size.height = v39;
    MidX = CGRectGetMidX(v135);
    v53 = v114;
    v54 = floor(MidX + v114 * -0.5);
    if (v51 > v54)
    {
      v55 = v51;
    }

    else
    {
      v55 = v54;
    }

    v136.origin.x = v37;
    v136.origin.y = v50;
    v136.size.width = v27;
    v136.size.height = v39;
    v56 = CGRectGetMaxY(v136) - v115;
    __swift_project_boxed_opaque_existential_1(v7 + 5, v7[8]);
    v57 = v113;
    sub_24F9223C8();
    v59 = v56 + v58;
    v60 = v108;
    v61 = v57;
  }

  else
  {
    v137.origin.x = v37;
    v137.origin.y = v36;
    v137.size.width = v27;
    v137.size.height = v39;
    MaxX = CGRectGetMaxX(v137);
    v63 = v7[13];
    __swift_project_boxed_opaque_existential_1(v7 + 10, v63);
    sub_24E8ED7D8(v63);
    v49 = v38;
    v64 = sub_24F9223A8();
    v16(v13, v9);
    v55 = MaxX + v64;
    v138.origin.x = v37;
    v138.origin.y = v36;
    v138.size.width = v27;
    v138.size.height = v39;
    v59 = CGRectGetMaxY(v138) - v115 - v120;
    v60 = v40;
    v53 = v114;
    v61 = v113;
  }

  v126 = v49;
  __swift_project_boxed_opaque_existential_1(v7 + 55, v7[58]);
  sub_24F92C1D8();
  sub_24F922228();
  __swift_project_boxed_opaque_existential_1(v7 + 60, v7[63]);
  sub_24F922288();
  v66 = v65;
  v68 = v67;
  v114 = v69;
  v115 = v70;
  v139.origin.x = v55;
  v139.origin.y = v59;
  v139.size.width = v53;
  v139.size.height = v61;
  v71 = v120 + CGRectGetMinY(v139);
  v72 = v123;
  v73 = v124;
  v140.origin.x = v124;
  v140.origin.y = v123;
  v140.size.width = v60;
  v140.size.height = v49;
  v74 = v119 + CGRectGetMinX(v140) - v66;
  v75 = v71 - v114;
  __swift_project_boxed_opaque_existential_1(v7 + 60, v7[63]);
  v113 = v74;
  v112 = v75;
  v120 = v66;
  v114 = v68;
  sub_24F92C1D8();
  sub_24F922228();
  v141.origin.x = MinX;
  v141.origin.y = v125;
  v77 = v121;
  v76 = v122;
  v141.size.width = v122;
  v141.size.height = v121;
  v111 = CGRectGetMinY(v141);
  v142.origin.x = v73;
  v142.origin.y = v72;
  v142.size.width = v60;
  v142.size.height = v49;
  v110 = CGRectGetMinY(v142);
  v78 = v60;
  v79 = v73;
  v80 = v72;
  if (v116)
  {
    v81 = v76;
    v143.origin.x = v79;
    v143.origin.y = v72;
    v143.size.width = v60;
    v82 = v126;
    v143.size.height = v126;
    v83 = CGRectGetWidth(v143) * 0.5;
    v84 = v7[33];
    __swift_project_boxed_opaque_existential_1(v7 + 30, v84);
    sub_24E8ED7D8(v84);
    v85 = sub_24F9223A8();
    v16(v13, v9);
    v86 = v83 + v85;
    v144.origin.x = MinX;
    v144.origin.y = v125;
    v144.size.width = v81;
    v144.size.height = v77;
    v87 = CGRectGetMaxX(v144);
    v88 = v7[28];
    __swift_project_boxed_opaque_existential_1(v7 + 25, v88);
    sub_24E8ED7D8(v88);
    v89 = sub_24F9223A8();
    v16(v13, v9);
    v90 = v87 + v89;
    v145.origin.x = v79;
    v145.origin.y = v80;
    v145.size.width = v78;
    v145.size.height = v82;
    if (v90 < CGRectGetMaxX(v145) - v86)
    {
      v146.origin.x = v79;
      v146.origin.y = v80;
      v146.size.width = v78;
      v146.size.height = v126;
      v90 = CGRectGetMaxX(v146) - v86;
    }

    v147.origin.x = v79;
    v147.origin.y = v80;
    v147.size.width = v78;
    v91 = v126;
    v147.size.height = v126;
    v92 = CGRectGetMinY(v147);
    v148.origin.x = v79;
    v148.origin.y = v80;
    v148.size.width = v78;
    v148.size.height = v91;
    v93 = CGRectGetMaxX(v148) - v90;
  }

  else
  {
    v149.origin.x = v73;
    v149.origin.y = v72;
    v149.size.width = v60;
    v94 = v126;
    v149.size.height = v126;
    v95 = CGRectGetMinX(v149);
    v96 = v119;
    v90 = v109 + v119 + v95;
    v97 = v119 + v90;
    v150.origin.x = v79;
    v150.origin.y = v80;
    v150.size.width = v60;
    v150.size.height = v94;
    v98 = CGRectGetMaxX(v150) < v97;
    v93 = v96;
    if (v98)
    {
      v151.origin.x = v79;
      v151.origin.y = v80;
      v151.size.width = v60;
      v151.size.height = v126;
      v93 = CGRectGetMaxX(v151) - v90;
    }

    v152.origin.x = v79;
    v152.origin.y = v80;
    v152.size.width = v60;
    v152.size.height = v126;
    v92 = CGRectGetMinY(v152);
  }

  v99 = v92;
  v101 = v128;
  v100 = v129;
  v103 = v130;
  v102 = v131;
  sub_24EC14780(a1, v90, v99, v93, v117 + v111 - v110, v128, v129, v130, v131);
  v153.origin.x = v113;
  v153.origin.y = v112;
  v153.size.width = v120;
  v153.size.height = v114;
  CGRectGetMaxY(v153);
  v104 = v7[44];
  __swift_project_boxed_opaque_existential_1(v7 + 41, v104);
  sub_24E8ED7D8(v104);
  sub_24F9223A8();
  v16(v13, v9);
  v154.origin.x = v101;
  v154.origin.y = v100;
  v154.size.width = v103;
  v154.size.height = v102;
  CGRectGetWidth(v154);
  v155.origin.y = v123;
  v155.origin.x = v124;
  v155.size.width = v78;
  v155.size.height = v126;
  CGRectGetMinY(v155);
  v156.origin.x = MinX;
  v156.origin.y = v125;
  v156.size.height = v121;
  v156.size.width = v122;
  CGRectGetMinY(v156);
  v105 = v7[44];
  __swift_project_boxed_opaque_existential_1(v7 + 41, v105);
  sub_24E8ED7D8(v105);
  sub_24F9223A8();
  v16(v13, v9);
  return sub_24F922138();
}

void sub_24EC14780(uint64_t a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5, double a6, double a7, double a8, CGFloat a9)
{
  v10 = v9;
  v90 = a9;
  v85 = a8;
  v89 = a7;
  v84 = a6;
  v91 = a5;
  v88 = a3;
  v87 = a2;
  v12 = sub_24F92CDB8();
  MEMORY[0x28223BE20](v12);
  v16 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v9 + 65);
  v18 = *(v17 + 16);
  v73 = *(v9 + 66);
  if (v18)
  {
    v19 = v18 == *(v73 + 16);
  }

  else
  {
    v19 = 0;
  }

  v20 = 0.0;
  if (v19)
  {
    v83 = v14;
    v86 = v13;
    v75 = v17;
    v21 = v17 + 32;
    v22 = MEMORY[0x277D84F90];
    v23 = 0.0;
    v72 = v17 + 32;
    v24 = v18;
    do
    {
      sub_24E615E00(v21, &v99);
      __swift_project_boxed_opaque_existential_1(&v99, v101);
      sub_24F922298();
      v26 = v25;
      v28 = v27;
      __swift_destroy_boxed_opaque_existential_1(&v99);
      if (v20 < v26)
      {
        v23 = v28;
        v20 = v26;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_24E618CF8(0, *(v22 + 2) + 1, 1, v22);
      }

      v30 = *(v22 + 2);
      v29 = *(v22 + 3);
      if (v30 >= v29 >> 1)
      {
        v22 = sub_24E618CF8((v29 > 1), v30 + 1, 1, v22);
      }

      *(v22 + 2) = v30 + 1;
      v31 = &v22[16 * v30 + 32];
      *v31 = v26;
      v31[1] = v28;
      v21 += 40;
      --v24;
    }

    while (v24);
    v32 = *(v9 + 38);
    __swift_project_boxed_opaque_existential_1(v10 + 35, *(v10 + 38));
    sub_24E8ED7D8(v32);
    v33 = sub_24F9223A8();
    v82 = *(*&v83 + 8);
    (*&v82)(v16, *&v86);
    v79 = v33;
    v34 = v23 * v18 + v33 * (v18 - 1);
    v35 = v87;
    v105.origin.x = v87;
    v36 = v88;
    v105.origin.y = v88;
    v105.size.width = a4;
    v37 = v91;
    v105.size.height = v91;
    MinX = CGRectGetMinX(v105);
    v106.origin.x = v35;
    v106.origin.y = v36;
    v106.size.width = a4;
    v106.size.height = v37;
    v39 = CGRectGetMaxY(v106) - v34;
    v107.origin.x = v35;
    v107.origin.y = v36;
    v83 = a4;
    v107.size.width = a4;
    v107.size.height = v37;
    Width = CGRectGetWidth(v107);
    v108.origin.x = MinX;
    v41 = MinX;
    v108.origin.y = v39;
    v108.size.width = v20;
    v108.size.height = v34;
    v42 = CGRectGetWidth(v108);
    v43 = *(v10 + 28);
    __swift_project_boxed_opaque_existential_1(v10 + 25, v43);
    sub_24E8ED7D8(v43);
    v44 = sub_24F9223A8();
    (*&v82)(v16, *&v86);
    v78 = Width - (v42 + v44);
    v45 = v10[40];
    v109.origin.x = v41;
    v80 = v41;
    v86 = v39;
    v109.origin.y = v39;
    v82 = v20;
    v109.size.width = v20;
    v81 = v34;
    v109.size.height = v34;
    MinY = CGRectGetMinY(v109);
    v74 = 0;
    v47 = 0;
    v71 = v73 + 32;
    v77 = v45;
    v76 = v45 * 0.5;
LABEL_15:
    v48 = *(v75 + 16);
    if (v47 == v48)
    {
      while (1)
      {
LABEL_19:
        v50 = 0;
        v51 = 0;
        v52 = 0;
        v53 = 0uLL;
        v54 = 1;
        v55 = 0uLL;
        v56 = 0uLL;
        v57 = 0uLL;
LABEL_20:
        v99 = v50;
        v100 = v53;
        v101 = v51;
        v102 = v55;
        v103[0] = v56;
        v103[1] = v57;
        v104 = v52;
        if (!v55)
        {
          v64 = v87;
          v113.origin.x = v87;
          v65 = v88;
          v113.origin.y = v88;
          v66 = v83;
          v113.size.width = v83;
          v67 = v91;
          v113.size.height = v91;
          v90 = CGRectGetMinX(v113);
          v114.origin.x = v64;
          v114.origin.y = v65;
          v114.size.width = v66;
          v114.size.height = v67;
          CGRectGetMaxY(v114);
          v68 = v80;
          v115.origin.x = v80;
          v115.origin.y = v86;
          v69 = v82;
          v115.size.width = v82;
          v70 = v81;
          v115.size.height = v81;
          CGRectGetHeight(v115);
          v116.origin.x = v64;
          v116.origin.y = v65;
          v116.size.width = v66;
          v116.size.height = v67;
          CGRectGetWidth(v116);
          v117.origin.x = v68;
          v117.origin.y = v86;
          v117.size.width = v69;
          v117.size.height = v70;
          CGRectGetHeight(v117);

          return;
        }

        sub_24E612C80(&v100, &v93);
        sub_24E612C80(v103, &v96);
        if (v50 >= *(v22 + 2))
        {
          break;
        }

        v58 = &v22[16 * v50 + 32];
        v60 = *v58;
        v59 = v58[1];
        v110.origin.x = v80;
        v110.origin.y = v86;
        v110.size.width = v82;
        v110.size.height = v81;
        v61 = CGRectGetMaxX(v110) - v60;
        __swift_project_boxed_opaque_existential_1(&v93, v95);
        sub_24F92C1D8();
        sub_24F922228();
        __swift_destroy_boxed_opaque_existential_1(&v93);
        v111.origin.x = v87;
        v111.origin.y = v88;
        v111.size.width = v83;
        v111.size.height = v91;
        CGRectGetMaxX(v111);
        v112.origin.x = v61;
        v112.origin.y = MinY;
        v112.size.width = v60;
        v112.size.height = v59;
        CGRectGetMidY(v112);
        __swift_project_boxed_opaque_existential_1(&v96, *(&v97 + 1));
        sub_24F92C1D8();
        sub_24F922228();
        __swift_destroy_boxed_opaque_existential_1(&v96);
        MinY = MinY + v79 + v59;
        if ((v54 & 1) == 0)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    else if (v47 < v48)
    {
      sub_24E615E00(v72 + 40 * v47++, v92);
      v49 = *(v73 + 16);
      if (v74 == v49)
      {
        __swift_destroy_boxed_opaque_existential_1(v92);
        goto LABEL_19;
      }

      if (v74 < v49)
      {
        v62 = v74;
        v63 = v71 + 40 * v74;
        sub_24E612C80(v92, &v93);
        sub_24E615E00(v63, &v96);
        v54 = 0;
        v53 = v93;
        v51 = v94;
        v55 = v95;
        v56 = v96;
        v57 = v97;
        v50 = v62;
        v74 = v62 + 1;
        v52 = v98;
        goto LABEL_20;
      }

      goto LABEL_29;
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }
}

double _s12GameStoreKit20ProductRatingsLayoutV21estimatedMeasurements7fitting5using2inSo14JUMeasurementsVSo6CGSizeV_AC7MetricsVSo18UITraitEnvironment_ptFZ_0(void *a1, void *a2, double a3, double a4)
{
  v33 = sub_24F92CDB8();
  v31 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F9225E8();
  v27 = *(v9 - 8);
  v28 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F922618();
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24F9229A8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23B3F0, &unk_24F93B6B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_24F93A400;
  sub_24E615E00(a1, &v34);
  v20 = MEMORY[0x277D228E0];
  *(v19 + 56) = v15;
  *(v19 + 64) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 32));
  sub_24F9229B8();
  sub_24E615E00((a1 + 41), &v34);
  *(v19 + 96) = v15;
  *(v19 + 104) = v20;
  __swift_allocate_boxed_opaque_existential_1((v19 + 72));
  sub_24F9229B8();
  v32 = a2;
  v21 = [a2 traitCollection];
  LOBYTE(v20) = sub_24F92BF68();

  if (v20)
  {
    sub_24E615E00((a1 + 5), &v34);
    sub_24F9229B8();
    v23 = *(v19 + 16);
    v22 = *(v19 + 24);
    if (v23 >= v22 >> 1)
    {
      v19 = sub_24E617A00((v22 > 1), v23 + 1, 1, v19);
    }

    v35 = v15;
    v36 = MEMORY[0x277D228E0];
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v34);
    (*(v16 + 16))(boxed_opaque_existential_1, v18, v15);
    *(v19 + 16) = v23 + 1;
    sub_24E612C80(&v34, v19 + 40 * v23 + 32);
    (*(v16 + 8))(v18, v15);
  }

  (*(v27 + 104))(v11, *MEMORY[0x277D22788], v28);
  sub_24F9225F8();
  sub_24F9225D8();
  v25 = a1[44];
  __swift_project_boxed_opaque_existential_1(a1 + 41, v25);
  sub_24E8ED7D8(v25);
  sub_24F9223A8();
  (*(v31 + 8))(v8, v33);
  (*(v29 + 8))(v14, v30);
  return a3;
}

unint64_t sub_24EC15404()
{
  result = qword_27F22B8A8;
  if (!qword_27F22B8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8A8);
  }

  return result;
}

uint64_t sub_24EC15460(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 536))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC154A8(uint64_t result, int a2, int a3)
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
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 536) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 536) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EC1558C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 400))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EC155D4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
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
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 400) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 400) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t Conditional<>.init(regularValue:rightToLeftValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, void *a4@<X8>)
{
  v8 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v20 - v12;
  v20[0] = v14;
  v20[1] = v15;
  KeyPath = swift_getKeyPath();
  v17 = *(v8 + 16);
  v17(v13, a2, a3);
  v17(v10, a1, a3);
  Conditional<>.init(property:trueValue:falseValue:)(KeyPath, v13, v10, a3, &v21);
  v18 = *(v8 + 8);
  v18(a2, a3);
  result = (v18)(a1, a3);
  *a4 = v21;
  return result;
}

id sub_24EC15814@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

id sub_24EC15850@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 traitCollection];
  *a2 = result;
  return result;
}

__n128 sub_24EC15898(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_24EC158A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_24F92BF88();
  *a1 = result & 1;
  return result;
}

void sub_24EC158E4()
{
  v1 = *(v0 + 32);
  if (__OFADD__(v1, 1))
  {
    __break(1u);
  }

  else
  {
    *(v0 + 32) = v1 + 1;
    fmin(exp2(v1) * 0.3, 5.0);
    sub_24F18A83C(0x20000000000001uLL);
  }
}

uint64_t sub_24EC159E4@<X0>(char a2@<W1>, uint64_t *a3@<X8>)
{
  if (a2)
  {
    if (a2 == 1)
    {
      sub_24F9251C8();
    }

    else
    {
      sub_24F9251B8();
    }
  }

  else
  {
    sub_24F925198();
  }

  result = sub_24F9238D8();
  *a3 = result;
  return result;
}

unint64_t sub_24EC15AC8()
{
  result = qword_27F22B8B0;
  if (!qword_27F22B8B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8B0);
  }

  return result;
}

unint64_t sub_24EC15B7C()
{
  result = qword_27F22B8B8;
  if (!qword_27F22B8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8B8);
  }

  return result;
}

double sub_24EC15BD0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B8C8, &qword_24F98CFF0);
  MEMORY[0x28223BE20](v62);
  v4 = &v53 - v3;
  v5 = type metadata accessor for SocialSuggestionsComponentGrid(0);
  v6 = a1 + *(v5 + 32);
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = *(v6 + 16);
  v10 = *(v6 + 24);
  v12 = *(v6 + 32);
  v11 = *(v6 + 40);
  v13 = *(v6 + 48);
  *&v79[3] = *(v6 + 52);
  *v79 = *(v6 + 49);
  v14 = *(v6 + 56);
  v15 = *(v6 + 64);
  v17 = *(v6 + 72);
  v16 = *(v6 + 80);
  v18 = *(v6 + 88);
  *v85 = *(v6 + 89);
  *&v85[3] = *(v6 + 92);
  v19 = *(v6 + 96);
  v20 = *(v6 + 104);
  *v88 = *(v6 + 105);
  *&v88[3] = *(v6 + 108);
  v21 = *(v6 + 112);
  v22 = *(v6 + 120);
  *v91 = *(v6 + 121);
  *&v91[3] = *(v6 + 124);
  v23 = *(v6 + 128);
  v24 = *(v6 + 136);
  *&v94[3] = *(v6 + 140);
  *v94 = *(v6 + 137);
  v25 = *(v6 + 144);
  v26 = *(v6 + 152);
  LOBYTE(v6) = *(v6 + 153);
  v65 = v7;
  v77[0] = v7;
  v77[1] = v8;
  v64 = v8;
  v66 = v9;
  v77[2] = v9;
  v77[3] = v10;
  v68 = v10;
  v77[4] = v12;
  v77[5] = v11;
  v67 = v11;
  v78 = v13;
  v69 = v14;
  v80 = v14;
  v81 = v15;
  v70 = v15;
  v82 = v17;
  v83 = v16;
  v59 = v16;
  v54 = v18;
  v84 = v18;
  v58 = v19;
  v86 = v19;
  v55 = v20;
  v87 = v20;
  v57 = v21;
  v89 = v21;
  v56 = v22;
  v90 = v22;
  v27 = v23;
  v92 = v23;
  v28 = v24;
  v93 = v24;
  v95 = v25;
  v29 = v26;
  v96 = v26;
  v97 = v6;
  if (sub_24EC1631C(v77) != 1)
  {
    v30 = v17 & 1;
    v61 = *(a1 + *(v5 + 28));
    if (v13)
    {
      v36 = v69;
      v32 = v59;
      v35 = v70;
      v31 = v29;
      v34 = v58;
      v33 = v57;
      v38 = v56;
      v39 = v55;
      v37 = 0;
      v67 = 0x4051400000000000;
      v60 = 1;
      if ((v54 & 1) == 0)
      {
        v66 = 0x4051400000000000;
        goto LABEL_10;
      }

      v69 = 0x4056000000000000;
      v66 = 0x4051400000000000;
      v68 = 0;
      v70 = 0;
    }

    else
    {
      v60 = v12 & 1;
      v36 = v69;
      v32 = v59;
      v35 = v70;
      v31 = v29;
      v37 = v68;
      v34 = v58;
      v33 = v57;
      v38 = v56;
      v39 = v55;
      if ((v54 & 1) == 0)
      {
        goto LABEL_10;
      }

      v70 = 0;
      v69 = 0x4056000000000000;
    }

    v40 = 1;
    v32 = 0x4056000000000000;
    goto LABEL_11;
  }

  v25 = 0;
  LOBYTE(v72[0]) = 0;
  LOBYTE(v71[0]) = 0;
  v30 = 1;
  v76 = 1;
  v75 = 1;
  v74 = 1;
  v73 = 1;
  v31 = 1;
  v61 = *(a1 + *(v5 + 28));
  v32 = 0x4056000000000000;
  v65 = 2;
  v64 = 3;
  v67 = 0x4051400000000000;
  v27 = 0;
  v33 = 0;
  v34 = 0;
  v35 = 0;
  v36 = 0x4056000000000000;
  v60 = 1;
  v37 = 0;
  v66 = 0x4051400000000000;
  v28 = 1;
  v38 = 1;
  v39 = 1;
LABEL_10:
  v70 = v35;
  v69 = v36;
  v68 = v37;
  v40 = v30;
LABEL_11:
  if (v39)
  {
    v41 = 2;
  }

  else
  {
    v41 = v34;
  }

  if (v38)
  {
    v42 = 1;
  }

  else
  {
    v42 = v33;
  }

  if (v28)
  {
    v43 = 2;
  }

  else
  {
    v43 = v27;
  }

  if (v31)
  {
    v25 = 1;
  }

  LOBYTE(v72[0]) = 0;
  LOBYTE(v71[0]) = 0;
  v44 = &v4[*(v62 + 36)];
  v45 = *(sub_24F924258() + 20);
  v46 = *MEMORY[0x277CE0118];
  v47 = sub_24F924B38();
  (*(*(v47 - 8) + 104))(&v44->i8[v45], v46, v47);
  *v44 = vdupq_n_s64(0x4040000000000000uLL);
  v48 = v65;
  *v4 = v64;
  *(v4 + 1) = v48;
  v49 = v66;
  *(v4 + 2) = v61;
  *(v4 + 3) = v49;
  v50 = v60;
  *(v4 + 4) = v68;
  *(v4 + 5) = v50;
  *(v4 + 6) = v67;
  v4[56] = 0;
  *(v4 + 57) = v72[0];
  *(v4 + 15) = *(v72 + 3);
  v51 = v70;
  *(v4 + 8) = v69;
  *(v4 + 9) = v51;
  *(v4 + 10) = v40;
  *(v4 + 11) = v32;
  v4[96] = 0;
  LODWORD(v51) = v71[0];
  *(v4 + 25) = *(v71 + 3);
  *(v4 + 97) = v51;
  *(v4 + 13) = v41;
  *(v4 + 14) = v42;
  *(v4 + 15) = v43;
  *(v4 + 16) = v25;
  sub_24EC16338(v4, v63);

  return result;
}

uint64_t sub_24EC1618C(uint64_t a1)
{
  sub_24EC15B7C();

  return sub_24F9218E8();
}

unint64_t sub_24EC161D4()
{
  result = qword_27F22B8C0;
  if (!qword_27F22B8C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8C0);
  }

  return result;
}

uint64_t sub_24EC162D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC1631C(uint64_t a1)
{
  if (*(a1 + 153))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EC16338(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B8C8, &qword_24F98CFF0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_24EC163AC()
{
  result = qword_27F22B8D0;
  if (!qword_27F22B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B8C8, &qword_24F98CFF0);
    sub_24EC16438();
    sub_24EC1648C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8D0);
  }

  return result;
}

unint64_t sub_24EC16438()
{
  result = qword_27F22B8D8;
  if (!qword_27F22B8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8D8);
  }

  return result;
}

unint64_t sub_24EC1648C()
{
  result = qword_27F217098;
  if (!qword_27F217098)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2170A0, &unk_24F967B30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F217098);
  }

  return result;
}

char *SearchAdAction.__allocating_init(title:action:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_24F91F6B8();
  v31 = *(v10 - 8);
  v32 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = swift_allocObject();
  *&v13[OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action] = a3;
  v39 = 0;
  memset(v38, 0, sizeof(v38));
  v14 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v15 = sub_24F928AD8();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v13[v14], a5, v15);
  v17 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v18 = sub_24F929608();
  (*(*(v18 - 8) + 56))(&v13[v17], 1, 1, v18);
  v19 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_clickSender];
  *v19 = 0u;
  *(v19 + 1) = 0u;
  v20 = &v13[OBJC_IVAR____TtC12GameStoreKit6Action_id];
  sub_24E65E064(v38, &v35);
  if (*(&v36 + 1))
  {
    v21 = v36;
    *v20 = v35;
    *(v20 + 1) = v21;
    *(v20 + 4) = v37;
  }

  else
  {
    sub_24F91F6A8();
    v22 = sub_24F91F668();
    v30 = a5;
    v23 = a1;
    v24 = a2;
    v25 = a4;
    v26 = v22;
    v28 = v27;
    (*(v31 + 8))(v12, v32);
    v33 = v26;
    v34 = v28;
    a4 = v25;
    a2 = v24;
    a1 = v23;
    a5 = v30;
    sub_24F92C7F8();
    sub_24E601704(&v35, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v16 + 8))(a5, v15);
  sub_24E601704(v38, &qword_27F235830, &qword_24F93B8C0);
  *(v13 + 2) = a1;
  *(v13 + 3) = a2;
  *(v13 + 4) = 0;
  *(v13 + 5) = a4;
  return v13;
}

void *SearchAdAction.init(title:action:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a2;
  v38 = a4;
  v10 = sub_24F91F6B8();
  v36 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v34 - v14;
  v16 = sub_24F928AD8();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v34 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v6 + OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action) = a3;
  v20 = a5;
  v48 = 0;
  memset(v47, 0, sizeof(v47));
  (*(v17 + 16))(v19, a5, v16);
  v21 = sub_24F929608();
  (*(*(v21 - 8) + 56))(v15, 1, 1, v21);
  v22 = (v6 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v22 = 0u;
  v22[1] = 0u;
  sub_24E65E064(v47, &v41);
  if (*(&v42 + 1))
  {
    v44 = v41;
    v45 = v42;
    v46 = v43;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v24 = v10;
    v25 = a5;
    v26 = v23;
    v35 = a1;
    v28 = v27;
    (*(v36 + 8))(v12, v24);
    v39 = v26;
    v40 = v28;
    v20 = v25;
    a1 = v35;
    sub_24F92C7F8();
    sub_24E601704(&v41, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v17 + 8))(v20, v16);
  sub_24E601704(v47, &qword_27F235830, &qword_24F93B8C0);
  v29 = v6 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v29 + 4) = v46;
  v30 = v45;
  *v29 = v44;
  *(v29 + 1) = v30;
  sub_24E65E0D4(v15, v6 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v37;
  v31 = v38;
  v6[2] = a1;
  v6[3] = v32;
  v6[4] = 0;
  v6[5] = v31;
  (*(v17 + 32))(v6 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v19, v16);
  return v6;
}

uint64_t *SearchAdAction.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v27 = *v4;
  v28 = v3;
  v29 = sub_24F9285B8();
  v7 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F928388();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v31 = a1;
  sub_24F928398();
  type metadata accessor for Action(0);
  v30 = a2;
  v17 = static Action.tryToMakeInstance(byDeserializing:using:)(v16, a2);
  if (v17)
  {
    *(v4 + OBJC_IVAR____TtC12GameStoreKit14SearchAdAction_action) = v17;

    sub_24F928398();
    (*(v7 + 16))(v9, v30, v29);
    v18 = v28;
    v19 = Action.init(deserializing:using:)(v13, v9);
    if (v18)
    {

      (*(v7 + 8))(v30, v29);
      v20 = *(v11 + 8);
      v20(v31, v10);
      v20(v16, v10);
    }

    else
    {
      v4 = v19;

      (*(v7 + 8))(v30, v29);
      v25 = *(v11 + 8);
      v25(v31, v10);
      v25(v16, v10);
    }
  }

  else
  {
    v21 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v22 = 0x6E6F69746361;
    v23 = v27;
    v22[1] = 0xE600000000000000;
    v22[2] = v23;
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D22530], v21);
    swift_willThrow();
    (*(v7 + 8))(v30, v29);
    v24 = *(v11 + 8);
    v24(v31, v10);
    v24(v16, v10);
    swift_deallocPartialClassInstance();
  }

  return v4;
}

uint64_t SearchAdAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t SearchAdAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SearchAdAction(uint64_t a1)
{
  result = qword_27F22B8E0;
  if (!qword_27F22B8E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EC1727C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B8F0, &unk_24F98D128);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  sub_24E61DA68(v10, v12, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC17780();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    sub_24E61DA68(v10, v12, qword_27F24EC90, &unk_24F93C1D0);
    sub_24EC17804(v12, a2);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EC177D4(v12);
}

uint64_t sub_24EC174B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4173736563637573 && a2 == 0xED00006E6F697463)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_24F92CE08();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_24EC17544(uint64_t a1)
{
  v2 = sub_24EC17780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC17580(uint64_t a1)
{
  v2 = sub_24EC17780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EC175F4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B900, &qword_24F98D138);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC17780();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24EC17780()
{
  result = qword_27F22B8F8;
  if (!qword_27F22B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B8F8);
  }

  return result;
}

unint64_t sub_24EC17850()
{
  result = qword_27F22B908;
  if (!qword_27F22B908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B908);
  }

  return result;
}

unint64_t sub_24EC178A8()
{
  result = qword_27F22B910;
  if (!qword_27F22B910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B910);
  }

  return result;
}

unint64_t sub_24EC17900()
{
  result = qword_27F22B918;
  if (!qword_27F22B918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B918);
  }

  return result;
}

uint64_t sub_24EC17954(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6772614D65676170;
    if (a1 != 2)
    {
      v5 = 0x7061726761726170;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v6 = 0xD000000000000014;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0xD000000000000012;
    v2 = 0x417972616D697270;
    if (a1 != 7)
    {
      v2 = 0x417373696D736964;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x7374656C6C7562;
    if (a1 != 4)
    {
      v3 = 0xD000000000000012;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_24EC17AA8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EC1FC50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EC17AD0(uint64_t a1)
{
  v2 = sub_24EC17FA4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC17B0C(uint64_t a1)
{
  v2 = sub_24EC17FA4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherWelcomePage.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B920, &qword_24F98D280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC17FA4();
  sub_24F92D128();
  LOBYTE(v15) = 0;
  type metadata accessor for HeaderPresentation(0);
  sub_24EC20494(&qword_27F21BE58, type metadata accessor for HeaderPresentation, &protocol conformance descriptor for HeaderPresentation);
  sub_24F92CCF8();
  if (!v2)
  {
    v9 = type metadata accessor for PlayTogetherWelcomePage(0);
    LOBYTE(v15) = 1;
    sub_24F9289E8();
    sub_24EC20494(&qword_27F214060, MEMORY[0x277D21C48], MEMORY[0x277D21C50]);
    sub_24F92CCF8();
    LOBYTE(v15) = *(v3 + v9[6]);
    v19 = 2;
    sub_24E777488();
    sub_24F92CCF8();
    v10 = (v3 + v9[7]);
    v11 = v10[1];
    v12 = v10[2];
    v13 = v10[3];
    v15 = *v10;
    v16 = v11;
    v17 = v12;
    v18 = v13;
    v19 = 3;
    sub_24EC18018(v15, v11, v12, v13);
    sub_24EC1805C();
    sub_24F92CCF8();
    sub_24EC180B0(v15, v16, v17, v18);
    v15 = *(v3 + v9[8]);
    v19 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B938, &unk_24F98D288);
    sub_24EC189BC(&qword_27F22B940, sub_24EC180F4, MEMORY[0x277D83948]);
    sub_24F92CCF8();
    LOBYTE(v15) = 5;
    sub_24F92CCA8();
    LOBYTE(v15) = 6;
    sub_24F92CCA8();
    LOBYTE(v15) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    sub_24E602068(&qword_27F21BE88, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE0]);
    sub_24F92CCF8();
    LOBYTE(v15) = 8;
    sub_24F92CCF8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_24EC17FA4()
{
  result = qword_27F22B928;
  if (!qword_27F22B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B928);
  }

  return result;
}

double sub_24EC18018(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_24EC1805C()
{
  result = qword_27F22B930;
  if (!qword_27F22B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B930);
  }

  return result;
}

uint64_t sub_24EC180B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

unint64_t sub_24EC180F4()
{
  result = qword_27F22B948;
  if (!qword_27F22B948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B948);
  }

  return result;
}

uint64_t PlayTogetherWelcomePage.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v34 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v33 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v33 - v7;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B950, &qword_24F98D298);
  v9 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v11 = &v33 - v10;
  v12 = type metadata accessor for PlayTogetherWelcomePage(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_24EC17FA4();
  v36 = v11;
  v16 = v37;
  sub_24F92D108();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v37 = v14;
  type metadata accessor for HeaderPresentation(0);
  LOBYTE(v39) = 0;
  sub_24EC20494(&qword_27F21BEB8, type metadata accessor for HeaderPresentation, &protocol conformance descriptor for HeaderPresentation);
  sub_24F92CC18();
  v17 = v8;
  v18 = v37;
  sub_24E6009C8(v17, v37, qword_27F220E38, &unk_24F965190);
  sub_24F9289E8();
  LOBYTE(v39) = 1;
  sub_24EC20494(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
  sub_24F92CC18();
  sub_24E6009C8(v5, v18 + v12[5], &qword_27F213FB0, &qword_24F93E6B0);
  v42 = 2;
  sub_24E777690();
  sub_24F92CC18();
  *(v18 + v12[6]) = v39;
  v42 = 3;
  sub_24EC18968();
  sub_24F92CC18();
  v19 = (v18 + v12[7]);
  v20 = v40;
  *v19 = v39;
  v19[1] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B938, &unk_24F98D288);
  v42 = 4;
  sub_24EC189BC(&qword_27F22B968, sub_24EC18A34, MEMORY[0x277D83978]);
  sub_24F92CC18();
  *(v18 + v12[8]) = v39;
  LOBYTE(v39) = 5;
  v21 = sub_24F92CBC8();
  v22 = (v18 + v12[9]);
  *v22 = v21;
  v22[1] = v23;
  LOBYTE(v39) = 6;
  v24 = sub_24F92CBC8();
  v25 = (v18 + v12[10]);
  *v25 = v24;
  v25[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
  v42 = 7;
  sub_24E602068(&qword_27F21BEE8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D21FE8]);
  sub_24F92CC18();
  v27 = &v37[v12[11]];
  v28 = v40;
  *v27 = v39;
  *(v27 + 1) = v28;
  *(v27 + 4) = v41;
  v42 = 8;
  sub_24F92CC18();
  (*(v9 + 8))(v36, v35);
  v29 = v37;
  v30 = &v37[v12[12]];
  v31 = v40;
  *v30 = v39;
  *(v30 + 1) = v31;
  *(v30 + 4) = v41;
  sub_24EC1BBA4(v29, v34, type metadata accessor for PlayTogetherWelcomePage);
  __swift_destroy_boxed_opaque_existential_1(v38);
  return sub_24EC18A88(v29);
}

unint64_t sub_24EC18968()
{
  result = qword_27F22B960;
  if (!qword_27F22B960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B960);
  }

  return result;
}

uint64_t sub_24EC189BC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B938, &unk_24F98D288);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24EC18A34()
{
  result = qword_27F22B970;
  if (!qword_27F22B970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B970);
  }

  return result;
}

uint64_t sub_24EC18A88(uint64_t a1)
{
  v2 = type metadata accessor for PlayTogetherWelcomePage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC18B14()
{
  if (*v0)
  {
    return 0x7478655479646F62;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t sub_24EC18B4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7478655479646F62 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EC18C24(uint64_t a1)
{
  v2 = sub_24EC18E30();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EC18C60(uint64_t a1)
{
  v2 = sub_24EC18E30();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PlayTogetherWelcomeParagraph.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B978, &qword_24F98D2A8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[1] = *(v1 + 24);
  v10[2] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC18E30();
  sub_24F92D128();
  v12 = 0;
  v8 = v10[3];
  sub_24F92CCA8();
  if (!v8)
  {
    v11 = 1;
    sub_24F92CD08();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24EC18E30()
{
  result = qword_27F22B980;
  if (!qword_27F22B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B980);
  }

  return result;
}

uint64_t PlayTogetherWelcomeParagraph.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B988, &qword_24F98D2B0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EC18E30();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = 0;
  v9 = sub_24F92CBC8();
  v11 = v10;
  v17 = v9;
  v18 = 1;
  v12 = sub_24F92CC28();
  v14 = v13;
  (*(v6 + 8))(v8, v5);
  *a2 = v17;
  a2[1] = v11;
  a2[2] = v12;
  a2[3] = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

__n128 sub_24EC190B4(uint64_t a1)
{
  v1 = sub_24F927618();
  xmmword_27F39BF10 = xmmword_24F947C50;
  unk_27F39BF20 = xmmword_24F98D260;
  *&xmmword_27F39BF30 = v1;
  *(&xmmword_27F39BF30 + 1) = v2;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39BF40 = result;
  xmmword_27F39BF50 = xmmword_24F98D270;
  qword_27F39BF60 = 0x4036000000000000;
  return result;
}

__n128 sub_24EC19104(uint64_t a1)
{
  v1 = sub_24F927618();
  xmmword_27F39BF70 = xmmword_24F947C70;
  unk_27F39BF80 = xmmword_24F98D260;
  *&xmmword_27F39BF90 = v1;
  *(&xmmword_27F39BF90 + 1) = v2;
  __asm { FMOV            V0.2D, #16.0 }

  xmmword_27F39BFA0 = result;
  xmmword_27F39BFB0 = xmmword_24F98D270;
  qword_27F39BFC0 = 0x4030000000000000;
  return result;
}

uint64_t PlayTogetherWelcomePageView.init(configuration:objectGraph:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for PlayTogetherWelcomePageView(0);
  v7 = v6[6];
  *(a3 + v7) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v8 = v6[7];
  *(a3 + v8) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v9 = v6[8];
  *(a3 + v9) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v10 = a3 + v6[9];
  *v10 = swift_getKeyPath();
  *(v10 + 40) = 0;
  v11 = v6[10];
  *(a3 + v11) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  swift_storeEnumTagMultiPayload();
  result = sub_24EC1BC10(a1, a3, type metadata accessor for PlayTogetherWelcomePage);
  *(a3 + v6[5]) = a2;
  return result;
}

double sub_24EC192EC@<D0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v68 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v54[-v13];
  MEMORY[0x28223BE20](v14);
  v67 = &v54[-v15];
  MEMORY[0x28223BE20](v16);
  v70 = &v54[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v54[-v22];
  sub_24EC19BAC(&v54[-v22]);
  v24 = v3[13];
  v63 = *MEMORY[0x277CE0560];
  v62 = v24;
  v60 = v3 + 13;
  v24(v20);
  v25 = v3[7];
  v64 = v3 + 7;
  v61 = v25;
  v25(v20, 0, 1, v2);
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v69 = v3;
  v27 = v3[6];
  v28 = v27(v9, 1, v2);
  v65 = v27;
  if (v28 != 1)
  {
    sub_24E60169C(v9, v70, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v56 = v5;
      v57 = v1;
      v30 = v69;
      v31 = v59;
      (v69[4])(v59, &v9[v26], v2);
      sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v32 = v70;
      v55 = sub_24F92AFF8();
      v33 = v30[1];
      v33(v31, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v33(v32, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v55 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v69[1])(v70, v2);
LABEL_6:
    v29 = v9;
LABEL_14:
    sub_24E601704(v29, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v56 = v5;
  v57 = v1;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v27(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v34 = v67;
  sub_24EC19D94(v67);
  v35 = v66;
  v62(v66, v63, v2);
  v61(v35, 0, 1, v2);
  v36 = *(v56 + 48);
  v37 = v68;
  sub_24E60169C(v34, v68, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v35, &v37[v36], &qword_27F215598, &qword_24F945EF0);
  v38 = v65;
  v39 = v2;
  if (v65(v37, 1, v2) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    if (v38(&v37[v36], 1, v2) == 1)
    {
      sub_24E601704(v37, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F2103F0 != -1)
      {
        swift_once();
      }

      v41 = &xmmword_27F39BF70;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v40 = v58;
  sub_24E60169C(v37, v58, &qword_27F215598, &qword_24F945EF0);
  if (v38(&v37[v36], 1, v39) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    (v69[1])(v40, v39);
LABEL_13:
    v29 = v37;
    goto LABEL_14;
  }

  v48 = v39;
  v49 = v35;
  v50 = v69;
  v51 = v59;
  (v69[4])(v59, &v37[v36], v48);
  sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v52 = sub_24F92AFF8();
  v53 = v50[1];
  v53(v51, v48);
  sub_24E601704(v49, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
  v53(v40, v48);
  sub_24E601704(v37, &qword_27F215598, &qword_24F945EF0);
  if (v52)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F2103E8 != -1)
  {
    swift_once();
  }

  v41 = &xmmword_27F39BF10;
LABEL_18:
  v42 = v41[3];
  v74 = v41[2];
  v75 = v42;
  v76 = v41[4];
  v77 = *(v41 + 10);
  v43 = v41[1];
  v72 = *v41;
  v73 = v43;
  v44 = v75;
  v45 = v71;
  *(v71 + 32) = v74;
  *(v45 + 48) = v44;
  *(v45 + 64) = v76;
  *(v45 + 80) = v77;
  result = *&v72;
  v47 = v73;
  *v45 = v72;
  *(v45 + 16) = v47;
  return result;
}

uint64_t sub_24EC19BAC@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlayTogetherWelcomePageView(0);
  sub_24E60169C(v1 + *(v10 + 24), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598, &qword_24F945EF0);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EC19D94@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  MEMORY[0x28223BE20](v7);
  v9 = &v13 - v8;
  v10 = type metadata accessor for PlayTogetherWelcomePageView(0);
  sub_24E60169C(v1 + *(v10 + 28), v9, &unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    return sub_24E6009C8(v9, a1, &qword_27F215598, &qword_24F945EF0);
  }

  sub_24F92BDC8();
  v12 = sub_24F9257A8();
  sub_24F921FD8();

  sub_24F924838();
  swift_getAtKeyPath();

  return (*(v4 + 8))(v6, v3);
}

double sub_24EC19F7C@<D0>(uint64_t a1@<X8>)
{
  v71 = a1;
  v2 = sub_24F925218();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v59 = &v54[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v5);
  v68 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v54[-v8];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v10 - 8);
  v58 = &v54[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v12);
  v66 = &v54[-v13];
  MEMORY[0x28223BE20](v14);
  v67 = &v54[-v15];
  MEMORY[0x28223BE20](v16);
  v70 = &v54[-v17];
  MEMORY[0x28223BE20](v18);
  v20 = &v54[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v54[-v22];
  sub_24EC19BAC(&v54[-v22]);
  v24 = v3[13];
  v63 = *MEMORY[0x277CE0560];
  v62 = v24;
  v60 = v3 + 13;
  v24(v20);
  v25 = v3[7];
  v64 = v3 + 7;
  v61 = v25;
  v25(v20, 0, 1, v2);
  v26 = *(v5 + 48);
  sub_24E60169C(v23, v9, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v20, &v9[v26], &qword_27F215598, &qword_24F945EF0);
  v69 = v3;
  v27 = v3[6];
  v28 = v27(v9, 1, v2);
  v65 = v27;
  if (v28 != 1)
  {
    sub_24E60169C(v9, v70, &qword_27F215598, &qword_24F945EF0);
    if (v27(&v9[v26], 1, v2) != 1)
    {
      v56 = v5;
      v57 = v1;
      v30 = v69;
      v31 = v59;
      (v69[4])(v59, &v9[v26], v2);
      sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
      v32 = v70;
      v55 = sub_24F92AFF8();
      v33 = v30[1];
      v33(v31, v2);
      sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
      v33(v32, v2);
      sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
      if ((v55 & 1) == 0)
      {
        goto LABEL_15;
      }

      goto LABEL_8;
    }

    sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
    (v69[1])(v70, v2);
LABEL_6:
    v29 = v9;
LABEL_14:
    sub_24E601704(v29, &unk_27F254F20, &qword_24F940790);
    goto LABEL_15;
  }

  v56 = v5;
  v57 = v1;
  sub_24E601704(v20, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v23, &qword_27F215598, &qword_24F945EF0);
  if (v27(&v9[v26], 1, v2) != 1)
  {
    goto LABEL_6;
  }

  sub_24E601704(v9, &qword_27F215598, &qword_24F945EF0);
LABEL_8:
  v34 = v67;
  sub_24EC19D94(v67);
  v35 = v66;
  v62(v66, v63, v2);
  v61(v35, 0, 1, v2);
  v36 = *(v56 + 48);
  v37 = v68;
  sub_24E60169C(v34, v68, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v35, &v37[v36], &qword_27F215598, &qword_24F945EF0);
  v38 = v65;
  v39 = v2;
  if (v65(v37, 1, v2) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    if (v38(&v37[v36], 1, v2) == 1)
    {
      sub_24E601704(v37, &qword_27F215598, &qword_24F945EF0);
LABEL_20:
      if (qword_27F210D38 != -1)
      {
        swift_once();
      }

      v41 = &xmmword_27F39D220;
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  v40 = v58;
  sub_24E60169C(v37, v58, &qword_27F215598, &qword_24F945EF0);
  if (v38(&v37[v36], 1, v39) == 1)
  {
    sub_24E601704(v35, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
    (v69[1])(v40, v39);
LABEL_13:
    v29 = v37;
    goto LABEL_14;
  }

  v48 = v39;
  v49 = v35;
  v50 = v69;
  v51 = v59;
  (v69[4])(v59, &v37[v36], v48);
  sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
  v52 = sub_24F92AFF8();
  v53 = v50[1];
  v53(v51, v48);
  sub_24E601704(v49, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v34, &qword_27F215598, &qword_24F945EF0);
  v53(v40, v48);
  sub_24E601704(v37, &qword_27F215598, &qword_24F945EF0);
  if (v52)
  {
    goto LABEL_20;
  }

LABEL_15:
  if (qword_27F210D30 != -1)
  {
    swift_once();
  }

  v41 = &xmmword_27F39D1C0;
LABEL_18:
  v42 = v41[3];
  v74 = v41[2];
  v75 = v42;
  v76 = v41[4];
  v77 = *(v41 + 10);
  v43 = v41[1];
  v72 = *v41;
  v73 = v43;
  v44 = v75;
  v45 = v71;
  *(v71 + 32) = v74;
  *(v45 + 48) = v44;
  *(v45 + 64) = v76;
  *(v45 + 80) = v77;
  result = *&v72;
  v47 = v73;
  *v45 = v72;
  *(v45 + 16) = v47;
  return result;
}

BOOL sub_24EC1A83C()
{
  v1 = sub_24F925218();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v50 = &v38[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254F20, &qword_24F940790);
  MEMORY[0x28223BE20](v4);
  v48 = &v38[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v6);
  v8 = &v38[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215598, &qword_24F945EF0);
  MEMORY[0x28223BE20](v9 - 8);
  v40 = &v38[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v46 = &v38[-v12];
  MEMORY[0x28223BE20](v13);
  v47 = &v38[-v14];
  MEMORY[0x28223BE20](v15);
  v49 = &v38[-v16];
  MEMORY[0x28223BE20](v17);
  v19 = &v38[-v18];
  MEMORY[0x28223BE20](v20);
  v22 = &v38[-v21];
  v45 = v0;
  sub_24EC19BAC(&v38[-v21]);
  v23 = v2[13];
  v43 = *MEMORY[0x277CE0560];
  v42 = v23;
  v23(v19);
  v41 = v2[7];
  v41(v19, 0, 1, v1);
  v44 = v4;
  v24 = *(v4 + 48);
  sub_24E60169C(v22, v8, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v19, &v8[v24], &qword_27F215598, &qword_24F945EF0);
  v52 = v2;
  v25 = v2[6];
  if (v25(v8, 1, v1) == 1)
  {
    v51 = v25;
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    if (v51(&v8[v24], 1, v1) != 1)
    {
LABEL_12:
      sub_24E601704(v8, &unk_27F254F20, &qword_24F940790);
      return 1;
    }

    sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
  }

  else
  {
    v26 = v49;
    sub_24E60169C(v8, v49, &qword_27F215598, &qword_24F945EF0);
    if (v25(&v8[v24], 1, v1) == 1)
    {
      v27 = v26;
LABEL_11:
      sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
      sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
      (v52[1])(v27, v1);
      goto LABEL_12;
    }

    v51 = v25;
    (v52[4])(v50, &v8[v24], v1);
    sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v39 = sub_24F92AFF8();
    v28 = v52[1];
    v28(v50, v1);
    sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
    v28(v26, v1);
    sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
    if ((v39 & 1) == 0)
    {
      return 1;
    }
  }

  v22 = v47;
  sub_24EC19D94(v47);
  v19 = v46;
  v42(v46, v43, v1);
  v41(v19, 0, 1, v1);
  v29 = *(v44 + 48);
  v8 = v48;
  sub_24E60169C(v22, v48, &qword_27F215598, &qword_24F945EF0);
  sub_24E60169C(v19, &v8[v29], &qword_27F215598, &qword_24F945EF0);
  v30 = v51;
  if (v51(v8, 1, v1) != 1)
  {
    v27 = v40;
    sub_24E60169C(v8, v40, &qword_27F215598, &qword_24F945EF0);
    if (v30(&v8[v29], 1, v1) == 1)
    {
      goto LABEL_11;
    }

    v32 = v19;
    v33 = v22;
    v34 = v52;
    v35 = v50;
    (v52[4])(v50, &v8[v29], v1);
    sub_24EC20494(&qword_27F215650, MEMORY[0x277CE0570], MEMORY[0x277CE0590]);
    v36 = sub_24F92AFF8();
    v37 = v34[1];
    v37(v35, v1);
    sub_24E601704(v32, &qword_27F215598, &qword_24F945EF0);
    sub_24E601704(v33, &qword_27F215598, &qword_24F945EF0);
    v37(v27, v1);
    sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
    return (v36 & 1) == 0;
  }

  sub_24E601704(v19, &qword_27F215598, &qword_24F945EF0);
  sub_24E601704(v22, &qword_27F215598, &qword_24F945EF0);
  if (v30(&v8[v29], 1, v1) != 1)
  {
    goto LABEL_12;
  }

  sub_24E601704(v8, &qword_27F215598, &qword_24F945EF0);
  return 0;
}

uint64_t sub_24EC1AFB0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PlayTogetherWelcomePageView(0);
  result = sub_24E60169C(v1 + *(v7 + 36), v11, &qword_27F215690, &unk_24F98D8E0);
  if (v13 == 1)
  {
    v9 = v11[1];
    *a1 = v11[0];
    *(a1 + 16) = v9;
    *(a1 + 32) = v12;
  }

  else
  {
    sub_24F92BDC8();
    v10 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

uint64_t sub_24EC1B12C@<X0>(void *a1@<X8>)
{
  v3 = sub_24F924848();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  MEMORY[0x28223BE20](v7);
  v9 = &v14 - v8;
  v10 = type metadata accessor for PlayTogetherWelcomePageView(0);
  sub_24E60169C(v1 + *(v10 + 40), v9, &qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v11 = sub_24F921B58();
    return (*(*(v11 - 8) + 32))(a1, v9, v11);
  }

  else
  {
    sub_24F92BDC8();
    v13 = sub_24F9257A8();
    sub_24F921FD8();

    sub_24F924838();
    swift_getAtKeyPath();

    return (*(v4 + 8))(v6, v3);
  }
}

uint64_t PlayTogetherWelcomePageView.body.getter@<X0>(uint64_t a1@<X8>)
{
  v60 = a1;
  v2 = type metadata accessor for PlayTogetherWelcomePageView(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v48[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v61 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v48[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B990, &qword_24F98D3C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v48[-v10];
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B998, &qword_24F98D3C8);
  MEMORY[0x28223BE20](v58);
  v59 = &v48[-v12];
  v13 = type metadata accessor for PlayTogetherWelcomePage(0);
  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v14 = (v1 + *(v13 + 36));
  v15 = v14[1];
  v56 = *v14;
  v57 = v15;

  v55 = sub_24F926C88();
  v50 = v13;
  sub_24E60169C(v1 + *(v13 + 44), &v63, &qword_27F22B958, &qword_24F98D2A0);
  if (v65 == 1)
  {
    sub_24E601704(&v63, &qword_27F22B958, &qword_24F98D2A0);
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
  }

  else
  {
    sub_24E60169C(&v63, &v66, qword_27F21B590, &unk_24F93BE30);
    sub_24E601704(&v63, &qword_27F213EA8, &unk_24F93D030);
  }

  sub_24E60169C(v69, (v11 + 88), qword_27F21B590, &unk_24F93BE30);
  v16 = *(v1 + *(v2 + 20));
  v53 = 0x800000024FA56AB0;
  sub_24EC1BBA4(v1, v8, type metadata accessor for PlayTogetherWelcomePageView);
  v17 = *(v3 + 80);
  v18 = v8;
  v54 = v8;
  v19 = (v17 + 16) & ~v17;
  v52 = swift_allocObject();
  sub_24EC1BC10(v18, v52 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  sub_24EC1BBA4(v1, v5, type metadata accessor for PlayTogetherWelcomePageView);
  v51 = swift_allocObject();
  sub_24EC1BC10(v5, v51 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  sub_24EC1BBA4(v1, v5, type metadata accessor for PlayTogetherWelcomePageView);
  v20 = swift_allocObject();
  sub_24EC1BC10(v5, v20 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  sub_24E60169C(v1, &v11[v9[34]], qword_27F220E38, &unk_24F965190);
  LODWORD(v50) = *(v1 + *(v50 + 24));

  v49 = sub_24EC1A83C();
  v21 = &v11[v9[37]];
  LOBYTE(v62) = 0;
  sub_24F926F28();
  v22 = v64;
  *v21 = v63;
  *(v21 + 1) = v22;
  v23 = &v11[v9[38]];
  LOBYTE(v62) = 0;
  sub_24F926F28();
  v24 = v64;
  *v23 = v63;
  *(v23 + 1) = v24;
  v25 = &v11[v9[39]];
  v62 = 0;
  sub_24F926F28();
  v26 = v64;
  *v25 = v63;
  v25[1] = v26;
  v27 = v9[40];
  *&v11[v27] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  swift_storeEnumTagMultiPayload();
  v28 = v9[41];
  *&v11[v28] = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  v29 = v9[42];
  *&v11[v29] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  swift_storeEnumTagMultiPayload();
  v30 = &v11[v9[43]];
  *v30 = sub_24F923398() & 1;
  *(v30 + 1) = v31;
  v30[16] = v32 & 1;
  v33 = v66;
  *(v11 + 40) = v67;
  v34 = v57;
  *v11 = v56;
  *(v11 + 1) = v34;
  *(v11 + 2) = v55;
  v35 = v68;
  *(v11 + 24) = v33;
  *(v11 + 64) = 0;
  *(v11 + 9) = 0;
  *(v11 + 10) = 0;
  *(v11 + 7) = v35;
  *(v11 + 8) = 0;
  *(v11 + 17) = v16;
  *(v11 + 18) = 0xD00000000000001BLL;
  *(v11 + 19) = v53;
  *(v11 + 20) = sub_24EC1BC78;
  *(v11 + 21) = v52;
  *(v11 + 22) = sub_24EC1D544;
  *(v11 + 23) = v51;
  *(v11 + 24) = sub_24EC1D6EC;
  *(v11 + 25) = v20;
  *(v11 + 26) = CGSizeMake;
  *(v11 + 27) = 0;
  v11[v9[35]] = v50;
  v11[v9[36]] = v49;
  sub_24F925818();
  sub_24F923318();
  *&v66 = v36;
  *(&v66 + 1) = v37;
  *&v67 = v38;
  *(&v67 + 1) = v39;
  LOBYTE(v68) = 0;
  v40 = v59;
  sub_24F9252D8();
  sub_24E6009C8(v11, v40, &qword_27F22B990, &qword_24F98D3C0);
  v41 = v1;
  v42 = v54;
  sub_24EC1BBA4(v41, v54, type metadata accessor for PlayTogetherWelcomePageView);
  v43 = swift_allocObject();
  sub_24EC1BC10(v42, v43 + v19, type metadata accessor for PlayTogetherWelcomePageView);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B9A0, &qword_24F98D3F0);
  v45 = v60;
  v46 = (v60 + *(v44 + 36));
  sub_24F923AD8();
  sub_24F92B818();
  sub_24E601704(v69, qword_27F21B590, &unk_24F93BE30);
  *v46 = &unk_24F98D3E8;
  v46[1] = v43;
  return sub_24E6009C8(v40, v45, &qword_27F22B998, &qword_24F98D3C8);
}

uint64_t sub_24EC1BA34@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  sub_24EC19F7C(v21);
  v4 = type metadata accessor for PlayTogetherWelcomePage(0);
  v5 = (a1 + v4[7]);
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = *(a1 + v4[8]);
  v11 = v4[5];
  v12 = type metadata accessor for PlayTogetherWelcomePageView.ContentView(0);
  sub_24E60169C(a1 + v11, a2 + *(v12 + 28), &qword_27F213FB0, &qword_24F93E6B0);
  v13 = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v13;
  *(a2 + 64) = v21[4];
  v14 = v22;
  v15 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  sub_24EC18018(v6, v7, v8, v9);
  v16 = qword_27F211270;

  if (v16 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  v18 = sub_24F9238D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAD0, &unk_24F98D920);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  return result;
}

uint64_t sub_24EC1BBA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC1BC10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EC1BC78@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for PlayTogetherWelcomePageView(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_24EC1BA34(v4, a1);
}

double sub_24EC1BCF8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EC192EC(v9);
  v4 = *(type metadata accessor for PlayTogetherWelcomePage(0) + 20);
  v5 = type metadata accessor for PlayTogetherWelcomePageView.Header(0);
  sub_24E60169C(a1 + v4, a2 + *(v5 + 20), &qword_27F213FB0, &qword_24F93E6B0);
  v6 = v9[3];
  *(a2 + 32) = v9[2];
  *(a2 + 48) = v6;
  *(a2 + 64) = v9[4];
  *(a2 + 80) = v10;
  result = *v9;
  v8 = v9[1];
  *a2 = v9[0];
  *(a2 + 16) = v8;
  return result;
}

uint64_t objectdestroyTm_29()
{
  v1 = type metadata accessor for PlayTogetherWelcomePageView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = v0 + ((v2 + 16) & ~v2);
  v4 = type metadata accessor for HeaderPresentation(0);
  if ((*(*(v4 - 1) + 48))(v3, 1, v4))
  {
    goto LABEL_55;
  }

  v5 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v6 = *(*(v5 - 1) + 48);
  if (!v6(v3, 1, v5))
  {

    v7 = v3 + v5[5];
    v8 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v8 - 8) + 48))(v7, 1, v8))
    {
      goto LABEL_4;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v75 = sub_24F9289E8();
          (*(*(v75 - 8) + 8))(v7, v75);
          goto LABEL_4;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_4:
          v9 = v3 + v5[7];
          v10 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v12 = sub_24F928388();
              (*(*(v12 - 8) + 8))(v9, v12);
            }
          }

          v13 = (v3 + v5[10]);
          if (v13[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v13);
          }

          goto LABEL_15;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v63 = v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v64 = type metadata accessor for JSColor(0);
        if (!(*(*(v64 - 8) + 48))(v63, 1, v64))
        {
          v65 = sub_24F928388();
          (*(*(v65 - 8) + 8))(v63, v65);
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload == 1)
      {
        v72 = sub_24F9289E8();
        v73 = *(v72 - 8);
        if (!(*(v73 + 48))(v7, 1, v72))
        {
          (*(v73 + 8))(v7, v72);
        }

        if (*(v7 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_4;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_4;
      }
    }

    goto LABEL_4;
  }

LABEL_15:
  v14 = v3 + v4[5];
  if (v6(v14, 1, v5))
  {
    goto LABEL_32;
  }

  v15 = v14 + v5[5];
  v16 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v16 - 8) + 48))(v15, 1, v16))
  {
    goto LABEL_17;
  }

  v19 = swift_getEnumCaseMultiPayload();
  if (v19 <= 2)
  {
    if (!v19)
    {

      v66 = v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v67 = type metadata accessor for JSColor(0);
      if (!(*(*(v67 - 8) + 48))(v66, 1, v67))
      {
        v68 = sub_24F928388();
        (*(*(v68 - 8) + 8))(v66, v68);
      }

      goto LABEL_17;
    }

    if (v19 == 1)
    {
      v74 = sub_24F9289E8();
      v95 = *(v74 - 8);
      if (!(*(v95 + 48))(v15, 1, v74))
      {
        (*(v95 + 8))(v15, v74);
      }

      if (*(v15 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_17;
    }

    if (v19 != 2)
    {
      goto LABEL_17;
    }

LABEL_45:

    goto LABEL_17;
  }

  switch(v19)
  {
    case 3:
      goto LABEL_45;
    case 4:
      v78 = sub_24F9289E8();
      (*(*(v78 - 8) + 8))(v15, v78);
      break;
    case 5:
      goto LABEL_45;
  }

LABEL_17:
  v17 = v14 + v5[7];
  v18 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v18 - 8) + 48))(v17, 1, v18))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v20 = sub_24F928388();
      (*(*(v20 - 8) + 8))(v17, v20);
    }
  }

  v21 = (v14 + v5[10]);
  if (v21[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v21);
  }

LABEL_32:
  v22 = v3 + v4[6];
  if (v6(v22, 1, v5))
  {
    goto LABEL_49;
  }

  v23 = v22 + v5[5];
  v24 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24))
  {
    goto LABEL_34;
  }

  v27 = swift_getEnumCaseMultiPayload();
  if (v27 <= 2)
  {
    if (!v27)
    {

      v69 = v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v70 = type metadata accessor for JSColor(0);
      if (!(*(*(v70 - 8) + 48))(v69, 1, v70))
      {
        v71 = sub_24F928388();
        (*(*(v71 - 8) + 8))(v69, v71);
      }

      goto LABEL_34;
    }

    if (v27 == 1)
    {
      v76 = sub_24F9289E8();
      v77 = *(v76 - 8);
      if (!(*(v77 + 48))(v23, 1, v76))
      {
        (*(v77 + 8))(v23, v76);
      }

      if (*(v23 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_34;
    }

    if (v27 != 2)
    {
      goto LABEL_34;
    }

LABEL_100:

    goto LABEL_34;
  }

  switch(v27)
  {
    case 3:
      goto LABEL_100;
    case 4:
      v79 = sub_24F9289E8();
      (*(*(v79 - 8) + 8))(v23, v79);
      break;
    case 5:
      goto LABEL_100;
  }

LABEL_34:
  v25 = v22 + v5[7];
  v26 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v26 - 8) + 48))(v25, 1, v26))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v28 = sub_24F928388();
      (*(*(v28 - 8) + 8))(v25, v28);
    }
  }

  v29 = (v22 + v5[10]);
  if (v29[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v29);
  }

LABEL_49:
  v30 = v3 + v4[7];
  if (*(v30 + 56) == 1)
  {
  }

  else if (!*(v30 + 56))
  {

    if (*(v30 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v30 + 16));
    }
  }

  v31 = v3 + v4[8];
  v32 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v32 - 8) + 48))(v31, 1, v32))
  {
    v51 = swift_getEnumCaseMultiPayload();
    if (v51 == 2)
    {
      goto LABEL_146;
    }

    if (v51 != 1)
    {
      if (v51)
      {
        goto LABEL_55;
      }

      v52 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v52 - 8) + 48))(v31, 1, v52))
      {
        goto LABEL_55;
      }

      v53 = swift_getEnumCaseMultiPayload();
      if (v53 > 2)
      {
        if (v53 != 3)
        {
          if (v53 == 4)
          {
            v94 = sub_24F9289E8();
            (*(*(v94 - 8) + 8))(v31, v94);
            goto LABEL_55;
          }

          if (v53 != 5)
          {
            goto LABEL_55;
          }
        }

        goto LABEL_146;
      }

      if (v53)
      {
        if (v53 == 1)
        {
          v92 = sub_24F9289E8();
          v93 = *(v92 - 8);
          if (!(*(v93 + 48))(v31, 1, v92))
          {
            (*(v93 + 8))(v31, v92);
          }

          if (!*(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_55;
          }
        }

        else if (v53 != 2)
        {
          goto LABEL_55;
        }

LABEL_146:

        goto LABEL_55;
      }

      v58 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v59 = type metadata accessor for JSColor(0);
      if ((*(*(v59 - 8) + 48))(v58, 1, v59))
      {
        goto LABEL_55;
      }

LABEL_96:
      v60 = sub_24F928388();
      (*(*(v60 - 8) + 8))(v58, v60);

      goto LABEL_55;
    }

    v54 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v55 = *(*(v54 - 8) + 48);
    if (v55(v31, 1, v54))
    {
LABEL_94:
      v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v57 = v31 + *(v56 + 48);
      if (v55(v57, 1, v54))
      {
        goto LABEL_95;
      }

      v62 = swift_getEnumCaseMultiPayload();
      if (v62 <= 2)
      {
        if (v62)
        {
          if (v62 != 1)
          {
            if (v62 != 2)
            {
              goto LABEL_95;
            }

LABEL_142:

            goto LABEL_95;
          }

          v88 = sub_24F9289E8();
          v89 = *(v88 - 8);
          if (!(*(v89 + 48))(v57, 1, v88))
          {
            (*(v89 + 8))(v57, v88);
          }

          if (*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
          }
        }

        else
        {

          v83 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
          v84 = type metadata accessor for JSColor(0);
          if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
          {
            v85 = sub_24F928388();
            (*(*(v85 - 8) + 8))(v83, v85);
          }
        }

LABEL_95:
        v58 = v31 + *(v56 + 80);
        v59 = type metadata accessor for JSColor(0);
        if ((*(*(v59 - 8) + 48))(v58, 1, v59))
        {
          goto LABEL_55;
        }

        goto LABEL_96;
      }

      if (v62 != 3)
      {
        if (v62 == 4)
        {
          v91 = sub_24F9289E8();
          (*(*(v91 - 8) + 8))(v57, v91);
          goto LABEL_95;
        }

        if (v62 != 5)
        {
          goto LABEL_95;
        }
      }

      goto LABEL_142;
    }

    v61 = swift_getEnumCaseMultiPayload();
    if (v61 > 2)
    {
      if (v61 != 3)
      {
        if (v61 == 4)
        {
          v90 = sub_24F9289E8();
          (*(*(v90 - 8) + 8))(v31, v90);
          goto LABEL_94;
        }

        if (v61 != 5)
        {
          goto LABEL_94;
        }
      }
    }

    else
    {
      if (!v61)
      {

        v80 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v81 = type metadata accessor for JSColor(0);
        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
        {
          v82 = sub_24F928388();
          (*(*(v82 - 8) + 8))(v80, v82);
        }

        goto LABEL_94;
      }

      if (v61 == 1)
      {
        v86 = sub_24F9289E8();
        v87 = *(v86 - 8);
        if (!(*(v87 + 48))(v31, 1, v86))
        {
          (*(v87 + 8))(v31, v86);
        }

        if (*(v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_94;
      }

      if (v61 != 2)
      {
        goto LABEL_94;
      }
    }

    goto LABEL_94;
  }

LABEL_55:
  v33 = type metadata accessor for PlayTogetherWelcomePage(0);
  v34 = v33[5];
  v35 = sub_24F9289E8();
  v36 = *(v35 - 8);
  if (!(*(v36 + 48))(v3 + v34, 1, v35))
  {
    (*(v36 + 8))(v3 + v34, v35);
  }

  if (*(v3 + v33[7] + 24))
  {
  }

  v37 = (v3 + v33[11]);
  if (v37[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v37);
  }

  v38 = (v3 + v33[12]);
  if (v38[3] >= 2uLL)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v39 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254ED0, &qword_24F9407C0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v40 = sub_24F925218();
    v41 = *(v40 - 8);
    if (!(*(v41 + 48))(v3 + v39, 1, v40))
    {
      (*(v41 + 8))(v3 + v39, v40);
    }
  }

  else
  {
  }

  v42 = v1[7];
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v43 = sub_24F925218();
    v44 = *(v43 - 8);
    if (!(*(v44 + 48))(v3 + v42, 1, v43))
    {
      (*(v44 + 8))(v3 + v42, v43);
    }
  }

  else
  {
  }

  v45 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v46 = sub_24F923E98();
    (*(*(v46 - 8) + 8))(v3 + v45, v46);
  }

  else
  {
  }

  v47 = v3 + v1[9];
  if (*(v47 + 40))
  {
    if (*(v47 + 24))
    {
      __swift_destroy_boxed_opaque_existential_1(v47);
    }
  }

  else
  {
  }

  v48 = v1[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212938, &qword_24F939770);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v49 = sub_24F921B58();
    (*(*(v49 - 8) + 8))(v3 + v48, v49);
  }

  else
  {
  }

  return swift_deallocObject();
}

uint64_t sub_24EC1D55C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24EC19F7C(v21);
  v4 = type metadata accessor for PlayTogetherWelcomePage(0);
  v5 = (a1 + *(v4 + 28));
  v6 = *v5;
  v7 = v5[1];
  v8 = v5[2];
  v9 = v5[3];
  v10 = *(a1 + *(v4 + 32));
  v11 = *(type metadata accessor for PlayTogetherWelcomePageView.ContentView(0) + 28);
  v12 = sub_24F9289E8();
  (*(*(v12 - 8) + 56))(a2 + v11, 1, 1, v12);
  v13 = v21[3];
  *(a2 + 32) = v21[2];
  *(a2 + 48) = v13;
  *(a2 + 64) = v21[4];
  v14 = v22;
  v15 = v21[1];
  *a2 = v21[0];
  *(a2 + 16) = v15;
  *(a2 + 80) = v14;
  *(a2 + 88) = v6;
  *(a2 + 96) = v7;
  *(a2 + 104) = v8;
  *(a2 + 112) = v9;
  *(a2 + 120) = v10;
  sub_24EC18018(v6, v7, v8, v9);
  v16 = qword_27F211270;

  if (v16 != -1)
  {
    swift_once();
  }

  KeyPath = swift_getKeyPath();

  v18 = sub_24F9238D8();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAD0, &unk_24F98D920);
  v20 = (a2 + *(result + 36));
  *v20 = KeyPath;
  v20[1] = v18;
  return result;
}

uint64_t sub_24EC1D704(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for PlayTogetherWelcomePageView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
}

uint64_t sub_24EC1D788(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_24F921B58();
  v1[13] = v2;
  v1[14] = *(v2 - 8);
  v1[15] = swift_task_alloc();
  sub_24F92B7F8();
  v1[16] = sub_24F92B7E8();
  v4 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24EC1D87C, v4, v3);
}

uint64_t sub_24EC1D87C()
{

  sub_24EC1AFB0((v0 + 2));
  if (v0[5])
  {
    v2 = v0[14];
    v1 = v0[15];
    v3 = v0[13];
    __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
    v0[10] = type metadata accessor for ReportPromptDidPresentAction(0);
    v0[11] = sub_24EC20494(&qword_27F216358, type metadata accessor for ReportPromptDidPresentAction, &unk_24FA088C8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
    sub_24F928A98();
    *boxed_opaque_existential_1 = 2;
    sub_24EC1B12C(v1);
    sub_24F9218A8();
    (*(v2 + 8))(v1, v3);
    __swift_destroy_boxed_opaque_existential_1(v0 + 7);
    __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  }

  else
  {
    sub_24E601704((v0 + 2), &unk_27F212740, &unk_24F940730);
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_24EC1DA00()
{
  v2 = *(type metadata accessor for PlayTogetherWelcomePageView(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_24E614970;

  return sub_24EC1D788(v0 + v3);
}

uint64_t sub_24EC1DAE8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v40 = a1;
  v41 = sub_24F929888();
  v39 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v38 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA48, &qword_24F98D868);
  v5 = v4 - 8;
  MEMORY[0x28223BE20](v4);
  v7 = &v36 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA50, &qword_24F98D870);
  v9 = v8 - 8;
  MEMORY[0x28223BE20](v8);
  v11 = &v36 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA58, &qword_24F98D878);
  MEMORY[0x28223BE20](v12);
  v14 = &v36 - v13;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA60, &qword_24F98D880);
  MEMORY[0x28223BE20](v37);
  v16 = &v36 - v15;
  v17 = type metadata accessor for PlayTogetherWelcomePageView.Header(0);
  sub_24E60169C(v2 + *(v17 + 20), v7, &qword_27F213FB0, &qword_24F93E6B0);
  v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BA68, &unk_24F98D888) + 36)];
  *v18 = 0;
  *(v18 + 4) = 1;
  sub_24F927618();
  sub_24F9238C8();
  v19 = &v7[*(v5 + 44)];
  v20 = v45;
  *v19 = v44;
  *(v19 + 1) = v20;
  *(v19 + 2) = v46;
  sub_24F9242E8();
  sub_24E6009C8(v7, v11, &qword_27F22BA48, &qword_24F98D868);
  v21 = &v11[*(v9 + 44)];
  v22 = v52;
  *(v21 + 4) = v51;
  *(v21 + 5) = v22;
  *(v21 + 6) = v53;
  v23 = v48;
  *v21 = v47;
  *(v21 + 1) = v23;
  v24 = v50;
  *(v21 + 2) = v49;
  *(v21 + 3) = v24;
  LOBYTE(v5) = sub_24F925838();
  sub_24F923318();
  v26 = v25;
  v28 = v27;
  v30 = v29;
  v32 = v31;
  sub_24E6009C8(v11, v14, &qword_27F22BA50, &qword_24F98D870);
  v33 = &v14[*(v12 + 36)];
  *v33 = v5;
  *(v33 + 1) = v26;
  *(v33 + 2) = v28;
  *(v33 + 3) = v30;
  *(v33 + 4) = v32;
  v33[40] = 0;
  sub_24EC1FF6C();
  sub_24F9265E8();
  sub_24E601704(v14, &qword_27F22BA58, &qword_24F98D878);
  memset(v43, 0, 32);
  memset(v42, 0, sizeof(v42));
  v34 = v38;
  sub_24F9297A8();
  sub_24E601704(v42, &qword_27F2129B0, &unk_24F945320);
  sub_24E601704(v43, &qword_27F2129B0, &unk_24F945320);
  sub_24EC20250();
  sub_24F925EE8();
  (*(v39 + 8))(v34, v41);
  return sub_24E601704(v16, &qword_27F22BA60, &qword_24F98D880);
}

__n128 sub_24EC1DFB0@<Q0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAA0, &qword_24F98D898);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v12 - v4;
  *v5 = sub_24F924C88();
  *(v5 + 1) = 0;
  v5[16] = 1;
  v6 = &v5[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAA8, &qword_24F98D8A0) + 44)];
  *v6 = sub_24F924C98();
  *(v6 + 1) = 0x4034000000000000;
  v6[16] = 0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAB0, &qword_24F98D8A8);
  sub_24EC1E140(v1, &v6[*(v7 + 44)]);
  sub_24F927628();
  sub_24F9242E8();
  sub_24E6009C8(v5, a1, &qword_27F22BAA0, &qword_24F98D898);
  v8 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAB8, &unk_24F98D8B0) + 36);
  v9 = v12[5];
  *(v8 + 64) = v12[4];
  *(v8 + 80) = v9;
  *(v8 + 96) = v12[6];
  v10 = v12[1];
  *v8 = v12[0];
  *(v8 + 16) = v10;
  result = v12[3];
  *(v8 + 32) = v12[2];
  *(v8 + 48) = result;
  return result;
}

uint64_t sub_24EC1E140@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B08, &unk_24F964BA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v32 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC0, &qword_24F98D8C0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v32 - v12;
  v14 = *(a1 + 112);
  if (v14 && (v15 = *(a1 + 96)) != 0)
  {
    v33 = a2;
    v16 = *(a1 + 88);
    v17 = *(a1 + 104);

    *v7 = sub_24F924C98();
    *(v7 + 1) = 0x4024000000000000;
    v7[16] = 0;
    v18 = &v7[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B10, &unk_24F98D8D0) + 44)];
    v19 = v16;
    a2 = v33;
    sub_24EC1E414(v19, v15, v17, v14, v18);

    sub_24E6009C8(v7, v13, &qword_27F220B08, &unk_24F964BA0);
    (*(v5 + 56))(v13, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(&v32 - v12, 1, 1, v4);
  }

  v20 = *(a1 + 120);
  sub_24EC2030C(v13, v10);
  sub_24EC2030C(v10, a2);
  v21 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC8, &qword_24F98D8C8) + 48));
  v22 = *(a1 + 64);
  v36 = *(a1 + 48);
  v37 = v22;
  v23 = *(a1 + 80);
  v24 = *(a1 + 16);
  v34[0] = *a1;
  v34[1] = v24;
  v35 = *(a1 + 32);
  v25 = v35;
  *&v38 = v23;
  *(&v38 + 1) = v20;
  *v21 = v34[0];
  v21[1] = v24;
  v26 = v36;
  v27 = v38;
  v21[4] = v37;
  v21[5] = v27;
  v21[2] = v25;
  v21[3] = v26;

  sub_24EC2037C(v34, v39);
  sub_24EC203D8(v13);
  v28 = *(a1 + 48);
  v39[2] = *(a1 + 32);
  v39[3] = v28;
  v39[4] = *(a1 + 64);
  v29 = *(a1 + 80);
  v30 = *(a1 + 16);
  v39[0] = *a1;
  v39[1] = v30;
  v40 = v29;
  v41 = v20;
  sub_24EC20440(v39);
  return sub_24EC203D8(v10);
}

uint64_t sub_24EC1E414@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v49 = a3;
  v50 = a4;
  v56 = a5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v51);
  v52 = v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x28223BE20](v8);
  v53 = v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v48 - v11;
  v57 = a1;
  v58 = a2;
  v48[1] = sub_24E600AEC();

  v13 = sub_24F925E18();
  v15 = v14;
  v17 = v16;
  sub_24F925988();
  v18 = sub_24F925C98();
  v20 = v19;
  v22 = v21;
  v24 = v23;

  sub_24E600B40(v13, v15, v17 & 1);

  v57 = v18;
  v58 = v20;
  v22 &= 1u;
  v59 = v22;
  v60 = v24;
  sub_24F9268B8();
  sub_24E600B40(v18, v20, v22);

  v57 = v49;
  v58 = v50;

  v25 = sub_24F925E18();
  v27 = v26;
  LOBYTE(v15) = v28;
  v29 = sub_24F9251C8();
  v30 = *(v51 + 36);
  v31 = *MEMORY[0x277CE13B8];
  v32 = sub_24F927748();
  v33 = v52;
  (*(*(v32 - 8) + 104))(&v52[v30], v31, v32);
  *v33 = v29;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v34 = sub_24F925C58();
  v36 = v35;
  LOBYTE(v29) = v37;
  v51 = v38;
  sub_24E600B40(v25, v27, v15 & 1);

  sub_24E601704(v33, &qword_27F213F10, &unk_24F93BE10);
  v39 = v53;
  v40 = v54;
  v41 = *(v54 + 16);
  v42 = v12;
  v43 = v55;
  v41(v53, v12, v55);
  v44 = v56;
  v41(v56, v39, v43);
  v45 = &v44[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220B50, &qword_24F964C20) + 48)];
  *v45 = v34;
  *(v45 + 1) = v36;
  LOBYTE(v29) = v29 & 1;
  v45[16] = v29;
  *(v45 + 3) = v51;
  sub_24E5FD138(v34, v36, v29);
  v46 = *(v40 + 8);

  v46(v42, v43);
  sub_24E600B40(v34, v36, v29);

  return (v46)(v39, v43);
}

uint64_t sub_24EC1E84C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28) + 24);
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  v15 = v14 - 1;
  if (v15 < 0)
  {
    v15 = -1;
  }

  return (v15 + 1);
}

uint64_t sub_24EC1E994(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28) + 24) = a2;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_24EC1EAB8(uint64_t a1)
{
  sub_24EC1F294(319, &qword_27F220EC8, type metadata accessor for HeaderPresentation, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24EC1F294(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24E66ECF0(319, &qword_27F220ED0, &type metadata for Margins);
      if (v3 <= 0x3F)
      {
        sub_24E66ECF0(319, &qword_27F22B9B8, &type metadata for PlayTogetherWelcomeParagraph);
        if (v4 <= 0x3F)
        {
          sub_24EC1F230(319, &qword_27F22B9C0, &qword_27F22B938, &unk_24F98D288, MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
            if (v6 <= 0x3F)
            {
              sub_24EC1F230(319, &qword_27F22B9C8, &qword_27F213EA8, &unk_24F93D030, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24EC1ECC0(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = type metadata accessor for PlayTogetherWelcomePage(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_12:

    return v9(v10, a2, v8);
  }

  if (a2 == 0x7FFFFFFF)
  {
    v11 = *(a1 + a3[5]);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v8 = v13;
    v14 = *(v13 - 8);
    v15 = a3[6];
LABEL_11:
    v9 = *(v14 + 48);
    v10 = a1 + v15;
    goto LABEL_12;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v16 - 8) + 84) == a2)
  {
    v8 = v16;
    v14 = *(v16 - 8);
    v15 = a3[8];
    goto LABEL_11;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[10];

  return v18(v19, a2, v17);
}

uint64_t sub_24EC1EEB4(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = type metadata accessor for PlayTogetherWelcomePage(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_10:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + a4[5]) = (a2 - 1);
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F254DA0, &unk_24F947C80);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[6];
LABEL_9:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_10;
  }

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  if (*(*(v16 - 8) + 84) == a3)
  {
    v10 = v16;
    v14 = *(v16 - 8);
    v15 = a4[8];
    goto LABEL_9;
  }

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212710, &unk_24F940700);
  v18 = *(*(v17 - 8) + 56);
  v19 = a1 + a4[10];

  return v18(v19, a2, a2, v17);
}

void sub_24EC1F094(uint64_t a1)
{
  type metadata accessor for PlayTogetherWelcomePage(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24EC1F230(319, &qword_27F254DC0, &qword_27F215598, &qword_24F945EF0, MEMORY[0x277CDF468]);
      if (v3 <= 0x3F)
      {
        sub_24EC1F294(319, &qword_27F2168C8, MEMORY[0x277CDFA28], MEMORY[0x277CDF468]);
        if (v4 <= 0x3F)
        {
          sub_24EC1F230(319, &qword_27F22C050, &unk_27F212740, &unk_24F940730, MEMORY[0x277CDF468]);
          if (v5 <= 0x3F)
          {
            sub_24EC1F294(319, &qword_27F22C060, MEMORY[0x277D7EC08], MEMORY[0x277CDF468]);
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

void sub_24EC1F230(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_24EC1F294(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

unint64_t sub_24EC1F2FC()
{
  result = qword_27F22B9E0;
  if (!qword_27F22B9E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B9A0, &qword_24F98D3F0);
    sub_24EC1F3B8();
    sub_24EC20494(&qword_27F211A48, MEMORY[0x277CDD8B0], MEMORY[0x277CDD8A0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B9E0);
  }

  return result;
}

unint64_t sub_24EC1F3B8()
{
  result = qword_27F22B9E8;
  if (!qword_27F22B9E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22B998, &qword_24F98D3C8);
    sub_24E602068(&qword_27F22B9F0, &qword_27F22B990, &qword_24F98D3C0, &unk_24F9651C8);
    sub_24EC20494(&qword_27F2156E0, MEMORY[0x277CE0660], MEMORY[0x277CE0650]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22B9E8);
  }

  return result;
}

uint64_t sub_24EC1F4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_24EC1F54C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void sub_24EC1F5F4(uint64_t a1)
{
  sub_24EC1F294(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_24EC1F6A0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 88))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24EC1F6C0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 88) = v3;
  return result;
}

uint64_t sub_24EC1F724(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 112);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t sub_24EC1F800(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 112) = a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EC1F8D0(uint64_t a1)
{
  sub_24E66ECF0(319, &qword_27F22B9B8, &type metadata for PlayTogetherWelcomeParagraph);
  if (v1 <= 0x3F)
  {
    sub_24EC1F230(319, &qword_27F22B9C0, &qword_27F22B938, &unk_24F98D288, MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      sub_24EC1F294(319, &qword_27F213FD0, MEMORY[0x277D21C48], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_24EC1FA0C()
{
  result = qword_27F22BA18;
  if (!qword_27F22BA18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA18);
  }

  return result;
}

unint64_t sub_24EC1FA64()
{
  result = qword_27F22BA20;
  if (!qword_27F22BA20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA20);
  }

  return result;
}

unint64_t sub_24EC1FAF4()
{
  result = qword_27F22BA28;
  if (!qword_27F22BA28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA28);
  }

  return result;
}

unint64_t sub_24EC1FB4C()
{
  result = qword_27F22BA30;
  if (!qword_27F22BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA30);
  }

  return result;
}

unint64_t sub_24EC1FBA4()
{
  result = qword_27F22BA38;
  if (!qword_27F22BA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA38);
  }

  return result;
}

unint64_t sub_24EC1FBFC()
{
  result = qword_27F22BA40;
  if (!qword_27F22BA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA40);
  }

  return result;
}

uint64_t sub_24EC1FC50(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000024FA56AD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA56AF0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6772614D65676170 && a2 == 0xEB00000000736E69 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7061726761726170 && a2 == 0xE900000000000068 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7374656C6C7562 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B10 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA56B30 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x417972616D697270 && a2 == 0xED00006E6F697463 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x417373696D736964 && a2 == 0xED00006E6F697463)
  {

    return 8;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

unint64_t sub_24EC1FF6C()
{
  result = qword_27F22BA70;
  if (!qword_27F22BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA58, &qword_24F98D878);
    sub_24EC1FFF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA70);
  }

  return result;
}

unint64_t sub_24EC1FFF8()
{
  result = qword_27F22BA78;
  if (!qword_27F22BA78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA50, &qword_24F98D870);
    sub_24EC20084();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA78);
  }

  return result;
}

unint64_t sub_24EC20084()
{
  result = qword_27F22BA80;
  if (!qword_27F22BA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA48, &qword_24F98D868);
    sub_24EC20110();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA80);
  }

  return result;
}

unint64_t sub_24EC20110()
{
  result = qword_27F22BA88;
  if (!qword_27F22BA88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA68, &unk_24F98D888);
    sub_24EC2019C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA88);
  }

  return result;
}

unint64_t sub_24EC2019C()
{
  result = qword_27F22BA90;
  if (!qword_27F22BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213FB0, &qword_24F93E6B0);
    sub_24EC20494(&qword_27F214C28, MEMORY[0x277D21C48], MEMORY[0x277D7EEB8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA90);
  }

  return result;
}

unint64_t sub_24EC20250()
{
  result = qword_27F22BA98;
  if (!qword_27F22BA98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA60, &qword_24F98D880);
    sub_24EC1FF6C();
    sub_24EC20494(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BA98);
  }

  return result;
}

uint64_t sub_24EC2030C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC0, &qword_24F98D8C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EC203D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22BAC0, &qword_24F98D8C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EC20494(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24EC204E4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BA60, &qword_24F98D880);
  sub_24EC20250();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_24EC2054C()
{
  result = qword_27F22BAD8;
  if (!qword_27F22BAD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F22BAB8, &unk_24F98D8B0);
    sub_24E602068(&qword_27F22BAE0, &qword_27F22BAA0, &qword_24F98D898, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F22BAD8);
  }

  return result;
}

uint64_t sub_24EC20610(uint64_t a1)
{
  v32 = sub_24F91EB98();
  v3 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 16);
  v7 = MEMORY[0x277D84F90];
  if (!v6)
  {
    return v7;
  }

  v30 = v5;
  v25 = v1;
  v35 = MEMORY[0x277D84F90];
  sub_24F458518(0, v6, 0);
  v7 = v35;
  v8 = a1 + 64;
  result = sub_24F92C6B8();
  v10 = result;
  v11 = 0;
  v34 = *(a1 + 36);
  v28 = a1 + 64;
  v29 = v3 + 32;
  v26 = a1 + 72;
  v27 = v6;
  v31 = v3;
  while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a1 + 32))
  {
    v13 = v10 >> 6;
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
    {
      goto LABEL_23;
    }

    if (v34 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v33 = v11;
    v14 = a1;

    v15 = v30;
    sub_24F91EB68();

    v35 = v7;
    v17 = *(v7 + 16);
    v16 = *(v7 + 24);
    if (v17 >= v16 >> 1)
    {
      sub_24F458518((v16 > 1), v17 + 1, 1);
      v7 = v35;
    }

    *(v7 + 16) = v17 + 1;
    result = (*(v31 + 32))(v7 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v17, v15, v32);
    v12 = 1 << *(v14 + 32);
    if (v10 >= v12)
    {
      goto LABEL_25;
    }

    v8 = v28;
    v18 = *(v28 + 8 * v13);
    if ((v18 & (1 << v10)) == 0)
    {
      goto LABEL_26;
    }

    a1 = v14;
    if (v34 != *(v14 + 36))
    {
      goto LABEL_27;
    }

    v19 = v18 & (-2 << (v10 & 0x3F));
    if (v19)
    {
      v12 = __clz(__rbit64(v19)) | v10 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v13 << 6;
      v21 = v13 + 1;
      v22 = (v26 + 8 * v13);
      while (v21 < (v12 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          result = sub_24E6586A8(v10, v34, 0);
          v12 = __clz(__rbit64(v23)) + v20;
          goto LABEL_20;
        }
      }

      result = sub_24E6586A8(v10, v34, 0);
LABEL_20:
      a1 = v14;
    }

    v11 = v33 + 1;
    v10 = v12;
    if (v33 + 1 == v27)
    {
      return v7;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

GameStoreKit::HttpTemplateSubstitutions __swiftcall HttpTemplateSubstitutions.init(urlQuery:headers:jsonBody:formBody:)(Swift::OpaquePointer urlQuery, Swift::OpaquePointer headers, Swift::OpaquePointer jsonBody, Swift::OpaquePointer formBody)
{
  v9 = v4;
  v10 = MEMORY[0x277D84F90];
  sub_24E6086DC(MEMORY[0x277D84F90]);
  sub_24E6086DC(v10);
  sub_24E608448(v10);
  sub_24E6086DC(v10);

  v9->_rawValue = urlQuery._rawValue;
  v9[1]._rawValue = headers._rawValue;
  v9[2]._rawValue = jsonBody._rawValue;
  v9[3]._rawValue = formBody._rawValue;
  result.formBody._rawValue = v14;
  result.jsonBody._rawValue = v13;
  result.headers._rawValue = v12;
  result.urlQuery._rawValue = v11;
  return result;
}

Swift::Void __swiftcall HttpTemplateSubstitutions.setParameter(value:for:)(Swift::String value, GameStoreKit::HttpTemplateParameter *a2)
{
  object = value._object;
  countAndFlagsBits = value._countAndFlagsBits;
  v6 = a2->key._countAndFlagsBits;
  v5 = a2->key._object;
  if (a2->target > GameStoreKit_HttpTemplateParameter_Target_header)
  {
    if (a2->target == GameStoreKit_HttpTemplateParameter_Target_jsonBody)
    {
      v11 = MEMORY[0x277D837D0];
      v10 = value;

      sub_24E98859C(&v10, v6, v5);
    }

    else
    {

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v10._countAndFlagsBits = v2[3];
      sub_24E81D324(countAndFlagsBits, object, v6, v5, isUniquelyReferenced_nonNull_native);

      v2[3] = v10._countAndFlagsBits;
    }
  }

  else if (a2->target)
  {

    v8 = swift_isUniquelyReferenced_nonNull_native();
    v10._countAndFlagsBits = v2[1];
    sub_24E81D324(countAndFlagsBits, object, v6, v5, v8);

    v2[1] = v10._countAndFlagsBits;
  }

  else
  {

    v7 = swift_isUniquelyReferenced_nonNull_native();
    v10._countAndFlagsBits = *v2;
    sub_24E81D324(countAndFlagsBits, object, v6, v5, v7);

    *v2 = v10._countAndFlagsBits;
  }
}

void sub_24EC20BD4(void *a1, uint64_t a2)
{
  v3 = (a2 + 16);
  v4 = *(a2 + 16);
  if (!v4)
  {
    return;
  }

  v5 = v4 - 1;
  if (v4 == 1)
  {
    v7 = v2;
    v15 = a1;
LABEL_17:
    v17 = &v3[2 * v4];
    v19 = *v17;
    v18 = v17[1];
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);

    v20 = sub_24F92CDE8();
    *&v26[0] = v19;
    *(&v26[0] + 1) = v18;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    return;
  }

  v21 = *(a2 + 16);

  v7 = v2;
  v8 = 0;
  v9 = (a2 + 40);
  while (v5 != v8)
  {
    if (v8 >= *v3)
    {
      goto LABEL_20;
    }

    v13 = *(v9 - 1);
    v12 = *v9;
    *&v24 = v13;
    *(&v24 + 1) = *v9;
    swift_bridgeObjectRetain_n();
    v14 = [v7 __swift_objectForKeyedSubscript_];
    swift_unknownObjectRelease();
    if (v14)
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
    }

    v26[0] = v24;
    v26[1] = v25;
    if (*(&v25 + 1))
    {
      sub_24EC26E88();
      if (swift_dynamicCast())
      {

        v7 = v23;
        goto LABEL_6;
      }
    }

    else
    {
      sub_24E601704(v26, &qword_27F2129B0, &unk_24F945320);
    }

    v10 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
    *&v26[0] = v13;
    *(&v26[0] + 1) = v12;
    v11 = v10;
    [v7 __swift_setObject_forKeyedSubscript_];

    swift_unknownObjectRelease();
    v7 = v11;
LABEL_6:
    ++v8;
    v9 += 2;
    if (v5 == v8)
    {

      v4 = v21;
      v15 = a1;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
}

uint64_t HttpTemplateError.hashValue.getter()
{
  v1 = *v0;
  sub_24F92D068();
  MEMORY[0x253052A00](v1);
  return sub_24F92D0B8();
}

NSMutableDictionary __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HttpTemplateJsonBody.makeMutableDictionary()()
{
  v17[4] = *MEMORY[0x277D85DE8];
  v0 = sub_24F92B138();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F92B128();
  v4 = sub_24F92B0E8();
  v6 = v5;
  (*(v1 + 8))(v3, v0);
  if (v6 >> 60 == 15)
  {
    sub_24EC26E34();
    swift_allocError();
    *v7 = 2;
    return swift_willThrow();
  }

  else
  {
    v9 = objc_opt_self();
    v10 = sub_24F91F4C8();
    v16[0] = 0;
    v11 = [v9 JSONObjectWithData:v10 options:1 error:v16];

    v12 = v16[0];
    if (v11)
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E643A9C(v17, v16);
      sub_24EC26E88();
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_24E71CBAC(v4, v6);
        return v15;
      }

      else
      {
        sub_24EC26E34();
        swift_allocError();
        *v14 = 1;
        swift_willThrow();
        sub_24E71CBAC(v4, v6);
        return __swift_destroy_boxed_opaque_existential_1(v17);
      }
    }

    else
    {
      v13 = v12;
      sub_24F91F278();

      swift_willThrow();
      return sub_24E71CBAC(v4, v6);
    }
  }
}

unint64_t HttpTemplateJsonBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

unint64_t sub_24EC21208()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

uint64_t sub_24EC212A4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_24F928348();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a4 = v10;
    a4[1] = v11;
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = MEMORY[0x277D84F90];
    *v17 = a3;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D22538], v15);
    swift_willThrow();
    v18 = sub_24F9285B8();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_24F928388();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

void *HttpTemplateFormBody.makeDictionary()()
{
  sub_24E600AEC();
  v0 = sub_24F92C4E8();
  v1 = v0;
  v33 = *(v0 + 16);
  if (v33)
  {
    v2 = 0;
    v3 = v0 + 40;
    v4 = MEMORY[0x277D84F98];
    v32 = v0;
    while (v2 < *(v1 + 16))
    {

      v6 = sub_24F92C4E8();
      if (v6[2] < 2uLL)
      {

        sub_24EC26E34();
        swift_allocError();
        *v30 = 2;
        swift_willThrow();

        return v4;
      }

      v7 = v6[4];
      v8 = v6[5];

      v9 = sub_24F92C588();
      v11 = v10;

      if (v11)
      {
        v34 = v9;
        v35 = v11;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v14 = sub_24E76D644(v7, v8);
        v15 = v4[2];
        v16 = (v13 & 1) == 0;
        v17 = v15 + v16;
        if (__OFADD__(v15, v16))
        {
          goto LABEL_28;
        }

        v18 = v13;
        if (v4[3] >= v17)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_24E8AF124();
          }
        }

        else
        {
          sub_24E89B77C(v17, isUniquelyReferenced_nonNull_native);
          v19 = sub_24E76D644(v7, v8);
          if ((v18 & 1) != (v20 & 1))
          {
            goto LABEL_30;
          }

          v14 = v19;
        }

        v1 = v32;
        v24 = v4;
        if (v18)
        {
          v5 = (v4[7] + 16 * v14);
          *v5 = v34;
          v5[1] = v35;
        }

        else
        {
          v4[(v14 >> 6) + 8] |= 1 << v14;
          v25 = (v4[6] + 16 * v14);
          *v25 = v7;
          v25[1] = v8;
          v26 = (v4[7] + 16 * v14);
          *v26 = v34;
          v26[1] = v35;
          v27 = v4[2];
          v28 = __OFADD__(v27, 1);
          v29 = v27 + 1;
          if (v28)
          {
            goto LABEL_29;
          }

          v4[2] = v29;
        }
      }

      else
      {
        v21 = sub_24E76D644(v7, v8);
        v23 = v22;

        if (v23)
        {
          v24 = v4;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_24E8AF124();
            v24 = v4;
          }

          sub_24EB53354(v21, v24);

          v1 = v32;
        }

        else
        {

          v24 = v4;
          v1 = v32;
        }
      }

      ++v2;
      v3 += 16;
      v4 = v24;
      if (v33 == v2)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
LABEL_30:
    result = sub_24F92CF88();
    __break(1u);
  }

  else
  {
    v24 = MEMORY[0x277D84F98];
LABEL_24:

    return v24;
  }

  return result;
}

uint64_t sub_24EC2186C(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_24F92CE08();
  }
}

unint64_t HttpTemplateFormBody.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

uint64_t sub_24EC21930@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v8 = sub_24F928348();
  if (v9)
  {
    v10 = v8;
    v11 = v9;
    v12 = sub_24F9285B8();
    (*(*(v12 - 8) + 8))(a2, v12);
    v13 = sub_24F928388();
    result = (*(*(v13 - 8) + 8))(a1, v13);
    *a3 = v10;
    a3[1] = v11;
  }

  else
  {
    v15 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    v16 = MEMORY[0x277D84F90];
    *v17 = v4;
    v17[1] = v16;
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D22538], v15);
    swift_willThrow();
    v18 = sub_24F9285B8();
    (*(*(v18 - 8) + 8))(a2, v18);
    v19 = sub_24F928388();
    return (*(*(v19 - 8) + 8))(a1, v19);
  }

  return result;
}

unint64_t sub_24EC21AF0()
{
  v1 = *v0;
  v2 = v0[1];
  sub_24F92C888();

  MEMORY[0x253050C20](v1, v2);
  return 0xD000000000000014;
}

GameStoreKit::HttpTemplateParameter::Target_optional __swiftcall HttpTemplateParameter.Target.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpTemplateParameter.Target.rawValue.getter()
{
  v1 = 0x79726575516C7275;
  v2 = 0x79646F426E6F736ALL;
  if (*v0 != 2)
  {
    v2 = 0x79646F426D726F66;
  }

  if (*v0)
  {
    v1 = 0x726564616568;
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

uint64_t sub_24EC21C4C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC21D0C(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC21DB8()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC21E80(uint64_t *a1@<X8>)
{
  v2 = 0xE800000000000000;
  v3 = 0x79726575516C7275;
  v4 = 0x79646F426E6F736ALL;
  if (*v1 != 2)
  {
    v4 = 0x79646F426D726F66;
  }

  if (*v1)
  {
    v3 = 0x726564616568;
    v2 = 0xE600000000000000;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE800000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

GameStoreKit::HttpTemplateParameter::InputType_optional __swiftcall HttpTemplateParameter.InputType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 4;
  if (v3 < 4)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HttpTemplateParameter.InputType.rawValue.getter()
{
  v1 = 1954047348;
  v2 = 0x6D754E656E6F6870;
  if (*v0 != 2)
  {
    v2 = 0x506C616D69636564;
  }

  if (*v0)
  {
    v1 = 0x6C69616D65;
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

uint64_t sub_24EC21FE0()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EC220A4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EC22154()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EC22220(uint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1954047348;
  v4 = 0xEB00000000726562;
  v5 = 0x6D754E656E6F6870;
  if (*v1 != 2)
  {
    v5 = 0x506C616D69636564;
    v4 = 0xEA00000000006461;
  }

  if (*v1)
  {
    v3 = 0x6C69616D65;
    v2 = 0xE500000000000000;
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

void __swiftcall HttpTemplateParameter.init(key:target:inputType:title:isRequired:maximumLength:)(GameStoreKit::HttpTemplateParameter *__return_ptr retstr, Swift::String key, GameStoreKit::HttpTemplateParameter::Target target, GameStoreKit::HttpTemplateParameter::InputType inputType, Swift::String_optional title, Swift::Bool isRequired, Swift::Int_optional maximumLength)
{
  v7 = *target;
  v8 = *inputType;
  retstr->key = key;
  retstr->target = v7;
  retstr->inputType = v8;
  retstr->title = title;
  retstr->isRequired = isRequired;
  *(&retstr->maximumLength.value + 7) = maximumLength.value;
  LOBYTE(retstr[1].key._countAndFlagsBits) = maximumLength.is_nil;
}

uint64_t HttpTemplateParameter.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v38 = a3;
  v40 = a2;
  v4 = 7955819;
  v5 = sub_24F928388();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v34 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  v14 = 0xE300000000000000;
  sub_24F928398();
  v37 = sub_24F928348();
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v13, v5);
  if (v16)
  {
    v39 = v16;
    v4 = 0x746567726174;
    sub_24F928398();
    sub_24EC26ED4();
    sub_24F928248();
    v17(v10, v5);
    v18 = v42;
    if (v42 == 4)
    {

      v14 = 0xE600000000000000;
    }

    else
    {
      v14 = 0xE900000000000065;
      sub_24F928398();
      sub_24EC26F28();
      sub_24F928248();
      v17(v10, v5);
      v19 = v41;
      if (v41 != 4)
      {
        sub_24F928398();
        v24 = sub_24F928348();
        v34 = v25;
        v35 = v24;
        v17(v10, v5);
        v26 = v36;
        sub_24F928398();
        v27 = sub_24F928278();
        v17(v26, v5);
        LODWORD(v36) = v27 & 1;
        sub_24F928398();
        v28 = sub_24F928258();
        LOBYTE(v26) = v29;
        v30 = sub_24F9285B8();
        (*(*(v30 - 8) + 8))(v40, v30);
        v17(a1, v5);
        result = (v17)(v10, v5);
        v31 = v38;
        v32 = v39;
        *v38 = v37;
        v31[1] = v32;
        *(v31 + 16) = v18;
        *(v31 + 17) = v19;
        v33 = v34;
        v31[3] = v35;
        v31[4] = v33;
        *(v31 + 40) = v36;
        v31[6] = v28;
        *(v31 + 56) = v26 & 1;
        return result;
      }

      v4 = 0x7059547475706E69;
    }
  }

  v20 = sub_24F92AC38();
  sub_24E8F2E6C();
  swift_allocError();
  *v21 = v4;
  v21[1] = v14;
  v21[2] = &type metadata for HttpTemplateParameter;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277D22530], v20);
  swift_willThrow();
  v22 = sub_24F9285B8();
  (*(*(v22 - 8) + 8))(v40, v22);
  return (v17)(a1, v5);
}

uint64_t HttpTemplateParameter.key.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HttpTemplateParameter.title.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t HttpTemplateSubstitutions.urlQuery.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.headers.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.jsonBody.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t HttpTemplateSubstitutions.formBody.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t sub_24EC22940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v89 - v7;
  v9 = sub_24F91EB98();
  v106 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v105 = &v89 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219F98, &unk_24F94D890);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v89 - v12;
  v14 = sub_24F91EC58();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v95 = &v89 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = *v2;
  if (!*(v97 + 16))
  {
    v19 = sub_24F91F4A8();
    return (*(*(v19 - 8) + 16))(a2, a1, v19);
  }

  sub_24F91EBE8();
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    sub_24E601704(v13, &qword_27F219F98, &unk_24F94D890);
    sub_24EC26E34();
    swift_allocError();
    *v17 = 0;
    return swift_willThrow();
  }

  (*(v15 + 32))(v95, v13, v14);
  v20 = sub_24F91EBC8();
  v93 = v8;
  v94 = v3;
  v90 = a2;
  v91 = v15;
  v92 = v14;
  if (!v20)
  {
    v23 = MEMORY[0x277D84F98];
LABEL_31:
    v56 = (v97 + 64);
    v57 = 1 << *(v97 + 32);
    v58 = -1;
    if (v57 < 64)
    {
      v58 = ~(-1 << v57);
    }

    v59 = v58 & *(v97 + 64);
    v60 = (v57 + 63) >> 6;

    v61 = 0;
    v104 = v60;
    v105 = v56;
    while (v59)
    {
      v64 = v61;
LABEL_41:
      v65 = (v64 << 10) | (16 * __clz(__rbit64(v59)));
      v66 = (*(v97 + 48) + v65);
      v68 = *v66;
      v67 = v66[1];
      v69 = (*(v97 + 56) + v65);
      v70 = v69[1];
      v106 = *v69;

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v23;
      v72 = sub_24E76D644(v68, v67);
      v74 = v23[2];
      v75 = (v73 & 1) == 0;
      v54 = __OFADD__(v74, v75);
      v76 = v74 + v75;
      if (v54)
      {
        goto LABEL_56;
      }

      v77 = v73;
      if (v23[3] >= v76)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v83 = v72;
          sub_24E8AF124();
          v72 = v83;
        }
      }

      else
      {
        sub_24E89B77C(v76, isUniquelyReferenced_nonNull_native);
        v72 = sub_24E76D644(v68, v67);
        if ((v77 & 1) != (v78 & 1))
        {
          goto LABEL_59;
        }
      }

      v59 &= v59 - 1;
      if (v77)
      {
        v62 = v72;

        v23 = v107;
        v63 = (v107[7] + 16 * v62);
        *v63 = v106;
        v63[1] = v70;
      }

      else
      {
        v23 = v107;
        v107[(v72 >> 6) + 8] |= 1 << v72;
        v79 = (v23[6] + 16 * v72);
        *v79 = v68;
        v79[1] = v67;
        v80 = (v23[7] + 16 * v72);
        *v80 = v106;
        v80[1] = v70;
        v81 = v23[2];
        v54 = __OFADD__(v81, 1);
        v82 = v81 + 1;
        if (v54)
        {
          goto LABEL_58;
        }

        v23[2] = v82;
      }

      v61 = v64;
      v60 = v104;
      v56 = v105;
    }

    while (1)
    {
      v64 = v61 + 1;
      if (__OFADD__(v61, 1))
      {
        __break(1u);
        goto LABEL_54;
      }

      if (v64 >= v60)
      {
        break;
      }

      v59 = *&v56[8 * v64];
      ++v61;
      if (v59)
      {
        goto LABEL_41;
      }
    }

    sub_24EC20610(v23);

    v84 = v95;
    sub_24F91EBD8();
    v85 = v93;
    sub_24F91EBF8();
    v86 = sub_24F91F4A8();
    v87 = *(v86 - 8);
    if ((*(v87 + 48))(v85, 1, v86) == 1)
    {
      sub_24E601704(v85, &qword_27F228530, &unk_24F93C6E0);
      sub_24EC26E34();
      swift_allocError();
      *v88 = 0;
      swift_willThrow();
      return (*(v91 + 8))(v84, v92);
    }

    else
    {
      (*(v91 + 8))(v84, v92);
      return (*(v87 + 32))(v90, v85, v86);
    }
  }

  v21 = v20;
  v102 = *(v20 + 16);
  if (!v102)
  {
    v23 = MEMORY[0x277D84F98];
LABEL_30:

    goto LABEL_31;
  }

  v22 = 0;
  v100 = v20 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
  v98 = v106 + 8;
  v99 = v106 + 16;
  v23 = MEMORY[0x277D84F98];
  v96 = v9;
  v101 = v20;
  while (v22 < *(v21 + 16))
  {
    v25 = v23;
    v26 = v105;
    v27 = v106;
    (*(v106 + 16))(v105, v100 + *(v106 + 72) * v22, v9);
    v28 = sub_24F91EB78();
    v30 = v29;
    v31 = sub_24F91EB88();
    v33 = v32;
    (*(v27 + 8))(v26, v9);
    if (!v33)
    {
      v47 = sub_24E76D644(v28, v30);
      v49 = v48;

      if (v49)
      {
        v50 = swift_isUniquelyReferenced_nonNull_native();
        v107 = v25;
        v23 = v25;
        if (!v50)
        {
          sub_24E8AF124();
          v23 = v107;
        }

        sub_24EB53354(v47, v23);
        v21 = v101;
      }

      else
      {
        v23 = v25;
        v21 = v101;
      }

      goto LABEL_10;
    }

    v103 = v33;
    v104 = v31;
    v21 = v101;
    v34 = v25;
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v107 = v25;
    v36 = v28;
    v38 = sub_24E76D644(v28, v30);
    v39 = v34[2];
    v40 = (v37 & 1) == 0;
    v41 = v39 + v40;
    if (__OFADD__(v39, v40))
    {
      goto LABEL_55;
    }

    v42 = v37;
    if (v34[3] >= v41)
    {
      if ((v35 & 1) == 0)
      {
        sub_24E8AF124();
      }

      v43 = v30;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    else
    {
      sub_24E89B77C(v41, v35);
      v43 = v30;
      v44 = sub_24E76D644(v36, v30);
      if ((v42 & 1) != (v45 & 1))
      {
        goto LABEL_59;
      }

      v38 = v44;
      v46 = v103;
      if ((v42 & 1) == 0)
      {
LABEL_25:
        v23 = v107;
        v107[(v38 >> 6) + 8] |= 1 << v38;
        v51 = (v23[6] + 16 * v38);
        *v51 = v36;
        v51[1] = v43;
        v52 = (v23[7] + 16 * v38);
        *v52 = v104;
        v52[1] = v46;
        v53 = v23[2];
        v54 = __OFADD__(v53, 1);
        v55 = v53 + 1;
        if (v54)
        {
          goto LABEL_57;
        }

        v23[2] = v55;
        goto LABEL_9;
      }
    }

    v23 = v107;
    v24 = (v107[7] + 16 * v38);
    *v24 = v104;
    v24[1] = v46;

LABEL_9:
    v9 = v96;
LABEL_10:
    if (v102 == ++v22)
    {
      goto LABEL_30;
    }
  }

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
  result = sub_24F92CF88();
  __break(1u);
  return result;
}