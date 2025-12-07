uint64_t GameOverviewShelfIntentImplementation.perform(_:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[17] = a2;
  v3[18] = a3;
  v3[16] = a1;
  v3[19] = *(type metadata accessor for PlayActivity(0) - 8);
  v3[20] = swift_task_alloc();
  v3[21] = type metadata accessor for GSKShelf(0);
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = *(type metadata accessor for Player(0) - 8);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  type metadata accessor for Game(0);
  v3[27] = swift_task_alloc();
  v3[28] = type metadata accessor for GameOverviewShelfConstructionIntent(0);
  v3[29] = swift_task_alloc();
  v3[30] = type metadata accessor for GameDescriptorDataIntent(0);
  v3[31] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3C8F18, 0, 0);
}

uint64_t sub_24F3C8F18()
{
  v2 = *(v0 + 240);
  v1 = *(v0 + 248);
  v3 = *(v0 + 136);
  sub_24F3CA300(v3, v1, type metadata accessor for Game);
  v4 = type metadata accessor for GameOverviewShelfIntent(0);
  *(v0 + 256) = v4;
  v5 = *(v4 + 24);
  *(v0 + 408) = v5;
  sub_24F3CA300(v3 + v5, v1 + *(v2 + 20), type metadata accessor for Player);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  *(v0 + 264) = v6;
  v7 = swift_task_alloc();
  *(v0 + 272) = v7;
  *v7 = v0;
  v7[1] = sub_24F3C9040;

  return MEMORY[0x28217F228](v0 + 16, v6, v6);
}

uint64_t sub_24F3C9040()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_24F3C9364;
  }

  else
  {
    v2 = sub_24F3C9154;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3C9154()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  v3 = swift_task_alloc();
  v0[36] = v3;
  v4 = sub_24F3CA410(&qword_27F21A558, type metadata accessor for GameDescriptorDataIntent, &protocol conformance descriptor for GameDescriptorDataIntent);
  *v3 = v0;
  v3[1] = sub_24F3C9250;
  v6 = v0[30];
  v5 = v0[31];
  v7 = v0[18];

  return MEMORY[0x28217F4B0](v0 + 12, v5, v7, v6, v4, v1, v2);
}

uint64_t sub_24F3C9250()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_24F3C96A4;
  }

  else
  {
    v2 = sub_24F3C9448;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3C9364()
{
  sub_24F3CA368(*(v0 + 248), type metadata accessor for GameDescriptorDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3C9448()
{
  v1 = *(v0 + 136);
  v2 = (v1 + *(v0 + 408));
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));
  v3 = *(v0 + 112);
  *(v0 + 304) = *(v0 + 96);
  *(v0 + 320) = v3;
  v5 = *v1;
  v4 = v1[1];
  *(v0 + 336) = v4;
  v6 = *v2;
  v7 = v2[1];
  *(v0 + 344) = v7;

  v8 = swift_task_alloc();
  *(v0 + 352) = v8;
  *v8 = v0;
  v8[1] = sub_24F3C954C;
  v9 = *(v0 + 144);

  return sub_24E64A474(v5, v4, v6, v7, v9);
}

uint64_t sub_24F3C954C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 360) = a1;
  *(v3 + 368) = v1;

  if (v1)
  {
    v4 = sub_24F3CA16C;
  }

  else
  {
    v4 = sub_24F3C9790;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_24F3C96A4()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  sub_24F3CA368(v0[31], type metadata accessor for GameDescriptorDataIntent);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F3C9790()
{
  v1 = *(v0 + 360);
  v2 = *(v0 + 408);
  v3 = *(v0 + 256);
  v4 = *(v0 + 208);
  v5 = *(v0 + 136);
  sub_24F3CA300(v5, *(v0 + 216), type metadata accessor for Game);
  v6 = (v5 + *(v3 + 20));
  v8 = *v6;
  v7 = v6[1];
  sub_24F3CA300(v5 + v2, v4, type metadata accessor for Player);
  v9 = *(v1 + 16);
  v10 = *(v0 + 360);
  if (v9)
  {
    v30 = v8;
    v11 = *(v0 + 192);
    v12 = *(v0 + 152);
    v32 = MEMORY[0x277D84F90];

    sub_24F457FDC(0, v9, 0);
    v13 = v32;
    v14 = v10 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v15 = *(v12 + 72);
    do
    {
      v16 = *(v0 + 200);
      v17 = *(v0 + 160);
      sub_24F3CA300(v14, v17, type metadata accessor for PlayActivity);
      sub_24F3CA300(v17, v16, type metadata accessor for Player);
      sub_24F3CA368(v17, type metadata accessor for PlayActivity);
      v19 = *(v32 + 16);
      v18 = *(v32 + 24);
      if (v19 >= v18 >> 1)
      {
        sub_24F457FDC((v18 > 1), v19 + 1, 1);
      }

      v20 = *(v0 + 200);
      *(v32 + 16) = v19 + 1;
      sub_24E6B2600(v20, v32 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v19, type metadata accessor for Player);
      v14 += v15;
      --v9;
    }

    while (v9);

    v8 = v30;
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v22 = *(v0 + 224);
  v21 = *(v0 + 232);
  v23 = *(v0 + 208);
  v29 = *(v0 + 320);
  v31 = *(v0 + 304);
  sub_24E6B2600(*(v0 + 216), v21, type metadata accessor for Game);
  v24 = (v21 + v22[5]);
  *v24 = v31;
  v24[1] = v29;
  v25 = (v21 + v22[6]);
  *v25 = v8;
  v25[1] = v7;
  sub_24E6B2600(v23, v21 + v22[7], type metadata accessor for Player);
  *(v21 + v22[8]) = v13;
  v26 = swift_task_alloc();
  *(v0 + 376) = v26;
  *v26 = v0;
  v26[1] = sub_24F3C9A84;
  v27 = *(v0 + 264);

  return MEMORY[0x28217F228](v0 + 56, v27, v27);
}

uint64_t sub_24F3C9A84()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_24F3C9DA8;
  }

  else
  {
    v2 = sub_24F3C9B98;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3C9B98()
{
  v1 = v0[10];
  v2 = v0[11];
  __swift_project_boxed_opaque_existential_1(v0 + 7, v1);
  v3 = swift_task_alloc();
  v0[49] = v3;
  v4 = sub_24F3CA410(&qword_27F241F88, type metadata accessor for GameOverviewShelfConstructionIntent, &protocol conformance descriptor for GameOverviewShelfConstructionIntent);
  *v3 = v0;
  v3[1] = sub_24F3C9C94;
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[23];
  v8 = v0[18];

  return MEMORY[0x28217F4B0](v7, v5, v8, v6, v4, v1, v2);
}

uint64_t sub_24F3C9C94()
{
  *(*v1 + 400) = v0;

  if (v0)
  {
    v2 = sub_24F3CA060;
  }

  else
  {
    v2 = sub_24F3C9EAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3C9DA8()
{
  v1 = v0[31];
  sub_24F3CA368(v0[29], type metadata accessor for GameOverviewShelfConstructionIntent);
  sub_24F3CA368(v1, type metadata accessor for GameDescriptorDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F3C9EAC()
{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[22];
  v4 = v0[23];
  v5 = v0[16];
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  sub_24F3CA300(v4, v3, type metadata accessor for GSKShelf);
  sub_24F928138();
  sub_24F3CA368(v4, type metadata accessor for GSKShelf);
  sub_24F3CA368(v2, type metadata accessor for GameOverviewShelfConstructionIntent);
  sub_24F3CA368(v1, type metadata accessor for GameDescriptorDataIntent);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213768, &unk_24F93F770);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F3CA060()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  v1 = v0[31];
  sub_24F3CA368(v0[29], type metadata accessor for GameOverviewShelfConstructionIntent);
  sub_24F3CA368(v1, type metadata accessor for GameDescriptorDataIntent);

  v2 = v0[1];

  return v2();
}

uint64_t sub_24F3CA16C()
{
  sub_24F3CA368(*(v0 + 248), type metadata accessor for GameDescriptorDataIntent);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3CA250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_24E614970;

  return GameOverviewShelfIntentImplementation.perform(_:objectGraph:)(a1, a2, a3);
}

uint64_t sub_24F3CA300(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3CA368(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F3CA410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3CA47C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for ChallengeDetail(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24F3CA550(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for ChallengeDetail(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for RematchChallengeActionIntent(uint64_t a1)
{
  result = qword_27F241F98;
  if (!qword_27F241F98)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F3CA658(uint64_t a1)
{
  result = type metadata accessor for ChallengeDetail(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24F3CA6EC@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 32) = 0x676E656C6C616863;
  *(inited + 40) = 0xEF6C696174654465;
  *(inited + 72) = type metadata accessor for ChallengeDetail(0);
  *(inited + 80) = sub_24F3CA870();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24F3CA8C8(v4, boxed_opaque_existential_1);
  strcpy((inited + 88), "localPlayerID");
  *(inited + 102) = -4864;
  v8 = (v4 + *(a1 + 20));
  v10 = *v8;
  v9 = v8[1];
  v11 = MEMORY[0x277D22580];
  *(inited + 128) = MEMORY[0x277D837D0];
  *(inited + 136) = v11;
  *(inited + 104) = v10;
  *(inited + 112) = v9;

  v12 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v13 = sub_24E80FFAC(v12);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v13;
  return result;
}

unint64_t sub_24F3CA870()
{
  result = qword_27F21DD30;
  if (!qword_27F21DD30)
  {
    type metadata accessor for ChallengeDetail(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21DD30);
  }

  return result;
}

uint64_t sub_24F3CA8C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ChallengeDetail(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_24F3CA92C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23 = a4;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - v8;
  v10 = type metadata accessor for GameLibraryShelfIntent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v23 - v15;
  v17 = sub_24F92B858();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  sub_24F3CFD8C(v23, v13, type metadata accessor for GameLibraryShelfIntent);
  (*(v7 + 16))(v9, a1, v6);
  v18 = (*(v11 + 80) + 48) & ~*(v11 + 80);
  v19 = (v12 + *(v7 + 80) + v18) & ~*(v7 + 80);
  v20 = swift_allocObject();
  *(v20 + 2) = 0;
  *(v20 + 3) = 0;
  v21 = v24;
  *(v20 + 4) = a3;
  *(v20 + 5) = v21;
  sub_24F3CDA8C(v13, &v20[v18]);
  (*(v7 + 32))(&v20[v19], v9, v6);

  sub_24F1D3DA4(0, 0, v16, &unk_24F9F00C0, v20);

  return result;
}

uint64_t sub_24F3CABE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[37] = a3;
  v4[38] = a4;
  v4[35] = a1;
  v4[36] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22D140, &unk_24F9599C0);
  v4[39] = v5;
  v4[40] = *(v5 - 8);
  v4[41] = swift_task_alloc();
  v4[42] = type metadata accessor for GameLibraryShelfConstructionIntent(0);
  v4[43] = swift_task_alloc();
  type metadata accessor for GSKShelf(0);
  v4[44] = swift_task_alloc();
  v4[45] = swift_task_alloc();
  v6 = sub_24F920728();
  v4[46] = v6;
  v4[47] = *(v6 - 8);
  v4[48] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2139D8, &qword_24F93B580);
  v4[49] = swift_task_alloc();
  v7 = sub_24F9201C8();
  v4[50] = v7;
  v4[51] = *(v7 - 8);
  v4[52] = swift_task_alloc();
  v8 = sub_24F920378();
  v4[53] = v8;
  v4[54] = *(v8 - 8);
  v4[55] = swift_task_alloc();
  v9 = sub_24F920398();
  v4[56] = v9;
  v4[57] = *(v9 - 8);
  v4[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA18, &unk_24F9762F0);
  v4[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21DA20, qword_24F95A020);
  v4[60] = swift_task_alloc();
  v10 = type metadata accessor for NetworkConnectionMonitor(0);
  v11 = swift_task_alloc();
  v4[61] = v11;
  *v11 = v4;
  v11[1] = sub_24F3CAF84;

  return MEMORY[0x28217F228](v4 + 30, v10, v10);
}

uint64_t sub_24F3CAF84()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_24F3CCCAC;
  }

  else
  {
    v2 = sub_24F3CB098;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3CB098()
{
  v0[63] = v0[30];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142C0, &unk_24F93C710);
  v0[64] = v1;
  v2 = swift_task_alloc();
  v0[65] = v2;
  *v2 = v0;
  v2[1] = sub_24F3CB160;

  return MEMORY[0x28217F228](v0 + 7, v1, v1);
}

uint64_t sub_24F3CB160()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_24F3CB99C;
  }

  else
  {
    v2 = sub_24F3CB274;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3CB274()
{
  __swift_project_boxed_opaque_existential_1((v0 + 56), *(v0 + 80));
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  v1 = *(v0 + 40);
  *(v0 + 536) = v1;
  *(v0 + 552) = __swift_project_boxed_opaque_existential_1((v0 + 16), v1);
  *(v0 + 560) = sub_24F92B7F8();
  *(v0 + 568) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CB35C, v3, v2);
}

uint64_t sub_24F3CB35C()
{

  sub_24F6F7A8C();

  return MEMORY[0x2822009F8](sub_24F3CB3D4, 0, 0);
}

uint64_t sub_24F3CB3D4()
{
  (*(v0[47] + 56))(v0[60], 0, 1, v0[46]);
  v0[72] = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CB480, v2, v1);
}

uint64_t sub_24F3CB480()
{
  v1 = *(v0 + 288);

  swift_getKeyPath();
  *(v0 + 584) = OBJC_IVAR____TtC12GameStoreKit25GameLibraryOptionProvider___observationRegistrar;
  *(v0 + 248) = v1;
  *(v0 + 592) = sub_24F3CFD44(&qword_27F21ED10, type metadata accessor for GameLibraryOptionProvider, &unk_24FA29854);
  sub_24F91FD88();

  *(v0 + 772) = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24F3CB574, 0, 0);
}

uint64_t sub_24F3CB574()
{
  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v3 = *(v0 + 448);
  v4 = *(v0 + 456);
  v5 = MEMORY[0x277D0CAD0];
  v6 = *(v0 + 296);
  if (!*(v0 + 772))
  {
    v5 = MEMORY[0x277D0CAC8];
  }

  (*(*(v0 + 432) + 104))(*(v0 + 440), *v5, *(v0 + 424));
  sub_24F920388();
  (*(v4 + 32))(v1, v2, v3);
  (*(v4 + 56))(v1, 0, 1, v3);
  v7 = *(type metadata accessor for GameLibraryShelfIntent(0) + 20);
  *(v0 + 768) = v7;
  v8 = (v6 + v7);
  *(v0 + 600) = *v8;
  *(v0 + 608) = v8[1];
  *(v0 + 616) = sub_24F92B7E8();
  v10 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CB6D4, v10, v9);
}

uint64_t sub_24F3CB6D4()
{
  v1 = v0[63];

  swift_getKeyPath();
  v0[32] = v1;
  sub_24F3CFD44(&unk_27F24EEA0, type metadata accessor for NetworkConnectionMonitor, &protocol conformance descriptor for NetworkConnectionMonitor);
  sub_24F91FD88();

  v2 = *(v1 + 16) > 1u;
  v3 = swift_task_alloc();
  v0[78] = v3;
  *v3 = v0;
  v3[1] = sub_24F3CB820;
  v4 = v0[76];
  v5 = v0[75];
  v6 = v0[59];
  v7 = v0[60];
  v8 = v0[35];

  return sub_24F6F826C(v7, v6, 0x7FFFFFFFFFFFFFFFLL, 0, v5, v4, v2, v8);
}

uint64_t sub_24F3CB820(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 480);
  v5 = *(*v2 + 472);
  *(v3 + 632) = a1;
  *(v3 + 640) = v1;

  sub_24E601704(v5, &qword_27F21DA18, &unk_24F9762F0);
  sub_24E601704(v4, &qword_27F21DA20, qword_24F95A020);
  if (v1)
  {
    v6 = sub_24F3CCDA4;
  }

  else
  {
    v6 = sub_24F3CBA9C;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F3CB99C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3CBA9C()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = sub_24F920FC8();
  MEMORY[0x253046080](v1);
  sub_24F9201B8();
  v2 = swift_task_alloc();
  v0[81] = v2;
  *v2 = v0;
  v2[1] = sub_24F3CBB9C;
  v3 = v0[64];

  return MEMORY[0x28217F228](v0 + 17, v3, v3);
}

uint64_t sub_24F3CBB9C()
{
  *(*v1 + 656) = v0;

  if (v0)
  {

    v2 = sub_24F3CBED0;
  }

  else
  {
    v2 = sub_24F3CBCB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3CBCB8()
{
  __swift_project_boxed_opaque_existential_1(v0 + 17, v0[20]);
  sub_24F920538();
  __swift_destroy_boxed_opaque_existential_1(v0 + 17);
  v1 = v0[15];
  v2 = v0[16];
  __swift_project_boxed_opaque_existential_1(v0 + 12, v1);
  v3 = swift_task_alloc();
  v0[83] = v3;
  *v3 = v0;
  v3[1] = sub_24F3CBDA0;
  v4 = v0[52];

  return MEMORY[0x282164930](v4, v1, v2);
}

uint64_t sub_24F3CBDA0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 672) = v1;

  if (v1)
  {

    v5 = sub_24F3CCEAC;
  }

  else
  {
    *(v4 + 680) = a1;
    v5 = sub_24F3CBFF0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24F3CBED0()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F3CBFF0()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 96));
  *(v0 + 688) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CC084, v2, v1);
}

uint64_t sub_24F3CC084()
{
  v1 = *(v0 + 680);

  sub_24F7ABA40(v1);

  return MEMORY[0x2822009F8](sub_24F3CC104, 0, 0);
}

uint64_t sub_24F3CC104()
{
  v1 = v0[37];
  v0[87] = *v1;
  v0[88] = v1[1];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);
  v3 = swift_task_alloc();
  v0[89] = v3;
  *v3 = v0;
  v3[1] = sub_24F3CC1D4;

  return MEMORY[0x28217F228](v0 + 22, v2, v2);
}

uint64_t sub_24F3CC1D4()
{
  *(*v1 + 720) = v0;

  if (v0)
  {

    v2 = sub_24F3CC874;
  }

  else
  {
    v2 = sub_24F3CC2F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3CC2F0()
{
  sub_24F3CFD8C(*(v0 + 296) + *(v0 + 768), *(v0 + 344) + *(*(v0 + 336) + 20), type metadata accessor for Player);

  *(v0 + 728) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CC3B8, v2, v1);
}

uint64_t sub_24F3CC3B8()
{
  v1 = *(v0 + 288);

  swift_getKeyPath();
  *(v0 + 264) = v1;
  sub_24F91FD88();

  *(v0 + 773) = *(v1 + 72);

  return MEMORY[0x2822009F8](sub_24F3CC46C, 0, 0);
}

uint64_t sub_24F3CC46C(uint64_t a1)
{
  *(v1 + 736) = sub_24F92B7E8();
  v3 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CC4F8, v3, v2);
}

uint64_t sub_24F3CC4F8()
{
  v1 = v0[36];

  swift_getKeyPath();
  v0[34] = v1;
  sub_24F91FD88();

  swift_beginAccess();
  v0[93] = *(v1 + 64);

  return MEMORY[0x2822009F8](sub_24F3CC5C8, 0, 0);
}

uint64_t sub_24F3CC5C8()
{
  v21 = v0;
  v1 = *(v0 + 744);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = sub_24EAE69C8(*(v1 + 16), 0);
    v4 = sub_24EAE8268(&v20, v3 + 32, v2, v1);
    sub_24E6586B4(v20);
    if (v4 == v2)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v3 = MEMORY[0x277D84F90];
LABEL_5:
  v5 = *(v0 + 773);
  v6 = *(v0 + 704);
  v7 = *(v0 + 696);
  v9 = *(v0 + 336);
  v8 = *(v0 + 344);
  *v8 = *(v0 + 632);
  v10 = (v8 + v9[6]);
  *v10 = v7;
  v10[1] = v6;
  *(v8 + v9[7]) = v5;
  *(v8 + v9[8]) = v3;
  v11 = *(v0 + 200);
  v12 = *(v0 + 208);
  __swift_project_boxed_opaque_existential_1((v0 + 176), v11);
  v13 = swift_task_alloc();
  *(v0 + 752) = v13;
  v14 = sub_24F3CFD44(&qword_27F21D570, type metadata accessor for GameLibraryShelfConstructionIntent, &protocol conformance descriptor for GameLibraryShelfConstructionIntent);
  *v13 = v0;
  v13[1] = sub_24F3CC760;
  v15 = *(v0 + 360);
  v17 = *(v0 + 336);
  v16 = *(v0 + 344);
  v18 = *(v0 + 280);

  return MEMORY[0x28217F4B0](v15, v16, v18, v17, v14, v11, v12);
}

uint64_t sub_24F3CC760()
{
  *(*v1 + 760) = v0;

  if (v0)
  {
    v2 = sub_24F3CCB64;
  }

  else
  {
    v2 = sub_24F3CC998;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3CC874()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F3CC998()
{
  v1 = v0[51];
  v2 = v0[52];
  v10 = v0[50];
  v3 = v0[44];
  v4 = v0[45];
  v6 = v0[40];
  v5 = v0[41];
  v7 = v0[39];
  sub_24F3CFDF4(v0[43], type metadata accessor for GameLibraryShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  sub_24F3CFD8C(v4, v3, type metadata accessor for GSKShelf);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  sub_24F92B8C8();

  (*(v6 + 8))(v5, v7);
  sub_24F3CFDF4(v4, type metadata accessor for GSKShelf);
  (*(v1 + 8))(v2, v10);

  v8 = v0[1];

  return v8();
}

uint64_t sub_24F3CCB64()
{
  sub_24F3CFDF4(v0[43], type metadata accessor for GameLibraryShelfConstructionIntent);
  __swift_destroy_boxed_opaque_existential_1(v0 + 22);
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F3CCCAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3CCDA4()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3CCEAC()
{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[50];

  (*(v2 + 8))(v1, v3);
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);

  v4 = v0[1];

  return v4();
}

uint64_t sub_24F3CCFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2471C0, &unk_24F948490);
  v7[11] = v8;
  v7[12] = *(v8 - 8);
  v7[13] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218350, &unk_24F957210);
  v7[14] = v9;
  v7[15] = *(v9 - 8);
  v7[16] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v7[17] = v10;
  v11 = *(v10 - 8);
  v7[18] = v11;
  v7[19] = *(v11 + 64);
  v7[20] = swift_task_alloc();
  v12 = type metadata accessor for GameLibraryShelfIntent(0);
  v7[21] = v12;
  v13 = *(v12 - 8);
  v7[22] = v13;
  v7[23] = *(v13 + 64);
  v7[24] = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED28, &qword_24F95E358);
  v7[25] = v14;
  v15 = *(v14 - 8);
  v7[26] = v15;
  v7[27] = *(v15 + 64);
  v7[28] = swift_task_alloc();
  v7[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3CD25C, 0, 0);
}

uint64_t sub_24F3CD25C()
{
  sub_24F92B7F8();
  *(v0 + 240) = sub_24F92B7E8();
  v2 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3CD2F0, v2, v1);
}

uint64_t sub_24F3CD2F0()
{

  sub_24F7AB6B0();

  return MEMORY[0x2822009F8](sub_24F3CD360, 0, 0);
}

