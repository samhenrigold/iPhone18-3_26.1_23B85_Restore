uint64_t sub_22FAF64B0()
{
  v1 = v0[6];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[8] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);

LABEL_6:
        v0[9] = v3;
        v0[10] = 1;
        v4 = swift_task_alloc();
        v0[11] = v4;
        *v4 = v0;
        v4[1] = sub_22FAF6684;

        return sub_22FB5CAB0(v3);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[6];
  if (v2)
  {
    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF6684(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_22FB0FFE0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_22FAF67D0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22FAF67D0()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_22FA68214(v0[13]);
  v3 = v0[6];
  if (v1 == v2)
  {

    v4 = v0[3];
    v5 = v0[1];

    v5(v4);
    return;
  }

  v6 = v0[10];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x231908810](v0[10]);
  }

  else
  {
    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v7 = *(v3 + 8 * v6 + 32);
  }

  v0[9] = v7;
  v0[10] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_22FAF6684;

  sub_22FB5CAB0(v7);
}

uint64_t sub_22FAF6920(uint64_t a1)
{
  v2[28] = v1;
  v4 = sub_22FCC67F4();
  v2[29] = v4;
  v2[30] = *(v4 - 8);
  v2[31] = swift_task_alloc();
  v2[26] = v1;
  v2[27] = MEMORY[0x277D84F90];
  v5 = sub_22FB0FE94(&qword_27DAD8408, type metadata accessor for PhotosSuggestionsFastPassActivityTaskSource, &unk_22FCDCC1C);
  v6 = *(v5 + 40);
  v7 = type metadata accessor for PhotosSuggestionsFastPassActivityTaskSource();
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v2[32] = v8;
  *v8 = v2;
  v8[1] = sub_22FAF6AFC;

  return v10(a1, v7, v5);
}

uint64_t sub_22FAF6AFC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 264) = a1;
  *(v3 + 272) = v1;

  if (v1)
  {
    v4 = sub_22FAF6DBC;
  }

  else
  {
    v4 = sub_22FAF6C10;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF6C10()
{
  v1 = v0[33];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[35] = v2;
      v0[36] = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
      }

      else
      {
      }

      v0[37] = v3;
      v4 = v0[28];

      return MEMORY[0x2822009F8](sub_22FAF6E20, v4, 0);
    }

    goto LABEL_13;
  }

  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  v2 = sub_22FCC92C4();
  if (v2)
  {
    if (v2 >= 1)
    {
      v1 = v0[33];
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = v0[27];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22FAF6DBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAF6E20()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 248);
  v24 = *(v0 + 232);
  v25 = *(v0 + 240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8, &unk_22FCD5EE0);
  inited = swift_initStackObject();
  *(v0 + 304) = inited;
  *(inited + 16) = xmmword_22FCD17F0;
  v18 = [objc_allocWithZone(PHASuggestionGenerationTask) initForFastPass];
  v4 = *(*(v1 + 112) + 112);
  v22 = type metadata accessor for LegacyStorytellingWorker();
  *(v0 + 152) = v22;
  v21 = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker, &unk_22FCDBA0C);
  *(v0 + 160) = v21;
  *(v0 + 128) = v1;
  v23 = type metadata accessor for LegacyTask();
  v5 = swift_allocObject();

  v6 = v4;
  sub_22FCC67E4();
  v7 = sub_22FCC67B4();
  v9 = v8;
  v20 = *(v25 + 8);
  v20(v2, v24);
  *(v5 + 72) = v7;
  *(v5 + 80) = v9;
  *(v5 + 88) = 1;
  *(v5 + 16) = v18;
  sub_22FA2CF78((v0 + 128), v5 + 24);
  *(v5 + 64) = v6;
  *(v5 + 96) = 0u;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0;
  *(inited + 56) = v23;
  v19 = sub_22FB0FE94(&qword_281481AE0, type metadata accessor for LegacyTask, &unk_22FCD5A78);
  *(inited + 64) = v19;
  *(inited + 32) = v5;
  v17 = [objc_allocWithZone(PHAWallpaperSuggestionGenerationWeeklyTask) initWithGenerationOptions_];
  v10 = *(*(v1 + 112) + 112);
  *(v0 + 192) = v22;
  *(v0 + 200) = v21;
  *(v0 + 168) = v1;
  v11 = swift_allocObject();

  v12 = v10;
  sub_22FCC67E4();
  v13 = sub_22FCC67B4();
  v15 = v14;
  v20(v2, v24);
  *(v11 + 72) = v13;
  *(v11 + 80) = v15;
  *(v11 + 88) = 1;
  *(v11 + 16) = v17;
  sub_22FA2CF78((v0 + 168), v11 + 24);
  *(v11 + 64) = v12;
  *(v11 + 96) = 0u;
  *(v11 + 112) = 0u;
  *(v11 + 128) = 0;
  *(inited + 96) = v23;
  *(inited + 104) = v19;
  *(inited + 72) = v11;

  return MEMORY[0x2822009F8](sub_22FAF7100, 0, 0);
}

uint64_t sub_22FAF7100()
{
  v1 = v0[35];
  v2 = v0[36] + 1;
  sub_22FA68214(v0[38]);
  if (v2 == v1)
  {

    v3 = v0[27];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    ++v0[36];
    if ((v0[33] & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x231908810]();
    }

    else
    {
    }

    v0[37] = v6;
    v7 = v0[28];

    return MEMORY[0x2822009F8](sub_22FAF6E20, v7, 0);
  }
}

uint64_t sub_22FAF7208(uint64_t a1)
{
  v2[13] = v1;
  v4 = sub_22FCC67F4();
  v2[14] = v4;
  v2[15] = *(v4 - 8);
  v2[16] = swift_task_alloc();
  v2[11] = v1;
  v2[12] = MEMORY[0x277D84F90];
  v5 = sub_22FB0FE94(qword_28147B830, type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource, &unk_22FCD4D34);
  v6 = *(v5 + 40);
  v7 = type metadata accessor for Spatial3DFeaturedPhotosFastPassActivityTaskSource();
  v10 = (v6 + *v6);
  v8 = swift_task_alloc();
  v2[17] = v8;
  *v8 = v2;
  v8[1] = sub_22FAF73E4;

  return v10(a1, v7, v5);
}

uint64_t sub_22FAF73E4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 144) = a1;
  *(v3 + 152) = v1;

  if (v1)
  {
    v4 = sub_22FAF76A4;
  }

  else
  {
    v4 = sub_22FAF74F8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF74F8()
{
  v1 = v0[18];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[20] = v2;
      v0[21] = 0;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
      }

      else
      {
      }

      v0[22] = v3;
      v4 = v0[13];

      return MEMORY[0x2822009F8](sub_22FAF7708, v4, 0);
    }

    goto LABEL_13;
  }

  if (sub_22FCC92C4() <= 0)
  {
LABEL_13:

    sub_22FA61CB0();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  v2 = sub_22FCC92C4();
  if (v2)
  {
    if (v2 >= 1)
    {
      v1 = v0[18];
      goto LABEL_3;
    }

    __break(1u);
    goto LABEL_13;
  }

  v7 = v0[12];

  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_22FAF76A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAF7708()
{
  v1 = v0[22];
  v3 = v0[15];
  v2 = v0[16];
  v4 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD77C8, &unk_22FCD5EE0);
  inited = swift_initStackObject();
  v0[23] = inited;
  *(inited + 16) = xmmword_22FCD1800;
  v6 = type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask();
  v7 = swift_allocObject();
  *(v7 + 96) = 0x40F5180000000000;
  *(v7 + 104) = 0xD00000000000002BLL;
  *(v7 + 112) = 0x800000022FCE33D0;

  sub_22FCC67E4();
  v8 = sub_22FCC67B4();
  v10 = v9;
  (*(v3 + 8))(v2, v4);
  *(v7 + 120) = v8;
  *(v7 + 128) = v10;
  *(v7 + 136) = xmmword_22FCD1F80;
  *(v7 + 152) = 0;
  *(v7 + 160) = 0;
  *(v7 + 168) = 1;
  *(v7 + 184) = 0;
  *(v7 + 40) = type metadata accessor for MomentGraphWorker();
  *(v7 + 48) = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  *(v7 + 16) = v1;
  *(v7 + 176) = [*(*(v1 + 112) + 112) photoLibrary];
  *(v7 + 56) = 0u;
  *(v7 + 72) = 0u;
  *(v7 + 88) = 0;
  *(v7 + 192) = 1;
  *(inited + 56) = v6;
  *(inited + 64) = sub_22FB0FE94(&unk_27DAD83B0, type metadata accessor for FeaturedPhotosWidgetSpatial3DGenerationTask, &unk_22FCDC318);
  *(inited + 32) = v7;

  return MEMORY[0x2822009F8](sub_22FAF7920, 0, 0);
}

uint64_t sub_22FAF7920()
{
  v1 = v0[20];
  v2 = v0[21] + 1;
  sub_22FA68214(v0[23]);
  if (v2 == v1)
  {

    v3 = v0[12];

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    ++v0[21];
    if ((v0[18] & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x231908810]();
    }

    else
    {
    }

    v0[22] = v6;
    v7 = v0[13];

    return MEMORY[0x2822009F8](sub_22FAF7708, v7, 0);
  }
}

uint64_t sub_22FAF7A28(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = MEMORY[0x277D84F90];
  v2[4] = v1;
  v4 = sub_22FB0FE94(&qword_28147B770, type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource, &unk_22FCD37A0);
  v5 = *(v4 + 40);
  v6 = type metadata accessor for MessagesFallbackBackdropFastPassActivityTaskSource();
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v2[5] = v7;
  *v7 = v2;
  v7[1] = sub_22FAF7BA4;

  return v9(a1, v6, v4);
}

uint64_t sub_22FAF7BA4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 48) = a1;
  *(v3 + 56) = v1;

  if (v1)
  {
    v4 = sub_22FB0FFDC;
  }

  else
  {
    v4 = sub_22FAF7CB8;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22FAF7CB8()
{
  v1 = v0[6];
  if (!(v1 >> 62))
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v0[8] = v2;
      if ((v1 & 0xC000000000000001) != 0)
      {
        v3 = MEMORY[0x231908810](0);
        goto LABEL_6;
      }

      if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v3 = *(v1 + 32);

LABEL_6:
        v0[9] = v3;
        v0[10] = 1;
        v4 = swift_task_alloc();
        v0[11] = v4;
        *v4 = v0;
        v4[1] = sub_22FAF7E8C;

        return sub_22FA8E284(v3);
      }

      __break(1u);
    }

LABEL_16:

    sub_22FA61CB0();
    swift_allocError();
    *v8 = 2;
    swift_willThrow();
    v9 = v0[1];

    return v9();
  }

  if (sub_22FCC92C4() <= 0)
  {
    goto LABEL_16;
  }

  v2 = sub_22FCC92C4();
  v1 = v0[6];
  if (v2)
  {
    goto LABEL_3;
  }

  v6 = v0[3];
  v7 = v0[1];

  return v7(v6);
}

uint64_t sub_22FAF7E8C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 96) = v1;

  if (v1)
  {

    v5 = sub_22FB0FFE0;
  }

  else
  {

    *(v4 + 104) = a1;
    v5 = sub_22FAF7FD8;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_22FAF7FD8()
{
  v1 = v0[10];
  v2 = v0[8];
  sub_22FA68214(v0[13]);
  v3 = v0[6];
  if (v1 == v2)
  {

    v4 = v0[3];
    v5 = v0[1];

    v5(v4);
    return;
  }

  v6 = v0[10];
  if ((v3 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x231908810](v0[10]);
  }

  else
  {
    if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_14:
      __break(1u);
      return;
    }

    v7 = *(v3 + 8 * v6 + 32);
  }

  v0[9] = v7;
  v0[10] = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
    goto LABEL_14;
  }

  v8 = swift_task_alloc();
  v0[11] = v8;
  *v8 = v0;
  v8[1] = sub_22FAF7E8C;

  sub_22FA8E284(v7);
}

uint64_t sub_22FAF8148()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession(0);
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession, &unk_22FCD2408);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF27C8;

  return sub_22FAFA8BC((v0 + 2));
}

uint64_t sub_22FAF8270(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF7A28(a1);
}

uint64_t sub_22FAF8320(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0xD000000000000011;
  v7[1] = 0x800000022FCE1620;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF8460(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0xD000000000000012;
  v7[1] = 0x800000022FCE1640;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF85A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0xD000000000000018;
  v7[1] = 0x800000022FCE1660;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

uint64_t sub_22FAF86E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = a1 + 32;
    do
    {
      sub_22FA2D328(v2, v7);
      v3 = v8;
      v4 = v9;
      __swift_project_boxed_opaque_existential_1(v7, v8);
      v5 = (*(v4 + 16))(v3, v4);
      MEMORY[0x231907FA0](v5);

      MEMORY[0x231907FA0](32, 0xE100000000000000);

      __swift_destroy_boxed_opaque_existential_0(v7);
      v2 += 40;
      --v1;
    }

    while (v1);
  }

  v7[0] = 0x6B726F5774736554;
  v7[1] = 0xEA00000000007265;
  MEMORY[0x231907FA0](0, 0xE000000000000000);

  return v7[0];
}

void sub_22FAF8820()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v19[-v3 - 8];
  v5 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v5, v6);
  v9 = &v19[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v10 = *(v0 + 136);
  v11 = *(v10 + 16);
  if (v11)
  {
    v12 = 0;
    v13 = v10 + 32;
    v14 = (v7 + 56);
    while (v12 < *(v10 + 16))
    {
      sub_22FA2D328(v13, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v15 = swift_dynamicCast();
      v16 = *v14;
      if (v15)
      {
        v16(v4, 0, 1, v5);
        sub_22FB0FD00(v4, v9, type metadata accessor for PhotoLibraryResource);
        v17 = *v9;
        sub_22FA64AB0(v9);
        if (v17)
        {
          return;
        }
      }

      else
      {
        v16(v4, 1, 1, v5);
        sub_22FA2B420(v4, &qword_27DAD8358, &qword_22FCD6168);
      }

      ++v12;
      v13 += 40;
      if (v11 == v12)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22FAF8A34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF1ED0(a1);
}

uint64_t sub_22FAF8AE4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF0F70(a1);
}

uint64_t sub_22FAF8B94(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF7208(a1);
}

uint64_t sub_22FAF8C44(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x277D84F90];
  sub_22FA86EA8(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_22FA2F7D8(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22FA86EA8((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

uint64_t sub_22FAF8D58(uint64_t a1)
{
  v2 = *(a1 + 16);
  v19 = MEMORY[0x277D84F90];
  sub_22FA870FC(0, v2, 0);
  v3 = v19;
  if (v2)
  {
    for (i = a1 + 32; ; i += 40)
    {
      sub_22FA2D328(i, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7450, qword_22FCD61A0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      sub_22FA2CF78(&v14, v18);
      sub_22FA2CF78(v18, v17);
      v19 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_22FA870FC((v5 > 1), v6 + 1, 1);
        v3 = v19;
      }

      v7 = __swift_mutable_project_boxed_opaque_existential_1(v17, v17[3]);
      v8 = MEMORY[0x28223BE20](v7, v7);
      v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v11 + 16))(v10, v8);
      *(&v15 + 1) = type metadata accessor for PhotoLibraryResource(0);
      v16 = sub_22FB0FE94(&qword_281481D58, type metadata accessor for PhotoLibraryResource, &unk_22FCD7C98);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v14);
      sub_22FB0FD00(v10, boxed_opaque_existential_1, type metadata accessor for PhotoLibraryResource);
      *(v3 + 16) = v6 + 1;
      sub_22FA2CF78(&v14, v3 + 40 * v6 + 32);
      __swift_destroy_boxed_opaque_existential_0(v17);
      if (!--v2)
      {
        return v3;
      }
    }

    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    sub_22FA2B420(&v14, &unk_27DAD8390, &qword_22FCDCDB0);
    return 0;
  }

  return v3;
}

uint64_t sub_22FAF8FE8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF29C8(a1);
}

uint64_t sub_22FAF9098(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FA52F04;

  return sub_22FAEFFF8(a1);
}

uint64_t sub_22FAF9168()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession(0);
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession, &unk_22FCD2408);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF9290;

  return sub_22FAF9558((v0 + 2));
}

uint64_t sub_22FAF9290(uint64_t a1)
{
  v4 = *v2;
  *(v4 + 80) = v1;

  sub_22FA3A7C4(v4 + 16);
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_22FAF93E0, 0, 0);
  }

  else
  {
    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t sub_22FAF93F8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF4EF8(a1);
}

uint64_t sub_22FAF94A8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF07C0(a1);
}

uint64_t sub_22FAF9558(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAF9624, v1, 0);
}

uint64_t sub_22FAF9624()
{
  v1 = v0[9];
  v0[7] = MEMORY[0x277D84F90];
  v2 = *(*(v1 + 128) + 128);
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_22FAF96AC, v2, 0);
}

uint64_t sub_22FAF96AC()
{
  v1 = *(v0 + 72);
  sub_22FA62F5C(0);
  *(v0 + 120) = v2;

  return MEMORY[0x2822009F8](sub_22FAF9728, v1, 0);
}

