id ODIPartialAssessmentInitiator.__allocating_init(providerID:)(void *a1)
{
  v3 = sub_24619F64C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = objc_allocWithZone(v1);
  *&v7[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID] = a1;
  sub_24619F8BC();
  v8 = a1;
  sub_24619F62C();
  (*(v4 + 32))(&v7[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter], v6, v3);
  v11.receiver = v7;
  v11.super_class = v1;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

id ODIPartialAssessmentInitiator.init(providerID:)(void *a1)
{
  v3 = sub_24619F64C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID] = a1;
  sub_24619F8BC();
  v7 = a1;
  sub_24619F62C();
  (*(v4 + 32))(&v1[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter], v6, v3);
  v8 = type metadata accessor for ODIPartialAssessmentInitiator(0);
  v11.receiver = v1;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t type metadata accessor for ODIPartialAssessmentInitiator(uint64_t a1)
{
  result = qword_2813918A0;
  if (!qword_2813918A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_246196AE0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v18 - v1;
  v3 = sub_24619EFDC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24619F60C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v18 - v12;
  (*(v4 + 104))(v6, *MEMORY[0x277D00520], v3);
  sub_24619F63C();
  (*(v4 + 8))(v6, v3);
  sub_24619F5FC();
  v14 = sub_24619FB1C();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_24619F5EC();
  v15 = *(v8 + 8);
  v15(v11, v7);
  v16 = sub_24619F5FC();
  v15(v13, v7);
  return v16;
}

id ODIPartialAssessmentInitiator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ODIPartialAssessmentInitiator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ODIPartialAssessmentInitiator(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_246196FA8(uint64_t a1)
{
  result = sub_24619F64C();
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

uint64_t sub_2461970D8(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_24619F7FC();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = type metadata accessor for ODIFieldsKey(0);
  v3[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2461971CC, 0, 0);
}

uint64_t sub_2461971CC()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 96);
  v4 = *(*(v0 + 104) + 64);
  *(v0 + 152) = v4;
  v5 = sub_24619F46C();
  *(v0 + 160) = v5;
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = *(v2 + 20);
  v7 = *MEMORY[0x277D00608];
  *(v0 + 224) = v7;
  v8 = sub_24619F22C();
  *(v0 + 168) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 104);
  *(v0 + 176) = v10;
  *(v0 + 184) = (v9 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v1 + v6, v7, v8);

  return MEMORY[0x2822009F8](sub_2461972E4, v4, 0);
}

uint64_t sub_2461972E4()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  *(v0 + 192) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_24619736C, 0, 0);
}

uint64_t sub_24619736C()
{
  if (*(*(v0 + 192) + 16) && (v1 = sub_2461659D4(*(v0 + 144)), (v2 & 1) != 0))
  {
    v14 = *(v0 + 224);
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);
    v3 = *(v0 + 144);
    v4 = *(v0 + 120);
    v5 = *(v0 + 128);
    v6 = *(v0 + 104);
    v7 = *(v0 + 112);
    v13 = *(v0 + 88);
    v17 = *(*(*(v0 + 192) + 56) + 8 * v1);

    sub_24616AF3C(v3);

    __swift_project_boxed_opaque_existential_1((v6 + 24), *(v6 + 48));
    sub_24619FAEC();
    *(v0 + 72) = 0;
    *(v0 + 80) = 0xE000000000000000;
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD00000000000001FLL, 0x80000002461A9490);
    (*(v4 + 104))(v5, *MEMORY[0x277D00760], v7);
    sub_24619F6DC();

    (*(v4 + 8))(v5, v7);
    v16(v13, v14, v15);

    v8 = *(v0 + 8);

    return v8(v17);
  }

  else
  {
    v10 = *(v0 + 144);

    sub_24616AF3C(v10);
    v11 = swift_task_alloc();
    *(v0 + 200) = v11;
    *v11 = v0;
    v11[1] = sub_2461975E4;
    v12 = *(v0 + 96);

    return sub_246199A70(v12);
  }
}

uint64_t sub_2461975E4(uint64_t a1)
{
  *(*v1 + 208) = a1;

  return MEMORY[0x2822009F8](sub_2461976E4, 0, 0);
}

uint64_t sub_2461976E4()
{
  v1 = v0[26];
  v12 = v0[22];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[14];
  v10 = v0[11];
  v11 = v0[21];
  if (v1)
  {
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    sub_24619FAEC();
    v0[7] = 0;
    v0[8] = 0xE000000000000000;
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD00000000000001DLL, 0x80000002461A9470);
    (*(v2 + 104))(v3, *MEMORY[0x277D00760], v5);
    sub_24619F6DC();

    (*(v2 + 8))(v3, v5);
    v12(v10, *MEMORY[0x277D00600], v11);

    v6 = v0[1];

    return v6(v1);
  }

  else
  {
    __swift_project_boxed_opaque_existential_1((v4 + 24), *(v4 + 48));
    sub_24619FAEC();
    v0[5] = 0;
    v0[6] = 0xE000000000000000;
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD000000000000020, 0x80000002461A9440);
    (*(v2 + 104))(v3, *MEMORY[0x277D00760], v5);
    sub_24619F6DC();

    (*(v2 + 8))(v3, v5);
    v12(v10, *MEMORY[0x277D00610], v11);
    v8 = swift_task_alloc();
    v0[27] = v8;
    *v8 = v0;
    v8[1] = sub_246197A0C;
    v9 = v0[12];

    return sub_246199D5C(v9);
  }
}

uint64_t sub_246197A0C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_246197B48(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v4 = sub_24619EFDC();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v5 = sub_24619F7FC();
  v2[16] = v5;
  v2[17] = *(v5 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = type metadata accessor for ODIFieldsKey(0);
  v2[20] = swift_task_alloc();
  v6 = swift_task_alloc();
  v2[21] = v6;
  *v6 = v2;
  v6[1] = sub_246197CC8;

  return sub_246199A70(a1);
}

uint64_t sub_246197CC8(uint64_t a1)
{
  *(*v1 + 176) = a1;

  return MEMORY[0x2822009F8](sub_246197DC8, 0, 0);
}

uint64_t sub_246197DC8()
{
  if (v0[22])
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = *(v0[12] + 64);
    v0[23] = v3;

    return MEMORY[0x2822009F8](sub_246197E8C, v3, 0);
  }
}

uint64_t sub_246197E8C()
{
  *(v0 + 264) = sub_246199558(*(v0 + 88)) & 1;

  return MEMORY[0x2822009F8](sub_246197F00, 0, 0);
}