uint64_t sub_24F3CD360()
{
  v37 = v0[29];
  v36 = v0[28];
  v1 = v0[24];
  v34 = v0[26];
  v35 = v0[25];
  v2 = v0[22];
  v3 = v0[23];
  v4 = v0[20];
  v5 = v0[18];
  v6 = v0[17];
  v31 = v0[16];
  v32 = v0[15];
  v33 = v0[14];
  v28 = v0[12];
  v29 = v0[13];
  v7 = v0[10];
  v30 = v0[11];
  v22 = v0[7];
  v23 = v0[8];
  v24 = v0[9];
  sub_24F3CFD8C(v24, v1, type metadata accessor for GameLibraryShelfIntent);
  v26 = *(v5 + 16);
  v26(v4, v7, v6);
  v8 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v9 = (v3 + *(v5 + 80) + v8) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = v23;
  *(v10 + 24) = v22;
  sub_24F3CDA8C(v1, v10 + v8);
  v25 = *(v5 + 32);
  v25(v10 + v9, v4, v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED00, &unk_24F95E190);
  sub_24F3CE000();

  sub_24F9288B8();
  sub_24F9288D8();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v27 = sub_24F45D9C4(v11);

  sub_24F3CFD8C(v24, v1, type metadata accessor for GameLibraryShelfIntent);
  v26(v4, v7, v6);
  v12 = swift_allocObject();
  *(v12 + 16) = v23;
  *(v12 + 24) = v22;
  sub_24F3CDA8C(v1, v12 + v8);
  v25(v12 + v9, v4, v6);
  v13 = swift_task_alloc();
  *(v13 + 16) = v27;
  *(v13 + 24) = &unk_24F9F00D0;
  *(v13 + 32) = v12;
  *(v13 + 40) = 256;
  (*(v28 + 104))(v29, *MEMORY[0x277D85778], v30);

  sub_24F92B928();

  (*(v32 + 8))(v31, v33);

  (*(v34 + 16))(v36, v37, v35);
  v14 = (*(v34 + 80) + 24) & ~*(v34 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v22;
  (*(v34 + 32))(v15 + v14, v36, v35);

  sub_24F92B898();
  v16 = swift_task_alloc();
  v0[31] = v16;
  *v16 = v0;
  v16[1] = sub_24F3CD7E4;
  v17 = v0[9];
  v18 = v0[10];
  v19 = v0[7];
  v20 = v0[8];

  return sub_24F3CABE4(v20, v19, v17, v18);
}

uint64_t sub_24F3CD7E4()
{
  *(*v1 + 256) = v0;

  if (v0)
  {
    v2 = sub_24F3CD9C0;
  }

  else
  {
    v2 = sub_24F3CD8F8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3CD8F8()
{
  (*(v0[26] + 8))(v0[29], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F3CD9C0()
{
  (*(v0[26] + 8))(v0[29], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_24F3CDA8C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryShelfIntent(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3CDAF0(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GameLibraryShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E614970;

  return sub_24F3CCFD4(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

double sub_24F3CDC60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = type metadata accessor for GameLibraryShelfIntent(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v24 - v16;
  v18 = sub_24F92B858();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_24F3CFD8C(v24, v14, type metadata accessor for GameLibraryShelfIntent);
  (*(v8 + 16))(v10, a5, v7);
  v19 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v20 = (v13 + *(v8 + 80) + v19) & ~*(v8 + 80);
  v21 = swift_allocObject();
  *(v21 + 2) = 0;
  *(v21 + 3) = 0;
  v22 = v25;
  *(v21 + 4) = a2;
  *(v21 + 5) = v22;
  sub_24F3CDA8C(v14, &v21[v19]);
  (*(v8 + 32))(&v21[v20], v10, v7);

  sub_24F1D3DA4(0, 0, v17, &unk_24F9F0170, v21);

  return result;
}

double sub_24F3CDF1C(uint64_t a1)
{
  v3 = *(type metadata accessor for GameLibraryShelfIntent(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v7 = *(v1 + 16);
  v8 = *(v1 + 24);
  v9 = v1 + ((v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_24F3CDC60(a1, v7, v8, v1 + v4, v9);
}

unint64_t sub_24F3CE000()
{
  result = qword_27F21ED30;
  if (!qword_27F21ED30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21ED00, &unk_24F95E190);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21ED30);
  }

  return result;
}

uint64_t sub_24F3CE064(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E614970;

  return sub_24F3CABE4(a4, a5, a6, a7);
}

uint64_t sub_24F3CE118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = swift_task_alloc();
  *(v7 + 16) = v12;
  *v12 = v7;
  v12[1] = sub_24E6541E4;

  return sub_24F3CABE4(a4, a5, a6, a7);
}

uint64_t objectdestroy_3Tm_0()
{
  v1 = type metadata accessor for GameLibraryShelfIntent(0);
  v107 = *(*(v1 - 8) + 80);
  v105 = *(*(v1 - 8) + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v103 = *(v2 - 8);
  v104 = v2;
  v102 = *(v103 + 80);

  v108 = v0;
  v106 = (v107 + 32) & ~v107;
  v3 = v0 + v106;

  v4 = v0 + v106 + *(v1 + 20);

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v8 = (*(v7 - 8) + 8);
  v109 = *(v7 - 8);
  v110 = *v8;
  (*v8)(v4 + v6, v7);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v9 = v4 + v5[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v99 = v1;
    v11 = type metadata accessor for CallProviderConversationHandle(0);
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v109 + 48))(v9 + v13, 1, v7))
      {
        v110(v9 + v13, v7);
      }
    }

    v14 = v9 + *(v10 + 20);
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v109 + 48))(v14 + v15, 1, v7))
      {
        v110(v14 + v15, v7);
      }
    }

    v1 = v99;
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v16 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v100 = v1;

    v18 = type metadata accessor for Game(0);
    v110(v16 + v18[18], v7);
    v19 = v18[19];
    if (!(*(v109 + 48))(v16 + v19, 1, v7))
    {
      v110(v16 + v19, v7);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v1 = v100;
  }

  v23 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    v110(v23 + v25[18], v7);
    v26 = v25[19];
    if (!(*(v109 + 48))(v23 + v26, 1, v7))
    {
      v110(v23 + v26, v7);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  v30 = v3 + *(v1 + 28);
  v31 = sub_24F92AA48();
  (*(*(v31 - 8) + 8))(v30, v31);
  v32 = type metadata accessor for GSKShelf(0);
  v33 = v32[5];
  v34 = sub_24F929608();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v30 + v33, 1, v34))
  {
    (*(v35 + 8))(v30 + v33, v34);
  }

  v36 = v30 + v32[6];
  v37 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v38 = *(*(v37 - 1) + 48);
  if (!v38(v36, 1, v37))
  {

    v39 = v36 + v37[5];
    v40 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v110(v39, v7);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v41 = v36 + v37[7];
          v42 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v44 = sub_24F928388();
              (*(*(v44 - 8) + 8))(v41, v44);
            }
          }

          v45 = (v36 + v37[10]);
          if (v45[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v45);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v80 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v81 = type metadata accessor for JSColor(0);
        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
        {
          v82 = sub_24F928388();
          (*(*(v82 - 8) + 8))(v80, v82);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v109 + 48))(v39, 1, v7))
        {
          v110(v39, v7);
        }

        if (*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v46 = type metadata accessor for HeaderPresentation(0);
  v47 = v36 + v46[5];
  if (v38(v47, 1, v37))
  {
    goto LABEL_59;
  }

  v101 = v7;

  v48 = v47 + v37[5];
  v49 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    goto LABEL_44;
  }

  v52 = swift_getEnumCaseMultiPayload();
  if (v52 <= 2)
  {
    if (!v52)
    {

      v83 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v84 = type metadata accessor for JSColor(0);
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_44;
    }

    if (v52 == 1)
    {
      if (!(*(v109 + 48))(v48, 1, v101))
      {
        v110(v48, v101);
      }

      if (*(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v52 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v52)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v110(v48, v101);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v50 = v47 + v37[7];
  v51 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v53 = sub_24F928388();
      (*(*(v53 - 8) + 8))(v50, v53);
    }
  }

  v54 = (v47 + v37[10]);
  v7 = v101;
  if (v54[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

LABEL_59:
  v55 = v36 + v46[6];
  if (v38(v55, 1, v37))
  {
    goto LABEL_76;
  }

  v56 = v7;

  v57 = v55 + v37[5];
  v58 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58))
  {
    goto LABEL_61;
  }

  v61 = swift_getEnumCaseMultiPayload();
  if (v61 <= 2)
  {
    if (!v61)
    {

      v86 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v87 = type metadata accessor for JSColor(0);
      if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
      {
        v88 = sub_24F928388();
        (*(*(v88 - 8) + 8))(v86, v88);
      }

      goto LABEL_61;
    }

    if (v61 == 1)
    {
      if (!(*(v109 + 48))(v57, 1, v56))
      {
        v110(v57, v56);
      }

      if (*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v61 != 2)
    {
      goto LABEL_61;
    }

LABEL_110:

    goto LABEL_61;
  }

  switch(v61)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v110(v57, v56);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_61:
  v59 = v55 + v37[7];
  v60 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v62 = sub_24F928388();
      (*(*(v62 - 8) + 8))(v59, v62);
    }
  }

  v63 = (v55 + v37[10]);
  v7 = v56;
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

LABEL_76:
  v64 = v36 + v46[7];
  if (*(v64 + 56) == 1)
  {
  }

  else if (!*(v64 + 56))
  {

    if (*(v64 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v64 + 16));
    }
  }

  v65 = v36 + v46[8];
  v66 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
  {
    v71 = swift_getEnumCaseMultiPayload();
    if (v71 == 2)
    {
      goto LABEL_151;
    }

    if (v71 != 1)
    {
      if (v71)
      {
        goto LABEL_82;
      }

      v72 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v72 - 8) + 48))(v65, 1, v72))
      {
        goto LABEL_82;
      }

      v73 = swift_getEnumCaseMultiPayload();
      if (v73 > 2)
      {
        if (v73 != 3)
        {
          if (v73 == 4)
          {
            v110(v65, v7);
            goto LABEL_82;
          }

          if (v73 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_151;
      }

      if (v73)
      {
        if (v73 == 1)
        {
          if (!(*(v109 + 48))(v65, 1, v7))
          {
            v110(v65, v7);
          }

          if (!*(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v73 != 2)
        {
          goto LABEL_82;
        }

LABEL_151:

        goto LABEL_82;
      }

      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_170:
      v96 = v65 + v95;
      v97 = type metadata accessor for JSColor(0);
      if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
      {
        v98 = sub_24F928388();
        (*(*(v98 - 8) + 8))(v96, v98);
      }

      goto LABEL_82;
    }

    v74 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v75 = *(*(v74 - 8) + 48);
    if (v75(v65, 1, v74))
    {
LABEL_101:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v77 = v65 + *(v76 + 48);
      if (!v75(v77, 1, v74))
      {
        v78 = swift_getEnumCaseMultiPayload();
        if (v78 <= 2)
        {
          switch(v78)
          {
            case 0:

              v89 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v90 = type metadata accessor for JSColor(0);
              if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
              {
                v91 = sub_24F928388();
                (*(*(v91 - 8) + 8))(v89, v91);
              }

              goto LABEL_169;
            case 1:
              if (!(*(v109 + 48))(v77, 1, v7))
              {
                v110(v77, v7);
              }

              if (!*(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_169;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_169;
          }

LABEL_163:

          goto LABEL_169;
        }

        switch(v78)
        {
          case 3:
            goto LABEL_163;
          case 4:
            v110(v77, v7);
            break;
          case 5:
            goto LABEL_163;
        }
      }

LABEL_169:
      v95 = *(v76 + 80);
      goto LABEL_170;
    }

    v79 = swift_getEnumCaseMultiPayload();
    if (v79 > 2)
    {
      if (v79 != 3)
      {
        if (v79 == 4)
        {
          v110(v65, v7);
          goto LABEL_101;
        }

        if (v79 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v79)
      {

        v92 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v93 = type metadata accessor for JSColor(0);
        if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
        {
          v94 = sub_24F928388();
          (*(*(v94 - 8) + 8))(v92, v94);
        }

        goto LABEL_101;
      }

      if (v79 == 1)
      {
        if (!(*(v109 + 48))(v65, 1, v7))
        {
          v110(v65, v7);
        }

        if (*(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v79 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v67 = (v30 + v32[13]);
  if (v67[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v68 = (v30 + v32[14]);
  if (v68[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v69 = (v30 + v32[16]);
  if (v69[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  (*(v103 + 8))(v108 + ((v106 + v105 + v102) & ~v102), v104);

  return swift_deallocObject();
}

uint64_t sub_24F3CFA74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v4;
  v9 = *(type metadata accessor for GameLibraryShelfIntent(0) - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v13 = (v11 + *(v12 + 80)) & ~*(v12 + 80);
  v14 = *(v3 + 16);
  v15 = *(v3 + 24);
  v16 = swift_task_alloc();
  *(v7 + 16) = v16;
  *v16 = v7;
  v16[1] = sub_24E6541E4;

  return sub_24F3CE118(a1, a2, a3, v14, v15, v3 + v10, v3 + v13);
}

uint64_t sub_24F3CFBE8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21ED28, &qword_24F95E358);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_24F3CFD44(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3CFD8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3CFDF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroyTm_67()
{
  v1 = type metadata accessor for GameLibraryShelfIntent(0);
  v107 = *(*(v1 - 8) + 80);
  v105 = *(*(v1 - 8) + 64);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900);
  v103 = *(v2 - 8);
  v104 = v2;
  v102 = *(v103 + 80);
  swift_unknownObjectRelease();

  v108 = v0;
  v106 = (v107 + 48) & ~v107;
  v3 = v0 + v106;

  v4 = v0 + v106 + *(v1 + 20);

  v5 = type metadata accessor for Player(0);
  v6 = v5[6];
  v7 = sub_24F9289E8();
  v8 = (*(v7 - 8) + 8);
  v109 = *(v7 - 8);
  v110 = *v8;
  (*v8)(v4 + v6, v7);

  if (*(v4 + v5[9] + 8) != 1)
  {
  }

  v9 = v4 + v5[13];
  v10 = type metadata accessor for CallProviderConversationHandleSet(0);
  if (!(*(*(v10 - 8) + 48))(v9, 1, v10))
  {
    v99 = v1;
    v11 = type metadata accessor for CallProviderConversationHandle(0);
    v12 = *(*(v11 - 8) + 48);
    if (!v12(v9, 1, v11))
    {

      v13 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v109 + 48))(v9 + v13, 1, v7))
      {
        v110(v9 + v13, v7);
      }
    }

    v14 = v9 + *(v10 + 20);
    if (!v12(v14, 1, v11))
    {

      v15 = *(type metadata accessor for CallProvider(0) + 24);
      if (!(*(v109 + 48))(v14 + v15, 1, v7))
      {
        v110(v14 + v15, v7);
      }
    }

    v1 = v99;
  }

  if (*(v4 + v5[15] + 8))
  {
  }

  v16 = v4 + v5[16];
  PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  if (!(*(*(PlayedTogetherInfo - 8) + 48))(v16, 1, PlayedTogetherInfo))
  {
    v100 = v1;

    v18 = type metadata accessor for Game(0);
    v110(v16 + v18[18], v7);
    v19 = v18[19];
    if (!(*(v109 + 48))(v16 + v19, 1, v7))
    {
      v110(v16 + v19, v7);
    }

    v20 = v18[21];
    v21 = sub_24F920818();
    v22 = *(v21 - 8);
    if (!(*(v22 + 48))(v16 + v20, 1, v21))
    {
      (*(v22 + 8))(v16 + v20, v21);
    }

    v1 = v100;
  }

  v23 = v4 + v5[17];
  ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
  if (!(*(*(ChallengeInfo - 8) + 48))(v23, 1, ChallengeInfo))
  {

    v25 = type metadata accessor for Game(0);
    v110(v23 + v25[18], v7);
    v26 = v25[19];
    if (!(*(v109 + 48))(v23 + v26, 1, v7))
    {
      v110(v23 + v26, v7);
    }

    v27 = v25[21];
    v28 = sub_24F920818();
    v29 = *(v28 - 8);
    if (!(*(v29 + 48))(v23 + v27, 1, v28))
    {
      (*(v29 + 8))(v23 + v27, v28);
    }
  }

  v30 = v3 + *(v1 + 28);
  v31 = sub_24F92AA48();
  (*(*(v31 - 8) + 8))(v30, v31);
  v32 = type metadata accessor for GSKShelf(0);
  v33 = v32[5];
  v34 = sub_24F929608();
  v35 = *(v34 - 8);
  if (!(*(v35 + 48))(v30 + v33, 1, v34))
  {
    (*(v35 + 8))(v30 + v33, v34);
  }

  v36 = v30 + v32[6];
  v37 = type metadata accessor for HeaderPresentation.HeaderLabel(0);
  v38 = *(*(v37 - 1) + 48);
  if (!v38(v36, 1, v37))
  {

    v39 = v36 + v37[5];
    v40 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40))
    {
      goto LABEL_31;
    }

    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        if (EnumCaseMultiPayload == 4)
        {
          v110(v39, v7);
          goto LABEL_31;
        }

        if (EnumCaseMultiPayload != 5)
        {
LABEL_31:
          v41 = v36 + v37[7];
          v42 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
          if (!(*(*(v42 - 8) + 48))(v41, 1, v42))
          {
            if (swift_getEnumCaseMultiPayload() == 1)
            {
            }

            else
            {
              v44 = sub_24F928388();
              (*(*(v44 - 8) + 8))(v41, v44);
            }
          }

          v45 = (v36 + v37[10]);
          if (v45[3])
          {
            __swift_destroy_boxed_opaque_existential_1(v45);
          }

          goto LABEL_42;
        }
      }
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {

        v80 = v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v81 = type metadata accessor for JSColor(0);
        if (!(*(*(v81 - 8) + 48))(v80, 1, v81))
        {
          v82 = sub_24F928388();
          (*(*(v82 - 8) + 8))(v80, v82);
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload == 1)
      {
        if (!(*(v109 + 48))(v39, 1, v7))
        {
          v110(v39, v7);
        }

        if (*(v39 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_31;
      }

      if (EnumCaseMultiPayload != 2)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_31;
  }

LABEL_42:
  v46 = type metadata accessor for HeaderPresentation(0);
  v47 = v36 + v46[5];
  if (v38(v47, 1, v37))
  {
    goto LABEL_59;
  }

  v101 = v7;

  v48 = v47 + v37[5];
  v49 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v49 - 8) + 48))(v48, 1, v49))
  {
    goto LABEL_44;
  }

  v52 = swift_getEnumCaseMultiPayload();
  if (v52 <= 2)
  {
    if (!v52)
    {

      v83 = v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v84 = type metadata accessor for JSColor(0);
      if (!(*(*(v84 - 8) + 48))(v83, 1, v84))
      {
        v85 = sub_24F928388();
        (*(*(v85 - 8) + 8))(v83, v85);
      }

      goto LABEL_44;
    }

    if (v52 == 1)
    {
      if (!(*(v109 + 48))(v48, 1, v101))
      {
        v110(v48, v101);
      }

      if (*(v48 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_44;
    }

    if (v52 != 2)
    {
      goto LABEL_44;
    }

LABEL_72:

    goto LABEL_44;
  }

  switch(v52)
  {
    case 3:
      goto LABEL_72;
    case 4:
      v110(v48, v101);
      break;
    case 5:
      goto LABEL_72;
  }

LABEL_44:
  v50 = v47 + v37[7];
  v51 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v51 - 8) + 48))(v50, 1, v51))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v53 = sub_24F928388();
      (*(*(v53 - 8) + 8))(v50, v53);
    }
  }

  v54 = (v47 + v37[10]);
  v7 = v101;
  if (v54[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v54);
  }

LABEL_59:
  v55 = v36 + v46[6];
  if (v38(v55, 1, v37))
  {
    goto LABEL_76;
  }

  v56 = v7;

  v57 = v55 + v37[5];
  v58 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58))
  {
    goto LABEL_61;
  }

  v61 = swift_getEnumCaseMultiPayload();
  if (v61 <= 2)
  {
    if (!v61)
    {

      v86 = v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
      v87 = type metadata accessor for JSColor(0);
      if (!(*(*(v87 - 8) + 48))(v86, 1, v87))
      {
        v88 = sub_24F928388();
        (*(*(v88 - 8) + 8))(v86, v88);
      }

      goto LABEL_61;
    }

    if (v61 == 1)
    {
      if (!(*(v109 + 48))(v57, 1, v56))
      {
        v110(v57, v56);
      }

      if (*(v57 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
      {
      }

      goto LABEL_61;
    }

    if (v61 != 2)
    {
      goto LABEL_61;
    }

LABEL_110:

    goto LABEL_61;
  }

  switch(v61)
  {
    case 3:
      goto LABEL_110;
    case 4:
      v110(v57, v56);
      break;
    case 5:
      goto LABEL_110;
  }

LABEL_61:
  v59 = v55 + v37[7];
  v60 = type metadata accessor for HeaderPresentation.HeaderLabel.ForegroundStyle(0);
  if (!(*(*(v60 - 8) + 48))(v59, 1, v60))
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
    }

    else
    {
      v62 = sub_24F928388();
      (*(*(v62 - 8) + 8))(v59, v62);
    }
  }

  v63 = (v55 + v37[10]);
  v7 = v56;
  if (v63[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v63);
  }

LABEL_76:
  v64 = v36 + v46[7];
  if (*(v64 + 56) == 1)
  {
  }

  else if (!*(v64 + 56))
  {

    if (*(v64 + 40))
    {
      __swift_destroy_boxed_opaque_existential_1((v64 + 16));
    }
  }

  v65 = v36 + v46[8];
  v66 = type metadata accessor for HeaderPresentation.HeaderStyle(0);
  if (!(*(*(v66 - 8) + 48))(v65, 1, v66))
  {
    v71 = swift_getEnumCaseMultiPayload();
    if (v71 == 2)
    {
      goto LABEL_151;
    }

    if (v71 != 1)
    {
      if (v71)
      {
        goto LABEL_82;
      }

      v72 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
      if ((*(*(v72 - 8) + 48))(v65, 1, v72))
      {
        goto LABEL_82;
      }

      v73 = swift_getEnumCaseMultiPayload();
      if (v73 > 2)
      {
        if (v73 != 3)
        {
          if (v73 == 4)
          {
            v110(v65, v7);
            goto LABEL_82;
          }

          if (v73 != 5)
          {
            goto LABEL_82;
          }
        }

        goto LABEL_151;
      }

      if (v73)
      {
        if (v73 == 1)
        {
          if (!(*(v109 + 48))(v65, 1, v7))
          {
            v110(v65, v7);
          }

          if (!*(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
          {
            goto LABEL_82;
          }
        }

        else if (v73 != 2)
        {
          goto LABEL_82;
        }

LABEL_151:

        goto LABEL_82;
      }

      v95 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
LABEL_170:
      v96 = v65 + v95;
      v97 = type metadata accessor for JSColor(0);
      if (!(*(*(v97 - 8) + 48))(v96, 1, v97))
      {
        v98 = sub_24F928388();
        (*(*(v98 - 8) + 8))(v96, v98);
      }

      goto LABEL_82;
    }

    v74 = type metadata accessor for HeaderPresentation.HeaderIconType(0);
    v75 = *(*(v74 - 8) + 48);
    if (v75(v65, 1, v74))
    {
LABEL_101:
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218348, &qword_24F948480);
      v77 = v65 + *(v76 + 48);
      if (!v75(v77, 1, v74))
      {
        v78 = swift_getEnumCaseMultiPayload();
        if (v78 <= 2)
        {
          switch(v78)
          {
            case 0:

              v89 = v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
              v90 = type metadata accessor for JSColor(0);
              if (!(*(*(v90 - 8) + 48))(v89, 1, v90))
              {
                v91 = sub_24F928388();
                (*(*(v91 - 8) + 8))(v89, v91);
              }

              goto LABEL_169;
            case 1:
              if (!(*(v109 + 48))(v77, 1, v7))
              {
                v110(v77, v7);
              }

              if (!*(v77 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
              {
                goto LABEL_169;
              }

              break;
            case 2:
              break;
            default:
              goto LABEL_169;
          }

LABEL_163:

          goto LABEL_169;
        }

        switch(v78)
        {
          case 3:
            goto LABEL_163;
          case 4:
            v110(v77, v7);
            break;
          case 5:
            goto LABEL_163;
        }
      }

LABEL_169:
      v95 = *(v76 + 80);
      goto LABEL_170;
    }

    v79 = swift_getEnumCaseMultiPayload();
    if (v79 > 2)
    {
      if (v79 != 3)
      {
        if (v79 == 4)
        {
          v110(v65, v7);
          goto LABEL_101;
        }

        if (v79 != 5)
        {
          goto LABEL_101;
        }
      }
    }

    else
    {
      if (!v79)
      {

        v92 = v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218338, &unk_24F948470) + 48);
        v93 = type metadata accessor for JSColor(0);
        if (!(*(*(v93 - 8) + 48))(v92, 1, v93))
        {
          v94 = sub_24F928388();
          (*(*(v94 - 8) + 8))(v92, v94);
        }

        goto LABEL_101;
      }

      if (v79 == 1)
      {
        if (!(*(v109 + 48))(v65, 1, v7))
        {
          v110(v65, v7);
        }

        if (*(v65 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F218340, &unk_24F98D3D0) + 48) + 24))
        {
        }

        goto LABEL_101;
      }

      if (v79 != 2)
      {
        goto LABEL_101;
      }
    }

    goto LABEL_101;
  }

LABEL_82:
  v67 = (v30 + v32[13]);
  if (v67[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v67);
  }

  v68 = (v30 + v32[14]);
  if (v68[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v68);
  }

  v69 = (v30 + v32[16]);
  if (v69[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v69);
  }

  (*(v103 + 8))(v108 + ((v106 + v105 + v102) & ~v102), v104);

  return swift_deallocObject();
}