void *sub_22FAF9728()
{
  v1 = sub_22FAF8D58(v0[15]);
  v0[16] = v1;

  if (!v1)
  {
    return sub_22FCC94D4();
  }

  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
    result = objc_opt_self();
    v4 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v4;
    v0[19] = result;
    v5 = v0[16];
    if (*(v5 + 16))
    {
      v6 = result;
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      sub_22FA2D328(v5 + 32, (v0 + 2));
      v12 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      v25 = v8;
      (*(*(v11 + 8) + 32))(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
      v13 = swift_allocObject();
      v0[22] = v13;
      *(v13 + 16) = xmmword_22FCD17F0;
      v14 = *(v10 + 16);
      v14(v7, v8, v9);
      v15 = type metadata accessor for PhotoLibraryResource(0);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      v14(boxed_opaque_existential_1 + *(v15 + 20), v7, v9);
      v17 = sub_22FCC6564();
      LOBYTE(v6) = [v6 isSystemPhotoLibraryURL_];

      v18 = *(v10 + 8);
      v18(v7, v9);
      *boxed_opaque_existential_1 = v6;
      v14(v7, v25, v9);
      v19 = type metadata accessor for MomentGraphResource(0);
      *(v13 + 96) = v19;
      *(v13 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
      v20 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
      *(v20 + *(v19 + 20)) = 1;
      sub_22FA7FB30(v20);
      v18(v7, v9);
      v18(v25, v9);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v21[1] = sub_22FAF9B68;
      v22 = v0[8];

      return sub_22FAFCE24(v13, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FB0F918();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0;
    *(v23 + 56) = 2;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  return result;
}

uint64_t sub_22FAF9B68(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_22FAFA280;
  }

  else
  {

    v6 = sub_22FAF9CA0;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FAF9CA0()
{
  v1 = *(v0 + 72);
  *(v0 + 208) = [*(*(*(*(v0 + 192) + 112) + 120) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FAF9D24, v1, 0);
}

uint64_t sub_22FAF9D24()
{
  v35 = v0;
  if ((*(v0 + 208) & 1) != 0 || *(*(v0 + 72) + 136) == 1)
  {

    MEMORY[0x231908070](v1);
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();

    v2 = (v0 + 56);
  }

  else
  {

    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v31 = 136315138;

      *(v31 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, &v34);
      _os_log_impl(&dword_22FA28000, v29, v30, "Skipping worker %s: Not ready for analysis", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23190A000](v32, -1, -1);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    else
    {
    }

    v2 = (v0 + 168);
  }

  v3 = *v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 160) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v5 == v4)
  {

    sub_22FAFCD8C((v0 + 56), type metadata accessor for MomentGraphWorker, sub_22FB089FC, sub_22FB074E4, v7);
    v8 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    v10 = *(v0 + 160) + 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v3;
    v11 = *(v0 + 128);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      sub_22FA2D328(v11 + 40 * v10 + 32, v0 + 16);
      v18 = *(v0 + 40);
      v17 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
      v33 = v14;
      (*(*(v17 + 8) + 32))(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
      v19 = swift_allocObject();
      *(v0 + 176) = v19;
      *(v19 + 16) = xmmword_22FCD17F0;
      v20 = *(v16 + 16);
      v20(v13, v14, v15);
      v21 = type metadata accessor for PhotoLibraryResource(0);
      *(v19 + 56) = v21;
      *(v19 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
      v20(boxed_opaque_existential_1 + *(v21 + 20), v13, v15);
      v23 = sub_22FCC6564();
      LOBYTE(v12) = [v12 isSystemPhotoLibraryURL_];

      v24 = *(v16 + 8);
      v24(v13, v15);
      *boxed_opaque_existential_1 = v12;
      v20(v13, v33, v15);
      v25 = type metadata accessor for MomentGraphResource(0);
      *(v19 + 96) = v25;
      *(v19 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
      v26 = __swift_allocate_boxed_opaque_existential_1((v19 + 72));
      *(v26 + *(v25 + 20)) = 1;
      sub_22FA7FB30(v26);
      v24(v13, v15);
      v24(v33, v15);
      v27 = swift_task_alloc();
      *(v0 + 184) = v27;
      *v27 = v0;
      v27[1] = sub_22FAF9B68;
      v28 = *(v0 + 64);

      return sub_22FAFCE24(v19, v28);
    }
  }

  return result;
}

uint64_t sub_22FAFA280()
{
  v48 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[25];
  if (*v1)
  {

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v3 = v0[1];

    return v3();
  }

  else
  {

    v5 = v2;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47[0] = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v47);
      *(v11 + 12) = 2082;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v15 = MEMORY[0x2319080B0](v10, v14);
      v17 = v16;

      v18 = sub_22FA2F600(v15, v17, v47);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2114;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v20;
      *v12 = v20;
      _os_log_impl(&dword_22FA28000, v6, v7, "Error instantiating worker of class %{public}s for resources %{public}s: %{public}@", v11, 0x20u);
      sub_22FA2B420(v12, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    else
    {
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[20] + 1;
    result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v23 == v22)
    {

      sub_22FAFCD8C(v0 + 7, type metadata accessor for MomentGraphWorker, sub_22FB089FC, sub_22FB074E4, v24);
      v25 = v0[7];

      v26 = v0[1];

      return v26(v25);
    }

    else
    {
      v27 = v0[20] + 1;
      v0[20] = v27;
      v0[21] = v21;
      v28 = v0[16];
      if (v27 >= *(v28 + 16))
      {
        __break(1u);
      }

      else
      {
        v29 = v0[19];
        v30 = v0[12];
        v31 = v0[13];
        v32 = v0[10];
        v33 = v0[11];
        sub_22FA2D328(v28 + 40 * v27 + 32, (v0 + 2));
        v35 = v0[5];
        v34 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v35);
        v46 = v31;
        (*(*(v34 + 8) + 32))(v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
        v36 = swift_allocObject();
        v0[22] = v36;
        *(v36 + 16) = xmmword_22FCD17F0;
        v37 = *(v33 + 16);
        v37(v30, v31, v32);
        v38 = type metadata accessor for PhotoLibraryResource(0);
        *(v36 + 56) = v38;
        *(v36 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
        v37(boxed_opaque_existential_1 + *(v38 + 20), v30, v32);
        v40 = sub_22FCC6564();
        LOBYTE(v29) = [v29 isSystemPhotoLibraryURL_];

        v41 = *(v33 + 8);
        v41(v30, v32);
        *boxed_opaque_existential_1 = v29;
        v37(v30, v46, v32);
        v42 = type metadata accessor for MomentGraphResource(0);
        *(v36 + 96) = v42;
        *(v36 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
        v43 = __swift_allocate_boxed_opaque_existential_1((v36 + 72));
        *(v43 + *(v42 + 20)) = 1;
        sub_22FA7FB30(v43);
        v41(v30, v32);
        v41(v46, v32);
        v44 = swift_task_alloc();
        v0[23] = v44;
        *v44 = v0;
        v44[1] = sub_22FAF9B68;
        v45 = v0[8];

        return sub_22FAFCE24(v36, v45);
      }
    }
  }

  return result;
}

uint64_t sub_22FAFA8BC(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAFA988, v1, 0);
}

uint64_t sub_22FAFA988()
{
  v1 = v0[9];
  v0[7] = MEMORY[0x277D84F90];
  v2 = *(*(v1 + 128) + 128);
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_22FAFAA10, v2, 0);
}

uint64_t sub_22FAFAA10()
{
  v1 = *(v0 + 72);
  sub_22FA62F5C(0);
  *(v0 + 120) = v2;

  return MEMORY[0x2822009F8](sub_22FAFAA8C, v1, 0);
}

void *sub_22FAFAA8C()
{
  v1 = sub_22FAF8D58(v0[15]);
  v0[16] = v1;

  if (!v1)
  {
    return sub_22FCC94D4();
  }

  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    result = objc_opt_self();
    v4 = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
    v0[18] = result;
    v0[19] = v4;
    v5 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v5;
    v6 = v0[16];
    if (*(v6 + 16))
    {
      v8 = v0[12];
      v7 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      v23 = result;
      sub_22FA2D328(v6 + 32, (v0 + 2));
      v12 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      (*(*(v11 + 8) + 32))(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
      v13 = swift_allocObject();
      v0[22] = v13;
      *(v13 + 16) = xmmword_22FCD1800;
      v14 = *(v10 + 16);
      v14(v8, v7, v9);
      v15 = type metadata accessor for PhotoLibraryResource(0);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      v14(boxed_opaque_existential_1 + *(v15 + 20), v8, v9);
      v17 = sub_22FCC6564();
      LOBYTE(v14) = [v23 isSystemPhotoLibraryURL_];

      v18 = *(v10 + 8);
      v18(v8, v9);
      *boxed_opaque_existential_1 = v14;
      v18(v7, v9);
      v19 = swift_task_alloc();
      v0[23] = v19;
      *v19 = v0;
      v19[1] = sub_22FAFAE20;
      v20 = v0[8];

      return sub_22FAFE728(v13, v20);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FB0F918();
    swift_allocError();
    *v21 = 0u;
    *(v21 + 16) = 0u;
    *(v21 + 32) = 0u;
    *(v21 + 48) = 0;
    *(v21 + 56) = 2;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }

  return result;
}

uint64_t sub_22FAFAE20(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_22FAFB490;
  }

  else
  {

    v6 = sub_22FAFAF58;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FAFAF58()
{
  v1 = *(v0 + 72);
  *(v0 + 208) = [*(*(*(v0 + 192) + 112) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FAFAFD8, v1, 0);
}

uint64_t sub_22FAFAFD8()
{
  v32 = v0;
  if ((*(v0 + 208) & 1) != 0 || *(*(v0 + 72) + 136) == 1)
  {

    MEMORY[0x231908070](v1);
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();

    v2 = (v0 + 56);
  }

  else
  {

    v26 = sub_22FCC8664();
    v27 = sub_22FCC8F34();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v31 = v29;
      *v28 = 136315138;

      *(v28 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, &v31);
      _os_log_impl(&dword_22FA28000, v26, v27, "Skipping worker %s: Not ready for analysis", v28, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v29);
      MEMORY[0x23190A000](v29, -1, -1);
      MEMORY[0x23190A000](v28, -1, -1);
    }

    else
    {
    }

    v2 = (v0 + 168);
  }

  v3 = *v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 160) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v5 == v4)
  {

    sub_22FAFCD8C((v0 + 56), type metadata accessor for PhotoLibraryWorker, sub_22FB09D38, sub_22FB07BEC, v7);
    v8 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    v10 = *(v0 + 160) + 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v3;
    v11 = *(v0 + 128);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v30 = *(v0 + 144);
      v13 = *(v0 + 96);
      v12 = *(v0 + 104);
      v14 = *(v0 + 80);
      v15 = *(v0 + 88);
      sub_22FA2D328(v11 + 40 * v10 + 32, v0 + 16);
      v17 = *(v0 + 40);
      v16 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v17);
      (*(*(v16 + 8) + 32))(v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
      v18 = swift_allocObject();
      *(v0 + 176) = v18;
      *(v18 + 16) = xmmword_22FCD1800;
      v19 = *(v15 + 16);
      v19(v13, v12, v14);
      v20 = type metadata accessor for PhotoLibraryResource(0);
      *(v18 + 56) = v20;
      *(v18 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v18 + 32));
      v19(boxed_opaque_existential_1 + *(v20 + 20), v13, v14);
      v22 = sub_22FCC6564();
      LOBYTE(v19) = [v30 isSystemPhotoLibraryURL_];

      v23 = *(v15 + 8);
      v23(v13, v14);
      *boxed_opaque_existential_1 = v19;
      v23(v12, v14);
      v24 = swift_task_alloc();
      *(v0 + 184) = v24;
      *v24 = v0;
      v24[1] = sub_22FAFAE20;
      v25 = *(v0 + 64);

      return sub_22FAFE728(v18, v25);
    }
  }

  return result;
}

uint64_t sub_22FAFB490()
{
  v45 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[25];
  if (*v1)
  {

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v3 = v0[1];

    return v3();
  }

  else
  {

    v5 = v2;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v44[0] = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v44);
      *(v11 + 12) = 2082;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v15 = MEMORY[0x2319080B0](v10, v14);
      v17 = v16;

      v18 = sub_22FA2F600(v15, v17, v44);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2114;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v20;
      *v12 = v20;
      _os_log_impl(&dword_22FA28000, v6, v7, "Error instantiating worker of class %{public}s for resources %{public}s: %{public}@", v11, 0x20u);
      sub_22FA2B420(v12, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    else
    {
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[20] + 1;
    result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v23 == v22)
    {

      sub_22FAFCD8C(v0 + 7, type metadata accessor for PhotoLibraryWorker, sub_22FB09D38, sub_22FB07BEC, v24);
      v25 = v0[7];

      v26 = v0[1];

      return v26(v25);
    }

    else
    {
      v27 = v0[20] + 1;
      v0[20] = v27;
      v0[21] = v21;
      v28 = v0[16];
      if (v27 >= *(v28 + 16))
      {
        __break(1u);
      }

      else
      {
        v43 = v0[18];
        v30 = v0[12];
        v29 = v0[13];
        v31 = v0[10];
        v32 = v0[11];
        sub_22FA2D328(v28 + 40 * v27 + 32, (v0 + 2));
        v34 = v0[5];
        v33 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v34);
        (*(*(v33 + 8) + 32))(v34);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
        v35 = swift_allocObject();
        v0[22] = v35;
        *(v35 + 16) = xmmword_22FCD1800;
        v36 = *(v32 + 16);
        v36(v30, v29, v31);
        v37 = type metadata accessor for PhotoLibraryResource(0);
        *(v35 + 56) = v37;
        *(v35 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v35 + 32));
        v36(boxed_opaque_existential_1 + *(v37 + 20), v30, v31);
        v39 = sub_22FCC6564();
        LOBYTE(v36) = [v43 isSystemPhotoLibraryURL_];

        v40 = *(v32 + 8);
        v40(v30, v31);
        *boxed_opaque_existential_1 = v36;
        v40(v29, v31);
        v41 = swift_task_alloc();
        v0[23] = v41;
        *v41 = v0;
        v41[1] = sub_22FAFAE20;
        v42 = v0[8];

        return sub_22FAFE728(v35, v42);
      }
    }
  }

  return result;
}

uint64_t sub_22FAFBA28(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_22FCC65F4();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22FAFBAF4, v1, 0);
}

uint64_t sub_22FAFBAF4()
{
  v1 = v0[9];
  v0[7] = MEMORY[0x277D84F90];
  v2 = *(*(v1 + 128) + 128);
  v0[14] = v2;

  return MEMORY[0x2822009F8](sub_22FAFBB7C, v2, 0);
}

uint64_t sub_22FAFBB7C()
{
  v1 = *(v0 + 72);
  sub_22FA62F5C(0);
  *(v0 + 120) = v2;

  return MEMORY[0x2822009F8](sub_22FAFBBF8, v1, 0);
}

void *sub_22FAFBBF8()
{
  v1 = sub_22FAF8D58(v0[15]);
  v0[16] = v1;

  if (!v1)
  {
    return sub_22FCC94D4();
  }

  v2 = *(v1 + 16);
  v0[17] = v2;
  if (v2)
  {
    v0[18] = OBJC_IVAR____TtC13PhotoAnalysis13WorkerFactory_logger;
    result = objc_opt_self();
    v4 = MEMORY[0x277D84F90];
    v0[20] = 0;
    v0[21] = v4;
    v0[19] = result;
    v5 = v0[16];
    if (*(v5 + 16))
    {
      v6 = result;
      v7 = v0[12];
      v8 = v0[13];
      v9 = v0[10];
      v10 = v0[11];
      sub_22FA2D328(v5 + 32, (v0 + 2));
      v12 = v0[5];
      v11 = v0[6];
      __swift_project_boxed_opaque_existential_1(v0 + 2, v12);
      v25 = v8;
      (*(*(v11 + 8) + 32))(v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
      v13 = swift_allocObject();
      v0[22] = v13;
      *(v13 + 16) = xmmword_22FCD17F0;
      v14 = *(v10 + 16);
      v14(v7, v8, v9);
      v15 = type metadata accessor for PhotoLibraryResource(0);
      *(v13 + 56) = v15;
      *(v13 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v13 + 32));
      v14(boxed_opaque_existential_1 + *(v15 + 20), v7, v9);
      v17 = sub_22FCC6564();
      LOBYTE(v6) = [v6 isSystemPhotoLibraryURL_];

      v18 = *(v10 + 8);
      v18(v7, v9);
      *boxed_opaque_existential_1 = v6;
      v14(v7, v25, v9);
      v19 = type metadata accessor for MomentGraphResource(0);
      *(v13 + 96) = v19;
      *(v13 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
      v20 = __swift_allocate_boxed_opaque_existential_1((v13 + 72));
      *(v20 + *(v19 + 20)) = 1;
      sub_22FA7FB30(v20);
      v18(v7, v9);
      v18(v25, v9);
      v21 = swift_task_alloc();
      v0[23] = v21;
      *v21 = v0;
      v21[1] = sub_22FAFC038;
      v22 = v0[8];

      return sub_22FAFFD68(v13, v22);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    sub_22FB0F918();
    swift_allocError();
    *v23 = 0u;
    *(v23 + 16) = 0u;
    *(v23 + 32) = 0u;
    *(v23 + 48) = 0;
    *(v23 + 56) = 2;
    swift_willThrow();

    v24 = v0[1];

    return v24();
  }

  return result;
}

uint64_t sub_22FAFC038(uint64_t a1)
{
  v4 = *v2;
  v4[24] = a1;
  v4[25] = v1;

  if (v1)
  {
    v5 = v4[9];
    v6 = sub_22FAFC750;
  }

  else
  {

    v6 = sub_22FAFC170;
    v5 = a1;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FAFC170()
{
  v1 = *(v0 + 72);
  *(v0 + 208) = [*(*(*(*(v0 + 192) + 112) + 120) + 112) isReadyForAnalysis];

  return MEMORY[0x2822009F8](sub_22FAFC1F4, v1, 0);
}

uint64_t sub_22FAFC1F4()
{
  v35 = v0;
  if ((*(v0 + 208) & 1) != 0 || *(*(v0 + 72) + 136) == 1)
  {

    MEMORY[0x231908070](v1);
    if (*((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 56) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22FCC8C64();
    }

    sub_22FCC8C84();

    v2 = (v0 + 56);
  }

  else
  {

    v29 = sub_22FCC8664();
    v30 = sub_22FCC8F34();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v34 = v32;
      *v31 = 136315138;

      *(v31 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, &v34);
      _os_log_impl(&dword_22FA28000, v29, v30, "Skipping worker %s: Not ready for analysis", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x23190A000](v32, -1, -1);
      MEMORY[0x23190A000](v31, -1, -1);
    }

    else
    {
    }

    v2 = (v0 + 168);
  }

  v3 = *v2;
  v4 = *(v0 + 136);
  v5 = *(v0 + 160) + 1;
  result = __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  if (v5 == v4)
  {

    sub_22FAFCD8C((v0 + 56), type metadata accessor for LegacyStorytellingWorker, sub_22FB0B074, sub_22FB082F4, v7);
    v8 = *(v0 + 56);

    v9 = *(v0 + 8);

    return v9(v8);
  }

  else
  {
    v10 = *(v0 + 160) + 1;
    *(v0 + 160) = v10;
    *(v0 + 168) = v3;
    v11 = *(v0 + 128);
    if (v10 >= *(v11 + 16))
    {
      __break(1u);
    }

    else
    {
      v12 = *(v0 + 152);
      v13 = *(v0 + 96);
      v14 = *(v0 + 104);
      v15 = *(v0 + 80);
      v16 = *(v0 + 88);
      sub_22FA2D328(v11 + 40 * v10 + 32, v0 + 16);
      v18 = *(v0 + 40);
      v17 = *(v0 + 48);
      __swift_project_boxed_opaque_existential_1((v0 + 16), v18);
      v33 = v14;
      (*(*(v17 + 8) + 32))(v18);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
      v19 = swift_allocObject();
      *(v0 + 176) = v19;
      *(v19 + 16) = xmmword_22FCD17F0;
      v20 = *(v16 + 16);
      v20(v13, v14, v15);
      v21 = type metadata accessor for PhotoLibraryResource(0);
      *(v19 + 56) = v21;
      *(v19 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v19 + 32));
      v20(boxed_opaque_existential_1 + *(v21 + 20), v13, v15);
      v23 = sub_22FCC6564();
      LOBYTE(v12) = [v12 isSystemPhotoLibraryURL_];

      v24 = *(v16 + 8);
      v24(v13, v15);
      *boxed_opaque_existential_1 = v12;
      v20(v13, v33, v15);
      v25 = type metadata accessor for MomentGraphResource(0);
      *(v19 + 96) = v25;
      *(v19 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
      v26 = __swift_allocate_boxed_opaque_existential_1((v19 + 72));
      *(v26 + *(v25 + 20)) = 1;
      sub_22FA7FB30(v26);
      v24(v13, v15);
      v24(v33, v15);
      v27 = swift_task_alloc();
      *(v0 + 184) = v27;
      *v27 = v0;
      v27[1] = sub_22FAFC038;
      v28 = *(v0 + 64);

      return sub_22FAFFD68(v19, v28);
    }
  }

  return result;
}

uint64_t sub_22FAFC750()
{
  v48 = v0;
  v1 = __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v2 = v0[25];
  if (*v1)
  {

    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v3 = v0[1];

    return v3();
  }

  else
  {

    v5 = v2;
    v6 = sub_22FCC8664();
    v7 = sub_22FCC8F14();

    v8 = os_log_type_enabled(v6, v7);
    v9 = v0[25];
    v10 = v0[22];
    if (v8)
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v47[0] = v13;
      *v11 = 136446722;
      *(v11 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v47);
      *(v11 + 12) = 2082;
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v15 = MEMORY[0x2319080B0](v10, v14);
      v17 = v16;

      v18 = sub_22FA2F600(v15, v17, v47);

      *(v11 + 14) = v18;
      *(v11 + 22) = 2114;
      v19 = v9;
      v20 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v20;
      *v12 = v20;
      _os_log_impl(&dword_22FA28000, v6, v7, "Error instantiating worker of class %{public}s for resources %{public}s: %{public}@", v11, 0x20u);
      sub_22FA2B420(v12, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v13, -1, -1);
      MEMORY[0x23190A000](v11, -1, -1);
    }

    else
    {
    }

    v21 = v0[21];
    v22 = v0[17];
    v23 = v0[20] + 1;
    result = __swift_destroy_boxed_opaque_existential_0(v0 + 2);
    if (v23 == v22)
    {

      sub_22FAFCD8C(v0 + 7, type metadata accessor for LegacyStorytellingWorker, sub_22FB0B074, sub_22FB082F4, v24);
      v25 = v0[7];

      v26 = v0[1];

      return v26(v25);
    }

    else
    {
      v27 = v0[20] + 1;
      v0[20] = v27;
      v0[21] = v21;
      v28 = v0[16];
      if (v27 >= *(v28 + 16))
      {
        __break(1u);
      }

      else
      {
        v29 = v0[19];
        v30 = v0[12];
        v31 = v0[13];
        v32 = v0[10];
        v33 = v0[11];
        sub_22FA2D328(v28 + 40 * v27 + 32, (v0 + 2));
        v35 = v0[5];
        v34 = v0[6];
        __swift_project_boxed_opaque_existential_1(v0 + 2, v35);
        v46 = v31;
        (*(*(v34 + 8) + 32))(v35);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8350, &unk_22FCD3B00);
        v36 = swift_allocObject();
        v0[22] = v36;
        *(v36 + 16) = xmmword_22FCD17F0;
        v37 = *(v33 + 16);
        v37(v30, v31, v32);
        v38 = type metadata accessor for PhotoLibraryResource(0);
        *(v36 + 56) = v38;
        *(v36 + 64) = sub_22FB0FE94(&qword_281481D60, type metadata accessor for PhotoLibraryResource, &unk_22FCD7CF4);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v36 + 32));
        v37(boxed_opaque_existential_1 + *(v38 + 20), v30, v32);
        v40 = sub_22FCC6564();
        LOBYTE(v29) = [v29 isSystemPhotoLibraryURL_];

        v41 = *(v33 + 8);
        v41(v30, v32);
        *boxed_opaque_existential_1 = v29;
        v37(v30, v46, v32);
        v42 = type metadata accessor for MomentGraphResource(0);
        *(v36 + 96) = v42;
        *(v36 + 104) = sub_22FB0FE94(&qword_28147FCF0, type metadata accessor for MomentGraphResource, &unk_22FCD2FBC);
        v43 = __swift_allocate_boxed_opaque_existential_1((v36 + 72));
        *(v43 + *(v42 + 20)) = 1;
        sub_22FA7FB30(v43);
        v41(v30, v32);
        v41(v46, v32);
        v44 = swift_task_alloc();
        v0[23] = v44;
        *v44 = v0;
        v44[1] = sub_22FAFC038;
        v45 = v0[8];

        return sub_22FAFFD68(v36, v45);
      }
    }
  }

  return result;
}

void sub_22FAFCD8C(unint64_t *a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t), __n128 a5)
{
  v9 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v9 & 0x8000000000000000) != 0 || (v9 & 0x4000000000000000) != 0)
  {
    v9 = sub_22FB0735C(v9);
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v11[0] = (v9 & 0xFFFFFFFFFFFFFF8) + 32;
  v11[1] = v10;
  sub_22FB073C0(v11, a2, a3, a4);
  *a1 = v9;
}

