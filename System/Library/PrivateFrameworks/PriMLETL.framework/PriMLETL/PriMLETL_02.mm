uint64_t sub_25F596730()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_25F584D10;
  }

  else
  {
    v2 = sub_25F596844;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F596844()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v38 = *(v0 + 488);
    v36 = *(v0 + 552);
    v37 = *(v0 + 472);
    v33 = *(v0 + 448);
    v44 = *(v0 + 432);
    v40 = *(v0 + 408);
    v41 = *(v0 + 416);
    v42 = *(v0 + 384);
    v43 = *(v0 + 392);
    v34 = *(v0 + 376);
    v35 = *(v0 + 360);
    v32 = *(v0 + 352);
    v26 = *(v0 + 336);
    v27 = *(v0 + 328);
    v28 = *(v0 + 320);
    v29 = *(v0 + 344);
    v45 = *(v0 + 304);
    v39 = *(v0 + 296);
    v3 = *(v0 + 288);
    v25 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v30 = *(v0 + 192);
    v31 = *(v0 + 208);
    v23 = *(v6 + 48);
    v24 = *(v2 + 48);
    v8 = *(v39 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v23, v1 + v24, v5);
    v10 = *(v6 + 48);
    v8(v45, v7, v3);
    v9(v25, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v27 + 8))(v29, v28);
    (*(v27 + 32))(v29, v26, v28);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x6574616C706D6574;
    *(inited + 40) = 0xE800000000000000;
    v12 = sub_25F5E3D64();
    *(inited + 72) = v12;
    *(inited + 80) = sub_25F59CA78(&qword_27FD9DF68, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v30, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_25F5E5EE0;
    *(v14 + 32) = 0xD0000000000000A0;
    *(v14 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v31 + v33, v32, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v37(v34, v36, v35);
    *(v14 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v14 + 48));
    sub_25F5E3BB4();
    v38(v34, v35);
    sub_25F571A78(v14);
    swift_setDeallocating();
    sub_25F57C148(v14 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v25, v5);
    (*(v39 + 8))(v45, v3);
    v44(v41, v42);
    (*(v43 + 32))(v41, v40, v42);
  }

  v15 = *(v0 + 432);
  v16 = *(v0 + 408);
  v17 = *(v0 + 384);
  v18 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v18 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v15(v16, v17);
  v19 = swift_task_alloc();
  *(v0 + 520) = v19;
  v20 = sub_25F59CA78(&qword_27FD9DF58, MEMORY[0x277D71A98], MEMORY[0x277D71A48]);
  *v19 = v0;
  v19[1] = sub_25F584A38;
  v21 = *(v0 + 216);

  return MEMORY[0x282165A58](v21, v20);
}

uint64_t sub_25F596E70(uint64_t a1)
{
  v2 = sub_25F5E4244();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v14[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_25F5E3D64();
  v14[3] = v7;
  v14[4] = sub_25F59CA78(&qword_27FD9DF68, MEMORY[0x277D0E698], MEMORY[0x277D0E680]);
  boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(v14);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1Tm, a1, v7);
  v9 = MEMORY[0x277D42E18];
  sub_25F5E41D4();
  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v10 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F5E5EE0;
  (*(v3 + 16))(v11 + v10, v6, v2);
  MEMORY[0x25F8E2880](v11, v2, v9);

  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_25F597084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[25] = a2;
  v3[26] = a3;
  v3[24] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF28, &unk_25F5E7930);
  v3[27] = v4;
  v3[28] = *(v4 - 8);
  v3[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF30, &unk_25F5E8570);
  v3[30] = swift_task_alloc();
  v3[31] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF38, &unk_25F5E7940);
  v3[32] = swift_task_alloc();
  v5 = sub_25F5E3C64();
  v3[33] = v5;
  v3[34] = *(v5 - 8);
  v3[35] = swift_task_alloc();
  v6 = sub_25F5E3C74();
  v3[36] = v6;
  v3[37] = *(v6 - 8);
  v3[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF40, &unk_25F5E8580);
  v3[39] = swift_task_alloc();
  v7 = sub_25F5E3F84();
  v3[40] = v7;
  v3[41] = *(v7 - 8);
  v3[42] = swift_task_alloc();
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE70, &qword_25F5E77F0);
  v3[44] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF48, &unk_25F5E7950);
  v3[45] = v8;
  v3[46] = *(v8 - 8);
  v3[47] = swift_task_alloc();
  v9 = sub_25F5E4114();
  v3[48] = v9;
  v3[49] = *(v9 - 8);
  v3[50] = swift_task_alloc();
  v3[51] = swift_task_alloc();
  v3[52] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F597434, 0, 0);
}

uint64_t sub_25F597434()
{
  v17 = *(v0 + 408);
  v2 = *(v0 + 392);
  v1 = *(v0 + 400);
  v3 = *(v0 + 376);
  v21 = *(v0 + 384);
  v4 = *(v0 + 368);
  v19 = *(v0 + 360);
  v16 = *(v0 + 352);
  v5 = *(v0 + 208);
  v20 = *(v0 + 312);
  v6 = *(v0 + 192);
  *(swift_task_alloc() + 16) = v6;
  sub_25F5E4134();

  *(v0 + 424) = sub_25F59CA78(&qword_27FD9DF18, MEMORY[0x277D42D40], MEMORY[0x277D42D38]);
  sub_25F5E4284();
  v18 = *(v2 + 8);
  *(v0 + 432) = v18;
  *(v0 + 440) = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v18(v1, v21);
  v7 = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  *(v0 + 448) = OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy;
  v8 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature;
  *(v0 + 456) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_temperature);
  *(v0 + 556) = *(v8 + 8);
  v9 = v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed;
  *(v0 + 464) = *(v5 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_seed);
  *(v0 + 557) = *(v9 + 8);
  sub_25F573B94(v5 + v7, v16, &qword_27FD9DE70, &qword_25F5E77F0);
  sub_25F5E3AA4();
  sub_25F5E3A94();
  sub_25F5E3A74();
  sub_25F5E3A84();
  *(v0 + 552) = *MEMORY[0x277D0E548];
  v10 = *(v4 + 104);
  *(v0 + 472) = v10;
  *(v0 + 480) = (v4 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v10(v3);
  sub_25F5E4264();
  v11 = *(v4 + 8);
  *(v0 + 488) = v11;
  *(v0 + 496) = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v3, v19);
  v18(v17, v21);
  v12 = sub_25F5E3F74();
  (*(*(v12 - 8) + 56))(v20, 1, 1, v12);
  sub_25F5E3F64();
  v13 = swift_task_alloc();
  *(v0 + 504) = v13;
  *v13 = v0;
  v13[1] = sub_25F5977B8;
  v14 = *(v0 + 240);

  return MEMORY[0x282166B58](v14, 0xD00000000000001CLL, 0x800000025F5EC450);
}

uint64_t sub_25F5977B8()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_25F58C4C8;
  }

  else
  {
    v2 = sub_25F5978CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F5978CC()
{
  v1 = *(v0 + 240);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF50, &unk_25F5E8590);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_25F57C148(v1, &qword_27FD9DF30, &unk_25F5E8570);
  }

  else
  {
    v39 = *(v0 + 488);
    v37 = *(v0 + 552);
    v38 = *(v0 + 472);
    v34 = *(v0 + 448);
    v45 = *(v0 + 432);
    v41 = *(v0 + 408);
    v42 = *(v0 + 416);
    v43 = *(v0 + 384);
    v44 = *(v0 + 392);
    v35 = *(v0 + 376);
    v36 = *(v0 + 360);
    v33 = *(v0 + 352);
    v27 = *(v0 + 336);
    v28 = *(v0 + 328);
    v29 = *(v0 + 320);
    v30 = *(v0 + 344);
    v46 = *(v0 + 304);
    v40 = *(v0 + 296);
    v3 = *(v0 + 288);
    v26 = *(v0 + 280);
    v5 = *(v0 + 264);
    v4 = *(v0 + 272);
    v6 = *(v0 + 248);
    v7 = *(v0 + 256);
    v31 = *(v0 + 192);
    v32 = *(v0 + 208);
    v24 = *(v6 + 48);
    v25 = *(v2 + 48);
    v8 = *(v40 + 32);
    v8(v7, v1, v3);
    v9 = *(v4 + 32);
    v9(v7 + v24, v1 + v25, v5);
    v10 = *(v6 + 48);
    v8(v46, v7, v3);
    v9(v26, v7 + v10, v5);
    sub_25F5E3C54();
    (*(v28 + 8))(v30, v29);
    (*(v28 + 32))(v30, v27, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF60, &unk_25F5E7960);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25F5E5EE0;
    *(inited + 32) = 0x74706D6F7270;
    *(inited + 40) = 0xE600000000000000;
    v12 = sub_25F5E4244();
    v13 = MEMORY[0x277D42E20];
    *(inited + 72) = v12;
    *(inited + 80) = v13;
    boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm((inited + 48));
    (*(*(v12 - 8) + 16))(boxed_opaque_existential_1Tm, v31, v12);
    sub_25F572474(inited);
    swift_setDeallocating();
    sub_25F57C148(inited + 32, &qword_27FD9DC60, &qword_25F5E68C0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB50, &unk_25F5E5F40);
    v15 = swift_initStackObject();
    *(v15 + 16) = xmmword_25F5E5EE0;
    *(v15 + 32) = 0xD0000000000000A0;
    *(v15 + 40) = 0x800000025F5EC290;
    sub_25F573B94(v32 + v34, v33, &qword_27FD9DE70, &qword_25F5E77F0);
    sub_25F5E3AA4();
    sub_25F5E3A94();
    sub_25F5E3A74();
    sub_25F5E3A84();
    v38(v35, v37, v36);
    *(v15 + 72) = sub_25F5E3AB4();
    __swift_allocate_boxed_opaque_existential_1Tm((v15 + 48));
    sub_25F5E3BB4();
    v39(v35, v36);
    sub_25F571A78(v15);
    swift_setDeallocating();
    sub_25F57C148(v15 + 32, &qword_27FD9E6B0, &unk_25F5E85A0);
    sub_25F5E3C34();

    (*(v4 + 8))(v26, v5);
    (*(v40 + 8))(v46, v3);
    v45(v42, v43);
    (*(v44 + 32))(v42, v41, v43);
  }

  v16 = *(v0 + 432);
  v17 = *(v0 + 408);
  v18 = *(v0 + 384);
  v19 = *(v0 + 208);
  sub_25F5E4254();
  *(v0 + 184) = *(v19 + 16);
  sub_25F5E39D4();
  sub_25F5E4274();
  v16(v17, v18);
  v20 = swift_task_alloc();
  *(v0 + 520) = v20;
  v21 = sub_25F59CA78(&qword_27FD9DF58, MEMORY[0x277D71A98], MEMORY[0x277D71A48]);
  *v20 = v0;
  v20[1] = sub_25F586040;
  v22 = *(v0 + 216);

  return MEMORY[0x282165A58](v22, v21);
}

uint64_t sub_25F597EC4(uint64_t a1)
{
  v1 = sub_25F5E4244();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x277D42E18];
  sub_25F5E41E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DF70, &unk_25F5E7970);
  v7 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_25F5E5EE0;
  (*(v2 + 16))(v8 + v7, v5, v1);
  MEMORY[0x25F8E2880](v8, v1, v6);

  return (*(v2 + 8))(v5, v1);
}

uint64_t MultiModalLLMInference.deinit()
{

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);
  return v0;
}

uint64_t MultiModalLLMInference.__deallocating_deinit()
{

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_samplingStrategy, &qword_27FD9DE70, &qword_25F5E77F0);

  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_promptTemplate, &qword_27FD9DE80, &unk_25F5E7800);
  sub_25F57C148(v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_parsedPromptTemplate, &qword_27FD9DE78, &qword_25F5E77F8);

  return swift_deallocClassInstance();
}

uint64_t sub_25F5981D8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference__modelVersion);

  return v1;
}

uint64_t sub_25F598218(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_25F598240, 0, 0);
}

uint64_t sub_25F598240()
{
  v1 = v0[4];

  v2 = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = sub_25F59CAFC;
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[2];
  v7 = v0[3];

  return sub_25F598744(v5, v4, v6, v7);
}

uint64_t sub_25F5982FC(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25F598324, 0, 0);
}

uint64_t sub_25F598324()
{

  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_25F59CB00;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_25F59AB20(v4, v2, v3);
}