uint64_t sub_24F3D1704(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for GameLibraryShelfIntent(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213778, &qword_24F93F900) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_24E6541E4;

  return sub_24F3CE064(a1, v10, v11, v12, v13, v1 + v6, v1 + v9);
}

uint64_t sub_24F3D18A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for PlayerAvatar(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 40);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F3D19E4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for PlayerAvatar(0);
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
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 40);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for LeaderboardChallengeSuggestionLockup(uint64_t a1)
{
  result = qword_27F241FA8;
  if (!qword_27F241FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3D1B60(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for PlayerAvatar(319);
    if (v2 <= 0x3F)
    {
      sub_24E6BCB04();
      if (v3 <= 0x3F)
      {
        sub_24E61C8D4(319);
        if (v4 <= 0x3F)
        {
          sub_24E61C938(319);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_24F3D1C3C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242028, &qword_24F9F0450);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3D378C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    type metadata accessor for LeaderboardChallengeSuggestionLockup(0);
    v8[14] = 1;
    type metadata accessor for PlayerAvatar(0);
    sub_24F3D38A8(&qword_27F218A38, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CD48();
    v8[13] = 2;
    sub_24F92CCA8();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    sub_24F92CD08();
    v8[10] = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
    v8[9] = 6;
    sub_24F929608();
    sub_24F3D38A8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F3D1FD4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v3 - 8);
  v39 = &v37 - v4;
  v5 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242018, &qword_24F9F0448);
  v40 = *(v8 - 8);
  v41 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for LeaderboardChallengeSuggestionLockup(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = &v13[*(v14 + 36)];
  v49 = 0;
  v47 = 0u;
  v48 = 0u;
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  v46 = v15;
  sub_24E61DA68(&v47, v15, qword_27F21B590, &unk_24F93BE30);
  v16 = v11[10];
  v17 = sub_24F929608();
  v18 = *(*(v17 - 8) + 56);
  v44 = v13;
  v45 = v16;
  v18(&v13[v16], 1, 1, v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3D378C();
  v42 = v10;
  v19 = v43;
  sub_24F92D108();
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    v20 = v44;
    sub_24E601704(v46, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(v20 + v45, &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v43 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v50 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v21 = v48;
    v22 = v44;
    *v44 = v47;
    *(v22 + 16) = v21;
    *(v22 + 32) = v49;
    LOBYTE(v47) = 1;
    sub_24F3D38A8(&qword_27F2185A0, type metadata accessor for PlayerAvatar, &protocol conformance descriptor for PlayerAvatar);
    sub_24F92CC68();
    sub_24E72FFFC(v7, v22 + v11[5]);
    LOBYTE(v47) = 2;
    v43 = 0;
    v23 = sub_24F92CBC8();
    v24 = a1;
    v25 = v40;
    v26 = (v22 + v11[6]);
    *v26 = v23;
    v26[1] = v27;
    LOBYTE(v47) = 3;
    v28 = sub_24F92CC28();
    v29 = (v22 + v11[7]);
    *v29 = v28;
    v29[1] = v30;
    LOBYTE(v47) = 4;
    v31 = sub_24F92CC28();
    v32 = (v22 + v11[8]);
    *v32 = v31;
    v32[1] = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v50 = 5;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    sub_24E61DA68(&v47, v46, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v47) = 6;
    sub_24F3D38A8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v34 = v39;
    v35 = v41;
    sub_24F92CC18();
    (*(v25 + 8))(v42, v35);
    sub_24E61DA68(v34, v22 + v45, &qword_27F213E68, &unk_24F93BC80);
    sub_24F3D37E0(v22, v38, type metadata accessor for LeaderboardChallengeSuggestionLockup);
    __swift_destroy_boxed_opaque_existential_1(v24);
    return sub_24F3D3848(v22, type metadata accessor for LeaderboardChallengeSuggestionLockup);
  }
}

unint64_t sub_24F3D2750()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6575676573;
  if (v1 != 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0x6554726564616568;
  if (v1 != 3)
  {
    v4 = 0x7470697263736564;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7641726579616C70;
  if (v1 != 1)
  {
    v5 = 0xD000000000000010;
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

uint64_t sub_24F3D283C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3D3C08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3D2864(uint64_t a1)
{
  v2 = sub_24F3D378C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3D28A0(uint64_t a1)
{
  v2 = sub_24F3D378C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F3D295C()
{
  result = qword_27F241FB8;
  if (!qword_27F241FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241FB8);
  }

  return result;
}

uint64_t sub_24F3D29B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FF0, &unk_24F9F03A8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v40 - v7;
  v9 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = (&v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2233D0, &qword_24F958810);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v44 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = &v40 - v16;
  v18 = type metadata accessor for LeaderboardChallengeSuggestionLockup(0);
  sub_24F3D37E0(a1 + *(v18 + 20), v11, type metadata accessor for PlayerAvatar);
  LOBYTE(v47[0]) = 7;
  sub_24F8319B8(v11, v47, v17);
  sub_24F927618();
  sub_24F9238C8();
  v19 = *(v13 + 44);
  v20 = v17;
  v21 = &v17[v19];
  v22 = v47[1];
  *v21 = v47[0];
  *(v21 + 1) = v22;
  *(v21 + 2) = v47[2];
  *v8 = sub_24F924C98();
  *(v8 + 1) = 0x4020000000000000;
  v8[16] = 0;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FF8, &qword_24F9F03B8);
  v24 = v8;
  sub_24F3D2DF0(a1, &v8[*(v23 + 44)]);
  sub_24E60169C(a1 + *(v18 + 36), v45, qword_27F24EC90, &unk_24F93C1D0);
  v25 = v46;
  sub_24E601704(v45, qword_27F21B590, &unk_24F93BE30);
  if (v25)
  {
    v26 = sub_24F926DF8();
    v27 = sub_24F925898();
    KeyPath = swift_getKeyPath();
    v29 = sub_24F926D38();
    v30 = swift_getKeyPath();
    v42 = v26;
  }

  else
  {
    v42 = 0;
    KeyPath = 0;
    v27 = 0;
    v30 = 0;
    v29 = 0;
  }

  v31 = v20;
  v41 = v20;
  v32 = v44;
  sub_24E60169C(v31, v44, &qword_27F2233D0, &qword_24F958810);
  v33 = v5;
  sub_24F3D36A4(v24, v5);
  v34 = v43;
  sub_24E60169C(v32, v43, &qword_27F2233D0, &qword_24F958810);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242000, &qword_24F9F03C0);
  sub_24F3D36A4(v33, v34 + v35[12]);
  v36 = v34 + v35[16];
  *v36 = 0;
  *(v36 + 8) = 1;
  v37 = (v34 + v35[20]);
  v38 = v42;
  sub_24E6DC040(v42, KeyPath, v27, v30, v29);
  sub_24E6DC0B0(v38, KeyPath, v27, v30, v29);
  *v37 = v38;
  v37[1] = KeyPath;
  v37[2] = v27;
  v37[3] = v30;
  v37[4] = v29;
  sub_24F3D3714(v24);
  sub_24E601704(v41, &qword_27F2233D0, &qword_24F958810);
  sub_24E6DC0B0(v38, KeyPath, v27, v30, v29);
  sub_24F3D3714(v33);
  return sub_24E601704(v32, &qword_27F2233D0, &qword_24F958810);
}

uint64_t sub_24F3D2DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2128D0, &qword_24F941F30);
  v34 = v4;
  v36 = *(v4 - 8);
  v5 = v36;
  MEMORY[0x28223BE20](v4);
  v43 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v46 = sub_24F9249A8();
  sub_24F3D322C(a1, &v57);
  v41 = v57;
  v40 = v58;
  v39 = v59;
  v42 = v61;
  v48 = 0;
  v47 = v60;
  v10 = v60;
  v37 = v60;
  v38 = sub_24F925A18();
  KeyPath = swift_getKeyPath();
  v44 = sub_24F9251C8();
  v11 = (a1 + *(type metadata accessor for LeaderboardChallengeSuggestionLockup(0) + 32));
  v12 = v11[1];
  v57 = *v11;
  v58 = v12;
  sub_24E600AEC();

  v13 = sub_24F925E18();
  v15 = v14;
  v57 = v13;
  v58 = v14;
  v17 = v16 & 1;
  LOBYTE(v59) = v16 & 1;
  v60 = v18;
  v35 = v9;
  sub_24F9268B8();
  sub_24E600B40(v13, v15, v17);

  v19 = *(v5 + 16);
  v20 = v43;
  v19(v43, v9, v4);
  *&v51 = v46;
  *(&v51 + 1) = 0x4010000000000000;
  LOBYTE(v52) = 0;
  *(&v52 + 1) = *v50;
  DWORD1(v52) = *&v50[3];
  v21 = v41;
  v22 = v40;
  *(&v52 + 1) = v41;
  *&v53 = v40;
  v23 = v39;
  *(&v53 + 1) = v39;
  LOBYTE(v54) = v10;
  *(&v54 + 1) = *v49;
  DWORD1(v54) = *&v49[3];
  v24 = v42;
  *(&v54 + 1) = v42;
  *&v55 = KeyPath;
  v25 = v38;
  *(&v55 + 1) = v38;
  v56 = v44;
  v26 = v55;
  *(a2 + 80) = v44;
  v27 = v53;
  *(a2 + 48) = v54;
  *(a2 + 64) = v26;
  v28 = v52;
  *a2 = v51;
  *(a2 + 16) = v28;
  *(a2 + 32) = v27;
  v29 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242008, &qword_24F9F0430) + 48));
  v30 = v34;
  v19(v29, v20, v34);
  sub_24E60169C(&v51, &v57, &qword_27F242010, &unk_24F9F0438);
  v31 = *(v36 + 8);
  v31(v35, v30);
  v31(v20, v30);
  v57 = v46;
  v58 = 0x4010000000000000;
  LOBYTE(v59) = 0;
  *(&v59 + 1) = *v50;
  HIDWORD(v59) = *&v50[3];
  v60 = v21;
  v61 = v22;
  v62 = v23;
  v63 = v37;
  *v64 = *v49;
  *&v64[3] = *&v49[3];
  v65 = v24;
  v66 = KeyPath;
  v67 = v25;
  v68 = v44;
  return sub_24E601704(&v57, &qword_27F242010, &unk_24F9F0438);
}

uint64_t sub_24F3D322C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for LeaderboardChallengeSuggestionLockup(0) + 24) + 8);
  if (v3)
  {

    v3 = sub_24F926E48();
  }

  sub_24E600AEC();

  v4 = sub_24F925E18();
  v6 = v5;
  v8 = v7;
  v10 = v9;

  v8 &= 1u;
  sub_24E5FD138(v4, v6, v8);

  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v6;
  *(a2 + 24) = v8;
  *(a2 + 32) = v10;
  sub_24E600B40(v4, v6, v8);
}

uint64_t sub_24F3D3344@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = sub_24F9249A8();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FD0, &qword_24F9F0380);
  sub_24F3D29B0(a1, a2 + *(v4 + 44));
  LOBYTE(a1) = sub_24F925808();
  v5 = a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FD8, &qword_24F9F0388) + 36);
  *v5 = a1;
  *(v5 + 8) = 0u;
  *(v5 + 24) = 0u;
  *(v5 + 40) = 1;
  v6 = (a2 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FE0, &unk_24F9F0390) + 36));
  v7 = *(sub_24F924258() + 20);
  v8 = *MEMORY[0x277CE0118];
  v9 = sub_24F924B38();
  (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  __asm { FMOV            V0.2D, #20.0 }

  *v6 = _Q0;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CB48, &qword_24F9570D0);
  v16 = *(v15 + 36);
  v17 = type metadata accessor for GradientBackground(0);
  (*(*(v17 - 8) + 56))(&v6[v16], 1, 1, v17);
  *&v6[*(v15 + 40)] = 0;
  LOBYTE(v15) = sub_24F925818();
  sub_24F923318();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FE8, &qword_24F9F03A0);
  v27 = a2 + *(result + 36);
  *v27 = v15;
  *(v27 + 8) = v19;
  *(v27 + 16) = v21;
  *(v27 + 24) = v23;
  *(v27 + 32) = v25;
  *(v27 + 40) = 0;
  return result;
}

uint64_t sub_24F3D3514(uint64_t a1)
{
  sub_24F3D295C();

  return sub_24F9218E8();
}

unint64_t sub_24F3D35A4()
{
  result = qword_27F241FC8;
  if (!qword_27F241FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F241FC8);
  }

  return result;
}

uint64_t sub_24F3D36A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FF0, &unk_24F9F03A8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3D3714(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F241FF0, &unk_24F9F03A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F3D378C()
{
  result = qword_27F242020;
  if (!qword_27F242020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242020);
  }

  return result;
}

uint64_t sub_24F3D37E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3D3848(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F3D38A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F3D3904()
{
  result = qword_27F242030;
  if (!qword_27F242030)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241FE8, &qword_24F9F03A0);
    sub_24F3D3990();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242030);
  }

  return result;
}

unint64_t sub_24F3D3990()
{
  result = qword_27F242038;
  if (!qword_27F242038)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241FE0, &unk_24F9F0390);
    sub_24F3D3A48();
    sub_24E602068(&qword_27F22E7A8, &qword_27F21CB48, &qword_24F9570D0, &unk_24FA0D350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242038);
  }

  return result;
}

unint64_t sub_24F3D3A48()
{
  result = qword_27F242040;
  if (!qword_27F242040)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F241FD8, &qword_24F9F0388);
    sub_24E602068(&qword_27F242048, &qword_27F242050, &qword_24F9F0468, MEMORY[0x277CE1138]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242040);
  }

  return result;
}

unint64_t sub_24F3D3B04()
{
  result = qword_27F242058;
  if (!qword_27F242058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242058);
  }

  return result;
}

unint64_t sub_24F3D3B5C()
{
  result = qword_27F242060;
  if (!qword_27F242060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242060);
  }

  return result;
}

unint64_t sub_24F3D3BB4()
{
  result = qword_27F242068;
  if (!qword_27F242068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242068);
  }

  return result;
}

uint64_t sub_24F3D3C08(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7641726579616C70 && a2 == 0xEC00000072617461 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA74B00 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6554726564616568 && a2 == 0xEA00000000007478 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F3D3E74(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928AD8();
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
      v13 = type metadata accessor for ImpedimentFlowDestination(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F3D3FAC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_24F928AD8();
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
      v13 = type metadata accessor for ImpedimentFlowDestination(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for ImpedimentFlowAction(uint64_t a1)
{
  result = qword_27F242070;
  if (!qword_27F242070)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24F3D411C(uint64_t a1)
{
  result = sub_24F928AD8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ImpedimentFlowDestination(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_24F3D41CC()
{
  result = qword_27F242080;
  if (!qword_27F242080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242080);
  }

  return result;
}

unint64_t sub_24F3D4238()
{
  result = qword_27F242088;
  if (!qword_27F242088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242088);
  }

  return result;
}

unint64_t sub_24F3D4290()
{
  result = qword_27F23B230;
  if (!qword_27F23B230)
  {
    type metadata accessor for ImpedimentFlowAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F23B230);
  }

  return result;
}

uint64_t sub_24F3D42E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImpedimentFlowDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3D4360(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Player(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F3D4420(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Player(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for ArcadePageToolbarItemGroupsIntent(uint64_t a1)
{
  result = qword_27F2420A0;
  if (!qword_27F2420A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_24F3D4510@<D0>(void *a1@<X8>)
{
  v1 = off_27F242098;
  *a1 = qword_27F242090;
  a1[1] = v1;

  return result;
}

unint64_t sub_24F3D4524@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 32) = 0x444965676170;
  *(inited + 16) = xmmword_24F93A400;
  *(inited + 40) = 0xE600000000000000;
  v6 = *v2;
  v7 = v2[1];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v6;
  *(inited + 56) = v7;
  *(inited + 88) = 0x616C506C61636F6CLL;
  *(inited + 96) = 0xEB00000000726579;
  v9 = *(a1 + 20);
  *(inited + 128) = type metadata accessor for Player(0);
  *(inited + 136) = sub_24E7B641C();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 104));
  sub_24E70D960(v2 + v9, boxed_opaque_existential_1);

  v11 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v12 = sub_24E80FFAC(v11);

  a2[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a2[4] = result;
  *a2 = v12;
  return result;
}

uint64_t ChallengesSuggestedGamesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_24F3D46F0()
{
  if (*v0)
  {
    return 0x706574537478656ELL;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F3D4728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x706574537478656ELL && a2 == 0xE800000000000000)
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

uint64_t sub_24F3D4800(uint64_t a1)
{
  v2 = sub_24F3D4A0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3D483C(uint64_t a1)
{
  v2 = sub_24F3D4A0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesSuggestedGamesShelfIntent.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2420B0, &qword_24F9F0818);
  v9 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3D4A0C();
  sub_24F92D128();
  v13 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    sub_24E607F0C();
    sub_24F92CD48();
  }

  return (*(v9 + 8))(v6, v4);
}

unint64_t sub_24F3D4A0C()
{
  result = qword_27F2420B8;
  if (!qword_27F2420B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420B8);
  }

  return result;
}

uint64_t ChallengesSuggestedGamesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2420C0, &qword_24F9F0820);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3D4A0C();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v18 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  sub_24E60802C();
  sub_24F92CC68();
  (*(v6 + 8))(v8, v5);
  v13 = v17;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F3D4CC8()
{
  result = qword_27F2420C8;
  if (!qword_27F2420C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420C8);
  }

  return result;
}

unint64_t sub_24F3D4D20()
{
  result = qword_27F2420D0;
  if (!qword_27F2420D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420D0);
  }

  return result;
}

unint64_t sub_24F3D4D78()
{
  result = qword_27F2420D8;
  if (!qword_27F2420D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420D8);
  }

  return result;
}

__n128 ActivityFeedItem.init(id:type:timestamp:message:summaryMessage:relationships:metricsKey:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *a3;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = v18;
  v19 = type metadata accessor for ActivityFeedItem(0);
  sub_24E6C4F90(a4, a9 + v19[6]);
  v20 = (a9 + v19[7]);
  *v20 = a5;
  v20[1] = a6;
  v21 = (a9 + v19[8]);
  *v21 = a7;
  v21[1] = a8;
  v22 = (a9 + v19[9]);
  result = *a10;
  v24 = *(a10 + 16);
  *v22 = *a10;
  v22[1] = v24;
  v25 = (a9 + v19[10]);
  *v25 = a11;
  v25[1] = a12;
  return result;
}

uint64_t type metadata accessor for ActivityFeedItem(uint64_t a1)
{
  result = qword_27F242128;
  if (!qword_27F242128)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

GameStoreKit::ActivityFeedItemType_optional __swiftcall ActivityFeedItemType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ActivityFeedItemType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x65726F6373;
  if (v1 != 5)
  {
    v3 = 0x7365726F6373;
  }

  v4 = 0x646E65697266;
  if (v1 != 3)
  {
    v4 = 0x6D65766569686361;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x68746957656D6167;
  if (v1 != 1)
  {
    v5 = 0x6957726579616C70;
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

uint64_t sub_24F3D5030(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24F3D5164(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xE500000000000000;
  v6 = 0x65726F6373;
  v7 = 0xE600000000000000;
  if (v2 != 5)
  {
    v6 = 0x7365726F6373;
    v5 = 0xE600000000000000;
  }

  v8 = 0x646E65697266;
  if (v2 != 3)
  {
    v8 = 0x6D65766569686361;
    v7 = 0xEB00000000746E65;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEF73726579616C50;
  v10 = 0x68746957656D6167;
  if (v2 != 1)
  {
    v10 = 0x6957726579616C70;
    v9 = 0xEE00656D61476874;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t ActivityFeedItem.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActivityFeedItem.timestamp.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ActivityFeedItem(0) + 24);

  return sub_24E728A00(v3, a1);
}

uint64_t ActivityFeedItem.message.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItem(0) + 28));

  return v1;
}

uint64_t ActivityFeedItem.summaryMessage.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItem(0) + 32));

  return v1;
}

double ActivityFeedItem.relationships.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ActivityFeedItem(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;

  return result;
}

uint64_t ActivityFeedItem.metricsKey.getter()
{
  v1 = *(v0 + *(type metadata accessor for ActivityFeedItem(0) + 40));

  return v1;
}

unint64_t ActivityFeedItem.jsRepresentation(in:)@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  v4 = inited;
  *(inited + 16) = xmmword_24F9AF330;
  *(inited + 32) = 25705;
  *(inited + 40) = 0xE200000000000000;
  v5 = *v1;
  v6 = v1[1];
  v7 = MEMORY[0x277D837D0];
  v8 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v8;
  *(inited + 48) = v5;
  *(inited + 56) = v6;
  *(inited + 88) = 1701869940;
  *(inited + 96) = 0xE400000000000000;
  v9 = *(v1 + 16);
  v34 = a1;
  if (v9 <= 2)
  {
    if (*(v1 + 16))
    {
      if (v9 == 1)
      {
        v10 = 0xEF73726579616C50;
        v11 = 0x68746957656D6167;
      }

      else
      {
        v10 = 0xEE00656D61476874;
        v11 = 0x6957726579616C70;
      }
    }

    else
    {
      v10 = 0xE700000000000000;
      v11 = 0x6E776F6E6B6E75;
    }
  }

  else if (*(v1 + 16) > 4u)
  {
    if (v9 == 5)
    {
      v10 = 0xE500000000000000;
      v11 = 0x65726F6373;
    }

    else
    {
      v10 = 0xE600000000000000;
      v11 = 0x7365726F6373;
    }
  }

  else if (v9 == 3)
  {
    v10 = 0xE600000000000000;
    v11 = 0x646E65697266;
  }

  else
  {
    v10 = 0xEB00000000746E65;
    v11 = 0x6D65766569686361;
  }

  *(inited + 128) = v7;
  *(inited + 136) = v8;
  *(inited + 104) = v11;
  *(inited + 112) = v10;
  *(inited + 144) = 0x6D617473656D6974;
  *(inited + 152) = 0xE900000000000070;
  v12 = type metadata accessor for ActivityFeedItem(0);
  v13 = v12[6];
  *(v4 + 184) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  *(v4 + 192) = sub_24E7594F8(&qword_27F21B760, &unk_27F22EC30, &qword_24F939880);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v4 + 160));
  sub_24E728A00(v1 + v13, boxed_opaque_existential_1);
  *(v4 + 200) = 0x6567617373656DLL;
  *(v4 + 208) = 0xE700000000000000;
  v15 = (v1 + v12[7]);
  v16 = *v15;
  v17 = v15[1];
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(v4 + 240) = v18;
  v19 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10);
  *(v4 + 216) = v16;
  *(v4 + 224) = v17;
  *(v4 + 248) = v19;
  strcpy((v4 + 256), "summaryMessage");
  *(v4 + 271) = -18;
  v20 = (v1 + v12[8]);
  v21 = *v20;
  v33 = v20[1];
  *(v4 + 296) = v18;
  *(v4 + 304) = v19;
  *(v4 + 272) = v21;
  *(v4 + 280) = v33;
  strcpy((v4 + 312), "relationships");
  *(v4 + 326) = -4864;
  v22 = (v1 + v12[9]);
  v23 = *v22;
  v24 = v22[1];
  v26 = v22[2];
  v25 = v22[3];
  *(v4 + 352) = &type metadata for ActivityFeedItemRelationships;
  *(v4 + 360) = sub_24F3D58CC();
  v27 = swift_allocObject();
  *(v4 + 328) = v27;
  v27[2] = v23;
  v27[3] = v24;
  v27[4] = v26;
  v27[5] = v25;
  *(v4 + 368) = 0x4B7363697274656DLL;
  *(v4 + 376) = 0xEA00000000007965;
  v28 = (v1 + v12[10]);
  v30 = *v28;
  v29 = v28[1];
  *(v4 + 408) = v18;
  *(v4 + 416) = v19;
  *(v4 + 384) = v30;
  *(v4 + 392) = v29;

  v31 = sub_24E607E40(v4);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  v34[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  v34[4] = result;
  *v34 = v31;
  return result;
}