uint64_t sub_22FAFCE24(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for MomentGraphWorker();

  return MEMORY[0x2822009F8](sub_22FAFCEFC, v2, 0);
}

uint64_t sub_22FAFCEFC()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF8320(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    sub_22FA2DB54(v5, v7);
    v11 = *(v9 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(v9 + 24) < v14)
      {
        sub_22FA6BB98(v14, isUniquelyReferenced_nonNull_native);
        sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v15 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    sub_22FA701B4();
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v21 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v22 = *(v21 + 112);
      if (*(v22 + 16))
      {

        v23 = sub_22FA2DB54(v5, v7);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);
          v0[79] = v25;

          v26 = swift_task_alloc();
          v0[80] = v26;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
          v0[81] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
          *v26 = v0;
          v26[1] = sub_22FAFDCB8;
          v29 = MEMORY[0x277D84950];
          v30 = v0 + 38;
          v31 = v25;
          v32 = v27;
LABEL_19:

          return MEMORY[0x282200430](v30, v31, v32, v28, v29);
        }
      }

      v33 = v0[74];
      v34 = v0[73];
      v35 = v0[71];
      v36 = v0[70];
      v37 = v0[69];
      v38 = v0[67];
      v39 = sub_22FCC8D14();
      (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
      v40 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v41 = swift_allocObject();
      v41[2] = v37;
      v41[3] = v40;
      v41[4] = v34;
      v41[5] = v33;
      v41[6] = v38;
      v41[7] = v37;
      v41[8] = v36;
      swift_retain_n();

      v42 = sub_22FB22FC0(0, 0, v35, &unk_22FCD6178, v41);
      v0[75] = v42;
      swift_beginAccess();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v37 + 112);
      *(v37 + 112) = 0x8000000000000000;
      sub_22FB25980(v42, v34, v33, v43);

      *(v37 + 112) = v46;
      swift_endAccess();
      v44 = swift_task_alloc();
      v0[76] = v44;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      v0[77] = v45;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v44 = v0;
      v44[1] = sub_22FAFD478;
      v29 = MEMORY[0x277D84950];
      v30 = v0 + 28;
      v31 = v42;
      v32 = v45;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C();

    goto LABEL_14;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FAFD478()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FAFDA64;
  }

  else
  {
    v4 = sub_22FAFD5A4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FAFD5A4()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 28);

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 28);
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FAFDA64()
{
  v19 = v0;
  v1 = v0[78];
  v2 = v0[74];
  v3 = v0[73];
  swift_beginAccess();
  sub_22FB0410C(v3, v2, sub_22FA701A0);
  swift_endAccess();

  v4 = v1;
  v5 = sub_22FCC8664();
  v6 = sub_22FCC8F14();

  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[74];
  if (v7)
  {
    v9 = v0[73];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v18 = v12;
    *v10 = 136446466;
    v13 = sub_22FA2F600(v9, v8, &v18);

    *(v10 + 4) = v13;
    *(v10 + 12) = 2114;
    v14 = v1;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v15;
    *v11 = v15;
    _os_log_impl(&dword_22FA28000, v5, v6, "Failed to instantiate worker for %{public}s: %{public}@", v10, 0x16u);
    sub_22FA2B420(v11, &unk_27DAD7B10, &unk_22FCD21C0);
    MEMORY[0x23190A000](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x23190A000](v12, -1, -1);
    MEMORY[0x23190A000](v10, -1, -1);
  }

  else
  {
  }

  swift_willThrow();

  v16 = v0[1];

  return v16();
}

uint64_t sub_22FAFDCB8()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FAFE6BC;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FAFDDE0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FAFDDE0()
{
  v54 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = [*(*(*(v1 + 112) + 120) + 112) unavailabilityReason];
    if (v2)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 592);
        v6 = *(v0 + 584);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v53[0] = v8;
        *v7 = 136446466;

        *(v7 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v53);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v5, v53);
        _os_log_impl(&dword_22FA28000, v3, v4, "Unable to reuse worker %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v40 = *(v0 + 560);
      v41 = *(v0 + 552);
      v42 = *(v0 + 536);
      v43 = sub_22FCC8D14();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v44 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v45 = swift_allocObject();
      v45[2] = v41;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v42;
      v45[7] = v41;
      v45[8] = v40;
      swift_retain_n();

      v46 = sub_22FB22FC0(0, 0, v39, &unk_22FCD6178, v45);
      *(v0 + 600) = v46;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v41 + 112);
      *(v41 + 112) = 0x8000000000000000;
      sub_22FB25980(v46, v38, v37, isUniquelyReferenced_nonNull_native);

      *(v41 + 112) = v53[0];
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 608) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      *(v0 + 616) = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v48 = v0;
      v48[1] = sub_22FAFD478;
      v51 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 224, v46, v49, v50, v51);
    }

    else
    {

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 592);
      if (v31)
      {
        v33 = *(v0 + 584);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136446466;

        *(v34 + 4) = sub_22FA2F600(0xD000000000000011, 0x800000022FCE1620, v53);
        *(v34 + 12) = 2082;
        v36 = sub_22FA2F600(v33, v32, v53);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v29, v30, "Successfully reusing worker %{public}s for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v35, -1, -1);
        MEMORY[0x23190A000](v34, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));

      v52 = *(v0 + 8);

      return v52(v1);
    }
  }

  else
  {
    v9 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v10 = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
    *(v0 + 56) = v9;
    *(v0 + 64) = v10;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 592);
    if (v13)
    {
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v16 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
      v22 = sub_22FA2F600(v19, v21, v53);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      v23 = sub_22FA2F600(v15, v14, v53);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v16 + 24) = v25;
      *v17 = v25;
      _os_log_impl(&dword_22FA28000, v11, v12, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v26);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22FAFE6BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FAFE728(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for PhotoLibraryWorker();

  return MEMORY[0x2822009F8](sub_22FAFE800, v2, 0);
}

uint64_t sub_22FAFE800()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF8460(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    sub_22FA2DB54(v5, v7);
    v11 = *(v9 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(v9 + 24) < v14)
      {
        sub_22FA6BB98(v14, isUniquelyReferenced_nonNull_native);
        sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v15 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    sub_22FA701B4();
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v21 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v22 = *(v21 + 112);
      if (*(v22 + 16))
      {

        v23 = sub_22FA2DB54(v5, v7);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);
          v0[79] = v25;

          v26 = swift_task_alloc();
          v0[80] = v26;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
          v0[81] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
          *v26 = v0;
          v26[1] = sub_22FAFF368;
          v29 = MEMORY[0x277D84950];
          v30 = v0 + 38;
          v31 = v25;
          v32 = v27;
LABEL_19:

          return MEMORY[0x282200430](v30, v31, v32, v28, v29);
        }
      }

      v33 = v0[74];
      v34 = v0[73];
      v35 = v0[71];
      v36 = v0[70];
      v37 = v0[69];
      v38 = v0[67];
      v39 = sub_22FCC8D14();
      (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
      v40 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v41 = swift_allocObject();
      v41[2] = v37;
      v41[3] = v40;
      v41[4] = v34;
      v41[5] = v33;
      v41[6] = v38;
      v41[7] = v37;
      v41[8] = v36;
      swift_retain_n();

      v42 = sub_22FB22FC0(0, 0, v35, &unk_22FCD61E8, v41);
      v0[75] = v42;
      swift_beginAccess();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v37 + 112);
      *(v37 + 112) = 0x8000000000000000;
      sub_22FB25980(v42, v34, v33, v43);

      *(v37 + 112) = v46;
      swift_endAccess();
      v44 = swift_task_alloc();
      v0[76] = v44;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      v0[77] = v45;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v44 = v0;
      v44[1] = sub_22FAFED7C;
      v29 = MEMORY[0x277D84950];
      v30 = v0 + 28;
      v31 = v42;
      v32 = v45;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C();

    goto LABEL_14;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FAFED7C()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FB0FFE8;
  }

  else
  {
    v4 = sub_22FAFEEA8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FAFEEA8()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 28);

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker, &unk_22FCDB29C);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 28);
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FAFF368()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FB0FFD8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FAFF490;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FAFF490()
{
  v54 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = [*(*(v1 + 112) + 112) unavailabilityReason];
    if (v2)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 592);
        v6 = *(v0 + 584);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v53[0] = v8;
        *v7 = 136446466;

        *(v7 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v53);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v5, v53);
        _os_log_impl(&dword_22FA28000, v3, v4, "Unable to reuse worker %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v40 = *(v0 + 560);
      v41 = *(v0 + 552);
      v42 = *(v0 + 536);
      v43 = sub_22FCC8D14();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v44 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v45 = swift_allocObject();
      v45[2] = v41;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v42;
      v45[7] = v41;
      v45[8] = v40;
      swift_retain_n();

      v46 = sub_22FB22FC0(0, 0, v39, &unk_22FCD61E8, v45);
      *(v0 + 600) = v46;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v41 + 112);
      *(v41 + 112) = 0x8000000000000000;
      sub_22FB25980(v46, v38, v37, isUniquelyReferenced_nonNull_native);

      *(v41 + 112) = v53[0];
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 608) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      *(v0 + 616) = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v48 = v0;
      v48[1] = sub_22FAFED7C;
      v51 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 224, v46, v49, v50, v51);
    }

    else
    {

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 592);
      if (v31)
      {
        v33 = *(v0 + 584);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136446466;

        *(v34 + 4) = sub_22FA2F600(0xD000000000000012, 0x800000022FCE1640, v53);
        *(v34 + 12) = 2082;
        v36 = sub_22FA2F600(v33, v32, v53);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v29, v30, "Successfully reusing worker %{public}s for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v35, -1, -1);
        MEMORY[0x23190A000](v34, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));

      v52 = *(v0 + 8);

      return v52(v1);
    }
  }

  else
  {
    v9 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v10 = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker, &unk_22FCDB29C);
    *(v0 + 56) = v9;
    *(v0 + 64) = v10;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 592);
    if (v13)
    {
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v16 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
      v22 = sub_22FA2F600(v19, v21, v53);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      v23 = sub_22FA2F600(v15, v14, v53);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v16 + 24) = v25;
      *v17 = v25;
      _os_log_impl(&dword_22FA28000, v11, v12, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v26);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22FAFFD68(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for LegacyStorytellingWorker();

  return MEMORY[0x2822009F8](sub_22FAFFE40, v2, 0);
}