uint64_t type metadata accessor for MultiModalLLMInference(uint64_t a1)
{
  result = qword_27FD9E068;
  if (!qword_27FD9E068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F598430(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E75426C65646F6DLL && a2 == 0xED00004449656C64;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4965736163657375 && a2 == 0xE900000000000064 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4374706D6F7270 && a2 == 0xEC0000006769666ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x616C436567616D69 && a2 == 0xEF6874646957706DLL || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5EC410 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x706D61534B706F74 && a2 == 0xEC000000676E696CLL || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x537375656C63756ELL && a2 == 0xEF676E696C706D61 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74617265706D6574 && a2 == 0xEB00000000657275 || (sub_25F5E4B84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 1684366707 && a2 == 0xE400000000000000)
  {

    return 8;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_25F598744(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_25F5E3D44();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v6 = sub_25F5E39F4();
  v4[19] = v6;
  v4[20] = *(v6 - 8);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v7 = sub_25F5E3CC4();
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  v8 = sub_25F5E3F54();
  v4[30] = v8;
  v4[31] = *(v8 - 8);
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v4[34] = swift_task_alloc();
  v4[35] = swift_task_alloc();
  v9 = sub_25F5E4234();
  v4[36] = v9;
  v4[37] = *(v9 - 8);
  v4[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F5989F0, 0, 0);
}

uint64_t sub_25F5989F0()
{
  v148 = v0;
  v1 = (*(v0 + 80) + OBJC_IVAR____TtC8PriMLETL22MultiModalLLMInference_systemPrompt);
  v2 = v1[1];
  if (v2)
  {
    v3 = *v1;
    sub_25F592944(*(v0 + 88));
    v4 = swift_task_alloc();
    *(v0 + 312) = v4;
    *v4 = v0;
    v4[1] = sub_25F599990;
    v5 = *(v0 + 304);
    v6 = *(v0 + 96);
    v7 = *(v0 + 104);
    v8 = *(v0 + 80);

    return sub_25F5942AC(v3, v2, v5, v6, v7, v8);
  }

  sub_25F581FD8();
  v10 = swift_allocError();
  *v11 = 6;
  swift_willThrow();
  *(v0 + 40) = v10;
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v14 = *(v0 + 272);
    v13 = *(v0 + 280);
    v15 = *(v0 + 240);
    v16 = *(v0 + 248);

    (*(v16 + 32))(v14, v13, v15);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v17 = *(v0 + 264);
    v18 = *(v0 + 272);
    v20 = *(v0 + 248);
    v19 = *(v0 + 256);
    v21 = *(v0 + 240);
    v22 = sub_25F5E3FB4();
    __swift_project_value_buffer(v22, qword_27FD9EA20);
    v23 = *(v20 + 16);
    v23(v17, v18, v21);
    v23(v19, v18, v21);
    v24 = sub_25F5E3F94();
    v25 = sub_25F5E47B4();
    v26 = os_log_type_enabled(v24, v25);
    v27 = *(v0 + 256);
    v28 = *(v0 + 264);
    v29 = *(v0 + 240);
    v30 = *(v0 + 248);
    if (v26)
    {
      v143 = v25;
      v31 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v31 = 138412546;
      sub_25F59CA78(&qword_27FD9DF10, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v23(v32, v28, v29);
      v33 = _swift_stdlib_bridgeErrorToNSError();
      v34 = *(v30 + 8);
      v34(v28, v29);
      *(v31 + 4) = v33;
      *v141 = v33;
      v35 = v34;
      *(v31 + 12) = 2048;
      v36 = sub_25F5E3F44();
      v34(v27, v29);
      *(v31 + 14) = v36;
      _os_log_impl(&dword_25F56A000, v24, v143, "Failed to complete multimodal chat, type=GenerativeError, reason=%@, code=%ld", v31, 0x16u);
      sub_25F57C148(v141, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v141, -1, -1);
      MEMORY[0x25F8E3B70](v31, -1, -1);
    }

    else
    {
      v35 = *(v30 + 8);
      v35(*(v0 + 256), *(v0 + 240));

      v35(v28, v29);
    }

    v61 = *(v0 + 272);
    v62 = *(v0 + 240);
    v63 = *(v0 + 88);
    v64 = sub_25F58DD74(v61);
    sub_25F581FD8();
    swift_allocError();
    *v65 = v64;
    swift_willThrow();
    v35(v61, v62);

    goto LABEL_43;
  }

  *(v0 + 48) = v10;
  v37 = v10;
  if (swift_dynamicCast())
  {
    v39 = *(v0 + 224);
    v38 = *(v0 + 232);
    v40 = *(v0 + 192);
    v41 = *(v0 + 200);

    (*(v41 + 32))(v39, v38, v40);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v42 = *(v0 + 216);
    v43 = *(v0 + 224);
    v45 = *(v0 + 200);
    v44 = *(v0 + 208);
    v46 = *(v0 + 192);
    v47 = sub_25F5E3FB4();
    __swift_project_value_buffer(v47, qword_27FD9EA20);
    v48 = *(v45 + 16);
    v48(v42, v43, v46);
    v48(v44, v43, v46);
    v49 = sub_25F5E3F94();
    v50 = sub_25F5E47B4();
    v51 = os_log_type_enabled(v49, v50);
    v52 = *(v0 + 208);
    v53 = *(v0 + 216);
    v54 = *(v0 + 192);
    v55 = *(v0 + 200);
    if (v51)
    {
      v144 = v50;
      v56 = swift_slowAlloc();
      v142 = swift_slowAlloc();
      *v56 = 138412546;
      sub_25F59CA78(&qword_27FD9DF08, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      swift_allocError();
      v48(v57, v53, v54);
      v58 = _swift_stdlib_bridgeErrorToNSError();
      v59 = *(v55 + 8);
      v59(v53, v54);
      *(v56 + 4) = v58;
      *v142 = v58;
      *(v56 + 12) = 2048;
      v60 = sub_25F5E3CB4();
      v59(v52, v54);
      *(v56 + 14) = v60;
      _os_log_impl(&dword_25F56A000, v49, v144, "Failed to complete multimodal chat, type=ModelManagerError, reason=%@, code=%ld", v56, 0x16u);
      sub_25F57C148(v142, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v142, -1, -1);
      MEMORY[0x25F8E3B70](v56, -1, -1);
    }

    else
    {
      v59 = *(v55 + 8);
      v59(*(v0 + 208), *(v0 + 192));

      v59(v53, v54);
    }

    v87 = sub_25F5E3CB4();
    v88 = v87 - 1000;
    if (__OFSUB__(v87, 1000))
    {
      __break(1u);
    }

    else
    {
      v89 = v87 + 19100;
      if (!__OFADD__(v88, 20100))
      {
        v90 = *(v0 + 224);
        v91 = *(v0 + 192);
        v92 = *(v0 + 88);
        v93 = sub_25F58E04C(v89);
        if (v93 == 89)
        {
          v94 = 50;
        }

        else
        {
          v94 = v93;
        }

        sub_25F581FD8();
        swift_allocError();
        *v95 = v94;
        swift_willThrow();
        v59(v90, v91);

        goto LABEL_43;
      }
    }

    __break(1u);
LABEL_48:
    swift_once();
    goto LABEL_19;
  }

  *(v0 + 56) = v10;
  v66 = v10;
  if ((swift_dynamicCast() & 1) == 0)
  {

    *(v0 + 64) = v10;
    v96 = v10;
    if ((swift_dynamicCast() & 1) == 0)
    {

      if (qword_27FD9D8B0 != -1)
      {
        swift_once();
      }

      v123 = sub_25F5E3FB4();
      __swift_project_value_buffer(v123, qword_27FD9EA20);
      v124 = v10;
      v125 = sub_25F5E3F94();
      v126 = sub_25F5E47B4();

      if (os_log_type_enabled(v125, v126))
      {
        v127 = swift_slowAlloc();
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        v147 = v129;
        *v127 = 138412546;
        v130 = v10;
        v131 = _swift_stdlib_bridgeErrorToNSError();
        *(v127 + 4) = v131;
        *v128 = v131;
        *(v127 + 12) = 2080;
        swift_getErrorValue();
        swift_getDynamicType();
        v132 = sub_25F5E4D04();
        v134 = sub_25F570AF8(v132, v133, &v147);

        *(v127 + 14) = v134;
        _os_log_impl(&dword_25F56A000, v125, v126, "Failed to complete multimodal chat, reason=%@, type=%s", v127, 0x16u);
        sub_25F57C148(v128, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v128, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v129);
        MEMORY[0x25F8E3B70](v129, -1, -1);
        MEMORY[0x25F8E3B70](v127, -1, -1);
      }

      v135 = *(v0 + 88);
      sub_25F581FD8();
      swift_allocError();
      *v136 = 4;
      swift_willThrow();

      goto LABEL_43;
    }

    v98 = *(v0 + 136);
    v97 = *(v0 + 144);
    v99 = *(v0 + 112);
    v100 = *(v0 + 120);

    (*(v100 + 32))(v98, v97, v99);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v101 = *(v0 + 128);
    v102 = *(v0 + 136);
    v103 = *(v0 + 112);
    v104 = *(v0 + 120);
    v105 = sub_25F5E3FB4();
    __swift_project_value_buffer(v105, qword_27FD9EA20);
    v106 = *(v104 + 16);
    v106(v101, v102, v103);
    v107 = sub_25F5E3F94();
    v108 = sub_25F5E47B4();
    v109 = os_log_type_enabled(v107, v108);
    v111 = *(v0 + 120);
    v110 = *(v0 + 128);
    v112 = *(v0 + 112);
    if (v109)
    {
      v113 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *v113 = 138412290;
      sub_25F59CA78(&qword_27FD9DEF8, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      swift_allocError();
      v106(v114, v110, v112);
      v115 = _swift_stdlib_bridgeErrorToNSError();
      v116 = *(v111 + 8);
      v116(v110, v112);
      *(v113 + 4) = v115;
      *v146 = v115;
      _os_log_impl(&dword_25F56A000, v107, v108, "Failed to complete multimodal chat, type=PromptTemplateRenderError, reason=%@", v113, 0xCu);
      sub_25F57C148(v146, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v146, -1, -1);
      MEMORY[0x25F8E3B70](v113, -1, -1);
    }

    else
    {

      v116 = *(v111 + 8);
      v116(v110, v112);
    }

    v137 = *(v0 + 136);
    v138 = *(v0 + 112);
    v119 = *(v0 + 88);
    sub_25F581FD8();
    swift_allocError();
    *v139 = 8;
    swift_willThrow();
    v116(v137, v138);
    v122 = *(v0 + 64);
    goto LABEL_42;
  }

  v68 = *(v0 + 176);
  v67 = *(v0 + 184);
  v69 = *(v0 + 152);
  v70 = *(v0 + 160);

  (*(v70 + 32))(v68, v67, v69);
  if (qword_27FD9D8B0 != -1)
  {
    goto LABEL_48;
  }

LABEL_19:
  v71 = *(v0 + 168);
  v72 = *(v0 + 176);
  v73 = *(v0 + 152);
  v74 = *(v0 + 160);
  v75 = sub_25F5E3FB4();
  __swift_project_value_buffer(v75, qword_27FD9EA20);
  v76 = *(v74 + 16);
  v76(v71, v72, v73);
  v77 = sub_25F5E3F94();
  v78 = sub_25F5E47B4();
  v79 = os_log_type_enabled(v77, v78);
  v81 = *(v0 + 160);
  v80 = *(v0 + 168);
  v82 = *(v0 + 152);
  if (v79)
  {
    v83 = swift_slowAlloc();
    v145 = swift_slowAlloc();
    *v83 = 138412290;
    sub_25F59CA78(&qword_27FD9DF00, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    swift_allocError();
    v76(v84, v80, v82);
    v85 = _swift_stdlib_bridgeErrorToNSError();
    v86 = *(v81 + 8);
    v86(v80, v82);
    *(v83 + 4) = v85;
    *v145 = v85;
    _os_log_impl(&dword_25F56A000, v77, v78, "Failed to complete multimodal chat, type=TokenGenerationError, reason=%@", v83, 0xCu);
    sub_25F57C148(v145, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v145, -1, -1);
    MEMORY[0x25F8E3B70](v83, -1, -1);
  }

  else
  {

    v86 = *(v81 + 8);
    v86(v80, v82);
  }

  v117 = *(v0 + 176);
  v118 = *(v0 + 152);
  v119 = *(v0 + 88);
  v120 = sub_25F58E838(v117);
  sub_25F581FD8();
  swift_allocError();
  *v121 = v120;
  swift_willThrow();
  v86(v117, v118);
  v122 = *(v0 + 56);
LABEL_42:

LABEL_43:

  v140 = *(v0 + 8);

  return v140();
}

uint64_t sub_25F599990(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v7 = sub_25F599C1C;
  }

  else
  {
    *(v6 + 328) = a2;
    *(v6 + 336) = a1;
    v7 = sub_25F599AC4;
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t sub_25F599AC4()
{
  v1 = v0[11];
  (*(v0[37] + 8))(v0[38], v0[36]);

  v2 = v0[1];
  v4 = v0[41];
  v3 = v0[42];

  return v2(v3, v4);
}

uint64_t sub_25F599C1C()
{
  v147 = v0;
  v1 = v0;
  (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 288));
  v2 = *(v0 + 320);
  *(v0 + 40) = v2;
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 272);
    v4 = *(v0 + 280);
    v7 = *(v0 + 240);
    v6 = *(v0 + 248);

    (*(v6 + 32))(v5, v4, v7);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v8 = v1[33];
    v9 = v1[34];
    v11 = v1[31];
    v10 = v1[32];
    v12 = v1[30];
    v13 = sub_25F5E3FB4();
    __swift_project_value_buffer(v13, qword_27FD9EA20);
    v14 = *(v11 + 16);
    v14(v8, v9, v12);
    v14(v10, v9, v12);
    v15 = sub_25F5E3F94();
    v16 = sub_25F5E47B4();
    v17 = os_log_type_enabled(v15, v16);
    v18 = v1;
    v19 = v1[33];
    v21 = v18[31];
    v20 = v18[32];
    v142 = v18;
    v22 = v18[30];
    if (v17)
    {
      v23 = swift_slowAlloc();
      v140 = v16;
      v24 = swift_slowAlloc();
      *v23 = 138412546;
      sub_25F59CA78(&qword_27FD9DF10, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v14(v25, v19, v22);
      v26 = _swift_stdlib_bridgeErrorToNSError();
      v27 = *(v21 + 8);
      v27(v19, v22);
      *(v23 + 4) = v26;
      *v24 = v26;
      *(v23 + 12) = 2048;
      v28 = sub_25F5E3F44();
      v27(v20, v22);
      *(v23 + 14) = v28;
      _os_log_impl(&dword_25F56A000, v15, v140, "Failed to complete multimodal chat, type=GenerativeError, reason=%@, code=%ld", v23, 0x16u);
      sub_25F57C148(v24, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v24, -1, -1);
      MEMORY[0x25F8E3B70](v23, -1, -1);
    }

    else
    {
      v27 = *(v21 + 8);
      v27(v20, v18[30]);

      v27(v19, v22);
    }

    v1 = v142;
    v54 = v142[34];
    v55 = v142[30];
    v56 = v142[11];
    v57 = sub_25F58DD74(v54);
    sub_25F581FD8();
    swift_allocError();
    *v58 = v57;
    swift_willThrow();
    v27(v54, v55);

    goto LABEL_39;
  }

  *(v0 + 48) = v2;
  v29 = v2;
  if (swift_dynamicCast())
  {
    v31 = *(v0 + 224);
    v30 = v1[29];
    v32 = v1[24];
    v33 = v1[25];

    (*(v33 + 32))(v31, v30, v32);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v35 = v1[27];
    v34 = v1[28];
    v37 = v1[25];
    v36 = v1[26];
    v38 = v1[24];
    v39 = sub_25F5E3FB4();
    __swift_project_value_buffer(v39, qword_27FD9EA20);
    v40 = *(v37 + 16);
    v40(v35, v34, v38);
    v40(v36, v34, v38);
    v41 = sub_25F5E3F94();
    v42 = sub_25F5E47B4();
    v43 = os_log_type_enabled(v41, v42);
    v44 = v1;
    v45 = v1[27];
    v47 = v44[25];
    v46 = v44[26];
    v143 = v44;
    v48 = v44[24];
    if (v43)
    {
      v49 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      *v49 = 138412546;
      sub_25F59CA78(&qword_27FD9DF08, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      swift_allocError();
      v40(v50, v45, v48);
      v51 = _swift_stdlib_bridgeErrorToNSError();
      v52 = *(v47 + 8);
      v52(v45, v48);
      *(v49 + 4) = v51;
      *v141 = v51;
      *(v49 + 12) = 2048;
      v53 = sub_25F5E3CB4();
      v52(v46, v48);
      *(v49 + 14) = v53;
      _os_log_impl(&dword_25F56A000, v41, v42, "Failed to complete multimodal chat, type=ModelManagerError, reason=%@, code=%ld", v49, 0x16u);
      sub_25F57C148(v141, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v141, -1, -1);
      MEMORY[0x25F8E3B70](v49, -1, -1);
    }

    else
    {
      v52 = *(v47 + 8);
      v52(v46, v44[24]);

      v52(v45, v48);
    }

    v1 = v143;
    v82 = sub_25F5E3CB4();
    v83 = v82 - 1000;
    if (__OFSUB__(v82, 1000))
    {
      __break(1u);
    }

    else
    {
      v84 = v82 + 19100;
      if (!__OFADD__(v83, 20100))
      {
        v85 = v143[28];
        v86 = v143[24];
        v87 = v143[11];
        v88 = sub_25F58E04C(v84);
        if (v88 == 89)
        {
          v89 = 50;
        }

        else
        {
          v89 = v88;
        }

        sub_25F581FD8();
        swift_allocError();
        *v90 = v89;
        swift_willThrow();
        v52(v85, v86);

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  *(v0 + 56) = v2;
  v59 = v2;
  if (swift_dynamicCast())
  {
    v61 = *(v0 + 176);
    v60 = v1[23];
    v62 = v1[19];
    v63 = v1[20];

    (*(v63 + 32))(v61, v60, v62);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v65 = v1[21];
      v64 = v1[22];
      v66 = v1[19];
      v67 = v1[20];
      v68 = sub_25F5E3FB4();
      __swift_project_value_buffer(v68, qword_27FD9EA20);
      v69 = *(v67 + 16);
      v69(v65, v64, v66);
      v70 = sub_25F5E3F94();
      v71 = sub_25F5E47B4();
      v72 = os_log_type_enabled(v70, v71);
      v74 = v1[20];
      v73 = v1[21];
      v75 = v1[19];
      if (v72)
      {
        v76 = swift_slowAlloc();
        v144 = v1;
        v77 = swift_slowAlloc();
        *v76 = 138412290;
        sub_25F59CA78(&qword_27FD9DF00, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
        swift_allocError();
        v69(v78, v73, v75);
        v79 = _swift_stdlib_bridgeErrorToNSError();
        v80 = *(v74 + 8);
        v80(v73, v75);
        *(v76 + 4) = v79;
        *v77 = v79;
        _os_log_impl(&dword_25F56A000, v70, v71, "Failed to complete multimodal chat, type=TokenGenerationError, reason=%@", v76, 0xCu);
        sub_25F57C148(v77, &qword_27FD9DEF0, &qword_25F5E8550);
        v81 = v77;
        v1 = v144;
        MEMORY[0x25F8E3B70](v81, -1, -1);
        MEMORY[0x25F8E3B70](v76, -1, -1);
      }

      else
      {

        v80 = *(v74 + 8);
        v80(v73, v75);
      }

      v114 = v1[22];
      v115 = v1[19];
      v116 = v1[11];
      v117 = sub_25F58E838(v114);
      sub_25F581FD8();
      swift_allocError();
      *v118 = v117;
      swift_willThrow();
      v80(v114, v115);
      v119 = v1[7];
LABEL_38:

      goto LABEL_39;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  *(v0 + 64) = v2;
  v91 = v2;
  if (swift_dynamicCast())
  {
    v93 = *(v0 + 136);
    v92 = v1[18];
    v94 = v1[14];
    v95 = v1[15];

    (*(v95 + 32))(v93, v92, v94);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v97 = v1[16];
    v96 = v1[17];
    v98 = v1[14];
    v99 = v1[15];
    v100 = sub_25F5E3FB4();
    __swift_project_value_buffer(v100, qword_27FD9EA20);
    v101 = *(v99 + 16);
    v101(v97, v96, v98);
    v102 = sub_25F5E3F94();
    v103 = sub_25F5E47B4();
    v104 = os_log_type_enabled(v102, v103);
    v106 = v1[15];
    v105 = v1[16];
    v107 = v1[14];
    if (v104)
    {
      v108 = swift_slowAlloc();
      v145 = v1;
      v109 = swift_slowAlloc();
      *v108 = 138412290;
      sub_25F59CA78(&qword_27FD9DEF8, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      swift_allocError();
      v101(v110, v105, v107);
      v111 = _swift_stdlib_bridgeErrorToNSError();
      v112 = *(v106 + 8);
      v112(v105, v107);
      *(v108 + 4) = v111;
      *v109 = v111;
      _os_log_impl(&dword_25F56A000, v102, v103, "Failed to complete multimodal chat, type=PromptTemplateRenderError, reason=%@", v108, 0xCu);
      sub_25F57C148(v109, &qword_27FD9DEF0, &qword_25F5E8550);
      v113 = v109;
      v1 = v145;
      MEMORY[0x25F8E3B70](v113, -1, -1);
      MEMORY[0x25F8E3B70](v108, -1, -1);
    }

    else
    {

      v112 = *(v106 + 8);
      v112(v105, v107);
    }

    v135 = v1[17];
    v136 = v1[14];
    v116 = v1[11];
    sub_25F581FD8();
    swift_allocError();
    *v137 = 8;
    swift_willThrow();
    v112(v135, v136);
    v119 = v1[8];
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v120 = sub_25F5E3FB4();
  __swift_project_value_buffer(v120, qword_27FD9EA20);
  v121 = v2;
  v122 = sub_25F5E3F94();
  v123 = sub_25F5E47B4();

  if (os_log_type_enabled(v122, v123))
  {
    v124 = swift_slowAlloc();
    v125 = swift_slowAlloc();
    v126 = swift_slowAlloc();
    v146 = v126;
    *v124 = 138412546;
    v127 = v2;
    v128 = _swift_stdlib_bridgeErrorToNSError();
    *(v124 + 4) = v128;
    *v125 = v128;
    *(v124 + 12) = 2080;
    swift_getErrorValue();
    swift_getDynamicType();
    v129 = sub_25F5E4D04();
    v131 = sub_25F570AF8(v129, v130, &v146);

    *(v124 + 14) = v131;
    _os_log_impl(&dword_25F56A000, v122, v123, "Failed to complete multimodal chat, reason=%@, type=%s", v124, 0x16u);
    sub_25F57C148(v125, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v125, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    v132 = v126;
    v1 = v0;
    MEMORY[0x25F8E3B70](v132, -1, -1);
    MEMORY[0x25F8E3B70](v124, -1, -1);
  }

  v133 = v1[11];
  sub_25F581FD8();
  swift_allocError();
  *v134 = 4;
  swift_willThrow();

LABEL_39:

  v138 = v1[1];

  return v138();
}

uint64_t sub_25F59AB20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a1;
  v3[13] = a2;
  v7 = sub_25F5E3D44();
  v3[14] = v7;
  v3[15] = *(v7 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = sub_25F5E39F4();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v9 = sub_25F5E3CC4();
  v3[24] = v9;
  v3[25] = *(v9 - 8);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v10 = sub_25F5E3F54();
  v3[30] = v10;
  v3[31] = *(v10 - 8);
  v3[32] = swift_task_alloc();
  v3[33] = swift_task_alloc();
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v11 = swift_task_alloc();
  v3[36] = v11;
  *v11 = v3;
  v11[1] = sub_25F59ADC0;

  return sub_25F592F28((v3 + 5), a1, a2, a3);
}

uint64_t sub_25F59ADC0()
{
  *(*v1 + 296) = v0;

  if (v0)
  {
    v2 = sub_25F59B008;
  }

  else
  {
    v2 = sub_25F59AED4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25F59AED4()
{

  v3 = v0[6];
  v4 = v0[5];

  v1 = v0[1];

  return v1(v4, v3);
}

uint64_t sub_25F59B008()
{
  v152 = v0;
  v1 = v0;
  isa = v0[37].isa;
  v0[7].isa = isa;
  v3 = isa;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEE8, &unk_25F5E7910);
  v4 = swift_dynamicCast();
  v5 = v0[37].isa;
  if (v4)
  {
    v6 = v0[34].isa;
    v7 = v0[35].isa;
    v9 = v0[30].isa;
    v8 = v0[31].isa;

    (*(v8 + 4))(v6, v7, v9);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v10 = v1[33].isa;
    v11 = v1[34].isa;
    v13 = v1[31].isa;
    v12 = v1[32].isa;
    v14 = v1[30].isa;
    v15 = sub_25F5E3FB4();
    __swift_project_value_buffer(v15, qword_27FD9EA20);
    v16 = *(v13 + 2);
    v16(v10, v11, v14);
    v16(v12, v11, v14);
    v17 = sub_25F5E3F94();
    v18 = sub_25F5E47B4();
    v19 = os_log_type_enabled(v17, v18);
    v20 = v1[32].isa;
    v21 = v1[33].isa;
    v22 = v1[30].isa;
    v23 = v1[31].isa;
    if (v19)
    {
      v24 = swift_slowAlloc();
      logc = v17;
      v25 = swift_slowAlloc();
      *v24 = 138412546;
      sub_25F59CA78(&qword_27FD9DF10, MEMORY[0x277D0DBB0], MEMORY[0x277D0DBC0]);
      swift_allocError();
      v145 = v18;
      v26 = v1;
      v16(v27, v21, v22);
      v28 = _swift_stdlib_bridgeErrorToNSError();
      v29 = *(v23 + 1);
      v29(v21, v22);
      *(v24 + 4) = v28;
      *v25 = v28;
      v1 = v26;
      *(v24 + 12) = 2048;
      v30 = sub_25F5E3F44();
      v29(v20, v22);
      *(v24 + 14) = v30;
      _os_log_impl(&dword_25F56A000, logc, v145, "Failed to complete multimodal chat, type=GenerativeError, reason=%@, code=%ld", v24, 0x16u);
      sub_25F57C148(v25, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v25, -1, -1);
      MEMORY[0x25F8E3B70](v24, -1, -1);
    }

    else
    {
      v29 = *(v23 + 1);
      v29(v1[32].isa, v1[30].isa);

      v29(v21, v22);
    }

    v59 = v1[34].isa;
    v60 = v1[30].isa;
    v61 = sub_25F58DD74(v59);
    sub_25F581FD8();
    swift_allocError();
    *v62 = v61;
    swift_willThrow();
    v29(v59, v60);

    goto LABEL_39;
  }

  v0[8].isa = v5;
  v31 = v5;
  v32 = swift_dynamicCast();
  v33 = v0[37].isa;
  if (v32)
  {
    v35 = v0[28].isa;
    v34 = v1[29].isa;
    v36 = v1[24].isa;
    v37 = v1[25].isa;

    (*(v37 + 4))(v35, v34, v36);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v39 = v1[27].isa;
    v38 = v1[28].isa;
    v40 = v1;
    v43 = v1 + 25;
    v42 = v1[25].isa;
    v41 = v43[1].isa;
    v44 = v40[24].isa;
    v45 = sub_25F5E3FB4();
    __swift_project_value_buffer(v45, qword_27FD9EA20);
    v46 = *(v42 + 2);
    v46(v39, v38, v44);
    v46(v41, v38, v44);
    v47 = sub_25F5E3F94();
    v48 = sub_25F5E47B4();
    v49 = os_log_type_enabled(v47, v48);
    v50 = v40[26].isa;
    v51 = v40[27].isa;
    log = v40;
    v54 = v40 + 24;
    v52 = v40[24].isa;
    v53 = v54[1].isa;
    if (v49)
    {
      v55 = swift_slowAlloc();
      v146 = swift_slowAlloc();
      *v55 = 138412546;
      sub_25F59CA78(&qword_27FD9DF08, MEMORY[0x277D29D58], MEMORY[0x277D29D60]);
      swift_allocError();
      v46(v56, v51, v52);
      v57 = _swift_stdlib_bridgeErrorToNSError();
      v1 = *(v53 + 1);
      (v1)(v51, v52);
      *(v55 + 4) = v57;
      *v146 = v57;
      *(v55 + 12) = 2048;
      v58 = sub_25F5E3CB4();
      (v1)(v50, v52);
      *(v55 + 14) = v58;
      _os_log_impl(&dword_25F56A000, v47, v48, "Failed to complete multimodal chat, type=ModelManagerError, reason=%@, code=%ld", v55, 0x16u);
      sub_25F57C148(v146, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v146, -1, -1);
      MEMORY[0x25F8E3B70](v55, -1, -1);
    }

    else
    {
      v1 = *(v53 + 1);
      (v1)(v50, v52);

      (v1)(v51, v52);
    }

    v88 = sub_25F5E3CB4();
    v89 = v88 - 1000;
    if (__OFSUB__(v88, 1000))
    {
      __break(1u);
    }

    else
    {
      v90 = v88 + 19100;
      if (!__OFADD__(v89, 20100))
      {
        v91 = log[28].isa;
        v92 = log[24].isa;
        v93 = sub_25F58E04C(v90);
        if (v93 == 89)
        {
          v94 = 50;
        }

        else
        {
          v94 = v93;
        }

        sub_25F581FD8();
        swift_allocError();
        *v95 = v94;
        swift_willThrow();
        (v1)(v91, v92);
        v1 = log;
        v96 = log[8].isa;
LABEL_38:

        goto LABEL_39;
      }
    }

    __break(1u);
    goto LABEL_44;
  }

  v0[9].isa = v33;
  v63 = v33;
  v64 = swift_dynamicCast();
  v65 = v0[37].isa;
  if (v64)
  {
    v67 = v0[22].isa;
    v66 = v1[23].isa;
    v68 = v1[19].isa;
    v69 = v1[20].isa;

    (*(v69 + 4))(v67, v66, v68);
    if (qword_27FD9D8B0 == -1)
    {
LABEL_15:
      v71 = v1[21].isa;
      v70 = v1[22].isa;
      v72 = v1[19].isa;
      v73 = v1[20].isa;
      v74 = sub_25F5E3FB4();
      __swift_project_value_buffer(v74, qword_27FD9EA20);
      v75 = v1;
      v76 = *(v73 + 2);
      v76(v71, v70, v72);
      v77 = sub_25F5E3F94();
      v78 = sub_25F5E47B4();
      v79 = os_log_type_enabled(v77, v78);
      v81 = v75[20].isa;
      v80 = v75[21].isa;
      loga = v75;
      v82 = v75[19].isa;
      if (v79)
      {
        v83 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        *v83 = 138412290;
        sub_25F59CA78(&qword_27FD9DF00, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
        swift_allocError();
        v76(v85, v80, v82);
        v86 = _swift_stdlib_bridgeErrorToNSError();
        v87 = *(v81 + 1);
        v87(v80, v82);
        *(v83 + 4) = v86;
        *v84 = v86;
        _os_log_impl(&dword_25F56A000, v77, v78, "Failed to complete multimodal chat, type=TokenGenerationError, reason=%@", v83, 0xCu);
        sub_25F57C148(v84, &qword_27FD9DEF0, &qword_25F5E8550);
        MEMORY[0x25F8E3B70](v84, -1, -1);
        MEMORY[0x25F8E3B70](v83, -1, -1);
      }

      else
      {

        v87 = *(v81 + 1);
        v87(v80, v82);
      }

      v120 = loga[22].isa;
      v121 = loga[19].isa;
      v122 = sub_25F58E838(v120);
      sub_25F581FD8();
      swift_allocError();
      *v123 = v122;
      swift_willThrow();
      v87(v120, v121);
      v1 = loga;
      v96 = loga[9].isa;
      goto LABEL_38;
    }

LABEL_44:
    swift_once();
    goto LABEL_15;
  }

  v0[10].isa = v65;
  v97 = v65;
  if (swift_dynamicCast())
  {
    v99 = v0[17].isa;
    v98 = v1[18].isa;
    v100 = v1[14].isa;
    v101 = v1[15].isa;

    (*(v101 + 4))(v99, v98, v100);
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v103 = v1[16].isa;
    v102 = v1[17].isa;
    v104 = v1[14].isa;
    v105 = v1[15].isa;
    v106 = sub_25F5E3FB4();
    __swift_project_value_buffer(v106, qword_27FD9EA20);
    v107 = v1;
    v108 = *(v105 + 2);
    v108(v103, v102, v104);
    v109 = sub_25F5E3F94();
    v110 = sub_25F5E47B4();
    v111 = os_log_type_enabled(v109, v110);
    v113 = v107[15].isa;
    v112 = v107[16].isa;
    logb = v107;
    v114 = v107[14].isa;
    if (v111)
    {
      v115 = swift_slowAlloc();
      v116 = swift_slowAlloc();
      *v115 = 138412290;
      sub_25F59CA78(&qword_27FD9DEF8, MEMORY[0x277D71F10], MEMORY[0x277D71F18]);
      swift_allocError();
      v108(v117, v112, v114);
      v118 = _swift_stdlib_bridgeErrorToNSError();
      v119 = *(v113 + 1);
      v119(v112, v114);
      *(v115 + 4) = v118;
      *v116 = v118;
      _os_log_impl(&dword_25F56A000, v109, v110, "Failed to complete multimodal chat, type=PromptTemplateRenderError, reason=%@", v115, 0xCu);
      sub_25F57C148(v116, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v116, -1, -1);
      MEMORY[0x25F8E3B70](v115, -1, -1);
    }

    else
    {

      v119 = *(v113 + 1);
      v119(v112, v114);
    }

    v140 = logb[17].isa;
    v141 = logb[14].isa;
    sub_25F581FD8();
    swift_allocError();
    *v142 = 8;
    swift_willThrow();
    v119(v140, v141);
    v1 = logb;
    v96 = logb[10].isa;
    goto LABEL_38;
  }

  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v124 = v0[37].isa;
  v125 = sub_25F5E3FB4();
  __swift_project_value_buffer(v125, qword_27FD9EA20);
  v126 = v124;
  v127 = sub_25F5E3F94();
  v128 = sub_25F5E47B4();

  if (os_log_type_enabled(v127, v128))
  {
    v129 = v1[37].isa;
    v130 = swift_slowAlloc();
    v131 = swift_slowAlloc();
    v132 = swift_slowAlloc();
    v151 = v132;
    *v130 = 138412546;
    v133 = v129;
    v134 = _swift_stdlib_bridgeErrorToNSError();
    *(v130 + 4) = v134;
    *v131 = v134;
    *(v130 + 12) = 2080;
    swift_getErrorValue();
    swift_getDynamicType();
    v135 = sub_25F5E4D04();
    v137 = sub_25F570AF8(v135, v136, &v151);

    *(v130 + 14) = v137;
    _os_log_impl(&dword_25F56A000, v127, v128, "Failed to complete multimodal chat, reason=%@, type=%s", v130, 0x16u);
    sub_25F57C148(v131, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v131, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v132);
    MEMORY[0x25F8E3B70](v132, -1, -1);
    MEMORY[0x25F8E3B70](v130, -1, -1);
  }

  v138 = v1[37].isa;
  sub_25F581FD8();
  swift_allocError();
  *v139 = 4;
  swift_willThrow();

LABEL_39:

  v143 = v1[1].isa;

  return v143();
}

uint64_t dispatch thunk of MultiModalChatPromptResponding.completeChat(userPrompt:image:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_25F58C4D8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MultiModalChatPromptResponding.completeChat(bindVariables:images:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F58C4D8;

  return v11(a1, a2, a3, a4);
}

__n128 __swift_memcpy145_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F59C1AC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 145))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F59C1F4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 145) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 145) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_25F59C274(uint64_t a1)
{
  sub_25F58C230(319, &qword_27FD9DED0, MEMORY[0x277D71C58]);
  if (v1 <= 0x3F)
  {
    sub_25F58C230(319, &qword_27FD9DED8, MEMORY[0x277D0E698]);
    if (v2 <= 0x3F)
    {
      sub_25F58C230(319, &qword_27FD9DEE0, MEMORY[0x277D42E28]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t dispatch thunk of MultiModalLLMInference.completeChat(userPrompt:image:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 192) + **(*v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_25F58C004;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MultiModalLLMInference.completeChat(bindVariables:images:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 200) + **(*v2 + 200));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_25F58C4D8;

  return v8(a1, a2);
}

uint64_t getEnumTagSinglePayload for MultiModalLLMInferenceConfig.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MultiModalLLMInferenceConfig.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F59C878()
{
  result = qword_27FD9E078;
  if (!qword_27FD9E078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E078);
  }

  return result;
}

unint64_t sub_25F59C8D0()
{
  result = qword_27FD9E080;
  if (!qword_27FD9E080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E080);
  }

  return result;
}

unint64_t sub_25F59C928()
{
  result = qword_27FD9E088;
  if (!qword_27FD9E088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E088);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x25F8E3B70);
  }

  return result;
}

uint64_t sub_25F59CA78(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getTags(for:taggingArgs:chatPromptResponder:)(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  *(v3 + 224) = a1;
  *(v3 + 232) = a3;
  v5 = sub_25F5E3F14();
  *(v3 + 240) = v5;
  *(v3 + 248) = *(v5 - 8);
  *(v3 + 256) = swift_task_alloc();
  v6 = type metadata accessor for ExtractedItem(0);
  *(v3 + 264) = v6;
  *(v3 + 272) = *(v6 - 8);
  *(v3 + 280) = swift_task_alloc();
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  v7 = swift_task_alloc();
  v8 = *a2;
  *(v3 + 304) = v7;
  *(v3 + 312) = v8;
  *(v3 + 320) = *(a2 + 1);
  *(v3 + 336) = a2[3];
  *(v3 + 444) = *(a2 + 48);
  *(v3 + 344) = *(a2 + 15);
  *(v3 + 360) = a2[17];
  *(v3 + 445) = *(a2 + 144);
  *(v3 + 446) = *(a2 + 145);

  return MEMORY[0x2822009F8](sub_25F59CC90, 0, 0);
}

void sub_25F59CC90()
{
  if (*(v0 + 446) == 1)
  {
    sub_25F59FDA4(v0 + 80);
  }

  else
  {
    *(v0 + 112) = 0;
    *(v0 + 80) = 0u;
    *(v0 + 96) = 0u;
  }

  v1 = *(v0 + 224);
  v2 = *(v1 + 16);
  *(v0 + 368) = v2;
  if (v2)
  {
    v3 = *(v0 + 444);
    v4 = *(v0 + 272);
    v5 = *(v4 + 80);
    *(v0 + 440) = v5;
    v6 = *(v4 + 72);
    v7 = MEMORY[0x277D84F90];
    v8 = v3 - 1;
    *(v0 + 384) = 0;
    *(v0 + 392) = v7;
    *(v0 + 376) = v6;
    v9 = *(v0 + 296);
    v10 = *(v0 + 304);
    sub_25F57B808(v1 + ((v5 + 32) & ~v5), v10);
    sub_25F57B808(v10, v9);
    if (v8 > 1)
    {
      v30 = *(v0 + 304);
      v31 = *(v0 + 264);
      v32 = *(v0 + 232);
      v33 = v32[3];
      v34 = v32[4];
      __swift_project_boxed_opaque_existential_1Tm(v32, v33);
      v35 = (v30 + *(v31 + 20));
      v36 = *v35;
      v37 = v35[1];
      v42 = (*(v34 + 16) + **(v34 + 16));
      v38 = swift_task_alloc();
      *(v0 + 424) = v38;
      *v38 = v0;
      v38[1] = sub_25F59DE04;

      v42(v36, v37, v33, v34);
    }

    else
    {
      v11 = *(v0 + 304);
      v12 = *(v0 + 264);
      v13 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E098, &qword_25F5E85D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25F5E5EE0;
      *(inited + 32) = 0x746E6F4372657375;
      *(inited + 40) = 0xEB00000000746E65;
      v15 = (v11 + *(v12 + 20));
      v16 = v15[1];
      *(inited + 48) = *v15;
      *(inited + 56) = v16;

      v17 = sub_25F571EB0(inited);
      *(v0 + 400) = v17;
      swift_setDeallocating();
      sub_25F57C148(inited + 32, &qword_27FD9E0A0, &qword_25F5E85E0);
      v18 = v13[3];
      v19 = v13[4];
      __swift_project_boxed_opaque_existential_1Tm(v13, v18);
      v41 = (*(v19 + 24) + **(v19 + 24));
      v20 = swift_task_alloc();
      *(v0 + 408) = v20;
      *v20 = v0;
      v20[1] = sub_25F59D1EC;

      v41(v17, v18, v19);
    }
  }

  else
  {
    v21 = 0;
    v23 = *(v0 + 264);
    v22 = *(v0 + 272);
    v24 = MEMORY[0x277D84F90];
    v25 = *(MEMORY[0x277D84F90] + 16);
    while (v25 != v21)
    {
      if (v21 >= *(v24 + 16))
      {
        __break(1u);
        return;
      }

      v26 = *(v0 + 280);
      sub_25F57B808(v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21++, v26);
      v27 = *(v26 + *(v23 + 24));

      sub_25F57B8D4(v26);
      if (v27)
      {

        sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

        v28 = *(v0 + 8);
        v29 = MEMORY[0x277D84F90];

        v28(v29);
        return;
      }
    }

    sub_25F581FD8();
    swift_allocError();
    *v39 = 3;
    swift_willThrow();
    sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

    v40 = *(v0 + 8);

    v40();
  }
}

uint64_t sub_25F59D1EC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[20] = v3;
  v4[21] = a1;
  v4[22] = a2;
  v4[23] = v2;
  v4[52] = v2;

  if (v2)
  {

    v5 = sub_25F59E9F4;
  }

  else
  {
    v5 = sub_25F59D338;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F59D338()
{
  v91 = v0;
  v1 = *(v0 + 416);
  v3 = *(v0 + 168);
  v2 = *(v0 + 176);
  v4 = qword_27FD9D8B0;

  if (v4 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = sub_25F5E3FB4();
  __swift_project_value_buffer(v5, qword_27FD9EA20);

  v6 = sub_25F5E3F94();
  v7 = sub_25F5E4794();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v90[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25F570AF8(v3, v2, v90);
    _os_log_impl(&dword_25F56A000, v6, v7, "chat response with tags %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v10 = sub_25F59F5FC(v3, v2, *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 445));

  if (v1)
  {

    v11 = v1;
    v12 = sub_25F5E3F94();
    v13 = sub_25F5E47B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v90[0] = v16;
      *v14 = 136315394;
      v17 = sub_25F570AF8(v3, v2, v90);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_25F56A000, v12, v13, "failed to parse llm response: %s, error: %@", v14, 0x16u);
      sub_25F57C148(v15, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8E3B70](v16, -1, -1);
      MEMORY[0x25F8E3B70](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v20 = sub_25F5E3F94();
    v21 = sub_25F5E4794();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v90[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x25F8E2CF0](v10, MEMORY[0x277D837D0]);
      v26 = sub_25F570AF8(v24, v25, v90);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25F56A000, v20, v21, "parsed auto tagger response: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8E3B70](v23, -1, -1);
      MEMORY[0x25F8E3B70](v22, -1, -1);
    }

    if (*(v0 + 446) == 1)
    {
      sub_25F573B94(v0 + 80, v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      if (*(v0 + 144))
      {
        v86 = *(v0 + 336);
        v87 = *(v0 + 320);
        v84 = *(v0 + 328);
        v85 = *(v0 + 312);
        v27 = *(v0 + 304);
        v28 = *(v0 + 256);
        v29 = *(v0 + 264);
        v30 = *(v0 + 240);
        v31 = *(v0 + 248);
        v32 = *(v0 + 232);
        v33 = v32[3];
        v34 = v32[4];
        __swift_project_boxed_opaque_existential_1Tm(v32, v33);
        v35 = (*(v34 + 8))(v33, v34);
        v37 = v36;
        v82 = *(v27 + *(v29 + 36));
        v83 = *(v27 + *(v29 + 32));
        v38 = swift_task_alloc();
        *(v38 + 16) = v27;
        *(v38 + 24) = v84;
        *(v38 + 32) = v86;
        *(v38 + 40) = v10;
        *(v38 + 48) = v85;
        *(v38 + 56) = v87;
        *(v38 + 64) = v35;
        *(v38 + 72) = v37;
        *(v38 + 80) = v83;
        *(v38 + 96) = v82;
        sub_25F5E3F34();

        __swift_project_boxed_opaque_existential_1Tm((v0 + 120), *(v0 + 144));
        sub_25F5E3F24();
        (*(v31 + 8))(v28, v30);
        sub_25F5A0120(v0 + 120);
      }

      else
      {
        sub_25F57C148(v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      }
    }

    v39 = *(v0 + 296);
    v40 = *(*(v0 + 264) + 24);

    *(v39 + v40) = v10;
  }

  sub_25F57B808(*(v0 + 296), *(v0 + 288));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_25F57851C(0, v42[2] + 1, 1, *(v0 + 392));
  }

  v44 = v42[2];
  v43 = v42[3];
  if (v44 >= v43 >> 1)
  {
    v42 = sub_25F57851C((v43 > 1), v44 + 1, 1, v42);
  }

  v45 = *(v0 + 376);
  v46 = *(v0 + 440);
  v47 = *(v0 + 368);
  v48 = *(v0 + 296);
  v1 = *(v0 + 304);
  v49 = *(v0 + 288);
  v50 = *(v0 + 384) + 1;
  v42[2] = v44 + 1;
  sub_25F57B6DC(v49, v42 + ((v46 + 32) & ~v46) + v45 * v44);
  sub_25F57B8D4(v1);
  sub_25F57B8D4(v48);
  if (v50 == v47)
  {
    v2 = 0;
    v51 = *(v0 + 264);
    v3 = *(v0 + 272);
    v52 = v42[2];
    while (v52 != v2)
    {
      if (v2 >= v42[2])
      {
        __break(1u);
        goto LABEL_38;
      }

      v1 = *(v0 + 280);
      sub_25F57B808(v42 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2++, v1);
      v53 = *&v1[*(v51 + 24)];

      sub_25F57B8D4(v1);
      if (v53)
      {

        sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

        v54 = *(v0 + 8);

        return v54(v42);
      }
    }

    sub_25F581FD8();
    swift_allocError();
    *v71 = 3;
    swift_willThrow();
    sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    v56 = *(v0 + 376);
    v57 = *(v0 + 384) + 1;
    *(v0 + 384) = v57;
    *(v0 + 392) = v42;
    v58 = *(v0 + 296);
    v59 = *(v0 + 304);
    v60 = *(v0 + 444) - 1;
    sub_25F57B808(*(v0 + 224) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + v56 * v57, v59);
    sub_25F57B808(v59, v58);
    if (v60 >= 2)
    {
      v73 = *(v0 + 304);
      v74 = *(v0 + 264);
      v75 = *(v0 + 232);
      v76 = v75[3];
      v77 = v75[4];
      __swift_project_boxed_opaque_existential_1Tm(v75, v76);
      v78 = (v73 + *(v74 + 20));
      v79 = *v78;
      v80 = v78[1];
      v89 = (*(v77 + 16) + **(v77 + 16));
      v81 = swift_task_alloc();
      *(v0 + 424) = v81;
      *v81 = v0;
      v81[1] = sub_25F59DE04;

      return v89(v79, v80, v76, v77);
    }

    else
    {
      v61 = *(v0 + 304);
      v62 = *(v0 + 264);
      v63 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E098, &qword_25F5E85D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25F5E5EE0;
      *(inited + 32) = 0x746E6F4372657375;
      *(inited + 40) = 0xEB00000000746E65;
      v65 = (v61 + *(v62 + 20));
      v66 = v65[1];
      *(inited + 48) = *v65;
      *(inited + 56) = v66;

      v67 = sub_25F571EB0(inited);
      *(v0 + 400) = v67;
      swift_setDeallocating();
      sub_25F57C148(inited + 32, &qword_27FD9E0A0, &qword_25F5E85E0);
      v68 = v63[3];
      v69 = v63[4];
      __swift_project_boxed_opaque_existential_1Tm(v63, v68);
      v88 = (*(v69 + 24) + **(v69 + 24));
      v70 = swift_task_alloc();
      *(v0 + 408) = v70;
      *v70 = v0;
      v70[1] = sub_25F59D1EC;

      return v88(v67, v68, v69);
    }
  }
}

uint64_t sub_25F59DE04(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[24] = v3;
  v4[25] = a1;
  v4[26] = a2;
  v4[27] = v2;
  v4[54] = v2;

  if (v2)
  {

    v5 = sub_25F59EABC;
  }

  else
  {
    v5 = sub_25F59DF28;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25F59DF28()
{
  v91 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 200);
  v2 = *(v0 + 208);
  v4 = qword_27FD9D8B0;

  if (v4 != -1)
  {
LABEL_38:
    swift_once();
  }

  v5 = sub_25F5E3FB4();
  __swift_project_value_buffer(v5, qword_27FD9EA20);

  v6 = sub_25F5E3F94();
  v7 = sub_25F5E4794();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v90[0] = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_25F570AF8(v3, v2, v90);
    _os_log_impl(&dword_25F56A000, v6, v7, "chat response with tags %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v10 = sub_25F59F5FC(v3, v2, *(v0 + 344), *(v0 + 352), *(v0 + 360), *(v0 + 445));

  if (v1)
  {

    v11 = v1;
    v12 = sub_25F5E3F94();
    v13 = sub_25F5E47B4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v90[0] = v16;
      *v14 = 136315394;
      v17 = sub_25F570AF8(v3, v2, v90);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2112;
      v18 = v1;
      v19 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 14) = v19;
      *v15 = v19;
      _os_log_impl(&dword_25F56A000, v12, v13, "failed to parse llm response: %s, error: %@", v14, 0x16u);
      sub_25F57C148(v15, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v15, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x25F8E3B70](v16, -1, -1);
      MEMORY[0x25F8E3B70](v14, -1, -1);
    }

    else
    {
    }
  }

  else
  {

    v20 = sub_25F5E3F94();
    v21 = sub_25F5E4794();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v90[0] = v23;
      *v22 = 136315138;
      v24 = MEMORY[0x25F8E2CF0](v10, MEMORY[0x277D837D0]);
      v26 = sub_25F570AF8(v24, v25, v90);

      *(v22 + 4) = v26;
      _os_log_impl(&dword_25F56A000, v20, v21, "parsed auto tagger response: %s", v22, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v23);
      MEMORY[0x25F8E3B70](v23, -1, -1);
      MEMORY[0x25F8E3B70](v22, -1, -1);
    }

    if (*(v0 + 446) == 1)
    {
      sub_25F573B94(v0 + 80, v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      if (*(v0 + 144))
      {
        v86 = *(v0 + 336);
        v87 = *(v0 + 320);
        v84 = *(v0 + 328);
        v85 = *(v0 + 312);
        v27 = *(v0 + 304);
        v28 = *(v0 + 256);
        v29 = *(v0 + 264);
        v30 = *(v0 + 240);
        v31 = *(v0 + 248);
        v32 = *(v0 + 232);
        v33 = v32[3];
        v34 = v32[4];
        __swift_project_boxed_opaque_existential_1Tm(v32, v33);
        v35 = (*(v34 + 8))(v33, v34);
        v37 = v36;
        v82 = *(v27 + *(v29 + 36));
        v83 = *(v27 + *(v29 + 32));
        v38 = swift_task_alloc();
        *(v38 + 16) = v27;
        *(v38 + 24) = v84;
        *(v38 + 32) = v86;
        *(v38 + 40) = v10;
        *(v38 + 48) = v85;
        *(v38 + 56) = v87;
        *(v38 + 64) = v35;
        *(v38 + 72) = v37;
        *(v38 + 80) = v83;
        *(v38 + 96) = v82;
        sub_25F5E3F34();

        __swift_project_boxed_opaque_existential_1Tm((v0 + 120), *(v0 + 144));
        sub_25F5E3F24();
        (*(v31 + 8))(v28, v30);
        sub_25F5A0120(v0 + 120);
      }

      else
      {
        sub_25F57C148(v0 + 120, &qword_27FD9E090, &unk_25F5E85C8);
      }
    }

    v39 = *(v0 + 296);
    v40 = *(*(v0 + 264) + 24);

    *(v39 + v40) = v10;
  }

  sub_25F57B808(*(v0 + 296), *(v0 + 288));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v0 + 392);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v42 = sub_25F57851C(0, v42[2] + 1, 1, *(v0 + 392));
  }

  v44 = v42[2];
  v43 = v42[3];
  if (v44 >= v43 >> 1)
  {
    v42 = sub_25F57851C((v43 > 1), v44 + 1, 1, v42);
  }

  v45 = *(v0 + 376);
  v46 = *(v0 + 440);
  v47 = *(v0 + 368);
  v48 = *(v0 + 296);
  v1 = *(v0 + 304);
  v49 = *(v0 + 288);
  v50 = *(v0 + 384) + 1;
  v42[2] = v44 + 1;
  sub_25F57B6DC(v49, v42 + ((v46 + 32) & ~v46) + v45 * v44);
  sub_25F57B8D4(v1);
  sub_25F57B8D4(v48);
  if (v50 == v47)
  {
    v2 = 0;
    v51 = *(v0 + 264);
    v3 = *(v0 + 272);
    v52 = v42[2];
    while (v52 != v2)
    {
      if (v2 >= v42[2])
      {
        __break(1u);
        goto LABEL_38;
      }

      v1 = *(v0 + 280);
      sub_25F57B808(v42 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v2++, v1);
      v53 = *&v1[*(v51 + 24)];

      sub_25F57B8D4(v1);
      if (v53)
      {

        sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

        v54 = *(v0 + 8);

        return v54(v42);
      }
    }

    sub_25F581FD8();
    swift_allocError();
    *v71 = 3;
    swift_willThrow();
    sub_25F57C148(v0 + 80, &qword_27FD9E090, &unk_25F5E85C8);

    v72 = *(v0 + 8);

    return v72();
  }

  else
  {
    v56 = *(v0 + 376);
    v57 = *(v0 + 384) + 1;
    *(v0 + 384) = v57;
    *(v0 + 392) = v42;
    v58 = *(v0 + 296);
    v59 = *(v0 + 304);
    v60 = *(v0 + 444) - 1;
    sub_25F57B808(*(v0 + 224) + ((*(v0 + 440) + 32) & ~*(v0 + 440)) + v56 * v57, v59);
    sub_25F57B808(v59, v58);
    if (v60 >= 2)
    {
      v73 = *(v0 + 304);
      v74 = *(v0 + 264);
      v75 = *(v0 + 232);
      v76 = v75[3];
      v77 = v75[4];
      __swift_project_boxed_opaque_existential_1Tm(v75, v76);
      v78 = (v73 + *(v74 + 20));
      v79 = *v78;
      v80 = v78[1];
      v89 = (*(v77 + 16) + **(v77 + 16));
      v81 = swift_task_alloc();
      *(v0 + 424) = v81;
      *v81 = v0;
      v81[1] = sub_25F59DE04;

      return v89(v79, v80, v76, v77);
    }

    else
    {
      v61 = *(v0 + 304);
      v62 = *(v0 + 264);
      v63 = *(v0 + 232);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E098, &qword_25F5E85D8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_25F5E5EE0;
      *(inited + 32) = 0x746E6F4372657375;
      *(inited + 40) = 0xEB00000000746E65;
      v65 = (v61 + *(v62 + 20));
      v66 = v65[1];
      *(inited + 48) = *v65;
      *(inited + 56) = v66;

      v67 = sub_25F571EB0(inited);
      *(v0 + 400) = v67;
      swift_setDeallocating();
      sub_25F57C148(inited + 32, &qword_27FD9E0A0, &qword_25F5E85E0);
      v68 = v63[3];
      v69 = v63[4];
      __swift_project_boxed_opaque_existential_1Tm(v63, v68);
      v88 = (*(v69 + 24) + **(v69 + 24));
      v70 = swift_task_alloc();
      *(v0 + 408) = v70;
      *v70 = v0;
      v70[1] = sub_25F59D1EC;

      return v88(v67, v68, v69);
    }
  }
}

uint64_t sub_25F59E9F4()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_25F57C148((v0 + 10), &qword_27FD9E090, &unk_25F5E85C8);
  sub_25F57B8D4(v2);
  sub_25F57B8D4(v1);

  v3 = v0[1];

  return v3();
}

uint64_t sub_25F59EABC()
{
  v1 = v0[37];
  v2 = v0[38];
  sub_25F57C148((v0 + 10), &qword_27FD9E090, &unk_25F5E85C8);
  sub_25F57B8D4(v2);
  sub_25F57B8D4(v1);

  v3 = v0[1];

  return v3();
}

uint64_t TaggingParameters.llmInferenceConfig.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 64);
  v4 = *(v1 + 96);
  v12 = *(v1 + 80);
  v3 = v12;
  v13 = v4;
  v14 = *(v1 + 112);
  v5 = v14;
  v6 = *(v1 + 16);
  v11[0] = *v1;
  v7 = *(v1 + 32);
  v8 = *(v1 + 48);
  v11[1] = v6;
  v11[2] = v7;
  v11[3] = v8;
  v11[4] = v2;
  *a1 = v11[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v7;
  *(a1 + 48) = v8;
  *(a1 + 64) = v2;
  *(a1 + 80) = v3;
  *(a1 + 96) = v4;
  *(a1 + 112) = v5;
  return sub_25F57B740(v11, v10);
}

__n128 TaggingParameters.llmInferenceConfig.setter(uint64_t a1)
{
  v3 = *(v1 + 80);
  v10[4] = *(v1 + 64);
  v10[5] = v3;
  v10[6] = *(v1 + 96);
  v11 = *(v1 + 112);
  v4 = *(v1 + 16);
  v10[0] = *v1;
  v10[1] = v4;
  v5 = *(v1 + 48);
  v10[2] = *(v1 + 32);
  v10[3] = v5;
  sub_25F5767CC(v10);
  v6 = *(a1 + 80);
  *(v1 + 64) = *(a1 + 64);
  *(v1 + 80) = v6;
  *(v1 + 96) = *(a1 + 96);
  *(v1 + 112) = *(a1 + 112);
  v7 = *(a1 + 16);
  *v1 = *a1;
  *(v1 + 16) = v7;
  result = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v1 + 32) = result;
  *(v1 + 48) = v9;
  return result;
}

uint64_t TaggingParameters.allowListedTags.setter(uint64_t a1)
{

  *(v1 + 120) = a1;
  return result;
}

uint64_t TaggingParameters.denyListedTags.setter(uint64_t a1)
{

  *(v1 + 128) = a1;
  return result;
}

uint64_t TaggingParameters.maxNumTags.setter(uint64_t result, char a2)
{
  *(v2 + 136) = result;
  *(v2 + 144) = a2 & 1;
  return result;
}

unint64_t sub_25F59EDA8()
{
  v1 = *v0;
  v2 = 0x73694C776F6C6C61;
  v3 = 0x7473694C796E6564;
  v4 = 0x61546D754E78616DLL;
  if (v1 != 3)
  {
    v4 = 0x426E4965726F7473;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000012;
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

uint64_t sub_25F59EE6C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5A049C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F59EE94(uint64_t a1)
{
  v2 = sub_25F5A0150();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F59EED0(uint64_t a1)
{
  v2 = sub_25F5A0150();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t TaggingParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E0A8, &qword_25F5E85E8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v27 - v8;
  v10 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F5A0150();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  v29 = v6;
  v65 = 0;
  sub_25F576820();
  v11 = v5;
  sub_25F5E4AD4();
  v59 = v51;
  v60 = v52;
  v61 = v53;
  LOBYTE(v62) = v54;
  v55 = v47;
  v56 = v48;
  v57 = v49;
  v58 = v50;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DD40, &qword_25F5E85F0);
  LOBYTE(v31[0]) = 1;
  sub_25F576874();
  sub_25F5E4A84();
  v12 = *&v40[0];
  LOBYTE(v31[0]) = 2;
  sub_25F5E4A84();
  v13 = *&v40[0];
  LOBYTE(v40[0]) = 3;
  v14 = sub_25F5E4A74();
  v15 = v29;
  v28 = v14;
  v63 = v16 & 1;
  v64 = 4;
  v17 = sub_25F5E4AA4();
  (*(v15 + 8))(v9, v11);
  v17 &= 1u;
  v34 = v59;
  v35 = v60;
  v36 = v61;
  v31[0] = v55;
  v31[1] = v56;
  v32 = v57;
  v33 = v58;
  *&v37 = v62;
  *(&v37 + 1) = v12;
  v18 = v28;
  *&v38 = v13;
  *(&v38 + 1) = v28;
  LOBYTE(v11) = v63;
  LOBYTE(v39) = v63;
  HIBYTE(v39) = v17;
  v19 = v56;
  *a2 = v55;
  *(a2 + 16) = v19;
  v20 = v32;
  v21 = v33;
  v22 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v22;
  *(a2 + 32) = v20;
  *(a2 + 48) = v21;
  v23 = v36;
  v24 = v37;
  v25 = v38;
  *(a2 + 144) = v39;
  *(a2 + 112) = v24;
  *(a2 + 128) = v25;
  *(a2 + 96) = v23;
  sub_25F5A01A4(v31, v40);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  v40[4] = v59;
  v40[5] = v60;
  v40[6] = v61;
  v40[0] = v55;
  v40[1] = v56;
  v40[2] = v57;
  v40[3] = v58;
  v41 = v62;
  v42 = v12;
  v43 = v13;
  v44 = v18;
  v45 = v11;
  v46 = v17;
  return sub_25F57B7B4(v40);
}

uint64_t sub_25F59F380@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 6775156 && a2 == 0xE300000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F5E4B84();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F59F408(uint64_t a1)
{
  v2 = sub_25F5A0838();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F59F444(uint64_t a1)
{
  v2 = sub_25F5A0838();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25F59F480@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E0F0, &qword_25F5E88F0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v14 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A0838();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v10 = sub_25F5E4A94();
  v12 = v11;
  (*(v6 + 8))(v9, v5);
  result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
  *a2 = v10;
  a2[1] = v12;
  return result;
}

uint64_t sub_25F59F5FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;

  v14 = sub_25F5ACBF0(a1, a2);
  v16 = v15;
  sub_25F5E33E4();
  swift_allocObject();
  sub_25F5E33D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E0D8, &qword_25F5E8898);
  sub_25F5A06CC();
  sub_25F5E33C4();
  if (v7)
  {
    sub_25F571820(v14, v16);

    if (qword_27FD9D8B0 != -1)
    {
      goto LABEL_78;
    }

    goto LABEL_3;
  }

  v78 = a6;
  v75 = a5;
  v76 = v14;
  v77 = v16;

  v26 = v84;
  v27 = *(v84 + 16);
  v79 = a3;
  if (v27)
  {
    v85 = MEMORY[0x277D84F90];
    sub_25F571230(0, v27, 0);
    a6 = v85;
    v28 = (v26 + 40);
    do
    {
      v29 = *(v28 - 1);
      v30 = *v28;
      v32 = *(v85 + 16);
      v31 = *(v85 + 24);

      if (v32 >= v31 >> 1)
      {
        sub_25F571230((v31 > 1), v32 + 1, 1);
      }

      *(v85 + 16) = v32 + 1;
      v33 = v85 + 16 * v32;
      *(v33 + 32) = v29;
      *(v33 + 40) = v30;
      v28 += 2;
      --v27;
    }

    while (v27);

    a3 = v79;
    if (!v79)
    {
LABEL_12:
      if (a4)
      {
        goto LABEL_40;
      }

LABEL_13:
      if (v78)
      {
        goto LABEL_67;
      }

LABEL_64:
      if (*(a6 + 16) <= v75)
      {
LABEL_67:
        sub_25F571820(v76, v77);
        return a6;
      }

      sub_25F5C73CC();
      v67 = sub_25F5C3408(v75, a6);
      if (v66)
      {
        v69 = v66;
        v70 = v65;
        v71 = v64;
        sub_25F5E4B94();
        swift_unknownObjectRetain_n();
        v72 = swift_dynamicCastClass();
        if (!v72)
        {
          swift_unknownObjectRelease();
          v72 = MEMORY[0x277D84F90];
        }

        v73 = *(v72 + 16);

        if (__OFSUB__(v69 >> 1, v70))
        {
          __break(1u);
        }

        else if (v73 == (v69 >> 1) - v70)
        {
          v68 = swift_dynamicCastClass();
          if (!v68)
          {
            swift_unknownObjectRelease();
            sub_25F571820(v76, v77);
            swift_unknownObjectRelease();
            return MEMORY[0x277D84F90];
          }

          goto LABEL_73;
        }

        swift_unknownObjectRelease();
        v66 = v69;
        v65 = v70;
        v64 = v71;
      }

      sub_25F5C7154(v67, v64, v65, v66);
LABEL_73:
      a6 = v68;
      sub_25F571820(v76, v77);
      swift_unknownObjectRelease();
      return a6;
    }
  }

  else
  {

    a6 = MEMORY[0x277D84F90];
    if (!a3)
    {
      goto LABEL_12;
    }
  }

  v83 = *(a6 + 16);
  if (!v83)
  {
    v80 = MEMORY[0x277D84F90];
    goto LABEL_39;
  }

  v34 = 0;
  v7 = a3 + 56;
  v80 = MEMORY[0x277D84F90];
  do
  {
    v35 = v34;
    while (1)
    {
      if (v35 >= *(a6 + 16))
      {
        __break(1u);
        goto LABEL_77;
      }

      v34 = v35 + 1;
      if (*(a3 + 16))
      {
        break;
      }

LABEL_20:
      v35 = v34;
      if (v34 == v83)
      {
        goto LABEL_39;
      }
    }

    v36 = (a6 + 32 + 16 * v35);
    v37 = *v36;
    v38 = v36[1];
    sub_25F5E4C34();

    sub_25F5E4334();
    v39 = sub_25F5E4C54();
    v40 = -1 << *(a3 + 32);
    v41 = v39 & ~v40;
    if (((*(v7 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
    {
LABEL_19:

      goto LABEL_20;
    }

    v42 = ~v40;
    while (1)
    {
      v43 = (*(a3 + 48) + 16 * v41);
      v44 = *v43 == v37 && v43[1] == v38;
      if (v44 || (sub_25F5E4B84() & 1) != 0)
      {
        break;
      }

      v41 = (v41 + 1) & v42;
      if (((*(v7 + ((v41 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v41) & 1) == 0)
      {
        goto LABEL_19;
      }
    }

    v45 = v80;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_25F571230(0, *(v80 + 16) + 1, 1);
      v45 = v80;
    }

    v47 = *(v45 + 16);
    v46 = *(v45 + 24);
    if (v47 >= v46 >> 1)
    {
      sub_25F571230((v46 > 1), v47 + 1, 1);
      v45 = v80;
    }

    *(v45 + 16) = v47 + 1;
    v80 = v45;
    v48 = v45 + 16 * v47;
    *(v48 + 32) = v37;
    *(v48 + 40) = v38;
    a3 = v79;
  }

  while (v34 != v83);
LABEL_39:

  a6 = v80;
  if (!a4)
  {
    goto LABEL_13;
  }

LABEL_40:
  v49 = *(a6 + 16);
  if (!v49)
  {
    v51 = MEMORY[0x277D84F90];
LABEL_63:

    a6 = v51;
    if (v78)
    {
      goto LABEL_67;
    }

    goto LABEL_64;
  }

  v7 = 0;
  v50 = a4 + 56;
  v51 = MEMORY[0x277D84F90];
  v81 = *(a6 + 16);
LABEL_42:
  v82 = v51;
  while (v7 < *(a6 + 16))
  {
    v52 = (a6 + 32 + 16 * v7);
    v54 = *v52;
    v53 = v52[1];
    ++v7;
    if (!*(a4 + 16))
    {

LABEL_54:
      v51 = v82;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_25F571230(0, *(v82 + 16) + 1, 1);
        v51 = v82;
      }

      v62 = *(v51 + 16);
      v61 = *(v51 + 24);
      if (v62 >= v61 >> 1)
      {
        sub_25F571230((v61 > 1), v62 + 1, 1);
        v51 = v82;
      }

      *(v51 + 16) = v62 + 1;
      v63 = v51 + 16 * v62;
      *(v63 + 32) = v54;
      *(v63 + 40) = v53;
      v49 = v81;
      if (v7 != v81)
      {
        goto LABEL_42;
      }

      goto LABEL_63;
    }

    sub_25F5E4C34();

    sub_25F5E4334();
    v55 = sub_25F5E4C54();
    v56 = -1 << *(a4 + 32);
    v57 = v55 & ~v56;
    if (((*(v50 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
    {
      goto LABEL_54;
    }

    v58 = ~v56;
    while (1)
    {
      v59 = (*(a4 + 48) + 16 * v57);
      v60 = *v59 == v54 && v59[1] == v53;
      if (v60 || (sub_25F5E4B84() & 1) != 0)
      {
        break;
      }

      v57 = (v57 + 1) & v58;
      if (((*(v50 + ((v57 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v57) & 1) == 0)
      {
        goto LABEL_54;
      }
    }

    if (v7 == v49)
    {
      v51 = v82;
      goto LABEL_63;
    }
  }

LABEL_77:
  __break(1u);
LABEL_78:
  swift_once();
LABEL_3:
  v17 = sub_25F5E3FB4();
  __swift_project_value_buffer(v17, qword_27FD9EA20);
  v18 = v7;
  v19 = sub_25F5E3F94();
  v20 = sub_25F5E47B4();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v21 = 138412290;
    v23 = v7;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v21 + 4) = v24;
    *v22 = v24;
    _os_log_impl(&dword_25F56A000, v19, v20, "Failed to parse tags: %@", v21, 0xCu);
    sub_25F57C148(v22, &qword_27FD9DEF0, &qword_25F5E8550);
    MEMORY[0x25F8E3B70](v22, -1, -1);
    MEMORY[0x25F8E3B70](v21, -1, -1);
  }

  sub_25F581FD8();
  swift_allocError();
  *v25 = 1;
  swift_willThrow();

  return a6;
}

void sub_25F59FDA4(uint64_t a1@<X8>)
{
  sub_25F5E3D74();
  sub_25F5A0674();
  sub_25F5E3D94();
  if (v1)
  {
    if (qword_27FD9D8B0 != -1)
    {
      swift_once();
    }

    v3 = sub_25F5E3FB4();
    __swift_project_value_buffer(v3, qword_27FD9EA20);
    v4 = v1;
    v5 = sub_25F5E3F94();
    v6 = sub_25F5E47B4();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      v9 = v1;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_25F56A000, v5, v6, "Failed to connect to Biome tag source: %@", v7, 0xCu);
      sub_25F57C148(v8, &qword_27FD9DEF0, &qword_25F5E8550);
      MEMORY[0x25F8E3B70](v8, -1, -1);
      MEMORY[0x25F8E3B70](v7, -1, -1);
    }

    sub_25F581FD8();
    swift_allocError();
    *v11 = 2;
    swift_willThrow();
  }

  else
  {
    sub_25F573A2C(&v12, a1);
  }
}

uint64_t sub_25F59FF78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v18[1] = a3;
  v18[2] = a6;
  v18[5] = a8;
  v18[6] = a13;
  v18[7] = a12;
  v18[3] = a11;
  v18[4] = a10;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  MEMORY[0x28223BE20](v14 - 8, v15);
  sub_25F573B94(a2, v18 - v16, &qword_27FD9DE10, &unk_25F5E7240);
  sub_25F5E3EE4();

  sub_25F5E3F04();

  sub_25F5E3ED4();

  sub_25F5E3EF4();

  sub_25F5E3EA4();

  sub_25F5E3EC4();

  return sub_25F5E3EB4();
}

unint64_t sub_25F5A0150()
{
  result = qword_27FD9E0B0;
  if (!qword_27FD9E0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0B0);
  }

  return result;
}

__n128 __swift_memcpy146_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 128);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 112) = v7;
  *(a1 + 128) = v8;
  *(a1 + 96) = result;
  return result;
}

uint64_t sub_25F5A0210(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 146))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5A0258(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 144) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 146) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 146) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F5A02F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_25F5A033C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F5A0398()
{
  result = qword_27FD9E0B8;
  if (!qword_27FD9E0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0B8);
  }

  return result;
}

unint64_t sub_25F5A03F0()
{
  result = qword_27FD9E0C0;
  if (!qword_27FD9E0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0C0);
  }

  return result;
}

unint64_t sub_25F5A0448()
{
  result = qword_27FD9E0C8;
  if (!qword_27FD9E0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0C8);
  }

  return result;
}

uint64_t sub_25F5A049C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000025F5EC490 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x73694C776F6C6C61 && a2 == 0xEF73676154646574 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7473694C796E6564 && a2 == 0xEE00736761546465 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x61546D754E78616DLL && a2 == 0xEA00000000007367 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x426E4965726F7473 && a2 == 0xEC000000656D6F69)
  {

    return 4;
  }

  else
  {
    v5 = sub_25F5E4B84();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_25F5A0674()
{
  result = qword_27FD9E0D0;
  if (!qword_27FD9E0D0)
  {
    sub_25F5E3D74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0D0);
  }

  return result;
}

unint64_t sub_25F5A06CC()
{
  result = qword_27FD9E0E0;
  if (!qword_27FD9E0E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E0D8, &qword_25F5E8898);
    sub_25F5A0750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0E0);
  }

  return result;
}

unint64_t sub_25F5A0750()
{
  result = qword_27FD9E0E8;
  if (!qword_27FD9E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0E8);
  }

  return result;
}

uint64_t sub_25F5A07A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5A07EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_25F5A0838()
{
  result = qword_27FD9E0F8;
  if (!qword_27FD9E0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E0F8);
  }

  return result;
}

unint64_t sub_25F5A08A0()
{
  result = qword_27FD9E100;
  if (!qword_27FD9E100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E100);
  }

  return result;
}

unint64_t sub_25F5A08F8()
{
  result = qword_27FD9E108;
  if (!qword_27FD9E108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E108);
  }

  return result;
}

unint64_t sub_25F5A0950()
{
  result = qword_27FD9E110;
  if (!qword_27FD9E110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E110);
  }

  return result;
}

uint64_t static PriMLETLUtils.processDataWithIgnoreFailures(data:ignoreFailures:processSample:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_25F575BD4;

  return sub_25F5A1F60(a1, a2, a3, a4);
}

uint64_t static PriMLETLUtils.checkGenerativeModelsAvailability(_:useCaseIdentifier:)(uint64_t *a1, char *a2, unint64_t a3)
{
  v128 = a2;
  v5 = sub_25F5E3B34();
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v118 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v132 = sub_25F5E3B44();
  v8 = *(v132 - 8);
  v10 = MEMORY[0x28223BE20](v132, v9);
  v115 = &v114 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v10, v12);
  v130 = &v114 - v14;
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v114 - v16;
  v127 = sub_25F5E3B84();
  v125 = *(v127 - 8);
  MEMORY[0x28223BE20](v127, v18);
  v124 = &v114 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_25F5E3B64();
  v123 = *(v126 - 8);
  MEMORY[0x28223BE20](v126, v20);
  v122 = &v114 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_25F5E3BA4();
  v129 = *(v22 - 8);
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v114 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = *a1;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v27 = sub_25F5E3FB4();
  v28 = __swift_project_value_buffer(v27, qword_27FD9EA20);

  v131 = v28;
  v29 = sub_25F5E3F94();
  v30 = sub_25F5E47A4();

  v31 = os_log_type_enabled(v29, v30);
  v121 = v26;
  if (v31)
  {
    v32 = swift_slowAlloc();
    v117 = v22;
    v33 = v32;
    v34 = swift_slowAlloc();
    v116 = v17;
    v35 = v34;
    v134 = v34;
    *v33 = 136315394;
    v133 = v26;
    v36 = GenerativeModelsAvailabilityType.description.getter();
    v38 = v8;
    v39 = sub_25F570AF8(v36, v37, &v134);

    *(v33 + 4) = v39;
    v8 = v38;
    *(v33 + 12) = 2080;
    *(v33 + 14) = sub_25F570AF8(v128, a3, &v134);
    _os_log_impl(&dword_25F56A000, v29, v30, "Checking for GenerativeModels availability == %s for %s.", v33, 0x16u);
    swift_arrayDestroy();
    v40 = v35;
    v17 = v116;
    MEMORY[0x25F8E3B70](v40, -1, -1);
    v41 = v33;
    v22 = v117;
    MEMORY[0x25F8E3B70](v41, -1, -1);
  }

  (*(v125 + 104))(v124, *MEMORY[0x277D0E2D8], v127);

  v42 = v122;
  sub_25F5E3B54();
  sub_25F5E3B94();
  (*(v123 + 8))(v42, v126);
  sub_25F5E3B74();
  v43 = *(v8 + 16);
  v44 = v130;
  v45 = v17;
  v46 = v17;
  v47 = v132;
  v43(v130, v46, v132);
  v48 = (*(v8 + 88))(v44, v47);
  v49 = v25;
  if (v48 != *MEMORY[0x277D0DFA8])
  {
    if (v48 == *MEMORY[0x277D0DFB0])
    {
      v127 = v8;
      v128 = v25;
      (*(v8 + 96))(v44, v132);
      (*(v119 + 32))(v118, v44, v120);
      sub_25F5E3B24();
      v68 = sub_25F5E3F94();
      v69 = sub_25F5E47B4();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v117 = v22;
        v72 = v71;
        v134 = v71;
        *v70 = 136315138;
        sub_25F5E3B14();
        sub_25F5A27B8(&qword_27FD9E130, MEMORY[0x277D0E218], MEMORY[0x277D0E220]);
        v73 = sub_25F5E46F4();
        v74 = v45;
        v76 = v75;

        v77 = sub_25F570AF8(v73, v76, &v134);
        v45 = v74;

        *(v70 + 4) = v77;
        _os_log_impl(&dword_25F56A000, v68, v69, "GenerativeModels is unavailable: %s.", v70, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v72);
        v78 = v72;
        v22 = v117;
        MEMORY[0x25F8E3B70](v78, -1, -1);
        MEMORY[0x25F8E3B70](v70, -1, -1);
      }

      else
      {
      }

      sub_25F5A2764();
      swift_allocError();
      *v96 = 0;
      swift_willThrow();
      (*(v119 + 8))(v118, v120);
      (*(v127 + 8))(v45, v132);
    }

    else
    {
      if (v48 != *MEMORY[0x277D0E278])
      {
        v128 = v25;
        v97 = v115;
        v116 = v45;
        v43(v115, v45, v132);
        v98 = sub_25F5E3F94();
        v99 = sub_25F5E47B4();
        if (os_log_type_enabled(v98, v99))
        {
          v100 = v8;
          v101 = swift_slowAlloc();
          v102 = swift_slowAlloc();
          v117 = v22;
          v103 = v102;
          v134 = v102;
          *v101 = 136315138;
          sub_25F5A27B8(&qword_27FD9E120, MEMORY[0x277D0E280], MEMORY[0x277D0E290]);
          LODWORD(v131) = v99;
          v104 = v132;
          v105 = sub_25F5E4B44();
          v107 = v106;
          v108 = *(v100 + 8);
          v108(v97, v104);
          v44 = v130;
          v109 = sub_25F570AF8(v105, v107, &v134);

          *(v101 + 4) = v109;
          _os_log_impl(&dword_25F56A000, v98, v131, "Unexpected availibility state: %s.", v101, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v103);
          v110 = v103;
          v22 = v117;
          MEMORY[0x25F8E3B70](v110, -1, -1);
          MEMORY[0x25F8E3B70](v101, -1, -1);
        }

        else
        {

          v108 = *(v8 + 8);
          v108(v97, v132);
        }

        v111 = sub_25F5E3D24();
        sub_25F5A27B8(&qword_27FD9E118, MEMORY[0x277D413F8], MEMORY[0x277D41400]);
        swift_allocError();
        (*(*(v111 - 8) + 104))(v112, *MEMORY[0x277D413E0], v111);
        swift_willThrow();
        v113 = v132;
        v108(v116, v132);
        (*(v129 + 8))(v128, v22);
        return (v108)(v44, v113);
      }

      v81 = sub_25F5E3F94();
      v82 = sub_25F5E47A4();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_25F56A000, v81, v82, "GenerativeModels is available.", v83, 2u);
        MEMORY[0x25F8E3B70](v83, -1, -1);
      }

      v84 = v121;
      if (v121)
      {
        (*(v8 + 8))(v45, v132);
        return (*(v129 + 8))(v49, v22);
      }

      v128 = v49;
      v85 = sub_25F5E3F94();
      v86 = sub_25F5E47A4();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v127 = v8;
        v88 = v87;
        v89 = v22;
        v90 = swift_slowAlloc();
        v134 = v90;
        *v88 = 136315138;
        v133 = v84;
        v91 = GenerativeModelsAvailabilityType.description.getter();
        v93 = sub_25F570AF8(v91, v92, &v134);

        *(v88 + 4) = v93;
        _os_log_impl(&dword_25F56A000, v85, v86, "GenerativeModels is available but task required %s.", v88, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v90);
        v94 = v90;
        v22 = v89;
        MEMORY[0x25F8E3B70](v94, -1, -1);
        v8 = v127;
        MEMORY[0x25F8E3B70](v88, -1, -1);
      }

      sub_25F5A2764();
      swift_allocError();
      *v95 = 0;
      swift_willThrow();
      (*(v8 + 8))(v45, v132);
    }

    return (*(v129 + 8))(v128, v22);
  }

  v50 = sub_25F5E3F94();
  v51 = sub_25F5E47A4();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&dword_25F56A000, v50, v51, "GenerativeModels is restricted.", v52, 2u);
    MEMORY[0x25F8E3B70](v52, -1, -1);
  }

  v53 = v121;
  if ((v121 & 2) != 0)
  {
    v79 = *(v8 + 8);
    v80 = v132;
    v79(v45, v132);
    (*(v129 + 8))(v49, v22);
    return (v79)(v44, v80);
  }

  else
  {
    v128 = v49;
    v54 = sub_25F5E3F94();
    v55 = sub_25F5E47A4();
    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v127 = v8;
      v57 = v56;
      v58 = v22;
      v59 = swift_slowAlloc();
      v134 = v59;
      *v57 = 136315138;
      v133 = v53;
      v60 = GenerativeModelsAvailabilityType.description.getter();
      v62 = sub_25F570AF8(v60, v61, &v134);

      *(v57 + 4) = v62;
      _os_log_impl(&dword_25F56A000, v54, v55, "GenerativeModels is restricted but task required %s.", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v59);
      v63 = v59;
      v22 = v58;
      v44 = v130;
      MEMORY[0x25F8E3B70](v63, -1, -1);
      v8 = v127;
      MEMORY[0x25F8E3B70](v57, -1, -1);
    }

    sub_25F5A2764();
    swift_allocError();
    *v64 = 0;
    swift_willThrow();
    v65 = *(v8 + 8);
    v66 = v132;
    v65(v45, v132);
    (*(v129 + 8))(v128, v22);
    return (v65)(v44, v66);
  }
}