uint64_t sub_246197F00()
{
  if (*(v0 + 264) == 1)
  {
    v12 = sub_24619F8BC();
    v13 = v1;
    MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
    *(v0 + 192) = v12;
    *(v0 + 200) = v13;
    v2 = sub_24619F44C();
    v4 = v3;
    *(v0 + 208) = v3;
    sub_24619EFAC();
    *(v0 + 216) = sub_24619EF8C();
    v11 = (*MEMORY[0x277D004C0] + MEMORY[0x277D004C0]);
    v5 = swift_task_alloc();
    *(v0 + 224) = v5;
    *v5 = v0;
    v5[1] = sub_2461981B0;

    return v11(v2, v4);
  }

  else
  {
    v8 = *(v0 + 136);
    v7 = *(v0 + 144);
    v9 = *(v0 + 128);
    __swift_project_boxed_opaque_existential_1((*(v0 + 96) + 24), *(*(v0 + 96) + 48));
    sub_24619FAEC();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    MEMORY[0x24C19A830](0xD000000000000015, 0x80000002461A94B0);
    sub_24619F46C();
    sub_24619FB6C();
    MEMORY[0x24C19A830](0xD000000000000015, 0x80000002461A94D0);
    (*(v8 + 104))(v7, *MEMORY[0x277D00760], v9);
    sub_24619F6CC();

    (*(v8 + 8))(v7, v9);

    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_2461981B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_2461985B0;
  }

  else
  {

    *(v4 + 240) = a1;
    v5 = sub_2461982F4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2461982F4()
{
  v1 = v0[23];
  v3 = v0[19];
  v2 = v0[20];
  v4 = v0[11];
  v5 = sub_24619F46C();
  (*(*(v5 - 8) + 16))(v2, v4, v5);
  v6 = *(v3 + 20);
  v7 = *MEMORY[0x277D00600];
  v8 = sub_24619F22C();
  (*(*(v8 - 8) + 104))(v2 + v6, v7, v8);

  return MEMORY[0x2822009F8](sub_2461983F0, v1, 0);
}

uint64_t sub_2461983F0()
{
  v1 = v0[30];
  v2 = v0[23];
  v3 = v0[20];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_24616A974(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v7;
  swift_endAccess();

  sub_24616AF3C(v3);
  v0[31] = v0[29];
  v5 = v0[23];

  return MEMORY[0x2822009F8](sub_2461984DC, v5, 0);
}

uint64_t sub_2461984DC()
{
  v1 = v0[31];
  sub_24619963C(v0[11]);
  v0[32] = v1;
  if (v1)
  {

    return MEMORY[0x2822009F8](sub_2461988AC, 0, 0);
  }

  else
  {

    v2 = v0[1];

    return v2();
  }
}

uint64_t sub_2461985B0()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  v4 = sub_24619EE5C();
  v5 = [v4 code];

  (*(v2 + 104))(v1, *MEMORY[0x277D00550], v3);
  v6 = sub_24619EFCC();
  (*(v2 + 8))(v1, v3);
  v8 = v0[17];
  v7 = v0[18];
  v9 = v0[16];
  v10 = v0[12];
  v11 = v0[29];
  if (v5 == v6)
  {
    v13 = v0[24];
    v12 = v0[25];
    __swift_project_boxed_opaque_existential_1((v10 + 24), *(v10 + 48));
    sub_24619FAEC();

    MEMORY[0x24C19A830](v13, v12);

    MEMORY[0x24C19A830](46, 0xE100000000000000);
    (*(v8 + 104))(v7, *MEMORY[0x277D00760], v9);
    sub_24619F6DC();
  }

  else
  {

    __swift_project_boxed_opaque_existential_1((v10 + 24), *(v10 + 48));
    sub_24619FAEC();
    MEMORY[0x24C19A830](0xD000000000000034, 0x80000002461A94F0);
    swift_getErrorValue();
    sub_24619FBEC();
    MEMORY[0x24C19A830](0x69726F6E6769202CLL, 0xEB000000002E676ELL);
    (*(v8 + 104))(v7, *MEMORY[0x277D00760], v9);
    sub_24619F6FC();
  }

  (*(v8 + 8))(v7, v9);
  v0[31] = 0;
  v14 = v0[23];

  return MEMORY[0x2822009F8](sub_2461984DC, v14, 0);
}

uint64_t sub_2461988AC()
{
  v1 = v0[32];
  v3 = v0[17];
  v2 = v0[18];
  v4 = v0[16];
  __swift_project_boxed_opaque_existential_1((v0[12] + 24), *(v0[12] + 48));
  (*(v3 + 104))(v2, *MEMORY[0x277D00760], v4);
  sub_24619F6EC();

  (*(v3 + 8))(v2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_2461989D0(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F870, &qword_2461A0FE0);
  v3[16] = swift_task_alloc();
  v4 = sub_24619F46C();
  v3[17] = v4;
  v5 = *(v4 - 8);
  v3[18] = v5;
  v3[19] = *(v5 + 64);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for ODIFieldsKey(0);
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246198B1C, 0, 0);
}

uint64_t sub_246198B1C()
{
  v1 = v0[14];
  v21 = sub_24619F8BC();
  v22 = v2;
  MEMORY[0x24C19A830](0x5F762E6C6C75662ELL, 0xED0000312E302E30);
  if (*(v1 + 16))
  {
    v3 = sub_24616595C(v21, v22);
    v5 = v4;

    if (v5)
    {
      v6 = v0[24];
      v7 = v0[22];
      v8 = v0[17];
      v9 = v0[18];
      v10 = v0[15];
      v11 = v0[13];
      v0[25] = *(*(v0[14] + 56) + 8 * v3);
      v12 = *(v9 + 16);
      v0[26] = v12;
      v0[27] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v12(v6, v11, v8);
      v13 = *(v7 + 20);
      v14 = *MEMORY[0x277D00608];
      v15 = sub_24619F22C();
      v0[28] = v15;
      v16 = *(v15 - 8);
      v17 = *(v16 + 104);
      v0[29] = v17;
      v0[30] = (v16 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
      v17(v6 + v13, v14, v15);
      v18 = *(v10 + 64);
      v0[31] = v18;

      return MEMORY[0x2822009F8](sub_246198D14, v18, 0);
    }
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_246198D14()
{
  v1 = v0[31];
  v3 = v0[24];
  v2 = v0[25];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_24616A974(v2, v3, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v6;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_246198DE4, 0, 0);
}

uint64_t sub_246198DE4()
{
  v1 = *(v0 + 248);
  (*(v0 + 208))(*(v0 + 168), *(v0 + 104), *(v0 + 136));

  return MEMORY[0x2822009F8](sub_246198E7C, v1, 0);
}

uint64_t sub_246198E7C()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  (*(v0 + 208))(v4, *(v0 + 104), *(v0 + 136));
  v3(v4 + *(v5 + 20), *MEMORY[0x277D00600], v2);
  v6 = *(v1 + 112);
  v7 = *(v0 + 184);
  if (*(v6 + 16))
  {

    v8 = sub_2461659D4(v7);
    v7 = *(v0 + 184);
    if (v9)
    {
      v28 = *(*(v6 + 56) + 8 * v8);

      sub_24616AF3C(v7);

      goto LABEL_6;
    }
  }

  sub_24616AF3C(v7);
  v28 = 0;
LABEL_6:
  v10 = *(v0 + 248);
  v11 = *(v0 + 208);
  v12 = *(v0 + 160);
  v13 = *(v0 + 168);
  v14 = *(v0 + 144);
  v15 = *(v0 + 128);
  v16 = *(v0 + 136);
  v17 = *(v0 + 120);
  v26 = *(v0 + 112);
  v27 = *(v0 + 200);
  v29 = *(v0 + 104);
  v18 = sub_24619F9CC();
  (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
  sub_24616CB20(v17 + 24, v0 + 16);
  v11(v12, v13, v16);
  v19 = (*(v14 + 80) + 80) & ~*(v14 + 80);
  v20 = swift_allocObject();
  sub_24616D05C((v0 + 16), (v20 + 16));
  *(v20 + 7) = v28;
  *(v20 + 8) = v27;
  *(v20 + 9) = v26;
  (*(v14 + 32))(&v20[v19], v12, v16);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_2461A15D8;
  v21[5] = v20;
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = &unk_2461A15E8;
  v22[5] = v21;

  v23 = sub_2461703A8(0, 0, v15, &unk_2461A15F8, v22);
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v10 + 128);
  *(v10 + 128) = 0x8000000000000000;
  sub_24616AF98(v23, v29, isUniquelyReferenced_nonNull_native);
  *(v10 + 128) = v30;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24619916C, 0, 0);
}

uint64_t sub_24619916C()
{
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[17];
  v4 = v0[18];

  (*(v4 + 8))(v2, v3);
  sub_24616AF3C(v1);

  v5 = v0[1];

  return v5();
}

uint64_t sub_246199248()
{
  sub_24619FC8C();
  sub_24619F46C();
  sub_24619B410(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
  sub_24619F86C();
  sub_24619F22C();
  sub_24619B410(&qword_281391F90, MEMORY[0x277D00618], MEMORY[0x277D00620]);
  sub_24619F86C();
  return sub_24619FCAC();
}

uint64_t sub_246199334(uint64_t a1)
{
  sub_24619F46C();
  sub_24619B410(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
  sub_24619F86C();
  sub_24619F22C();
  sub_24619B410(&qword_281391F90, MEMORY[0x277D00618], MEMORY[0x277D00620]);
  return sub_24619F86C();
}

uint64_t sub_246199408(uint64_t a1)
{
  sub_24619FC8C();
  sub_24619F46C();
  sub_24619B410(&qword_27EE3F860, MEMORY[0x277D006C0], MEMORY[0x277D006C8]);
  sub_24619F86C();
  sub_24619F22C();
  sub_24619B410(&qword_281391F90, MEMORY[0x277D00618], MEMORY[0x277D00620]);
  sub_24619F86C();
  return sub_24619FCAC();
}

uint64_t sub_2461994F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_24619F45C() & 1) == 0)
  {
    return 0;
  }

  return sub_24619F21C();
}

uint64_t sub_246199558(uint64_t a1)
{
  v2 = v1;
  swift_beginAccess();
  v4 = *(v1 + 120);
  if (!*(v4 + 16))
  {
    goto LABEL_6;
  }

  v5 = sub_246165AE8(a1);
  if ((v6 & 1) == 0)
  {

    goto LABEL_6;
  }

  v7 = *(*(v4 + 56) + v5);

  if ((v7 & 1) == 0)
  {
LABEL_6:
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *(v2 + 120);
    *(v2 + 120) = 0x8000000000000000;
    v8 = 1;
    sub_24616AB04(1, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 120) = v11;
    swift_endAccess();
    return v8;
  }

  return 0;
}

uint64_t sub_24619963C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_24619EFDC();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v8 = *(v1 + 120);
  if (*(v8 + 16))
  {

    v9 = sub_246165AE8(a1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + v9);

      if (v11)
      {
        swift_beginAccess();
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *(v2 + 120);
        *(v2 + 120) = 0x8000000000000000;
        sub_24616AB04(0, a1, isUniquelyReferenced_nonNull_native);
        *(v2 + 120) = v15;
        return swift_endAccess();
      }
    }

    else
    {
    }
  }

  (*(v5 + 104))(v7, *MEMORY[0x277D00528], v4);
  sub_24619F7AC();
  (*(v5 + 8))(v7, v4);
  return swift_willThrow();
}