uint64_t sub_22FAFFE40()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF85A0(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    sub_22FA2DB54(v5, v7);
    v11 = *(v9 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(v9 + 24) < v14)
      {
        sub_22FA6BB98(v14, isUniquelyReferenced_nonNull_native);
        sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v15 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    sub_22FA701B4();
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v21 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v22 = *(v21 + 112);
      if (*(v22 + 16))
      {

        v23 = sub_22FA2DB54(v5, v7);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);
          v0[79] = v25;

          v26 = swift_task_alloc();
          v0[80] = v26;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
          v0[81] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
          *v26 = v0;
          v26[1] = sub_22FB009A8;
          v29 = MEMORY[0x277D84950];
          v30 = v0 + 38;
          v31 = v25;
          v32 = v27;
LABEL_19:

          return MEMORY[0x282200430](v30, v31, v32, v28, v29);
        }
      }

      v33 = v0[74];
      v34 = v0[73];
      v35 = v0[71];
      v36 = v0[70];
      v37 = v0[69];
      v38 = v0[67];
      v39 = sub_22FCC8D14();
      (*(*(v39 - 8) + 56))(v35, 1, 1, v39);
      v40 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v41 = swift_allocObject();
      v41[2] = v37;
      v41[3] = v40;
      v41[4] = v34;
      v41[5] = v33;
      v41[6] = v38;
      v41[7] = v37;
      v41[8] = v36;
      swift_retain_n();

      v42 = sub_22FB22FC0(0, 0, v35, &unk_22FCD6378, v41);
      v0[75] = v42;
      swift_beginAccess();

      v43 = swift_isUniquelyReferenced_nonNull_native();
      v46 = *(v37 + 112);
      *(v37 + 112) = 0x8000000000000000;
      sub_22FB25980(v42, v34, v33, v43);

      *(v37 + 112) = v46;
      swift_endAccess();
      v44 = swift_task_alloc();
      v0[76] = v44;
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      v0[77] = v45;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v44 = v0;
      v44[1] = sub_22FB003BC;
      v29 = MEMORY[0x277D84950];
      v30 = v0 + 28;
      v31 = v42;
      v32 = v45;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C();

    goto LABEL_14;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FB003BC()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FB0FFE8;
  }

  else
  {
    v4 = sub_22FB004E8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB004E8()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 28);

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker, &unk_22FCDBA0C);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 28);
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FB009A8()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FB0FFD8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FB00AD0;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FB00AD0()
{
  v54 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);
    v2 = [*(*(*(v1 + 112) + 120) + 112) unavailabilityReason];
    if (v2)
    {

      v3 = sub_22FCC8664();
      v4 = sub_22FCC8F34();

      if (os_log_type_enabled(v3, v4))
      {
        v5 = *(v0 + 592);
        v6 = *(v0 + 584);
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v53[0] = v8;
        *v7 = 136446466;

        *(v7 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v53);
        *(v7 + 12) = 2082;
        *(v7 + 14) = sub_22FA2F600(v6, v5, v53);
        _os_log_impl(&dword_22FA28000, v3, v4, "Unable to reuse worker %{public}s for %{public}s", v7, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v8, -1, -1);
        MEMORY[0x23190A000](v7, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));
      v37 = *(v0 + 592);
      v38 = *(v0 + 584);
      v39 = *(v0 + 568);
      v40 = *(v0 + 560);
      v41 = *(v0 + 552);
      v42 = *(v0 + 536);
      v43 = sub_22FCC8D14();
      (*(*(v43 - 8) + 56))(v39, 1, 1, v43);
      v44 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v45 = swift_allocObject();
      v45[2] = v41;
      v45[3] = v44;
      v45[4] = v38;
      v45[5] = v37;
      v45[6] = v42;
      v45[7] = v41;
      v45[8] = v40;
      swift_retain_n();

      v46 = sub_22FB22FC0(0, 0, v39, &unk_22FCD6378, v45);
      *(v0 + 600) = v46;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53[0] = *(v41 + 112);
      *(v41 + 112) = 0x8000000000000000;
      sub_22FB25980(v46, v38, v37, isUniquelyReferenced_nonNull_native);

      *(v41 + 112) = v53[0];
      swift_endAccess();
      v48 = swift_task_alloc();
      *(v0 + 608) = v48;
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      *(v0 + 616) = v49;
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v48 = v0;
      v48[1] = sub_22FB003BC;
      v51 = MEMORY[0x277D84950];

      return MEMORY[0x282200430](v0 + 224, v46, v49, v50, v51);
    }

    else
    {

      v29 = sub_22FCC8664();
      v30 = sub_22FCC8F34();

      v31 = os_log_type_enabled(v29, v30);
      v32 = *(v0 + 592);
      if (v31)
      {
        v33 = *(v0 + 584);
        v34 = swift_slowAlloc();
        v35 = swift_slowAlloc();
        v53[0] = v35;
        *v34 = 136446466;

        *(v34 + 4) = sub_22FA2F600(0xD000000000000018, 0x800000022FCE1660, v53);
        *(v34 + 12) = 2082;
        v36 = sub_22FA2F600(v33, v32, v53);

        *(v34 + 14) = v36;
        _os_log_impl(&dword_22FA28000, v29, v30, "Successfully reusing worker %{public}s for %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x23190A000](v35, -1, -1);
        MEMORY[0x23190A000](v34, -1, -1);
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_0((v0 + 304));

      v52 = *(v0 + 8);

      return v52(v1);
    }
  }

  else
  {
    v9 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v10 = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker, &unk_22FCDBA0C);
    *(v0 + 56) = v9;
    *(v0 + 64) = v10;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v11 = sub_22FCC8664();
    v12 = sub_22FCC8F14();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 592);
    if (v13)
    {
      v15 = *(v0 + 584);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v53[0] = v18;
      *v16 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v19 = sub_22FCC96C4();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
      v22 = sub_22FA2F600(v19, v21, v53);

      *(v16 + 4) = v22;
      *(v16 + 12) = 2082;
      v23 = sub_22FA2F600(v15, v14, v53);

      *(v16 + 14) = v23;
      *(v16 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v24);
      v25 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v16 + 24) = v25;
      *v17 = v25;
      _os_log_impl(&dword_22FA28000, v11, v12, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v16, 0x20u);
      sub_22FA2B420(v17, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v17, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v18, -1, -1);
      MEMORY[0x23190A000](v16, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v26);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v27 = *(v0 + 8);

    return v27();
  }
}

uint64_t sub_22FB013AC(uint64_t a1, uint64_t a2)
{
  v3[69] = v2;
  v3[68] = a2;
  v3[67] = a1;
  v3[70] = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8710, &unk_22FCD1B40);
  v3[71] = swift_task_alloc();
  v3[72] = type metadata accessor for TestWorker();

  return MEMORY[0x2822009F8](sub_22FB01484, v2, 0);
}

uint64_t sub_22FB01484()
{
  v2 = v0[69];
  v3 = *(v2 + 144);
  if (*(v3 + OBJC_IVAR____TtC13PhotoAnalysis11StateHolder_state) == 2)
  {
    v4 = v0[68];
    v5 = sub_22FAF86E0(v0[67]);
    v7 = v6;
    v0[73] = v5;
    v0[74] = v6;
    sub_22FA728C0(v4, (v0 + 23));
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    sub_22FA2DB54(v5, v7);
    v11 = *(v9 + 16);
    v12 = (v10 & 1) == 0;
    v13 = __OFADD__(v11, v12);
    v14 = v11 + v12;
    if (v13)
    {
      __break(1u);
    }

    else
    {
      v1 = v10;
      if (*(v9 + 24) < v14)
      {
        sub_22FA6BB98(v14, isUniquelyReferenced_nonNull_native);
        sub_22FA2DB54(v5, v7);
        if ((v1 & 1) != (v15 & 1))
        {

          return sub_22FCC9774();
        }

LABEL_12:
        *(v2 + 120) = v9;
        if (v1)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }
    }

    sub_22FA701B4();
    *(v2 + 120) = v9;
    if (v1)
    {
LABEL_14:
      v21 = v0[69];
      sub_22FB04F78((v0 + 18), (v0 + 23));
      sub_22FA3A7C4((v0 + 18));
      swift_endAccess();
      swift_beginAccess();
      v22 = *(v21 + 112);
      if (*(v22 + 16))
      {

        v23 = sub_22FA2DB54(v5, v7);
        if (v24)
        {
          v25 = *(*(v22 + 56) + 8 * v23);
          v0[79] = v25;

          v26 = swift_task_alloc();
          v0[80] = v26;
          v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
          v0[81] = v27;
          v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
          *v26 = v0;
          v26[1] = sub_22FB01FE4;
          v29 = MEMORY[0x277D84950];
          v30 = v0 + 38;
          v31 = v25;
          v32 = v27;
LABEL_19:

          return MEMORY[0x282200430](v30, v31, v32, v28, v29);
        }
      }

      v33 = v0[71];
      v34 = v0[70];
      v35 = v0[69];
      v36 = v0[67];
      v37 = sub_22FCC8D14();
      (*(*(v37 - 8) + 56))(v33, 1, 1, v37);
      v38 = sub_22FB0FE94(&unk_2814810D8, type metadata accessor for WorkerFactory, &unk_22FCD7564);
      v39 = swift_allocObject();
      v39[2] = v35;
      v39[3] = v38;
      v39[4] = v5;
      v39[5] = v7;
      v39[6] = v36;
      v39[7] = v35;
      v39[8] = v34;
      swift_retain_n();

      v40 = sub_22FB22FC0(0, 0, v33, &unk_22FCD63D8, v39);
      v0[75] = v40;
      swift_beginAccess();

      v41 = swift_isUniquelyReferenced_nonNull_native();
      v44 = *(v21 + 112);
      *(v21 + 112) = 0x8000000000000000;
      sub_22FB25980(v40, v5, v7, v41);

      *(v21 + 112) = v44;
      swift_endAccess();
      v42 = swift_task_alloc();
      v0[76] = v42;
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8370, &unk_22FCD6180);
      v0[77] = v43;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8E60, &unk_22FCD2180);
      *v42 = v0;
      v42[1] = sub_22FB019F8;
      v29 = MEMORY[0x277D84950];
      v30 = v0 + 28;
      v31 = v40;
      v32 = v43;
      goto LABEL_19;
    }

LABEL_13:
    sub_22FC4C51C();

    goto LABEL_14;
  }

  v18 = *(v3 + 16);
  v17 = *(v3 + 24);
  sub_22FAA1C84();
  swift_allocError();
  *v19 = v18;
  *(v19 + 8) = v17;
  *(v19 + 16) = 0;
  swift_willThrow();

  v20 = v0[1];

  return v20();
}

uint64_t sub_22FB019F8()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  v3 = *(v2 + 552);
  if (v0)
  {
    v4 = sub_22FB0FFE8;
  }

  else
  {
    v4 = sub_22FB01B24;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22FB01B24()
{
  v33 = v0;
  sub_22FA2D328((v0 + 28), (v0 + 33));
  if (swift_dynamicCast())
  {
    v1 = v0[65];

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = v0[74];
    if (v4)
    {
      v6 = v0[73];
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v32[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, v32);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v32);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully instantiated worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0(v0 + 28);

    v29 = v0[1];

    return v29(v1);
  }

  else
  {
    v10 = v0[72];
    sub_22FB0F918();
    v11 = swift_allocError();
    v13 = v12;
    sub_22FA2D328((v0 + 28), v12);
    v14 = sub_22FB0FE94(&qword_27DAD8250, type metadata accessor for TestWorker, &unk_22FCD5150);
    *(v13 + 40) = v10;
    *(v13 + 48) = v14;
    *(v13 + 56) = 0;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v0 + 28);
    v15 = v0[74];
    v16 = v0[73];
    swift_beginAccess();
    sub_22FB0410C(v16, v15, sub_22FA701A0);
    swift_endAccess();

    v17 = v11;
    v18 = sub_22FCC8664();
    v19 = sub_22FCC8F14();

    v20 = os_log_type_enabled(v18, v19);
    v21 = v0[74];
    if (v20)
    {
      v22 = v0[73];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v32[0] = v25;
      *v23 = 136446466;
      v26 = sub_22FA2F600(v22, v21, v32);

      *(v23 + 4) = v26;
      *(v23 + 12) = 2114;
      v27 = v11;
      v28 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 14) = v28;
      *v24 = v28;
      _os_log_impl(&dword_22FA28000, v18, v19, "Failed to instantiate worker for %{public}s: %{public}@", v23, 0x16u);
      sub_22FA2B420(v24, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v24, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v25);
      MEMORY[0x23190A000](v25, -1, -1);
      MEMORY[0x23190A000](v23, -1, -1);
    }

    else
    {
    }

    swift_willThrow();

    v31 = v0[1];

    return v31();
  }
}

uint64_t sub_22FB01FE4()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {
    v3 = *(v2 + 552);

    v4 = sub_22FB0FFD8;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 552);
    v4 = sub_22FB0210C;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_22FB0210C()
{
  v32 = v0;
  sub_22FA2D328(v0 + 304, v0 + 344);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 528);

    v2 = sub_22FCC8664();
    v3 = sub_22FCC8F34();

    v4 = os_log_type_enabled(v2, v3);
    v5 = *(v0 + 592);
    if (v4)
    {
      v6 = *(v0 + 584);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v31[0] = v8;
      *v7 = 136446466;

      *(v7 + 4) = sub_22FA2F600(0x6B726F5774736554, 0xEA00000000007265, v31);
      *(v7 + 12) = 2082;
      v9 = sub_22FA2F600(v6, v5, v31);

      *(v7 + 14) = v9;
      _os_log_impl(&dword_22FA28000, v2, v3, "Successfully reusing worker %{public}s for %{public}s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v8, -1, -1);
      MEMORY[0x23190A000](v7, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v27 = *(v0 + 8);

    return v27(v1);
  }

  else
  {
    v10 = *(v0 + 576);
    sub_22FA2D328(v0 + 304, v0 + 16);
    v11 = sub_22FB0FE94(&qword_27DAD8250, type metadata accessor for TestWorker, &unk_22FCD5150);
    *(v0 + 56) = v10;
    *(v0 + 64) = v11;
    *(v0 + 72) = 0;
    sub_22FA2D328(v0 + 304, v0 + 384);
    sub_22FB0FA48(v0 + 16, v0 + 80);

    v12 = sub_22FCC8664();
    v13 = sub_22FCC8F14();

    v14 = os_log_type_enabled(v12, v13);
    v15 = *(v0 + 592);
    if (v14)
    {
      v16 = *(v0 + 584);
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v31[0] = v19;
      *v17 = 136446722;
      __swift_project_boxed_opaque_existential_1((v0 + 384), *(v0 + 408));
      v20 = sub_22FCC96C4();
      v22 = v21;
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
      v23 = sub_22FA2F600(v20, v22, v31);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2082;
      v24 = sub_22FA2F600(v16, v15, v31);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2114;
      sub_22FB0F918();
      swift_allocError();
      sub_22FB0FA48(v0 + 80, v25);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      sub_22FB0FAA4(v0 + 80);
      *(v17 + 24) = v26;
      *v18 = v26;
      _os_log_impl(&dword_22FA28000, v12, v13, "Failed to reuse worker %{public}s for %{public}s: %{public}@", v17, 0x20u);
      sub_22FA2B420(v18, &unk_27DAD7B10, &unk_22FCD21C0);
      MEMORY[0x23190A000](v18, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x23190A000](v19, -1, -1);
      MEMORY[0x23190A000](v17, -1, -1);
    }

    else
    {

      sub_22FB0FAA4(v0 + 80);
      __swift_destroy_boxed_opaque_existential_0((v0 + 384));
    }

    sub_22FB0F918();
    swift_allocError();
    sub_22FB0FA48(v0 + 16, v29);
    swift_willThrow();

    sub_22FB0FAA4(v0 + 16);
    __swift_destroy_boxed_opaque_existential_0((v0 + 304));

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_22FB02628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02650, a7, 0);
}

uint64_t sub_22FB02650()
{
  v1 = v0[2];
  v2 = type metadata accessor for MomentGraphWorker();
  v0[7] = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = sub_22FB0FE94(&qword_281480230, type metadata accessor for MomentGraphWorker, &unk_22FCD3AB8);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22FB0273C;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FC15630(v5, v6, v4);
}

uint64_t sub_22FB0273C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_22FB02908;
  }

  else
  {
    *(v4 + 80) = a1;
    v6 = sub_22FB02870;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB02870()
{
  v1 = v0[10];
  v2 = v0[2];
  swift_allocObject();
  v3 = sub_22FA903F0(v1);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB02908()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB0296C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02994, a7, 0);
}

uint64_t sub_22FB02994()
{
  v1 = v0[2];
  v2 = *(v0[6] + 128);
  *(v1 + 24) = type metadata accessor for PhotoLibraryWorker();
  *(v1 + 32) = sub_22FB0FE94(&qword_281482350, type metadata accessor for PhotoLibraryWorker, &unk_22FCDB29C);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22FB02A80;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FB03180(v6, v4, v5, v2);
}

uint64_t sub_22FB02A80(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_22FB0FFF0, v6, 0);
  }

  else
  {
    **(v4 + 16) = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22FB02BD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02BFC, a7, 0);
}

uint64_t sub_22FB02BFC()
{
  v1 = v0[2];
  v2 = type metadata accessor for LegacyStorytellingWorker();
  v0[7] = v2;
  *(v1 + 24) = v2;
  *(v1 + 32) = sub_22FB0FE94(&qword_28147EB60, type metadata accessor for LegacyStorytellingWorker, &unk_22FCDBA0C);
  v3 = swift_task_alloc();
  v0[8] = v3;
  *v3 = v0;
  v3[1] = sub_22FB02CE8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FC15630(v5, v6, v4);
}