uint64_t sub_25F5A186C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25F5A1894, 0, 0);
}

void *sub_25F5A1894()
{
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  result = sub_25F5783E8(0, v1, 0, MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = v0[2];
    v0[6] = result;
    v0[7] = 0;
    if (v0[5])
    {
      v4 = *(v3 + 32);
      v0[8] = v4;
      v0[9] = 1;

      v5 = swift_task_alloc();
      v0[10] = v5;
      *v5 = v0;
      v5[1] = sub_25F5A19B0;
      v6 = v0[3];
      v7 = v0[4];

      return sub_25F575180(0, v4, v6, v7);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v8 = v0[1];

    return v8(result);
  }

  return result;
}

uint64_t sub_25F5A19B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_25F5A1C80;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_25F5A1AF4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_25F5A1AF4()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[6];
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_25F5783E8((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = v0[9];
    v6 = v0[5];
    v2[2] = v4 + 1;
    v2[v4 + 4] = v1;
    if (v5 != v6)
    {
      v7 = v0[9];
      v0[6] = v2;
      v8 = v0[5];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v0[9];
    v8 = v0[5];
    if (v7 != v8)
    {
LABEL_11:
      v0[7] = v7;
      if (v7 >= v8)
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0[2] + 8 * v7 + 32);
        v0[8] = v10;
        v0[9] = v7 + 1;
        if (!__OFADD__(v7, 1))
        {

          v11 = swift_task_alloc();
          v0[10] = v11;
          *v11 = v0;
          v11[1] = sub_25F5A19B0;
          v12 = v0[3];
          v13 = v0[4];

          sub_25F575180(v7, v10, v12, v13);
          return;
        }
      }

      __break(1u);
      return;
    }

    v2 = v0[6];
  }

  v9 = v0[1];

  v9(v2);
}