unint64_t sub_24F3D58CC()
{
  result = qword_27F2420E0;
  if (!qword_27F2420E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420E0);
  }

  return result;
}

uint64_t sub_24F3D5920()
{

  return swift_deallocObject();
}

uint64_t sub_24F3D5970()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F6974616C6572;
  if (v1 != 5)
  {
    v3 = 0x4B7363697274656DLL;
  }

  v4 = 0x6567617373656DLL;
  if (v1 != 3)
  {
    v4 = 0x4D7972616D6D7573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 1701869940;
  if (v1 != 1)
  {
    v5 = 0x6D617473656D6974;
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

uint64_t sub_24F3D5A58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3D6990(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3D5A80(uint64_t a1)
{
  v2 = sub_24F3D6368();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3D5ABC(uint64_t a1)
{
  v2 = sub_24F3D6368();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActivityFeedItem.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2420E8, &qword_24F9F0A18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3D6368();
  sub_24F92D128();
  LOBYTE(v17) = 0;
  sub_24F92CD08();
  if (!v2)
  {
    LOBYTE(v17) = *(v3 + 16);
    v21 = 1;
    sub_24F3D63BC();
    sub_24F92CD48();
    v9 = type metadata accessor for ActivityFeedItem(0);
    LOBYTE(v17) = 2;
    sub_24F91F648();
    sub_24F2D4580(&qword_27F21BB08, MEMORY[0x277CC9580]);
    sub_24F92CCF8();
    LOBYTE(v17) = 3;
    sub_24F92CCA8();
    LOBYTE(v17) = 4;
    sub_24F92CCA8();
    v10 = (v3 + *(v9 + 36));
    v11 = *v10;
    v12 = v10[1];
    v13 = v10[2];
    v16 = v10[3];
    v17 = v11;
    v18 = v12;
    v19 = v13;
    v20 = v16;
    v21 = 5;
    sub_24F3D6410();

    sub_24F92CD48();

    LOBYTE(v17) = 6;
    sub_24F92CCA8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ActivityFeedItem.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v27 - v5;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242108, &qword_24F9F0A20);
  MEMORY[0x28223BE20](v29);
  v8 = &v27 - v7;
  v9 = type metadata accessor for ActivityFeedItem(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24F3D6368();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  LOBYTE(v31) = 0;
  *v11 = sub_24F92CC28();
  *(v11 + 1) = v13;
  v33 = 1;
  sub_24F3D6464();
  sub_24F92CC68();
  v11[16] = v31;
  sub_24F91F648();
  LOBYTE(v31) = 2;
  sub_24F2D4580(&qword_27F21B778, MEMORY[0x277CC95A0]);
  sub_24F92CC18();
  sub_24E6C4F90(v6, &v11[v9[6]]);
  LOBYTE(v31) = 3;
  v14 = sub_24F92CBC8();
  v15 = &v11[v9[7]];
  *v15 = v14;
  v15[1] = v16;
  LOBYTE(v31) = 4;
  v17 = sub_24F92CBC8();
  v18 = &v11[v9[8]];
  *v18 = v17;
  v18[1] = v19;
  v33 = 5;
  sub_24F3D64B8();
  sub_24F92CC68();
  v20 = &v11[v9[9]];
  v21 = v32;
  *v20 = v31;
  *(v20 + 1) = v21;
  LOBYTE(v31) = 6;
  v22 = sub_24F92CBC8();
  v24 = v23;
  MEMORY[8](v8, v29);
  v25 = &v11[v9[10]];
  *v25 = v22;
  v25[1] = v24;
  sub_24F3D650C(v11, v28);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_24F3D6570(v11);
}

unint64_t sub_24F3D6368()
{
  result = qword_27F2420F0;
  if (!qword_27F2420F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420F0);
  }

  return result;
}

unint64_t sub_24F3D63BC()
{
  result = qword_27F2420F8;
  if (!qword_27F2420F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2420F8);
  }

  return result;
}

unint64_t sub_24F3D6410()
{
  result = qword_27F242100;
  if (!qword_27F242100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242100);
  }

  return result;
}

unint64_t sub_24F3D6464()
{
  result = qword_27F242110;
  if (!qword_27F242110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242110);
  }

  return result;
}

unint64_t sub_24F3D64B8()
{
  result = qword_27F242118;
  if (!qword_27F242118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242118);
  }

  return result;
}

uint64_t sub_24F3D650C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActivityFeedItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3D6570(uint64_t a1)
{
  v2 = type metadata accessor for ActivityFeedItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F3D65D0()
{
  result = qword_27F242120;
  if (!qword_27F242120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242120);
  }

  return result;
}

uint64_t sub_24F3D6648(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24F3D6718(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24F3D67C8(uint64_t a1)
{
  sub_24E728940(319);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_24F3D688C()
{
  result = qword_27F242138;
  if (!qword_27F242138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242138);
  }

  return result;
}

unint64_t sub_24F3D68E4()
{
  result = qword_27F242140;
  if (!qword_27F242140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242140);
  }

  return result;
}

unint64_t sub_24F3D693C()
{
  result = qword_27F242148;
  if (!qword_27F242148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242148);
  }

  return result;
}

uint64_t sub_24F3D6990(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6567617373656DLL && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x4D7972616D6D7573 && a2 == 0xEE00656761737365 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6E6F6974616C6572 && a2 == 0xED00007370696873 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x4B7363697274656DLL && a2 == 0xEA00000000007965)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24F3D6BF0()
{
  result = qword_27F242150;
  if (!qword_27F242150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242150);
  }

  return result;
}

uint64_t sub_24F3D6C4C@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v55 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v3 - 8);
  v47 = &v47 - v4;
  sub_24F3D80BC();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C130, &unk_24F98F850);
  v56 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v49 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v47 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0, &unk_24F98F830);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - v13;
  v15 = sub_24F9210E8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v21 = &v47 - v20;
  v22 = sub_24F9289E8();
  v53 = *(v22 - 8);
  v54 = v22;
  MEMORY[0x28223BE20](v22);
  v24 = &v47 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v48 = &v47 - v26;
  sub_24F3D8104(a1, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    sub_24E601704(a1, &qword_27F21E3C0, &unk_24F98F830);
    sub_24E601704(v14, &qword_27F21E3C0, &unk_24F98F830);
    v27 = 1;
LABEL_3:
    v29 = v54;
    v28 = v55;
    v30 = v53;
    return (*(v30 + 56))(v28, v27, 1, v29);
  }

  (*(v16 + 32))(v21, v14, v15);
  sub_24F9210A8();
  v32 = v57;
  sub_24F920F28();
  if (!v32)
  {
    v33 = *(v56 + 8);
    v34 = v11;
    v35 = v52;
    v56 += 8;
    v57 = v33;
    v33(v34, v52);
    v36 = (*(v50 + 88))(v7, v51);
    if (v36 == *MEMORY[0x277D0D4C8])
    {
      (*(v16 + 16))(v18, v21, v15);
      sub_24F3D7A84(v18, v24);
      sub_24E601704(a1, &qword_27F21E3C0, &unk_24F98F830);
      (*(v16 + 8))(v21, v15);
      v30 = v53;
      v38 = v54;
    }

    else
    {
      if (v36 != *MEMORY[0x277D0D4C0])
      {
        sub_24E601704(a1, &qword_27F21E3C0, &unk_24F98F830);
        (*(v16 + 8))(v21, v15);
        (*(v50 + 8))(v7, v51);
        v27 = 1;
        goto LABEL_3;
      }

      v37 = v49;
      sub_24F9210A8();
      v42 = sub_24F920F38();
      v44 = v43;
      v57(v37, v35);
      v45 = v47;
      sub_24F3D780C(v42, v44, v47);
      sub_24E601704(a1, &qword_27F21E3C0, &unk_24F98F830);
      (*(v16 + 8))(v21, v15);
      v30 = v53;
      v46 = v54;
      if ((*(v53 + 48))(v45, 1))
      {
        sub_24E601704(v45, &qword_27F213FB0, &qword_24F93E6B0);
        v27 = 1;
        v28 = v55;
        v29 = v46;
        return (*(v30 + 56))(v28, v27, 1, v29);
      }

      v24 = v45;
      v38 = v46;
    }

    v39 = *(v30 + 32);
    v40 = v48;
    v39(v48, v24, v38);
    v41 = v55;
    v39(v55, v40, v38);
    v29 = v38;
    v28 = v41;
    v27 = 0;
    return (*(v30 + 56))(v28, v27, 1, v29);
  }

  sub_24E601704(a1, &qword_27F21E3C0, &unk_24F98F830);
  (*(v56 + 8))(v11, v52);
  return (*(v16 + 8))(v21, v15);
}

void sub_24F3D7378(void *a1)
{
  v3 = [a1 templateURL];
  sub_24F92B0D8();

  v4 = [a1 width];
  [v4 doubleValue];

  v5 = [a1 height];
  [v5 doubleValue];

  v6 = [a1 backgroundColor];
  if (v6)
  {
    v7 = v6;
    sub_24F92B0D8();

    sub_24E77ACC8();
    v8 = sub_24F92C398();
    if (v1)
    {

LABEL_17:

      return;
    }

    v9 = v8;
    v10 = [v8 CGColor];

    v11 = *MEMORY[0x277CEE210];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C670(v10, v11, isUniquelyReferenced_nonNull_native);
  }

  v13 = [a1 textColor1];
  if (v13)
  {
    v14 = v13;
    sub_24F92B0D8();

    sub_24E77ACC8();
    v15 = sub_24F92C398();
    if (v1)
    {
      goto LABEL_16;
    }

    v16 = v15;
    v17 = [v15 CGColor];

    v18 = *MEMORY[0x277CEE218];
    v19 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C670(v17, v18, v19);
  }

  v20 = [a1 textColor2];
  if (v20)
  {
    v21 = v20;
    sub_24F92B0D8();

    sub_24E77ACC8();
    v22 = sub_24F92C398();
    if (v1)
    {
      goto LABEL_16;
    }

    v23 = v22;
    v24 = [v22 CGColor];

    v25 = *MEMORY[0x277CEE220];
    v26 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C670(v24, v25, v26);
  }

  v27 = [a1 textColor3];
  if (!v27)
  {
    goto LABEL_14;
  }

  v28 = v27;
  sub_24F92B0D8();

  sub_24E77ACC8();
  v29 = sub_24F92C398();
  if (v1)
  {
LABEL_16:

    goto LABEL_17;
  }

  v30 = v29;
  v31 = [v29 CGColor];

  v32 = *MEMORY[0x277CEE228];
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_24E81C670(v31, v32, v33);

LABEL_14:
  v34 = [a1 textColor4];
  if (v34)
  {
    v35 = v34;
    sub_24F92B0D8();

    sub_24E77ACC8();
    v36 = sub_24F92C398();
    if (v1)
    {
      goto LABEL_16;
    }

    v37 = v36;
    v38 = [v36 CGColor];

    v39 = *MEMORY[0x277CEE230];
    v40 = swift_isUniquelyReferenced_nonNull_native();
    sub_24E81C670(v38, v39, v40);
  }

  sub_24F928948();
}

uint64_t sub_24F3D780C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v20 - v7;
  v9 = sub_24F91F4A8();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v20 - v15;
  v20[0] = 0x3A6E6F6369707061;
  v20[1] = 0xEA00000000002F2FLL;
  MEMORY[0x253050C20](a1, a2, v14);

  sub_24F91F488();

  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E601704(v8, &qword_27F228530, &unk_24F93C6E0);
    v17 = 1;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v9);
    (*(v10 + 16))(v12, v16, v9);
    sub_24F928978();
    (*(v10 + 8))(v16, v9);
    v17 = 0;
  }

  v18 = sub_24F9289E8();
  return (*(*(v18 - 8) + 56))(a3, v17, 1, v18);
}

uint64_t sub_24F3D7A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v54 = a2;
  v4 = sub_24F9210D8();
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C130, &unk_24F98F850);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  sub_24F9210A8();
  v14 = sub_24F920F48();
  if (v2)
  {
    v16 = sub_24F9210E8();
    (*(*(v16 - 8) + 8))(a1, v16);
    return (*(v11 + 8))(v13, v10);
  }

  else
  {
    v49 = v14;
    v50 = v4;
    v51 = v6;
    v52 = v15;
    (*(v11 + 8))(v13, v10);
    v18 = sub_24E609AB0(MEMORY[0x277D84F90]);
    sub_24F921088();
    if (v19)
    {
      sub_24E77ACC8();
      v20 = sub_24F92C398();
      v21 = [v20 CGColor];

      v22 = *MEMORY[0x277CEE210];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      sub_24E81C670(v21, v22, isUniquelyReferenced_nonNull_native);

      v18 = v55;
    }

    sub_24F921048();
    if (v24)
    {
      sub_24E77ACC8();
      v25 = sub_24F92C398();
      v26 = [v25 CGColor];

      v27 = *MEMORY[0x277CEE218];
      v28 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      sub_24E81C670(v26, v27, v28);

      v18 = v55;
    }

    sub_24F921058();
    if (v29)
    {
      sub_24E77ACC8();
      v30 = sub_24F92C398();
      v31 = [v30 CGColor];

      v32 = *MEMORY[0x277CEE220];
      v33 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      sub_24E81C670(v31, v32, v33);

      v18 = v55;
    }

    sub_24F921068();
    if (v34)
    {
      sub_24E77ACC8();
      v35 = sub_24F92C398();
      v36 = [v35 CGColor];

      v37 = *MEMORY[0x277CEE228];
      v38 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      sub_24E81C670(v36, v37, v38);

      v18 = v55;
    }

    sub_24F921078();
    if (v39)
    {
      sub_24E77ACC8();
      v40 = sub_24F92C398();
      v41 = [v40 CGColor];

      v42 = *MEMORY[0x277CEE230];
      v43 = swift_isUniquelyReferenced_nonNull_native();
      v55 = v18;
      sub_24E81C670(v41, v42, v43);
    }

    sub_24F921098();
    sub_24F9210B8();
    v44 = *(v53 + 8);
    v45 = v9;
    v46 = v50;
    v44(v45, v50);
    v47 = v51;
    sub_24F921098();
    sub_24F9210C8();
    v44(v47, v46);
    sub_24F928948();
    v48 = sub_24F9210E8();
    return (*(*(v48 - 8) + 8))(a1, v48);
  }
}

void sub_24F3D80BC()
{
  if (!qword_27F242158)
  {
    v0 = sub_24F920F18();
    if (!v1)
    {
      atomic_store(v0, &qword_27F242158);
    }
  }
}

uint64_t sub_24F3D8104(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21E3C0, &unk_24F98F830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3D8188(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 64);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[8];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[11];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[13];
    goto LABEL_15;
  }

  v17 = sub_24F928AD8();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[16];

  return v18(v19, a2, v17);
}

uint64_t sub_24F3D841C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 64) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[8];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[11];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[13];
    goto LABEL_13;
  }

  v17 = sub_24F928AD8();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[16];

  return v18(v19, a2, a2, v17);
}

uint64_t type metadata accessor for DraftPlayTogetherAction(uint64_t a1)
{
  result = qword_27F242160;
  if (!qword_27F242160)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3D86E8(uint64_t a1)
{
  sub_24F3D89B4(319, &qword_27F2182A8, &type metadata for GameActivityDraftPlayerInfo, MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    sub_24E6CFC10(319, &qword_27F2182A0, &type metadata for PlayTogetherGroup);
    if (v2 <= 0x3F)
    {
      sub_24E6CFC10(319, &qword_27F2182B0, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        sub_24F3D8960(319, &qword_27F21FB48, type metadata accessor for GameActivityDraftGameInfo);
        if (v4 <= 0x3F)
        {
          sub_24F3D8960(319, &qword_27F23FF20, type metadata accessor for Leaderboard);
          if (v5 <= 0x3F)
          {
            sub_24F3D8960(319, &qword_27F21B7B0, type metadata accessor for ChallengeDefinitionDetail);
            if (v6 <= 0x3F)
            {
              sub_24F3D8960(319, &qword_27F23C2A8, type metadata accessor for ActivityDefinitionDetail);
              if (v7 <= 0x3F)
              {
                sub_24F085EDC(319);
                if (v8 <= 0x3F)
                {
                  sub_24F3D8960(319, &qword_27F2349F0, MEMORY[0x277D0D0F8]);
                  if (v9 <= 0x3F)
                  {
                    sub_24F3D89B4(319, &qword_27F254DE0, MEMORY[0x277D837D0], MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      sub_24E7CA5E4(319);
                      if (v11 <= 0x3F)
                      {
                        sub_24F928AD8();
                        if (v12 <= 0x3F)
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
        }
      }
    }
  }
}

void sub_24F3D8960(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92C4A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_24F3D89B4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_24F3D8A04(char a1)
{
  result = 0x52746C7561666564;
  switch(a1)
  {
    case 1:
      result = 0x5473726579616C70;
      break;
    case 2:
      result = 0xD000000000000014;
      break;
    case 3:
      result = 0xD000000000000016;
      break;
    case 4:
      result = 0x6F666E49656D6167;
      break;
    case 5:
      result = 0x6F6272656461656CLL;
      break;
    case 6:
      v3 = 0x696E69666564;
      goto LABEL_12;
    case 7:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x6E6F697461727564;
      break;
    case 9:
      result = 0x4C74706D65747461;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      v3 = 0x63417478656ELL;
LABEL_12:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6974000000000000;
      break;
    case 12:
      result = 0x654D6E6F69746361;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F3D8BE4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v43 = sub_24F928AD8();
  v40 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2198F8, &unk_24F94CFA0);
  MEMORY[0x28223BE20](v4 - 8);
  v44 = &v37 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2142A0, &unk_24F94CF90);
  MEMORY[0x28223BE20](v6 - 8);
  v45 = &v37 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212A08, &qword_24F9397D0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212890, &qword_24F939670);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v37 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212B28, &qword_24F939910);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242170, &unk_24F9F0DC0);
  v46 = *(v17 - 8);
  v47 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v37 - v18;
  v20 = type metadata accessor for DraftPlayTogetherAction(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = &v22[*(v23 + 60)];
  *&v55[0] = 0;
  v53 = 0u;
  v54 = 0u;
  *v24 = 0u;
  *(v24 + 16) = 0u;
  *(v24 + 32) = 0;
  v51 = v24;
  sub_24E61DA68(&v53, v24, qword_27F21B590, &unk_24F93BE30);
  v25 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_24F3D9B44();
  v48 = v19;
  v26 = v49;
  sub_24F92D108();
  if (v26)
  {
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_24E601704(v51, &qword_27F213EA8, &unk_24F93D030);
  }

  else
  {
    v38 = v10;
    v49 = v20;
    v39 = v22;
    v57 = 0;
    sub_24F3D9B98();
    sub_24F92CC68();
    v27 = v54;
    v28 = v39;
    *v39 = v53;
    v28[1] = v27;
    v28[2] = v55[0];
    *(v28 + 41) = *(v55 + 9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F90, &unk_24F9482A0);
    v56 = 1;
    sub_24F086C6C();
    sub_24F92CC68();
    *(v28 + 8) = v52[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2182D0, &unk_24F9F0DD0);
    v56 = 2;
    sub_24F3D9BEC();
    v37 = 0;
    sub_24F92CC68();
    v29 = v49;
    *(v28 + 9) = v52[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F227A20, &qword_24F9482B0);
    v56 = 3;
    sub_24F1A7404();
    sub_24F92CC68();
    *(v28 + 10) = v52[0];
    type metadata accessor for GameActivityDraftGameInfo(0);
    LOBYTE(v52[0]) = 4;
    sub_24F3D9CDC(&qword_27F22E380, type metadata accessor for GameActivityDraftGameInfo, &protocol conformance descriptor for GameActivityDraftGameInfo);
    sub_24F92CC18();
    sub_24E6009C8(v16, v28 + v29[8], &qword_27F212B28, &qword_24F939910);
    type metadata accessor for Leaderboard(0);
    LOBYTE(v52[0]) = 5;
    sub_24F3D9CDC(&qword_27F21B488, type metadata accessor for Leaderboard, &protocol conformance descriptor for Leaderboard);
    sub_24F92CC18();
    sub_24E6009C8(v13, v28 + v29[9], &qword_27F212890, &qword_24F939670);
    type metadata accessor for ChallengeDefinitionDetail(0);
    LOBYTE(v52[0]) = 6;
    sub_24F3D9CDC(&qword_27F21B790, type metadata accessor for ChallengeDefinitionDetail, &protocol conformance descriptor for ChallengeDefinitionDetail);
    v30 = v38;
    sub_24F92CC18();
    sub_24E6009C8(v30, v28 + v29[10], &qword_27F212A08, &qword_24F9397D0);
    type metadata accessor for ActivityDefinitionDetail(0);
    LOBYTE(v52[0]) = 7;
    sub_24F3D9CDC(&qword_27F233E68, type metadata accessor for ActivityDefinitionDetail, &protocol conformance descriptor for ActivityDefinitionDetail);
    v31 = v45;
    sub_24F92CC18();
    sub_24E6009C8(v31, v39 + v29[11], &qword_27F2142A0, &unk_24F94CF90);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2325A0, &unk_24F9B4020);
    v56 = 8;
    sub_24EE88870();
    sub_24F92CC18();
    *(v39 + v49[12]) = v52[0];
    sub_24F920A88();
    LOBYTE(v52[0]) = 9;
    sub_24F3D9CDC(&qword_27F2325B8, MEMORY[0x277D0D0F8], MEMORY[0x277D0D110]);
    sub_24F92CC18();
    sub_24E6009C8(v44, v39 + v49[13], &qword_27F2198F8, &unk_24F94CFA0);
    LOBYTE(v52[0]) = 10;
    v32 = sub_24F92CBC8();
    v33 = (v39 + v49[14]);
    *v33 = v32;
    v33[1] = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213EA8, &unk_24F93D030);
    v56 = 11;
    sub_24F3D9C78();
    sub_24F92CC68();
    sub_24E61DA68(v52, v51, &qword_27F213EA8, &unk_24F93D030);
    LOBYTE(v52[0]) = 12;
    sub_24F3D9CDC(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
    sub_24F92CC68();
    (*(v46 + 8))(v48, v47);
    v35 = v39;
    (*(v40 + 32))(v39 + v49[16], v42, v43);
    sub_24F3D9D24(v35, v41);
    __swift_destroy_boxed_opaque_existential_1(v50);
    return sub_24F3D9D88(v35);
  }
}

uint64_t sub_24F3D9A18@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3D9EFC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3D9A40(uint64_t a1)
{
  v2 = sub_24F3D9B44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3D9A7C(uint64_t a1)
{
  v2 = sub_24F3D9B44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3D9AB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 64);
  v5 = sub_24F928AD8();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t sub_24F3D9B44()
{
  result = qword_27F242178;
  if (!qword_27F242178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242178);
  }

  return result;
}

unint64_t sub_24F3D9B98()
{
  result = qword_27F242180;
  if (!qword_27F242180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242180);
  }

  return result;
}

unint64_t sub_24F3D9BEC()
{
  result = qword_27F2182D8;
  if (!qword_27F2182D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2182D0, &unk_24F9F0DD0);
    sub_24E6D07D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2182D8);
  }

  return result;
}

unint64_t sub_24F3D9C78()
{
  result = qword_27F21BEE8;
  if (!qword_27F21BEE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F213EA8, &unk_24F93D030);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21BEE8);
  }

  return result;
}