uint64_t sub_246199858(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_24616D024;

  return v6();
}

uint64_t sub_246199940(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_246161518;

  return v7();
}

uint64_t sub_246199A28()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_246199A70(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for ODIFieldsKey(0);
  v2[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246199B04, 0, 0);
}

uint64_t sub_246199B04()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[5];
  v4 = *(v0[6] + 64);
  v0[9] = v4;
  v5 = sub_24619F46C();
  (*(*(v5 - 8) + 16))(v1, v3, v5);
  v6 = *(v2 + 20);
  v7 = *MEMORY[0x277D00600];
  v8 = sub_24619F22C();
  (*(*(v8 - 8) + 104))(v1 + v6, v7, v8);

  return MEMORY[0x2822009F8](sub_246199C04, v4, 0);
}

uint64_t sub_246199C04()
{
  v1 = *(v0 + 72);
  swift_beginAccess();
  *(v0 + 80) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_246199C8C, 0, 0);
}

uint64_t sub_246199C8C()
{
  v1 = v0[8];
  if (*(v0[10] + 16) && (v2 = sub_2461659D4(v0[8]), v1 = v0[8], (v3 & 1) != 0))
  {
    v4 = *(*(v0[10] + 56) + 8 * v2);

    sub_24616AF3C(v1);
  }

  else
  {

    sub_24616AF3C(v1);
    v4 = 0;
  }

  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_246199D5C(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v3 = sub_24619F46C();
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v2[13] = type metadata accessor for ODIFieldsKey(0);
  v2[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_246199E4C, 0, 0);
}

uint64_t sub_246199E4C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = *(v4 + 16);
  v0[15] = v7;
  v0[16] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v7(v2, v5, v3);
  v8 = *(v1 + 20);
  v9 = *MEMORY[0x277D00610];
  v10 = sub_24619F22C();
  (*(*(v10 - 8) + 104))(v2 + v8, v9, v10);
  v11 = *(v6 + 64);
  v0[17] = v11;

  return MEMORY[0x2822009F8](sub_246199F30, v11, 0);
}

uint64_t sub_246199F30()
{
  v1 = *(v0 + 136);
  swift_beginAccess();
  *(v0 + 144) = *(v1 + 112);

  return MEMORY[0x2822009F8](sub_246199FB8, 0, 0);
}

uint64_t sub_246199FB8()
{
  if (*(v0[18] + 16) && (v1 = sub_2461659D4(v0[14]), (v2 & 1) != 0))
  {
    v3 = *(*(v0[18] + 56) + 8 * v1);

    sub_24616AF3C(v0[14]);

    v4 = v0[1];

    return v4(v3);
  }

  else
  {
    v6 = v0[15];
    v8 = v0[11];
    v7 = v0[12];
    v10 = v0[9];
    v9 = v0[10];
    v11 = v0[8];

    v12 = *(v10 + 16);
    v6(v7, v11, v9);
    v13 = (*(v8 + 88))(v7, v9);
    if (v13 == *MEMORY[0x277D006B8])
    {
      v14 = sub_24616D0C0(v12);
    }

    else if (v13 == *MEMORY[0x277D006B0])
    {
      v14 = sub_24616D564(v12);
    }

    else
    {
      (*(v0[11] + 8))(v0[12], v0[10]);
      v14 = MEMORY[0x277D84F90];
    }

    v0[19] = v14;
    v15 = v0[17];

    return MEMORY[0x2822009F8](sub_24619A16C, v15, 0);
  }
}