void sub_25F5A1C80()
{
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_25F5E3FB4();
  __swift_project_value_buffer(v2, qword_27FD9EA20);
  v3 = v1;
  v4 = sub_25F5E3F94();
  v5 = sub_25F5E47B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_25F56A000, v4, v5, "Processing failed for item %ld with error: %@", v8, 0x16u);
    sub_25F5A2810(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v12 = *(v0 + 104);

  if (v12 == 1 && (*(v0 + 56) != *(v0 + 40) - 1 || *(*(v0 + 48) + 16)))
  {

    v13 = *(v0 + 72);
    v14 = *(v0 + 40);
    if (v13 == v14)
    {
      v15 = *(v0 + 48);
      v16 = *(v0 + 8);

      v16(v15);
      return;
    }

    *(v0 + 56) = v13;
    if (v13 >= v14)
    {
      __break(1u);
    }

    else
    {
      v18 = *(*(v0 + 16) + 8 * v13 + 32);
      *(v0 + 64) = v18;
      *(v0 + 72) = v13 + 1;
      if (!__OFADD__(v13, 1))
      {

        v19 = swift_task_alloc();
        *(v0 + 80) = v19;
        *v19 = v0;
        v19[1] = sub_25F5A19B0;
        v20 = *(v0 + 24);
        v21 = *(v0 + 32);

        sub_25F575180(v13, v18, v20, v21);
        return;
      }
    }

    __break(1u);
    return;
  }

  swift_willThrow();
  v17 = *(v0 + 8);

  v17();
}