uint64_t sub_24F3D9CDC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3D9D24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DraftPlayTogetherAction(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3D9D88(uint64_t a1)
{
  v2 = type metadata accessor for DraftPlayTogetherAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24F3D9DF8()
{
  result = qword_27F242188;
  if (!qword_27F242188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242188);
  }

  return result;
}

unint64_t sub_24F3D9E50()
{
  result = qword_27F242190;
  if (!qword_27F242190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242190);
  }

  return result;
}

unint64_t sub_24F3D9EA8()
{
  result = qword_27F242198;
  if (!qword_27F242198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242198);
  }

  return result;
}

uint64_t sub_24F3D9EFC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x52746C7561666564 && a2 == 0xEC00000073656C75;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5473726579616C70 && a2 == 0xEF657469766E496FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA45D80 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000024FA6F180 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F666E49656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F6272656461656CLL && a2 == 0xEB00000000647261 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6974696E69666564 && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA6F1A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xEC000000656C7552 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x4C74706D65747461 && a2 == 0xEC00000074696D69 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000013 && 0x800000024FA6A860 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x697463417478656ELL && a2 == 0xEA00000000006E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x654D6E6F69746361 && a2 == 0xED00007363697274)
  {

    return 12;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 12;
    }

    else
    {
      return 13;
    }
  }
}

uint64_t sub_24F3DA354(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_3:

    return v9(v10, a2, v8);
  }

  if (a2 == 254)
  {
    v12 = *(a1 + a3[5] + 8);
    if (v12 > 1)
    {
      return (v12 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a2)
  {
    v8 = v13;
    v9 = *(v14 + 48);
    v10 = a1 + a3[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v16 = *(*(v15 - 8) + 48);
  v17 = a1 + a3[7];

  return v16(v17, a2, v15);
}

uint64_t sub_24F3DA4FC(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222A88, &qword_24F96B720);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_3:

    return v11(v12, a2, a2, v10);
  }

  if (a3 == 254)
  {
    *(a1 + a4[5] + 8) = -a2;
    return result;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F222B18, &qword_24F96B758);
  v14 = *(v13 - 8);
  if (*(v14 + 84) == a3)
  {
    v10 = v13;
    v11 = *(v14 + 56);
    v12 = a1 + a4[6];
    goto LABEL_3;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2168A0, &unk_24F943470);
  v16 = *(*(v15 - 8) + 56);
  v17 = a1 + a4[7];

  return v16(v17, a2, a2, v15);
}

uint64_t type metadata accessor for PrimaryActionStyle(uint64_t a1)
{
  result = qword_27F2421A0;
  if (!qword_27F2421A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3DA6E0(uint64_t a1)
{
  sub_24F3DA7F0(319, &qword_27F222B10, MEMORY[0x277CDF3E0]);
  if (v1 <= 0x3F)
  {
    sub_24EB999AC();
    if (v2 <= 0x3F)
    {
      sub_24F3DA7F0(319, &qword_27F222BA0, MEMORY[0x277CDF450]);
      if (v3 <= 0x3F)
      {
        sub_24F3DA7F0(319, &qword_27F2168C8, MEMORY[0x277CDFA28]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_24F3DA7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F923578();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24F3DA860@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v89 = a1;
  v85 = a2;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21CCC8, &qword_24F957520);
  MEMORY[0x28223BE20](v84);
  v98 = &v79 - v4;
  v5 = sub_24F923E98();
  v100 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v94 = (&v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v83 = sub_24F924848();
  v82 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v81 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9234F8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421B0, &qword_24F9F0F70);
  MEMORY[0x28223BE20](v87);
  v101 = &v79 - v12;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421B8, &qword_24F9F0F78);
  MEMORY[0x28223BE20](v88);
  v92 = &v79 - v13;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421C0, &qword_24F9F0F80);
  MEMORY[0x28223BE20](v91);
  v93 = &v79 - v14;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421C8, &qword_24F9F0F88);
  MEMORY[0x28223BE20](v90);
  v102 = &v79 - v15;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421D0, &qword_24F9F0F90);
  MEMORY[0x28223BE20](v96);
  v97 = &v79 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421D8, &qword_24F9F0F98);
  MEMORY[0x28223BE20](v17);
  v19 = &v79 - v18;
  v20 = type metadata accessor for PrimaryActionStyle(0);
  sub_24F76A05C(v11);
  v21 = v9;
  v22 = (*(v9 + 88))(v11, v8);
  if (v22 == *MEMORY[0x277CDF418] || (v23 = v22, v22 == *MEMORY[0x277CDF438]))
  {
    sub_24F925A18();
    v26 = sub_24F9258E8();
  }

  else
  {
    v79 = v8;
    v80 = v2;
    v24 = v5;
    v25 = *MEMORY[0x277CDF440];
    sub_24F9259D8();
    v26 = sub_24F9258E8();

    if (v23 == v25 || v23 == *MEMORY[0x277CDF420])
    {
      v5 = v24;
    }

    else
    {
      v5 = v24;
      if (v23 != *MEMORY[0x277CDF410])
      {
        (*(v21 + 8))(v11, v79);
      }
    }

    v3 = v80;
  }

  v95 = v19;
  KeyPath = swift_getKeyPath();
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421E0, &qword_24F9F0FD0);
  v29 = v101;
  (*(*(v28 - 8) + 16))(v101, v89, v28);
  v30 = (v29 + *(v87 + 36));
  *v30 = KeyPath;
  v30[1] = v26;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v31 = v3 + *(v20 + 20);
  v32 = *v31;
  LODWORD(v31) = *(v31 + 8);
  v33 = v102;
  v99 = v17;
  if (v31 != 1)
  {

    sub_24F92BDC8();
    v34 = sub_24F9257A8();
    sub_24F921FD8();

    v35 = v81;
    sub_24F924838();
    swift_getAtKeyPath();
    sub_24E62A5EC(v32, 0);
    (*(v82 + 8))(v35, v83);
  }

  v86 = v5;
  v36 = sub_24F926D08();

  v37 = v92;
  sub_24E6009C8(v101, v92, &qword_27F2421B0, &qword_24F9F0F70);
  *(v37 + *(v88 + 36)) = v36;
  v38 = v94;
  sub_24F769788(v94);
  v39 = _s12GameStoreKit15PageEnvironmentV4isAXSbvg_0();
  (*(v100 + 8))(v38, v5);
  if (v39)
  {
    v40 = 0x4032000000000000;
  }

  else
  {
    v40 = 0x4024000000000000;
  }

  v41 = sub_24F925808();
  v42 = v37;
  v43 = v93;
  sub_24E6009C8(v42, v93, &qword_27F2421B8, &qword_24F9F0F78);
  v44 = &v43[*(v91 + 36)];
  *v44 = v41;
  *(v44 + 1) = 0x4018000000000000;
  *(v44 + 2) = v40;
  *(v44 + 3) = 0x4014000000000000;
  *(v44 + 4) = v40;
  v44[40] = 0;
  v45 = v33 + *(v90 + 36);
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421E8, &qword_24F9F0FD8);
  v47 = v46[10];
  v48 = *MEMORY[0x277CE0118];
  v49 = sub_24F924B38();
  v50 = *(v49 - 1);
  v51 = *(v50 + 104);
  v52 = v50 + 104;
  (v51)(v45 + v47, v48, v49);
  LOBYTE(v47) = *(v3 + *(v20 + 32));
  *v45 = swift_getKeyPath();
  *(v45 + 8) = 0;
  v53 = v46[9];
  *(v45 + v53) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216950, &unk_24F943F20);
  swift_storeEnumTagMultiPayload();
  *(v45 + v46[11]) = v47;
  sub_24E6009C8(v43, v102, &qword_27F2421C0, &qword_24F9F0F80);
  v103[3] = sub_24F9271D8();
  v103[4] = sub_24F3DCBD0(&qword_27F214E38, MEMORY[0x277CE1260], MEMORY[0x277CE1248]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v103);
  LODWORD(v101) = v48;
  v93 = v51;
  v94 = v49;
  v92 = v52;
  (v51)(boxed_opaque_existential_1, v48, v49);
  v55 = v102;
  v56 = v97;
  sub_24E60169C(v103, v97, &qword_27F2421F0, &qword_24F9F1048);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2421F8, &qword_24F9F1050);
  sub_24E60169C(v55, v56 + v57[9], &qword_27F2421C8, &qword_24F9F0F88);
  v58 = v56 + v57[10];
  *v58 = sub_24F923398() & 1;
  *(v58 + 8) = v59;
  *(v58 + 16) = v60 & 1;
  v61 = v56 + v57[11];
  *v61 = swift_getKeyPath();
  *(v61 + 8) = 0;
  if (qword_27F211808 != -1)
  {
    swift_once();
  }

  v62 = qword_27F24E488;
  v63 = sub_24F923398();
  v65 = v64;
  v67 = v66;
  v68 = v56 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242200, &qword_24F9F1080) + 36);
  *v68 = v62;
  *(v68 + 8) = v63 & 1;
  *(v68 + 16) = v65;
  *(v68 + 24) = v67 & 1;
  LOBYTE(v62) = sub_24F923398();
  v70 = v69;
  LOBYTE(v65) = v71;
  sub_24E601704(v103, &qword_27F2421F0, &qword_24F9F1048);
  sub_24E601704(v55, &qword_27F2421C8, &qword_24F9F0F88);
  v72 = v56 + *(v96 + 36);
  *v72 = v62 & 1;
  *(v72 + 8) = v70;
  *(v72 + 16) = v65 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242208, &qword_24F9F1088);
  sub_24F924368();
  v73 = swift_allocObject();
  *(v73 + 16) = xmmword_24F93A400;
  sub_24F924358();
  sub_24F924348();
  v103[0] = v73;
  v74 = v95;
  v75 = &v95[*(v99 + 36)];
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242210, &qword_24F9F1090);
  sub_24F3DCBD0(&qword_27F242218, MEMORY[0x277CDFC90], MEMORY[0x277CDFC98]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242220, &qword_24F9F1098);
  sub_24E602068(&qword_27F242228, &qword_27F242220, &qword_24F9F1098, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  (v93)(v75, v101, v94);
  v75[*(v76 + 36)] = 0;
  sub_24E6009C8(v56, v74, &qword_27F2421D0, &qword_24F9F0F90);
  v77 = v98;
  (*(v100 + 104))(v98, *MEMORY[0x277CDF9F0], v86);
  sub_24F3DCBD0(&qword_27F22DF90, MEMORY[0x277CDFA28], MEMORY[0x277CDFA48]);
  result = sub_24F92AFF8();
  if (result)
  {
    sub_24F3DCC18();
    sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
    sub_24F9263F8();
    sub_24E601704(v77, &qword_27F21CCC8, &qword_24F957520);
    return sub_24E601704(v74, &qword_27F2421D8, &qword_24F9F0F98);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_24F3DB598@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a1;
  v32 = a3;
  swift_getWitnessTable();
  v4 = sub_24F925108();
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  type metadata accessor for GlassBackgroundModifierWithShape(255, v6, v5, v7);
  v8 = sub_24F924038();
  WitnessTable = swift_getWitnessTable();
  v10 = *(v5 + 8);
  v53 = v4;
  v54 = v6;
  v55 = WitnessTable;
  v56 = v10;
  v28[2] = MEMORY[0x277CE0C88];
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  v28[1] = sub_24F924038();
  v28[3] = sub_24F9236B8();
  v28[4] = sub_24F924038();
  v28[5] = sub_24F927598();
  v28[0] = v8;
  v11 = sub_24F927598();
  v31 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v28 - v15;
  v37 = v6;
  v38 = v5;
  v39 = v29;
  v40 = v30;
  v33 = v6;
  v34 = v5;
  v35 = v29;
  v36 = v30;
  v30 = sub_24E6A4C1C();
  v17 = swift_getWitnessTable();
  v51 = WitnessTable;
  v52 = v17;
  v18 = swift_getWitnessTable();
  v53 = v4;
  v54 = v6;
  v55 = WitnessTable;
  v56 = v10;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v20 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  v49 = WitnessTable;
  v50 = v20;
  v21 = swift_getWitnessTable();
  v22 = swift_getWitnessTable();
  v47 = v21;
  v48 = v22;
  v23 = swift_getWitnessTable();
  v44 = MEMORY[0x277CE1340];
  v45 = OpaqueTypeConformance2;
  v46 = v23;
  v27 = swift_getWitnessTable();
  v24 = v30;
  sub_24F927568();
  v41 = v24;
  v42 = v18;
  v43 = v27;
  swift_getWitnessTable();
  sub_24E7896B8();
  v25 = *(v31 + 8);
  v25(v13, v11);
  sub_24E7896B8();
  return (v25)(v16, v11);
}

uint64_t sub_24F3DBA30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v23 = a2;
  v24 = a1;
  v25 = a5;
  v7 = type metadata accessor for PrimaryActionButtonBackgroundStyle(255, a3, a4, a4);
  swift_getWitnessTable();
  v8 = sub_24F925108();
  type metadata accessor for GlassBackgroundModifierWithShape(255, a3, a4, v9);
  v10 = sub_24F924038();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v22 - v15;
  v17 = *(v7 + 40);
  WitnessTable = swift_getWitnessTable();
  sub_24F5A41C0(v23 + v17, v8, a3, WitnessTable);
  v19 = swift_getWitnessTable();
  v26 = WitnessTable;
  v27 = v19;
  swift_getWitnessTable();
  sub_24E7896B8();
  v20 = *(v11 + 8);
  v20(v13, v10);
  sub_24E7896B8();
  return (v20)(v16, v10);
}

uint64_t sub_24F3DBC5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v26 = a1;
  v29 = a5;
  type metadata accessor for PrimaryActionButtonBackgroundStyle(255, a3, a4, a4);
  swift_getWitnessTable();
  v7 = sub_24F925108();
  WitnessTable = swift_getWitnessTable();
  v9 = *(a4 + 8);
  v45 = v7;
  v46 = a3;
  v47 = WitnessTable;
  v48 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  v25[1] = sub_24F924038();
  v25[2] = sub_24F9236B8();
  v25[3] = sub_24F924038();
  v10 = sub_24F927598();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v25 - v15;
  sub_24F927558();
  v34 = a3;
  v35 = a4;
  v36 = v26;
  v37 = v27;
  v30 = a3;
  v31 = a4;
  v32 = v26;
  v33 = v27;
  v45 = v7;
  v46 = a3;
  v47 = WitnessTable;
  v48 = v9;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v18 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  v43 = WitnessTable;
  v44 = v18;
  v19 = swift_getWitnessTable();
  v20 = swift_getWitnessTable();
  v41 = v19;
  v42 = v20;
  v24 = swift_getWitnessTable();
  v21 = MEMORY[0x277CE1340];
  sub_24F927568();
  v38 = v21;
  v39 = OpaqueTypeConformance2;
  v40 = v24;
  swift_getWitnessTable();
  sub_24E7896B8();
  v22 = *(v11 + 8);
  v22(v13, v10);
  sub_24E7896B8();
  return (v22)(v16, v10);
}

uint64_t sub_24F3DC034@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v39 = a2;
  v40 = a1;
  v41 = a5;
  v38 = sub_24F927418();
  v36 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v9 = &WitnessTable - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F927538();
  v33 = *(v10 - 8);
  v34 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &WitnessTable - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = sub_24F927148();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v14 = &WitnessTable - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = a3;
  type metadata accessor for PrimaryActionButtonBackgroundStyle(255, a3, a4, v15);
  swift_getWitnessTable();
  v16 = sub_24F925108();
  WitnessTable = swift_getWitnessTable();
  v17 = *(a4 + 8);
  v42 = v16;
  v43 = a3;
  v44 = WitnessTable;
  v45 = v17;
  v32 = MEMORY[0x277CE0C88];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v19 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v21 = &WitnessTable - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &WitnessTable - v23;
  sub_24F927408();
  sub_24F927448();
  (*(v36 + 8))(v9, v38);
  sub_24F927138();
  (*(v33 + 8))(v12, v34);
  swift_checkMetadataState();
  v25 = swift_checkMetadataState();
  v27 = WitnessTable;
  v26 = v31;
  sub_24F926248();
  (*(v35 + 8))(v14, v37);
  v42 = v25;
  v43 = v26;
  v44 = v27;
  v45 = v17;
  swift_getOpaqueTypeConformance2();
  sub_24E7896B8();
  v28 = *(v19 + 8);
  v28(v21, OpaqueTypeMetadata2);
  sub_24E7896B8();
  return (v28)(v24, OpaqueTypeMetadata2);
}

uint64_t sub_24F3DC444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22[0] = a2;
  v22[1] = a3;
  v22[4] = a1;
  v25 = a5;
  v6 = type metadata accessor for PrimaryActionButtonBackgroundStyle(255, a3, a4, a4);
  swift_getWitnessTable();
  sub_24F925108();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  v7 = sub_24F924038();
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v22 - v8;
  v22[2] = *(a4 + 8);
  v22[3] = sub_24F9236B8();
  v10 = sub_24F924038();
  v24 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v22 - v14;
  sub_24F3DC7CC(v6, &v31);
  v30 = v31;
  sub_24F925808();
  WitnessTable = swift_getWitnessTable();
  sub_24F926098();

  v17 = sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  v28 = WitnessTable;
  v29 = v17;
  v18 = swift_getWitnessTable();
  sub_24F926B58();
  (*(v23 + 8))(v9, v7);
  v19 = swift_getWitnessTable();
  v26 = v18;
  v27 = v19;
  swift_getWitnessTable();
  sub_24E7896B8();
  v20 = *(v24 + 8);
  v20(v12, v10);
  sub_24E7896B8();
  return (v20)(v15, v10);
}

void sub_24F3DC7CC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_24F924848();
  v25 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_24F9234D8();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_24F76A034(v11);
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x277CDF3D0])
  {
    sub_24F926C88();
  }

  else
  {
    v13 = v12;
    v22 = v5;
    v23 = a1;
    v24 = a2;
    v14 = *MEMORY[0x277CDF3C0];
    _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    v15 = *v2;
    v16 = *(v2 + 8);
    if (v13 == v14)
    {

      if (!v16)
      {
        sub_24E62AB1C(v15, 0);
        sub_24F92BDC8();
        v17 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v15, 0);
        (*(v25 + 8))(v7, v22);
      }

      a2 = v24;
    }

    else
    {

      if (!v16)
      {
        sub_24E62AB1C(v15, 0);
        sub_24F92BDC8();
        v18 = sub_24F9257A8();
        sub_24F921FD8();

        sub_24F924838();
        swift_getAtKeyPath();
        sub_24E62A5EC(v15, 0);
        (*(v25 + 8))(v7, v22);
      }

      a2 = v24;
      (*(v9 + 8))(v11, v8);
    }
  }

  v19 = sub_24F926D08();

  v26 = v19;
  v20 = sub_24F9238D8();

  *a2 = v20;
}

uint64_t sub_24F3DCBD0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F3DCC18()
{
  result = qword_27F242230;
  if (!qword_27F242230)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2421D8, &qword_24F9F0F98);
    sub_24F3DCCD0();
    sub_24E602068(qword_27F242250, &qword_27F242210, &qword_24F9F1090, MEMORY[0x277CE07A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242230);
  }

  return result;
}

unint64_t sub_24F3DCCD0()
{
  result = qword_27F242238;
  if (!qword_27F242238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2421D0, &qword_24F9F0F90);
    sub_24F3DCD5C();
    sub_24E600F3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242238);
  }

  return result;
}

unint64_t sub_24F3DCD5C()
{
  result = qword_27F242240;
  if (!qword_27F242240)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242200, &qword_24F9F1080);
    sub_24E602068(&qword_27F242248, &qword_27F2421F8, &qword_24F9F1050, &unk_24FA2648C);
    sub_24E600EE8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242240);
  }

  return result;
}