uint64_t sub_24619A16C()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v2 + 112);
  *(v2 + 112) = 0x8000000000000000;
  sub_24616A974(v1, v3, isUniquelyReferenced_nonNull_native);
  *(v2 + 112) = v6;
  swift_endAccess();

  return MEMORY[0x2822009F8](sub_24619A240, 0, 0);
}

uint64_t sub_24619A240()
{
  v1 = v0[19];
  sub_24616AF3C(v0[14]);

  v2 = v0[1];

  return v2(v1);
}

uint64_t sub_24619A2C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  v5[3] = a1;
  v6 = sub_24619F7FC();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24619A390, 0, 0);
}

uint64_t sub_24619A390()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 64);
  v39 = *(v0 + 40);
  v41 = *(v0 + 32);
  v4 = *(v0 + 24);
  v5 = v4[3];
  *(v0 + 88) = v5;
  *(v0 + 96) = v4[4];
  *(v0 + 104) = __swift_project_boxed_opaque_existential_1(v4, v5);
  v6 = *MEMORY[0x277D00760];
  *(v0 + 192) = v6;
  v43 = v6;
  v42 = *(v2 + 104);
  *(v0 + 112) = v42;
  *(v0 + 120) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v42(v1, v6, v3);
  sub_24619F6CC();
  v7 = *(v2 + 8);
  *(v0 + 128) = v7;
  *(v0 + 136) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v1, v3);
  sub_24619FAEC();

  *(v0 + 16) = v41;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA28, &unk_2461A1600);
  v8 = sub_24619F8DC();
  MEMORY[0x24C19A830](v8);

  v42(v1, v43, v3);
  sub_24619F6CC();

  v7(v1, v3);
  sub_24619FAEC();

  v9 = sub_24619F1AC();
  v10 = MEMORY[0x24C19A8B0](v39, v9);
  MEMORY[0x24C19A830](v10);

  v42(v1, v43, v3);
  sub_24619F6CC();

  v40 = v7;
  v7(v1, v3);
  if (v41)
  {
    if (sub_24619AD6C(*(v0 + 40), v41))
    {
      v11 = *(v0 + 80);
      v12 = *(v0 + 64);
      v42(v11, v43, v12);
      sub_24619F6CC();
      v40(v11, v12);
LABEL_17:
      v34 = *(v0 + 128);
      v35 = *(v0 + 80);
      v36 = *(v0 + 64);
      (*(v0 + 112))(v35, *(v0 + 192), v36);
      sub_24619F6CC();
      v34(v35, v36);

      v37 = *(v0 + 8);

      return v37();
    }

    v14 = 0x65736C6166;
    v13 = 0xE500000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
    v14 = 1702195828;
  }

  v15 = *(v0 + 80);
  v16 = *(v0 + 64);
  v17 = *(v0 + 48);
  sub_24619FAEC();

  MEMORY[0x24C19A830](v14, v13);

  MEMORY[0x24C19A830](41, 0xE100000000000000);
  v42(v15, v43, v16);
  sub_24619F6CC();

  v40(v15, v16);
  v18 = *(v17 + 32);
  *(v0 + 196) = v18;
  v19 = -1;
  v20 = -1 << v18;
  if (-(-1 << v18) < 64)
  {
    v19 = ~(-1 << -v20);
  }

  v21 = v19 & *(v17 + 64);

  if (!v21)
  {
    v24 = 0;
    while (((63 - v20) >> 6) - 1 != v24)
    {
      v22 = v24 + 1;
      v23 = *(v0 + 48);
      v21 = *(v23 + 8 * v24++ + 72);
      if (v21)
      {
        goto LABEL_13;
      }
    }

    v44 = *(v0 + 128);
    v30 = *(v0 + 112);
    v31 = *(v0 + 192);
    v32 = *(v0 + 80);
    v33 = *(v0 + 64);

    v30(v32, v31, v33);
    sub_24619F6CC();
    v44(v32, v33);
    goto LABEL_17;
  }

  v22 = 0;
  v23 = *(v0 + 48);
LABEL_13:
  *(v0 + 144) = v21;
  *(v0 + 152) = v22;
  *(v0 + 160) = *(*(v23 + 56) + 8 * (__clz(__rbit64(v21)) | (v22 << 6)));
  sub_24619EFAC();

  *(v0 + 168) = sub_24619EF8C();
  v25 = sub_24619F44C();
  v27 = v26;

  *(v0 + 176) = v25;
  *(v0 + 184) = v27;
  sub_24619B410(qword_281391FB0, MEMORY[0x277D004C8], MEMORY[0x277D004D0]);
  v29 = sub_24619F99C();

  return MEMORY[0x2822009F8](sub_24619AA30, v29, v28);
}

uint64_t sub_24619AA30()
{
  sub_24619EF9C();

  return MEMORY[0x2822009F8](sub_24619AAC4, 0, 0);
}

uint64_t sub_24619AAC4(uint64_t (*a1)(), uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 152);
  v5 = (*(v3 + 144) - 1) & *(v3 + 144);
  if (v5)
  {
    v6 = *(v3 + 48);
LABEL_7:
    *(v3 + 144) = v5;
    *(v3 + 152) = v4;
    *(v3 + 160) = *(*(v6 + 56) + 8 * (__clz(__rbit64(v5)) | (v4 << 6)));
    sub_24619EFAC();

    *(v3 + 168) = sub_24619EF8C();
    v8 = sub_24619F44C();
    v10 = v9;

    *(v3 + 176) = v8;
    *(v3 + 184) = v10;
    sub_24619B410(qword_281391FB0, MEMORY[0x277D004C8], MEMORY[0x277D004D0]);
    v11 = sub_24619F99C();
    v13 = v12;
    a1 = sub_24619AA30;
    a2 = v11;
    a3 = v13;

    return MEMORY[0x2822009F8](a1, a2, a3);
  }

  else
  {
    while (1)
    {
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        __break(1u);
        return MEMORY[0x2822009F8](a1, a2, a3);
      }

      if (v7 >= (((1 << *(v3 + 196)) + 63) >> 6))
      {
        break;
      }

      v6 = *(v3 + 48);
      v5 = *(v6 + 8 * v7 + 64);
      ++v4;
      if (v5)
      {
        v4 = v7;
        goto LABEL_7;
      }
    }

    v23 = *(v3 + 128);
    v14 = *(v3 + 112);
    v15 = *(v3 + 192);
    v16 = *(v3 + 80);
    v17 = *(v3 + 64);

    v14(v16, v15, v17);
    sub_24619F6CC();
    v23(v16, v17);
    v18 = *(v3 + 128);
    v19 = *(v3 + 80);
    v20 = *(v3 + 64);
    (*(v3 + 112))(v19, *(v3 + 192), v20);
    sub_24619F6CC();
    v18(v19, v20);

    v21 = *(v3 + 8);

    return v21();
  }
}