uint64_t sub_25F5A1F60(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  *(v4 + 104) = a2;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_25F5A1F88, 0, 0);
}

void *sub_25F5A1F88()
{
  v1 = *(v0[2] + 16);
  v0[5] = v1;
  result = sub_25F5783E8(0, v1, 0, MEMORY[0x277D84F90]);
  if (v1)
  {
    v3 = v0[2];
    v4 = v0[3];
    v0[6] = result;
    v0[7] = 0;
    if (v0[5])
    {
      v5 = *(v3 + 32);
      v0[8] = v5;
      v0[9] = 1;

      v8 = (v4 + *v4);
      v6 = swift_task_alloc();
      v0[10] = v6;
      *v6 = v0;
      v6[1] = sub_25F5A2100;

      return (v8)(0, v5);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v7 = v0[1];

    return v7(result);
  }

  return result;
}

uint64_t sub_25F5A2100(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 88) = v1;

  if (v1)
  {
    v5 = sub_25F5A2430;
  }

  else
  {
    *(v4 + 96) = a1;
    v5 = sub_25F5A2244;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void sub_25F5A2244()
{
  v1 = v0[12];
  if (v1)
  {
    v2 = v0[6];
    v4 = v2[2];
    v3 = v2[3];
    if (v4 >= v3 >> 1)
    {
      v2 = sub_25F5783E8((v3 > 1), v4 + 1, 1, v2);
    }

    v5 = v0[9];
    v6 = v0[5];
    v2[2] = v4 + 1;
    v2[v4 + 4] = v1;
    if (v5 != v6)
    {
      v7 = v0[9];
      v0[6] = v2;
      v8 = v0[5];
      goto LABEL_11;
    }
  }

  else
  {
    v7 = v0[9];
    v8 = v0[5];
    if (v7 != v8)
    {
LABEL_11:
      v0[7] = v7;
      if (v7 >= v8)
      {
        __break(1u);
      }

      else
      {
        v10 = *(v0[2] + 8 * v7 + 32);
        v0[8] = v10;
        v0[9] = v7 + 1;
        if (!__OFADD__(v7, 1))
        {
          v11 = v0[3];

          v13 = (v11 + *v11);
          v12 = swift_task_alloc();
          v0[10] = v12;
          *v12 = v0;
          v12[1] = sub_25F5A2100;

          v13(v7, v10);
          return;
        }
      }

      __break(1u);
      return;
    }

    v2 = v0[6];
  }

  v9 = v0[1];

  v9(v2);
}

void sub_25F5A2430()
{
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = sub_25F5E3FB4();
  __swift_project_value_buffer(v2, qword_27FD9EA20);
  v3 = v1;
  v4 = sub_25F5E3F94();
  v5 = sub_25F5E47B4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 88);
    v7 = *(v0 + 56);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2112;
    v10 = v6;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&dword_25F56A000, v4, v5, "Processing failed for item %ld with error: %@", v8, 0x16u);
    sub_25F5A2810(v9);
    MEMORY[0x25F8E3B70](v9, -1, -1);
    MEMORY[0x25F8E3B70](v8, -1, -1);
  }

  v12 = *(v0 + 104);

  if ((v12 & 1) != 0 && (*(v0 + 56) != *(v0 + 40) - 1 || *(*(v0 + 48) + 16)))
  {

    v13 = *(v0 + 72);
    v14 = *(v0 + 40);
    if (v13 == v14)
    {
      v15 = *(v0 + 48);
      v16 = *(v0 + 8);

      v16(v15);
      return;
    }

    *(v0 + 56) = v13;
    if (v13 >= v14)
    {
      __break(1u);
    }

    else
    {
      v18 = *(*(v0 + 16) + 8 * v13 + 32);
      *(v0 + 64) = v18;
      *(v0 + 72) = v13 + 1;
      if (!__OFADD__(v13, 1))
      {
        v19 = *(v0 + 24);

        v21 = (v19 + *v19);
        v20 = swift_task_alloc();
        *(v0 + 80) = v20;
        *v20 = v0;
        v20[1] = sub_25F5A2100;

        v21(v13, v18);
        return;
      }
    }

    __break(1u);
    return;
  }

  swift_willThrow();
  v17 = *(v0 + 8);

  v17();
}

unint64_t sub_25F5A2764()
{
  result = qword_27FD9E128;
  if (!qword_27FD9E128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E128);
  }

  return result;
}

uint64_t sub_25F5A27B8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F5A2810(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DEF0, &qword_25F5E8550);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5A2888(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5A28D0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F5A2928(uint64_t a1)
{
  *(v2 + 16) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE00, &unk_25F5E9D40);
  *(v2 + 24) = swift_task_alloc();
  v3 = sub_25F5E3774();
  *(v2 + 32) = v3;
  *(v2 + 40) = *(v3 - 8);
  *(v2 + 48) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE08, &unk_25F5E7230);
  *(v2 + 56) = swift_task_alloc();
  v4 = sub_25F5E3794();
  *(v2 + 64) = v4;
  *(v2 + 72) = *(v4 - 8);
  *(v2 + 80) = swift_task_alloc();
  v5 = type metadata accessor for ExtractedItem(0);
  *(v2 + 88) = v5;
  *(v2 + 96) = *(v5 - 8);
  *(v2 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  *(v2 + 112) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DE10, &unk_25F5E7240);
  *(v2 + 120) = swift_task_alloc();
  *(v2 + 128) = *v1;
  *(v2 + 144) = *(v1 + 32);

  return MEMORY[0x2822009F8](sub_25F5A2B90, 0, 0);
}

uint64_t sub_25F5A2B90()
{
  v1 = sub_25F5E4784();
  v2 = [v1 next];

  v3 = v0[14];
  v4 = v0[15];
  v5 = v0[13];
  if (v2)
  {
    v7 = v0[11];
    v6 = v0[12];
    v9 = v0[6];
    v8 = v0[7];
    v10 = v0[5];
    v44 = v0[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DDE8, &unk_25F5E7208);
    v49 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_25F5E5EE0;
    v11 = sub_25F5E36D4();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    v12 = sub_25F5E3694();
    v47 = *(*(v12 - 8) + 56);
    v48 = v12;
    v47(v3, 1, 1);
    v13 = MEMORY[0x277D84F90];
    v46 = sub_25F571FC4(MEMORY[0x277D84F90]);
    *(v5 + v7[6]) = 0;
    sub_25F571FC4(v13);
    sub_25F5E3754();
    sub_25F573B94(v4, v5, &qword_27FD9DE10, &unk_25F5E7240);
    v14 = (v5 + v7[5]);
    *v14 = 0;
    v14[1] = 0xE000000000000000;
    sub_25F573B94(v3, v5 + v7[7], &unk_27FD9E500, &unk_25F5EA410);
    sub_25F5E3784();
    sub_25F5E3764();
    (*(v10 + 8))(v9, v44);
    v15 = sub_25F5E3704();
    v16 = *(v15 - 8);
    v17 = (*(v16 + 48))(v8, 1, v15);
    v18 = v0[7];
    if (v17 == 1)
    {
      sub_25F57C148(v0[7], &qword_27FD9DE08, &unk_25F5E7230);
      v19 = 0;
      v20 = 0;
    }

    else
    {
      v19 = sub_25F5E36F4();
      v20 = v24;
      (*(v16 + 8))(v18, v15);
    }

    v25 = v0[3];
    v26 = (v0[13] + *(v0[11] + 32));
    *v26 = v19;
    v26[1] = v20;
    sub_25F5E3744();
    v27 = sub_25F5E3734();
    v28 = *(v27 - 8);
    v29 = (*(v28 + 48))(v25, 1, v27);
    v31 = v0[14];
    v30 = v0[15];
    v32 = v0[9];
    v33 = v0[10];
    v34 = v0[8];
    v35 = v0[3];
    if (v29 == 1)
    {
      (*(v32 + 8))(v0[10], v0[8]);
      sub_25F57C148(v31, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v30, &qword_27FD9DE10, &unk_25F5E7240);
      sub_25F57C148(v35, &qword_27FD9DE00, &unk_25F5E9D40);

      v36 = 0;
      v37 = 0;
    }

    else
    {
      v45 = sub_25F5E36F4();
      v37 = v38;
      (*(v32 + 8))(v33, v34);
      sub_25F57C148(v31, &unk_27FD9E500, &unk_25F5EA410);
      sub_25F57C148(v30, &qword_27FD9DE10, &unk_25F5E7240);
      (*(v28 + 8))(v35, v27);

      v36 = v45;
    }

    v39 = v0[13];
    v40 = v0[2];
    v41 = *(v0[11] + 40);
    v42 = (v39 + *(v0[11] + 36));
    *v42 = v36;
    v42[1] = v37;
    *(v39 + v41) = v46;
    sub_25F57B6DC(v39, v50 + v49);
    (v47)(v40, 1, 1, v48);

    v43 = v0[1];

    return v43(v50);
  }

  else
  {
    sub_25F5A31D0();
    swift_allocError();
    *v21 = 4;
    swift_willThrow();

    v22 = v0[1];

    return v22();
  }
}

uint64_t sub_25F5A3138(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25F575BD4;

  return sub_25F5A2928(a1);
}

unint64_t sub_25F5A31D0()
{
  result = qword_27FD9E670;
  if (!qword_27FD9E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E670);
  }

  return result;
}

uint64_t sub_25F5A3224(uint64_t a1, unint64_t a2)
{
  v4 = sub_25F5E4CC4();
  MEMORY[0x28223BE20](v4, v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v9 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v9 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v9)
  {
    return 0;
  }

  v23 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v24 = a2 & 0xFFFFFFFFFFFFFFLL;
  v10 = (v6 + 8);

  v11 = 0;
  v12 = 0;
  do
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      sub_25F5E4944();
      v16 = v15;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v25[0] = a1;
        v25[1] = v24;
        v14 = v25 + v12;
      }

      else
      {
        v13 = v23;
        if ((a1 & 0x1000000000000000) == 0)
        {
          v13 = sub_25F5E49A4();
        }

        v14 = (v13 + v12);
      }

      if ((*v14 & 0x80000000) == 0)
      {
        goto LABEL_15;
      }

      v20 = (__clz(*v14 ^ 0xFF) - 24);
      if (v20 > 2)
      {
        if (v20 == 3)
        {
          v16 = 3;
        }

        else
        {
          v16 = 4;
        }

        goto LABEL_16;
      }

      if (v20 == 1)
      {
LABEL_15:
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }
    }

LABEL_16:
    if ((v11 & 1) == 0 || (sub_25F5E4CD4(), v17 = sub_25F5E4CA4(), (*v10)(v8, v4), (v17 & 1) == 0))
    {
      v12 += v16;
      sub_25F5E4CD4();
      v11 = sub_25F5E4CB4();
      v18 = *v10;
      (*v10)(v8, v4);
      if ((v11 & 1) == 0)
      {
        continue;
      }

      sub_25F5E4CD4();
      v19 = sub_25F5E4C94();
      v18(v8, v4);
      if ((v19 & 1) == 0)
      {
        continue;
      }
    }

    v21 = 1;
    goto LABEL_28;
  }

  while (v12 < v9);
  v21 = 0;
LABEL_28:

  return v21;
}