void sub_24F3DCE14(uint64_t a1)
{
  sub_24EB999AC();
  if (v1 <= 0x3F)
  {
    sub_24F3DA7F0(319, &qword_27F222B10, MEMORY[0x277CDF3E0]);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24F3DCED8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = *(sub_24F9234D8() - 8);
  if (*(v6 + 64) <= 8uLL)
  {
    v7 = 8;
  }

  else
  {
    v7 = *(v6 + 64);
  }

  v8 = *(*(a3 + 16) - 8);
  v9 = *(v8 + 84);
  v10 = *(v6 + 80);
  v11 = *(v8 + 80);
  if (v9 <= 0xFE)
  {
    v12 = 254;
  }

  else
  {
    v12 = *(v8 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v13 = v10 & 0xF8;
  v14 = v13 | 7;
  v15 = v7 + v11 + 1;
  if (a2 <= v12)
  {
    goto LABEL_31;
  }

  v16 = *(v8 + 64) + ((v15 + ((v13 + 16) & ~v14)) & ~v11) + 1;
  v17 = 8 * v16;
  if (v16 <= 3)
  {
    v20 = ((a2 - v12 + ~(-1 << v17)) >> v17) + 1;
    if (HIWORD(v20))
    {
      v18 = *(a1 + v16);
      if (!v18)
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 > 0xFF)
    {
      v18 = *(a1 + v16);
      if (!*(a1 + v16))
      {
        goto LABEL_31;
      }

      goto LABEL_18;
    }

    if (v20 < 2)
    {
LABEL_31:
      if (v9 > 0xFE)
      {
        v25 = *(v8 + 48);

        return v25((v15 + ((a1 + v14 + 9) & ~v14)) & ~v11);
      }

      else
      {
        v24 = *(a1 + 8);
        if (v24 > 1)
        {
          return (v24 ^ 0xFF) + 1;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  v18 = *(a1 + v16);
  if (!*(a1 + v16))
  {
    goto LABEL_31;
  }

LABEL_18:
  v21 = (v18 - 1) << v17;
  if (v16 > 3)
  {
    v21 = 0;
  }

  if (v16)
  {
    if (v16 <= 3)
    {
      v22 = v16;
    }

    else
    {
      v22 = 4;
    }

    if (v22 > 2)
    {
      if (v22 == 3)
      {
        v23 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v23 = *a1;
      }
    }

    else if (v22 == 1)
    {
      v23 = *a1;
    }

    else
    {
      v23 = *a1;
    }
  }

  else
  {
    v23 = 0;
  }

  return v12 + (v23 | v21) + 1;
}

void sub_24F3DD128(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_24F9234D8() - 8);
  v9 = *(v8 + 64);
  v10 = *(*(a4 + 16) - 8);
  if (v9 <= 8)
  {
    v9 = 8;
  }

  v11 = *(*(a4 + 16) - 8);
  v12 = *(v10 + 84);
  v13 = *(v8 + 80);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  if (v12 <= 0xFE)
  {
    v16 = 254;
  }

  else
  {
    v16 = *(v10 + 84);
  }

  v17 = v13 & 0xF8;
  v18 = v17 | 7;
  v19 = v9 + v14 + 1;
  v20 = v15 + ((v19 + ((v17 + 16) & ~(v17 | 7))) & ~v14) + 1;
  if (a3 <= v16)
  {
    v21 = 0;
  }

  else if (v20 <= 3)
  {
    v24 = ((a3 - v16 + ~(-1 << (8 * v20))) >> (8 * v20)) + 1;
    if (HIWORD(v24))
    {
      v21 = 4;
    }

    else
    {
      if (v24 < 0x100)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v24 >= 2)
      {
        v21 = v25;
      }

      else
      {
        v21 = 0;
      }
    }
  }

  else
  {
    v21 = 1;
  }

  if (v16 < a2)
  {
    v22 = ~v16 + a2;
    if (v20 < 4)
    {
      v23 = (v22 >> (8 * v20)) + 1;
      if (v20)
      {
        v26 = v22 & ~(-1 << (8 * v20));
        bzero(a1, v20);
        if (v20 != 3)
        {
          if (v20 == 2)
          {
            *a1 = v26;
            if (v21 > 1)
            {
LABEL_48:
              if (v21 == 2)
              {
                *&a1[v20] = v23;
              }

              else
              {
                *&a1[v20] = v23;
              }

              return;
            }
          }

          else
          {
            *a1 = v22;
            if (v21 > 1)
            {
              goto LABEL_48;
            }
          }

          goto LABEL_45;
        }

        *a1 = v26;
        a1[2] = BYTE2(v26);
      }

      if (v21 > 1)
      {
        goto LABEL_48;
      }
    }

    else
    {
      bzero(a1, v20);
      *a1 = v22;
      v23 = 1;
      if (v21 > 1)
      {
        goto LABEL_48;
      }
    }

LABEL_45:
    if (v21)
    {
      a1[v20] = v23;
    }

    return;
  }

  if (v21 > 1)
  {
    if (v21 != 2)
    {
      *&a1[v20] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_33;
    }

    *&a1[v20] = 0;
  }

  else if (v21)
  {
    a1[v20] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_33;
  }

  if (!a2)
  {
    return;
  }

LABEL_33:
  if (v12 > 0xFE)
  {
    v27 = *(v11 + 56);

    v27((v19 + (&a1[v18 + 9] & ~v18)) & ~v14, a2);
  }

  else if (a2 > 0xFE)
  {
    a1[8] = 0;
    *a1 = (a2 - 255);
  }

  else
  {
    a1[8] = -a2;
  }
}

uint64_t sub_24F3DD428()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2421D8, &qword_24F9F0F98);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F21CCC8, &qword_24F957520);
  sub_24F3DCC18();
  sub_24E602068(&unk_27F22DFA0, &qword_27F21CCC8, &qword_24F957520, MEMORY[0x277D84470]);
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_24F3DD560(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  type metadata accessor for PrimaryActionButtonBackgroundStyle(255, *a1, v5, a4);
  swift_getWitnessTable();
  sub_24F925108();
  type metadata accessor for GlassBackgroundModifierWithShape(255, v4, v5, v6);
  sub_24F924038();
  swift_getWitnessTable();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2186A8, &qword_24FA0D3A0);
  sub_24F924038();
  sub_24F9236B8();
  sub_24F924038();
  sub_24F927598();
  sub_24F927598();
  sub_24E6A4C1C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getOpaqueTypeConformance2();
  sub_24E602068(&qword_27F2186A0, &qword_27F2186A8, &qword_24FA0D3A0, MEMORY[0x277CE0728]);
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return swift_getWitnessTable();
}

unint64_t sub_24F3DD84C()
{
  result = qword_27F2422F8;
  if (!qword_27F2422F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2422F8);
  }

  return result;
}

uint64_t sub_24F3DD8A0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_24E861E6C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_24F3DE8A4(v6);
  return sub_24F92C958();
}

uint64_t sub_24F3DD91C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a2 + 16);
  if (v5 >= v4)
  {
    v6 = *(a1 + 16);
  }

  else
  {
    v6 = *(a2 + 16);
  }

  v29 = MEMORY[0x277D84F90];
  result = sub_24F457DAC(0, v6, 0);
  v27 = v4;
  v28 = v5;
  if (v6)
  {
    v8 = a1 + 32;
    v9 = a2 + 32;
    v10 = v6;
    while (v4)
    {
      if (!v5)
      {
        goto LABEL_21;
      }

      result = sub_24F9273C8();
      v13 = *(v29 + 16);
      v12 = *(v29 + 24);
      if (v13 >= v12 >> 1)
      {
        v26 = result;
        v15 = v11;
        sub_24F457DAC((v12 > 1), v13 + 1, 1);
        v11 = v15;
        result = v26;
      }

      *(v29 + 16) = v13 + 1;
      v14 = v29 + 16 * v13;
      --v5;
      *(v14 + 32) = result;
      *(v14 + 40) = v11;
      --v4;
      v9 += 8;
      v8 += 8;
      if (!--v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
  }

  else
  {
LABEL_11:
    v16 = v27;
    v17 = v28;
    if (v27 <= v28)
    {
      return v29;
    }

    while (v6 < v16)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        goto LABEL_23;
      }

      if (v17 != v6)
      {
        if (v6 >= v17)
        {
          goto LABEL_24;
        }

        result = sub_24F9273C8();
        v21 = *(v29 + 16);
        v20 = *(v29 + 24);
        if (v21 >= v20 >> 1)
        {
          v23 = v16;
          v24 = result;
          v25 = v19;
          sub_24F457DAC((v20 > 1), v21 + 1, 1);
          v19 = v25;
          result = v24;
          v16 = v23;
          v17 = v28;
        }

        *(v29 + 16) = v21 + 1;
        v22 = v29 + 16 * v21;
        *(v22 + 32) = result;
        *(v22 + 40) = v19;
        ++v6;
        if (v18 != v16)
        {
          continue;
        }
      }

      return v29;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void sub_24F3DDB28()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242300, &qword_24F9F12E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  *(v0 + 32) = xmmword_24F9F1130;
  sub_24F926C88();
  v1 = sub_24F926D08();

  *(v0 + 48) = v1;
  *(v0 + 56) = xmmword_24F9F1140;
  sub_24F926C88();
  v2 = sub_24F926D08();

  *(v0 + 72) = v2;
  off_27F2422D8 = v0;
}

void sub_24F3DDBDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242300, &qword_24F9F12E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  *(v0 + 32) = xmmword_24F9F1130;
  sub_24F926C88();
  v1 = sub_24F926D08();

  *(v0 + 48) = v1;
  *(v0 + 56) = xmmword_24F9F1150;
  sub_24F926C88();
  v2 = sub_24F926D08();

  *(v0 + 72) = v2;
  *(v0 + 80) = xmmword_24F9F1160;
  sub_24F926C88();
  v3 = sub_24F926D08();

  *(v0 + 96) = v3;
  off_27F2422E0 = v0;
}

void sub_24F3DDCC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242300, &qword_24F9F12E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F93A400;
  *(v0 + 32) = xmmword_24F9F1170;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v1 = sub_24F926D08();

  *(v0 + 48) = v1;
  *(v0 + 56) = xmmword_24F9F1180;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  *(v0 + 72) = v2;
  off_27F2422E8 = v0;
}

void sub_24F3DDD7C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242300, &qword_24F9F12E8);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_24F9479A0;
  *(v0 + 32) = xmmword_24F9F1170;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v1 = sub_24F926D08();

  *(v0 + 48) = v1;
  *(v0 + 56) = xmmword_24F9F1190;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v2 = sub_24F926D08();

  *(v0 + 72) = v2;
  *(v0 + 80) = xmmword_24F9A5870;
  _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
  v3 = sub_24F926D08();

  *(v0 + 96) = v3;
  off_27F2422F0 = v0;
}

void sub_24F3DDE68(uint64_t result)
{
  v2 = *v1;
  v3 = *(*v1 + 16);
  if (v3 <= 1)
  {
    if (!v3)
    {
      return;
    }

    if (v3 != 1)
    {
      goto LABEL_13;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_24F93A400;
    sub_24F927878();
    *(inited + 32) = sub_24F3DF710(v2);
    sub_24F927898();
    *(inited + 40) = sub_24F3DF710(v2);
    sub_24F927878();
    v36 = v35;
    v38 = v37;
    sub_24F927898();
    v40 = v39;
    v42 = v41;
    v43 = &unk_2861BED70;
LABEL_10:
    sub_24F3DD91C(inited, v43);
    v48 = sub_24F9273D8();
    swift_setDeallocating();
    swift_arrayDestroy();

    *(v1 + 16) = v48;
    *(v1 + 24) = v36;
    *(v1 + 32) = v38;
    *(v1 + 40) = v40;
    *(v1 + 48) = v42;

    *(v1 + 128) = 0;
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    goto LABEL_13;
  }

  switch(v3)
  {
    case 2:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_24F93A400;
      sub_24F927828();
      *(inited + 32) = sub_24F3DF710(v2);
      sub_24F927858();
      *(inited + 40) = sub_24F3DF710(v2);
      sub_24F927828();
      v36 = v44;
      v38 = v45;
      sub_24F927858();
      v40 = v46;
      v42 = v47;
      v43 = &unk_2861BEDA0;
      goto LABEL_10;
    case 3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      v49 = swift_initStackObject();
      *(v49 + 16) = xmmword_24F93A400;
      sub_24F927828();
      *(v49 + 32) = sub_24F3DF710(v2);
      sub_24F927838();
      *(v49 + 40) = sub_24F3DF710(v2);
      sub_24F927828();
      v51 = v50;
      v53 = v52;
      sub_24F927838();
      v55 = v54;
      v57 = v56;
      sub_24F3DD91C(v49, &unk_2861BEDD0);
      v58 = sub_24F9273D8();
      swift_setDeallocating();
      swift_arrayDestroy();

      *(v1 + 16) = v58;
      *(v1 + 24) = v51;
      *(v1 + 32) = v53;
      *(v1 + 40) = v55;
      *(v1 + 48) = v57;
      v59 = swift_initStackObject();
      *(v59 + 16) = xmmword_24F93A400;
      sub_24F927898();
      *(v59 + 32) = sub_24F3DF710(v2);
      sub_24F927898();
      *(v59 + 40) = sub_24F3DF710(v2);
      sub_24F927878();
      v61 = v60;
      v63 = v62;
      sub_24F927898();
      v65 = v64;
      v67 = v66;
      sub_24F3DD91C(v59, &unk_2861BEE00);
      v68 = sub_24F9273D8();
      swift_setDeallocating();
      swift_arrayDestroy();

      *(v1 + 56) = v68;
      *(v1 + 64) = v61;
      *(v1 + 72) = v63;
      *(v1 + 80) = v65;
      *(v1 + 88) = v67;
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_24F93A400;
      *(v24 + 32) = sub_24F926C98();
      *(v24 + 40) = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      sub_24F927878();
      v26 = v69;
      v28 = v70;
      sub_24F927898();
      v30 = v71;
      v32 = v72;
      v33 = &unk_2861BEE30;
      goto LABEL_12;
    case 4:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      v4 = swift_initStackObject();
      *(v4 + 16) = xmmword_24F93A400;
      sub_24F927828();
      *(v4 + 32) = sub_24F3DF710(v2);
      sub_24F927838();
      *(v4 + 40) = sub_24F3DF710(v2);
      sub_24F927828();
      v6 = v5;
      v8 = v7;
      sub_24F927838();
      v10 = v9;
      v12 = v11;
      sub_24F3DD91C(v4, &unk_2861BEE60);
      v13 = sub_24F9273D8();
      swift_setDeallocating();
      swift_arrayDestroy();

      *(v1 + 16) = v13;
      *(v1 + 24) = v6;
      *(v1 + 32) = v8;
      *(v1 + 40) = v10;
      *(v1 + 48) = v12;
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_24F93A400;
      sub_24F927848();
      *(v14 + 32) = sub_24F3DF710(v2);
      sub_24F927858();
      *(v14 + 40) = sub_24F3DF710(v2);
      sub_24F927848();
      v16 = v15;
      v18 = v17;
      sub_24F927858();
      v20 = v19;
      v22 = v21;
      sub_24F3DD91C(v14, &unk_2861BEE90);
      v23 = sub_24F9273D8();
      swift_setDeallocating();
      swift_arrayDestroy();

      *(v1 + 56) = v23;
      *(v1 + 64) = v16;
      *(v1 + 72) = v18;
      *(v1 + 80) = v20;
      *(v1 + 88) = v22;
      v24 = swift_initStackObject();
      *(v24 + 16) = xmmword_24F93A400;
      *(v24 + 32) = sub_24F926C98();
      *(v24 + 40) = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      sub_24F927878();
      v26 = v25;
      v28 = v27;
      sub_24F927898();
      v30 = v29;
      v32 = v31;
      v33 = &unk_2861BEEC0;
LABEL_12:
      sub_24F3DD91C(v24, v33);
      v73 = sub_24F9273D8();
      swift_setDeallocating();
      swift_arrayDestroy();

      *(v1 + 96) = v73;
      *(v1 + 104) = v26;
      *(v1 + 112) = v28;
      *(v1 + 120) = v30;
      *(v1 + 128) = v32;
      break;
  }

LABEL_13:
  sub_24F3DE3B4();
}

void sub_24F3DE3B4()
{
  v2 = *v0;
  if (!*(*v0 + 16))
  {
    return;
  }

  v3 = v0;
  LODWORD(v4) = v0[8];
  v5 = sub_24F3DF80C(v0[8], *v0);
  v6 = MEMORY[0x277D84F90];
  v44 = MEMORY[0x277D84F90];
  v7 = *(v5 + 16);
  if (v7)
  {
    v43 = v4;
    v8 = 0;
    while (v8 < *(v5 + 16))
    {
      sub_24E77ACC8();
      swift_retain_n();
      v9 = sub_24F92C3B8();
      [v9 _luminance];
      v1 = v10;

      if (v1 >= 0.84)
      {
      }

      else
      {
        sub_24F92C948();
        v4 = *(v44 + 16);
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      if (v7 == ++v8)
      {
        v6 = v44;
        LODWORD(v4) = v43;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    swift_once();
LABEL_15:
    v16 = (off_27F2422D8 + 40);
    v17 = *(off_27F2422D8 + 2) + 1;
    while (--v17)
    {
      v18 = v16;
      v16 += 3;
      if (*(v18 - 1) <= v1 && v1 <= *v18)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_42;
  }

LABEL_10:
  v11 = *(v6 + 16);

  v44 = v5;

  sub_24F3DD8A0(&v44);
  v12 = v44;
  if (!*(v44 + 16))
  {

    __break(1u);

    __break(1u);
    return;
  }

  if (!*(v12 + 16))
  {
    goto LABEL_53;
  }

  swift_retain_n();

  sub_24E77ACC8();
  v13 = sub_24F92C3B8();
  [v13 _luminance];
  v1 = v14;

  v15 = *(v2 + 16);
  if (!v11)
  {
    if (v15 == 1)
    {
      if (qword_27F211220 != -1)
      {
        swift_once();
      }

      v16 = (off_27F2422E8 + 40);
      v19 = *(off_27F2422E8 + 2) + 1;
      while (--v19)
      {
        v20 = v16;
        v16 += 3;
        if (*(v20 - 1) <= v1 && v1 <= *v20)
        {
          goto LABEL_41;
        }
      }
    }

    else
    {
      if (qword_27F211228 != -1)
      {
        swift_once();
      }

      v16 = (off_27F2422F0 + 40);
      v23 = *(off_27F2422F0 + 2) + 1;
      while (--v23)
      {
        v24 = v16;
        v16 += 3;
        if (*(v24 - 1) <= v1 && v1 <= *v24)
        {
LABEL_41:
          v25 = *(v16 - 2);

          goto LABEL_43;
        }
      }
    }

    goto LABEL_42;
  }

  if (v15 == 1)
  {
    if (qword_27F211210 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_54;
  }

  if (qword_27F211218 != -1)
  {
    swift_once();
  }

  v16 = (off_27F2422E0 + 40);
  v21 = *(off_27F2422E0 + 2) + 1;
  while (--v21)
  {
    v22 = v16;
    v16 += 3;
    if (*(v22 - 1) <= v1 && v1 <= *v22)
    {
      goto LABEL_41;
    }
  }

LABEL_42:
  v25 = sub_24F926C98();
LABEL_43:

  v26 = sub_24F926C98();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      sub_24F9278B8();
      v28 = v33;
      v30 = v34;
      sub_24F9278C8();
    }

    else
    {
      sub_24F9278C8();
      v28 = v37;
      v30 = v38;
      sub_24F9278B8();
    }
  }

  else if (v4)
  {
    sub_24F927898();
    v28 = v35;
    v30 = v36;
    sub_24F927878();
  }

  else
  {
    sub_24F927878();
    v28 = v27;
    v30 = v29;
    sub_24F927898();
  }

  v39 = v31;
  v40 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F9479A0;
  *(inited + 32) = v25;
  *(inited + 40) = v26;
  *(inited + 48) = v26;
  swift_retain_n();
  sub_24F3DD91C(inited, &unk_2861BED38);
  v42 = sub_24F9273D8();

  swift_setDeallocating();
  swift_arrayDestroy();

  *(v3 + 17) = v42;
  *(v3 + 18) = v28;
  *(v3 + 19) = v30;
  *(v3 + 20) = v39;
  *(v3 + 21) = v40;
}

void sub_24F3DE8A4(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_24F92CD78();
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
        v5 = sub_24F92B618();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_24F3DEAD4(v7, v8, a1, v4);
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
    sub_24F3DE99C(0, v2, 1, a1);
  }
}

void sub_24F3DE99C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_24E77ACC8();
    v7 = (v6 + 8 * v4 - 8);
    v8 = a1 - v4;
LABEL_5:
    v18 = v8;
    v19 = v7;
    while (1)
    {
      swift_retain_n();

      v9 = sub_24F92C3B8();
      [v9 _luminance];
      v11 = v10;

      v12 = sub_24F92C3B8();
      [v12 _luminance];
      v14 = v13;

      if (v11 >= v14)
      {
LABEL_4:
        ++v4;
        v7 = v19 + 1;
        v8 = v18 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = *v7;
      *v7 = v7[1];
      v7[1] = v15;
      --v7;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_24F3DEAD4(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a1;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_24E86164C(v9);
    }

    v94 = *(v9 + 2);
    if (v94 >= 2)
    {
      while (*v5)
      {
        v95 = v9;
        v9 = (v94 - 1);
        v96 = *&v95[16 * v94];
        v97 = *&v95[16 * v94 + 24];
        sub_24F3DF1CC((*v5 + 8 * v96), (*v5 + 8 * *&v95[16 * v94 + 16]), *v5 + 8 * v97, v6);
        if (v4)
        {
          goto LABEL_98;
        }

        if (v97 < v96)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v95 = sub_24E86164C(v95);
        }

        if (v94 - 2 >= *(v95 + 2))
        {
          goto LABEL_114;
        }

        v98 = &v95[16 * v94];
        *v98 = v96;
        *(v98 + 1) = v97;
        sub_24E8615C0(v94 - 1);
        v9 = v95;
        v94 = *(v95 + 2);
        if (v94 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    v104 = v8;
    if (v8 + 1 < v7)
    {
      v106 = v7;
      v102 = v9;
      v6 = (8 * v8);
      v12 = v8;
      v13 = *v5 + 8 * v8 + 16;
      sub_24E77ACC8();
      swift_retain_n();

      v14 = sub_24F92C3B8();
      [v14 _luminance];
      v16 = v15;

      v17 = sub_24F92C3B8();
      [v17 _luminance];
      v19 = v18;

      v20 = v12 + 2;
      while (1)
      {
        v11 = v106;
        if (v106 == v20)
        {
          break;
        }

        swift_retain_n();

        v21 = sub_24F92C3B8();
        [v21 _luminance];
        v23 = v22;

        v24 = sub_24F92C3B8();
        [v24 _luminance];
        v26 = v25;

        ++v20;
        v13 += 8;
        if (v16 < v19 == v23 >= v26)
        {
          v11 = v20 - 1;
          break;
        }
      }

      v9 = v102;
      v5 = a3;
      v10 = v104;
      if (v16 < v19)
      {
        if (v11 < v104)
        {
          goto LABEL_117;
        }

        if (v104 < v11)
        {
          v27 = 8 * v11 - 8;
          v28 = v11;
          v29 = v104;
          do
          {
            if (v29 != --v28)
            {
              v31 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v30 = *&v6[v31];
              *&v6[v31] = *(v31 + v27);
              *(v31 + v27) = v30;
            }

            ++v29;
            v27 -= 8;
            v6 += 8;
          }

          while (v29 < v28);
        }
      }

      v6 = a1;
    }

    v32 = v5[1];
    if (v11 < v32)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_116;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_118;
        }

        if (v10 + a4 >= v32)
        {
          v33 = v5[1];
        }

        else
        {
          v33 = v10 + a4;
        }

        if (v33 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v11 != v33)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v11 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_24E615ED8(0, *(v9 + 2) + 1, 1, v9);
    }

    v48 = *(v9 + 2);
    v47 = *(v9 + 3);
    v49 = v48 + 1;
    if (v48 >= v47 >> 1)
    {
      v9 = sub_24E615ED8((v47 > 1), v48 + 1, 1, v9);
    }

    *(v9 + 2) = v49;
    v50 = &v9[16 * v48];
    *(v50 + 4) = v104;
    *(v50 + 5) = v11;
    v51 = *v6;
    if (!*v6)
    {
      goto LABEL_125;
    }

    v108 = v11;
    if (v48)
    {
      while (1)
      {
        v52 = v49 - 1;
        if (v49 >= 4)
        {
          break;
        }

        if (v49 == 3)
        {
          v53 = *(v9 + 4);
          v54 = *(v9 + 5);
          v63 = __OFSUB__(v54, v53);
          v55 = v54 - v53;
          v56 = v63;
LABEL_57:
          if (v56)
          {
            goto LABEL_104;
          }

          v69 = &v9[16 * v49];
          v71 = *v69;
          v70 = *(v69 + 1);
          v72 = __OFSUB__(v70, v71);
          v73 = v70 - v71;
          v74 = v72;
          if (v72)
          {
            goto LABEL_107;
          }

          v75 = &v9[16 * v52 + 32];
          v77 = *v75;
          v76 = *(v75 + 1);
          v63 = __OFSUB__(v76, v77);
          v78 = v76 - v77;
          if (v63)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v73, v78))
          {
            goto LABEL_111;
          }

          if (v73 + v78 >= v55)
          {
            if (v55 < v78)
            {
              v52 = v49 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v79 = &v9[16 * v49];
        v81 = *v79;
        v80 = *(v79 + 1);
        v63 = __OFSUB__(v80, v81);
        v73 = v80 - v81;
        v74 = v63;
LABEL_71:
        if (v74)
        {
          goto LABEL_106;
        }

        v82 = &v9[16 * v52];
        v84 = *(v82 + 4);
        v83 = *(v82 + 5);
        v63 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v63)
        {
          goto LABEL_109;
        }

        if (v85 < v73)
        {
          goto LABEL_3;
        }

LABEL_78:
        v90 = v52 - 1;
        if (v52 - 1 >= v49)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
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
          goto LABEL_119;
        }

        if (!*v5)
        {
          goto LABEL_122;
        }

        v91 = *&v9[16 * v90 + 32];
        v92 = *&v9[16 * v52 + 40];
        sub_24F3DF1CC((*v5 + 8 * v91), (*v5 + 8 * *&v9[16 * v52 + 32]), *v5 + 8 * v92, v51);
        if (v4)
        {
          goto LABEL_98;
        }

        if (v92 < v91)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_24E86164C(v9);
        }

        if (v90 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v93 = &v9[16 * v90];
        *(v93 + 4) = v91;
        *(v93 + 5) = v92;
        sub_24E8615C0(v52);
        v49 = *(v9 + 2);
        if (v49 <= 1)
        {
          goto LABEL_3;
        }
      }

      v57 = &v9[16 * v49 + 32];
      v58 = *(v57 - 64);
      v59 = *(v57 - 56);
      v63 = __OFSUB__(v59, v58);
      v60 = v59 - v58;
      if (v63)
      {
        goto LABEL_102;
      }

      v62 = *(v57 - 48);
      v61 = *(v57 - 40);
      v63 = __OFSUB__(v61, v62);
      v55 = v61 - v62;
      v56 = v63;
      if (v63)
      {
        goto LABEL_103;
      }

      v64 = &v9[16 * v49];
      v66 = *v64;
      v65 = *(v64 + 1);
      v63 = __OFSUB__(v65, v66);
      v67 = v65 - v66;
      if (v63)
      {
        goto LABEL_105;
      }

      v63 = __OFADD__(v55, v67);
      v68 = v55 + v67;
      if (v63)
      {
        goto LABEL_108;
      }

      if (v68 >= v60)
      {
        v86 = &v9[16 * v52 + 32];
        v88 = *v86;
        v87 = *(v86 + 1);
        v63 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v63)
        {
          goto LABEL_112;
        }

        if (v55 < v89)
        {
          v52 = v49 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v5[1];
    v8 = v108;
    if (v108 >= v7)
    {
      goto LABEL_88;
    }
  }

  v103 = v9;
  v34 = *v5;
  sub_24E77ACC8();
  v35 = v34 + 8 * v11 - 8;
  v36 = v10 - v11;
LABEL_30:
  v105 = v35;
  v107 = v11;
  v37 = v36;
  v38 = v35;
  while (1)
  {
    swift_retain_n();

    v39 = sub_24F92C3B8();
    [v39 _luminance];
    v41 = v40;

    v42 = sub_24F92C3B8();
    [v42 _luminance];
    v44 = v43;

    if (v41 >= v44)
    {
LABEL_29:
      ++v11;
      v35 = v105 + 8;
      --v36;
      if (v107 + 1 != v33)
      {
        goto LABEL_30;
      }

      v11 = v33;
      v9 = v103;
      v6 = a1;
      v5 = a3;
      v10 = v104;
      goto LABEL_37;
    }

    if (!v34)
    {
      break;
    }

    v45 = *v38;
    *v38 = v38[1];
    v38[1] = v45;
    --v38;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_29;
    }
  }

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
}

uint64_t sub_24F3DF1CC(char *__src, char *a2, unint64_t a3, char *__dst)
{
  v4 = a3;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if ((a3 - a2) >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    if (__dst != __src || &__src[8 * v8] <= __dst)
    {
      v13 = __dst;
      memmove(__dst, __src, 8 * v8);
      __dst = v13;
    }

    v14 = __src;
    v15 = &__dst[8 * v8];
    v16 = __dst;
    if (v6 < 8 || a2 >= v4)
    {
      v29 = v14;
      v28 = v15;
      goto LABEL_39;
    }

    v17 = a2;
    sub_24E77ACC8();
    v18 = v15;
    v19 = v14;
    v47 = v18;
    while (1)
    {
      swift_retain_n();

      v20 = sub_24F92C3B8();
      [v20 _luminance];
      v22 = v21;

      v23 = sub_24F92C3B8();
      [v23 _luminance];
      v25 = v24;

      if (v22 >= v25)
      {
        break;
      }

      v26 = v17;
      v27 = v19 == v17;
      v17 += 8;
      v28 = v47;
      if (!v27)
      {
        goto LABEL_17;
      }

LABEL_18:
      v19 += 8;
      if (v16 >= v28 || v17 >= v4)
      {
        v29 = v19;
        goto LABEL_39;
      }
    }

    v26 = v16;
    v27 = v19 == v16;
    v16 += 8;
    v28 = v47;
    if (v27)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v19 = *v26;
    goto LABEL_18;
  }

  v16 = __dst;
  v29 = a2;
  if (__dst != a2 || &a2[8 * v11] <= __dst)
  {
    memmove(__dst, a2, 8 * v11);
  }

  v28 = &v16[8 * v11];
  if (v9 >= 8 && v29 > __src)
  {
    sub_24E77ACC8();
    v45 = __src;
    v46 = v16;
    do
    {
      v48 = v29;
      v30 = v29 - 8;
      v31 = (v4 - 8);
      v32 = v28;
      v33 = v28;
      while (1)
      {
        v34 = v31;
        v35 = (v31 + 1);
        v33 -= 8;
        v36 = v30;
        swift_retain_n();

        v37 = sub_24F92C3B8();
        [v37 _luminance];
        v39 = v38;

        v40 = sub_24F92C3B8();
        [v40 _luminance];
        v42 = v41;

        if (v39 < v42)
        {
          break;
        }

        if (v35 != v32)
        {
          *v34 = *v33;
        }

        v31 = v34 - 1;
        v32 = v33;
        v16 = v46;
        v30 = v36;
        if (v33 <= v46)
        {
          v28 = v33;
          v29 = v48;
          goto LABEL_39;
        }
      }

      v27 = v35 == v48;
      v4 = v34;
      v43 = v36;
      if (!v27)
      {
        *v34 = *v36;
      }

      v16 = v46;
      v28 = v32;
      if (v32 <= v46)
      {
        break;
      }

      v29 = v43;
    }

    while (v43 > v45);
    v29 = v43;
  }

LABEL_39:
  if (v29 != v16 || v29 >= &v16[(v28 - v16 + (v28 - v16 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v29, v16, 8 * ((v28 - v16) / 8));
  }

  return 1;
}

uint64_t sub_24F3DF544(uint64_t a1)
{
  sub_24F927828();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16))
    {
    }

    __break(1u);
    goto LABEL_14;
  }

  sub_24F927838();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16) >= 3uLL)
    {
    }

LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    return result;
  }

  sub_24F927898();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16) >= 2uLL)
    {
    }

    goto LABEL_15;
  }

  return sub_24F926C98();
}