uint64_t sub_24619AD6C(uint64_t a1, uint64_t a2)
{
  v4 = sub_24619F1AC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_24619B410(&qword_281391FA0, MEMORY[0x277D005E0], MEMORY[0x277D005F0]);
    v21 = sub_24619F87C();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_24619AF80()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ODIFieldsKey(uint64_t a1)
{
  result = qword_281391F58;
  if (!qword_281391F58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24619B084(uint64_t a1)
{
  result = sub_24619F46C();
  if (v2 <= 0x3F)
  {
    result = sub_24619F22C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_24619B150()
{
  v2 = *(sub_24619F46C() - 8);
  v3 = (*(v2 + 80) + 80) & ~*(v2 + 80);
  v4 = v0[7];
  v5 = v0[8];
  v6 = v0[9];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_246161518;

  return sub_24619A2C8((v0 + 2), v4, v5, v6, v0 + v3);
}

uint64_t sub_24619B244()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_24616D024;

  return sub_246199858(v2, v3, v4);
}

uint64_t objectdestroy_25Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_24619B344(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_24616D024;

  return sub_246199940(a1, v4, v5, v6);
}

uint64_t sub_24619B410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24619B458(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  v6 = sub_24619F7FC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_24619EEFC();
  v17 = MEMORY[0x277D004B0];
  __swift_allocate_boxed_opaque_existential_1(&v15);
  sub_24619EECC();
  sub_24616D05C(&v15, v3 + 24);
  sub_24616CB20(v3 + 24, &v15);
  __swift_project_boxed_opaque_existential_1(&v15, v16);
  (*(v7 + 104))(v9, *MEMORY[0x277D00770], v6);
  sub_24619F6DC();
  (*(v7 + 8))(v9, v6);
  __swift_destroy_boxed_opaque_existential_1(&v15);
  *(v3 + 16) = a3;
  type metadata accessor for ODIFieldsManager.FieldsKeeper();
  v10 = swift_allocObject();
  v11 = a3;
  swift_defaultActor_initialize();
  v12 = MEMORY[0x277D84F90];
  v10[14] = sub_2461899D8(MEMORY[0x277D84F90]);
  v10[15] = sub_246189BBC(v12);
  v10[16] = sub_246189DA4(v12);
  *(v4 + 64) = v10;
  return v4;
}

BOOL sub_24619B648(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v5 = 5;
      return v2 < v5;
    }

LABEL_6:
    v6 = v3 > 1;
    if (v3 ^ 3 | v4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v3 ^ 2 | v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v3 | v4) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v2 < v5;
  }

  if (*(a2 + 16))
  {
    v2 = 5;
    goto LABEL_6;
  }

  v10 = *(a1 + 8) < v4;
  if (v2 == v3)
  {
    return v10;
  }

  else
  {
    return v3 < v2;
  }
}

BOOL sub_24619B6F0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a2 + 16))
  {
    if (!*(a1 + 16))
    {
      v5 = 5;
      return v4 >= v5;
    }

LABEL_6:
    v6 = v2 > 1;
    if (v2 ^ 3 | v3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v2 ^ 2 | v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v2 | v3) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v4 >= v5;
  }

  if (*(a1 + 16))
  {
    v4 = 5;
    goto LABEL_6;
  }

  v10 = *(a2 + 8) < v3;
  if (v4 == v2)
  {
    v11 = v10;
  }

  else
  {
    v11 = v2 < v4;
  }

  return !v11;
}

BOOL sub_24619B7A0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 16))
  {
    if (!*(a2 + 16))
    {
      v5 = 5;
      return v2 >= v5;
    }

LABEL_6:
    v6 = v3 > 1;
    if (v3 ^ 3 | v4)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v3 ^ 2 | v4)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v3 | v4) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v2 >= v5;
  }

  if (*(a2 + 16))
  {
    v2 = 5;
    goto LABEL_6;
  }

  v10 = *(a1 + 8) < v4;
  if (v2 == v3)
  {
    v11 = v10;
  }

  else
  {
    v11 = v3 < v2;
  }

  return !v11;
}

BOOL sub_24619B850(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a2 + 16))
  {
    if (!*(a1 + 16))
    {
      v5 = 5;
      return v4 < v5;
    }

LABEL_6:
    v6 = v2 > 1;
    if (v2 ^ 3 | v3)
    {
      v7 = 4;
    }

    else
    {
      v7 = 3;
    }

    if (v2 ^ 2 | v3)
    {
      v8 = v7;
    }

    else
    {
      v8 = 2;
    }

    v5 = (v2 | v3) != 0;
    if (v6)
    {
      v5 = v8;
    }

    return v4 < v5;
  }

  if (*(a1 + 16))
  {
    v4 = 5;
    goto LABEL_6;
  }

  v10 = *(a2 + 8) < v3;
  if (v4 == v2)
  {
    return v10;
  }

  else
  {
    return v2 < v4;
  }
}

uint64_t sub_24619B8F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_24619E860(*a1, a1[1], a1[2]);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 17) = 0;
  return result;
}

void sub_24619B938(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = 5;
  if (*(v1 + 16))
  {
    v4 = *v1;
    v2 = 0;
    v3 = 0;
  }

  *a1 = v4;
  a1[1] = v2;
  a1[2] = v3;
}

uint64_t sub_24619B990()
{
  v1 = *v0;
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](v1);
  return sub_24619FCAC();
}

uint64_t sub_24619BA04(uint64_t a1)
{
  v2 = *v1;
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](v2);
  return sub_24619FCAC();
}

unint64_t *sub_24619BA48@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_24619BAC4()
{
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](0);
  return sub_24619FCAC();
}

uint64_t sub_24619BB30(uint64_t a1)
{
  sub_24619FC8C();
  MEMORY[0x24C19ABC0](0);
  return sub_24619FCAC();
}