uint64_t sub_22FB02CE8(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = *(v4 + 48);
    v6 = sub_22FB0FFEC;
  }

  else
  {
    *(v4 + 80) = a1;
    v6 = sub_22FB02E1C;
    v5 = 0;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB02E1C()
{
  v1 = v0[10];
  v2 = v0[2];
  swift_allocObject();
  v3 = sub_22FBBEEEC(v1);

  *v2 = v3;
  v4 = v0[1];

  return v4();
}

uint64_t sub_22FB02EB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_22FB02EDC, a7, 0);
}

uint64_t sub_22FB02EDC()
{
  v1 = v0[2];
  v2 = *(v0[6] + 128);
  *(v1 + 24) = type metadata accessor for TestWorker();
  *(v1 + 32) = sub_22FB0FE94(&qword_27DAD8250, type metadata accessor for TestWorker, &unk_22FCD5150);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_22FB02FC8;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[3];

  return sub_22FB035E8(v6, v4, v5, v2);
}

uint64_t sub_22FB02FC8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;
  *(*v2 + 64) = v1;

  if (v1)
  {
    v6 = *(v4 + 48);

    return MEMORY[0x2822009F8](sub_22FB0311C, v6, 0);
  }

  else
  {
    **(v4 + 16) = a1;
    v7 = *(v5 + 8);

    return v7();
  }
}

uint64_t sub_22FB0311C()
{
  __swift_deallocate_boxed_opaque_existential_1(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB03180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22FB031F8, a4, 0);
}

uint64_t sub_22FB031F8()
{
  sub_22FC1C560(*(v0 + 112), v0 + 16);
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(*(v3 + 8) + 16))(v2);
  v6 = v5;
  *(v0 + 136) = v5;
  sub_22FA2D328(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 144) = v7;
  *(v7 + 16) = v1;
  sub_22FA2CF78((v0 + 56), v7 + 24);

  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_22FB033A0;
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  return sub_22FC16B78(v4, v6, v9, v10, &unk_22FCDCD80, v7);
}

uint64_t sub_22FB033A0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = sub_22FB0FFC8;
  }

  else
  {
    v7 = *(v4 + 120);

    *(v4 + 168) = a1;
    v6 = sub_22FB034F0;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB034F0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_22FB03558, 0, 0);
}

uint64_t sub_22FB03558()
{
  v1 = *(v0 + 168);
  type metadata accessor for PhotoLibraryWorker();
  swift_allocObject();
  v2 = sub_22FBB5304(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FB035E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a3;
  v4[15] = a4;
  v4[12] = a1;
  v4[13] = a2;
  v4[16] = swift_getObjectType();

  return MEMORY[0x2822009F8](sub_22FB03660, a4, 0);
}

uint64_t sub_22FB03660()
{
  sub_22FC1C560(*(v0 + 112), v0 + 16);
  v1 = *(v0 + 120);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  v4 = (*(*(v3 + 8) + 16))(v2);
  v6 = v5;
  *(v0 + 136) = v5;
  sub_22FA2D328(v0 + 16, v0 + 56);
  v7 = swift_allocObject();
  *(v0 + 144) = v7;
  *(v7 + 16) = v1;
  sub_22FA2CF78((v0 + 56), v7 + 24);

  v8 = swift_task_alloc();
  *(v0 + 152) = v8;
  *v8 = v0;
  v8[1] = sub_22FB03808;
  v9 = *(v0 + 96);
  v10 = *(v0 + 104);

  return sub_22FC16B78(v4, v6, v9, v10, &unk_22FCD63E8, v7);
}

uint64_t sub_22FB03808(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 160) = v1;

  if (v1)
  {
    v5 = *(v4 + 120);
    v6 = sub_22FB03A50;
  }

  else
  {
    v7 = *(v4 + 120);

    *(v4 + 168) = a1;
    v6 = sub_22FB03958;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_22FB03958()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2822009F8](sub_22FB039C0, 0, 0);
}

uint64_t sub_22FB039C0()
{
  v1 = *(v0 + 168);
  type metadata accessor for TestWorker();
  swift_allocObject();
  v2 = sub_22FACB5D8(v1);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_22FB03A50()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22FB03AC4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF1720(a1);
}

uint64_t sub_22FB03B74(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF6220(a1);
}

uint64_t sub_22FB03C24(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF30C8(a1);
}

uint64_t sub_22FB03CD4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF3FD8(a1);
}

uint64_t sub_22FB03D84(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF387C(a1);
}

uint64_t sub_22FB03E34(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF6920(a1);
}

uint64_t sub_22FB03F04()
{
  v0[7] = v0[8];
  type metadata accessor for ActivitySession(0);
  sub_22FB0FE94(&qword_281480D10, type metadata accessor for ActivitySession, &unk_22FCD2408);

  sub_22FCC9324();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_22FAF27C8;

  return sub_22FAFBA28((v0 + 2));
}

uint64_t sub_22FB0402C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_22FAA31A4;

  return sub_22FAF47E0(a1);
}

uint64_t sub_22FB0410C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  v5 = v3;
  v6 = sub_22FA2DB54(a1, a2);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  v8 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v13 = *v5;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v10 = v13;
  }

  v11 = *(*(v10 + 56) + 8 * v8);
  sub_22FB04A60(v8, v10);
  *v5 = v10;
  return v11;
}

double sub_22FB04248@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(int64_t, uint64_t)@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  v8 = v5;
  v10 = sub_22FA2DB54(a1, a2);
  if (v11)
  {
    v12 = v10;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v5;
    v16 = *v8;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v14 = v16;
    }

    a3(*(v14 + 56) + 40 * v12, a5);
    sub_22FB04734(v12, v14);
    *v8 = v14;
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

uint64_t sub_22FB04324(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_22FA2DB54(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v11 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_22FA720E8();
    v8 = v11;
  }

  v9 = *(*(v8 + 56) + 8 * v6);
  sub_22FB04A60(v6, v8);
  *v3 = v8;
  return v9;
}

uint64_t sub_22FB04400@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t (*a5)(void)@<X4>, void (*a6)(void)@<X5>, uint64_t a7@<X8>)
{
  v12 = v7;
  v14 = sub_22FA2DB54(a1, a2);
  if (v15)
  {
    v16 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v7;
    v28 = *v12;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a6();
      v18 = v28;
    }

    v19 = *(v18 + 56);
    v20 = (a3)(0);
    v27 = *(v20 - 8);
    sub_22FB0FD00(v19 + *(v27 + 72) * v16, a7, a4);
    sub_22FB04C10(v16, v18, a5);
    *v12 = v18;
    v21 = *(v27 + 56);
    v22 = a7;
    v23 = 0;
    v24 = v20;
  }

  else
  {
    v25 = (a3)(0);
    v21 = *(*(v25 - 8) + 56);
    v24 = v25;
    v22 = a7;
    v23 = 1;
  }

  return v21(v22, v23, 1, v24);
}