uint64_t sub_24F3DF614(uint64_t a1)
{
  sub_24F927828();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16))
    {
    }

    __break(1u);
    goto LABEL_17;
  }

  sub_24F927838();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16) >= 3uLL)
    {
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  sub_24F927848();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16) >= 2uLL)
    {
    }

    goto LABEL_18;
  }

  sub_24F927858();
  result = sub_24F927868();
  if (result)
  {
    if (*(a1 + 16) >= 4uLL)
    {
    }

    goto LABEL_19;
  }

  return sub_24F926C98();
}

uint64_t sub_24F3DF710(uint64_t a1)
{
  v1 = *(a1 + 16);
  switch(v1)
  {
    case 3:

      return sub_24F3DF544(a1);
    case 2:
      sub_24F927828();
      if (sub_24F927868())
      {
      }

      sub_24F927858();
      if (sub_24F927868())
      {
      }

      return sub_24F926C98();
    case 1:

    default:

      return sub_24F3DF614(a1);
  }
}

uint64_t sub_24F3DF80C(unsigned __int8 a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 > 1)
  {
    if (v3 != 2)
    {
      if (v3 == 3)
      {
        v6 = a1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
        if (v6 == 1)
        {
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_24F93DE60;
          v5 = (v4 + 32);
          sub_24F927898();
        }

        else
        {
          v4 = swift_allocObject();
          *(v4 + 16) = xmmword_24F93A400;
          sub_24F927828();
          *(v4 + 32) = sub_24F3DF710(a2);
          v5 = (v4 + 40);
          sub_24F927838();
        }

        goto LABEL_25;
      }

LABEL_9:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24F93A400;
      v5 = (v4 + 40);
      if (a1 > 1u)
      {
        if (a1 == 2)
        {
          sub_24F927828();
          *(v4 + 32) = sub_24F3DF710(a2);
          sub_24F927848();
          goto LABEL_25;
        }

        sub_24F927838();
      }

      else
      {
        if (!a1)
        {
          sub_24F927828();
          *(v4 + 32) = sub_24F3DF710(a2);
          sub_24F927838();
          goto LABEL_25;
        }

        sub_24F927848();
      }

      *(v4 + 32) = sub_24F3DF710(a2);
LABEL_24:
      sub_24F927858();
      goto LABEL_25;
    }

    if (a1 > 1u)
    {
      if (a1 != 2)
      {
        goto LABEL_15;
      }
    }

    else if (a1)
    {
LABEL_15:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24F93DE60;
      v5 = (v4 + 32);
      goto LABEL_24;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_24F93DE60;
    v5 = (v4 + 32);
    sub_24F927828();
    goto LABEL_25;
  }

  if (v3)
  {
    if (v3 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_24F93DE60;
      v5 = (v4 + 32);
      sub_24F927878();
LABEL_25:
      *v5 = sub_24F3DF710(a2);
      return v4;
    }

    goto LABEL_9;
  }

  return MEMORY[0x277D84F90];
}

__n128 sub_24F3DFA60@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v28 = 0u;
  if (!a1)
  {
    goto LABEL_7;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {

LABEL_7:
    sub_24E70D8E0(&v37);
    goto LABEL_8;
  }

  if (v4 >= 5)
  {
    v5 = a2;
    sub_24E6B87F0(a1, a1 + 32, 0, 9uLL);
    v7 = v6;

    a2 = v5;
    a1 = v7;
  }

  *&v26 = a1;
  BYTE8(v26) = a2;
  sub_24F3DDE68(a1);
  v13[8] = v34;
  v13[9] = v35;
  v13[10] = v36;
  v13[4] = v30;
  v13[5] = v31;
  v13[6] = v32;
  v13[7] = v33;
  v13[0] = v26;
  v13[1] = v27;
  v13[2] = v28;
  v13[3] = v29;
  v22 = v34;
  v23 = v35;
  v24 = v36;
  v18 = v30;
  v19 = v31;
  v20 = v32;
  v21 = v33;
  v14 = v26;
  v15 = v27;
  v16 = v28;
  v17 = v29;
  CGSizeMake();
  v25[8] = v34;
  v25[9] = v35;
  v25[10] = v36;
  v25[4] = v30;
  v25[5] = v31;
  v25[6] = v32;
  v25[7] = v33;
  v25[0] = v26;
  v25[1] = v27;
  v25[2] = v28;
  v25[3] = v29;
  sub_24F3DFD5C(v13, &v37);
  sub_24F3DFD94(v25);
  v45 = v22;
  v46 = v23;
  v47 = v24;
  v41 = v18;
  v42 = v19;
  v43 = v20;
  v44 = v21;
  v37 = v14;
  v38 = v15;
  v39 = v16;
  v40 = v17;
LABEL_8:
  v8 = v46;
  *(a3 + 128) = v45;
  *(a3 + 144) = v8;
  *(a3 + 160) = v47;
  v9 = v42;
  *(a3 + 64) = v41;
  *(a3 + 80) = v9;
  v10 = v44;
  *(a3 + 96) = v43;
  *(a3 + 112) = v10;
  v11 = v38;
  *a3 = v37;
  *(a3 + 16) = v11;
  result = v40;
  *(a3 + 32) = v39;
  *(a3 + 48) = result;
  return result;
}

void sub_24F3DFC1C(unsigned __int8 a1, uint64_t a2)
{
  v2 = sub_24F3DF80C(a1, a2);
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    while (v4 < *(v2 + 16))
    {
      sub_24E77ACC8();
      swift_retain_n();
      v5 = sub_24F92C3B8();
      [v5 _luminance];
      v7 = v6;

      if (v7 >= 0.84)
      {
      }

      else
      {
        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        sub_24F92C958();
      }

      if (v3 == ++v4)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

uint64_t StoreTab.tabTitleText.getter()
{
  v1 = (v0 + *(type metadata accessor for StoreTab(0) + 28));
  if (!v1[1])
  {
    v3 = *(v0 + 8);
    if (StoreTab.Identifier.rawValue.getter() == 0x776F6E2D79616C70 && v4 == 0xE800000000000000)
    {

LABEL_7:
      if (qword_27F211718 != -1)
      {
        swift_once();
      }

      v6 = &qword_27F39EEF8;
LABEL_10:
      countAndFlagsBits = *v6;

      goto LABEL_11;
    }

    v5 = sub_24F92CE08();

    if (v5)
    {
      goto LABEL_7;
    }

    if (StoreTab.Identifier.rawValue.getter() == 0x676F742D79616C70 && v8 == 0xED00007265687465)
    {

LABEL_16:
      if (qword_27F211728 != -1)
      {
        swift_once();
      }

      v6 = &qword_27F39EF18;
      goto LABEL_10;
    }

    v9 = sub_24F92CE08();

    if (v9)
    {
      goto LABEL_16;
    }

    if (StoreTab.Identifier.rawValue.getter() == 0x676E656C6C616863 && v10 == 0xEA00000000007365)
    {

LABEL_23:
      if (qword_27F2114B0 != -1)
      {
        swift_once();
      }

      v6 = &qword_27F39EA28;
      goto LABEL_10;
    }

    v11 = sub_24F92CE08();

    if (v11)
    {
      goto LABEL_23;
    }

    if (StoreTab.Identifier.rawValue.getter() == 0x7972617262696CLL && v12 == 0xE700000000000000)
    {

LABEL_30:
      if (qword_27F211720 != -1)
      {
        swift_once();
      }

      v6 = &qword_27F39EF08;
      goto LABEL_10;
    }

    v13 = sub_24F92CE08();

    if (v13)
    {
      goto LABEL_30;
    }

    if (v3 == 4)
    {
      if (qword_27F211730 != -1)
      {
        swift_once();
      }

      v6 = &qword_27F39EF28;
      goto LABEL_10;
    }

    if (v3 == 5)
    {
      if (qword_27F211738 != -1)
      {
        swift_once();
      }

      v6 = &qword_27F39EF38;
      goto LABEL_10;
    }

    if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000018 && 0x800000024FA74B20 == v14)
    {
    }

    else
    {
      v15 = sub_24F92CE08();

      if ((v15 & 1) == 0)
      {
        if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000018 && 0x800000024FA74B40 == v21)
        {
        }

        else
        {
          v22 = sub_24F92CE08();

          if ((v22 & 1) == 0)
          {
            if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000013 && 0x800000024FA74B60 == v23)
            {
            }

            else
            {
              v24 = sub_24F92CE08();

              if ((v24 & 1) == 0)
              {
                if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000014 && 0x800000024FA74B80 == v25)
                {
                }

                else
                {
                  v26 = sub_24F92CE08();

                  if ((v26 & 1) == 0)
                  {
                    if (StoreTab.Identifier.rawValue.getter() == 0xD00000000000001CLL && 0x800000024FA74BA0 == v27)
                    {
                    }

                    else
                    {
                      v28 = sub_24F92CE08();

                      if ((v28 & 1) == 0)
                      {
                        countAndFlagsBits = 0;
                        goto LABEL_11;
                      }
                    }

                    v17 = "overlay-system-settings-page";
                    v18 = 0xD00000000000001FLL;
                    goto LABEL_47;
                  }
                }

                v19 = 0x800000024FA74BE0;
                v18 = 0xD000000000000018;
                goto LABEL_48;
              }
            }

            v17 = "Overlay.LibraryTab.Title";
            v18 = 0xD000000000000017;
LABEL_47:
            v19 = v17 | 0x8000000000000000;
LABEL_48:
            v20._countAndFlagsBits = 0;
            v20._object = 0xE000000000000000;
            countAndFlagsBits = localizedString(_:comment:)(*&v18, v20)._countAndFlagsBits;
            goto LABEL_11;
          }
        }

        v16 = "Overlay.NowPlayingTab.Title";
LABEL_46:
        v17 = v16 - 32;
        v18 = 0xD00000000000001BLL;
        goto LABEL_47;
      }
    }

    v16 = "Overlay.ActiveCallTab.Title";
    goto LABEL_46;
  }

  countAndFlagsBits = *v1;
LABEL_11:

  return countAndFlagsBits;
}

unint64_t StoreTab.tabImageName.getter()
{
  v1 = (v0 + *(type metadata accessor for StoreTab(0) + 36));
  if (v1[1])
  {
    v2 = *v1;
    goto LABEL_12;
  }

  v2 = 0x6C69662E656D6F68;
  v3 = *(v0 + 8);
  if (StoreTab.Identifier.rawValue.getter() == 0x776F6E2D79616C70 && v4 == 0xE800000000000000)
  {
LABEL_5:

    goto LABEL_12;
  }

  v5 = sub_24F92CE08();

  if (v5)
  {
    goto LABEL_12;
  }

  if (StoreTab.Identifier.rawValue.getter() == 0x676F742D79616C70 && v6 == 0xED00007265687465)
  {
    goto LABEL_9;
  }

  v7 = sub_24F92CE08();

  if (v7)
  {
    goto LABEL_11;
  }

  if (StoreTab.Identifier.rawValue.getter() == 0x676E656C6C616863 && v9 == 0xEA00000000007365)
  {

LABEL_17:
    v2 = 0xD000000000000013;
    goto LABEL_12;
  }

  v10 = sub_24F92CE08();

  if (v10)
  {
    goto LABEL_17;
  }

  v2 = 0x732E657261757173;
  if (StoreTab.Identifier.rawValue.getter() == 0x7972617262696CLL && v11 == 0xE700000000000000)
  {
    goto LABEL_5;
  }

  v12 = sub_24F92CE08();

  if (v12)
  {
    goto LABEL_12;
  }

  if (v3 == 4)
  {
    v2 = 0x697966696E67616DLL;
    goto LABEL_12;
  }

  if (v3 == 5)
  {
    v2 = 0xD000000000000017;
    goto LABEL_12;
  }

  if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000018 && 0x800000024FA74B20 == v13)
  {

LABEL_29:
    v2 = 0xD000000000000019;
    goto LABEL_12;
  }

  v14 = sub_24F92CE08();

  if (v14)
  {
    goto LABEL_29;
  }

  if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000018 && 0x800000024FA74B40 == v15)
  {
    goto LABEL_32;
  }

  v16 = sub_24F92CE08();

  if (v16)
  {
    v2 = 0x662E74656B636F72;
    goto LABEL_12;
  }

  if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000013 && 0x800000024FA74B60 == v17)
  {
LABEL_9:

LABEL_11:
    v2 = 0x322E6E6F73726570;
    goto LABEL_12;
  }

  v18 = sub_24F92CE08();

  v2 = 0x322E6E6F73726570;
  if (v18)
  {
    goto LABEL_12;
  }

  if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000014 && 0x800000024FA74B80 == v19)
  {
LABEL_32:

    v2 = 0x662E74656B636F72;
    goto LABEL_12;
  }

  v20 = sub_24F92CE08();

  v2 = 0x662E74656B636F72;
  if ((v20 & 1) == 0)
  {
    if (StoreTab.Identifier.rawValue.getter() == 0xD00000000000001CLL && 0x800000024FA74BA0 == v21)
    {
    }

    else
    {
      v22 = sub_24F92CE08();

      if ((v22 & 1) == 0)
      {
        v2 = 0;
        goto LABEL_12;
      }
    }

    v2 = 0xD000000000000013;
  }

LABEL_12:

  return v2;
}

double static StoreTab.Identifier.playNow.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 2.02691633e267;
  *a1 = xmmword_24F9F12F0;
  return result;
}

double static StoreTab.Identifier.playTogether.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.75178443e190;
  *a1 = xmmword_24F9F1300;
  return result;
}

double static StoreTab.Identifier.challenges.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 1.69288076e190;
  *a1 = xmmword_24F9F1310;
  return result;
}

double static StoreTab.Identifier.library.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 2.26484033e-306;
  *a1 = xmmword_24F9F1320;
  return result;
}

uint64_t StoreTab.Identifier.gamesTabDestination(player:asPartOf:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v144 = a2;
  v145 = a1;
  v146 = a3;
  v4 = sub_24F91F4A8();
  v130 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v126 = &v124 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v127 = &v124 - v7;
  MEMORY[0x28223BE20](v8);
  v128 = &v124 - v9;
  MEMORY[0x28223BE20](v10);
  v129 = &v124 - v11;
  v132 = type metadata accessor for StoreTab(0);
  v136 = *(v132 - 8);
  MEMORY[0x28223BE20](v132);
  v137 = (&v124 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2249C0, &qword_24F9730E0);
  MEMORY[0x28223BE20](v13 - 8);
  v131 = &v124 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v133 = &v124 - v16;
  v134 = type metadata accessor for LibraryPageIntent(0);
  MEMORY[0x28223BE20](v134);
  v135 = &v124 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = type metadata accessor for ChallengesHubPageIntent(0);
  MEMORY[0x28223BE20](v138);
  v139 = &v124 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for PlayTogetherPageIntent(0);
  MEMORY[0x28223BE20](v142);
  v143 = &v124 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v141 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v22 = &v124 - v21;
  v23 = sub_24F92A498();
  v140 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v124 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for PlayNowPageIntent(0);
  MEMORY[0x28223BE20](v26);
  v28 = &v124 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *v3;
  v30 = v3[1];
  v149 = *v3;
  v150 = v30;
  if (StoreTab.Identifier.rawValue.getter() == 0x776F6E2D79616C70 && v31 == 0xE800000000000000)
  {

LABEL_5:
    sub_24F3E55A8(v145, v28, type metadata accessor for Player);
    LOBYTE(v149) = 7;
    v33 = sub_24F7AAD68();
    v35 = v34;
    v148 = 6;
    v36 = sub_24F7AAD68();
    v28[v26[5]] = 0;
    v37 = &v28[v26[6]];
    *v37 = v33;
    v37[8] = v35 & 1;
    v38 = &v28[v26[7]];
    *v38 = v36;
    v38[8] = v39 & 1;
    v40 = swift_allocObject();
    *(v40 + 40) = v26;
    *(v40 + 48) = sub_24F3E5610(&qword_27F21D3A8, type metadata accessor for PlayNowPageIntent, &protocol conformance descriptor for PlayNowPageIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 16));
    v42 = type metadata accessor for PlayNowPageIntent;
    v43 = v28;
LABEL_6:
    result = sub_24F3E5540(v43, boxed_opaque_existential_1, v42);
    v45 = v40 | 4;
    goto LABEL_7;
  }

  v125 = v4;
  v32 = sub_24F92CE08();

  if (v32)
  {
    goto LABEL_5;
  }

  v149 = v29;
  v150 = v30;
  if (StoreTab.Identifier.rawValue.getter() == 0x676F742D79616C70 && v46 == 0xED00007265687465)
  {

    goto LABEL_12;
  }

  v47 = sub_24F92CE08();

  if ((v47 & 1) == 0)
  {
    v149 = v29;
    v150 = v30;
    if (StoreTab.Identifier.rawValue.getter() == 0x676E656C6C616863 && v56 == 0xEA00000000007365)
    {

LABEL_23:
      v65 = v139;
      sub_24F3E55A8(v145, v139, type metadata accessor for Player);
      v66 = v138;
      v67 = *(v138 + 24);
      v68 = type metadata accessor for GameSource(0);
      (*(*(v68 - 8) + 56))(v65 + v67, 1, 1, v68);
      v69 = *(v66 + 28);
      v70 = type metadata accessor for Page.Background(0);
      (*(*(v70 - 8) + 56))(v65 + v69, 1, 1, v70);
      v71 = v65 + *(v66 + 20);
      *(v71 + 32) = 0;
      *v71 = 0u;
      *(v71 + 16) = 0u;
      v72 = swift_allocObject();
      *(v72 + 40) = v66;
      *(v72 + 48) = sub_24F3E5610(&qword_27F21D318, type metadata accessor for ChallengesHubPageIntent, &protocol conformance descriptor for ChallengesHubPageIntent);
      v73 = __swift_allocate_boxed_opaque_existential_1((v72 + 16));
      result = sub_24F3E5540(v65, v73, type metadata accessor for ChallengesHubPageIntent);
      v45 = v72 | 4;
      goto LABEL_7;
    }

    v64 = sub_24F92CE08();

    if (v64)
    {
      goto LABEL_23;
    }

    v149 = v29;
    v150 = v30;
    if (StoreTab.Identifier.rawValue.getter() == 0x7972617262696CLL && v74 == 0xE700000000000000)
    {

LABEL_28:
      v76 = v135;
      sub_24F3E55A8(v145, v135, type metadata accessor for Player);
      v40 = swift_allocObject();
      *(v40 + 40) = v134;
      *(v40 + 48) = sub_24F3E5610(&qword_27F21D380, type metadata accessor for LibraryPageIntent, &protocol conformance descriptor for LibraryPageIntent);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v40 + 16));
      v42 = type metadata accessor for LibraryPageIntent;
      v43 = v76;
      goto LABEL_6;
    }

    v75 = sub_24F92CE08();

    if (v75)
    {
      goto LABEL_28;
    }

    if (v30 == 4)
    {
      v93 = swift_allocObject();
      v94 = type metadata accessor for SearchPageContainerIntent(0);
      *(v93 + 40) = v94;
      *(v93 + 48) = sub_24F3E5610(&qword_27F21D2E0, type metadata accessor for SearchPageContainerIntent, &unk_24F98E644);
      v95 = __swift_allocate_boxed_opaque_existential_1((v93 + 16));
      sub_24F3E55A8(v145, v95, type metadata accessor for Player);
      v96 = type metadata accessor for Player(0);
      result = (*(*(v96 - 8) + 56))(v95, 0, 1, v96);
      v97 = (v95 + *(v94 + 20));
      *v97 = 0;
      v97[1] = 0;
      *v146 = v93 | 0x1000000000000004;
      return result;
    }

    if (v30 != 5)
    {
      goto LABEL_68;
    }

    type metadata accessor for ASKBagContract(0);
    sub_24F928F28();
    if (qword_27F210878 != -1)
    {
      goto LABEL_71;
    }