uint64_t sub_24619BB80()
{
  v1 = v0;
  v2 = sub_24619F7FC();
  v44 = *(v2 - 8);
  v45 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24619F60C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v43 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = sub_24619F11C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v42 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  swift_beginAccess();
  v15 = v14;
  v16 = v1 + v14;
  v17 = v1;
  v18 = *(v6 + 16);
  v18(v10, v16, v5);
  if ((*(v6 + 88))(v10, v5) == *MEMORY[0x277D006F0])
  {
    v40 = v4;
    (*(v6 + 96))(v10, v5);
    v38 = v12;
    v39 = v11;
    v19 = *(v12 + 32);
    v20 = v42;
    v19(v42, v10, v11);
    Strong = swift_unknownObjectWeakLoadStrong();
    v22 = v18;
    v23 = v43;
    v41 = v15;
    if (Strong)
    {
      v24 = Strong;
      v22(v43, v17 + v41, v5);
      sub_24619F5FC();
      v37 = v22;
      (*(v6 + 8))(v23, v5);
      v25 = sub_24619F88C();

      sub_24619F10C();
      v26 = sub_24619F88C();

      [v24 didChangeStateWith:v25 assessmentID:v26];

      v22 = v37;
      swift_unknownObjectRelease();
    }

    v27 = *(v17 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24);
    v37 = *(v17 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
    v36 = __swift_project_boxed_opaque_existential_1((v17 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), v27);
    v46 = 0;
    v47 = 0xE000000000000000;
    sub_24619FAEC();

    v46 = 0xD000000000000029;
    v47 = 0x80000002461A9930;
    v28 = sub_24619F10C();
    MEMORY[0x24C19A830](v28);

    MEMORY[0x24C19A830](8250, 0xE200000000000000);
    v22(v23, v17 + v41, v5);
    v29 = sub_24619F5FC();
    v31 = v30;
    (*(v6 + 8))(v23, v5);
    MEMORY[0x24C19A830](v29, v31);

    MEMORY[0x24C19A830](93, 0xE100000000000000);
    v33 = v44;
    v32 = v45;
    v34 = v40;
    (*(v44 + 104))(v40, *MEMORY[0x277D00758], v45);
    sub_24619F6DC();

    (*(v33 + 8))(v34, v32);
    result = (*(v38 + 8))(v20, v39);
  }

  else
  {
    result = (*(v6 + 8))(v10, v5);
  }

  if (*(v17 + 136) == 1 && !(*(v17 + 120) ^ 2 | *(v17 + 128)))
  {
    swift_beginAccess();
    sub_24619F2FC();
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24619C0B4(int64_t a1, int64_t a2, char a3, uint64_t a4)
{
  v9 = sub_24619F7FC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v4 + 120);
  if (*(v4 + 136))
  {
    if ((a3 & 1) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_6;
  }

  if (a3)
  {
    v13 = 5;
LABEL_6:
    v14 = 1;
    if (a1 <= 1)
    {
      if (!(a1 | a2))
      {
        goto LABEL_17;
      }
    }

    else
    {
      if (a1 ^ 2 | a2)
      {
        if (a1 ^ 3 | a2)
        {
          if (v13 < 4)
          {
            goto LABEL_20;
          }
        }

        else if (v13 < 3)
        {
          goto LABEL_20;
        }

LABEL_17:
        __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24));
        v24 = 0;
        v25 = 0xE000000000000000;
        sub_24619FAEC();
        v27 = v24;
        v28 = v25;
        MEMORY[0x24C19A830](0xD00000000000001FLL, 0x80000002461A98F0);
        v24 = a1;
        v25 = a2;
        v26 = a3 & 1;
        sub_24619FB6C();
        (*(v10 + 104))(v12, *MEMORY[0x277D00758], v9);
        sub_24619F6CC();

        return (*(v10 + 8))(v12, v9);
      }

      v14 = 2;
    }

    if (v13 >= v14)
    {
      goto LABEL_17;
    }

    goto LABEL_20;
  }

  if (v13 == a1)
  {
    if (*(v4 + 128) < a2)
    {
      goto LABEL_20;
    }

    goto LABEL_17;
  }

  if (v13 <= a1)
  {
    goto LABEL_17;
  }

LABEL_20:
  v16 = *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24);
  v22[1] = *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
  v22[0] = __swift_project_boxed_opaque_existential_1((v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), v16);
  v24 = 0;
  v25 = 0xE000000000000000;
  v23 = a4;
  v17 = v4;
  sub_24619FAEC();
  v27 = v24;
  v28 = v25;
  MEMORY[0x24C19A830](0xD00000000000001FLL, 0x80000002461A9910);
  v24 = a1;
  v25 = a2;
  v18 = a3 & 1;
  v26 = v18;
  sub_24619FB6C();
  (*(v10 + 104))(v12, *MEMORY[0x277D00758], v9);
  sub_24619F6CC();

  (*(v10 + 8))(v12, v9);
  v19 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  swift_beginAccess();
  v20 = sub_24619F60C();
  v21 = v23;
  (*(*(v20 - 8) + 24))(v17 + v19, v23, v20);
  swift_endAccess();
  *(v17 + 120) = a1;
  *(v17 + 128) = a2;
  *(v17 + 136) = v18;
  sub_24619BB80();
  return sub_24619C48C(v21, a1, a2, v18);
}

uint64_t sub_24619C48C(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v42 = a3;
  v5 = sub_24619F58C();
  v38 = *(v5 - 8);
  v39 = v5;
  MEMORY[0x28223BE20](v5);
  v37 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_24619F06C();
  v41 = *(v43 - 8);
  v7 = MEMORY[0x28223BE20](v43);
  v40 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v10 = &v36 - v9;
  v11 = sub_24619F11C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_24619F60C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v36 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 88))(v18, v15);
  if (v19 == *MEMORY[0x277D006F0])
  {
    (*(v16 + 96))(v18, v15);
    (*(v12 + 32))(v14, v18, v11);
    sub_24619F10C();
    sub_24619F04C();
    v24 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
    v25 = v44;
    swift_beginAccess();
    v26 = *(v25 + v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v25 + v24) = v26;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v26 = sub_246165784(0, v26[2] + 1, 1, v26);
      *(v25 + v24) = v26;
    }

    v29 = v26[2];
    v28 = v26[3];
    if (v29 >= v28 >> 1)
    {
      v26 = sub_246165784((v28 > 1), v29 + 1, 1, v26);
    }

    v26[2] = v29 + 1;
    (*(v41 + 32))(v26 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v29, v10, v43);
    *(v25 + v24) = v26;
    swift_endAccess();
    return (*(v12 + 8))(v14, v11);
  }

  else if (v19 == *MEMORY[0x277D006E8])
  {
    (*(v16 + 96))(v18, v15);
    v21 = v37;
    v20 = v38;
    v22 = v39;
    (*(v38 + 32))(v37, v18, v39);
    sub_24619F57C();
    sub_24619F04C();
    v30 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
    v31 = v44;
    swift_beginAccess();
    v32 = *(v31 + v30);
    v33 = swift_isUniquelyReferenced_nonNull_native();
    *(v31 + v30) = v32;
    if ((v33 & 1) == 0)
    {
      v32 = sub_246165784(0, v32[2] + 1, 1, v32);
      *(v31 + v30) = v32;
    }

    v35 = v32[2];
    v34 = v32[3];
    if (v35 >= v34 >> 1)
    {
      v32 = sub_246165784((v34 > 1), v35 + 1, 1, v32);
    }

    v32[2] = v35 + 1;
    (*(v41 + 32))(v32 + ((*(v41 + 80) + 32) & ~*(v41 + 80)) + *(v41 + 72) * v35, v40, v43);
    *(v31 + v30) = v32;
    swift_endAccess();
    return (*(v20 + 8))(v21, v22);
  }

  else
  {
    return (*(v16 + 8))(v18, v15);
  }
}