unint64_t sub_22FB04584(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = sub_22FCC9834();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = (v9 + 8 * v3);
      if (v3 != v6 || v14 >= v10 + 1)
      {
        *v14 = *v10;
      }

      v15 = *(a2 + 56);
      v16 = *(*(sub_22FCC7FF4() - 8) + 72);
      v17 = v16 * v3;
      result = v15 + v16 * v3;
      v18 = v16 * v6;
      v19 = v15 + v16 * v6 + v16;
      if (v17 < v18 || result >= v19)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v17 == v18)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22FB04734(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      sub_22FCC9844();

      sub_22FCC8B14();
      v11 = sub_22FCC9894();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_22FB048F0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      result = sub_22FCC9834();
      v12 = result & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = (v10 + 8 * v3);
          if (v3 != v6 || v15 >= v11 + 1)
          {
            *v15 = *v11;
          }

          v16 = *(a2 + 56);
          v17 = (v16 + 32 * v3);
          v18 = (v16 + 32 * v6);
          if (v3 != v6 || v17 >= v18 + 2)
          {
            v9 = v18[1];
            *v17 = *v18;
            v17[1] = v9;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

void sub_22FB04A60(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_22FCC9284() + 1) & ~v5;
    do
    {
      sub_22FCC9844();

      sub_22FCC8B14();
      v9 = sub_22FCC9894();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }
}

void sub_22FB04C10(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_22FCC9284() + 1) & ~v6;
    while (1)
    {
      sub_22FCC9844();

      sub_22FCC8B14();
      v11 = sub_22FCC9894();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      v19 = v16 + v17 * v4;
      v20 = v17 * v7;
      v21 = v16 + v17 * v7 + v17;
      if (v18 < v20 || v19 >= v21)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v20)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_22FB04E04(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_22FCC9844();
  sub_22FCC8B14();
  v8 = sub_22FCC9894();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_22FCC9704() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_22FB05FC4(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_22FB04F78(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_22FCC9304();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_22FA728C0(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x231908770](v16, a2);
      sub_22FA3A7C4(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_22FA3A7C4(a2);
    sub_22FA728C0(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22FA728C0(a2, v16);
    v15 = *v3;
    sub_22FB06144(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_22FB050C4(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_22FCC9834();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_22FB062BC(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_22FB051C8(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_22FCC92D4();

    if (v17)
    {

      sub_22FA3A77C(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_22FCC92C4();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_22FB0543C(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_22FB05D20(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_22FB05F40(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_22FA3A77C(0, a3, a4);
    v19 = sub_22FCC9174();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_22FCC9184();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_22FB063DC(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_22FB0543C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_22FCC9354();
    v23 = v10;
    sub_22FCC92B4();
    if (sub_22FCC92E4())
    {
      sub_22FA3A77C(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_22FB05D20(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_22FCC9174();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_22FCC92E4());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v10;
}

uint64_t sub_22FB0563C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98, &qword_22FCD6190);
  result = sub_22FCC9344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_22FCC9844();
      sub_22FCC8B14();
      result = sub_22FCC9894();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FB0589C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8380, &qword_22FCD6198);
  result = sub_22FCC9344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_22FCC9304();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FB05AFC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD84A0, &unk_22FCD63F0);
  result = sub_22FCC9344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_22FCC9834();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_22FB05D20(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22FCC9344();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_22FCC9174();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_22FB05F40(uint64_t a1, uint64_t a2)
{
  sub_22FCC9174();
  result = sub_22FCC92A4();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_22FB05FC4(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_22FB0563C(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_22FB0656C();
      goto LABEL_16;
    }

    sub_22FB06AC0(v8 + 1);
  }

  v10 = *v4;
  sub_22FCC9844();
  sub_22FCC8B14();
  v11 = sub_22FCC9894();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_22FCC9704() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_22FCC9764();
  __break(1u);
}

uint64_t sub_22FB06144(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FB0589C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_22FB066C8();
      goto LABEL_12;
    }

    sub_22FB06CF8(v7 + 1);
  }

  v9 = *v3;
  result = sub_22FCC9304();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_22FA728C0(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x231908770](v19, v6);
      result = sub_22FA3A7C4(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FCC9764();
  __break(1u);
  return result;
}

uint64_t sub_22FB062BC(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_22FB05AFC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_22FB06840();
      a2 = v7;
      goto LABEL_12;
    }

    sub_22FB06F24(v5 + 1);
  }

  v8 = *v3;
  result = sub_22FCC9834();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_22FCC9764();
  __break(1u);
  return result;
}

void sub_22FB063DC(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_22FB05D20(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_22FB06980(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_22FB07114(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_22FCC9174();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_22FA3A77C(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_22FCC9184();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_22FCC9764();
  __break(1u);
}

void sub_22FB0656C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98, &qword_22FCD6190);
  v2 = *v0;
  v3 = sub_22FCC9334();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

void *sub_22FB066C8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8380, &qword_22FCD6198);
  v2 = *v0;
  v3 = sub_22FCC9334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        result = sub_22FA728C0(*(v2 + 48) + v17, v21);
        v18 = *(v4 + 48) + v17;
        v19 = v21[0];
        v20 = v21[1];
        *(v18 + 32) = v22;
        *v18 = v19;
        *(v18 + 16) = v20;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_22FB06840()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD84A0, &unk_22FCD63F0);
  v2 = *v0;
  v3 = sub_22FCC9334();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

id sub_22FB06980(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_22FCC9334();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_22FB06AC0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD7F98, &qword_22FCD6190);
  result = sub_22FCC9344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_22FCC9844();

      sub_22FCC8B14();
      result = sub_22FCC9894();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FB06CF8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD8380, &qword_22FCD6198);
  result = sub_22FCC9344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      sub_22FA728C0(*(v3 + 48) + 40 * (v16 | (v6 << 6)), v26);
      result = sub_22FCC9304();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v11 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v11 + 8 * v21);
          if (v25 != -1)
          {
            v12 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v20) & ~*(v11 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v5 + 48) + 40 * v12;
      v14 = v26[0];
      v15 = v26[1];
      *(v13 + 32) = v27;
      *v13 = v14;
      *(v13 + 16) = v15;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FB06F24(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD84A0, &unk_22FCD63F0);
  result = sub_22FCC9344();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_22FCC9834();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_26;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {
        goto LABEL_24;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
  }

  else
  {
LABEL_24:

    *v2 = v5;
  }

  return result;
}

uint64_t sub_22FB07114(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_22FCC9344();
  v7 = result;
  if (*(v5 + 16))
  {
    v26 = v3;
    v8 = 0;
    v9 = 1 << *(v5 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v5 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_15:
      v18 = *(*(v5 + 48) + 8 * (v15 | (v8 << 6)));
      result = sub_22FCC9174();
      v19 = -1 << *(v7 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v13 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v13 + 8 * v21);
          if (v25 != -1)
          {
            v14 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v14 = __clz(__rbit64((-1 << v20) & ~*(v13 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v7 + 48) + 8 * v14) = v18;
      ++*(v7 + 16);
    }

    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v8 >= v12)
      {

        v4 = v26;
        goto LABEL_26;
      }

      v17 = *(v5 + 56 + 8 * v8);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v4 = v7;
  }

  return result;
}

uint64_t sub_22FB0735C(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_22FCC92C4();
  }

  return sub_22FCC93C4();
}

void sub_22FB073C0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void *, _BYTE *, uint64_t, uint64_t), void (*a4)(void, uint64_t, uint64_t, uint64_t))
{
  v8 = *(a1 + 8);
  v9 = sub_22FCC96B4();
  if (v9 < v8)
  {
    if (v8 >= -1)
    {
      v10 = v9;
      v11 = v8 / 2;
      if (v8 <= 1)
      {
        v12 = MEMORY[0x277D84F90];
      }

      else
      {
        a2(0);
        v12 = sub_22FCC8C74();
        *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10) = v11;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFF8;
      v14[0] = (v12 & 0xFFFFFFFFFFFFFF8) + 32;
      v14[1] = v11;
      a3(v14, v15, a1, v10);
      *(v13 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    a4(0, v8, 1, a1);
  }
}

void sub_22FB074E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v91 = &v69 - v13;
  v14 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v14, v15);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v83 = &v69 - v20;
  v70 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = (v19 + 56);
    v77 = 0x800000022FCE1620;
    v84 = (v19 + 56);
    v72 = v10;
    v74 = v21;
LABEL_7:
    v23 = *(v21 + 8 * a3);
    v71 = a3;
    while (1)
    {
      v78 = a3 - 1;
      v79 = a3;
      v24 = *(v21 + 8 * (a3 - 1));
      v25 = *(v23 + 136);
      v26 = *(v25 + 16);
      v80 = v23;
      v81 = v24;
      if (v26)
      {
        break;
      }

      v32 = 0;
LABEL_18:
      v36 = *(v24 + 136);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = 0;
        v39 = v36 + 32;
        while (v38 < *(v36 + 16))
        {
          sub_22FA2D328(v39, &v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
          v40 = swift_dynamicCast();
          v41 = *v22;
          if (v40)
          {
            v41(v10, 0, 1, v14);
            v42 = v14;
            v43 = v82;
            sub_22FB0FD00(v10, v82, type metadata accessor for PhotoLibraryResource);
            v44 = *v43;
            v45 = v43;
            v14 = v42;
            v22 = v84;
            sub_22FA64AB0(v45);
            if (v44)
            {
              if (v32)
              {
                goto LABEL_29;
              }

              goto LABEL_5;
            }
          }

          else
          {
            v41(v10, 1, 1, v14);
            sub_22FA2B420(v10, &qword_27DAD8358, &qword_22FCD6168);
          }

          ++v38;
          v39 += 40;
          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_46;
      }

LABEL_27:
      if (v32)
      {

        v21 = v74;
        v46 = v79;
      }

      else
      {
LABEL_29:
        v47 = *(v80 + 136);
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = 0;
          v50 = v47 + 32;
          v51 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v50, &v87);
            v85 = 32;
            v86 = 0xE100000000000000;
            v53 = v89;
            v52 = v90;
            __swift_project_boxed_opaque_existential_1(&v87, v89);
            v54 = (*(v52 + 16))(v53, v52);
            MEMORY[0x231907FA0](v54);

            v56 = v85;
            v55 = v86;
            v85 = v49;
            v86 = v51;

            MEMORY[0x231907FA0](v56, v55);

            v49 = v85;
            v51 = v86;
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v50 += 40;
            --v48;
          }

          while (v48);
        }

        else
        {
          v49 = 0;
          v51 = 0xE000000000000000;
        }

        v87 = 0xD000000000000011;
        v88 = v77;
        MEMORY[0x231907FA0](v49, v51);

        v75 = v87;
        v76 = v88;
        v57 = *(v81 + 136);
        v58 = *(v57 + 16);
        v59 = 0;
        if (v58)
        {
          v60 = v57 + 32;
          v61 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v60, &v87);
            v85 = 32;
            v86 = 0xE100000000000000;
            v62 = v89;
            v63 = v90;
            __swift_project_boxed_opaque_existential_1(&v87, v89);
            v64 = (*(v63 + 16))(v62, v63);
            MEMORY[0x231907FA0](v64);

            v66 = v85;
            v65 = v86;
            v85 = v59;
            v86 = v61;

            MEMORY[0x231907FA0](v66, v65);

            v59 = v85;
            v61 = v86;
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v60 += 40;
            --v58;
          }

          while (v58);
        }

        else
        {
          v61 = 0xE000000000000000;
        }

        v87 = 0xD000000000000011;
        v88 = v77;
        MEMORY[0x231907FA0](v59, v61);

        if (v75 == v87 && v76 == v88)
        {

          v10 = v72;
LABEL_5:
          v21 = v74;
LABEL_6:
          a3 = v71 + 1;
          if (v71 + 1 == v70)
          {
            return;
          }

          goto LABEL_7;
        }

        v67 = sub_22FCC9704();

        v10 = v72;
        v21 = v74;
        v46 = v79;
        if ((v67 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v21)
      {
        goto LABEL_47;
      }

      v23 = *(v21 + 8 * v46);
      v68 = v78;
      *(v21 + 8 * v46) = *(v21 + 8 * v78);
      *(v21 + 8 * v68) = v23;
      a3 = v68;
      if (v68 == v73)
      {
        goto LABEL_6;
      }
    }

    v27 = v25 + 32;

    v28 = 0;
    while (v28 < *(v25 + 16))
    {
      sub_22FA2D328(v27, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v29 = v91;
      v30 = swift_dynamicCast();
      v31 = *v22;
      if (v30)
      {
        v32 = 1;
        v31(v29, 0, 1, v14);
        v33 = v83;
        sub_22FB0FD00(v29, v83, type metadata accessor for PhotoLibraryResource);
        v34 = *v33;
        v35 = v33;
        v22 = v84;
        sub_22FA64AB0(v35);
        if (v34)
        {
          v24 = v81;
          goto LABEL_18;
        }
      }

      else
      {
        v31(v29, 1, 1, v14);
        sub_22FA2B420(v29, &qword_27DAD8358, &qword_22FCD6168);
      }

      ++v28;
      v27 += 40;
      if (v26 == v28)
      {
        v32 = 0;
        v24 = v81;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

void sub_22FB07BEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v91 = &v69 - v13;
  v14 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v14, v15);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v83 = &v69 - v20;
  v70 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = (v19 + 56);
    v77 = 0x800000022FCE1640;
    v84 = (v19 + 56);
    v72 = v10;
    v74 = v21;
LABEL_7:
    v23 = *(v21 + 8 * a3);
    v71 = a3;
    while (1)
    {
      v78 = a3 - 1;
      v79 = a3;
      v24 = *(v21 + 8 * (a3 - 1));
      v25 = *(v23 + 136);
      v26 = *(v25 + 16);
      v80 = v23;
      v81 = v24;
      if (v26)
      {
        break;
      }

      v32 = 0;
LABEL_18:
      v36 = *(v24 + 136);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = 0;
        v39 = v36 + 32;
        while (v38 < *(v36 + 16))
        {
          sub_22FA2D328(v39, &v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
          v40 = swift_dynamicCast();
          v41 = *v22;
          if (v40)
          {
            v41(v10, 0, 1, v14);
            v42 = v14;
            v43 = v82;
            sub_22FB0FD00(v10, v82, type metadata accessor for PhotoLibraryResource);
            v44 = *v43;
            v45 = v43;
            v14 = v42;
            v22 = v84;
            sub_22FA64AB0(v45);
            if (v44)
            {
              if (v32)
              {
                goto LABEL_29;
              }

              goto LABEL_5;
            }
          }

          else
          {
            v41(v10, 1, 1, v14);
            sub_22FA2B420(v10, &qword_27DAD8358, &qword_22FCD6168);
          }

          ++v38;
          v39 += 40;
          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_46;
      }

LABEL_27:
      if (v32)
      {

        v21 = v74;
        v46 = v79;
      }

      else
      {
LABEL_29:
        v47 = *(v80 + 136);
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = 0;
          v50 = v47 + 32;
          v51 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v50, &v87);
            v85 = 32;
            v86 = 0xE100000000000000;
            v53 = v89;
            v52 = v90;
            __swift_project_boxed_opaque_existential_1(&v87, v89);
            v54 = (*(v52 + 16))(v53, v52);
            MEMORY[0x231907FA0](v54);

            v56 = v85;
            v55 = v86;
            v85 = v49;
            v86 = v51;

            MEMORY[0x231907FA0](v56, v55);

            v49 = v85;
            v51 = v86;
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v50 += 40;
            --v48;
          }

          while (v48);
        }

        else
        {
          v49 = 0;
          v51 = 0xE000000000000000;
        }

        v87 = 0xD000000000000012;
        v88 = v77;
        MEMORY[0x231907FA0](v49, v51);

        v75 = v87;
        v76 = v88;
        v57 = *(v81 + 136);
        v58 = *(v57 + 16);
        v59 = 0;
        if (v58)
        {
          v60 = v57 + 32;
          v61 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v60, &v87);
            v85 = 32;
            v86 = 0xE100000000000000;
            v62 = v89;
            v63 = v90;
            __swift_project_boxed_opaque_existential_1(&v87, v89);
            v64 = (*(v63 + 16))(v62, v63);
            MEMORY[0x231907FA0](v64);

            v66 = v85;
            v65 = v86;
            v85 = v59;
            v86 = v61;

            MEMORY[0x231907FA0](v66, v65);

            v59 = v85;
            v61 = v86;
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v60 += 40;
            --v58;
          }

          while (v58);
        }

        else
        {
          v61 = 0xE000000000000000;
        }

        v87 = 0xD000000000000012;
        v88 = v77;
        MEMORY[0x231907FA0](v59, v61);

        if (v75 == v87 && v76 == v88)
        {

          v10 = v72;
LABEL_5:
          v21 = v74;
LABEL_6:
          a3 = v71 + 1;
          if (v71 + 1 == v70)
          {
            return;
          }

          goto LABEL_7;
        }

        v67 = sub_22FCC9704();

        v10 = v72;
        v21 = v74;
        v46 = v79;
        if ((v67 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v21)
      {
        goto LABEL_47;
      }

      v23 = *(v21 + 8 * v46);
      v68 = v78;
      *(v21 + 8 * v46) = *(v21 + 8 * v78);
      *(v21 + 8 * v68) = v23;
      a3 = v68;
      if (v68 == v73)
      {
        goto LABEL_6;
      }
    }

    v27 = v25 + 32;

    v28 = 0;
    while (v28 < *(v25 + 16))
    {
      sub_22FA2D328(v27, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v29 = v91;
      v30 = swift_dynamicCast();
      v31 = *v22;
      if (v30)
      {
        v32 = 1;
        v31(v29, 0, 1, v14);
        v33 = v83;
        sub_22FB0FD00(v29, v83, type metadata accessor for PhotoLibraryResource);
        v34 = *v33;
        v35 = v33;
        v22 = v84;
        sub_22FA64AB0(v35);
        if (v34)
        {
          v24 = v81;
          goto LABEL_18;
        }
      }

      else
      {
        v31(v29, 1, 1, v14);
        sub_22FA2B420(v29, &qword_27DAD8358, &qword_22FCD6168);
      }

      ++v28;
      v27 += 40;
      if (v26 == v28)
      {
        v32 = 0;
        v24 = v81;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

void sub_22FB082F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v73 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v12);
  v91 = &v69 - v13;
  v14 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v14, v15);
  v82 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17, v18);
  v83 = &v69 - v20;
  v70 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = (v19 + 56);
    v77 = 0x800000022FCE1660;
    v84 = (v19 + 56);
    v72 = v10;
    v74 = v21;
LABEL_7:
    v23 = *(v21 + 8 * a3);
    v71 = a3;
    while (1)
    {
      v78 = a3 - 1;
      v79 = a3;
      v24 = *(v21 + 8 * (a3 - 1));
      v25 = *(v23 + 136);
      v26 = *(v25 + 16);
      v80 = v23;
      v81 = v24;
      if (v26)
      {
        break;
      }

      v32 = 0;
LABEL_18:
      v36 = *(v24 + 136);
      v37 = *(v36 + 16);
      if (v37)
      {
        v38 = 0;
        v39 = v36 + 32;
        while (v38 < *(v36 + 16))
        {
          sub_22FA2D328(v39, &v87);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
          v40 = swift_dynamicCast();
          v41 = *v22;
          if (v40)
          {
            v41(v10, 0, 1, v14);
            v42 = v14;
            v43 = v82;
            sub_22FB0FD00(v10, v82, type metadata accessor for PhotoLibraryResource);
            v44 = *v43;
            v45 = v43;
            v14 = v42;
            v22 = v84;
            sub_22FA64AB0(v45);
            if (v44)
            {
              if (v32)
              {
                goto LABEL_29;
              }

              goto LABEL_5;
            }
          }

          else
          {
            v41(v10, 1, 1, v14);
            sub_22FA2B420(v10, &qword_27DAD8358, &qword_22FCD6168);
          }

          ++v38;
          v39 += 40;
          if (v37 == v38)
          {
            goto LABEL_27;
          }
        }

        goto LABEL_46;
      }

LABEL_27:
      if (v32)
      {

        v21 = v74;
        v46 = v79;
      }

      else
      {
LABEL_29:
        v47 = *(v80 + 136);
        v48 = *(v47 + 16);
        if (v48)
        {
          v49 = 0;
          v50 = v47 + 32;
          v51 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v50, &v87);
            v85 = 32;
            v86 = 0xE100000000000000;
            v53 = v89;
            v52 = v90;
            __swift_project_boxed_opaque_existential_1(&v87, v89);
            v54 = (*(v52 + 16))(v53, v52);
            MEMORY[0x231907FA0](v54);

            v56 = v85;
            v55 = v86;
            v85 = v49;
            v86 = v51;

            MEMORY[0x231907FA0](v56, v55);

            v49 = v85;
            v51 = v86;
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v50 += 40;
            --v48;
          }

          while (v48);
        }

        else
        {
          v49 = 0;
          v51 = 0xE000000000000000;
        }

        v87 = 0xD000000000000018;
        v88 = v77;
        MEMORY[0x231907FA0](v49, v51);

        v75 = v87;
        v76 = v88;
        v57 = *(v81 + 136);
        v58 = *(v57 + 16);
        v59 = 0;
        if (v58)
        {
          v60 = v57 + 32;
          v61 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v60, &v87);
            v85 = 32;
            v86 = 0xE100000000000000;
            v62 = v89;
            v63 = v90;
            __swift_project_boxed_opaque_existential_1(&v87, v89);
            v64 = (*(v63 + 16))(v62, v63);
            MEMORY[0x231907FA0](v64);

            v66 = v85;
            v65 = v86;
            v85 = v59;
            v86 = v61;

            MEMORY[0x231907FA0](v66, v65);

            v59 = v85;
            v61 = v86;
            __swift_destroy_boxed_opaque_existential_0(&v87);
            v60 += 40;
            --v58;
          }

          while (v58);
        }

        else
        {
          v61 = 0xE000000000000000;
        }

        v87 = 0xD000000000000018;
        v88 = v77;
        MEMORY[0x231907FA0](v59, v61);

        if (v75 == v87 && v76 == v88)
        {

          v10 = v72;
LABEL_5:
          v21 = v74;
LABEL_6:
          a3 = v71 + 1;
          if (v71 + 1 == v70)
          {
            return;
          }

          goto LABEL_7;
        }

        v67 = sub_22FCC9704();

        v10 = v72;
        v21 = v74;
        v46 = v79;
        if ((v67 & 1) == 0)
        {
          goto LABEL_6;
        }
      }

      if (!v21)
      {
        goto LABEL_47;
      }

      v23 = *(v21 + 8 * v46);
      v68 = v78;
      *(v21 + 8 * v46) = *(v21 + 8 * v78);
      *(v21 + 8 * v68) = v23;
      a3 = v68;
      if (v68 == v73)
      {
        goto LABEL_6;
      }
    }

    v27 = v25 + 32;

    v28 = 0;
    while (v28 < *(v25 + 16))
    {
      sub_22FA2D328(v27, &v87);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
      v29 = v91;
      v30 = swift_dynamicCast();
      v31 = *v22;
      if (v30)
      {
        v32 = 1;
        v31(v29, 0, 1, v14);
        v33 = v83;
        sub_22FB0FD00(v29, v83, type metadata accessor for PhotoLibraryResource);
        v34 = *v33;
        v35 = v33;
        v22 = v84;
        sub_22FA64AB0(v35);
        if (v34)
        {
          v24 = v81;
          goto LABEL_18;
        }
      }

      else
      {
        v31(v29, 1, 1, v14);
        sub_22FA2B420(v29, &qword_27DAD8358, &qword_22FCD6168);
      }

      ++v28;
      v27 += 40;
      if (v26 == v28)
      {
        v32 = 0;
        v24 = v81;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
  }
}

void sub_22FB089FC(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v199 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v222 = &v197 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v197 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v220 = &v197 - v19;
  v20 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v20, v21);
  v217 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v218 = &v197 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v215 = &v197 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v216 = &v197 - v32;
  v206 = a3;
  v33 = a3[1];
  if (v33 >= 1)
  {
    v219 = v16;
    v221 = v9;
    v198 = a4;
    i = 0;
    v35 = (v31 + 56);
    v211 = 0x800000022FCE1620;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      v37 = i;
      v38 = i + 1;
      v210 = v36;
      v212 = i + 1;
      if ((i + 1) < v33)
      {
        v205 = v33;
        v39 = v36;
        v40 = *v206;
        v41 = *(*v206 + 8 * v38);
        v203 = v37;
        v202 = v40;
        v42 = *(v40 + 8 * v37);

        sub_22FAF8820();
        v44 = v43 & 1;
        sub_22FAF8820();
        v46 = v45 & 1;
        if (v44 == v46)
        {
          v47 = sub_22FAF8320(*(v41 + 136));
          v49 = v48;
          if (v47 == sub_22FAF8320(*(v42 + 136)) && v49 == v50)
          {
            LODWORD(v204) = 0;
          }

          else
          {
            LODWORD(v204) = sub_22FCC9704();
          }

          a4 = v220;
        }

        else
        {

          LODWORD(v204) = v46 < v44;
          a4 = v220;
        }

        v197 = 8 * v203;
        v52 = 8 * v203 + 8;
        v36 = v39;
        v53 = v205;
        do
        {
          v56 = v212;
          v55 = v52;
          if (++v212 >= v53)
          {
            break;
          }

          v209 = v52;
          v58 = *(v202 + 8 * (v56 + 1));
          v208 = v56;
          v59 = *(v202 + 8 * v56);
          v60 = *(v58 + 136);
          v61 = *(v60 + 16);
          v213 = v58;
          v214 = v59;
          if (v61)
          {
            v37 = v60 + 32;

            for (i = 0; i != v61; ++i)
            {
              if (i >= *(v60 + 16))
              {
                goto LABEL_184;
              }

              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v62 = swift_dynamicCast();
              v63 = *v35;
              if (v62)
              {
                v64 = a4;
                a4 = 1;
                v63(v64, 0, 1, v20);
                v65 = v216;
                sub_22FB0FD00(v64, v216, type metadata accessor for PhotoLibraryResource);
                LOBYTE(v64) = *v65;
                sub_22FA64AB0(v65);
                if (v64)
                {
                  v59 = v214;
                  goto LABEL_29;
                }
              }

              else
              {
                v63(a4, 1, 1, v20);
                sub_22FA2B420(a4, &qword_27DAD8358, &qword_22FCD6168);
              }

              v37 += 40;
              a4 = v220;
            }

            a4 = 0;
            v59 = v214;
          }

          else
          {

            a4 = 0;
          }

LABEL_29:
          v66 = *(v59 + 136);
          v67 = *(v66 + 16);
          if (v67)
          {
            i = 0;
            v37 = v66 + 32;
            do
            {
              if (i >= *(v66 + 16))
              {
                goto LABEL_185;
              }

              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v68 = v219;
              v69 = swift_dynamicCast();
              v70 = *v35;
              if (v69)
              {
                v70(v68, 0, 1, v20);
                v71 = v215;
                sub_22FB0FD00(v68, v215, type metadata accessor for PhotoLibraryResource);
                v72 = *v71;
                sub_22FA64AB0(v71);
                if (v72)
                {
                  v73 = v213;
                  if ((a4 & 1) == 0)
                  {
                    v74 = 0;
                    v55 = v209;
                    v56 = v208;
                    goto LABEL_40;
                  }

LABEL_42:
                  v75 = *(v73 + 136);
                  v76 = *(v75 + 16);
                  if (v76)
                  {
                    v77 = 0;
                    v78 = v75 + 32;
                    v79 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v78, &v225);
                      v223 = 32;
                      v224 = 0xE100000000000000;
                      v81 = v227;
                      v80 = v228;
                      __swift_project_boxed_opaque_existential_1(&v225, v227);
                      v82 = (*(v80 + 16))(v81, v80);
                      MEMORY[0x231907FA0](v82);

                      v83 = v223;
                      v84 = v224;
                      v223 = v77;
                      v224 = v79;

                      MEMORY[0x231907FA0](v83, v84);

                      v77 = v223;
                      v79 = v224;
                      __swift_destroy_boxed_opaque_existential_0(&v225);
                      v78 += 40;
                      --v76;
                    }

                    while (v76);
                  }

                  else
                  {
                    v77 = 0;
                    v79 = 0xE000000000000000;
                  }

                  v225 = 0xD000000000000011;
                  v226 = v211;
                  MEMORY[0x231907FA0](v77, v79);

                  v201 = v226;
                  v85 = *(v214 + 136);
                  v86 = *(v85 + 16);
                  v200 = v225;
                  v87 = 0;
                  if (v86)
                  {
                    v88 = v85 + 32;
                    v89 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v88, &v225);
                      v223 = 32;
                      v224 = 0xE100000000000000;
                      v90 = v227;
                      v91 = v228;
                      __swift_project_boxed_opaque_existential_1(&v225, v227);
                      v92 = (*(v91 + 16))(v90, v91);
                      MEMORY[0x231907FA0](v92);

                      v93 = v223;
                      v94 = v224;
                      v223 = v87;
                      v224 = v89;

                      MEMORY[0x231907FA0](v93, v94);

                      v87 = v223;
                      v89 = v224;
                      __swift_destroy_boxed_opaque_existential_0(&v225);
                      v88 += 40;
                      --v86;
                    }

                    while (v86);
                  }

                  else
                  {
                    v89 = 0xE000000000000000;
                  }

                  v225 = 0xD000000000000011;
                  v226 = v211;
                  MEMORY[0x231907FA0](v87, v89);

                  if (v200 == v225 && v201 == v226)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    v54 = sub_22FCC9704();
                  }

                  v55 = v209;
                  v56 = v208;

                  goto LABEL_17;
                }
              }

              else
              {
                v70(v68, 1, 1, v20);
                sub_22FA2B420(v68, &qword_27DAD8358, &qword_22FCD6168);
              }

              ++i;
              v37 += 40;
            }

            while (v67 != i);
          }

          if ((a4 & 1) == 0)
          {
            v73 = v213;
            goto LABEL_42;
          }

          v74 = 1;
          v55 = v209;
          v56 = v208;
LABEL_40:

          v54 = a4 & v74;
LABEL_17:
          v57 = v204 ^ v54;
          v52 = v55 + 8;
          a4 = v220;
          v36 = v210;
          v53 = v205;
        }

        while ((v57 & 1) == 0);
        if (v204)
        {
          v37 = v203;
          if (v212 < v203)
          {
            goto LABEL_207;
          }

          if (v203 < v212)
          {
            v95 = v203;
            v96 = v197;
            do
            {
              if (v95 != v56)
              {
                v98 = *v206;
                if (!*v206)
                {
                  goto LABEL_211;
                }

                v99 = *(v98 + v96);
                *(v98 + v96) = *(v98 + v55);
                *(v98 + v55) = v99;
              }

              ++v95;
              v55 -= 8;
              v96 += 8;
            }

            while (v95 < v56--);
          }
        }

        else
        {
          v37 = v203;
        }
      }

      v100 = v206[1];
      i = v212;
      if (v212 >= v100)
      {
        goto LABEL_75;
      }

      if (__OFSUB__(v212, v37))
      {
        goto LABEL_203;
      }

      if (v212 - v37 >= v198)
      {
        i = v212;
LABEL_75:
        if (i < v37)
        {
          goto LABEL_202;
        }

        goto LABEL_76;
      }

      v101 = v37 + v198;
      if (__OFADD__(v37, v198))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v101 >= v100)
      {
        v101 = v206[1];
      }

      if (v101 < v37)
      {
        goto LABEL_206;
      }

      i = v212;
      if (v212 == v101)
      {
        goto LABEL_75;
      }

      v203 = v37;
      v102 = *v206;
      v103 = v212;
      v201 = v101;
      v202 = v102;
      while (2)
      {
        v152 = *(v102 + 8 * v103);
        v212 = v103;
        v153 = v103;
        while (1)
        {
          v209 = v153;
          v208 = v153 - 1;
          v154 = *(v102 + 8 * (v153 - 1));
          v155 = *(v152 + 136);
          v156 = *(v155 + 16);
          v213 = v152;
          v214 = v154;
          if (v156)
          {
            v37 = v155 + 32;

            i = 0;
            while (i < *(v155 + 16))
            {
              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v157 = v222;
              v158 = swift_dynamicCast();
              v159 = *v35;
              if (v158)
              {
                a4 = 1;
                v159(v157, 0, 1, v20);
                v160 = v218;
                sub_22FB0FD00(v157, v218, type metadata accessor for PhotoLibraryResource);
                v161 = *v160;
                sub_22FA64AB0(v160);
                if (v161)
                {
                  v154 = v214;
                  goto LABEL_139;
                }
              }

              else
              {
                v159(v157, 1, 1, v20);
                sub_22FA2B420(v157, &qword_27DAD8358, &qword_22FCD6168);
              }

              ++i;
              v37 += 40;
              if (v156 == i)
              {
                a4 = 0;
                v154 = v214;
                goto LABEL_139;
              }
            }

            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          a4 = 0;
LABEL_139:
          v162 = *(v154 + 136);
          v163 = *(v162 + 16);
          if (v163)
          {
            break;
          }

LABEL_148:
          if ((a4 & 1) == 0)
          {
            goto LABEL_150;
          }

          v169 = v209;
          v36 = v210;
          v102 = v202;
LABEL_163:
          if (!v102)
          {
            goto LABEL_208;
          }

          v152 = *(v102 + 8 * v169);
          v190 = v208;
          *(v102 + 8 * v169) = *(v102 + 8 * v208);
          *(v102 + 8 * v190) = v152;
          v153 = v190;
          if (v190 == v203)
          {
            goto LABEL_127;
          }
        }

        i = 0;
        v37 = v162 + 32;
        while (1)
        {
          if (i >= *(v162 + 16))
          {
            goto LABEL_183;
          }

          sub_22FA2D328(v37, &v225);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
          v164 = v221;
          v165 = swift_dynamicCast();
          v166 = *v35;
          if (v165)
          {
            break;
          }

          v166(v164, 1, 1, v20);
          sub_22FA2B420(v164, &qword_27DAD8358, &qword_22FCD6168);
LABEL_142:
          ++i;
          v37 += 40;
          if (v163 == i)
          {
            goto LABEL_148;
          }
        }

        v166(v164, 0, 1, v20);
        v167 = v217;
        sub_22FB0FD00(v164, v217, type metadata accessor for PhotoLibraryResource);
        v168 = *v167;
        sub_22FA64AB0(v167);
        if ((v168 & 1) == 0)
        {
          goto LABEL_142;
        }

        if ((a4 & 1) == 0)
        {

LABEL_126:
          v36 = v210;
          v102 = v202;
          goto LABEL_127;
        }

LABEL_150:
        v170 = *(v213 + 136);
        v171 = *(v170 + 16);
        if (v171)
        {
          v172 = 0;
          v173 = v170 + 32;
          v174 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v173, &v225);
            v223 = 32;
            v224 = 0xE100000000000000;
            v175 = v227;
            v176 = v228;
            __swift_project_boxed_opaque_existential_1(&v225, v227);
            v177 = (*(v176 + 16))(v175, v176);
            MEMORY[0x231907FA0](v177);

            v178 = v223;
            v179 = v224;
            v223 = v172;
            v224 = v174;

            MEMORY[0x231907FA0](v178, v179);

            v172 = v223;
            v174 = v224;
            __swift_destroy_boxed_opaque_existential_0(&v225);
            v173 += 40;
            --v171;
          }

          while (v171);
        }

        else
        {
          v172 = 0;
          v174 = 0xE000000000000000;
        }

        v225 = 0xD000000000000011;
        v226 = v211;
        MEMORY[0x231907FA0](v172, v174);

        v205 = v226;
        v180 = *(v214 + 136);
        v181 = *(v180 + 16);
        v204 = v225;
        v182 = 0;
        if (v181)
        {
          v183 = v180 + 32;
          v184 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v183, &v225);
            v223 = 32;
            v224 = 0xE100000000000000;
            v185 = v227;
            v186 = v228;
            __swift_project_boxed_opaque_existential_1(&v225, v227);
            v187 = (*(v186 + 16))(v185, v186);
            MEMORY[0x231907FA0](v187);

            v188 = v223;
            v189 = v224;
            v223 = v182;
            v224 = v184;

            MEMORY[0x231907FA0](v188, v189);

            v182 = v223;
            v184 = v224;
            __swift_destroy_boxed_opaque_existential_0(&v225);
            v183 += 40;
            --v181;
          }

          while (v181);
        }

        else
        {
          v184 = 0xE000000000000000;
        }

        v225 = 0xD000000000000011;
        v226 = v211;
        a4 = &v225;
        MEMORY[0x231907FA0](v182, v184);

        if (v204 == v225 && v205 == v226)
        {

          goto LABEL_126;
        }

        a4 = sub_22FCC9704();

        v169 = v209;
        v36 = v210;
        v102 = v202;
        if (a4)
        {
          goto LABEL_163;
        }