uint64_t sub_25F5A34D0(uint64_t a1, char a2)
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t GenerativeModelsAvailabilityType.description.getter()
{
  v1 = *v0;
  if ((*v0 & 1) == 0)
  {
    v2 = MEMORY[0x277D84F90];
    if ((v1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_25F578544(0, 1, 1, MEMORY[0x277D84F90]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_25F578544((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x6C62616C69617661;
  *(v5 + 5) = 0xE900000000000065;
  if ((v1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_25F578544(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_25F578544((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x7463697274736572;
    *(v8 + 5) = 0xEA00000000006465;
  }

LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9DB58, &qword_25F5E5F50);
  sub_25F5AB824(&qword_27FD9E550, &qword_27FD9DB58, &qword_25F5E5F50, MEMORY[0x277D83958]);
  v9 = sub_25F5E4364();

  return v9;
}

PriMLETL::WeekDay_optional __swiftcall WeekDay.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_25F5A3778(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t EmailFilterCriteria.init(weekDays:startHour:endHour:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3 & 1;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5 & 1;
  return result;
}

uint64_t sub_25F5A3874()
{
  v1 = 0x756F487472617473;
  if (*v0 != 1)
  {
    v1 = 0x72756F48646E65;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961446B656577;
  }
}

uint64_t sub_25F5A38D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5A9F80(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5A3908(uint64_t a1)
{
  v2 = sub_25F5A9644();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A3944(uint64_t a1)
{
  v2 = sub_25F5A9644();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t EmailFilterCriteria.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E138, &qword_25F5E8AA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v18 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A9644();
  sub_25F5E4C74();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E148, &qword_25F5E8AB0);
    v22 = 0;
    sub_25F5A9698();
    sub_25F5E4A84();
    v10 = v23;
    v21 = 1;
    v11 = sub_25F5E4A74();
    v19 = v12;
    v18 = v11;
    v20 = 2;
    v14 = sub_25F5E4A74();
    v16 = v15;
    (*(v6 + 8))(v9, v5);
    v17 = v18;
    *a2 = v10;
    *(a2 + 8) = v17;
    *(a2 + 16) = v19 & 1;
    *(a2 + 24) = v14;
    *(a2 + 32) = v16 & 1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 ExtractEmailParameters.init(lastDays:minMessages:maxMessages:maxLength:filterMessages:singleMessages:cleanupText:samplingSize:filterCriteria:customPredicateFormat:queryTimeout:useMorpheusToCleanupText:textCleanupMorpheusProgram:generativeModelsAvailabilityType:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, char a11, uint64_t a12, __n128 a13, uint64_t a14, char a15, char a16, uint64_t a17, uint64_t a18, uint64_t *a19)
{
  v20 = *(a12 + 32);
  v21 = *a19;
  v22 = *(a19 + 8);
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3 & 1;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6;
  *(a9 + 41) = a7;
  *(a9 + 42) = a8;
  *(a9 + 48) = a10;
  *(a9 + 56) = a11 & 1;
  sub_25F5A9770(1);
  v23 = *(a12 + 16);
  *(a9 + 64) = *a12;
  *(a9 + 80) = v23;
  *(a9 + 96) = v20;
  result = a13;
  *(a9 + 104) = a13;
  *(a9 + 120) = a14;
  *(a9 + 128) = a15 & 1;
  *(a9 + 129) = a16;
  *(a9 + 136) = a17;
  *(a9 + 144) = a18;
  *(a9 + 152) = v21;
  *(a9 + 160) = v22;
  return result;
}

uint64_t sub_25F5A3D64(char a1)
{
  result = 0x737961447473616CLL;
  switch(a1)
  {
    case 1:
      v3 = 1299081581;
      return v3 | 0x6173736500000000;
    case 2:
      v3 = 1299734893;
      return v3 | 0x6173736500000000;
    case 3:
      return 0x74676E654C78616DLL;
    case 4:
      v4 = 0x7265746C6966;
      goto LABEL_12;
    case 5:
      v4 = 0x656C676E6973;
LABEL_12:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x654D000000000000;
      break;
    case 6:
      result = 0x5470756E61656C63;
      break;
    case 7:
      result = 0x676E696C706D6173;
      break;
    case 8:
      result = 0x72437265746C6966;
      break;
    case 9:
      result = 0xD000000000000015;
      break;
    case 10:
      result = 0x6D69547972657571;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 13:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F5A3F5C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5AA0A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5A3F90(uint64_t a1)
{
  v2 = sub_25F5A9780();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A3FCC(uint64_t a1)
{
  v2 = sub_25F5A9780();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractEmailParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E160, &qword_25F5E8AB8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v44 - v8;
  v118 = 0;
  v114 = 1;
  v111 = 0;
  v108 = 1;
  v10 = a1[3];
  v55 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F5A9780();
  sub_25F5E4C74();
  if (v2)
  {
    v119 = v2;
    v60 = 0;
    v61 = 0;
    v62 = 0;
    v64 = 0;
    v65 = 0;
    v58 = 0;
    v57 = 0uLL;
    v56 = 0;
    v59 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v63 = 0x403E000000000000;
    v14 = 7;
    v15 = 128;
    v16 = 2048;
    v17 = 1;
    v18 = 1;
  }

  else
  {
    LOBYTE(v80) = 0;
    v54 = sub_25F5E4AC4();
    LOBYTE(v80) = 1;
    v53 = sub_25F5E4A74();
    v118 = v20 & 1;
    LOBYTE(v80) = 2;
    v52 = sub_25F5E4AC4();
    LOBYTE(v80) = 3;
    v51 = sub_25F5E4AC4();
    LOBYTE(v80) = 4;
    v50 = sub_25F5E4A54();
    LOBYTE(v80) = 5;
    v49 = sub_25F5E4A54();
    LOBYTE(v80) = 6;
    v48 = sub_25F5E4A54();
    LOBYTE(v80) = 7;
    v21 = sub_25F5E4A74();
    v119 = 0;
    v59 = v21;
    v114 = v22 & 1;
    LOBYTE(v66) = 8;
    sub_25F5A9804();
    v23 = v119;
    sub_25F5E4A84();
    v119 = v23;
    if (v23)
    {
      (*(v6 + 8))(v9, v5);
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v64 = 0;
      v65 = 0;
      v58 = 0;
      v57 = 0uLL;
      v56 = 0;
      v63 = 0x403E000000000000;
      v17 = 1;
      v18 = v53;
      v14 = v54;
      v16 = v51;
      v15 = v52;
      v12 = v49;
      v13 = v50;
      v11 = v48;
    }

    else
    {
      v47 = v80;
      v56 = v81;
      v57 = v82;
      v58 = v83;
      sub_25F5A9770(1);
      LOBYTE(v80) = 9;
      v24 = v119;
      v64 = sub_25F5E4A44();
      v65 = v25;
      v119 = v24;
      if (v24)
      {
        (*(v6 + 8))(v9, v5);
        v60 = 0;
        v61 = 0;
        v62 = 0;
        v64 = 0;
        v65 = 0;
        v63 = 0x403E000000000000;
      }

      else
      {
        LOBYTE(v80) = 10;
        v63 = sub_25F5E4A64();
        v119 = 0;
        v111 = v26 & 1;
        LOBYTE(v80) = 11;
        v62 = sub_25F5E4A54();
        v119 = 0;
        LOBYTE(v80) = 12;
        v60 = sub_25F5E4A44();
        v61 = v27;
        v119 = 0;
        v77 = 13;
        sub_25F5A9858();
        v28 = v119;
        sub_25F5E4A84();
        v119 = v28;
        if (!v28)
        {
          (*(v6 + 8))(v9, v5);
          v46 = v78;
          v108 = v79;
          v30 = v53;
          v29 = v54;
          *&v66 = v54;
          *(&v66 + 1) = v53;
          v31 = v118;
          LOBYTE(v67) = v118;
          v32 = v51;
          *(&v67 + 1) = v52;
          *&v68 = v51;
          v33 = v49;
          BYTE8(v68) = v50;
          BYTE9(v68) = v49;
          v34 = v48;
          BYTE10(v68) = v48;
          *&v69 = v59;
          v44 = v114;
          BYTE8(v69) = v114;
          *&v70 = v47;
          *(&v70 + 1) = v56;
          v71 = v57;
          LOBYTE(v72) = v58;
          *(&v72 + 1) = v64;
          *&v73 = v65;
          *(&v73 + 1) = v63;
          v45 = v111;
          LOBYTE(v74) = v111;
          BYTE1(v74) = v62;
          *(&v74 + 1) = v60;
          *&v75 = v61;
          *(&v75 + 1) = v78;
          v35 = v79;
          v76 = v79;
          v36 = v67;
          *a2 = v66;
          *(a2 + 16) = v36;
          v37 = v68;
          v38 = v69;
          v39 = v71;
          *(a2 + 64) = v70;
          *(a2 + 80) = v39;
          *(a2 + 32) = v37;
          *(a2 + 48) = v38;
          v40 = v72;
          v41 = v73;
          v42 = v74;
          v43 = v75;
          *(a2 + 160) = v35;
          *(a2 + 128) = v42;
          *(a2 + 144) = v43;
          *(a2 + 96) = v40;
          *(a2 + 112) = v41;
          sub_25F5A98AC(&v66, &v80);
          __swift_destroy_boxed_opaque_existential_1Tm(v55);
          v80 = v29;
          v81 = v30;
          LOBYTE(v82) = v31;
          *(&v82 + 1) = *v117;
          DWORD1(v82) = *&v117[3];
          *(&v82 + 1) = v52;
          v83 = v32;
          v84 = v50;
          v85 = v33;
          v86 = v34;
          v87 = v115;
          v88 = v116;
          v89 = v59;
          v90 = v44;
          *&v91[3] = *&v113[3];
          *v91 = *v113;
          v92 = v47;
          v93 = v56;
          v94 = v57;
          v95 = v58;
          *v96 = *v112;
          *&v96[3] = *&v112[3];
          v97 = v64;
          v98 = v65;
          v99 = v63;
          v100 = v45;
          v101 = v62;
          v103 = v110;
          v102 = v109;
          v104 = v60;
          v105 = v61;
          v106 = v46;
          v107 = v35;
          return sub_25F5A97D4(&v80);
        }

        (*(v6 + 8))(v9, v5);
      }

      v18 = v53;
      v14 = v54;
      v16 = v51;
      v15 = v52;
      v12 = v49;
      v13 = v50;
      v11 = v48;
      v17 = v47;
    }
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  v80 = v14;
  v81 = v18;
  LOBYTE(v82) = v118;
  *(&v82 + 1) = *v117;
  DWORD1(v82) = *&v117[3];
  *(&v82 + 1) = v15;
  v83 = v16;
  v84 = v13;
  v85 = v12;
  v86 = v11;
  v87 = v115;
  v88 = v116;
  v89 = v59;
  v90 = v114;
  *v91 = *v113;
  *&v91[3] = *&v113[3];
  v92 = v17;
  v93 = v56;
  v94 = v57;
  v95 = v58;
  *v96 = *v112;
  *&v96[3] = *&v112[3];
  v97 = v64;
  v98 = v65;
  v99 = v63;
  v100 = v111;
  v101 = v62;
  v103 = v110;
  v102 = v109;
  v104 = v60;
  v105 = v61;
  v106 = 0;
  v107 = v108;
  return sub_25F5A97D4(&v80);
}

uint64_t GeneratedImageFeaturesFilterCriteria.init(userInterfaceLanguage:userSetRegionFormat:personalizations:results:features:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, void *a8@<X8>)
{
  *a8 = result;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  a8[4] = a5;
  a8[5] = a6;
  a8[6] = a7;
  return result;
}

unint64_t sub_25F5A4A90()
{
  v1 = *v0;
  v2 = 0x73746C75736572;
  if (v1 != 3)
  {
    v2 = 0x7365727574616566;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000010;
  }

  v3 = 0xD000000000000013;
  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5A4B34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5AA528(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5A4B5C(uint64_t a1)
{
  v2 = sub_25F5A98E4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A4B98(uint64_t a1)
{
  v2 = sub_25F5A98E4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t GeneratedImageFeaturesFilterCriteria.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E180, &unk_25F5E8AC0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A98E4();
  sub_25F5E4C74();
  if (!v2)
  {
    LOBYTE(v29) = 0;
    v10 = sub_25F5E4A44();
    v13 = v12;
    v27 = v10;
    LOBYTE(v29) = 1;
    v14 = sub_25F5E4A44();
    v16 = v15;
    v24 = v14;
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E190, qword_25F5EA790);
    v28 = 2;
    v25 = sub_25F5A9938();
    v26 = v17;
    sub_25F5E4A84();
    v23 = a2;
    v18 = v29;
    v28 = 3;
    sub_25F5E4A84();
    v19 = v6;
    v20 = v29;
    v28 = 4;
    sub_25F5E4A84();
    (*(v19 + 8))(v9, v5);
    v21 = v29;
    v22 = v23;
    *v23 = v27;
    v22[1] = v13;
    v22[2] = v24;
    v22[3] = v16;
    v22[4] = v18;
    v22[5] = v20;
    v22[6] = v21;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

__n128 ExtractGenmojiPromptParameters.init(lastN:maxEvents:minPrompts:samplingSize:filterCriteria:generativeModelsAvailabilityType:)@<Q0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, char a8@<W7>, uint64_t a9@<X8>, uint64_t a10, uint64_t *a11)
{
  v17 = *(a10 + 32);
  v12 = *(a10 + 48);
  v13 = *a11;
  v14 = *(a11 + 8);
  *a9 = a1;
  *(a9 + 8) = a2 & 1;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4 & 1;
  *(a9 + 32) = a5;
  *(a9 + 40) = a6 & 1;
  *(a9 + 48) = a7;
  *(a9 + 56) = a8 & 1;
  sub_25F5A99B4(0, 1, 0, 0, 0, 0, 0);
  v15 = *(a10 + 16);
  *(a9 + 64) = *a10;
  *(a9 + 80) = v15;
  result = v17;
  *(a9 + 96) = v17;
  *(a9 + 112) = v12;
  *(a9 + 120) = v13;
  *(a9 + 128) = v14;
  return result;
}

uint64_t sub_25F5A5024()
{
  v1 = *v0;
  v2 = 0x4E7473616CLL;
  v3 = 0x676E696C706D6173;
  v4 = 0x72437265746C6966;
  if (v1 != 4)
  {
    v4 = 0xD000000000000020;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x746E65764578616DLL;
  if (v1 != 1)
  {
    v5 = 0x706D6F72506E696DLL;
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

uint64_t sub_25F5A50FC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5AA6EC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5A5130(uint64_t a1)
{
  v2 = sub_25F5A9A28();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A516C(uint64_t a1)
{
  v2 = sub_25F5A9A28();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractGenmojiPromptParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1A0, &qword_25F5E8AD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v41 - v8;
  v91 = 0;
  v89 = 0;
  v87 = 0;
  v85 = 1;
  v83 = 1;
  v10 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F5A9A28();
  sub_25F5E4C74();
  if (v2)
  {
    v92 = v2;
    v54 = 0;
    v52 = 0uLL;
    v51 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 1;
    v17 = 1;
  }

  else
  {
    LOBYTE(v67) = 0;
    v50 = sub_25F5E4A74();
    v91 = v19 & 1;
    LOBYTE(v67) = 1;
    v49 = sub_25F5E4A74();
    v89 = v20 & 1;
    LOBYTE(v67) = 2;
    v48 = sub_25F5E4A74();
    v87 = v21 & 1;
    LOBYTE(v67) = 3;
    v22 = sub_25F5E4A74();
    v92 = 0;
    v47 = v22;
    v85 = v23 & 1;
    LOBYTE(v55) = 4;
    sub_25F5A9AAC();
    v24 = v92;
    sub_25F5E4A84();
    v92 = v24;
    if (v24)
    {
      (*(v6 + 8))(v9, v5);
      v54 = 0;
      v52 = 0uLL;
      v51 = 0;
      v11 = 0;
      v12 = 0;
      v16 = 1;
    }

    else
    {
      v12 = v67;
      v16 = v68;
      v11 = v69;
      v51 = v70;
      v52 = v71;
      v54 = v72;
      sub_25F5A99B4(0, 1, 0, 0, 0, 0, 0);
      v64 = 5;
      sub_25F5A9858();
      v25 = v92;
      sub_25F5E4A84();
      v92 = v25;
      if (!v25)
      {
        (*(v6 + 8))(v9, v5);
        v43 = v65;
        v83 = v66;
        *&v55 = v50;
        v46 = v91;
        BYTE8(v55) = v91;
        *&v56 = v49;
        v45 = v89;
        BYTE8(v56) = v89;
        v26 = v47;
        *&v57 = v48;
        v44 = v87;
        BYTE8(v57) = v87;
        *&v58 = v47;
        v42 = v85;
        BYTE8(v58) = v85;
        *&v59 = v12;
        *(&v59 + 1) = v16;
        v27 = v16;
        v41 = v12;
        v28 = a2;
        v29 = v11;
        *&v60 = v11;
        v30 = v51;
        v31 = v52;
        *(&v60 + 1) = v51;
        v61 = v52;
        v32 = *(&v52 + 1);
        v33 = v54;
        *&v62 = v54;
        *(&v62 + 1) = v65;
        v34 = v66;
        v63 = v66;
        v35 = v58;
        *(v28 + 32) = v57;
        *(v28 + 48) = v35;
        v36 = v59;
        v37 = v60;
        v38 = v61;
        v39 = v62;
        *(v28 + 128) = v34;
        *(v28 + 96) = v38;
        *(v28 + 112) = v39;
        *(v28 + 64) = v36;
        *(v28 + 80) = v37;
        v40 = v56;
        *v28 = v55;
        *(v28 + 16) = v40;
        sub_25F5A9B00(&v55, &v67);
        __swift_destroy_boxed_opaque_existential_1Tm(v53);
        v67 = v50;
        LOBYTE(v68) = v46;
        v69 = v49;
        LOBYTE(v70) = v45;
        *&v71 = v48;
        BYTE8(v71) = v44;
        v72 = v26;
        v73 = v42;
        v75 = v41;
        v76 = v27;
        v77 = v29;
        v78 = v30;
        *&v79 = v31;
        *(&v79 + 1) = v32;
        v80 = v33;
        v81 = v43;
        v82 = v34;
        return sub_25F5A9A7C(&v67);
      }

      (*(v6 + 8))(v9, v5);
    }

    v14 = v49;
    v15 = v50;
    v13 = v47;
    v17 = v48;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v53);
  v67 = v15;
  LOBYTE(v68) = v91;
  *(&v68 + 1) = *v90;
  HIDWORD(v68) = *&v90[3];
  v69 = v14;
  LOBYTE(v70) = v89;
  *(&v70 + 1) = *v88;
  HIDWORD(v70) = *&v88[3];
  *&v71 = v17;
  BYTE8(v71) = v87;
  HIDWORD(v71) = *&v86[3];
  *(&v71 + 9) = *v86;
  v72 = v13;
  v73 = v85;
  *v74 = *v84;
  *&v74[3] = *&v84[3];
  v75 = v12;
  v76 = v16;
  v77 = v11;
  v78 = v51;
  v79 = v52;
  v80 = v54;
  v81 = 0;
  v82 = v83;
  return sub_25F5A9A7C(&v67);
}

uint64_t sub_25F5A57A0(char a1)
{
  result = 0x7961444E6D6F7266;
  switch(a1)
  {
    case 1:
      return 0x61444E6C69746E75;
    case 2:
      v3 = 1282304365;
      return v3 | 0x74676E6500000000;
    case 3:
      v3 = 1282957677;
      return v3 | 0x74676E6500000000;
    case 4:
      return 0x6576454E7473616CLL;
    case 5:
      return 0x746E65764578616DLL;
    case 6:
      v4 = 1400398189;
      goto LABEL_18;
    case 7:
      v4 = 1399744877;
LABEL_18:
      result = v4 | 0x6C706D6100000000;
      break;
    case 8:
      result = 0x654D656C676E6973;
      break;
    case 9:
      result = 0xD000000000000012;
      break;
    case 10:
      result = 0xD000000000000018;
      break;
    case 11:
      result = 0x685472655078616DLL;
      break;
    case 12:
      result = 0xD000000000000011;
      break;
    case 13:
      result = 0x796C6E4F746E6573;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 15:
      result = 0xD000000000000015;
      break;
    case 16:
      result = 0x5470756E61656C63;
      break;
    case 17:
      result = 0xD000000000000018;
      break;
    case 18:
      result = 0xD00000000000001ALL;
      break;
    case 19:
      result = 0xD000000000000020;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_25F5A5A64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25F5AA908(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25F5A5A98(uint64_t a1)
{
  v2 = sub_25F5A9B38();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A5AD4(uint64_t a1)
{
  v2 = sub_25F5A9B38();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ExtractSmsParameters.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1B8, &qword_25F5E8AD8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v47 - v8;
  v148 = 1;
  v146 = 0;
  v144 = 0;
  v142 = 1;
  v140 = 1;
  v139 = 1;
  v137 = 1;
  v132 = 1;
  v10 = a1[3];
  v70 = a1;
  __swift_project_boxed_opaque_existential_1Tm(a1, v10);
  sub_25F5A9B38();
  sub_25F5E4C74();
  if (v2)
  {
    v149 = v2;
    v64 = 0;
    v66 = 0;
    v67 = 0;
    v65 = 0;
    v63 = 0;
    v68 = 0;
    v69 = 0;
    v71 = 0;
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 1;
    v16 = 7;
    v17 = 150;
    v18 = 2048;
    v19 = v70;
  }

  else
  {
    LOBYTE(v92) = 0;
    v62 = sub_25F5E4AC4();
    LOBYTE(v92) = 1;
    v61 = sub_25F5E4A74();
    v148 = v21 & 1;
    LOBYTE(v92) = 2;
    v60 = sub_25F5E4AC4();
    LOBYTE(v92) = 3;
    v59 = sub_25F5E4AC4();
    LOBYTE(v92) = 4;
    v58 = sub_25F5E4A74();
    v146 = v22 & 1;
    LOBYTE(v92) = 5;
    v57 = sub_25F5E4A74();
    v144 = v23 & 1;
    LOBYTE(v92) = 6;
    v56 = sub_25F5E4A74();
    v142 = v24 & 1;
    LOBYTE(v92) = 7;
    v69 = sub_25F5E4A74();
    v140 = v25 & 1;
    LOBYTE(v92) = 8;
    v26 = sub_25F5E4A54();
    v149 = 0;
    v55 = v26;
    LOBYTE(v92) = 9;
    HIDWORD(v76) = sub_25F5E4A54();
    v149 = 0;
    LOBYTE(v92) = 10;
    LODWORD(v76) = sub_25F5E4A54();
    v149 = 0;
    LOBYTE(v92) = 11;
    v75 = sub_25F5E4A74();
    v149 = 0;
    v139 = v27 & 1;
    LOBYTE(v92) = 12;
    v74 = sub_25F5E4A74();
    v149 = 0;
    v137 = v28 & 1;
    LOBYTE(v92) = 13;
    v73 = sub_25F5E4A54();
    v149 = 0;
    LOBYTE(v92) = 14;
    v71 = sub_25F5E4A44();
    v72 = v29;
    v149 = 0;
    LOBYTE(v92) = 15;
    v67 = sub_25F5E4A44();
    v68 = v30;
    v149 = 0;
    LOBYTE(v92) = 16;
    v63 = sub_25F5E4A54();
    v149 = 0;
    LOBYTE(v92) = 17;
    v65 = sub_25F5E4A54();
    v149 = 0;
    LOBYTE(v92) = 18;
    v66 = sub_25F5E4A44();
    v64 = v31;
    v149 = 0;
    v89 = 19;
    sub_25F5A9858();
    v32 = v149;
    sub_25F5E4A84();
    v149 = v32;
    if (!v32)
    {
      (*(v6 + 8))(v9, v5);
      v47 = v90;
      v132 = v91;
      *&v77 = v62;
      *(&v77 + 1) = v61;
      v54 = v148;
      LOBYTE(v78) = v148;
      *(&v78 + 1) = *v147;
      DWORD1(v78) = *&v147[3];
      *(&v78 + 1) = v60;
      *&v79 = v59;
      *(&v79 + 1) = v58;
      v53 = v146;
      LOBYTE(v80) = v146;
      DWORD1(v80) = *&v145[3];
      *(&v80 + 1) = *v145;
      *(&v80 + 1) = v57;
      v52 = v144;
      LOBYTE(v81) = v144;
      *(&v81 + 1) = *v143;
      DWORD1(v81) = *&v143[3];
      *(&v81 + 1) = v56;
      v51 = v142;
      LOBYTE(v82) = v142;
      *(&v82 + 1) = *v141;
      DWORD1(v82) = *&v141[3];
      *(&v82 + 1) = v69;
      v50 = v140;
      LOBYTE(v83) = v140;
      BYTE1(v83) = v55;
      BYTE2(v83) = BYTE4(v76);
      BYTE3(v83) = v76;
      *(&v83 + 1) = v75;
      v49 = v139;
      LOBYTE(v84) = v139;
      DWORD1(v84) = *&v138[3];
      *(&v84 + 1) = *v138;
      *(&v84 + 1) = v74;
      v48 = v137;
      LOBYTE(v85) = v137;
      v33 = v73;
      BYTE1(v85) = v73;
      WORD3(v85) = v136;
      *(&v85 + 2) = v135;
      v34 = v72;
      *(&v85 + 1) = v71;
      *&v86 = v72;
      *(&v86 + 1) = v67;
      *&v87 = v68;
      BYTE8(v87) = v63;
      BYTE9(v87) = v65;
      HIWORD(v87) = v134;
      *(&v87 + 10) = v133;
      v35 = v66;
      v36 = v64;
      *v88 = v66;
      *&v88[8] = v64;
      *&v88[16] = v90;
      v37 = v91;
      v88[24] = v91;
      v38 = v77;
      v39 = v78;
      v40 = v80;
      a2[2] = v79;
      a2[3] = v40;
      *a2 = v38;
      a2[1] = v39;
      v41 = v81;
      v42 = v82;
      v43 = v84;
      a2[6] = v83;
      a2[7] = v43;
      a2[4] = v41;
      a2[5] = v42;
      v44 = v85;
      v45 = v86;
      *(a2 + 185) = *&v88[9];
      v46 = *v88;
      a2[10] = v87;
      a2[11] = v46;
      a2[8] = v44;
      a2[9] = v45;
      sub_25F5A9BBC(&v77, &v92);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      v92 = v62;
      v93 = v61;
      v94 = v54;
      *v95 = *v147;
      *&v95[3] = *&v147[3];
      v96 = v60;
      v97 = v59;
      v98 = v58;
      v99 = v53;
      *v100 = *v145;
      *&v100[3] = *&v145[3];
      v101 = v57;
      v102 = v52;
      *&v103[3] = *&v143[3];
      *v103 = *v143;
      v104 = v56;
      v105 = v51;
      *v106 = *v141;
      *&v106[3] = *&v141[3];
      v107 = v69;
      v108 = v50;
      v109 = v55;
      v110 = BYTE4(v76);
      v111 = v76;
      v112 = v75;
      v113 = v49;
      *&v114[3] = *&v138[3];
      *v114 = *v138;
      v115 = v74;
      v116 = v48;
      v117 = v33;
      v119 = v136;
      v118 = v135;
      v120 = v71;
      v121 = v34;
      v122 = v67;
      v123 = v68;
      v124 = v63;
      v125 = v65;
      v126 = v133;
      v127 = v134;
      v128 = v35;
      v129 = v36;
      v130 = v47;
      v131 = v37;
      return sub_25F5A9B8C(&v92);
    }

    (*(v6 + 8))(v9, v5);
    v19 = v70;
    v14 = v61;
    v16 = v62;
    v18 = v59;
    v17 = v60;
    v12 = v57;
    v13 = v58;
    v11 = v56;
    v15 = v55;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v19);
  v92 = v16;
  v93 = v14;
  v94 = v148;
  *v95 = *v147;
  *&v95[3] = *&v147[3];
  v96 = v17;
  v97 = v18;
  v98 = v13;
  v99 = v146;
  *v100 = *v145;
  *&v100[3] = *&v145[3];
  v101 = v12;
  v102 = v144;
  *v103 = *v143;
  *&v103[3] = *&v143[3];
  v104 = v11;
  v105 = v142;
  *v106 = *v141;
  *&v106[3] = *&v141[3];
  v107 = v69;
  v108 = v140;
  v109 = v15;
  v110 = BYTE4(v76);
  v111 = v76;
  v112 = v75;
  v113 = v139;
  *&v114[3] = *&v138[3];
  *v114 = *v138;
  v115 = v74;
  v116 = v137;
  v117 = v73;
  v119 = v136;
  v118 = v135;
  v120 = v71;
  v121 = v72;
  v122 = v67;
  v123 = v68;
  v124 = v63;
  v125 = v65;
  v127 = v134;
  v126 = v133;
  v128 = v66;
  v129 = v64;
  v130 = 0;
  v131 = v132;
  return sub_25F5A9B8C(&v92);
}

uint64_t sub_25F5A69A0()
{
  if (*v0)
  {
    return 0xD000000000000020;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_25F5A69DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v6 || (sub_25F5E4B84() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25F5E4B84();

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

uint64_t sub_25F5A6ABC(uint64_t a1)
{
  v2 = sub_25F5A9BF4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A6AF8(uint64_t a1)
{
  v2 = sub_25F5A9BF4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t BiomeDataAvailabilityParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1C8, &qword_25F5E8AE0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v17 - v8;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A9BF4();
  sub_25F5E4C74();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  v10 = sub_25F5E4A94();
  v12 = v11;
  v13 = v10;
  v19 = 1;
  sub_25F5A9858();
  sub_25F5E4A84();
  (*(v6 + 8))(v9, v5);
  v14 = v17;
  v15 = v18;
  *a2 = v13;
  *(a2 + 8) = v12;
  *(a2 + 16) = v14;
  *(a2 + 24) = v15;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

PriMLETL::DataSource_optional __swiftcall DataSource.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25F5E4A14();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t DataSource.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C69616D45;
  v3 = 0x50696A6F6D6E6547;
  v4 = 0x7375656870726F4DLL;
  if (v1 != 3)
  {
    v4 = 0x656D6F6942;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 7564627;
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

uint64_t sub_25F5A6E58()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5A6F38(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F5A7004()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

void sub_25F5A70EC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x6C69616D45;
  v5 = 0xED000074706D6F72;
  v6 = 0x50696A6F6D6E6547;
  v7 = 0xE800000000000000;
  v8 = 0x7375656870726F4DLL;
  if (v2 != 3)
  {
    v8 = 0x656D6F6942;
    v7 = 0xE500000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 7564627;
    v3 = 0xE300000000000000;
  }

  if (*v1 <= 1u)
  {
    v9 = v4;
  }

  else
  {
    v9 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v9;
  a1[1] = v3;
}

uint64_t sub_25F5A71F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v3 = 0x72756F5361746144;
  }

  if (v2)
  {
    v4 = 0xEA00000000006563;
  }

  else
  {
    v4 = 0x800000025F5E90F0;
  }

  if (*a2)
  {
    v5 = 0xD000000000000011;
  }

  else
  {
    v5 = 0x72756F5361746144;
  }

  if (*a2)
  {
    v6 = 0x800000025F5E90F0;
  }

  else
  {
    v6 = 0xEA00000000006563;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_25F5E4B84();
  }

  return v8 & 1;
}

uint64_t sub_25F5A72A8()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5A7334(uint64_t a1)
{
  sub_25F5E4334();
}

uint64_t sub_25F5A73AC()
{
  sub_25F5E4C34();
  sub_25F5E4334();

  return sub_25F5E4C54();
}

uint64_t sub_25F5A7434@<X0>(char *a2@<X8>)
{
  v3 = sub_25F5E4A14();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_25F5A7494(unint64_t *a1@<X8>)
{
  v2 = 0x800000025F5E90F0;
  v3 = 0x72756F5361746144;
  if (*v1)
  {
    v3 = 0xD000000000000011;
  }

  else
  {
    v2 = 0xEA00000000006563;
  }

  *a1 = v3;
  a1[1] = v2;
}

uint64_t sub_25F5A74DC()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 0x72756F5361746144;
  }
}

uint64_t sub_25F5A7520@<X0>(char *a3@<X8>)
{
  v4 = sub_25F5E4A14();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_25F5A7584(uint64_t a1)
{
  v2 = sub_25F5A9C64();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F5A75C0(uint64_t a1)
{
  v2 = sub_25F5A9C64();

  return MEMORY[0x2821FE720](a1, v2);
}

_BYTE *DataSourceConfig.generativeModelAvailabilityType.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v13[10] = v1[10];
  v14[0] = v3;
  *(v14 + 9) = *(v1 + 185);
  v4 = v1[7];
  v13[6] = v1[6];
  v13[7] = v4;
  v5 = v1[9];
  v13[8] = v1[8];
  v13[9] = v5;
  v6 = v1[3];
  v13[2] = v1[2];
  v13[3] = v6;
  v7 = v1[5];
  v13[4] = v1[4];
  v13[5] = v7;
  v8 = v1[1];
  v13[0] = *v1;
  v13[1] = v8;
  v9 = sub_25F5A9C48(v13);
  result = sub_25F5A9C54(v13);
  if (v9 <= 1)
  {
    if (v9)
    {
      if ((result[200] & 1) == 0)
      {
        v11 = 192;
        goto LABEL_16;
      }
    }

    else if ((result[160] & 1) == 0)
    {
      v11 = 152;
      goto LABEL_16;
    }
  }

  else if (v9 == 2)
  {
    if ((result[128] & 1) == 0)
    {
      v11 = 120;
      goto LABEL_16;
    }
  }

  else if (v9 == 3)
  {
    if ((result[64] & 1) == 0)
    {
      v11 = 56;
LABEL_16:
      v12 = *&result[v11];
      goto LABEL_17;
    }
  }

  else if ((result[24] & 1) == 0)
  {
    v11 = 16;
    goto LABEL_16;
  }

  v12 = 3;
LABEL_17:
  *a1 = v12;
  return result;
}

unint64_t DataSourceConfig.generativeModelsUseCaseIdentifier.getter()
{
  v1 = 0xD000000000000024;
  v2 = v0[11];
  v10[10] = v0[10];
  v11[0] = v2;
  *(v11 + 9) = *(v0 + 185);
  v3 = v0[7];
  v10[6] = v0[6];
  v10[7] = v3;
  v4 = v0[9];
  v10[8] = v0[8];
  v10[9] = v4;
  v5 = v0[3];
  v10[2] = v0[2];
  v10[3] = v5;
  v6 = v0[5];
  v10[4] = v0[4];
  v10[5] = v6;
  v7 = v0[1];
  v10[0] = *v0;
  v10[1] = v7;
  v8 = sub_25F5A9C48(v10);
  if (v8 == 2)
  {
    v1 = 0xD00000000000002ELL;
  }

  else if (v8 != 3)
  {
    return v1;
  }

  sub_25F5A9C54(v10);
  return v1;
}

uint64_t DataSourceConfig.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v236 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E1D8, &qword_25F5E8AE8);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v94 - v7;
  __swift_project_boxed_opaque_existential_1Tm(a1, a1[3]);
  sub_25F5A9C64();
  sub_25F5E4C74();
  if (v2)
  {
    v9 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v125 = v5;
  v234 = 0;
  sub_25F5A9CB8();
  sub_25F5E4A84();
  v11 = v236;
  v12 = a1;
  if (v235 == 5)
  {
    goto LABEL_7;
  }

  if (v235 <= 1u)
  {
    if (!v235)
    {
LABEL_7:
      v214[0] = 1;
      sub_25F5A9D0C();
      sub_25F5E4A84();
      v121 = v8;
      v122 = v4;
      v123 = a1;
      LODWORD(v124) = v190;
      LODWORD(v143) = *(&v190 + 1);
      *(&v143 + 3) = DWORD1(v190);
      LOBYTE(v172[1]) = HIBYTE(v191);
      v172[0] = *(&v191 + 11);
      *(&v126 + 3) = HIDWORD(v192);
      LODWORD(v126) = *(&v192 + 9);
      *(v213 + 3) = DWORD1(v195);
      v213[0] = *(&v195 + 1);
      v17 = *(&v196 + 1);
      LOWORD(v173[1]) = WORD3(v197);
      v173[0] = *(&v197 + 2);
      v19 = *(&v198 + 1);
      v18 = v198;
      DWORD1(v181[0]) = DWORD1(v190);
      *(v181 + 1) = *(&v190 + 1);
      v181[1] = v191;
      v119 = *(&v189 + 1);
      v120 = v189;
      v180 = v189;
      LOBYTE(v181[0]) = v190;
      v105 = v193;
      v106 = *(&v190 + 1);
      *(&v181[0] + 1) = *(&v190 + 1);
      v20 = v199;
      *&v109 = v191;
      LODWORD(v118) = BYTE8(v191);
      LODWORD(v117) = BYTE9(v191);
      LODWORD(v116) = BYTE10(v191);
      v115 = v192;
      *&v181[2] = v192;
      v114 = BYTE8(v192);
      BYTE8(v181[2]) = BYTE8(v192);
      HIDWORD(v181[2]) = HIDWORD(v192);
      *(&v181[2] + 9) = *(&v192 + 9);
      v181[3] = v193;
      v112 = v194;
      v113 = *(&v193 + 1);
      v111 = *(&v194 + 1);
      v182 = v194;
      v110 = v195;
      LOBYTE(v183) = v195;
      DWORD1(v183) = DWORD1(v195);
      *(&v183 + 1) = *(&v195 + 1);
      v107 = v196;
      v108 = *(&v195 + 1);
      *(&v183 + 1) = *(&v195 + 1);
      v184 = v196;
      v21 = BYTE1(v197);
      v22 = *(&v197 + 1);
      DWORD2(v109) = v197;
      v185 = v197;
      v186 = v198;
      LOBYTE(v187) = v199;
      if (sub_25F5A9D60(&v180) == 1)
      {
        LOBYTE(v171[0]) = 0;
        v20 = 1;
        LOBYTE(v142[0]) = 1;
        sub_25F5A9770(1);
        v23 = 0;
        v24 = 0;
        v25 = 0;
        v26 = 0;
        v27 = 0;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v31 = 0;
        v32 = 0;
        v33 = 0;
        v21 = 0;
        v22 = 0;
        v18 = 0;
        v19 = 0;
        LOBYTE(v140) = 0;
        LOBYTE(v138) = 1;
        v34 = v171[0];
        v35 = v142[0];
        v17 = 0x403E000000000000;
        v36 = 2048;
        v37 = 7;
        v38 = 1;
        v39 = 1;
        v40 = 1;
      }

      else
      {
        v221[0] = v143;
        *(v221 + 3) = *(&v143 + 3);
        v219 = v172[0];
        v220 = v172[1];
        v218[0] = v126;
        *(v218 + 3) = *(&v126 + 3);
        *(v217 + 3) = *(v213 + 3);
        v217[0] = v213[0];
        v216 = v173[1];
        v215 = v173[0];
        v34 = v124;
        v38 = v119;
        v37 = v120;
        v24 = v118;
        v25 = v117;
        v26 = v116;
        v27 = v115;
        v35 = v114;
        v29 = v112;
        v28 = v113;
        v30 = v111;
        v31 = v110;
        v23 = BYTE8(v109);
        v32 = v108;
        v36 = v109;
        v39 = v106;
        v33 = v107;
        v40 = v105;
      }

      *&v201 = v37;
      *(&v201 + 1) = v38;
      LOBYTE(v202) = v34;
      *(&v202 + 1) = v221[0];
      DWORD1(v202) = *(v221 + 3);
      *(&v202 + 1) = v39;
      *&v203 = v36;
      BYTE8(v203) = v24;
      BYTE9(v203) = v25;
      BYTE10(v203) = v26;
      *(&v203 + 11) = v219;
      HIBYTE(v203) = v220;
      *&v204 = v27;
      BYTE8(v204) = v35;
      HIDWORD(v204) = *(v218 + 3);
      *(&v204 + 9) = v218[0];
      *&v205 = v40;
      *(&v205 + 1) = v28;
      *&v206 = v29;
      *(&v206 + 1) = v30;
      LOBYTE(v207) = v31;
      DWORD1(v207) = *(v217 + 3);
      *(&v207 + 1) = v217[0];
      *(&v207 + 1) = v32;
      *&v208 = v33;
      *(&v208 + 1) = v17;
      LOBYTE(v209) = v23;
      BYTE1(v209) = v21;
      WORD3(v209) = v216;
      *(&v209 + 2) = v215;
      *(&v209 + 1) = v22;
      *&v210 = v18;
      *(&v210 + 1) = v19;
      LOBYTE(v211) = v20;
      sub_25F5A9D84(&v201);
      v232 = v211;
      *v233 = v212[0];
      *&v233[9] = *(v212 + 9);
      v228 = v207;
      v229 = v208;
      v231 = v210;
      v230 = v209;
      v224 = v203;
      v225 = v204;
      v227 = v206;
      v226 = v205;
      v223 = v202;
      v222 = v201;
      v11 = v236;
      v13 = v125;
      v4 = v122;
      v12 = v123;
      v8 = v121;
      goto LABEL_37;
    }

    v156 = 1;
    sub_25F5AB2F8();
    sub_25F5E4A84();
    v124 = v180;
    LODWORD(v123) = LOBYTE(v181[0]);
    v213[0] = *(v181 + 1);
    *(v213 + 3) = DWORD1(v181[0]);
    v117 = *&v181[1];
    v118 = *(&v181[0] + 1);
    v120 = *(&v181[1] + 1);
    LODWORD(v122) = LOBYTE(v181[2]);
    *(v173 + 3) = DWORD1(v181[2]);
    v173[0] = *(&v181[2] + 1);
    v119 = *(&v181[2] + 1);
    LODWORD(v121) = LOBYTE(v181[3]);
    *(v172 + 3) = DWORD1(v181[3]);
    v172[0] = *(&v181[3] + 1);
    v110 = v182;
    *(v171 + 3) = DWORD1(v182);
    v171[0] = *(&v182 + 1);
    *(v142 + 3) = DWORD1(v184);
    v142[0] = *(&v184 + 1);
    v141 = WORD3(v185);
    v140 = *(&v185 + 2);
    v139 = HIWORD(v187);
    v138 = *(&v187 + 10);
    HIDWORD(v144) = DWORD1(v181[0]);
    *(&v144 + 1) = *(v181 + 1);
    v41 = *(&v186 + 1);
    *&v146[12] = DWORD1(v181[2]);
    *&v146[9] = *(&v181[2] + 1);
    *&v146[28] = DWORD1(v181[3]);
    *&v146[25] = *(&v181[3] + 1);
    DWORD1(v147) = DWORD1(v182);
    *(&v147 + 1) = *(&v182 + 1);
    DWORD1(v149) = DWORD1(v184);
    *(&v149 + 1) = *(&v184 + 1);
    v150 = v185;
    v152 = v187;
    v143 = v180;
    v104 = *(&v181[3] + 1);
    v105 = *(&v180 + 1);
    LOBYTE(v144) = v181[0];
    v145 = *(v181 + 8);
    *v146 = *(&v181[1] + 1);
    v146[8] = v181[2];
    *&v146[16] = *(&v181[2] + 1);
    v146[24] = v181[3];
    *&v146[32] = *(&v181[3] + 1);
    LOBYTE(v147) = v182;
    v100 = *(&v182 + 1);
    *(&v147 + 1) = *(&v182 + 1);
    v98 = v183;
    v99 = v184;
    v148 = v183;
    v95 = BYTE1(v183);
    v96 = v185;
    v101 = BYTE2(v183);
    v102 = BYTE3(v183);
    LODWORD(v108) = DWORD1(v183);
    v103 = *(&v183 + 1);
    LOBYTE(v149) = v184;
    v112 = v187;
    v113 = *(&v184 + 1);
    *(&v149 + 1) = *(&v184 + 1);
    v114 = BYTE1(v185);
    v115 = *(&v185 + 1);
    v116 = v186;
    v151 = v186;
    LODWORD(v111) = BYTE8(v187);
    v42 = BYTE9(v187);
    v109 = v188[0];
    v153 = v188[0];
    v97 = *&v188[1];
    v154 = *&v188[1];
    v43 = BYTE8(v188[1]);
    v155 = BYTE8(v188[1]);
    if (sub_25F5AB34C(&v143) == 1)
    {
      v44 = 0;
      v45 = 0;
      v46 = 0;
      v109 = 0uLL;
      LODWORD(v106) = 0;
      LODWORD(v111) = 0;
      v112 = 0;
      v113 = 0;
      v107 = 0;
      v115 = 0;
      v116 = 0;
      v114 = 0;
      v47 = 0;
      v48 = 0;
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v43 = 1;
      v214[0] = 1;
      v175 = 0;
      v174[0] = 0;
      v167 = 1;
      v165 = 1;
      v164 = 1;
      v162 = 1;
      v157 = 1;
      v55 = 7;
      v56 = 150;
      v57 = 2048;
      v58 = 1;
      v59 = 1;
      v60 = 1;
      v61 = 1;
      v62 = 1;
      v63 = 1;
    }

    else
    {
      v170[0] = v213[0];
      *(v170 + 3) = *(v213 + 3);
      v169[0] = v173[0];
      *(v169 + 3) = *(v173 + 3);
      v168[0] = v172[0];
      *(v168 + 3) = *(v172 + 3);
      *(v166 + 3) = *(v171 + 3);
      v166[0] = v171[0];
      *(v163 + 3) = *(v142 + 3);
      v163[0] = v142[0];
      v161 = v141;
      v160 = v140;
      v159 = v139;
      v158 = v138;
      v51 = v104;
      v54 = v105;
      v55 = v124;
      v62 = v123;
      v107 = v41;
      v45 = v122;
      v44 = v121;
      v52 = v119;
      v53 = v120;
      v47 = v103;
      v49 = v101;
      v48 = v102;
      v50 = v100;
      v57 = v117;
      v56 = v118;
      LODWORD(v106) = v42;
      v61 = v110;
      v60 = v98;
      v59 = v99;
      v46 = v97;
      v63 = v95;
      v58 = v96;
    }

    *&v126 = v55;
    *(&v126 + 1) = v54;
    LOBYTE(v127) = v62;
    *(&v127 + 1) = v170[0];
    DWORD1(v127) = *(v170 + 3);
    *(&v127 + 1) = v56;
    *&v128 = v57;
    *(&v128 + 1) = v53;
    LOBYTE(v129) = v45;
    *(&v129 + 1) = v169[0];
    DWORD1(v129) = *(v169 + 3);
    *(&v129 + 1) = v52;
    LOBYTE(v130) = v44;
    DWORD1(v130) = *(v168 + 3);
    *(&v130 + 1) = v168[0];
    *(&v130 + 1) = v51;
    LOBYTE(v131) = v61;
    DWORD1(v131) = *(v166 + 3);
    *(&v131 + 1) = v166[0];
    *(&v131 + 1) = v50;
    LOBYTE(v132) = v60;
    BYTE1(v132) = v63;
    BYTE2(v132) = v49;
    BYTE3(v132) = v48;
    DWORD1(v132) = v108;
    *(&v132 + 1) = v47;
    LOBYTE(v133) = v59;
    DWORD1(v133) = *(v163 + 3);
    *(&v133 + 1) = v163[0];
    *(&v133 + 1) = v113;
    LOBYTE(v134) = v58;
    BYTE1(v134) = v114;
    WORD3(v134) = v161;
    *(&v134 + 2) = v160;
    *(&v134 + 1) = v115;
    *&v135 = v116;
    *(&v135 + 1) = v107;
    *&v136 = v112;
    BYTE8(v136) = v111;
    BYTE9(v136) = v106;
    HIWORD(v136) = v159;
    *(&v136 + 10) = v158;
    v137[0] = v109;
    *&v137[1] = v46;
    BYTE8(v137[1]) = v43;
    sub_25F5AB370(&v126);
    v232 = v136;
    *v233 = v137[0];
    *&v233[9] = *(v137 + 9);
    v228 = v132;
    v229 = v133;
    v231 = v135;
    v230 = v134;
    v224 = v128;
    v225 = v129;
    v227 = v131;
    v226 = v130;
    v83 = v126;
    v82 = v127;
    goto LABEL_35;
  }

  if (v235 == 2)
  {
    v174[0] = 1;
    sub_25F5A9EDC();
    sub_25F5E4A84();
    v213[0] = *(&v143 + 9);
    *(v213 + 3) = HIDWORD(v143);
    v173[0] = *(&v145 + 1);
    *(v173 + 3) = DWORD1(v145);
    *(v172 + 3) = *&v146[4];
    v172[0] = *&v146[1];
    *(v171 + 3) = *&v146[20];
    v171[0] = *&v146[17];
    v64 = *&v146[32];
    HIDWORD(v126) = HIDWORD(v143);
    *(&v126 + 9) = *(&v143 + 9);
    HIDWORD(v127) = DWORD1(v145);
    *(&v127 + 9) = *(&v145 + 1);
    v65 = v150;
    v124 = v143;
    *&v126 = v143;
    v66 = BYTE8(v143);
    BYTE8(v126) = BYTE8(v143);
    v115 = v144;
    *&v127 = v144;
    LODWORD(v122) = v145;
    BYTE8(v127) = v145;
    v111 = *(&v145 + 1);
    *&v128 = *(&v145 + 1);
    LODWORD(v120) = v146[0];
    BYTE8(v128) = v146[0];
    HIDWORD(v128) = *&v146[4];
    *(&v128 + 9) = *&v146[1];
    v121 = *&v146[8];
    *&v129 = *&v146[8];
    v114 = v146[16];
    BYTE8(v129) = v146[16];
    HIDWORD(v129) = *&v146[20];
    *(&v129 + 9) = *&v146[17];
    v118 = v147;
    v119 = *&v146[24];
    v130 = *&v146[24];
    v131 = v147;
    v116 = v148;
    v117 = *(&v147 + 1);
    v132 = v148;
    v123 = *(&v148 + 1);
    v112 = *(&v149 + 1);
    v113 = v149;
    v133 = v149;
    LOBYTE(v134) = v150;
    if (sub_25F5A9F30(&v126) == 1)
    {
      LOBYTE(v142[0]) = 0;
      LOBYTE(v140) = 0;
      LOBYTE(v138) = 0;
      v65 = 1;
      v214[0] = 1;
      sub_25F5A99B4(0, 1, 0, 0, 0, 0, 0);
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v70 = 0;
      v71 = 0;
      v72 = 0;
      v73 = 0;
      v74 = 0;
      v75 = 0;
      v175 = 1;
      v66 = v142[0];
      v76 = v140;
      v77 = v138;
      v78 = v214[0];
      v79 = 1;
      v80 = 1;
      v64 = 1;
    }

    else
    {
      v179[0] = v213[0];
      *(v179 + 3) = *(v213 + 3);
      v178[0] = v173[0];
      *(v178 + 3) = *(v173 + 3);
      v177[0] = v172[0];
      *(v177 + 3) = *(v172 + 3);
      *(v176 + 3) = *(v171 + 3);
      v176[0] = v171[0];
      v73 = v123;
      v67 = v124;
      v76 = v122;
      v68 = v121;
      v77 = v120;
      v70 = v118;
      v69 = v119;
      v72 = v116;
      v71 = v117;
      v79 = v115;
      v78 = v114;
      v75 = v112;
      v74 = v113;
      v80 = v111;
    }

    *&v180 = v67;
    BYTE8(v180) = v66;
    *(&v180 + 9) = v179[0];
    HIDWORD(v180) = *(v179 + 3);
    *&v181[0] = v79;
    BYTE8(v181[0]) = v76;
    *(v181 + 9) = v178[0];
    HIDWORD(v181[0]) = *(v178 + 3);
    *&v181[1] = v80;
    BYTE8(v181[1]) = v77;
    *(&v181[1] + 9) = v177[0];
    HIDWORD(v181[1]) = *(v177 + 3);
    *&v181[2] = v68;
    BYTE8(v181[2]) = v78;
    HIDWORD(v181[2]) = *(v176 + 3);
    *(&v181[2] + 9) = v176[0];
    *&v181[3] = v69;
    *(&v181[3] + 1) = v64;
    *&v182 = v70;
    *(&v182 + 1) = v71;
    *&v183 = v72;
    *(&v183 + 1) = v73;
    *&v184 = v74;
    *(&v184 + 1) = v75;
    LOBYTE(v185) = v65;
    sub_25F5A9F54(&v180);
    if (v64 != 1)
    {
      v11 = v236;
      if (v73)
      {
        v84 = sub_25F5AAF68(v73);
        v13 = v125;
        if ((v84 & 1) == 0)
        {
          sub_25F5A31D0();
          swift_allocError();
          *v85 = 15;
          v192 = v181[2];
          v191 = v181[1];
          v189 = v180;
          v190 = v181[0];
          v196 = v184;
          v195 = v183;
          v193 = v181[3];
          v194 = v182;
          *(v200 + 9) = *(v188 + 9);
          v200[0] = v188[0];
          v199 = v187;
          v86 = v185;
          v87 = v186;
          v15 = 1;
          goto LABEL_40;
        }

        goto LABEL_31;
      }

      v232 = v187;
      *v233 = v188[0];
      *&v233[9] = *(v188 + 9);
      v228 = v183;
      v229 = v184;
      v231 = v186;
      v230 = v185;
      v224 = v181[1];
      v225 = v181[2];
      v227 = v182;
      v226 = v181[3];
      v223 = v181[0];
      v222 = v180;
LABEL_36:
      v13 = v125;
      goto LABEL_37;
    }

    v232 = v187;
    *v233 = v188[0];
    *&v233[9] = *(v188 + 9);
    v228 = v183;
    v229 = v184;
    v231 = v186;
    v230 = v185;
    v224 = v181[1];
    v225 = v181[2];
    v227 = v182;
    v226 = v181[3];
    v83 = v180;
    v82 = v181[0];
LABEL_35:
    v223 = v82;
    v222 = v83;
    v11 = v236;
    goto LABEL_36;
  }

  if (v235 != 3)
  {
    LOBYTE(v180) = 1;
    sub_25F5A9DAC();
    sub_25F5E4A84();
    v13 = v125;
    if (!*(&v143 + 1))
    {
      sub_25F5A31D0();
      swift_allocError();
      v15 = 0;
      v16 = 17;
      goto LABEL_39;
    }

    v180 = v143;
    *&v181[0] = v144;
    BYTE8(v181[0]) = v145 & 1;
    sub_25F5A9E30(&v180);
    v232 = v187;
    *v233 = v188[0];
    v81 = *(v188 + 9);
    goto LABEL_32;
  }

  LOBYTE(v126) = 1;
  sub_25F5A9E5C();
  sub_25F5E4A84();
  v13 = v125;
  if (v144 != 0xFF)
  {
    v180 = v143;
    *&v181[0] = v144;
    *(v181 + 8) = v145;
    *(&v181[1] + 8) = *v146;
    *(&v181[2] + 1) = *&v146[9];
    sub_25F5A9EB0(&v180);
LABEL_31:
    v232 = v187;
    *v233 = v188[0];
    v81 = *(v188 + 9);
LABEL_32:
    *&v233[9] = v81;
    v228 = v183;
    v229 = v184;
    v231 = v186;
    v230 = v185;
    v224 = v181[1];
    v225 = v181[2];
    v227 = v182;
    v226 = v181[3];
    v223 = v181[0];
    v222 = v180;
LABEL_37:
    (*(v13 + 8))(v8, v4);
    v88 = *v233;
    v11[10] = v232;
    v11[11] = v88;
    *(v11 + 185) = *&v233[9];
    v89 = v229;
    v11[6] = v228;
    v11[7] = v89;
    v90 = v231;
    v11[8] = v230;
    v11[9] = v90;
    v91 = v225;
    v11[2] = v224;
    v11[3] = v91;
    v92 = v227;
    v11[4] = v226;
    v11[5] = v92;
    v93 = v223;
    *v11 = v222;
    v11[1] = v93;
    v9 = v12;
    return __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  sub_25F5A31D0();
  swift_allocError();
  v15 = 0;
  v16 = 16;
LABEL_39:
  *v14 = v16;
  v192 = v204;
  v191 = v203;
  v189 = v201;
  v190 = v202;
  v196 = v208;
  v195 = v207;
  v193 = v205;
  v194 = v206;
  *(v200 + 9) = *(v212 + 9);
  v200[0] = v212[0];
  v199 = v211;
  v86 = v209;
  v87 = v210;
LABEL_40:
  v197 = v86;
  v198 = v87;
  swift_willThrow();
  (*(v13 + 8))(v8, v4);
  result = __swift_destroy_boxed_opaque_existential_1Tm(v12);
  if (v15)
  {
    return sub_25F5A9E00(&v189);
  }

  return result;
}

Swift::Int __swiftcall DataSourceConfig.minSampleSize()()
{
  v1 = v0[11];
  v13[10] = v0[10];
  v14[0] = v1;
  *(v14 + 9) = *(v0 + 185);
  v2 = v0[7];
  v13[6] = v0[6];
  v13[7] = v2;
  v3 = v0[9];
  v13[8] = v0[8];
  v13[9] = v3;
  v4 = v0[3];
  v13[2] = v0[2];
  v13[3] = v4;
  v5 = v0[5];
  v13[4] = v0[4];
  v13[5] = v5;
  v6 = v0[1];
  v13[0] = *v0;
  v13[1] = v6;
  v7 = sub_25F5A9C48(v13);
  v8 = sub_25F5A9C54(v13);
  if (v7 <= 1)
  {
    v9 = 16;
    v10 = 8;
    if (v7)
    {
      v10 = 88;
      v9 = 96;
    }
  }

  else if (v7 == 2)
  {
    v9 = 40;
    v10 = 32;
  }

  else
  {
    if (v7 != 3)
    {
      return 1;
    }

    v9 = 48;
    v10 = 40;
  }

  v11 = *(v8 + v10);
  if (*(v8 + v9))
  {
    return 1;
  }

  else
  {
    return v11;
  }
}

Swift::String __swiftcall DataSourceConfig.description()()
{
  sub_25F5E49B4();
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall DataSourceConfig.configKey()()
{
  v1 = 0xEF6E6F6974636172;
  v2 = v0[11];
  v12[10] = v0[10];
  v13[0] = v2;
  *(v13 + 9) = *(v0 + 185);
  v3 = v0[7];
  v12[6] = v0[6];
  v12[7] = v3;
  v4 = v0[9];
  v12[8] = v0[8];
  v12[9] = v4;
  v5 = v0[3];
  v12[2] = v0[2];
  v12[3] = v5;
  v6 = v0[5];
  v12[4] = v0[4];
  v12[5] = v6;
  v7 = v0[1];
  v12[0] = *v0;
  v12[1] = v7;
  v8 = sub_25F5A9C48(v12);
  sub_25F5A9C54(v12);
  if (v8 <= 1)
  {
    if (v8)
    {
      v1 = 0xED00006E6F697463;
      v9 = 0x6172747845736D73;
    }

    else
    {
      v9 = 0x7478456C69616D65;
    }
  }

  else if (v8 == 2)
  {
    v1 = 0x800000025F5EC530;
    v9 = 0xD000000000000017;
  }

  else if (v8 == 3)
  {
    v9 = 0xD000000000000012;
    v1 = 0x800000025F5EC510;
  }

  else
  {
    v9 = 0x747845656D6F6962;
  }

  v10 = v1;
  result._object = v10;
  result._countAndFlagsBits = v9;
  return result;
}

uint64_t DataSourceConfig.isCompatible(_:)(__int128 *a1)
{
  v2 = a1[11];
  v48 = a1[10];
  v49[0] = v2;
  *(v49 + 9) = *(a1 + 185);
  v3 = a1[7];
  v44 = a1[6];
  v45 = v3;
  v4 = a1[9];
  v46 = a1[8];
  v47 = v4;
  v5 = a1[3];
  v40 = a1[2];
  v41 = v5;
  v6 = a1[5];
  v42 = a1[4];
  v43 = v6;
  v7 = a1[1];
  v38 = *a1;
  v39 = v7;
  v8 = v1[9];
  v9 = v1[11];
  v60 = v1[10];
  v61[0] = v9;
  *(v61 + 9) = *(v1 + 185);
  v10 = v1[5];
  v11 = v1[7];
  v56 = v1[6];
  v57 = v11;
  v12 = v1[7];
  v13 = v1[9];
  v58 = v1[8];
  v59 = v13;
  v14 = v1[1];
  v15 = v1[3];
  v52 = v1[2];
  v53 = v15;
  v16 = v1[3];
  v17 = v1[5];
  v54 = v1[4];
  v55 = v17;
  v18 = v1[1];
  v50 = *v1;
  v51 = v18;
  v19 = v1[11];
  v62[10] = v60;
  v63[0] = v19;
  *(v63 + 9) = *(v1 + 185);
  v62[6] = v56;
  v62[7] = v12;
  v62[8] = v58;
  v62[9] = v8;
  v62[2] = v52;
  v62[3] = v16;
  v62[4] = v54;
  v62[5] = v10;
  v62[0] = v50;
  v62[1] = v14;
  v20 = sub_25F5A9C48(v62);
  if (v20 <= 1)
  {
    if (v20)
    {
      sub_25F5A9C54(v62);
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 9) = *(v49 + 9);
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v25 = v38;
      v26 = v39;
      if (sub_25F5A9C48(&v25) == 1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      sub_25F5A9C54(v62);
      v35 = v48;
      v36[0] = v49[0];
      *(v36 + 9) = *(v49 + 9);
      v31 = v44;
      v32 = v45;
      v33 = v46;
      v34 = v47;
      v27 = v40;
      v28 = v41;
      v29 = v42;
      v30 = v43;
      v25 = v38;
      v26 = v39;
      if (!sub_25F5A9C48(&v25))
      {
        goto LABEL_13;
      }
    }

LABEL_15:
    v22 = 0;
    goto LABEL_16;
  }

  if (v20 == 2)
  {
    sub_25F5A9C54(v62);
    v35 = v48;
    v36[0] = v49[0];
    *(v36 + 9) = *(v49 + 9);
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v25 = v38;
    v26 = v39;
    if (sub_25F5A9C48(&v25) != 2)
    {
      goto LABEL_15;
    }
  }

  else if (v20 == 3)
  {
    sub_25F5A9C54(v62);
    v35 = v48;
    v36[0] = v49[0];
    *(v36 + 9) = *(v49 + 9);
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v25 = v38;
    v26 = v39;
    if (sub_25F5A9C48(&v25) != 4)
    {
      goto LABEL_15;
    }
  }

  else
  {
    sub_25F5A9C54(v62);
    v35 = v48;
    v36[0] = v49[0];
    *(v36 + 9) = *(v49 + 9);
    v31 = v44;
    v32 = v45;
    v33 = v46;
    v34 = v47;
    v27 = v40;
    v28 = v41;
    v29 = v42;
    v30 = v43;
    v25 = v38;
    v26 = v39;
    v21 = sub_25F5A9C48(&v25);
    if (v21 != 4 && v21 != 3)
    {
      goto LABEL_15;
    }
  }

LABEL_13:
  sub_25F5A9C54(&v25);
  v22 = 1;
LABEL_16:
  v35 = v60;
  v36[0] = v61[0];
  *(v36 + 9) = *(v61 + 9);
  v31 = v56;
  v32 = v57;
  v33 = v58;
  v34 = v59;
  v27 = v52;
  v28 = v53;
  v29 = v54;
  v30 = v55;
  v25 = v50;
  v26 = v51;
  *(v37 + 9) = *(v49 + 9);
  v36[12] = v48;
  v37[0] = v49[0];
  v36[8] = v44;
  v36[9] = v45;
  v36[10] = v46;
  v36[11] = v47;
  v36[4] = v40;
  v36[5] = v41;
  v36[6] = v42;
  v36[7] = v43;
  v36[2] = v38;
  v36[3] = v39;
  sub_25F5AB39C(&v38, v24);
  sub_25F5AB39C(&v50, v24);
  sub_25F5AB3D4(&v25);
  return v22;
}

id TextDataExtractorFactory.callAsFunction(_:_:useCaseForBiome:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = a1[10];
  v11 = a1[11];
  v12 = a1[8];
  v113 = a1[9];
  v114 = v10;
  v115[0] = v11;
  *(v115 + 9) = *(a1 + 185);
  v13 = a1[7];
  v110 = a1[6];
  v111 = v13;
  v112 = v12;
  v14 = a1[3];
  v106 = a1[2];
  v107 = v14;
  v15 = a1[5];
  v108 = a1[4];
  v109 = v15;
  v16 = a1[1];
  v104 = *a1;
  v105 = v16;
  v17 = v5[1];
  v77 = *v5;
  if (qword_27FD9D8B0 != -1)
  {
    swift_once();
  }

  v18 = sub_25F5E3FB4();
  __swift_project_value_buffer(v18, qword_27FD9EA20);
  sub_25F5AB39C(&v104, &v92);
  v19 = sub_25F5E3F94();
  v20 = sub_25F5E4794();
  sub_25F5A9E00(&v104);
  if (os_log_type_enabled(v19, v20))
  {
    v75 = a2;
    v76 = a4;
    v21 = swift_slowAlloc();
    v74 = a3;
    v22 = swift_slowAlloc();
    v79[0] = v22;
    *v21 = 136315138;
    *&v80 = 0;
    *(&v80 + 1) = 0xE000000000000000;
    v101 = v113;
    v102 = v114;
    v103[0] = v115[0];
    *(v103 + 9) = *(v115 + 9);
    v98 = v110;
    v99 = v111;
    v100 = v112;
    v94 = v106;
    v95 = v107;
    v96 = v108;
    v97 = v109;
    v92 = v104;
    v93 = v105;
    sub_25F5E49B4();
    v23 = v17;
    v24 = sub_25F570AF8(0, 0xE000000000000000, v79);

    *(v21 + 4) = v24;
    v17 = v23;
    _os_log_impl(&dword_25F56A000, v19, v20, "Creating Data Extractor with %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v22);
    v25 = v22;
    a3 = v74;
    MEMORY[0x25F8E3B70](v25, -1, -1);
    v26 = v21;
    a2 = v75;
    a4 = v76;
    MEMORY[0x25F8E3B70](v26, -1, -1);
  }

  v102 = v114;
  v103[0] = v115[0];
  *(v103 + 9) = *(v115 + 9);
  v98 = v110;
  v99 = v111;
  v100 = v112;
  v101 = v113;
  v94 = v106;
  v95 = v107;
  v96 = v108;
  v97 = v109;
  v92 = v104;
  v93 = v105;
  v27 = sub_25F5A9C48(&v92);
  if (v27 <= 1)
  {
    if (!v27)
    {
      v34 = sub_25F5A9C54(&v92);
      v35 = type metadata accessor for EmailExtractor(0);
      a5[3] = v35;
      a5[4] = &off_287196F68;
      boxed_opaque_existential_1Tm = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      sub_25F5AB47C(a2, boxed_opaque_existential_1Tm + *(v35 + 20));
      v38 = *(v34 + 16);
      v37 = *(v34 + 32);
      *boxed_opaque_existential_1Tm = *v34;
      *(boxed_opaque_existential_1Tm + 1) = v38;
      *(boxed_opaque_existential_1Tm + 2) = v37;
      v39 = *(v34 + 96);
      v41 = *(v34 + 48);
      v40 = *(v34 + 64);
      *(boxed_opaque_existential_1Tm + 5) = *(v34 + 80);
      *(boxed_opaque_existential_1Tm + 6) = v39;
      *(boxed_opaque_existential_1Tm + 3) = v41;
      *(boxed_opaque_existential_1Tm + 4) = v40;
      v43 = *(v34 + 128);
      v42 = *(v34 + 144);
      v44 = *(v34 + 112);
      *(boxed_opaque_existential_1Tm + 160) = *(v34 + 160);
      *(boxed_opaque_existential_1Tm + 8) = v43;
      *(boxed_opaque_existential_1Tm + 9) = v42;
      *(boxed_opaque_existential_1Tm + 7) = v44;
      v90 = v114;
      v91[0] = v115[0];
      *(v91 + 9) = *(v115 + 9);
      v86 = v110;
      v87 = v111;
      v88 = v112;
      v89 = v113;
      v82 = v106;
      v83 = v107;
      v84 = v108;
      v85 = v109;
      v80 = v104;
      v81 = v105;
      v45 = sub_25F5A9C54(&v80);
      return sub_25F5A98AC(v45, v79);
    }

    v61 = sub_25F5A9C54(&v92);
    v62 = type metadata accessor for SmsExtractor(0);
    a5[3] = v62;
    a5[4] = &off_287197650;
    v63 = __swift_allocate_boxed_opaque_existential_1Tm(a5);
    sub_25F5AB47C(a2, v63 + *(v62 + 20));
    *v63 = *v61;
    v64 = v61[4];
    v66 = v61[1];
    v65 = v61[2];
    *(v63 + 3) = v61[3];
    *(v63 + 4) = v64;
    *(v63 + 1) = v66;
    *(v63 + 2) = v65;
    v67 = v61[8];
    v69 = v61[5];
    v68 = v61[6];
    *(v63 + 7) = v61[7];
    *(v63 + 8) = v67;
    *(v63 + 5) = v69;
    *(v63 + 6) = v68;
    v71 = v61[10];
    v70 = v61[11];
    v72 = v61[9];
    *(v63 + 185) = *(v61 + 185);
    *(v63 + 10) = v71;
    *(v63 + 11) = v70;
    *(v63 + 9) = v72;
    v73 = (v63 + *(v62 + 24));
    *v73 = a3;
    v73[1] = a4;
    sub_25F5AB39C(&v104, &v80);
  }

  else
  {
    if (v27 == 2)
    {
      v47 = sub_25F5A9C54(&v92);
      v48 = type metadata accessor for GenmojiPromptExtractor(0);
      a5[3] = v48;
      a5[4] = &off_287197058;
      v49 = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      sub_25F5AB47C(a2, v49 + *(v48 + 24));
      *v49 = *v47;
      v50 = *(v47 + 16);
      v51 = *(v47 + 32);
      v52 = *(v47 + 64);
      *(v49 + 3) = *(v47 + 48);
      *(v49 + 4) = v52;
      *(v49 + 1) = v50;
      *(v49 + 2) = v51;
      v53 = *(v47 + 80);
      v54 = *(v47 + 96);
      v55 = *(v47 + 112);
      *(v49 + 128) = *(v47 + 128);
      *(v49 + 6) = v54;
      *(v49 + 7) = v55;
      *(v49 + 5) = v53;
      v49[17] = v77;
      v49[18] = v17;
    }

    else
    {
      if (v27 != 3)
      {
        v56 = sub_25F5A9C54(&v92);
        v78 = *v56;
        v57 = *(v56 + 16);
        v58 = *(v56 + 24);
        a5[3] = &type metadata for BiomeExtractor;
        a5[4] = &off_287196200;
        v59 = swift_allocObject();
        *a5 = v59;
        v60 = objc_allocWithZone(MEMORY[0x277CF1A88]);
        v90 = v114;
        v91[0] = v115[0];
        *(v91 + 9) = *(v115 + 9);
        v86 = v110;
        v87 = v111;
        v88 = v112;
        v89 = v113;
        v82 = v106;
        v83 = v107;
        v84 = v108;
        v85 = v109;
        v80 = v104;
        v81 = v105;
        sub_25F5A9C54(&v80);

        result = [v60 init];
        *(v59 + 16) = v78;
        *(v59 + 32) = v57;
        *(v59 + 40) = v58;
        *(v59 + 48) = result;
        return result;
      }

      v28 = sub_25F5A9C54(&v92);
      v29 = type metadata accessor for MorpheusExtractor(0);
      a5[3] = v29;
      a5[4] = &off_287197490;
      v30 = __swift_allocate_boxed_opaque_existential_1Tm(a5);
      sub_25F5AB47C(a2, v30 + *(v29 + 24));
      *v30 = *v28;
      v31 = *(v28 + 16);
      v32 = *(v28 + 32);
      v33 = *(v28 + 48);
      *(v30 + 64) = *(v28 + 64);
      *(v30 + 2) = v32;
      *(v30 + 3) = v33;
      *(v30 + 1) = v31;
      v30[9] = v77;
      v30[10] = v17;
    }

    sub_25F5AB39C(&v104, &v80);
  }
}

unint64_t sub_25F5A9644()
{
  result = qword_27FD9E140;
  if (!qword_27FD9E140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E140);
  }

  return result;
}

unint64_t sub_25F5A9698()
{
  result = qword_27FD9E150;
  if (!qword_27FD9E150)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E148, &qword_25F5E8AB0);
    sub_25F5A971C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E150);
  }

  return result;
}

unint64_t sub_25F5A971C()
{
  result = qword_27FD9E158;
  if (!qword_27FD9E158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E158);
  }

  return result;
}

uint64_t sub_25F5A9770(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

unint64_t sub_25F5A9780()
{
  result = qword_27FD9E168;
  if (!qword_27FD9E168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E168);
  }

  return result;
}

unint64_t sub_25F5A9804()
{
  result = qword_27FD9E170;
  if (!qword_27FD9E170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E170);
  }

  return result;
}

unint64_t sub_25F5A9858()
{
  result = qword_27FD9E178;
  if (!qword_27FD9E178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E178);
  }

  return result;
}

unint64_t sub_25F5A98E4()
{
  result = qword_27FD9E188;
  if (!qword_27FD9E188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E188);
  }

  return result;
}

unint64_t sub_25F5A9938()
{
  result = qword_27FD9E198;
  if (!qword_27FD9E198)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD9E190, qword_25F5EA790);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E198);
  }

  return result;
}

void sub_25F5A99B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 != 1)
  {
  }
}

unint64_t sub_25F5A9A28()
{
  result = qword_27FD9E1A8;
  if (!qword_27FD9E1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1A8);
  }

  return result;
}

unint64_t sub_25F5A9AAC()
{
  result = qword_27FD9E1B0;
  if (!qword_27FD9E1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1B0);
  }

  return result;
}

unint64_t sub_25F5A9B38()
{
  result = qword_27FD9E1C0;
  if (!qword_27FD9E1C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1C0);
  }

  return result;
}

unint64_t sub_25F5A9BF4()
{
  result = qword_27FD9E1D0;
  if (!qword_27FD9E1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1D0);
  }

  return result;
}

unint64_t sub_25F5A9C64()
{
  result = qword_27FD9E1E0;
  if (!qword_27FD9E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1E0);
  }

  return result;
}

unint64_t sub_25F5A9CB8()
{
  result = qword_27FD9E1E8;
  if (!qword_27FD9E1E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1E8);
  }

  return result;
}

unint64_t sub_25F5A9D0C()
{
  result = qword_27FD9E1F0;
  if (!qword_27FD9E1F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1F0);
  }

  return result;
}

uint64_t sub_25F5A9D60(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5A9D84(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200) & 1;
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2;
  return result;
}

unint64_t sub_25F5A9DAC()
{
  result = qword_27FD9E1F8;
  if (!qword_27FD9E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E1F8);
  }

  return result;
}

uint64_t sub_25F5A9E30(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x80;
  return result;
}

unint64_t sub_25F5A9E5C()
{
  result = qword_27FD9E200;
  if (!qword_27FD9E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E200);
  }

  return result;
}

uint64_t sub_25F5A9EB0(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x60;
  return result;
}

unint64_t sub_25F5A9EDC()
{
  result = qword_27FD9E208;
  if (!qword_27FD9E208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E208);
  }

  return result;
}

uint64_t sub_25F5A9F30(uint64_t a1)
{
  v1 = *(a1 + 72);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  v3 = v2 <= 0;
  if (v2 < 0)
  {
    v2 = -1;
  }

  if (v3)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_25F5A9F54(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x40;
  return result;
}

uint64_t sub_25F5A9F80(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961446B656577 && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x756F487472617473 && a2 == 0xE900000000000072 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x72756F48646E65 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25F5E4B84();

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

uint64_t sub_25F5AA0A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x737961447473616CLL && a2 == 0xE800000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x617373654D6E696DLL && a2 == 0xEB00000000736567 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x617373654D78616DLL && a2 == 0xEB00000000736567 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x654D7265746C6966 && a2 == 0xEE00736567617373 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xEE00736567617373 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x5470756E61656C63 && a2 == 0xEB00000000747865 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_25F5E4B84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x72437265746C6966 && a2 == 0xEE00616972657469 || (sub_25F5E4B84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5EC550 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x6D69547972657571 && a2 == 0xEC00000074756F65 || (sub_25F5E4B84() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F5EC570 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025F5EC590 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 13;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_25F5AA528(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000025F5EC1A0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025F5EC1C0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000025F5EC5E0 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746C75736572 && a2 == 0xE700000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7365727574616566 && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v5 = sub_25F5E4B84();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_25F5AA6EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4E7473616CLL && a2 == 0xE500000000000000;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x706D6F72506E696DLL && a2 == 0xEA00000000007374 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x676E696C706D6173 && a2 == 0xEC000000657A6953 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72437265746C6966 && a2 == 0xEE00616972657469 || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_25F5AA908(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7961444E6D6F7266 && a2 == 0xEC0000006F674173;
  if (v4 || (sub_25F5E4B84() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61444E6C69746E75 && a2 == 0xED00006F67417379 || (sub_25F5E4B84() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x74676E654C6E696DLL && a2 == 0xE900000000000068 || (sub_25F5E4B84() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x74676E654C78616DLL && a2 == 0xE900000000000068 || (sub_25F5E4B84() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6576454E7473616CLL && a2 == 0xEB0000000073746ELL || (sub_25F5E4B84() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746E65764578616DLL && a2 == 0xE900000000000073 || (sub_25F5E4B84() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C706D615378616DLL && a2 == 0xEF657A6953676E69 || (sub_25F5E4B84() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6C706D61536E696DLL && a2 == 0xEF657A6953676E69 || (sub_25F5E4B84() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x654D656C676E6973 && a2 == 0xEE00736567617373 || (sub_25F5E4B84() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000012 && 0x800000025F5EC600 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F5EC620 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x685472655078616DLL && a2 == 0xEC00000064616572 || (sub_25F5E4B84() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000011 && 0x800000025F5EC640 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x796C6E4F746E6573 && a2 == 0xE800000000000000 || (sub_25F5E4B84() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000014 && 0x800000025F5EC660 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000015 && 0x800000025F5EC680 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x5470756E61656C63 && a2 == 0xEB00000000747865 || (sub_25F5E4B84() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025F5EC570 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025F5EC590 == a2 || (sub_25F5E4B84() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000020 && 0x800000025F5EC5B0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = sub_25F5E4B84();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_25F5AAF68(uint64_t a1)
{
  v2 = sub_25F5E3E24();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v10 = &v36 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E320, &unk_25F5EA470);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_25F5E77E0;
  v12 = *(v3 + 104);
  v12(v10, *MEMORY[0x277D20758], v2);
  v13 = sub_25F5E3DC4();
  v14 = *(v3 + 8);
  v14(v10, v2);
  *(v11 + 32) = v13;
  v12(v7, *MEMORY[0x277D20750], v2);
  v15 = sub_25F5E3DC4();
  v14(v7, v2);
  *(v11 + 40) = v15;
  v16 = *(a1 + 16);
  if (v16)
  {
    v17 = 0;
    while (2)
    {
      v18 = *(a1 + 32 + 8 * v17++);
      v19 = *(v11 + 16);
      v20 = 32;
      do
      {
        if (!v19)
        {
          if (qword_27FD9D8B0 != -1)
          {
            swift_once();
          }

          v23 = sub_25F5E3FB4();
          __swift_project_value_buffer(v23, qword_27FD9EA20);

          v24 = sub_25F5E3F94();
          v25 = sub_25F5E47B4();

          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            v27 = swift_slowAlloc();
            v37 = v27;
            *v26 = 136315394;
            v28 = MEMORY[0x277D83B88];
            v29 = MEMORY[0x25F8E2CF0](a1, MEMORY[0x277D83B88]);
            v31 = sub_25F570AF8(v29, v30, &v37);

            *(v26 + 4) = v31;
            *(v26 + 12) = 2080;
            v32 = MEMORY[0x25F8E2CF0](v11, v28);
            v34 = v33;

            v35 = sub_25F570AF8(v32, v34, &v37);

            *(v26 + 14) = v35;
            _os_log_impl(&dword_25F56A000, v24, v25, "Invalid ExtractParameters.filterCriteria.results for generated image user interaction: %s. Allowed results are: %s.", v26, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x25F8E3B70](v27, -1, -1);
            MEMORY[0x25F8E3B70](v26, -1, -1);
          }

          else
          {
          }

          return 0;
        }

        v21 = *(v11 + v20);
        v20 += 8;
        --v19;
      }

      while (v21 != v18);
      if (v17 != v16)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

unint64_t sub_25F5AB2F8()
{
  result = qword_27FD9E210;
  if (!qword_27FD9E210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E210);
  }

  return result;
}

uint64_t sub_25F5AB34C(uint64_t a1)
{
  v1 = *(a1 + 144);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25F5AB370(uint64_t result)
{
  v1 = *(result + 168);
  v2 = *(result + 200);
  *(result + 128) &= 0xFF01uLL;
  *(result + 168) = v1;
  *(result + 200) = v2 & 1 | 0x20;
  return result;
}

uint64_t sub_25F5AB3D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD9E218, &unk_25F5E8AF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F5AB43C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_25F5AB47C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FD9E500, &unk_25F5EA410);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_25F5AB4F0()
{
  result = qword_27FD9E220;
  if (!qword_27FD9E220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E220);
  }

  return result;
}

unint64_t sub_25F5AB58C()
{
  result = qword_27FD9E230;
  if (!qword_27FD9E230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E230);
  }

  return result;
}

unint64_t sub_25F5AB5E4()
{
  result = qword_27FD9E238;
  if (!qword_27FD9E238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E238);
  }

  return result;
}

unint64_t sub_25F5AB63C()
{
  result = qword_27FD9E240;
  if (!qword_27FD9E240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E240);
  }

  return result;
}

unint64_t sub_25F5AB694()
{
  result = qword_27FD9E248;
  if (!qword_27FD9E248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E248);
  }

  return result;
}

unint64_t sub_25F5AB6E8(uint64_t a1)
{
  result = sub_25F5A9D0C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB710(uint64_t a1)
{
  result = sub_25F5A9EDC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB738(uint64_t a1)
{
  result = sub_25F5AB2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB760(uint64_t a1)
{
  result = sub_25F5A9DAC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25F5AB78C()
{
  result = qword_27FD9E250;
  if (!qword_27FD9E250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD9E250);
  }

  return result;
}

uint64_t sub_25F5AB824(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_25F5AB890(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 33))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5AB8EC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GenerativeModelsAvailabilityType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GenerativeModelsAvailabilityType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8PriMLETL19EmailFilterCriteriaVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy161_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[9];
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}

uint64_t sub_25F5ABA18(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 161))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 112);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5ABA74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 160) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 161) = 0;
    }

    if (a2)
    {
      *(result + 112) = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_8PriMLETL36GeneratedImageFeaturesFilterCriteriaVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

__n128 __swift_memcpy129_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_25F5ABB6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 129))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 72);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v5 = -1;
  }

  else
  {
    v5 = v4;
  }

  v6 = v5 - 1;
  if (v4 < 1)
  {
    v7 = -1;
  }

  else
  {
    v7 = v6;
  }

  return (v7 + 1);
}

uint64_t sub_25F5ABBD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 129) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy201_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  v5 = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = v5;
  *(a1 + 96) = v6;
  result = *(a2 + 144);
  v9 = *(a2 + 160);
  v10 = *(a2 + 176);
  *(a1 + 185) = *(a2 + 185);
  *(a1 + 160) = v9;
  *(a1 + 176) = v10;
  *(a1 + 144) = result;
  return result;
}

uint64_t sub_25F5ABC9C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 201))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 144);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_25F5ABCF8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
    *(result + 200) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 201) = 0;
    }

    if (a2)
    {
      *(result + 144) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}