uint64_t sub_24619CC30()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  MEMORY[0x28223BE20](v0 - 8);
  v17 = &v16 - v1;
  v2 = sub_24619EFDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24619F60C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v3 + 104))(v5, *MEMORY[0x277D00510], v2);
  sub_24619F63C();
  (*(v3 + 8))(v5, v2);
  sub_24619F5FC();
  v13 = sub_24619FB1C();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  sub_24619F5EC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_24619C0B4(1, 0, 1, v12);
  return (v14)(v12, v6);
}

uint64_t sub_24619CF04()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  MEMORY[0x28223BE20](v0 - 8);
  v17 = &v16 - v1;
  v2 = sub_24619EFDC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24619F60C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v16 - v11;
  (*(v3 + 104))(v5, *MEMORY[0x277D00518], v2);
  sub_24619F63C();
  (*(v3 + 8))(v5, v2);
  sub_24619F5FC();
  v13 = sub_24619FB1C();
  (*(*(v13 - 8) + 56))(v17, 1, 1, v13);
  sub_24619F5EC();
  v14 = *(v7 + 8);
  v14(v10, v6);
  sub_24619C0B4(2, 0, 1, v12);
  return (v14)(v12, v6);
}

uint64_t sub_24619D1D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a2;
  v50 = sub_24619F06C();
  v5 = *(v50 - 8);
  v6 = MEMORY[0x28223BE20](v50);
  v36 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v37 = &v32 - v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - v10;
  v12 = sub_24619F7FC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 24);
  v47 = *(v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger + 32);
  v43 = (v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger);
  __swift_project_boxed_opaque_existential_1((v2 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger), v16);
  v53 = 0;
  v54 = 0xE000000000000000;
  sub_24619FAEC();
  MEMORY[0x24C19A830](0xD000000000000046, 0x80000002461A97B0);
  v49 = a1;
  MEMORY[0x24C19A830](a1, v48);
  v17 = *(v13 + 104);
  v41 = *MEMORY[0x277D00758];
  v42 = v13 + 104;
  v40 = v17;
  v17(v15);
  sub_24619F6DC();

  v18 = *(v13 + 8);
  v44 = v15;
  v45 = v13 + 8;
  v39 = v18;
  v18(v15, v12);
  v19 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  swift_beginAccess();
  v38 = v19;
  v20 = *&v19[v2];
  v46 = *(v20 + 16);
  if (!v46)
  {
LABEL_12:
    __swift_project_boxed_opaque_existential_1(v43, v43[3]);
    v51 = 0;
    v52 = 0xE000000000000000;
    sub_24619FAEC();

    v51 = 0xD000000000000027;
    v52 = 0x80000002461A9800;
    MEMORY[0x24C19A830](v49, v48);
    v27 = v44;
    v40(v44, v41, v12);
    sub_24619F6FC();

    return v39(v27, v12);
  }

  v33 = v12;
  v34 = v2;
  v35 = (v5[80] + 32) & ~v5[80];
  v21 = v20 + v35;
  v47 = v5 + 16;
  v22 = (v5 + 8);

  v23 = 0;
  while (1)
  {
    if (v23 >= *(v20 + 16))
    {
      __break(1u);
      goto LABEL_20;
    }

    v3 = *(v5 + 9) * v23;
    v15 = v5;
    v5 = *(v5 + 2);
    v19 = v50;
    (v5)(v11, v21 + v3, v50);
    v24 = sub_24619F03C();
    if (!v25)
    {
      (*v22)(v11, v19);
      goto LABEL_4;
    }

    if (v24 == v49 && v25 == v48)
    {
      break;
    }

    v26 = sub_24619FBFC();

    v19 = *v22;
    (*v22)(v11, v50);
    if (v26)
    {
      goto LABEL_14;
    }

LABEL_4:
    ++v23;
    v5 = v15;
    if (v46 == v23)
    {

      v12 = v33;
      goto LABEL_12;
    }
  }

  v19 = *v22;
  (*v22)(v11, v50);
LABEL_14:

  v20 = v34;
  v11 = v38;
  v29 = *&v38[v34];
  if (v23 >= *(v29 + 16))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v30 = v36;
  v31 = v50;
  (v5)(v36, v29 + v35 + v3, v50);
  v5 = v37;
  sub_24619F05C();
  (v19)(v30, v31);
  swift_beginAccess();
  v19 = *&v11[v20];
  result = swift_isUniquelyReferenced_nonNull_native();
  *&v11[v20] = v19;
  if (result)
  {
    goto LABEL_16;
  }

LABEL_21:
  result = sub_24619E1E8(v19);
  v19 = result;
  *&v11[v20] = result;
LABEL_16:
  if (v23 >= *(v19 + 2))
  {
    __break(1u);
  }

  else
  {
    v15[5](&v19[v35 + v3], v5, v50);
    *&v11[v20] = v19;
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_24619D774(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = sub_24619F1AC();
  result = MEMORY[0x28223BE20](v6);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 16);
  if (!v11)
  {
    return result;
  }

  v12 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized;
  v14 = *(v8 + 16);
  v13 = v8 + 16;
  v15 = (a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64)));
  v33 = *(v13 + 56);
  v34 = v14;
  HIDWORD(v32) = a2 & 1;
  v35 = v13;
  v16 = (v13 - 8);
  v14(v10, v15, v6);
  while (1)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *(v3 + v12);
    v18 = v36;
    *(v3 + v12) = 0x8000000000000000;
    v19 = sub_246165BBC(v10);
    v21 = v18[2];
    v22 = (v20 & 1) == 0;
    v23 = __OFADD__(v21, v22);
    v24 = v21 + v22;
    if (v23)
    {
      break;
    }

    v25 = v20;
    if (v18[3] < v24)
    {
      sub_246168ADC(v24, isUniquelyReferenced_nonNull_native);
      v19 = sub_246165BBC(v10);
      if ((v25 & 1) != (v26 & 1))
      {
        goto LABEL_19;
      }

LABEL_11:
      v27 = v36;
      if (v25)
      {
        goto LABEL_3;
      }

      goto LABEL_12;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_11;
    }

    v31 = v19;
    sub_24616A104();
    v19 = v31;
    v27 = v36;
    if (v25)
    {
LABEL_3:
      *(v27[7] + v19) = BYTE4(v32);
      (*v16)(v10, v6);
      goto LABEL_4;
    }

LABEL_12:
    v27[(v19 >> 6) + 8] |= 1 << v19;
    v28 = v19;
    v34(v27[6] + v19 * v33, v10, v6);
    *(v27[7] + v28) = BYTE4(v32);
    (*v16)(v10, v6);
    v29 = v27[2];
    v23 = __OFADD__(v29, 1);
    v30 = v29 + 1;
    if (v23)
    {
      goto LABEL_18;
    }

    v27[2] = v30;