LABEL_127:
        v103 = v212 + 1;
        if (v212 + 1 != v201)
        {
          continue;
        }

        break;
      }

      i = v201;
      v37 = v203;
      if (v201 < v203)
      {
        goto LABEL_202;
      }

LABEL_76:
      v104 = v36;
      v105 = v37;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v104;
      }

      else
      {
        v36 = sub_22FAC21FC(0, *(v104 + 2) + 1, 1, v104);
      }

      v107 = *(v36 + 2);
      v106 = *(v36 + 3);
      a4 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        v36 = sub_22FAC21FC((v106 > 1), v107 + 1, 1, v36);
      }

      *(v36 + 2) = a4;
      v108 = &v36[16 * v107];
      *(v108 + 4) = v105;
      *(v108 + 5) = i;
      v109 = *v199;
      if (!*v199)
      {
        goto LABEL_212;
      }

      if (v107)
      {
        while (2)
        {
          v37 = a4 - 1;
          if (a4 >= 4)
          {
            v114 = &v36[16 * a4 + 32];
            v115 = *(v114 - 64);
            v116 = *(v114 - 56);
            v120 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            if (v120)
            {
              goto LABEL_189;
            }

            v119 = *(v114 - 48);
            v118 = *(v114 - 40);
            v120 = __OFSUB__(v118, v119);
            v112 = v118 - v119;
            v113 = v120;
            if (v120)
            {
              goto LABEL_190;
            }

            v121 = &v36[16 * a4];
            v123 = *v121;
            v122 = *(v121 + 1);
            v120 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v120)
            {
              goto LABEL_192;
            }

            v120 = __OFADD__(v112, v124);
            v125 = v112 + v124;
            if (v120)
            {
              goto LABEL_195;
            }

            if (v125 >= v117)
            {
              v143 = &v36[16 * v37 + 32];
              v145 = *v143;
              v144 = *(v143 + 1);
              v120 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v120)
              {
                goto LABEL_201;
              }

              if (v112 < v146)
              {
                v37 = a4 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v113)
              {
                goto LABEL_191;
              }

              v126 = &v36[16 * a4];
              v128 = *v126;
              v127 = *(v126 + 1);
              v129 = __OFSUB__(v127, v128);
              v130 = v127 - v128;
              v131 = v129;
              if (v129)
              {
                goto LABEL_194;
              }

              v132 = &v36[16 * v37 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v120 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v120)
              {
                goto LABEL_197;
              }

              if (__OFADD__(v130, v135))
              {
                goto LABEL_198;
              }

              if (v130 + v135 < v112)
              {
                goto LABEL_109;
              }

              if (v112 < v135)
              {
                v37 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v110 = *(v36 + 4);
              v111 = *(v36 + 5);
              v120 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              v113 = v120;
              goto LABEL_95;
            }

            v136 = &v36[16 * a4];
            v138 = *v136;
            v137 = *(v136 + 1);
            v120 = __OFSUB__(v137, v138);
            v130 = v137 - v138;
            v131 = v120;
LABEL_109:
            if (v131)
            {
              goto LABEL_193;
            }

            v139 = &v36[16 * v37];
            v141 = *(v139 + 4);
            v140 = *(v139 + 5);
            v120 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v120)
            {
              goto LABEL_196;
            }

            if (v142 < v130)
            {
              break;
            }
          }

          v147 = v37 - 1;
          if (v37 - 1 >= a4)
          {
            goto LABEL_186;
          }

          if (!*v206)
          {
            goto LABEL_209;
          }

          v148 = v36;
          a4 = *&v36[16 * v147 + 32];
          v149 = *&v36[16 * v37 + 40];
          v150 = v207;
          sub_22FB0C3B0((*v206 + 8 * a4), (*v206 + 8 * *&v36[16 * v37 + 32]), (*v206 + 8 * v149), v109);
          v207 = v150;
          if (v150)
          {
            goto LABEL_181;
          }

          if (v149 < a4)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_22FB0EF2C(v148);
          }

          if (v147 >= *(v148 + 2))
          {
            goto LABEL_188;
          }

          v151 = &v148[16 * v147];
          *(v151 + 4) = a4;
          *(v151 + 5) = v149;
          v229 = v148;
          sub_22FB0EEA0(v37);
          v36 = v229;
          a4 = *(v229 + 2);
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v33 = v206[1];
      if (i >= v33)
      {
        goto LABEL_170;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_170:
  v37 = *v199;
  if (!*v199)
  {
    goto LABEL_213;
  }

  a4 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  i = v207;
  if (isUniquelyReferenced_nonNull_native)
  {
    v192 = a4;
  }

  else
  {
LABEL_204:
    v192 = sub_22FB0EF2C(a4);
  }

  v229 = v192;
  a4 = *(v192 + 2);
  if (a4 < 2)
  {
LABEL_181:

    return;
  }

  while (*v206)
  {
    v193 = *&v192[16 * a4];
    v194 = v192;
    v195 = *&v192[16 * a4 + 24];
    sub_22FB0C3B0((*v206 + 8 * v193), (*v206 + 8 * *&v192[16 * a4 + 16]), (*v206 + 8 * v195), v37);
    if (i)
    {
      goto LABEL_181;
    }

    if (v195 < v193)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_22FB0EF2C(v194);
    }

    if (a4 - 2 >= *(v194 + 2))
    {
      goto LABEL_200;
    }

    v196 = &v194[16 * a4];
    *v196 = v193;
    *(v196 + 1) = v195;
    v229 = v194;
    sub_22FB0EEA0(a4 - 1);
    v192 = v229;
    a4 = *(v229 + 2);
    if (a4 <= 1)
    {
      goto LABEL_181;
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
}

void sub_22FB09D38(char **a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v199 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAD8358, &qword_22FCD6168);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v197 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v11);
  v222 = &v197 - v12;
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v197 - v15;
  MEMORY[0x28223BE20](v17, v18);
  v220 = &v197 - v19;
  v20 = type metadata accessor for PhotoLibraryResource(0);
  MEMORY[0x28223BE20](v20, v21);
  v217 = &v197 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23, v24);
  v218 = &v197 - v25;
  MEMORY[0x28223BE20](v26, v27);
  v215 = &v197 - v28;
  MEMORY[0x28223BE20](v29, v30);
  v216 = &v197 - v32;
  v206 = a3;
  v33 = a3[1];
  if (v33 >= 1)
  {
    v219 = v16;
    v221 = v9;
    v198 = a4;
    i = 0;
    v35 = (v31 + 56);
    v211 = 0x800000022FCE1640;
    v36 = MEMORY[0x277D84F90];
    while (1)
    {
      v37 = i;
      v38 = i + 1;
      v210 = v36;
      v212 = i + 1;
      if ((i + 1) < v33)
      {
        v205 = v33;
        v39 = v36;
        v40 = *v206;
        v41 = *(*v206 + 8 * v38);
        v203 = v37;
        v202 = v40;
        v42 = *(v40 + 8 * v37);

        sub_22FAF8820();
        v44 = v43 & 1;
        sub_22FAF8820();
        v46 = v45 & 1;
        if (v44 == v46)
        {
          v47 = sub_22FAF8460(*(v41 + 136));
          v49 = v48;
          if (v47 == sub_22FAF8460(*(v42 + 136)) && v49 == v50)
          {
            LODWORD(v204) = 0;
          }

          else
          {
            LODWORD(v204) = sub_22FCC9704();
          }

          a4 = v220;
        }

        else
        {

          LODWORD(v204) = v46 < v44;
          a4 = v220;
        }

        v197 = 8 * v203;
        v52 = 8 * v203 + 8;
        v36 = v39;
        v53 = v205;
        do
        {
          v56 = v212;
          v55 = v52;
          if (++v212 >= v53)
          {
            break;
          }

          v209 = v52;
          v58 = *(v202 + 8 * (v56 + 1));
          v208 = v56;
          v59 = *(v202 + 8 * v56);
          v60 = *(v58 + 136);
          v61 = *(v60 + 16);
          v213 = v58;
          v214 = v59;
          if (v61)
          {
            v37 = v60 + 32;

            for (i = 0; i != v61; ++i)
            {
              if (i >= *(v60 + 16))
              {
                goto LABEL_184;
              }

              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v62 = swift_dynamicCast();
              v63 = *v35;
              if (v62)
              {
                v64 = a4;
                a4 = 1;
                v63(v64, 0, 1, v20);
                v65 = v216;
                sub_22FB0FD00(v64, v216, type metadata accessor for PhotoLibraryResource);
                LOBYTE(v64) = *v65;
                sub_22FA64AB0(v65);
                if (v64)
                {
                  v59 = v214;
                  goto LABEL_29;
                }
              }

              else
              {
                v63(a4, 1, 1, v20);
                sub_22FA2B420(a4, &qword_27DAD8358, &qword_22FCD6168);
              }

              v37 += 40;
              a4 = v220;
            }

            a4 = 0;
            v59 = v214;
          }

          else
          {

            a4 = 0;
          }

LABEL_29:
          v66 = *(v59 + 136);
          v67 = *(v66 + 16);
          if (v67)
          {
            i = 0;
            v37 = v66 + 32;
            do
            {
              if (i >= *(v66 + 16))
              {
                goto LABEL_185;
              }

              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v68 = v219;
              v69 = swift_dynamicCast();
              v70 = *v35;
              if (v69)
              {
                v70(v68, 0, 1, v20);
                v71 = v215;
                sub_22FB0FD00(v68, v215, type metadata accessor for PhotoLibraryResource);
                v72 = *v71;
                sub_22FA64AB0(v71);
                if (v72)
                {
                  v73 = v213;
                  if ((a4 & 1) == 0)
                  {
                    v74 = 0;
                    v55 = v209;
                    v56 = v208;
                    goto LABEL_40;
                  }

LABEL_42:
                  v75 = *(v73 + 136);
                  v76 = *(v75 + 16);
                  if (v76)
                  {
                    v77 = 0;
                    v78 = v75 + 32;
                    v79 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v78, &v225);
                      v223 = 32;
                      v224 = 0xE100000000000000;
                      v81 = v227;
                      v80 = v228;
                      __swift_project_boxed_opaque_existential_1(&v225, v227);
                      v82 = (*(v80 + 16))(v81, v80);
                      MEMORY[0x231907FA0](v82);

                      v83 = v223;
                      v84 = v224;
                      v223 = v77;
                      v224 = v79;

                      MEMORY[0x231907FA0](v83, v84);

                      v77 = v223;
                      v79 = v224;
                      __swift_destroy_boxed_opaque_existential_0(&v225);
                      v78 += 40;
                      --v76;
                    }

                    while (v76);
                  }

                  else
                  {
                    v77 = 0;
                    v79 = 0xE000000000000000;
                  }

                  v225 = 0xD000000000000012;
                  v226 = v211;
                  MEMORY[0x231907FA0](v77, v79);

                  v201 = v226;
                  v85 = *(v214 + 136);
                  v86 = *(v85 + 16);
                  v200 = v225;
                  v87 = 0;
                  if (v86)
                  {
                    v88 = v85 + 32;
                    v89 = 0xE000000000000000;
                    do
                    {
                      sub_22FA2D328(v88, &v225);
                      v223 = 32;
                      v224 = 0xE100000000000000;
                      v90 = v227;
                      v91 = v228;
                      __swift_project_boxed_opaque_existential_1(&v225, v227);
                      v92 = (*(v91 + 16))(v90, v91);
                      MEMORY[0x231907FA0](v92);

                      v93 = v223;
                      v94 = v224;
                      v223 = v87;
                      v224 = v89;

                      MEMORY[0x231907FA0](v93, v94);

                      v87 = v223;
                      v89 = v224;
                      __swift_destroy_boxed_opaque_existential_0(&v225);
                      v88 += 40;
                      --v86;
                    }

                    while (v86);
                  }

                  else
                  {
                    v89 = 0xE000000000000000;
                  }

                  v225 = 0xD000000000000012;
                  v226 = v211;
                  MEMORY[0x231907FA0](v87, v89);

                  if (v200 == v225 && v201 == v226)
                  {
                    v54 = 0;
                  }

                  else
                  {
                    v54 = sub_22FCC9704();
                  }

                  v55 = v209;
                  v56 = v208;

                  goto LABEL_17;
                }
              }

              else
              {
                v70(v68, 1, 1, v20);
                sub_22FA2B420(v68, &qword_27DAD8358, &qword_22FCD6168);
              }

              ++i;
              v37 += 40;
            }

            while (v67 != i);
          }

          if ((a4 & 1) == 0)
          {
            v73 = v213;
            goto LABEL_42;
          }

          v74 = 1;
          v55 = v209;
          v56 = v208;
LABEL_40:

          v54 = a4 & v74;
LABEL_17:
          v57 = v204 ^ v54;
          v52 = v55 + 8;
          a4 = v220;
          v36 = v210;
          v53 = v205;
        }

        while ((v57 & 1) == 0);
        if (v204)
        {
          v37 = v203;
          if (v212 < v203)
          {
            goto LABEL_207;
          }

          if (v203 < v212)
          {
            v95 = v203;
            v96 = v197;
            do
            {
              if (v95 != v56)
              {
                v98 = *v206;
                if (!*v206)
                {
                  goto LABEL_211;
                }

                v99 = *(v98 + v96);
                *(v98 + v96) = *(v98 + v55);
                *(v98 + v55) = v99;
              }

              ++v95;
              v55 -= 8;
              v96 += 8;
            }

            while (v95 < v56--);
          }
        }

        else
        {
          v37 = v203;
        }
      }

      v100 = v206[1];
      i = v212;
      if (v212 >= v100)
      {
        goto LABEL_75;
      }

      if (__OFSUB__(v212, v37))
      {
        goto LABEL_203;
      }

      if (v212 - v37 >= v198)
      {
        i = v212;
LABEL_75:
        if (i < v37)
        {
          goto LABEL_202;
        }

        goto LABEL_76;
      }

      v101 = v37 + v198;
      if (__OFADD__(v37, v198))
      {
        __break(1u);
LABEL_206:
        __break(1u);
LABEL_207:
        __break(1u);
LABEL_208:
        __break(1u);
LABEL_209:
        __break(1u);
        goto LABEL_210;
      }

      if (v101 >= v100)
      {
        v101 = v206[1];
      }

      if (v101 < v37)
      {
        goto LABEL_206;
      }

      i = v212;
      if (v212 == v101)
      {
        goto LABEL_75;
      }

      v203 = v37;
      v102 = *v206;
      v103 = v212;
      v201 = v101;
      v202 = v102;
      while (2)
      {
        v152 = *(v102 + 8 * v103);
        v212 = v103;
        v153 = v103;
        while (1)
        {
          v209 = v153;
          v208 = v153 - 1;
          v154 = *(v102 + 8 * (v153 - 1));
          v155 = *(v152 + 136);
          v156 = *(v155 + 16);
          v213 = v152;
          v214 = v154;
          if (v156)
          {
            v37 = v155 + 32;

            i = 0;
            while (i < *(v155 + 16))
            {
              sub_22FA2D328(v37, &v225);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
              v157 = v222;
              v158 = swift_dynamicCast();
              v159 = *v35;
              if (v158)
              {
                a4 = 1;
                v159(v157, 0, 1, v20);
                v160 = v218;
                sub_22FB0FD00(v157, v218, type metadata accessor for PhotoLibraryResource);
                v161 = *v160;
                sub_22FA64AB0(v160);
                if (v161)
                {
                  v154 = v214;
                  goto LABEL_139;
                }
              }

              else
              {
                v159(v157, 1, 1, v20);
                sub_22FA2B420(v157, &qword_27DAD8358, &qword_22FCD6168);
              }

              ++i;
              v37 += 40;
              if (v156 == i)
              {
                a4 = 0;
                v154 = v214;
                goto LABEL_139;
              }
            }

            __break(1u);
LABEL_183:
            __break(1u);
LABEL_184:
            __break(1u);
LABEL_185:
            __break(1u);
LABEL_186:
            __break(1u);
LABEL_187:
            __break(1u);
LABEL_188:
            __break(1u);
LABEL_189:
            __break(1u);
LABEL_190:
            __break(1u);
LABEL_191:
            __break(1u);
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
LABEL_194:
            __break(1u);
LABEL_195:
            __break(1u);
LABEL_196:
            __break(1u);
LABEL_197:
            __break(1u);
LABEL_198:
            __break(1u);
LABEL_199:
            __break(1u);
LABEL_200:
            __break(1u);
LABEL_201:
            __break(1u);
LABEL_202:
            __break(1u);
LABEL_203:
            __break(1u);
            goto LABEL_204;
          }

          a4 = 0;
LABEL_139:
          v162 = *(v154 + 136);
          v163 = *(v162 + 16);
          if (v163)
          {
            break;
          }

LABEL_148:
          if ((a4 & 1) == 0)
          {
            goto LABEL_150;
          }

          v169 = v209;
          v36 = v210;
          v102 = v202;
LABEL_163:
          if (!v102)
          {
            goto LABEL_208;
          }

          v152 = *(v102 + 8 * v169);
          v190 = v208;
          *(v102 + 8 * v169) = *(v102 + 8 * v208);
          *(v102 + 8 * v190) = v152;
          v153 = v190;
          if (v190 == v203)
          {
            goto LABEL_127;
          }
        }

        i = 0;
        v37 = v162 + 32;
        while (1)
        {
          if (i >= *(v162 + 16))
          {
            goto LABEL_183;
          }

          sub_22FA2D328(v37, &v225);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAD9020, &qword_22FCD4990);
          v164 = v221;
          v165 = swift_dynamicCast();
          v166 = *v35;
          if (v165)
          {
            break;
          }

          v166(v164, 1, 1, v20);
          sub_22FA2B420(v164, &qword_27DAD8358, &qword_22FCD6168);
LABEL_142:
          ++i;
          v37 += 40;
          if (v163 == i)
          {
            goto LABEL_148;
          }
        }

        v166(v164, 0, 1, v20);
        v167 = v217;
        sub_22FB0FD00(v164, v217, type metadata accessor for PhotoLibraryResource);
        v168 = *v167;
        sub_22FA64AB0(v167);
        if ((v168 & 1) == 0)
        {
          goto LABEL_142;
        }

        if ((a4 & 1) == 0)
        {

LABEL_126:
          v36 = v210;
          v102 = v202;
          goto LABEL_127;
        }