LABEL_32:
    v77 = ASKBagContract.tabs(withFallback:bagKey:)(MEMORY[0x277D84F90], qword_27F2337D8);
    v78 = v77;
    v79 = *(v77 + 16);
    if (!v79)
    {
LABEL_55:

      v88 = 1;
      v89 = v125;
      v90 = v132;
      v91 = v133;
      v92 = v131;
LABEL_58:
      v98 = v136;
      (*(v136 + 56))(v91, v88, 1, v90);
      sub_24E60169C(v91, v92, &qword_27F2249C0, &qword_24F9730E0);
      if ((*(v98 + 48))(v92, 1, v90) == 1)
      {
        sub_24E601704(v91, &qword_27F2249C0, &qword_24F9730E0);

        v91 = v92;
        goto LABEL_67;
      }

      v99 = *(v92 + *(v90 + 32));

      sub_24F3E5658(v92, type metadata accessor for StoreTab);
      if (*(v99 + 16) && (v100 = sub_24E76D758(2), (v101 & 1) != 0))
      {
        v102 = v130;
        v103 = v130[9];
        v104 = v130[2];
        v105 = v128;
        v104(v128, *(v99 + 56) + v103 * v100, v89);
        v106 = v102[4];
        v106(v129, v105, v89);
        if (*(v99 + 16))
        {
          v107 = sub_24E76D758(1);
          if (v108)
          {
            v109 = *(v99 + 56) + v107 * v103;
            v110 = v126;
            v104(v126, v109, v89);

            v106(v127, v110, v89);
            v111 = swift_allocObject();
            v111[2] = 0x656461637261;
            v111[3] = 0xE600000000000000;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242308, &qword_24F9F1330);
            v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2132F0, &qword_24F93AAC0);
            v113 = *(*(v112 - 8) + 72);
            v114 = (*(*(v112 - 8) + 80) + 32) & ~*(*(v112 - 8) + 80);
            v115 = swift_allocObject();
            *(v115 + 16) = xmmword_24F93A400;
            v116 = (v115 + v114);
            v117 = *(v112 + 48);
            *v116 = 2;
            v118 = v129;
            v104(&v116[v117], v129, v89);
            v119 = *(v112 + 48);
            v116[v113] = 1;
            v120 = &v116[v113 + v119];
            v121 = v127;
            v104(v120, v127, v89);
            v122 = sub_24E609218(v115);
            swift_setDeallocating();
            swift_arrayDestroy();
            swift_deallocClassInstance();

            v123 = v130[1];
            v123(v121, v89);
            v123(v118, v89);
            result = sub_24E601704(v133, &qword_27F2249C0, &qword_24F9730E0);
            v111[4] = v122;
            *v146 = v111;
            return result;
          }
        }

        (v130[1])(v129, v89);
      }

      else
      {
      }

LABEL_67:
      result = sub_24E601704(v91, &qword_27F2249C0, &qword_24F9730E0);
LABEL_68:
      v45 = 0xF000000000000007;
LABEL_7:
      *v146 = v45;
      return result;
    }

    v80 = 0;
    v81 = v77 + ((*(v136 + 80) + 32) & ~*(v136 + 80));
    while (1)
    {
      if (v80 >= *(v78 + 16))
      {
        __break(1u);
LABEL_71:
        swift_once();
        goto LABEL_32;
      }

      v82 = v137;
      sub_24F3E55A8(v81 + *(v136 + 72) * v80, v137, type metadata accessor for StoreTab);
      v83 = *v82;
      v84 = v82[1];
      if (v84 <= 4)
      {
        if (v84 > 1 || v84 <= 1)
        {
          goto LABEL_53;
        }
      }

      else
      {
        if (v84 <= 7)
        {
          if (v84 != 5)
          {
            goto LABEL_53;
          }

          v85 = 0xE600000000000000;
          v86 = 0x656461637261;
          goto LABEL_51;
        }

        if (v84 == 8 || v84 == 9 || v84 == 10)
        {
          goto LABEL_53;
        }
      }

      v86 = v83;
      v85 = v84;
LABEL_51:
      if (v86 == 0x656461637261 && v85 == 0xE600000000000000)
      {
        sub_24E8E2880(v83, v84);

LABEL_57:
        v89 = v125;
        v90 = v132;
        v92 = v131;

        v91 = v133;
        sub_24F3E5540(v137, v133, type metadata accessor for StoreTab);
        v88 = 0;
        goto LABEL_58;
      }

LABEL_53:
      v87 = sub_24F92CE08();
      sub_24E8E2880(v83, v84);

      if (v87)
      {
        goto LABEL_57;
      }

      ++v80;
      sub_24F3E5658(v137, type metadata accessor for StoreTab);
      if (v79 == v80)
      {
        goto LABEL_55;
      }
    }
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215720, &qword_24F940B20);
  sub_24F928F28();
  v48 = v151;
  v49 = v152;
  __swift_project_boxed_opaque_existential_1(&v149, v151);
  v148 = 24;
  if (((*(v49 + 8))(&v148, v48, v49) & 1) == 0)
  {
    goto LABEL_16;
  }

  sub_24F928F28();
  if (qword_27F2118A0 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v141 + 8))(v22, v20);
  (*(v140 + 8))(v25, v23);
  if ((v148 & 1) == 0)
  {
    sub_24F3E55A8(v145, v28, type metadata accessor for Player);
    v148 = 5;
    v57 = sub_24F7AAD68();
    v59 = v58;
    v147 = 4;
    v60 = sub_24F7AAD68();
    v28[v26[5]] = 1;
    v61 = &v28[v26[6]];
    *v61 = v57;
    v61[8] = v59 & 1;
    v62 = &v28[v26[7]];
    *v62 = v60;
    v62[8] = v63 & 1;
    v52 = swift_allocObject();
    *(v52 + 40) = v26;
    *(v52 + 48) = sub_24F3E5610(&qword_27F21D3A8, type metadata accessor for PlayNowPageIntent, &protocol conformance descriptor for PlayNowPageIntent);
    v53 = __swift_allocate_boxed_opaque_existential_1((v52 + 16));
    v54 = type metadata accessor for PlayNowPageIntent;
    v55 = v28;
  }

  else
  {
LABEL_16:
    v50 = v143;
    sub_24F3E55A8(v145, v143, type metadata accessor for Player);
    v51 = type metadata accessor for Player(0);
    (*(*(v51 - 8) + 56))(v50, 0, 1, v51);
    v52 = swift_allocObject();
    *(v52 + 40) = v142;
    *(v52 + 48) = sub_24F3E5610(&qword_27F242310, type metadata accessor for PlayTogetherPageIntent, &unk_24F99A140);
    v53 = __swift_allocate_boxed_opaque_existential_1((v52 + 16));
    v54 = type metadata accessor for PlayTogetherPageIntent;
    v55 = v50;
  }

  sub_24F3E5540(v55, v53, v54);
  *v146 = v52 | 4;
  return __swift_destroy_boxed_opaque_existential_1(&v149);
}

uint64_t StoreTab.Identifier.overlayTabDestination(player:bundleID:commonOnboardingStatus:isGamesAppInstalled:)@<X0>(void (*a1)(char *, uint64_t)@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v145 = a5;
  v156 = a3;
  v157 = a6;
  v151 = a2;
  v149 = a1;
  v141 = type metadata accessor for OverlaySocialPageIntent(0);
  MEMORY[0x28223BE20](v141);
  v137 = &v136 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v139 = &v136 - v10;
  MEMORY[0x28223BE20](v11);
  v140 = &v136 - v12;
  v146 = type metadata accessor for OverlayNowPlayingPageIntent(0);
  MEMORY[0x28223BE20](v146);
  v14 = (&v136 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v142 = &v136 - v16;
  MEMORY[0x28223BE20](v17);
  v143 = &v136 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1F0, &unk_24F9549C0);
  MEMORY[0x28223BE20](v19 - 8);
  v136 = (&v136 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v21);
  v138 = (&v136 - v22);
  MEMORY[0x28223BE20](v23);
  v148 = &v136 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v136 - v26;
  v147 = type metadata accessor for Player(0);
  v152 = *(v147 - 8);
  MEMORY[0x28223BE20](v147);
  v29 = &v136 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_24F91EAA8();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v33 = &v136 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = sub_24F9289E8();
  v155 = *(v150 - 8);
  MEMORY[0x28223BE20](v150);
  v144 = &v136 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v35);
  v154 = &v136 - v36;
  v153 = *a4;
  v38 = *v6;
  v37 = v6[1];
  v159 = *v6;
  v160 = v37;
  if (StoreTab.Identifier.rawValue.getter() != 0xD000000000000018 || 0x800000024FA74B20 != v39)
  {
    v40 = sub_24F92CE08();

    if (v40)
    {
      goto LABEL_5;
    }

    v159 = v38;
    v160 = v37;
    if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000018 && 0x800000024FA74B40 == v44)
    {
    }

    else
    {
      v45 = sub_24F92CE08();

      if ((v45 & 1) == 0)
      {
        v159 = v38;
        v160 = v37;
        if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000013 && 0x800000024FA74B60 == v65)
        {

          v66 = v151;
          v67 = v156;
          v68 = v141;
          v14 = v140;
          v69 = v149;
          v70 = v139;
        }

        else
        {
          v104 = sub_24F92CE08();

          v66 = v151;
          v67 = v156;
          v68 = v141;
          v14 = v140;
          v69 = v149;
          v70 = v139;
          if ((v104 & 1) == 0)
          {
            v159 = v38;
            v160 = v37;
            if (StoreTab.Identifier.rawValue.getter() == 0xD00000000000001CLL && 0x800000024FA74BA0 == v122)
            {
            }

            else
            {
              v131 = sub_24F92CE08();

              if ((v131 & 1) == 0)
              {
                v43 = 0xF000000000000007;
                goto LABEL_8;
              }
            }

            if (qword_27F2113F8 != -1)
            {
              swift_once();
            }

            v132 = sub_24F9220D8();
            __swift_project_value_buffer(v132, qword_27F39E838);
            v133 = sub_24F9220B8();
            v134 = sub_24F92BDD8();
            if (os_log_type_enabled(v133, v134))
            {
              v135 = swift_slowAlloc();
              *v135 = 0;
              _os_log_impl(&dword_24E5DD000, v133, v134, "creating the overlay system settings page intent", v135, 2u);
              MEMORY[0x2530542D0](v135, -1, -1);
            }

            v41 = swift_allocObject();
            *(v41 + 40) = &type metadata for OverlaySystemSettingsPageIntent;
            result = sub_24E7C58D8();
            goto LABEL_6;
          }
        }

        v105 = v148;
        sub_24E60169C(v69, v148, &unk_27F23E1F0, &unk_24F9549C0);
        sub_24E60169C(v105, v14, &unk_27F23E1F0, &unk_24F9549C0);
        v106 = (v14 + v68[5]);
        *v106 = v66;
        v106[1] = v67;
        v161 = &_s14descr2861AC041O5GamesON;
        v162 = sub_24EDA569C();
        LOBYTE(v159) = 0;

        v107 = sub_24F91FE68();
        sub_24E601704(v105, &unk_27F23E1F0, &unk_24F9549C0);
        __swift_destroy_boxed_opaque_existential_1(&v159);
        *(v14 + v68[6]) = v107 & 1;
        *(v14 + v68[7]) = v153;
        if (qword_27F2113F8 != -1)
        {
          swift_once();
        }

        v108 = sub_24F9220D8();
        __swift_project_value_buffer(v108, qword_27F39E838);
        sub_24F3E55A8(v14, v70, type metadata accessor for OverlaySocialPageIntent);
        v109 = v137;
        sub_24F3E55A8(v14, v137, type metadata accessor for OverlaySocialPageIntent);
        v110 = sub_24F9220B8();
        v111 = sub_24F92BDD8();
        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v113 = swift_slowAlloc();
          v159 = v113;
          *v112 = 136315650;
          v114 = (v70 + v68[5]);
          if (v114[1])
          {
            v115 = *v114;
            v116 = v114[1];
          }

          else
          {
            v115 = 7104878;
            v116 = 0xE300000000000000;
          }

          sub_24F3E5658(v70, type metadata accessor for OverlaySocialPageIntent);
          v123 = sub_24E7620D4(v115, v116, &v159);

          *(v112 + 4) = v123;
          *(v112 + 12) = 2080;
          v124 = v136;
          sub_24E60169C(v109, v136, &unk_27F23E1F0, &unk_24F9549C0);
          if ((*(v152 + 48))(v124, 1, v147) == 1)
          {
            v125 = 7104878;
            sub_24E601704(v124, &unk_27F23E1F0, &unk_24F9549C0);
            v126 = 0xE300000000000000;
          }

          else
          {
            v125 = *v124;
            v126 = v124[1];

            sub_24F3E5658(v124, type metadata accessor for Player);
          }

          sub_24F3E5658(v109, type metadata accessor for OverlaySocialPageIntent);
          v127 = sub_24E7620D4(v125, v126, &v159);

          *(v112 + 14) = v127;
          *(v112 + 22) = 2080;
          v158 = v153;
          v128 = sub_24F92B188();
          v130 = sub_24E7620D4(v128, v129, &v159);

          *(v112 + 24) = v130;
          _os_log_impl(&dword_24E5DD000, v110, v111, "creating the overlay social page intent with: bundleID %s for player %s, commonOnboardingStatus: %s", v112, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x2530542D0](v113, -1, -1);
          MEMORY[0x2530542D0](v112, -1, -1);
        }

        else
        {

          sub_24F3E5658(v109, type metadata accessor for OverlaySocialPageIntent);
          sub_24F3E5658(v70, type metadata accessor for OverlaySocialPageIntent);
        }

        v41 = swift_allocObject();
        *(v41 + 40) = v68;
        *(v41 + 48) = sub_24F3E5610(&qword_27F21D398, type metadata accessor for OverlaySocialPageIntent, &protocol conformance descriptor for OverlaySocialPageIntent);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 16));
        v64 = type metadata accessor for OverlaySocialPageIntent;
LABEL_56:
        result = sub_24F3E5540(v14, boxed_opaque_existential_1, v64);
        goto LABEL_7;
      }
    }

    v46 = v156;
    if (v156)
    {
      v47 = objc_allocWithZone(MEMORY[0x277CC1E70]);

      v48 = v151;
      v49 = v46;
      v141 = sub_24F3E5298(v151, v46, 1);
      v159 = v48;
      v160 = v46;
      sub_24F91EA28();
      sub_24E600AEC();
      v71 = sub_24F92C578();
      v73 = v72;
      (*(v31 + 8))(v33, v30);
      if (!v73)
      {

        v71 = v48;
        v73 = v49;
      }

      v74 = v149;
      v159 = 0x3A6E6F6369707061;
      v160 = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v71, v73);

      sub_24F3E5448(MEMORY[0x277D84F90]);
      sub_24F928948();
      if (v141)
      {
        v75 = [v141 localizedName];
        v149 = sub_24F92B0D8();
        v137 = v76;
      }

      else
      {
        v149 = 0;
        v137 = 0xE000000000000000;
      }

      sub_24E60169C(v74, v27, &unk_27F23E1F0, &unk_24F9549C0);
      v77 = *(v152 + 48);
      v152 += 48;
      v136 = v77;
      if ((v77)(v27, 1, v147) == 1)
      {
        sub_24E601704(v27, &unk_27F23E1F0, &unk_24F9549C0);
        v140 = 0;
        v139 = 0;
      }

      else
      {
        sub_24F3E5540(v27, v29, type metadata accessor for Player);
        v140 = sub_24F117184(v29, v48, v49);
        v139 = v78;
        sub_24F3E5658(v29, type metadata accessor for Player);
      }

      v79 = v155;
      v80 = *(v155 + 16);
      v81 = v144;
      v82 = v150;
      v80(v144, v154, v150);
      v83 = v74;
      v84 = v148;
      sub_24E60169C(v83, v148, &unk_27F23E1F0, &unk_24F9549C0);
      v85 = v143;
      v86 = v156;
      *v143 = v48;
      *(v85 + 1) = v86;
      v87 = v137;
      *(v85 + 2) = v149;
      *(v85 + 3) = v87;
      v88 = v146;
      v80(&v85[*(v146 + 24)], v81, v82);
      v89 = v88;
      sub_24E60169C(v84, &v85[v88[7]], &unk_27F23E1F0, &unk_24F9549C0);
      v161 = &_s14descr2861AC041O5GamesON;
      v90 = sub_24EDA569C();
      v162 = v90;
      LOBYTE(v159) = 0;

      LOBYTE(v86) = sub_24F91FE68();
      __swift_destroy_boxed_opaque_existential_1(&v159);
      v85[v89[8]] = v86 & 1;
      v91 = &v85[v89[9]];
      v92 = v139;
      *v91 = v140;
      *(v91 + 1) = v92;
      *&v85[v89[10]] = v153;
      v85[v89[11]] = v145 & 1;
      v161 = &_s14descr2861AC041O5GamesON;
      v162 = v90;
      LOBYTE(v159) = 4;
      LOBYTE(v90) = sub_24F91FE68();
      sub_24E601704(v84, &unk_27F23E1F0, &unk_24F9549C0);
      v93 = *(v79 + 8);
      v155 = v79 + 8;
      v93(v81, v82);
      __swift_destroy_boxed_opaque_existential_1(&v159);
      v85[v89[12]] = v90 & 1;
      if (qword_27F2113F8 != -1)
      {
        swift_once();
      }

      v94 = sub_24F9220D8();
      __swift_project_value_buffer(v94, qword_27F39E838);
      v95 = v142;
      sub_24F3E55A8(v85, v142, type metadata accessor for OverlayNowPlayingPageIntent);
      v96 = v156;

      v97 = sub_24F9220B8();
      v98 = sub_24F92BDD8();

      if (os_log_type_enabled(v97, v98))
      {
        v149 = v93;
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v159 = v100;
        *v99 = 136315650;
        *(v99 + 4) = sub_24E7620D4(v151, v96, &v159);
        *(v99 + 12) = 2080;
        v101 = v138;
        sub_24E60169C(v95 + v89[7], v138, &unk_27F23E1F0, &unk_24F9549C0);
        if ((v136)(v101, 1, v147) == 1)
        {
          v102 = 7104878;
          sub_24E601704(v101, &unk_27F23E1F0, &unk_24F9549C0);
          v103 = 0xE300000000000000;
        }

        else
        {
          v102 = *v101;
          v103 = v101[1];

          sub_24F3E5658(v101, type metadata accessor for Player);
        }

        sub_24F3E5658(v95, type metadata accessor for OverlayNowPlayingPageIntent);
        v117 = sub_24E7620D4(v102, v103, &v159);

        *(v99 + 14) = v117;
        *(v99 + 22) = 2080;
        v158 = v153;
        v118 = sub_24F92B188();
        v120 = sub_24E7620D4(v118, v119, &v159);

        *(v99 + 24) = v120;
        _os_log_impl(&dword_24E5DD000, v97, v98, "creating the overlay now playing page intent with: bundleID %s for player %s, commonOnboardingStatus: %s", v99, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x2530542D0](v100, -1, -1);
        MEMORY[0x2530542D0](v99, -1, -1);

        v93 = v149;
      }

      else
      {

        sub_24F3E5658(v95, type metadata accessor for OverlayNowPlayingPageIntent);
      }

      v41 = swift_allocObject();
      *(v41 + 40) = v89;
      *(v41 + 48) = sub_24F3E5610(&qword_27F21D390, type metadata accessor for OverlayNowPlayingPageIntent, &protocol conformance descriptor for OverlayNowPlayingPageIntent);
      v121 = __swift_allocate_boxed_opaque_existential_1((v41 + 16));
      sub_24F3E5540(v85, v121, type metadata accessor for OverlayNowPlayingPageIntent);

      result = (v93)(v154, v150);
      goto LABEL_7;
    }

    v50 = v144;
    sub_24F9289D8();
    v51 = v148;
    sub_24E60169C(v149, v148, &unk_27F23E1F0, &unk_24F9549C0);
    v52 = v150;
    v53 = v151;
    *v14 = v151;
    v14[1] = 0;
    v14[2] = 0;
    v14[3] = 0xE000000000000000;
    v54 = v146;
    v55 = v155;
    (*(v155 + 16))(v14 + *(v146 + 24), v50, v52);
    sub_24E60169C(v51, v14 + v54[7], &unk_27F23E1F0, &unk_24F9549C0);
    v161 = &_s14descr2861AC041O5GamesON;
    v56 = sub_24EDA569C();
    v162 = v56;
    LOBYTE(v159) = 0;
    v57 = sub_24F91FE68();
    __swift_destroy_boxed_opaque_existential_1(&v159);
    *(v14 + v54[8]) = v57 & 1;
    v58 = (v14 + v54[9]);
    *v58 = v53;
    v58[1] = 0;
    *(v14 + v54[10]) = v153;
    *(v14 + v54[11]) = v145 & 1;
    v161 = &_s14descr2861AC041O5GamesON;
    v162 = v56;
    LOBYTE(v159) = 4;
    LOBYTE(v56) = sub_24F91FE68();
    sub_24E601704(v51, &unk_27F23E1F0, &unk_24F9549C0);
    (*(v55 + 8))(v50, v52);
    __swift_destroy_boxed_opaque_existential_1(&v159);
    *(v14 + v54[12]) = v56 & 1;
    if (qword_27F2113F8 != -1)
    {
      swift_once();
    }

    v59 = sub_24F9220D8();
    __swift_project_value_buffer(v59, qword_27F39E838);
    v60 = sub_24F9220B8();
    v61 = sub_24F92BDD8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_24E5DD000, v60, v61, "creating the overlay now playing page with a nil bundleID", v62, 2u);
      MEMORY[0x2530542D0](v62, -1, -1);
    }

    v41 = swift_allocObject();
    *(v41 + 40) = v54;
    *(v41 + 48) = sub_24F3E5610(&qword_27F21D390, type metadata accessor for OverlayNowPlayingPageIntent, &protocol conformance descriptor for OverlayNowPlayingPageIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v41 + 16));
    v64 = type metadata accessor for OverlayNowPlayingPageIntent;
    goto LABEL_56;
  }

LABEL_5:
  v41 = swift_allocObject();
  *(v41 + 40) = &type metadata for OverlayActiveCallPageIntent;
  result = sub_24E7C5884();
LABEL_6:
  *(v41 + 48) = result;
LABEL_7:
  v43 = v41 | 4;
LABEL_8:
  *v157 = v43;
  return result;
}