LABEL_4:
    *(v3 + v12) = v27;

    result = swift_endAccess();
    v15 += v33;
    if (!--v11)
    {
      return result;
    }

    v34(v10, v15, v6);
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  result = sub_24619FC1C();
  __break(1u);
  return result;
}

uint64_t sub_24619DA28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24619E908(a1, v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F958, &qword_2461A1228);
  v13 = (*(*(v12 - 8) + 48))(v11, 5, v12);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      swift_beginAccess();
      sub_24619F33C();
    }

    else if (v13 == 4)
    {
      swift_beginAccess();
      sub_24619F34C();
    }

    else
    {
      swift_beginAccess();
      sub_24619F31C();
    }

    goto LABEL_12;
  }

  if (v13)
  {
    if (v13 == 1)
    {
      swift_beginAccess();
      sub_24619F32C();
    }

    else
    {
      swift_beginAccess();
      sub_24619F2FC();
    }

LABEL_12:
    swift_endAccess();
    goto LABEL_13;
  }

  sub_24619E96C(v11, v8);
  swift_beginAccess();
  sub_24619F30C();
  swift_endAccess();
  sub_24619E9DC(v8);
LABEL_13:
  v14 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  swift_beginAccess();
  v15 = sub_24619F3FC();
  return (*(*(v15 - 8) + 16))(a2, v3 + v14, v15);
}

uint64_t sub_24619DCC4()
{
  v1 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment;
  v2 = sub_24619F60C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTiming;
  v4 = sub_24619F3FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  __swift_destroy_boxed_opaque_existential_1((v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger));

  sub_24616CAF8(v0 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_delegate);
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24619DDF4(uint64_t a1)
{
  result = sub_24619F60C();
  if (v2 <= 0x3F)
  {
    result = sub_24619F3FC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for State(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for State(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
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

  *(result + 17) = v3;
  return result;
}

uint64_t sub_24619DF80(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24619DFA0(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DeviceDataOrigin(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DeviceDataOrigin(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_24619E13C()
{
  result = qword_27EE3FA30;
  if (!qword_27EE3FA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3FA30);
  }

  return result;
}

unint64_t sub_24619E194()
{
  result = qword_27EE3FA38;
  if (!qword_27EE3FA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3FA38);
  }

  return result;
}

BOOL sub_24619E1FC(unint64_t a1, uint64_t a2, char a3, unint64_t a4, unint64_t a5, char a6)
{
  if (a3)
  {
    if (a1 > 1)
    {
      if (a1 ^ 2 | a2)
      {
        if (!(a1 ^ 3 | a2))
        {
          return (a6 & 1) != 0 && !(a4 ^ 3 | a5);
        }

        if ((a6 & 1) != 0 && __PAIR128__(a5, a4) >= 4)
        {
          return 1;
        }
      }

      else if ((a6 & 1) != 0 && !(a4 ^ 2 | a5))
      {
        return 1;
      }

      return 0;
    }

    if (!(a1 | a2))
    {
      return (a6 & 1) != 0 && !(a4 | a5);
    }

    return (a6 & 1) != 0 && !(a4 ^ 1 | a5);
  }

  else
  {
    if (a6)
    {
      return 0;
    }

    return a1 == a4 && a2 == a5;
  }
}

uint64_t sub_24619E2C0(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v39 = a3;
  v35 = a2;
  v45 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  MEMORY[0x28223BE20](v5 - 8);
  v42 = &v30 - v6;
  v7 = sub_24619F60C();
  v43 = *(v7 - 8);
  v44 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v40 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v41 = &v30 - v10;
  v11 = sub_24619F64C();
  v37 = *(v11 - 8);
  v38 = v11;
  MEMORY[0x28223BE20](v11);
  v36 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24619EFDC();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  *(v3 + 120) = 0;
  *(v3 + 128) = 0;
  *(v3 + 136) = 1;
  *(v3 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_armandDataInitialized) = MEMORY[0x277D84F98];
  *(v3 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_assessmentTriggered) = 0;
  sub_24619F3EC();
  v17 = OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_feedbackTracker;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3F850, &unk_2461A18B0);
  sub_24619F06C();
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_2461A0FC0;
  v34 = "com.apple.tdm.trustedinference";
  v32 = *MEMORY[0x277D00520];
  v31 = *(v14 + 104);
  v31(v16);
  sub_24619EFCC();
  v33 = *(v14 + 8);
  v33(v16, v13);
  sub_24619F04C();
  *(v3 + v17) = v18;
  swift_unknownObjectWeakInit();
  sub_24616CB20(v45, v3 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_logger);
  swift_unknownObjectWeakAssign();
  v19 = type metadata accessor for ODIPartialAssessmentInitiator(0);
  v20 = objc_allocWithZone(v19);
  v21 = v35;
  *&v20[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_providerID] = v35;
  sub_24619F8BC();
  v22 = v21;
  v23 = v36;
  sub_24619F62C();
  (*(v37 + 32))(&v20[OBJC_IVAR____TtC7CoreODI29ODIPartialAssessmentInitiator_adapter], v23, v38);
  v46.receiver = v20;
  v46.super_class = v19;
  *(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_initiator) = objc_msgSendSuper2(&v46, sel_init);
  (v31)(v16, v32, v13);
  v24 = v40;
  sub_24619F63C();
  v33(v16, v13);
  sub_24619F5FC();
  v25 = sub_24619FB1C();
  (*(*(v25 - 8) + 56))(v42, 1, 1, v25);
  v26 = v41;
  sub_24619F5EC();
  __swift_destroy_boxed_opaque_existential_1(v45);
  v28 = v43;
  v27 = v44;
  (*(v43 + 8))(v24, v44);
  (*(v28 + 32))(v4 + OBJC_IVAR____TtC7CoreODI22ODISessionStateMachine_partialAssessment, v26, v27);
  return v4;
}

uint64_t sub_24619E860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = 3;
  if (a2 | a3)
  {
    v3 = 0;
  }

  if (a1 == 5)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  if (a1 == 4)
  {
    v4 = 4;
  }

  if (a1 != 3)
  {
    v3 = v4;
  }

  if (a1 == 2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  if (a1 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v5;
  }

  if (a1 <= 2)
  {
    return v6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_24619E908(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ODISessionStateMachine.ApplyTimingCase(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24619E96C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24619E9DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EE3FA20, &unk_2461A1440);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for EmptyAssessmentError(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for EmptyAssessmentError(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_24619EB54(uint64_t a1)
{
  sub_24619EBAC();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_24619EBAC()
{
  if (!qword_281391838)
  {
    sub_24619EBF4(0);
    if (!v1)
    {
      atomic_store(v0, &qword_281391838);
    }
  }
}

void sub_24619EBF4(uint64_t a1)
{
  if (!qword_281391830)
  {
    sub_24619FB1C();
    v1 = sub_24619FA6C();
    if (!v2)
    {
      atomic_store(v1, &qword_281391830);
    }
  }
}

unint64_t sub_24619EC50()
{
  result = qword_27EE3FA40;
  if (!qword_27EE3FA40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3FA40);
  }

  return result;
}