LABEL_150:
        v170 = *(v213 + 136);
        v171 = *(v170 + 16);
        if (v171)
        {
          v172 = 0;
          v173 = v170 + 32;
          v174 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v173, &v225);
            v223 = 32;
            v224 = 0xE100000000000000;
            v175 = v227;
            v176 = v228;
            __swift_project_boxed_opaque_existential_1(&v225, v227);
            v177 = (*(v176 + 16))(v175, v176);
            MEMORY[0x231907FA0](v177);

            v178 = v223;
            v179 = v224;
            v223 = v172;
            v224 = v174;

            MEMORY[0x231907FA0](v178, v179);

            v172 = v223;
            v174 = v224;
            __swift_destroy_boxed_opaque_existential_0(&v225);
            v173 += 40;
            --v171;
          }

          while (v171);
        }

        else
        {
          v172 = 0;
          v174 = 0xE000000000000000;
        }

        v225 = 0xD000000000000012;
        v226 = v211;
        MEMORY[0x231907FA0](v172, v174);

        v205 = v226;
        v180 = *(v214 + 136);
        v181 = *(v180 + 16);
        v204 = v225;
        v182 = 0;
        if (v181)
        {
          v183 = v180 + 32;
          v184 = 0xE000000000000000;
          do
          {
            sub_22FA2D328(v183, &v225);
            v223 = 32;
            v224 = 0xE100000000000000;
            v185 = v227;
            v186 = v228;
            __swift_project_boxed_opaque_existential_1(&v225, v227);
            v187 = (*(v186 + 16))(v185, v186);
            MEMORY[0x231907FA0](v187);

            v188 = v223;
            v189 = v224;
            v223 = v182;
            v224 = v184;

            MEMORY[0x231907FA0](v188, v189);

            v182 = v223;
            v184 = v224;
            __swift_destroy_boxed_opaque_existential_0(&v225);
            v183 += 40;
            --v181;
          }

          while (v181);
        }

        else
        {
          v184 = 0xE000000000000000;
        }

        v225 = 0xD000000000000012;
        v226 = v211;
        a4 = &v225;
        MEMORY[0x231907FA0](v182, v184);

        if (v204 == v225 && v205 == v226)
        {

          goto LABEL_126;
        }

        a4 = sub_22FCC9704();

        v169 = v209;
        v36 = v210;
        v102 = v202;
        if (a4)
        {
          goto LABEL_163;
        }

LABEL_127:
        v103 = v212 + 1;
        if (v212 + 1 != v201)
        {
          continue;
        }

        break;
      }

      i = v201;
      v37 = v203;
      if (v201 < v203)
      {
        goto LABEL_202;
      }

LABEL_76:
      v104 = v36;
      v105 = v37;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v36 = v104;
      }

      else
      {
        v36 = sub_22FAC21FC(0, *(v104 + 2) + 1, 1, v104);
      }

      v107 = *(v36 + 2);
      v106 = *(v36 + 3);
      a4 = v107 + 1;
      if (v107 >= v106 >> 1)
      {
        v36 = sub_22FAC21FC((v106 > 1), v107 + 1, 1, v36);
      }

      *(v36 + 2) = a4;
      v108 = &v36[16 * v107];
      *(v108 + 4) = v105;
      *(v108 + 5) = i;
      v109 = *v199;
      if (!*v199)
      {
        goto LABEL_212;
      }

      if (v107)
      {
        while (2)
        {
          v37 = a4 - 1;
          if (a4 >= 4)
          {
            v114 = &v36[16 * a4 + 32];
            v115 = *(v114 - 64);
            v116 = *(v114 - 56);
            v120 = __OFSUB__(v116, v115);
            v117 = v116 - v115;
            if (v120)
            {
              goto LABEL_189;
            }

            v119 = *(v114 - 48);
            v118 = *(v114 - 40);
            v120 = __OFSUB__(v118, v119);
            v112 = v118 - v119;
            v113 = v120;
            if (v120)
            {
              goto LABEL_190;
            }

            v121 = &v36[16 * a4];
            v123 = *v121;
            v122 = *(v121 + 1);
            v120 = __OFSUB__(v122, v123);
            v124 = v122 - v123;
            if (v120)
            {
              goto LABEL_192;
            }

            v120 = __OFADD__(v112, v124);
            v125 = v112 + v124;
            if (v120)
            {
              goto LABEL_195;
            }

            if (v125 >= v117)
            {
              v143 = &v36[16 * v37 + 32];
              v145 = *v143;
              v144 = *(v143 + 1);
              v120 = __OFSUB__(v144, v145);
              v146 = v144 - v145;
              if (v120)
              {
                goto LABEL_201;
              }

              if (v112 < v146)
              {
                v37 = a4 - 2;
              }
            }

            else
            {
LABEL_95:
              if (v113)
              {
                goto LABEL_191;
              }

              v126 = &v36[16 * a4];
              v128 = *v126;
              v127 = *(v126 + 1);
              v129 = __OFSUB__(v127, v128);
              v130 = v127 - v128;
              v131 = v129;
              if (v129)
              {
                goto LABEL_194;
              }

              v132 = &v36[16 * v37 + 32];
              v134 = *v132;
              v133 = *(v132 + 1);
              v120 = __OFSUB__(v133, v134);
              v135 = v133 - v134;
              if (v120)
              {
                goto LABEL_197;
              }

              if (__OFADD__(v130, v135))
              {
                goto LABEL_198;
              }

              if (v130 + v135 < v112)
              {
                goto LABEL_109;
              }

              if (v112 < v135)
              {
                v37 = a4 - 2;
              }
            }
          }

          else
          {
            if (a4 == 3)
            {
              v110 = *(v36 + 4);
              v111 = *(v36 + 5);
              v120 = __OFSUB__(v111, v110);
              v112 = v111 - v110;
              v113 = v120;
              goto LABEL_95;
            }

            v136 = &v36[16 * a4];
            v138 = *v136;
            v137 = *(v136 + 1);
            v120 = __OFSUB__(v137, v138);
            v130 = v137 - v138;
            v131 = v120;
LABEL_109:
            if (v131)
            {
              goto LABEL_193;
            }

            v139 = &v36[16 * v37];
            v141 = *(v139 + 4);
            v140 = *(v139 + 5);
            v120 = __OFSUB__(v140, v141);
            v142 = v140 - v141;
            if (v120)
            {
              goto LABEL_196;
            }

            if (v142 < v130)
            {
              break;
            }
          }

          v147 = v37 - 1;
          if (v37 - 1 >= a4)
          {
            goto LABEL_186;
          }

          if (!*v206)
          {
            goto LABEL_209;
          }

          v148 = v36;
          a4 = *&v36[16 * v147 + 32];
          v149 = *&v36[16 * v37 + 40];
          v150 = v207;
          sub_22FB0D200((*v206 + 8 * a4), (*v206 + 8 * *&v36[16 * v37 + 32]), (*v206 + 8 * v149), v109);
          v207 = v150;
          if (v150)
          {
            goto LABEL_181;
          }

          if (v149 < a4)
          {
            goto LABEL_187;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v148 = sub_22FB0EF2C(v148);
          }

          if (v147 >= *(v148 + 2))
          {
            goto LABEL_188;
          }

          v151 = &v148[16 * v147];
          *(v151 + 4) = a4;
          *(v151 + 5) = v149;
          v229 = v148;
          sub_22FB0EEA0(v37);
          v36 = v229;
          a4 = *(v229 + 2);
          if (a4 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v33 = v206[1];
      if (i >= v33)
      {
        goto LABEL_170;
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_170:
  v37 = *v199;
  if (!*v199)
  {
    goto LABEL_213;
  }

  a4 = v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  i = v207;
  if (isUniquelyReferenced_nonNull_native)
  {
    v192 = a4;
  }

  else
  {
LABEL_204:
    v192 = sub_22FB0EF2C(a4);
  }

  v229 = v192;
  a4 = *(v192 + 2);
  if (a4 < 2)
  {
LABEL_181:

    return;
  }

  while (*v206)
  {
    v193 = *&v192[16 * a4];
    v194 = v192;
    v195 = *&v192[16 * a4 + 24];
    sub_22FB0D200((*v206 + 8 * v193), (*v206 + 8 * *&v192[16 * a4 + 16]), (*v206 + 8 * v195), v37);
    if (i)
    {
      goto LABEL_181;
    }

    if (v195 < v193)
    {
      goto LABEL_199;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v194 = sub_22FB0EF2C(v194);
    }

    if (a4 - 2 >= *(v194 + 2))
    {
      goto LABEL_200;
    }

    v196 = &v194[16 * a4];
    *v196 = v193;
    *(v196 + 1) = v195;
    v229 = v194;
    sub_22FB0EEA0(a4 - 1);
    v192 = v229;
    a4 = *(v229 + 2);
    if (a4 <= 1)
    {
      goto LABEL_181;
    }
  }

LABEL_210:
  __break(1u);
LABEL_211:
  __break(1u);
LABEL_212:
  __break(1u);
LABEL_213:
  __break(1u);
}