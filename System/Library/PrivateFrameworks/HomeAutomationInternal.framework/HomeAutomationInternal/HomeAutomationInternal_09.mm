uint64_t sub_2529D23F0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1080) = v1;

  if (v1)
  {
    v5 = sub_2529D25D8;
  }

  else
  {
    *(v4 + 1088) = a1;
    v5 = sub_2529D253C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D253C()
{
  v1 = v0[130];

  v2 = v0[1];
  v3 = v0[136];

  return v2(v3);
}

uint64_t sub_2529D25D8()
{
  v1 = *(v0 + 1040);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529D2698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_2529D0DD0(a1, a2, a3);
}

void *sub_2529D274C@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for GetSecuritySystemStateResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

BOOL sub_2529D27B0(void *a1)
{
  v2 = [a1 userTask];
  if (!v2)
  {
    goto LABEL_6;
  }

  v3 = v2;
  v4 = [v2 attribute];

  if (v4 != 13)
  {
    return 0;
  }

  v5 = [a1 userTask];
  if (!v5)
  {
LABEL_6:
    sub_252C515AC();
    return 0;
  }

  v6 = v5;
  if ([v5 taskType] == 4)
  {

    return 1;
  }

  else
  {
    v8 = [v6 taskType];

    return v8 == 5;
  }
}

uint64_t sub_2529D2874()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_25294B958;

  return sub_2529D2174(v2, v3, v4);
}

uint64_t sub_2529D291C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5404C8, &unk_252E3FD60);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529D298C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[159] = v3;
  v4[158] = a3;
  v4[157] = a2;
  v4[156] = a1;
  v4[160] = type metadata accessor for HomeAutomationSetNumericValueParameters(0);
  v4[161] = swift_task_alloc();
  sub_252E33944();
  v4[162] = swift_task_alloc();
  v5 = sub_252E34014();
  v4[163] = v5;
  v4[164] = *(v5 - 8);
  v4[165] = swift_task_alloc();
  v4[166] = swift_task_alloc();
  v4[167] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529D2ACC, 0, 0);
}

uint64_t sub_2529D2ACC()
{
  v31 = v0;
  v1 = *(v0 + 1264);
  *(v0 + 1224) = 0u;
  if (v1)
  {
    v2 = sub_252C2A7E8();
  }

  else
  {
    v2 = 0;
  }

  *(v0 + 1344) = v2;
  v3 = [*(v0 + 1256) userTask];
  if (v3)
  {
    v4 = v3;
    if (v2)
    {
      v5 = v2;
      v2 = sub_252C32D14();
    }

    *(v0 + 1224) = v2;
    type metadata accessor for HomeAutomationEntityResponses.Builder();
    v6 = swift_allocObject();
    v7 = MEMORY[0x277D84F90];
    *(v6 + 16) = MEMORY[0x277D84F90];
    if (v2)
    {

      v7 = v2;
    }

    type metadata accessor for HomeAutomationNumericEntityResponses();
    v8 = swift_allocObject();
    *(v8 + 16) = 0;
    swift_setDeallocating();
    swift_deallocClassInstance();
    *(v8 + 24) = v7;
    *(v0 + 1232) = v8;
  }

  else
  {
    v8 = 0;
    v2 = 0;
  }

  *(v0 + 1352) = v2;
  v9 = *(v0 + 1272);
  v10 = *(v0 + 1256);
  memcpy((v0 + 16), (v9 + 112), 0x1F8uLL);
  memcpy(__dst, (v9 + 112), 0x1F8uLL);
  sub_2529D291C(v0 + 16, v0 + 520);
  v11 = v10;
  v12 = sub_252953488(v10, __dst, 0);
  *(v0 + 1360) = v12;

  v14 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v13);
  sub_252929E74((v14 + 288), v0 + 1024);

  v15 = *(v0 + 1048);
  v16 = *(v0 + 1056);
  __swift_project_boxed_opaque_existential_1((v0 + 1024), v15);
  LOBYTE(v10) = (*(v16 + 120))(v15, v16);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1024));
  v17 = *(v0 + 1272);
  if (v10)
  {
    *(v0 + 1368) = *(v17 + 64);

    if (v1)
    {
      v18 = sub_252C2AC20();
    }

    else
    {
      v18 = 0;
    }

    v21 = swift_task_alloc();
    *(v0 + 1376) = v21;
    *v21 = v0;
    v21[1] = sub_2529D2F2C;

    return sub_252D2A778(v8, v18 & 1, v12);
  }

  else
  {
    sub_252929E74(v17 + 24, v0 + 1064);
    __swift_project_boxed_opaque_existential_1((v0 + 1064), *(v0 + 1088));
    if (v1)
    {
      v19 = (v0 + 1232);
      v20 = sub_252C2AC20();
    }

    else
    {
      v19 = (v0 + 1232);
      v20 = 0;
    }

    v23 = *(v0 + 1288);
    v24 = *(v0 + 1280);
    v25 = sub_252E36324();
    v26 = *(*(v25 - 8) + 56);

    v26(v23, 1, 1, v25);
    v26(v23 + v24[10], 1, 1, v25);
    *(v23 + v24[5]) = 0;
    *(v23 + v24[6]) = v20 & 1;
    *(v23 + v24[7]) = 0;
    *(v23 + v24[8]) = 0;
    *(v23 + v24[9]) = 0;
    sub_2529D4F7C(v23, v19, (v0 + 1224), v12);
    v27 = sub_252C09E14();
    *(v0 + 1472) = v27;
    v29 = (*MEMORY[0x277D55BE8] + MEMORY[0x277D55BE8]);
    v28 = swift_task_alloc();
    *(v0 + 1480) = v28;
    *v28 = v0;
    v28[1] = sub_2529D3B14;

    return v29(0xD00000000000001ELL, 0x8000000252E66610, v27);
  }
}

uint64_t sub_2529D2F2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1384) = a1;
  *(v3 + 1392) = v1;

  if (v1)
  {
    v4 = sub_2529D4B48;
  }

  else
  {
    v4 = sub_2529D3088;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D3088()
{
  v1 = *(v0 + 1384);
  v2 = *(v0 + 1360);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);
  v5 = swift_task_alloc();
  *(v0 + 1400) = v5;
  v5[2] = v4;
  v5[3] = v0 + 1232;
  v5[4] = v2;
  *(v0 + 1576) = sub_252DC6D48(v4, v3);
  sub_252E33924();
  sub_252E33F54();
  v6 = v1;
  if (v3)
  {
    v7 = *(v0 + 1264);
    v8 = swift_task_alloc();
    *(v0 + 1408) = v8;
    *v8 = v0;
    v8[1] = sub_2529D32F0;

    return sub_252DC810C(v7);
  }

  else
  {
    v10 = *(v0 + 1384);
    *(v0 + 1432) = v10;
    v11 = *(v0 + 1400);
    __swift_project_boxed_opaque_existential_1((*(v0 + 1272) + 72), *(*(v0 + 1272) + 96));
    v12 = swift_task_alloc();
    *(v0 + 1440) = v12;
    *(v12 + 16) = v10;
    v13 = swift_task_alloc();
    *(v0 + 1448) = v13;
    *(v13 + 16) = &unk_252E40098;
    *(v13 + 24) = v11;
    v14 = v10;
    v15 = swift_task_alloc();
    *(v0 + 1456) = v15;
    *v15 = v0;
    v15[1] = sub_2529D3408;
    v16 = *(v0 + 1336);

    return sub_252A199A8(v0 + 1184, &unk_252E400A0, v12, &unk_252E3D1A0, v13, v16, 0, 0);
  }
}

uint64_t sub_2529D32F0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1416) = a1;
  *(v3 + 1424) = v1;

  if (v1)
  {
    v4 = sub_2529D39F8;
  }

  else
  {
    v4 = sub_2529D3864;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D3408()
{
  v2 = *v1;
  *(*v1 + 1464) = v0;

  if (v0)
  {

    v3 = sub_2529D374C;
  }

  else
  {

    v3 = sub_2529D357C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529D357C()
{
  v1 = v0[159];
  v2 = v0[157];
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = v0[179];
  v14 = v0[173];
  v15 = v0[168];
  v9 = v0[167];
  v10 = v0[164];
  v11 = v0[163];
  (*(v4 + 112))(v7, v0 + 148, v3, v4);

  __swift_destroy_boxed_opaque_existential_1(v0 + 148);
  (*(v10 + 8))(v9, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_2529D374C()
{
  v1 = v0[179];
  v2 = v0[167];
  v3 = v0[164];
  v4 = v0[163];

  (*(v3 + 8))(v2, v4);
  v5 = v0[173];
  v6 = v0[168];

  v7 = v0[1];

  return v7();
}

uint64_t sub_2529D3864()
{
  v1 = *(v0 + 1416);
  v2 = *(v0 + 1384);
  if (v1)
  {
    v3 = sub_252BE92A0(*(v0 + 1416));

    v2 = v3;
  }

  *(v0 + 1432) = v2;
  v4 = *(v0 + 1400);
  __swift_project_boxed_opaque_existential_1((*(v0 + 1272) + 72), *(*(v0 + 1272) + 96));
  v5 = swift_task_alloc();
  *(v0 + 1440) = v5;
  *(v5 + 16) = v2;
  v6 = swift_task_alloc();
  *(v0 + 1448) = v6;
  *(v6 + 16) = &unk_252E40098;
  *(v6 + 24) = v4;
  v7 = v2;
  v8 = swift_task_alloc();
  *(v0 + 1456) = v8;
  *v8 = v0;
  v8[1] = sub_2529D3408;
  v9 = *(v0 + 1336);

  return sub_252A199A8(v0 + 1184, &unk_252E400A0, v5, &unk_252E3D1A0, v6, v9, 0, 0);
}

uint64_t sub_2529D39F8()
{
  v1 = *(v0 + 1336);
  v2 = *(v0 + 1312);
  v3 = *(v0 + 1304);
  v4 = *(v0 + 1264);

  (*(v2 + 8))(v1, v3);
  v5 = *(v0 + 1384);
  v6 = *(v0 + 1344);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_2529D3B14(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1488) = a1;
  *(v3 + 1496) = v1;

  if (v1)
  {
    v4 = sub_2529D3FF8;
  }

  else
  {
    v4 = sub_2529D3C4C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D3C4C()
{
  v1 = *(v0 + 1488);
  v2 = *(v0 + 1344);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1256);
  sub_2529D5C88(*(v0 + 1288));

  __swift_destroy_boxed_opaque_existential_1((v0 + 1064));
  v5 = swift_allocObject();
  *(v0 + 1504) = v5;
  *(v5 + 16) = v1;
  v6 = v1;
  *(v0 + 1577) = sub_252DC6D48(v4, v3);
  if (v2)
  {
    v7 = *(v0 + 1488);
    v8 = *(v0 + 1344);
    v9 = v7;
    v10 = swift_task_alloc();
    *(v0 + 1512) = v10;
    *v10 = v0;
    v10[1] = sub_2529D3EE0;

    return sub_252E174F4(v8);
  }

  else
  {
    if (qword_27F53F4D0 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 1272);
    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_27F544D18);
    sub_252CC4050(0xD00000000000003CLL, 0x8000000252E6B3F0, 0xD00000000000008FLL, 0x8000000252E6B430, 0xD000000000000042, 0x8000000252E6B4C0, 205);
    v14 = *(v12 + 96);
    __swift_project_boxed_opaque_existential_1((v12 + 72), v14);
    sub_252AD7CC4();
    v15 = swift_task_alloc();
    *(v0 + 1536) = v15;
    *v15 = v0;
    v15[1] = sub_2529D40E4;
    v16 = *(v0 + 1328);

    return sub_252BDB88C(v0 + 1104, &unk_252E40080, v5, v16, 0, 0, 0, v14);
  }
}

uint64_t sub_2529D3EE0(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 1520) = a1;
  *(v3 + 1528) = v1;

  if (v1)
  {
    v4 = sub_2529D43B0;
  }

  else
  {
    v4 = sub_2529D4254;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_2529D3FF8()
{
  v1 = v0[168];
  sub_2529D5C88(v0[161]);

  __swift_destroy_boxed_opaque_existential_1(v0 + 133);

  v2 = v0[1];

  return v2();
}

uint64_t sub_2529D40E4()
{
  v2 = *(*v1 + 1328);
  v3 = *(*v1 + 1312);
  v4 = *(*v1 + 1304);
  *(*v1 + 1544) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529D4A6C;
  }

  else
  {
    v5 = sub_2529D48EC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D4254()
{
  v1 = (v0 + 1240);
  v2 = *(v0 + 1520);
  v3 = *(v0 + 1488);
  *(v0 + 1240) = v3;
  if (v2)
  {
    v4 = v3;
    v5 = v2;
    v6 = sub_252BE8A5C(v5);

    *v1 = v6;
  }

  else
  {
    v7 = v3;
  }

  v8 = *(v0 + 1272);
  v9 = *(v8 + 96);
  __swift_project_boxed_opaque_existential_1((v8 + 72), v9);
  v10 = swift_task_alloc();
  *(v0 + 1552) = v10;
  *(v10 + 16) = v1;
  sub_252AD7CC4();
  v11 = swift_task_alloc();
  *(v0 + 1560) = v11;
  *v11 = v0;
  v11[1] = sub_2529D44AC;
  v12 = *(v0 + 1577);
  v13 = *(v0 + 1320);

  return sub_252BDB88C(v0 + 1144, &unk_252E3F140, v10, v13, 0, 0, v12, v9);
}

uint64_t sub_2529D43B0()
{
  v1 = *(v0 + 1344);

  v2 = *(v0 + 1488);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_2529D44AC()
{
  v2 = *(*v1 + 1320);
  v3 = *(*v1 + 1312);
  v4 = *(*v1 + 1304);
  *(*v1 + 1568) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_2529D47D4;
  }

  else
  {

    v5 = sub_2529D462C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2529D462C()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1256);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 1520);
  v9 = *(v0 + 1488);
  v10 = *(v0 + 1344);
  (*(v4 + 112))(v7, v0 + 1144, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1144));

  v11 = *(v0 + 1344);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_2529D47D4()
{
  v1 = *(v0 + 1520);
  v2 = *(v0 + 1344);

  v3 = *(v0 + 1488);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_2529D48EC()
{
  v1 = *(v0 + 1272);
  v2 = *(v0 + 1256);
  v3 = v1[12];
  v4 = v1[13];
  __swift_project_boxed_opaque_existential_1(v1 + 9, v3);
  v5 = [v2 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  (*(v4 + 112))(v7, v0 + 1104, v3, v4);

  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_2529D4A6C()
{

  v1 = *(v0 + 1488);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529D4B48()
{
  v1 = *(v0 + 1344);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529D4C1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for CompletionSnippetModel(0);
  v4[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529D4CB0, 0, 0);
}

uint64_t sub_2529D4CB0()
{
  v1 = **(v0 + 32);
  *(v0 + 56) = v1;

  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_2529D4D64;
  v4 = *(v0 + 40);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);

  return sub_252A23D80(v3, v5, v1, v4);
}

uint64_t sub_2529D4D64()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_2529D4F10;
  }

  else
  {

    v2 = sub_2529D4E80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2529D4E80()
{
  sub_2529645E8(v0[6], v0[2]);
  type metadata accessor for HomeAutomationSnippetModels(0);
  swift_storeEnumTagMultiPayload();

  v1 = v0[1];

  return v1();
}

uint64_t sub_2529D4F10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2529D4F7C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  v36[1] = *MEMORY[0x277D85DE8];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540298, &unk_252E3C270);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = &v35[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v35[-v12];
  v14 = *a2;
  v15 = type metadata accessor for HomeAutomationSetNumericValueParameters(0);
  *(a1 + v15[9]) = v14;

  v16 = *a3;
  if (v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
  }

  type metadata accessor for HomeAutomationEntityResponses();
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = v17;
  v19 = v15[8];

  *(a1 + v19) = v18;
  v20 = v15[7];

  *(a1 + v20) = a4;
  v21 = sub_25294833C(1u, 0, 0);
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = v21;
  v23 = [v21 dictionary];
  if (!v23)
  {

LABEL_10:
    v31 = sub_252E36324();
    (*(*(v31 - 8) + 56))(v13, 1, 1, v31);
    goto LABEL_11;
  }

  v24 = v23;
  v25 = objc_opt_self();
  v36[0] = 0;
  v26 = [v25 dataWithPropertyList:v24 format:200 options:0 error:v36];
  v27 = v36[0];
  if (!v26)
  {
    v32 = v27;
    v33 = sub_252E32C54();

    swift_willThrow();
    goto LABEL_10;
  }

  v28 = sub_252E32D34();
  v30 = v29;

  sub_252E32D24();
  sub_252E362F4();

  sub_25296464C(v28, v30);
  v31 = sub_252E36324();
  (*(*(v31 - 8) + 56))(v13, 0, 1, v31);
LABEL_11:
  sub_252956C98(v13, a1 + v15[10]);
  sub_252E37024();
  sub_252E36324();
  (*(*(v31 - 8) + 56))(v11, 0, 1, v31);
  return sub_252956C98(v11, a1);
}

uint64_t sub_2529D52E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2529D530C, 0, 0);
}

uint64_t sub_2529D530C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v11 = sub_252E378C4();

      if (!v11)
      {
LABEL_4:
        if (sub_252C28D24(v0[3]))
        {
          sub_252C24354(v2, v0[2]);

          v5 = v0[1];

          return v5();
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v12 = v2;
    v13 = swift_task_alloc();
    v0[7] = v13;
    *v13 = v0;
    v13[1] = sub_2529D55C4;
    v9 = v0[4];
    v7 = v0[2];
    v8 = v0[3];
    goto LABEL_12;
  }

  v6 = swift_task_alloc();
  v0[6] = v6;
  *v6 = v0;
  v6[1] = sub_2529D54D0;
  v7 = v0[2];
  v8 = v0[3];
  v9 = 0;
LABEL_12:

  return sub_2529D298C(v7, v8, v9);
}

uint64_t sub_2529D54D0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2529D55C4()
{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_2529D56E0;
  }

  else
  {

    v3 = sub_2529D5EC0;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_2529D56E0()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_2529D5748(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_2529D576C, 0, 0);
}

uint64_t sub_2529D576C()
{
  v1 = v0[4];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252C2A5D8();
    if (v3 >> 62)
    {
      v11 = sub_252E378C4();

      if (!v11)
      {
LABEL_4:
        if (sub_252C28D24(v0[3]))
        {
          sub_252C24354(v2, v0[2]);

          v5 = v0[1];

          return v5();
        }
      }
    }

    else
    {
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v4)
      {
        goto LABEL_4;
      }
    }

    v12 = v2;
    v13 = swift_task_alloc();
    v0[6] = v13;
    *v13 = v0;
    v13[1] = sub_252963D44;
    v9 = v0[4];
    v7 = v0[2];
    v8 = v0[3];
    goto LABEL_12;
  }

  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_252963EC4;
  v7 = v0[2];
  v8 = v0[3];
  v9 = 0;
LABEL_12:

  return sub_2529D298C(v7, v8, v9);
}

uint64_t sub_2529D5958(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529D298C(a1, a2, a3);
}

uint64_t sub_2529D5A0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25293B808;

  return sub_2529D5748(a1, a2, a3);
}

uint64_t sub_2529D5AC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_25294B954;

  return sub_2529D52E8(a1, a2, a3);
}

void *sub_2529D5B74@<X0>(const void *a1@<X0>, uint64_t *a2@<X8>)
{
  type metadata accessor for SetNumericValueResponseHandler();
  swift_allocObject();
  memcpy(__dst, a1, sizeof(__dst));
  result = sub_252BE97AC(__dst);
  *a2 = result;
  return result;
}

id sub_2529D5BD8(void *a1, uint64_t a2)
{
  result = [a1 userTask];
  if (!result)
  {
    return result;
  }

  v4 = result;
  if (!a2)
  {
LABEL_8:

    return 0;
  }

  v5 = sub_252C32D14();
  if (!sub_252C4B5D4())
  {

    goto LABEL_8;
  }

  if (v5 >> 62)
  {
    v6 = sub_252E378C4();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return (v6 != 0);
}

uint64_t sub_2529D5C88(uint64_t a1)
{
  v2 = type metadata accessor for HomeAutomationSetNumericValueParameters(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529D5CE4()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t sub_2529D5D78(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25294B954;

  return sub_2529D4C1C(a1, v4, v5, v6);
}

uint64_t sub_2529D5E2C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25294B958;

  return sub_252927C20(v2);
}

uint64_t type metadata accessor for RoomEntity(uint64_t a1)
{
  result = qword_27F541068;
  if (!qword_27F541068)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2529D5F64(uint64_t a1)
{
  v2 = sub_252E36454();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = swift_allocObject();
  v7 = qword_27F541050;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410C0, &qword_252E402E8);
  swift_allocObject();
  *(v6 + v7) = sub_252E36734();
  v8 = qword_27F541058;
  swift_allocObject();
  *(v6 + v8) = sub_252E36734();
  v9 = qword_27F541060;
  swift_allocObject();
  *(v6 + v9) = sub_252E36734();
  (*(v3 + 16))(v5, a1, v2);
  v10 = sub_252E364B4();
  (*(v3 + 8))(a1, v2);
  return v10;
}

uint64_t sub_2529D6110()
{
}

uint64_t sub_2529D6160()
{
  sub_252E364A4();

  return swift_deallocClassInstance();
}

uint64_t sub_2529D61EC()
{
  v0 = aComAppleHome[0];

  return v0;
}

uint64_t sub_2529D6240(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E40194);

  return MEMORY[0x28213DE00](a1, a2, WitnessTable);
}

uint64_t sub_2529D62A0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable(aE4, a1);

  return MEMORY[0x28213DB58](a1, WitnessTable);
}

uint64_t sub_2529D62F4(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable(byte_252E40194);

  return MEMORY[0x28213DDE8](a1, a2, WitnessTable);
}

uint64_t sub_2529D64F4(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for RoomEntity(255);
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529D6550(unint64_t a1)
{
  i = a1;
  v2 = *(a1 + 16);
  v3 = v2 + 1;
  v4 = 344;
  v5 = MEMORY[0x277D84F90];
  while (--v3)
  {
    v6 = *(a1 + v4);
    if (v6 != 2)
    {
      v4 += 504;
      if ((v6 & 1) == 0)
      {
        continue;
      }
    }

    if (qword_27F53F520 != -1)
    {
LABEL_22:
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544E08);
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_252E379F4();

    __dst[0] = 0xD00000000000002CLL;
    __dst[1] = 0x8000000252E6FF20;
    v8 = MEMORY[0x2530AD730](i, &type metadata for HomeAutomationIntent);
    MEMORY[0x2530AD570](v8);

    sub_252CC3D90(__dst[0], __dst[1], 0xD000000000000097, 0x8000000252E6FF50);

    v9 = 0;
    v10 = i + 32;
    v5 = MEMORY[0x277D84F90];
    do
    {
      v11 = (v10 + 504 * v9);
      for (i = v9; ; ++i)
      {
        if (i >= v2)
        {
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }

        memcpy(__dst, v11, sizeof(__dst));
        v9 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }

        if (LOBYTE(__dst[39]) == 2 || (__dst[39] & 1) != 0)
        {
          break;
        }

        v11 += 504;
        if (v9 == v2)
        {
          return v5;
        }
      }

      sub_2529353AC(__dst, v16);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = v5;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_2529AA480(0, *(v5 + 16) + 1, 1);
        v5 = v18;
      }

      v14 = *(v5 + 16);
      v13 = *(v5 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_2529AA480((v13 > 1), v14 + 1, 1);
        v5 = v18;
      }

      *(v5 + 16) = v14 + 1;
      memcpy((v5 + 504 * v14 + 32), __dst, 0x1F8uLL);
    }

    while (v9 != v2);
    return v5;
  }

  return v5;
}

void sub_2529D679C()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_252E378C4();
LABEL_4:

  if (!v4)
  {
    return;
  }

  v5 = [v0 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (!(v7 >> 62))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_7:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_21:

      return;
    }
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_21;
  }

LABEL_8:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 outerDeviceName];
    if (v13)
    {
      v14 = v13;

      return;
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

void sub_2529D6968()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_252E378C4();
LABEL_4:

  if (!v4)
  {
    return;
  }

  v5 = [v0 filters];
  if (v5)
  {
    v6 = v5;
    type metadata accessor for HomeFilter();
    v7 = sub_252E37264();

    if (!(v7 >> 62))
    {
      goto LABEL_7;
    }
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_7:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_8;
      }

LABEL_24:

      return;
    }
  }

  v8 = sub_252E378C4();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_8:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x2530ADF00](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 homeEntityName];
    if (v13)
    {

      v14 = [v11 entityType];
      if (v14 == 7)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }

    ++v9;
    if (v12 == v8)
    {
      goto LABEL_24;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

uint64_t sub_2529D6B60()
{
  v1 = [v0 filters];
  if (v1)
  {
    v2 = v1;
    type metadata accessor for HomeFilter();
    v3 = sub_252E37264();

    if (!(v3 >> 62))
    {
LABEL_3:
      v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_4;
    }
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_3;
    }
  }

  v4 = sub_252E378C4();
LABEL_4:

  if (v4)
  {
    v5 = [v0 filters];
    if (v5)
    {
      v6 = v5;
      type metadata accessor for HomeFilter();
      v7 = sub_252E37264();
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    if (v7 >> 62)
    {
LABEL_27:
      v8 = sub_252E378C4();
    }

    else
    {
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v9 = 0;
    do
    {
      v4 = v8 != v9;
      if (v8 == v9)
      {
        break;
      }

      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x2530ADF00](v9, v7);
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_26;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      if (__OFADD__(v9, 1))
      {
        __break(1u);
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      if ([v10 deviceType])
      {

        break;
      }

      v12 = [v11 outerDeviceType];

      ++v9;
    }

    while (!v12);
  }

  return v4;
}

uint64_t sub_2529D6D3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1 == 0xD000000000000017 && 0x8000000252E70090 == a2;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x52545F4D52414C41;
    v8 = 0xEF44455245474749;
LABEL_7:
    v9 = sub_25299CB2C(v7, v8);
    v10 = type metadata accessor for HomeAutomationSecuritySystemResponses();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v9;
    a3[3] = v10;
    *a3 = result;
    return result;
  }

  if (a1 == 0x65526D7261736964 && a2 == 0xEF7365736E6F7073 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x4D5241534944;
    v8 = 0xE600000000000000;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x8000000252E700B0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x4D52415F59415741;
LABEL_16:
    v8 = 0xE800000000000000;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000011 && 0x8000000252E700D0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x52415F544847494ELL;
    v8 = 0xE90000000000004DLL;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000010 && 0x8000000252E700F0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 0x4D52415F59415453;
    goto LABEL_16;
  }

  return sub_252C86824(a1, a2, a3);
}

id static HomeStore.shared.getter(uint64_t a1)
{
  sub_252D806C0(a1);
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  sub_252D7ED58(0x726F7453656D6F48, 0xE900000000000065, sub_2529DE544, v2, 15);

  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  if (qword_2814B0E30)
  {
    v3 = qword_2814B0E30;
  }

  else
  {
    v4 = [objc_allocWithZone(type metadata accessor for HomeStore(0)) init];
    v5 = qword_2814B0E30;
    qword_2814B0E30 = v4;
    v3 = v4;
  }

  sub_252E37614();
  return v3;
}

unint64_t sub_2529D70FC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v32)
          {
            goto LABEL_43;
          }

          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_2529E6488(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240, MEMORY[0x277D83988]);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v18 = sub_2529FBE00(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for Service(0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          if (v32 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
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
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7470(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&unk_27F5413C0, &qword_27F5413B8, &unk_252E404C0, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413B8, &unk_252E404C0);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7804(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject actionSets];
      sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&qword_27F541380, &qword_27F541378, &qword_252E404A0, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541378, &qword_252E404A0);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7B98(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject serviceGroups];
      sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&qword_27F5413A0, &qword_27F541398, &qword_252E404B0, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541398, &qword_252E404B0);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D7F2C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject rooms];
      sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&qword_27F5413B0, &qword_27F5413A8, &qword_252E404B8, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413A8, &qword_252E404B8);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D82C0(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject triggers];
      sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_252E378C4();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_2529E6488(&qword_27F541370, &qword_27F541368, &qword_252E40498, MEMORY[0x277D83988]);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541368, &qword_252E40498);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529D8654(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_bridgeObject = v26)
  {
    v4 = 0;
    v32 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v28 = isUniquelyReferenced_nonNull_bridgeObject;
    v30 = i;
    v31 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v33)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v4, v28);
      }

      else
      {
        if (v4 >= *(v32 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v31 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v36 = isUniquelyReferenced_nonNull_bridgeObject;
      sub_2529DF758(&v36, &v35);
      if (v2)
      {
        goto LABEL_40;
      }

      v8 = v35;
      v6 = (v35 >> 62);
      if (v35 >> 62)
      {
        v9 = sub_252E378C4();
      }

      else
      {
        v9 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v5 >> 62;
      if (v5 >> 62)
      {
        v25 = sub_252E378C4();
        v12 = v25 + v9;
        if (__OFADD__(v25, v9))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v11 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = v11 + v9;
        if (__OFADD__(v11, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          v13 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_252E378C4();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v6)
      {
        v17 = v13;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v13 = v17;
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v16)
      {
        if (((v15 >> 1) - v14) < v9)
        {
          goto LABEL_44;
        }

        v18 = v13 + 8 * v14 + 32;
        v29 = v13;
        if (v6)
        {
          if (v16 < 1)
          {
            goto LABEL_46;
          }

          sub_2529E6488(&unk_27F541350, &qword_27F541348, &unk_252E40488, MEMORY[0x277D83988]);
          for (j = 0; j != v16; ++j)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541348, &unk_252E40488);
            v20 = sub_2529FBE00(v34, j, v8);
            v22 = *v21;

            (v20)(v34, 0);
            *(v18 + 8 * j) = v22;
          }
        }

        else
        {
          type metadata accessor for MatterAccessory(0);
          swift_arrayInitWithCopy();
        }

        v2 = 0;
        if (v9 >= 1)
        {
          v23 = *(v29 + 16);
          v7 = __OFADD__(v23, v9);
          v24 = v23 + v9;
          if (v7)
          {
            goto LABEL_45;
          }

          *(v29 + 16) = v24;
        }
      }

      else
      {

        if (v9 > 0)
        {
          goto LABEL_43;
        }
      }

      if (v4 == v30)
      {
        return v5;
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
LABEL_47:
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    i = sub_252E378C4();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_2529D89C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2529E6204(a3, v25 - v10);
  v12 = sub_252E37344();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2529E6274(v11);
  }

  else
  {
    sub_252E37334();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_252E37324();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_252E36FD4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_2529E6274(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_2529E6274(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

dispatch_semaphore_t sub_2529D8C84()
{
  result = dispatch_semaphore_create(1);
  qword_2814B1370 = result;
  return result;
}

uint64_t sub_2529D8CA8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
  os_unfair_lock_lock(v5 + 4);
  v6 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];

  v9 = v8;
  [v9 lock];
  [v9 unlock];

  if (*(v7 + 16) && (v10 = sub_252A44A10(a1, a2), (v11 & 1) != 0))
  {
    v12 = *(*(v7 + 56) + 8 * v10);
  }

  else
  {
    v12 = 0;
  }

  os_unfair_lock_unlock(v5 + 4);
  return v12;
}

void *sub_2529D8D90()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager);
  v2 = v1;
  return v1;
}

uint64_t sub_2529D8DC0()
{
  v33 = sub_252E32E84();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager) homes];
  sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
  v5 = sub_252E37264();

  v34 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    v31 = v5 & 0xFFFFFFFFFFFFFF8;
    v32 = v5 & 0xC000000000000001;
    v28 = v1 + 4;
    v29 = i;
    v30 = v5;
    while (1)
    {
      if (v32)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v31 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v1 = v8;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for Home(0);
      v10 = swift_allocObject();
      *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v1;
      v11 = v1;
      v12 = [v11 uniqueIdentifier];
      v13 = v3;
      sub_252E32E64();

      v14 = [v11 name];
      v15 = sub_252E36F34();
      v17 = v16;

      v18 = [v11 assistantIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_252E36F34();
        v1 = v21;
      }

      else
      {

        v20 = 0;
        v1 = 0;
      }

      v3 = v13;
      v22 = (*v28)(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v13, v33);
      v23 = (v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v23 = v15;
      v23[1] = v17;
      *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
      v24 = (v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v24 = v20;
      v24[1] = v1;
      MEMORY[0x2530AD700](v22);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      v5 = v30;
      if (v9 == v29)
      {
        v25 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_20:

  return v25;
}

unint64_t sub_2529D9114()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager);
  v2 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  os_unfair_lock_lock(v2 + 4);
  sub_2529E445C(&v42);
  os_unfair_lock_unlock(v2 + 4);
  result = v42;
  if (v42)
  {
    return result;
  }

  if (qword_2814B0A98 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v4 = sub_252E36AD4();
    v5 = __swift_project_value_buffer(v4, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000015, 0x8000000252E70140, 0xD00000000000006FLL, 0x8000000252E70160);
    v6 = [objc_opt_self() siriCurrentHome];
    v7 = [v6 currentHomeIdentifier];

    if (v7)
    {
      v41 = sub_252E36F34();
      v9 = v8;
    }

    else
    {
      v41 = 0;
      v9 = 0;
    }

    v40 = v1;
    v10 = [v1 homes];
    sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
    v11 = sub_252E37264();

    if (v11 >> 62)
    {
      break;
    }

    v12 = v11;
    v1 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v1)
    {
      goto LABEL_33;
    }

LABEL_8:
    v37 = "Computing currentHome";
    v38 = v5;
    v39 = v2;
    v13 = 0;
    v14 = v12;
    v15 = v12 & 0xC000000000000001;
    while (1)
    {
      if (v15)
      {
        v16 = MEMORY[0x2530ADF00](v13, v14);
      }

      else
      {
        if (v13 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_30;
        }

        v16 = *(v14 + 8 * v13 + 32);
      }

      v17 = v16;
      v18 = (v13 + 1);
      if (__OFADD__(v13, 1))
      {
        break;
      }

      v19 = [v16 assistantIdentifier];
      if (v19)
      {
        v20 = v19;
        v21 = sub_252E36F34();
        v2 = v22;

        if (v9)
        {
          if (v21 == v41 && v9 == v2)
          {

LABEL_27:

LABEL_28:
            v42 = 0;
            v43 = 0xE000000000000000;
            sub_252E379F4();

            v42 = 0xD000000000000016;
            v43 = 0x8000000252E70230;
            [v40 currentHome];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5410D0, &unk_252E403B0);
            v25 = sub_252E36F94();
            MEMORY[0x2530AD570](v25);

            MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E70250);
            v26 = v17;
            v27 = [v26 description];
            v28 = sub_252E36F34();
            v30 = v29;

            MEMORY[0x2530AD570](v28, v30);

            sub_252CC3D90(v42, v43, 0xD00000000000006FLL, 0x8000000252E70160);

            v32 = MEMORY[0x28223BE20](v31);
            MEMORY[0x28223BE20](v32);
            os_unfair_lock_lock(v39 + 4);
            sub_2529E6564(&v42);
            os_unfair_lock_unlock(v39 + 4);

            return v42;
          }

          v24 = sub_252E37DB4();

          if (v24)
          {
            goto LABEL_27;
          }
        }

        else
        {
        }
      }

      else if (!v9)
      {
        goto LABEL_28;
      }

      ++v13;
      if (v18 == v1)
      {

        v2 = v39;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
LABEL_31:
    swift_once();
  }

  v12 = v11;
  v1 = sub_252E378C4();
  if (v1)
  {
    goto LABEL_8;
  }

LABEL_33:

LABEL_34:

  v33 = [v40 currentHome];
  if (v33)
  {
    v34 = v33;
    sub_252CC3D90(0xD000000000000031, 0x8000000252E701F0, 0xD00000000000006FLL, 0x8000000252E70160);
    v36 = MEMORY[0x28223BE20](v35);
    MEMORY[0x28223BE20](v36);
    os_unfair_lock_lock(v2 + 4);
    sub_2529E6564(&v42);
    os_unfair_lock_unlock(v2 + 4);

    return v42;
  }

  else
  {
    sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E701D0, 0xD00000000000006FLL, 0x8000000252E70160);
    return 0;
  }
}

uint64_t sub_2529D96F0@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(result + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome);
  if (v3)
  {
    v4 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
    type metadata accessor for Home(0);
    swift_allocObject();

    v5 = sub_2529E65BC(v4);
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_2529D9788@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for Home(0);
  swift_allocObject();
  v6 = sub_2529E65BC(a2);
  *(a1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome) = v6;

  v7 = *(v6 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  swift_allocObject();
  v8 = sub_2529E65BC(v7);

  *a3 = v8;
  return result;
}

uint64_t sub_2529D98BC(uint64_t (*a1)(uint64_t), void (*a2)(void), void *a3, uint64_t a4)
{
  v44 = a3;
  v45 = a4;
  v43 = a2;
  v42 = sub_252E32E84();
  v5 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v46 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_2529D8DC0();
  v8 = v7;
  v47 = MEMORY[0x277D84F90];
  if (v7 >> 62)
  {
    goto LABEL_35;
  }

  v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v10 = MEMORY[0x277D84F90];
  if (v9)
  {
    v41 = v5;
    v11 = 0;
    v5 = v8 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v12 = MEMORY[0x2530ADF00](v11, v8);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_31;
        }
      }

      else
      {
        if (v11 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v12 = *(v8 + 8 * v11 + 32);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          v9 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v15);
      if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v40 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v11;
      if (v13 == v9)
      {
        v16 = v47;
        v5 = v41;
        v10 = MEMORY[0x277D84F90];
        goto LABEL_16;
      }
    }
  }

  v16 = MEMORY[0x277D84F90];
LABEL_16:

  v17 = a1(v16);

  v47 = v10;
  if (v17 >> 62)
  {
    v8 = sub_252E378C4();
    if (v8)
    {
LABEL_18:
      v18 = 0;
      v40 = v17 & 0xFFFFFFFFFFFFFF8;
      v41 = v17 & 0xC000000000000001;
      v38 = (v5 + 32);
      v39 = v17;
      while (1)
      {
        if (v41)
        {
          v19 = MEMORY[0x2530ADF00](v18, v17);
        }

        else
        {
          if (v18 >= *(v40 + 16))
          {
            goto LABEL_34;
          }

          v19 = *(v17 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          goto LABEL_33;
        }

        v43(0);
        v22 = swift_allocObject();
        *(v22 + *v44) = v20;
        v23 = v20;
        v24 = [v23 uniqueIdentifier];
        sub_252E32E64();

        v25 = [v23 name];
        v26 = sub_252E36F34();
        v28 = v27;

        v29 = [v23 assistantIdentifier];
        if (v29)
        {
          a1 = v29;
          v5 = sub_252E36F34();
          v31 = v30;
        }

        else
        {

          v5 = 0;
          v31 = 0;
        }

        v32 = (*v38)(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v46, v42);
        v33 = (v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v33 = v26;
        v33[1] = v28;
        *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = v45;
        v34 = (v22 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v34 = v5;
        v34[1] = v31;
        MEMORY[0x2530AD700](v32);
        if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v18;
        v17 = v39;
        if (v21 == v8)
        {
          v35 = v47;
          goto LABEL_38;
        }
      }
    }
  }

  else
  {
    v8 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      goto LABEL_18;
    }
  }

  v35 = MEMORY[0x277D84F90];
LABEL_38:

  return v35;
}

uint64_t sub_2529D9D50()
{
  v0 = sub_2529D8DC0();
  v1 = v0;
  v39 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_49;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_46;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v8);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v4;
      if (v6 == v2)
      {
        v9 = v39;
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  v1 = sub_25291B664(v9);

  v40 = v3;
  if (v1 >> 62)
  {
    v10 = sub_252E378C4();
    if (v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
LABEL_18:
      v11 = 0;
      v12 = v1 & 0xC000000000000001;
      v13 = v1 & 0xFFFFFFFFFFFFFF8;
      v38 = ". Returning .robotVacuumCleaner";
      while (1)
      {
        if (v12)
        {
          v14 = MEMORY[0x2530ADF00](v11, v1);
        }

        else
        {
          if (v11 >= *(v13 + 16))
          {
            goto LABEL_48;
          }

          v14 = *(v1 + 8 * v11 + 32);
        }

        v15 = v14;
        v16 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_47;
        }

        v17 = [v14 matterNodeID];
        if (!v17)
        {
          goto LABEL_31;
        }

        v18 = [v15 matterNodeID];
        if (v18)
        {
          v19 = v18;
          v20 = [v18 unsignedLongLongValue];

          if (!v20)
          {
            goto LABEL_31;
          }
        }

        v21 = sub_252E37434();
        v23 = v22;
        if (v21 == sub_252E36F34() && v23 == v24)
        {
        }

        else
        {
          v25 = sub_252E37DB4();

          if ((v25 & 1) == 0)
          {
            goto LABEL_31;
          }
        }

        if (([v15 isBridged] & 1) == 0)
        {
          type metadata accessor for MatterAccessory(0);
          v27 = swift_allocObject();
          v28 = [v15 matterNodeID];
          if (v28)
          {
            v29 = v28;
            v30 = [v28 unsignedLongLongValue];

            *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v30;
            if (!v30)
            {
LABEL_40:
              if (qword_27F53F4B0 != -1)
              {
                swift_once();
              }

              v31 = sub_252E36AD4();
              __swift_project_value_buffer(v31, qword_27F544CB8);
              sub_252E379F4();

              v39 = 0xD000000000000018;
              v32 = [v15 name];
              v33 = sub_252E36F34();
              v35 = v34;

              MEMORY[0x2530AD570](v33, v35);

              MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
              sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, v38 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 19);

              v12 = v1 & 0xC000000000000001;
              v13 = v1 & 0xFFFFFFFFFFFFFF8;
            }

            v26 = v15;
            goto LABEL_32;
          }

          *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
          goto LABEL_40;
        }

LABEL_31:
        type metadata accessor for Accessory(0);
        swift_allocObject();
        v26 = v15;
LABEL_32:
        sub_252D4CE7C(v26);
        MEMORY[0x2530AD700]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
          v13 = v1 & 0xFFFFFFFFFFFFFF8;
        }

        sub_252E372D4();
        ++v11;
        if (v16 == v10)
        {
          v36 = v40;
          goto LABEL_52;
        }
      }
    }
  }

  v36 = MEMORY[0x277D84F90];
LABEL_52:

  return v36;
}

uint64_t sub_2529DA2BC()
{
  v0 = sub_2529D8DC0();
  v1 = v0;
  v39 = MEMORY[0x277D84F90];
  if (v0 >> 62)
  {
    goto LABEL_51;
  }

  v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = MEMORY[0x277D84F90];
  if (v2)
  {
    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x2530ADF00](v4, v1);
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_48;
        }

        v5 = *(v1 + 8 * v4 + 32);

        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_47:
          __break(1u);
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          v2 = sub_252E378C4();
          goto LABEL_3;
        }
      }

      v7 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v8);
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v4;
      if (v6 == v2)
      {
        v9 = v39;
        goto LABEL_16;
      }
    }
  }

  v9 = MEMORY[0x277D84F90];
LABEL_16:

  v1 = sub_25291B664(v9);

  if (v1 >> 62)
  {
    v10 = sub_252E378C4();
    if (v10)
    {
LABEL_18:
      v11 = 0;
      v37 = ". Returning .robotVacuumCleaner";
      v12 = MEMORY[0x277D84F90];
      v13 = &off_279711000;
LABEL_19:
      v38 = v12;
      v14 = v11;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x2530ADF00](v14, v1);
        }

        else
        {
          if (v14 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_50;
          }

          v15 = *(v1 + 8 * v14 + 32);
        }

        v16 = v15;
        v11 = v14 + 1;
        if (__OFADD__(v14, 1))
        {
          goto LABEL_49;
        }

        v17 = [v15 v13[297]];
        if (v17)
        {

          v18 = [v16 v13[297]];
          if (!v18 || (v19 = v18, v20 = [v18 unsignedLongLongValue], v19, v20))
          {
            v21 = v13;
            v22 = sub_252E37434();
            v24 = v23;
            if (v22 == sub_252E36F34() && v24 == v25)
            {

              v13 = v21;
            }

            else
            {
              v26 = sub_252E37DB4();

              v13 = v21;
              if ((v26 & 1) == 0)
              {
                goto LABEL_22;
              }
            }

            if (([v16 isBridged] & 1) == 0)
            {
              type metadata accessor for MatterAccessory(0);
              v27 = swift_allocObject();
              v28 = [v16 v13 + 82];
              if (v28)
              {
                v29 = v28;
                v30 = [v28 unsignedLongLongValue];

                *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v30;
                if (!v30)
                {
LABEL_39:
                  if (qword_27F53F4B0 != -1)
                  {
                    swift_once();
                  }

                  v31 = sub_252E36AD4();
                  __swift_project_value_buffer(v31, qword_27F544CB8);
                  sub_252E379F4();

                  v39 = 0xD000000000000018;
                  v32 = [v16 name];
                  v33 = sub_252E36F34();
                  v35 = v34;

                  MEMORY[0x2530AD570](v33, v35);

                  MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
                  sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, v37 | 0x8000000000000000, 0x293A5F2874696E69, 0xE800000000000000, 19);

                  v13 = v21;
                }

                sub_252D4CE7C(v16);
                MEMORY[0x2530AD700]();
                if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_252E372A4();
                }

                sub_252E372D4();
                v12 = v3;
                if (v11 != v10)
                {
                  goto LABEL_19;
                }

                goto LABEL_54;
              }

              *(v27 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
              goto LABEL_39;
            }
          }
        }

LABEL_22:

        ++v14;
        if (v11 == v10)
        {
          v12 = v38;
          goto LABEL_54;
        }
      }
    }
  }

  else
  {
    v10 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10)
    {
      goto LABEL_18;
    }
  }

  v12 = MEMORY[0x277D84F90];
LABEL_54:

  return v12;
}

unint64_t sub_2529DA860()
{
  v0 = sub_2529D9D50();
  v1 = sub_2529D70FC(v0);

  return v1;
}

uint64_t sub_2529DA8E4()
{
  v18 = MEMORY[0x277D84F90];
  v0 = sub_2529D8DC0();
  if (v0 >> 62)
  {
    type metadata accessor for Entity(0);
    v1 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v1 = v0;
  }

  sub_25297B290(v1);
  v2 = sub_2529D984C();
  if (v2 >> 62)
  {
    type metadata accessor for Entity(0);
    v3 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v3 = v2;
  }

  sub_25297B290(v3);
  v4 = sub_2529D9884();
  if (v4 >> 62)
  {
    type metadata accessor for Entity(0);
    v5 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v5 = v4;
  }

  sub_25297B290(v5);
  v6 = sub_2529D9D18();
  if (v6 >> 62)
  {
    type metadata accessor for Entity(0);
    v7 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v7 = v6;
  }

  sub_25297B290(v7);
  v8 = sub_2529DA828();
  if (v8 >> 62)
  {
    type metadata accessor for Entity(0);
    v9 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v9 = v8;
  }

  sub_25297B290(v9);
  v10 = sub_2529D9D50();
  if (v10 >> 62)
  {
    type metadata accessor for Entity(0);
    v11 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v11 = v10;
  }

  sub_25297B290(v11);
  v12 = sub_2529D9D50();
  v13 = sub_2529D70FC(v12);

  if (v13 >> 62)
  {
    type metadata accessor for Entity(0);

    v14 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v14 = v13;
  }

  sub_25297B290(v14);
  v15 = sub_2529DA8AC();
  if (v15 >> 62)
  {
    type metadata accessor for Entity(0);
    v16 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v16 = v15;
  }

  sub_25297B290(v16);
  return v18;
}

uint64_t sub_2529DACA8()
{
  v1 = v0;
  v374 = sub_252E36DF4();
  v373 = *(v374 - 8);
  MEMORY[0x28223BE20](v374);
  v372 = &v365 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = sub_252E36E04();
  v377 = *(v378 - 8);
  MEMORY[0x28223BE20](v378);
  v376 = &v365 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v405 = sub_252E32E84();
  v4 = *(v405 - 8);
  MEMORY[0x28223BE20](v405);
  v404 = &v365 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F53F528 != -1)
  {
    goto LABEL_355;
  }

LABEL_2:
  v6 = sub_252E36AD4();
  v7 = __swift_project_value_buffer(v6, qword_27F544E20);
  v381 = "Computing currentHome";
  v382 = v7;
  sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E70770, 0xD00000000000006FLL, 0x8000000252E70160);
  v8 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedStableHomeGraphHash);
  swift_beginAccess();
  v10 = *v8;
  v9 = v8[1];
  v375 = v8;
  v11 = v8[2];

  v12 = v11;
  [v12 lock];
  [v12 unlock];

  v393 = v1;
  if (v9)
  {
    v13 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid);
    swift_beginAccess();
    v14 = *v13;
    v15 = v13[1];
    [v15 lock];
    [v15 unlock];

    if (v14 == 1)
    {
      sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E707B0, 0xD00000000000006FLL, v381 | 0x8000000000000000);
      return v10;
    }
  }

  v410 = 0;
  v411 = 0xE000000000000000;
  v16 = sub_2529D8DC0();
  v17 = v16;
  v408 = MEMORY[0x277D84F90];
  if (!(v16 >> 62))
  {
    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_8;
  }

LABEL_357:
  v18 = sub_252E378C4();
LABEL_8:
  if (v18)
  {
    v19 = 0;
    v1 = v17 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        v20 = MEMORY[0x2530ADF00](v19, v17);
        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_333;
        }
      }

      else
      {
        if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_334;
        }

        v20 = *(v17 + 8 * v19 + 32);

        v21 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          goto LABEL_333;
        }
      }

      v22 = *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

      MEMORY[0x2530AD700](v23);
      if (*((v408 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v408 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v403 = *((v408 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v19;
    }

    while (v21 != v18);
  }

  v408 = sub_252ACB588(v24);
  v17 = 0;
  sub_2529E3010(&v408, sub_252935460, &qword_2814B0210, 0x277CD1A60);

  v25 = v408;
  if ((v408 & 0x8000000000000000) == 0 && (v408 & 0x4000000000000000) == 0)
  {
    v26 = *(v408 + 16);
    if (!v26)
    {
      goto LABEL_359;
    }

LABEL_23:
    v27 = 0;
    v28 = v25 & 0xC000000000000001;
    v369 = v25 + 32;
    v403 = (v4 + 8);
    v368 = v25;
    v367 = v26;
    v366 = v25 & 0xC000000000000001;
    while (1)
    {
      if (v28)
      {
        v29 = v27;
        v30 = MEMORY[0x2530ADF00](v27, v25);
      }

      else
      {
        if (v27 >= *(v25 + 16))
        {
          goto LABEL_364;
        }

        v29 = v27;
        v30 = *(v369 + 8 * v27);
      }

      v384 = v30;
      v31 = __OFADD__(v29, 1);
      v32 = v29 + 1;
      if (v31)
      {
        __break(1u);
LABEL_363:
        __break(1u);
LABEL_364:
        __break(1u);
LABEL_365:
        __break(1u);
LABEL_366:
        __break(1u);
LABEL_367:
        __break(1u);
LABEL_368:
        __break(1u);
LABEL_369:
        __break(1u);
LABEL_370:
        __break(1u);
LABEL_371:
        for (i = v17; ; i = *(v168 - 32))
        {

          __break(1u);
LABEL_373:
          ;
        }
      }

      v370 = v32;
      v33 = v384;
      v34 = [v384 name];
      v35 = sub_252E36F34();
      v37 = v36;

      v38 = [v33 uniqueIdentifier];
      v39 = v404;
      sub_252E32E64();

      v1 = sub_252E32E24();
      v41 = v40;
      v402 = *v403;
      v402(v39, v405);
      v42 = [v33 assistantIdentifier];
      if (v42)
      {
        v43 = v42;
        v44 = sub_252E36F34();
        v46 = v45;
      }

      else
      {
        v44 = 0;
        v46 = 0xE000000000000000;
      }

      v408 = v35;
      v409 = v37;

      MEMORY[0x2530AD570](v1, v41);

      MEMORY[0x2530AD570](v44, v46);

      MEMORY[0x2530AD570](v408, v409);

      v4 = [v384 rooms];
      v387 = sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      sub_252E37264();

      v408 = sub_252ACB55C(v47);
      sub_2529E3010(&v408, sub_252935460, &qword_2814B0200, 0x277CD1D88);

      v48 = v408;
      v380 = v408;

      v49 = *(v408 + 16);
      if (v49)
      {
        goto LABEL_35;
      }

LABEL_118:

      v147 = [v384 zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      sub_252E37264();

      v408 = sub_252ACB504(v148);
      sub_2529E3010(&v408, sub_252935460, &qword_2814B01E8, 0x277CD1F50);
      v397 = 0;

      v149 = v408;
      if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
      {
        v150 = sub_252E378C4();
        if (!v150)
        {
          goto LABEL_153;
        }

LABEL_121:
        v4 = 0;
        v395 = v149 & 0xC000000000000001;
        v391 = v149 + 32;
        v394 = v149;
        v392 = v150;
        while (2)
        {
          if (v395)
          {
            v151 = MEMORY[0x2530ADF00](v4, v149);
          }

          else
          {
            if (v4 >= *(v149 + 16))
            {
              goto LABEL_351;
            }

            v151 = *(v391 + 8 * v4);
          }

          v398 = v151;
          v31 = __OFADD__(v4++, 1);
          if (v31)
          {
            goto LABEL_337;
          }

          v396 = v4;
          v152 = v398;
          v153 = [v398 name];
          v154 = sub_252E36F34();
          v4 = v155;

          v156 = [v152 uniqueIdentifier];
          v157 = v404;
          sub_252E32E64();

          v158 = sub_252E32E24();
          v160 = v159;
          v402(v157, v405);
          v161 = [v152 assistantIdentifier];
          if (v161)
          {
            v162 = v161;
            v1 = sub_252E36F34();
            v164 = v163;
          }

          else
          {
            v1 = 0;
            v164 = 0xE000000000000000;
          }

          v408 = v154;
          v409 = v4;

          MEMORY[0x2530AD570](v158, v160);

          MEMORY[0x2530AD570](v1, v164);

          MEMORY[0x2530AD570](v408, v409);

          v165 = [v398 rooms];
          v166 = sub_252E37264();

          if (v166 >> 62)
          {
            v187 = sub_252E378C4();
            if (v187)
            {
              v188 = v187;
              v17 = sub_252E11384();

              sub_252E06104(v17 + 32, v188, v166);
              v4 = v189;

              if (v4 != v188)
              {
                goto LABEL_367;
              }
            }

            else
            {
              v17 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v17 = v166 & 0xFFFFFFFFFFFFFF8;
          }

          v408 = v17;
          v167 = v397;
          sub_2529E3010(&v408, sub_252935460, &qword_2814B0200, 0x277CD1D88);
          v168 = &v412;
          v397 = v167;
          if (v167)
          {
            goto LABEL_373;
          }

          v169 = v408;
          if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
          {
            v190 = v408;
            v170 = sub_252E378C4();
            v169 = v190;
            if (v170)
            {
LABEL_137:
              if (v170 < 1)
              {
                goto LABEL_346;
              }

              v171 = 0;
              v399 = (v169 & 0xC000000000000001);
              v401 = v169;
              v400 = v170;
              do
              {
                if (v399)
                {
                  v176 = MEMORY[0x2530ADF00](v171);
                }

                else
                {
                  v176 = *(v169 + 8 * v171 + 32);
                }

                v177 = v176;
                v178 = [v176 name];
                v1 = sub_252E36F34();
                v180 = v179;

                v181 = [v177 uniqueIdentifier];
                v182 = v404;
                sub_252E32E64();

                v183 = sub_252E32E24();
                v185 = v184;
                v402(v182, v405);
                v186 = [v177 assistantIdentifier];
                if (v186)
                {
                  v172 = v186;
                  v173 = sub_252E36F34();
                  v175 = v174;
                }

                else
                {
                  v173 = 0;
                  v175 = 0xE000000000000000;
                }

                ++v171;
                v408 = v1;
                v409 = v180;

                MEMORY[0x2530AD570](v183, v185);

                MEMORY[0x2530AD570](v173, v175);

                MEMORY[0x2530AD570](v408, v409);

                v169 = v401;
              }

              while (v400 != v171);
            }
          }

          else
          {
            v170 = *(v408 + 16);
            if (v170)
            {
              goto LABEL_137;
            }
          }

          v4 = v396;
          v149 = v394;
          if (v396 == v392)
          {
            goto LABEL_153;
          }

          continue;
        }
      }

      v150 = *(v408 + 16);
      if (v150)
      {
        goto LABEL_121;
      }

LABEL_153:

      v191 = sub_2529D9D18();
      v4 = v191;
      v408 = MEMORY[0x277D84F90];
      if (v191 >> 62)
      {
        v192 = sub_252E378C4();
        if (v192)
        {
LABEL_155:
          v193 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v194 = MEMORY[0x2530ADF00](v193, v4);
              v1 = v193 + 1;
              if (__OFADD__(v193, 1))
              {
                goto LABEL_338;
              }
            }

            else
            {
              if (v193 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_339;
              }

              v194 = *(v4 + 8 * v193 + 32);

              v1 = v193 + 1;
              if (__OFADD__(v193, 1))
              {
                goto LABEL_338;
              }
            }

            v195 = *(v194 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate);

            MEMORY[0x2530AD700](v196);
            if (*((v408 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v408 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v193;
          }

          while (v1 != v192);
        }
      }

      else
      {
        v192 = *((v191 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v192)
        {
          goto LABEL_155;
        }
      }

      v408 = sub_252ACB4D8(v197);
      v198 = v397;
      sub_2529E3010(&v408, sub_252935460, &unk_2814B0248, 0x277CD1D98);
      v168 = &v412;
      v397 = v198;
      if (v198)
      {
        goto LABEL_373;
      }

      v199 = v408;
      if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
      {
        v200 = sub_252E378C4();
        if (!v200)
        {
          goto LABEL_203;
        }

LABEL_171:
        v4 = 0;
        v395 = v199 & 0xC000000000000001;
        v391 = v199 + 32;
        v394 = v199;
        v392 = v200;
        while (2)
        {
          if (v395)
          {
            v201 = MEMORY[0x2530ADF00](v4, v199);
          }

          else
          {
            if (v4 >= *(v199 + 16))
            {
              goto LABEL_352;
            }

            v201 = *(v391 + 8 * v4);
          }

          v398 = v201;
          v31 = __OFADD__(v4++, 1);
          if (v31)
          {
            goto LABEL_340;
          }

          v396 = v4;
          v202 = v398;
          v203 = [v398 name];
          v204 = sub_252E36F34();
          v4 = v205;

          v206 = [v202 uniqueIdentifier];
          v207 = v404;
          sub_252E32E64();

          v208 = sub_252E32E24();
          v210 = v209;
          v402(v207, v405);
          v211 = [v202 assistantIdentifier];
          if (v211)
          {
            v212 = v211;
            v1 = sub_252E36F34();
            v214 = v213;
          }

          else
          {
            v1 = 0;
            v214 = 0xE000000000000000;
          }

          v408 = v204;
          v409 = v4;

          MEMORY[0x2530AD570](v208, v210);

          MEMORY[0x2530AD570](v1, v214);

          MEMORY[0x2530AD570](v408, v409);

          v215 = [v398 services];
          sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
          v216 = sub_252E37264();

          if (v216 >> 62)
          {
            v236 = sub_252E378C4();
            if (v236)
            {
              v237 = v236;
              v17 = sub_252E11384();

              sub_252E07104(v17 + 32, v237, v216);
              v4 = v238;

              if (v4 != v237)
              {
                goto LABEL_368;
              }
            }

            else
            {
              v17 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v17 = v216 & 0xFFFFFFFFFFFFFF8;
          }

          v408 = v17;
          v217 = v397;
          sub_2529E3010(&v408, sub_252935460, &qword_27F540478, 0x277CD1D90);
          v168 = &v412;
          v397 = v217;
          if (v217)
          {
            goto LABEL_373;
          }

          v218 = v408;
          if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
          {
            v239 = v408;
            v219 = sub_252E378C4();
            v218 = v239;
            if (v219)
            {
LABEL_187:
              if (v219 < 1)
              {
                goto LABEL_347;
              }

              v220 = 0;
              v399 = (v218 & 0xC000000000000001);
              v401 = v218;
              v400 = v219;
              do
              {
                if (v399)
                {
                  v223 = MEMORY[0x2530ADF00](v220);
                }

                else
                {
                  v223 = *(v218 + 8 * v220 + 32);
                }

                v224 = v223;
                v225 = [v223 name];
                v1 = sub_252E36F34();
                v227 = v226;

                v228 = [v224 uniqueIdentifier];
                v229 = v404;
                sub_252E32E64();

                v230 = sub_252E32E24();
                v232 = v231;
                v402(v229, v405);
                v233 = [v224 assistantIdentifier];
                if (v233)
                {
                  v234 = v233;
                  v221 = sub_252E36F34();
                  v222 = v235;
                }

                else
                {
                  v221 = 0;
                  v222 = 0xE000000000000000;
                }

                ++v220;
                v408 = v1;
                v409 = v227;

                MEMORY[0x2530AD570](v230, v232);

                MEMORY[0x2530AD570](v221, v222);

                MEMORY[0x2530AD570](v408, v409);

                v218 = v401;
              }

              while (v400 != v220);
            }
          }

          else
          {
            v219 = *(v408 + 16);
            if (v219)
            {
              goto LABEL_187;
            }
          }

          v4 = v396;
          v199 = v394;
          if (v396 == v392)
          {
            goto LABEL_203;
          }

          continue;
        }
      }

      v200 = *(v408 + 16);
      if (v200)
      {
        goto LABEL_171;
      }

LABEL_203:

      v240 = sub_2529DA828();
      v4 = v240;
      v408 = MEMORY[0x277D84F90];
      if (v240 >> 62)
      {
        v241 = sub_252E378C4();
        if (v241)
        {
LABEL_205:
          v242 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v243 = MEMORY[0x2530ADF00](v242, v4);
              v1 = v242 + 1;
              if (__OFADD__(v242, 1))
              {
                goto LABEL_341;
              }
            }

            else
            {
              if (v242 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_342;
              }

              v243 = *(v4 + 8 * v242 + 32);

              v1 = v242 + 1;
              if (__OFADD__(v242, 1))
              {
                goto LABEL_341;
              }
            }

            v244 = *(v243 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate);

            MEMORY[0x2530AD700](v245);
            if (*((v408 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v408 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v242;
          }

          while (v1 != v241);
        }
      }

      else
      {
        v241 = *((v240 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v241)
        {
          goto LABEL_205;
        }
      }

      v408 = sub_252ACB4AC(v246);
      v17 = v397;
      sub_2529E3010(&v408, sub_252935460, &unk_2814B0260, 0x277CD1800);
      if (v17)
      {
        goto LABEL_371;
      }

      v247 = v408;
      if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
      {
        v4 = sub_252E378C4();
        if (!v4)
        {
          goto LABEL_252;
        }

LABEL_221:
        v1 = 0;
        v400 = v247 & 0xC000000000000001;
        v397 = v247 + 32;
        v399 = v247;
        v398 = v4;
        while (2)
        {
          if (v400)
          {
            v248 = MEMORY[0x2530ADF00](v1, v247);
          }

          else
          {
            if (v1 >= *(v247 + 16))
            {
              goto LABEL_353;
            }

            v248 = *(v397 + 8 * v1);
          }

          v401 = v248;
          v31 = __OFADD__(v1++, 1);
          if (v31)
          {
            goto LABEL_343;
          }

          v249 = v401;
          v250 = [v401 name];
          v251 = sub_252E36F34();
          v253 = v252;

          v254 = [v249 uniqueIdentifier];
          v255 = v404;
          sub_252E32E64();

          v256 = sub_252E32E24();
          v258 = v257;
          v402(v255, v405);
          v259 = [v249 assistantIdentifier];
          if (v259)
          {
            v260 = v259;
            v261 = sub_252E36F34();
            v263 = v262;
          }

          else
          {
            v261 = 0;
            v263 = 0xE000000000000000;
          }

          v408 = v251;
          v409 = v253;

          MEMORY[0x2530AD570](v256, v258);

          MEMORY[0x2530AD570](v261, v263);

          MEMORY[0x2530AD570](v408, v409);

          v264 = [v401 actions];
          sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
          sub_2529E6100();
          v265 = sub_252E373A4();

          if ((v265 & 0xC000000000000001) != 0)
          {
            v266 = sub_252E378C4();
          }

          else
          {
            v266 = *(v265 + 16);
          }

          v4 = MEMORY[0x277D84F90];
          if (v266)
          {
            if (v266 >= 1)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
              v4 = swift_allocObject();
              v267 = _swift_stdlib_malloc_size(v4);
              v268 = v267 - 32;
              if (v267 < 32)
              {
                v268 = v267 - 25;
              }

              *(v4 + 16) = v266;
              *(v4 + 24) = (2 * (v268 >> 3)) | 1;
            }

            v269 = sub_252E08894(&v408, (v4 + 32), v266, v265);
            sub_25291AE30(v408);
            if (v269 != v266)
            {
              goto LABEL_348;
            }
          }

          v408 = v4;
          sub_2529E3010(&v408, sub_252935460, &qword_27F5412F0, 0x277CD17F8);

          v270 = v408;
          if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
          {
            v271 = sub_252E378C4();
            if (v271)
            {
LABEL_243:
              if (v271 < 1)
              {
                goto LABEL_349;
              }

              v272 = 0;
              do
              {
                if ((v270 & 0xC000000000000001) != 0)
                {
                  v273 = MEMORY[0x2530ADF00](v272, v270);
                }

                else
                {
                  v273 = *(v270 + 8 * v272 + 32);
                }

                v274 = v273;
                ++v272;
                v275 = [v273 uniqueIdentifier];
                v276 = v404;
                sub_252E32E64();

                v277 = sub_252E32E24();
                v279 = v278;
                v402(v276, v405);
                MEMORY[0x2530AD570](v277, v279);
              }

              while (v271 != v272);
            }
          }

          else
          {
            v271 = *(v408 + 16);
            if (v271)
            {
              goto LABEL_243;
            }
          }

          v4 = v398;
          v247 = v399;
          if (v1 == v398)
          {
            goto LABEL_252;
          }

          continue;
        }
      }

      v4 = *(v408 + 16);
      if (v4)
      {
        goto LABEL_221;
      }

LABEL_252:

      v280 = sub_2529DA8AC();
      v4 = v280;
      v408 = MEMORY[0x277D84F90];
      if (v280 >> 62)
      {
        v281 = sub_252E378C4();
        if (v281)
        {
LABEL_254:
          v282 = 0;
          v1 = v4 & 0xFFFFFFFFFFFFFF8;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v283 = MEMORY[0x2530ADF00](v282, v4);
              v284 = v282 + 1;
              if (__OFADD__(v282, 1))
              {
                goto LABEL_344;
              }
            }

            else
            {
              if (v282 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_345;
              }

              v283 = *(v4 + 8 * v282 + 32);

              v284 = v282 + 1;
              if (__OFADD__(v282, 1))
              {
                goto LABEL_344;
              }
            }

            v285 = *(v283 + OBJC_IVAR____TtC22HomeAutomationInternal7Trigger_delegate);

            MEMORY[0x2530AD700](v286);
            if (*((v408 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v408 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v282;
          }

          while (v284 != v281);
        }
      }

      else
      {
        v281 = *((v280 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v281)
        {
          goto LABEL_254;
        }
      }

      v408 = sub_252ACB480(v287);
      sub_2529E3010(&v408, sub_252935460, &qword_27F541320, 0x277CD1EC0);

      v288 = v408;
      if ((v408 & 0x8000000000000000) == 0 && (v408 & 0x4000000000000000) == 0)
      {
        v289 = *(v408 + 16);
        if (v289)
        {
          goto LABEL_269;
        }

        goto LABEL_323;
      }

      v289 = sub_252E378C4();
      if (v289)
      {
LABEL_269:
        v4 = 0;
        v394 = (v288 & 0xC000000000000001);
        v390 = v288 + 32;
        v392 = v288;
        v391 = v289;
        do
        {
          if (v394)
          {
            v290 = MEMORY[0x2530ADF00](v4, v288);
            v31 = __OFADD__(v4++, 1);
            if (v31)
            {
              goto LABEL_350;
            }
          }

          else
          {
            if (v4 >= *(v288 + 16))
            {
              __break(1u);
              goto LABEL_357;
            }

            v290 = *(v390 + 8 * v4);
            v31 = __OFADD__(v4++, 1);
            if (v31)
            {
              goto LABEL_350;
            }
          }

          v395 = v4;
          v291 = v290;
          v292 = [v290 name];
          v293 = sub_252E36F34();
          v295 = v294;

          v296 = [v291 uniqueIdentifier];
          v297 = v404;
          sub_252E32E64();

          v1 = sub_252E32E24();
          v299 = v298;
          v402(v297, v405);
          v396 = v291;
          v300 = [v291 assistantIdentifier];
          if (v300)
          {
            v301 = v300;
            v302 = sub_252E36F34();
            v304 = v303;
          }

          else
          {
            v302 = 0;
            v304 = 0xE000000000000000;
          }

          v408 = v293;
          v409 = v295;

          MEMORY[0x2530AD570](v1, v299);

          MEMORY[0x2530AD570](v302, v304);

          MEMORY[0x2530AD570](v408, v409);

          v305 = [v396 actionSets];
          sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
          v306 = sub_252E37264();

          if (v306 >> 62)
          {
            v339 = sub_252E378C4();
            if (v339)
            {
              v340 = v339;
              v4 = sub_252E11384();

              sub_252E05DC4(v4 + 32, v340, v306);
              v342 = v341;

              if (v342 != v340)
              {
                goto LABEL_369;
              }
            }

            else
            {
              v4 = MEMORY[0x277D84F90];
            }
          }

          else
          {
            v4 = v306 & 0xFFFFFFFFFFFFFF8;
          }

          v408 = v4;
          sub_2529E3010(&v408, sub_252935460, &unk_2814B0260, 0x277CD1800);

          v307 = v408;
          if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
          {
            v308 = sub_252E378C4();
            if (!v308)
            {
              goto LABEL_270;
            }

LABEL_285:
            v309 = 0;
            v400 = v307 & 0xC000000000000001;
            v397 = v307 + 32;
            v399 = v307;
            v398 = v308;
            while (2)
            {
              if (v400)
              {
                v310 = MEMORY[0x2530ADF00](v309, v307);
                v31 = __OFADD__(v309++, 1);
                if (v31)
                {
                  goto LABEL_328;
                }
              }

              else
              {
                if (v309 >= *(v307 + 16))
                {
                  goto LABEL_331;
                }

                v310 = *(v397 + 8 * v309);
                v31 = __OFADD__(v309++, 1);
                if (v31)
                {
                  goto LABEL_328;
                }
              }

              v311 = v310;
              v312 = [v310 name];
              v313 = sub_252E36F34();
              v315 = v314;

              v316 = [v311 uniqueIdentifier];
              v317 = v404;
              sub_252E32E64();

              v318 = sub_252E32E24();
              v320 = v319;
              v402(v317, v405);
              v401 = v311;
              v321 = [v311 assistantIdentifier];
              if (v321)
              {
                v322 = v321;
                v1 = sub_252E36F34();
                v324 = v323;
              }

              else
              {
                v1 = 0;
                v324 = 0xE000000000000000;
              }

              v408 = v313;
              v409 = v315;

              MEMORY[0x2530AD570](v318, v320);

              MEMORY[0x2530AD570](v1, v324);

              MEMORY[0x2530AD570](v408, v409);

              v325 = [v401 actions];
              sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
              sub_2529E6100();
              v326 = sub_252E373A4();

              if ((v326 & 0xC000000000000001) != 0)
              {
                v4 = sub_252E378C4();
              }

              else
              {
                v4 = *(v326 + 16);
              }

              v327 = MEMORY[0x277D84F90];
              if (v4)
              {
                if (v4 >= 1)
                {
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
                  v327 = swift_allocObject();
                  v328 = _swift_stdlib_malloc_size(v327);
                  v329 = v328 - 32;
                  if (v328 < 32)
                  {
                    v329 = v328 - 25;
                  }

                  *(v327 + 16) = v4;
                  *(v327 + 24) = (2 * (v329 >> 3)) | 1;
                }

                v330 = sub_252E08894(&v408, (v327 + 32), v4, v326);
                sub_25291AE30(v408);
                if (v330 != v4)
                {
                  goto LABEL_329;
                }
              }

              v408 = v327;
              sub_2529E3010(&v408, sub_252935460, &qword_27F5412F0, 0x277CD17F8);

              v331 = v408;
              if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
              {
                v332 = sub_252E378C4();
                if (v332)
                {
LABEL_308:
                  if (v332 < 1)
                  {
                    goto LABEL_330;
                  }

                  v4 = 0;
                  do
                  {
                    if ((v331 & 0xC000000000000001) != 0)
                    {
                      v333 = MEMORY[0x2530ADF00](v4, v331);
                    }

                    else
                    {
                      v333 = *(v331 + 8 * v4 + 32);
                    }

                    v334 = v333;
                    ++v4;
                    v335 = [v333 uniqueIdentifier];
                    v336 = v404;
                    sub_252E32E64();

                    v337 = sub_252E32E24();
                    v1 = v338;
                    v402(v336, v405);
                    MEMORY[0x2530AD570](v337, v1);
                  }

                  while (v332 != v4);
                }
              }

              else
              {
                v332 = *(v408 + 16);
                if (v332)
                {
                  goto LABEL_308;
                }
              }

              v307 = v399;
              if (v309 == v398)
              {
                goto LABEL_270;
              }

              continue;
            }
          }

          v308 = *(v408 + 16);
          if (v308)
          {
            goto LABEL_285;
          }

LABEL_270:

          v4 = v395;
          v288 = v392;
        }

        while (v395 != v391);
      }

LABEL_323:

      v27 = v370;
      v25 = v368;
      v28 = v366;
      if (v370 == v367)
      {

        v343 = v410;
        v344 = v411;
        goto LABEL_360;
      }
    }

    v49 = sub_252E378C4();
    v48 = v380;
    if (!v49)
    {
      goto LABEL_118;
    }

LABEL_35:
    v50 = 0;
    v383 = v48 & 0xC000000000000001;
    v371 = v48 + 32;
    v379 = v49;
    while (1)
    {
      if (v383)
      {
        v51 = v50;
        v52 = MEMORY[0x2530ADF00](v50, v48);
      }

      else
      {
        if (v50 >= *(v48 + 16))
        {
          goto LABEL_363;
        }

        v51 = v50;
        v52 = *(v371 + 8 * v50);
      }

      v386 = v52;
      v31 = __OFADD__(v51, 1);
      v53 = v51 + 1;
      if (v31)
      {
        goto LABEL_354;
      }

      v385 = v53;
      v54 = v386;
      v55 = [v386 name];
      v56 = sub_252E36F34();
      v58 = v57;

      v59 = [v54 uniqueIdentifier];
      v60 = v404;
      sub_252E32E64();

      v1 = sub_252E32E24();
      v62 = v61;
      v402(v60, v405);
      v63 = [v54 assistantIdentifier];
      if (v63)
      {
        v64 = v63;
        v65 = sub_252E36F34();
        v67 = v66;
      }

      else
      {
        v65 = 0;
        v67 = 0xE000000000000000;
      }

      v408 = v56;
      v409 = v58;

      MEMORY[0x2530AD570](v1, v62);

      MEMORY[0x2530AD570](v65, v67);

      MEMORY[0x2530AD570](v408, v409);

      v68 = [v386 accessories];
      sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
      v69 = sub_252E37264();

      if (v69 >> 62)
      {
        v143 = sub_252E378C4();
        if (v143)
        {
          v144 = v143;
          v70 = sub_252E11384();

          sub_252E04DF4(v70 + 32, v144, v69);
          v146 = v145;

          if (v146 != v144)
          {
            goto LABEL_370;
          }
        }

        else
        {
          v70 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v70 = v69 & 0xFFFFFFFFFFFFFF8;
      }

      v408 = v70;
      sub_2529E3010(&v408, sub_252935460, &qword_2814B0270, 0x277CD1650);

      v71 = v408;

      v4 = *(v408 + 16);
      if (v4)
      {
        goto LABEL_50;
      }

LABEL_36:

      v50 = v385;
      v48 = v380;
      if (v385 == v379)
      {
        goto LABEL_118;
      }
    }

    v4 = sub_252E378C4();
    if (!v4)
    {
      goto LABEL_36;
    }

LABEL_50:
    v72 = 0;
    v391 = v71 & 0xC000000000000001;
    v388 = v71 + 32;
    v390 = v71;
    v389 = v4;
    while (1)
    {
      if (v391)
      {
        v73 = MEMORY[0x2530ADF00](v72, v71);
      }

      else
      {
        if (v72 >= *(v71 + 16))
        {
          goto LABEL_336;
        }

        v73 = *(v388 + 8 * v72);
      }

      v394 = v73;
      v31 = __OFADD__(v72, 1);
      v74 = (v72 + 1);
      if (v31)
      {
        goto LABEL_332;
      }

      v392 = v74;
      v75 = v394;
      v76 = [v394 name];
      v77 = sub_252E36F34();
      v79 = v78;

      v80 = [v75 uniqueIdentifier];
      v81 = v404;
      sub_252E32E64();

      v1 = sub_252E32E24();
      v83 = v82;
      v402(v81, v405);
      v84 = [v75 assistantIdentifier];
      if (v84)
      {
        v85 = v84;
        v86 = sub_252E36F34();
        v88 = v87;
      }

      else
      {
        v86 = 0;
        v88 = 0xE000000000000000;
      }

      v408 = v77;
      v409 = v79;

      MEMORY[0x2530AD570](v1, v83);

      MEMORY[0x2530AD570](v86, v88);

      MEMORY[0x2530AD570](v408, v409);

      v89 = [v394 services];
      sub_25293F638(0, &qword_27F540478, 0x277CD1D90);
      v90 = sub_252E37264();

      if (v90 >> 62)
      {
        v124 = sub_252E378C4();
        if (v124)
        {
          v125 = v124;
          v91 = sub_252E11384();

          sub_252E07104(v91 + 32, v125, v90);
          v127 = v126;

          if (v127 != v125)
          {
            goto LABEL_365;
          }
        }

        else
        {
          v91 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v91 = v90 & 0xFFFFFFFFFFFFFF8;
      }

      v408 = v91;
      sub_2529E3010(&v408, sub_252935460, &qword_27F540478, 0x277CD1D90);

      v92 = v408;

      v93 = *(v408 + 16);
      if (v93)
      {
        goto LABEL_65;
      }

LABEL_92:

      v128 = [v394 profiles];
      sub_25293F638(0, &qword_27F540170, 0x277CD1760);
      v129 = sub_252E37264();

      if (v129 >> 62)
      {
        v139 = sub_252E378C4();
        if (v139)
        {
          v140 = v139;
          v130 = sub_252E11384();

          sub_252E06DC4(v130 + 32, v140, v129);
          v142 = v141;

          if (v142 != v140)
          {
            goto LABEL_366;
          }
        }

        else
        {
          v130 = MEMORY[0x277D84F90];
        }
      }

      else
      {
        v130 = v129 & 0xFFFFFFFFFFFFFF8;
      }

      v408 = v130;
      sub_2529E3010(&v408, sub_252935460, &qword_27F540170, 0x277CD1760);
      if (v17)
      {
        goto LABEL_371;
      }

      v4 = v408;
      if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
      {
        v131 = sub_252E378C4();
        if (v131)
        {
LABEL_98:
          if (v131 < 1)
          {
            goto LABEL_335;
          }

          v132 = 0;
          do
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v133 = MEMORY[0x2530ADF00](v132, v4);
            }

            else
            {
              v133 = *(v4 + 8 * v132 + 32);
            }

            v134 = v133;
            ++v132;
            v135 = [v133 uniqueIdentifier];
            v136 = v404;
            sub_252E32E64();

            v137 = sub_252E32E24();
            v1 = v138;
            v402(v136, v405);
            MEMORY[0x2530AD570](v137, v1);
          }

          while (v131 != v132);
        }
      }

      else
      {
        v131 = *(v408 + 16);
        if (v131)
        {
          goto LABEL_98;
        }
      }

      v4 = v389;
      v72 = v392;
      v71 = v390;
      if (v392 == v389)
      {
        goto LABEL_36;
      }
    }

    v93 = sub_252E378C4();
    if (!v93)
    {
      goto LABEL_92;
    }

LABEL_65:
    v4 = 0;
    v398 = (v92 & 0xC000000000000001);
    v395 = v92 + 32;
    v397 = v92;
    v396 = v93;
    while (1)
    {
      if (v398)
      {
        v94 = MEMORY[0x2530ADF00](v4, v92);
        v31 = __OFADD__(v4++, 1);
        if (v31)
        {
          goto LABEL_325;
        }
      }

      else
      {
        if (v4 >= *(v92 + 16))
        {
          goto LABEL_327;
        }

        v94 = *(v395 + 8 * v4);
        v31 = __OFADD__(v4++, 1);
        if (v31)
        {
LABEL_325:
          __break(1u);
LABEL_326:
          __break(1u);
LABEL_327:
          __break(1u);
LABEL_328:
          __break(1u);
LABEL_329:
          __break(1u);
LABEL_330:
          __break(1u);
LABEL_331:
          __break(1u);
LABEL_332:
          __break(1u);
LABEL_333:
          __break(1u);
LABEL_334:
          __break(1u);
LABEL_335:
          __break(1u);
LABEL_336:
          __break(1u);
LABEL_337:
          __break(1u);
LABEL_338:
          __break(1u);
LABEL_339:
          __break(1u);
LABEL_340:
          __break(1u);
LABEL_341:
          __break(1u);
LABEL_342:
          __break(1u);
LABEL_343:
          __break(1u);
LABEL_344:
          __break(1u);
LABEL_345:
          __break(1u);
LABEL_346:
          __break(1u);
LABEL_347:
          __break(1u);
LABEL_348:
          __break(1u);
LABEL_349:
          __break(1u);
LABEL_350:
          __break(1u);
LABEL_351:
          __break(1u);
LABEL_352:
          __break(1u);
LABEL_353:
          __break(1u);
LABEL_354:
          __break(1u);
LABEL_355:
          swift_once();
          goto LABEL_2;
        }
      }

      v399 = v4;
      v95 = v94;
      v96 = [v94 name];
      v97 = sub_252E36F34();
      v99 = v98;

      v100 = [v95 uniqueIdentifier];
      v101 = v404;
      sub_252E32E64();

      v102 = sub_252E32E24();
      v104 = v103;
      v402(v101, v405);
      v401 = v95;
      v105 = [v95 assistantIdentifier];
      if (v105)
      {
        v106 = v105;
        v107 = sub_252E36F34();
        v109 = v108;
      }

      else
      {
        v107 = 0;
        v109 = 0xE000000000000000;
      }

      v408 = v97;
      v409 = v99;

      MEMORY[0x2530AD570](v102, v104);

      MEMORY[0x2530AD570](v107, v109);

      MEMORY[0x2530AD570](v408, v409);

      v4 = [v401 characteristics];
      sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
      sub_252E37264();

      v408 = sub_252ACB530(v110);
      sub_2529E3010(&v408, sub_252935460, &qword_27F5412E0, 0x277CD1970);
      if (v17)
      {
        goto LABEL_371;
      }

      v111 = v408;
      v400 = 0;
      if (v408 < 0 || (v408 & 0x4000000000000000) != 0)
      {
        v1 = sub_252E378C4();
        if (!v1)
        {
          goto LABEL_66;
        }
      }

      else
      {
        v1 = *(v408 + 16);
        if (!v1)
        {
          goto LABEL_66;
        }
      }

      if (v1 < 1)
      {
        goto LABEL_326;
      }

      v112 = 0;
      do
      {
        if ((v111 & 0xC000000000000001) != 0)
        {
          v113 = MEMORY[0x2530ADF00](v112, v111);
        }

        else
        {
          v113 = *(v111 + 8 * v112 + 32);
        }

        v114 = v113;
        ++v112;
        v115 = [v113 uniqueIdentifier];
        v116 = v404;
        sub_252E32E64();

        v117 = sub_252E32E24();
        v119 = v118;
        v402(v116, v405);
        v120 = [v114 characteristicType];
        v121 = sub_252E36F34();
        v123 = v122;

        v408 = v117;
        v409 = v119;

        MEMORY[0x2530AD570](v121, v123);

        MEMORY[0x2530AD570](v408, v409);
      }

      while (v1 != v112);
LABEL_66:

      v4 = v399;
      v17 = v400;
      v92 = v397;
      if (v399 == v396)
      {
        goto LABEL_92;
      }
    }
  }

  v345 = v408;
  v26 = sub_252E378C4();
  v25 = v345;
  if (v26)
  {
    goto LABEL_23;
  }

LABEL_359:

  v343 = 0;
  v344 = 0xE000000000000000;
LABEL_360:
  v346 = sub_252ABF638(v343, v344);
  v348 = v347;
  sub_2529E6168(&qword_27F5412F8, MEMORY[0x277CC5588], MEMORY[0x277CC5580]);
  v349 = v372;
  v350 = v374;
  sub_252E36DE4();
  sub_2529E61B0(v346, v348);
  sub_252D7BB0C(v346, v348, v349);
  sub_25296464C(v346, v348);
  v351 = v376;
  sub_252E36DD4();
  (*(v373 + 8))(v349, v350);
  v408 = sub_2529DDFB0(v351);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
  sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
  v10 = sub_252E36EA4();
  v353 = v352;

  v354 = v393 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v355 = *(v354 + 8);

  [v355 lock];
  *v354 = 1;
  [v355 unlock];
  swift_endAccess();
  v356 = v375;
  swift_beginAccess();
  v357 = v356[2];
  [v357 lock];
  *v356 = v10;
  v356[1] = v353;

  [v357 unlock];
  swift_endAccess();
  v408 = 0;
  v409 = 0xE000000000000000;
  sub_252E379F4();

  v408 = 0xD000000000000015;
  v409 = 0x8000000252E70790;
  v359 = *v356;
  v358 = v356[1];
  v360 = v356[2];

  v361 = v360;
  [v361 lock];
  [v361 unlock];

  v406 = v359;
  v407 = v358;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
  v362 = sub_252E36F94();
  MEMORY[0x2530AD570](v362);

  sub_252CC3D90(v408, v409, 0xD00000000000006FLL, v381 | 0x8000000000000000);

  sub_25296464C(v346, v348);
  (*(v377 + 8))(v351, v378);
  return v10;
}

uint64_t sub_2529DDDE4(id *a1, void **a2)
{
  v4 = sub_252E32E84();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v24 - v9;
  v11 = *a2;
  v12 = [*a1 uniqueIdentifier];
  sub_252E32E64();

  v13 = sub_252E32E24();
  v15 = v14;
  v16 = *(v5 + 8);
  v16(v10, v4);
  v17 = [v11 uniqueIdentifier];
  sub_252E32E64();

  v18 = sub_252E32E24();
  v20 = v19;
  v16(v8, v4);
  if (v13 == v18 && v15 == v20)
  {
    v22 = 0;
  }

  else
  {
    v22 = sub_252E37DB4();
  }

  return v22 & 1;
}

void *sub_2529DDFB0(uint64_t a1)
{
  v2 = sub_252E36E04();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2529E6168(&unk_27F541310, MEMORY[0x277CC55B0], MEMORY[0x277CC55B8]);
  v6 = sub_252E371B4();
  v34 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v6 & ~(v6 >> 63), 0);
  v7 = v34;
  (*(v3 + 16))(v5, a1, v2);
  result = sub_252E371A4();
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = v33;
    if (v6)
    {
      v10 = v32;
      *&v31 = *(v32 + 16);
      v30 = xmmword_252E3C290;
      v11 = v33;
      while (v31 != v11)
      {
        if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_21;
        }

        if (v11 >= *(v10 + 16))
        {
          goto LABEL_22;
        }

        v12 = *(v10 + 32 + v11);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v13 = swift_allocObject();
        *(v13 + 16) = v30;
        *(v13 + 56) = MEMORY[0x277D84B78];
        *(v13 + 64) = MEMORY[0x277D84BC0];
        *(v13 + 32) = v12;
        result = sub_252E36F64();
        v34 = v7;
        v16 = *(v7 + 16);
        v15 = *(v7 + 24);
        if (v16 >= v15 >> 1)
        {
          v29 = result;
          v18 = v14;
          sub_2529AA3A0((v15 > 1), v16 + 1, 1);
          v14 = v18;
          result = v29;
          v7 = v34;
        }

        *(v7 + 16) = v16 + 1;
        v17 = v7 + 16 * v16;
        *(v17 + 32) = result;
        *(v17 + 40) = v14;
        ++v11;
        if (!--v6)
        {
          v33 = v11;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
    }

    else
    {
      v11 = v33;
LABEL_12:
      v19 = v32;
      v20 = *(v32 + 16);
      if (v11 == v20)
      {
LABEL_13:

        return v7;
      }

      v31 = xmmword_252E3C290;
      while (v11 < v20)
      {
        v21 = *(v19 + 32 + v11);
        v33 = v11 + 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540750, &unk_252E5C020);
        v22 = swift_allocObject();
        *(v22 + 16) = v31;
        *(v22 + 56) = MEMORY[0x277D84B78];
        *(v22 + 64) = MEMORY[0x277D84BC0];
        *(v22 + 32) = v21;
        result = sub_252E36F64();
        v34 = v7;
        v25 = *(v7 + 16);
        v24 = *(v7 + 24);
        if (v25 >= v24 >> 1)
        {
          v27 = result;
          v28 = v23;
          sub_2529AA3A0((v24 > 1), v25 + 1, 1);
          v23 = v28;
          result = v27;
          v7 = v34;
        }

        *(v7 + 16) = v25 + 1;
        v26 = v7 + 16 * v25;
        *(v26 + 32) = result;
        *(v26 + 40) = v23;
        v20 = *(v19 + 16);
        v11 = v33;
        if (v33 == v20)
        {
          goto LABEL_13;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2529DE350()
{
  if (qword_2814B0A30 != -1)
  {
    swift_once();
  }

  v0 = qword_2814B0A38;
  v1 = sub_252E374C4();
  result = os_log_type_enabled(v0, v1);
  if (result)
  {
    if (qword_2814B09D0 != -1)
    {
      swift_once();
    }

    v3 = sub_252E36AD4();
    __swift_project_value_buffer(v3, qword_2814B09D8);
    sub_252CC3D90(0xD000000000000021, 0x8000000252E70270, 0xD00000000000006FLL, 0x8000000252E70160);
    result = sub_2529D8DC0();
    v4 = result;
    if (result >> 62)
    {
      result = sub_252E378C4();
      v5 = result;
      if (result)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v5 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v5)
      {
LABEL_8:
        if (v5 < 1)
        {
          __break(1u);
          return result;
        }

        v6 = 0;
        do
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            MEMORY[0x2530ADF00](v6, v4);
          }

          else
          {
          }

          ++v6;
          v7 = sub_2529E8734();
          sub_252CC3D90(v7, v8, 0xD00000000000006FLL, 0x8000000252E70160);
        }

        while (v5 != v6);
      }
    }
  }

  return result;
}

char *sub_2529DE548()
{
  v1 = v0;
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults];
  v7 = MEMORY[0x277D84F90];
  v8 = sub_252CC4788(MEMORY[0x277D84F90]);
  v9 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v6 = v8;
  v6[1] = v9;
  v10 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541328, &qword_252E40460);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *&v1[v10] = v11;
  v12 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  v13 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v12 = 1;
  *(v12 + 1) = v13;
  v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded] = 2;
  v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted] = 2;
  v14 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger] = 0;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_homeManagerInitTimeout] = 0x4014000000000000;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHome] = 0;
  v15 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *&v1[v15] = v16;
  v17 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedStableHomeGraphHash];
  v18 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v17 = 0;
  v17[1] = 0;
  v17[2] = v18;
  v19 = &v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  v20 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  *v19 = 0;
  *(v19 + 1) = v20;
  if (qword_2814B0A30 != -1)
  {
    swift_once();
  }

  v21 = qword_2814B0A38;
  sub_252E36A94();
  sub_252E375D4();
  sub_252E36A84();
  (*(v3 + 32))(&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSignpostID], v5, v2);
  type metadata accessor for SELFPerformanceLogger();
  swift_allocObject();
  *&v1[v14] = sub_252D2D190(206, 0x6E776F6E6B6E75, 0xE700000000000000);

  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadWaitSemaphores] = v7;
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshWaitSemaphores] = v7;
  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v22 = sub_252E36AD4();
  __swift_project_value_buffer(v22, qword_2814B0AA0);
  sub_252CC3D90(0xD000000000000018, 0x8000000252E707F0, 0xD00000000000006FLL, 0x8000000252E70160);
  v23 = [objc_allocWithZone(MEMORY[0x277CCABD8]) init];
  v24 = sub_252E36F04();
  [v23 setName_];

  [v23 setMaxConcurrentOperationCount_];
  [v23 setQualityOfService_];
  v25 = [objc_allocWithZone(MEMORY[0x277CD1C60]) initWithOptions:34397 cachePolicy:1];
  [v25 setDelegateQueue_];
  v26 = [objc_allocWithZone(MEMORY[0x277CD1A90]) initWithConfiguration_];
  *&v1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager] = v26;
  v27 = type metadata accessor for HomeStore(0);
  v37.receiver = v1;
  v37.super_class = v27;
  v28 = objc_msgSendSuper2(&v37, sel_init);
  v29 = *&v28[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager];
  v30 = v28;
  [v29 setDelegate_];
  v31 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock;
  os_unfair_lock_lock((*&v30[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock] + 16));
  v32 = sub_252CC4788(MEMORY[0x277D84F90]);
  v33 = &v30[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults];
  swift_beginAccess();
  v34 = v33[1];
  [v34 lock];
  *v33 = v32;

  [v34 unlock];
  swift_endAccess();
  os_unfair_lock_unlock((*&v30[v31] + 16));

  return v30;
}

uint64_t sub_2529DEAE8(unint64_t a1)
{
  v2 = v1;
  v4 = sub_252E32E04();
  v79 = *(v4 - 1);
  v5 = MEMORY[0x28223BE20](v4);
  v75 = &v75 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v76 = &v75 - v7;
  j = sub_252E36AB4();
  v9 = *(j - 8);
  v10 = MEMORY[0x28223BE20](j);
  v78 = &v75 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v75 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  MEMORY[0x28223BE20](v14 - 8);
  v86 = &v75 - v15;
  if (qword_2814B0A98 != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v16 = sub_252E36AD4();
    v17 = __swift_project_value_buffer(v16, qword_2814B0AA0);
    aBlock = 0;
    v95 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E702A0);
    v84 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded;
    LOBYTE(v100[0]) = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5410E8, &qword_252E403C0);
    v18 = sub_252E36F94();
    MEMORY[0x2530AD570](v18);

    sub_252CC3D90(aBlock, v95, 0xD00000000000006FLL, 0x8000000252E70160);

    v87 = a1;
    v19 = [a1 homes];
    v20 = sub_25293F638(0, &qword_2814B0210, 0x277CD1A60);
    v21 = sub_252E37264();

    v92 = v21;
    v88 = "Computing currentHome";
    v89 = v17;
    v82 = v9;
    v83 = j;
    v81 = v13;
    v80 = v4;
    v85 = v20;
    if (!(v21 >> 62))
    {
      v22 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        break;
      }

      goto LABEL_4;
    }

    v22 = sub_252E378C4();
    if (!v22)
    {
      break;
    }

LABEL_4:
    a1 = 0;
    v93 = v92 & 0xC000000000000001;
    v90 = v92 + 32;
    v91 = v92 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v93)
      {
        v23 = MEMORY[0x2530ADF00](a1, v92);
      }

      else
      {
        if (a1 >= *(v91 + 16))
        {
          goto LABEL_33;
        }

        v23 = *(v90 + 8 * a1);
      }

      v9 = v23;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      [v23 setDelegate_];
      j = [v9 accessories];
      sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
      v25 = sub_252E37264();

      if (v25 >> 62)
      {
        v13 = sub_252E378C4();
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v13 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_20;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_31;
      }

      for (i = 0; i != v13; ++i)
      {
        if ((v25 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x2530ADF00](i, v25);
        }

        else
        {
          v27 = *(v25 + 8 * i + 32);
        }

        v4 = v27;
        [v27 setDelegate_];
      }

LABEL_20:

      j = [v9 mediaSystems];
      sub_25293F638(0, &qword_2814B0258, 0x277CD1BE8);
      v28 = sub_252E37264();

      if (v28 >> 62)
      {
        v13 = sub_252E378C4();
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v13)
        {
          goto LABEL_5;
        }
      }

      if (v13 < 1)
      {
        goto LABEL_32;
      }

      for (j = 0; j != v13; ++j)
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v29 = MEMORY[0x2530ADF00](j, v28);
        }

        else
        {
          v29 = *(v28 + 8 * j + 32);
        }

        v4 = v29;
        [v29 setDelegate_];
      }

LABEL_5:

      if (a1 == v22)
      {
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    swift_once();
  }

LABEL_36:

  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v30 = *(v2 + v84);
  if (v30 == 2)
  {
    v31 = v84;
    sub_252CC3D90(0xD00000000000001DLL, 0x8000000252E702E0, 0xD00000000000006FLL, v88 | 0x8000000000000000);
    *(v2 + v31) = 1;
    v32 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
    swift_beginAccess();
    v33 = *(v32 + 8);
    [v33 lock];
    *v32 = 1;
    [v33 unlock];
    swift_endAccess();
    v34 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
    swift_beginAccess();
    v35 = *(v34 + 8);
    [v35 lock];
    *v34 = 0;
    [v35 unlock];
    v36 = swift_endAccess();
    v37 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
    v38 = MEMORY[0x28223BE20](v36);
    *(&v75 - 2) = v2;
    MEMORY[0x28223BE20](v38);
    *(&v75 - 2) = sub_2529E64D0;
    *(&v75 - 1) = v39;
    os_unfair_lock_lock(v37 + 4);
    sub_2529E4858();
    os_unfair_lock_unlock(v37 + 4);
  }

  v40 = v87;
  sub_252E37614();
  v41 = [v40 homes];
  v42 = sub_252E37264();

  v43 = sub_2529D8654(v42);

  v44 = type metadata accessor for MatterAccessoryManager();
  v45 = sub_252E37344();
  v46 = v86;
  (*(*(v45 - 8) + 56))(v86, 1, 1, v45);
  v47 = swift_allocObject();
  v47[2] = 0;
  v47[3] = 0;
  v47[4] = v44;
  v47[5] = v43;
  sub_2529D89C4(0, 0, v46, &unk_252E49130, v47);

  if (v30 != 2)
  {
    goto LABEL_43;
  }

  if (qword_2814B0A30 != -1)
  {
    goto LABEL_68;
  }

  while (2)
  {
    v48 = qword_2814B0A38;
    v49 = v81;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v50 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__homeManager);
    v51 = v75;
    sub_252E32DF4();
    v52 = v76;
    sub_252E32D54();
    v53 = *(v79 + 8);
    v54 = v80;
    v53(v51, v80);
    v55 = sub_252E32D64();
    v53(v52, v54);
    v57 = v82;
    v56 = v83;
    v58 = v78;
    v82[2](v78, v49, v83);
    v59 = (*(v57 + 80) + 24) & ~*(v57 + 80);
    v60 = swift_allocObject();
    *(v60 + 16) = v2;
    (v57)[4]((v60 + v59), v58, v56);
    v98 = sub_2529E4880;
    v99 = v60;
    aBlock = MEMORY[0x277D85DD0];
    v95 = 1107296256;
    v96 = sub_2529E0210;
    v97 = &block_descriptor_3;
    v61 = _Block_copy(&aBlock);
    v62 = v2;

    v63 = [v50 _refreshBeforeDate_completionHandler_];
    _Block_release(v61);
    swift_unknownObjectRelease();

    (v57[1])(v49, v56);
LABEL_43:
    v100[0] = MEMORY[0x277D84F90];
    sub_252E37604();
    v64 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadWaitSemaphores;
    swift_beginAccess();
    v65 = *(v2 + v64);
    if (v65 >> 62)
    {
      v2 = sub_252E378C4();
      if (!v2)
      {
        goto LABEL_55;
      }

LABEL_45:
      if (v2 >= 1)
      {

        for (k = 0; k != v2; ++k)
        {
          if ((v65 & 0xC000000000000001) != 0)
          {
            v67 = MEMORY[0x2530ADF00](k, v65);
          }

          else
          {
            v67 = *(v65 + 8 * k + 32);
          }

          v68 = v67;
          MEMORY[0x2530AD700]();
          if (*((v100[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v100[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
        }

        v2 = v100[0];

        goto LABEL_56;
      }

      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      swift_once();
      continue;
    }

    break;
  }

  v2 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    goto LABEL_45;
  }

LABEL_55:
  v2 = MEMORY[0x277D84F90];
LABEL_56:
  sub_252E37614();
  if (v2 >> 62)
  {
    v69 = sub_252E378C4();
    v70 = v88;
    if (!v69)
    {
    }
  }

  else
  {
    v69 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v70 = v88;
    if (!v69)
    {
    }
  }

  if (v69 < 1)
  {
    goto LABEL_67;
  }

  v71 = 0;
  do
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v72 = MEMORY[0x2530ADF00](v71, v2);
    }

    else
    {
      v72 = *(v2 + 8 * v71 + 32);
    }

    v73 = v72;
    ++v71;
    sub_252CC3D90(0xD000000000000030, 0x8000000252E70300, 0xD00000000000006FLL, v70 | 0x8000000000000000);
    sub_252E37614();
  }

  while (v69 != v71);
}

uint64_t sub_2529DF758@<X0>(id *a1@<X0>, unint64_t a2@<X8>)
{
  v3 = v2;
  v5 = [*a1 accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v6 = sub_252E37264();

  v36 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_34:
    v35 = v6 & 0xFFFFFFFFFFFFFF8;
    v7 = sub_252E378C4();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_35:
    v34 = MEMORY[0x277D84F90];
    goto LABEL_36;
  }

  v35 = v6 & 0xFFFFFFFFFFFFFF8;
  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v7)
  {
    goto LABEL_35;
  }

LABEL_3:
  v8 = 0;
  v9 = v6 & 0xC000000000000001;
  v33 = v3;
  v34 = MEMORY[0x277D84F90];
  v32 = a2;
  do
  {
    a2 = v8;
    while (1)
    {
      if (v9)
      {
        v10 = MEMORY[0x2530ADF00](a2, v6);
      }

      else
      {
        if (a2 >= *(v35 + 16))
        {
          goto LABEL_33;
        }

        v10 = *(v6 + 8 * a2 + 32);
      }

      v11 = v10;
      v8 = a2 + 1;
      if (__OFADD__(a2, 1))
      {
        __break(1u);
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v12 = [v10 matterNodeID];
      if (v12)
      {

        v13 = [v11 matterNodeID];
        if (!v13 || (v14 = v13, v3 = [v13 unsignedLongLongValue], v14, v3))
        {
          v15 = v9;
          v16 = sub_252E37434();
          v18 = v17;
          v19 = sub_252E36F34();
          v3 = v20;
          if (v16 == v19 && v18 == v20)
          {

            v9 = v15;
          }

          else
          {
            v21 = sub_252E37DB4();

            v9 = v15;
            if ((v21 & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          if (([v11 isBridged] & 1) == 0)
          {
            break;
          }
        }
      }

LABEL_7:

      ++a2;
      if (v8 == v7)
      {
        a2 = v32;
        goto LABEL_36;
      }
    }

    type metadata accessor for MatterAccessory(0);
    v22 = swift_allocObject();
    v23 = [v11 matterNodeID];
    if (!v23)
    {
      *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
      goto LABEL_24;
    }

    v24 = v23;
    v25 = [v23 unsignedLongLongValue];

    *(v22 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v25;
    if (!v25)
    {
LABEL_24:
      if (qword_27F53F4B0 != -1)
      {
        swift_once();
      }

      v26 = sub_252E36AD4();
      __swift_project_value_buffer(v26, qword_27F544CB8);
      sub_252E379F4();

      v27 = [v11 name];
      v28 = sub_252E36F34();
      v30 = v29;

      MEMORY[0x2530AD570](v28, v30);

      MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
      sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

      v9 = v15;
    }

    sub_252D4CE7C(v11);
    MEMORY[0x2530AD700]();
    if (*((v36 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v36 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    v34 = v36;
    a2 = v32;
    v3 = v33;
  }

  while (v8 != v7);
LABEL_36:

  *a2 = v34;
  return result;
}

uint64_t sub_2529DFBF4(void *a1, const char *a2, uint64_t a3)
{
  v6 = sub_252E36AB4();
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = MEMORY[0x277D84F90];
  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  v9 = qword_2814B1370;
  sub_252E37604();
  if (!a1)
  {
    if (qword_2814B0A98 != -1)
    {
      goto LABEL_42;
    }

    goto LABEL_8;
  }

  v10 = a1;
  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v11 = sub_252E36AD4();
  __swift_project_value_buffer(v11, qword_2814B0AA0);
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_252E379F4();

  v39 = 0xD000000000000020;
  v40 = 0x8000000252E708C0;
  swift_getErrorValue();
  v12 = sub_252E37E54();
  MEMORY[0x2530AD570](v12);

  sub_252CC4050(v39, v40, 0xD00000000000006FLL, 0x8000000252E70160, 0xD00000000000001DLL, 0x8000000252E708F0, 559);

  while (1)
  {
    v14 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshWaitSemaphores;
    swift_beginAccess();
    v15 = *&a2[v14];
    v16 = v15 >> 62 ? sub_252E378C4() : *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      if (v16 < 1)
      {
        __break(1u);
        goto LABEL_41;
      }

      v36 = v9;
      v17 = a3;

      for (i = 0; i != v16; ++i)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v19 = MEMORY[0x2530ADF00](i, v15);
        }

        else
        {
          v19 = *(v15 + 8 * i + 32);
        }

        v20 = v19;
        MEMORY[0x2530AD700]();
        if (*((v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
      }

      v21 = v41;

      a3 = v17;
    }

    else
    {
      v21 = MEMORY[0x277D84F90];
    }

    sub_252E37614();
    if (*&a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSELFPerformanceLogger])
    {

      sub_252D2D83C(0, 0);
    }

    v36 = a3;
    if (qword_2814B0A30 != -1)
    {
      swift_once();
    }

    v22 = qword_2814B0A38;
    v24 = v37;
    v23 = v38;
    (*(v37 + 16))(v8, &a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_initializationSignpostID], v38);
    v25 = sub_252E375C4();
    a3 = MEMORY[0x277D84F90];
    LOBYTE(v33) = 2;
    v9 = 21;
    a2 = " enableTelemetry=YES ";
    sub_252E36A74(v25, &dword_252917000, v22, "NativeHomeStoreInitialization", 29, 2, v8, " enableTelemetry=YES ", 21, v33, MEMORY[0x277D84F90]);
    (*(v24 + 8))(v8, v23);
    v26 = sub_252E375C4();
    LOBYTE(v34) = 2;
    sub_252E36A74(v26, &dword_252917000, v22, "HomeKitRefresh", 14, 2, v36, " enableTelemetry=YES ", 21, v34, a3);
    if (v21 >> 62)
    {
      v27 = sub_252E378C4();
      if (!v27)
      {
      }
    }

    else
    {
      v27 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v27)
      {
      }
    }

    if (v27 >= 1)
    {
      break;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    swift_once();
LABEL_8:
    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000020, 0x8000000252E70860, 0xD00000000000006FLL, 0x8000000252E70160);
    a2[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted] = 1;
  }

  v28 = 0;
  do
  {
    if ((v21 & 0xC000000000000001) != 0)
    {
      v29 = MEMORY[0x2530ADF00](v28, v21);
    }

    else
    {
      v29 = *(v21 + 8 * v28 + 32);
    }

    v30 = v29;
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    ++v28;
    v31 = sub_252E36AD4();
    __swift_project_value_buffer(v31, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000029, 0x8000000252E70890, 0xD00000000000006FLL, 0x8000000252E70160);
    sub_252E37614();
  }

  while (v27 != v28);
}

void sub_2529E0210(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

uint64_t sub_2529E04B8()
{
  v1 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v2 = *(v1 + 8);
  [v2 lock];
  *v1 = 1;
  [v2 unlock];
  swift_endAccess();
  v3 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 0;
  [v4 unlock];
  return swift_endAccess();
}

void sub_2529E0588(char *a1, uint64_t a2, void *a3, void *a4, void *a5)
{
  v9 = &a1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  swift_beginAccess();
  v10 = *(v9 + 1);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a1;
  [v10 lock];
  *v9 = 1;
  [v10 unlock];
  swift_endAccess();
  v15 = &v14[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  swift_beginAccess();
  v16 = *(v15 + 1);
  [v16 lock];
  *v15 = 0;
  [v16 unlock];
  swift_endAccess();
}

void sub_2529E06A0(char *a1, uint64_t a2, void *a3)
{
  v5 = &a1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  swift_beginAccess();
  v6 = *(v5 + 1);
  v7 = a3;
  v8 = a1;
  [v6 lock];
  *v5 = 1;
  [v6 unlock];
  swift_endAccess();
  v9 = &v8[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  swift_beginAccess();
  v10 = *(v9 + 1);
  [v10 lock];
  *v9 = 0;
  [v10 unlock];
  swift_endAccess();
}

void sub_2529E0790(char *a1, uint64_t a2, void *a3, void *a4)
{
  v7 = &a1[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation];
  swift_beginAccess();
  v8 = *(v7 + 1);
  v9 = a3;
  v10 = a4;
  v11 = a1;
  [v8 lock];
  *v7 = 1;
  [v8 unlock];
  swift_endAccess();
  v12 = &v11[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid];
  swift_beginAccess();
  v13 = *(v12 + 1);
  [v13 lock];
  *v12 = 0;
  [v13 unlock];
  swift_endAccess();
}

void sub_2529E0898()
{
  v194 = sub_252E32E84();
  v0 = *(v194 - 8);
  v1 = MEMORY[0x28223BE20](v194);
  v189 = &v167 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = MEMORY[0x28223BE20](v1);
  v190 = &v167 - v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v167 - v5;
  if (qword_2814B09D0 != -1)
  {
    goto LABEL_134;
  }

  while (1)
  {
    v7 = sub_252E36AD4();
    v8 = __swift_project_value_buffer(v7, qword_2814B09D8);
    v172 = "Computing currentHome";
    v173 = v8;
    sub_252CC3D90(0xD000000000000024, 0x8000000252E70360, 0xD00000000000006FLL, 0x8000000252E70160);
    v9 = sub_2529D8DC0();
    v10 = v9;
    if (!(v9 >> 62))
    {
      v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v11)
      {
        break;
      }

      goto LABEL_4;
    }

    v11 = sub_252E378C4();
    if (!v11)
    {
      break;
    }

LABEL_4:
    v178 = type metadata accessor for HomeStore(0);
    v171 = v10 & 0xC000000000000001;
    v175 = "eStore (prettified):";
    v174 = " {\nisCurrentHome: ";
    v168 = v10 & 0xFFFFFFFFFFFFFF8;
    v167 = v10 + 32;
    v193 = (v0 + 32);
    v188 = (v0 + 8);
    v181 = v6;
    v169 = v11;
    v12 = 0;
    v170 = v10;
    while (1)
    {
      if (v171)
      {
        v182 = MEMORY[0x2530ADF00](v12, v10);
        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_129;
        }
      }

      else
      {
        if (v12 >= *(v168 + 16))
        {
          goto LABEL_133;
        }

        v182 = *(v167 + 8 * v12);

        v13 = __OFADD__(v12, 1);
        v14 = v12 + 1;
        if (v13)
        {
          goto LABEL_129;
        }
      }

      v177 = OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate;
      v15 = [*(v182 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      v16 = sub_252E37264();

      v17 = v16 >> 62 ? sub_252E378C4() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v176 = v14;
      if (v17)
      {
        break;
      }

      v19 = MEMORY[0x277D84F90];
LABEL_50:
      v197 = v19;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
      v185 = sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
      v186 = v61;
      v183 = sub_252E36EA4();
      v184 = v62;

      v63 = sub_2529E7CA0();
      if (v63 >> 62)
      {
        v90 = v63;
        v0 = sub_252E378C4();
        v63 = v90;
        if (!v0)
        {
LABEL_66:

          v66 = MEMORY[0x277D84F90];
          goto LABEL_67;
        }
      }

      else
      {
        v0 = *((v63 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_66;
        }
      }

      v64 = v63;
      v197 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v0 & ~(v0 >> 63), 0);
      if (v0 < 0)
      {
        goto LABEL_131;
      }

      v65 = 0;
      v66 = v197;
      v67 = v64;
      v191 = (v64 & 0xC000000000000001);
      v192 = v0;
      v195 = v64;
      do
      {
        if (v191)
        {
          v68 = MEMORY[0x2530ADF00](v65, v67);
        }

        else
        {
          v68 = v67[v65 + 4];
        }

        v69 = v68;
        type metadata accessor for Room(0);
        v70 = swift_allocObject();
        *(v70 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v69;
        v71 = v69;
        v72 = [v71 uniqueIdentifier];
        sub_252E32E64();

        v73 = [v71 name];
        v74 = sub_252E36F34();
        v76 = v75;

        v77 = [v71 assistantIdentifier];
        v196 = v66;
        if (v77)
        {
          v78 = sub_252E36F34();
          v80 = v79;
        }

        else
        {
          v78 = 0;
          v80 = 0;
        }

        v81 = v194;
        (*v193)(v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v190, v194);
        v82 = (v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v82 = v74;
        v82[1] = v76;
        *(v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v83 = (v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v83 = v78;
        v83[1] = v80;
        v84 = sub_2529A3254();
        v86 = v85;

        swift_setDeallocating();
        (*v188)(v70 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v81);

        swift_deallocClassInstance();
        v66 = v196;
        v197 = v196;
        v88 = *(v196 + 2);
        v87 = *(v196 + 3);
        if (v88 >= v87 >> 1)
        {
          sub_2529AA3A0((v87 > 1), v88 + 1, 1);
          v66 = v197;
        }

        ++v65;
        *(v66 + 2) = v88 + 1;
        v89 = &v66[16 * v88];
        *(v89 + 4) = v84;
        *(v89 + 5) = v86;
        v67 = v195;
      }

      while (v192 != v65);

      v6 = v181;
LABEL_67:
      v197 = v66;
      v180 = sub_252E36EA4();
      v187 = v91;

      v92 = [*(v182 + v177) serviceGroups];
      sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
      v93 = sub_252E37264();

      if (v93 >> 62)
      {
        v0 = sub_252E378C4();
        if (!v0)
        {
LABEL_82:

          v95 = MEMORY[0x277D84F90];
          goto LABEL_83;
        }
      }

      else
      {
        v0 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v0)
        {
          goto LABEL_82;
        }
      }

      v197 = MEMORY[0x277D84F90];
      sub_2529AA3A0(0, v0 & ~(v0 >> 63), 0);
      if (v0 < 0)
      {
        goto LABEL_132;
      }

      v94 = 0;
      v95 = v197;
      v96 = v93;
      v191 = (v93 & 0xC000000000000001);
      v192 = v0;
      v195 = v93;
      do
      {
        if (v191)
        {
          v97 = MEMORY[0x2530ADF00](v94, v96);
        }

        else
        {
          v97 = v96[v94 + 4];
        }

        v98 = v97;
        type metadata accessor for Group(0);
        v99 = swift_allocObject();
        *(v99 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v98;
        v100 = v98;
        v101 = [v100 uniqueIdentifier];
        sub_252E32E64();

        v102 = [v100 name];
        v103 = sub_252E36F34();
        v105 = v104;

        v106 = [v100 assistantIdentifier];
        v196 = v95;
        if (v106)
        {
          v107 = v106;
          v108 = sub_252E36F34();
          v110 = v109;
        }

        else
        {

          v108 = 0;
          v110 = 0;
        }

        v111 = v194;
        (*v193)(v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v189, v194);
        v112 = (v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v112 = v103;
        v112[1] = v105;
        *(v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 4;
        v113 = (v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v113 = v108;
        v113[1] = v110;
        v114 = sub_2529503B8();
        v116 = v115;

        swift_setDeallocating();
        (*v188)(v99 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v111);

        swift_deallocClassInstance();
        v95 = v196;
        v197 = v196;
        v118 = *(v196 + 2);
        v117 = *(v196 + 3);
        if (v118 >= v117 >> 1)
        {
          sub_2529AA3A0((v117 > 1), v118 + 1, 1);
          v95 = v197;
        }

        ++v94;
        *(v95 + 2) = v118 + 1;
        v119 = &v95[16 * v118];
        *(v119 + 4) = v114;
        *(v119 + 5) = v116;
        v96 = v195;
      }

      while (v192 != v94);

      v6 = v181;
LABEL_83:
      v197 = v95;
      v120 = sub_252E36EA4();
      v122 = v121;

      v197 = 0;
      v198 = 0xE000000000000000;
      sub_252E379F4();
      v123 = (v182 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v124 = *(v182 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v125 = *(v182 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      MEMORY[0x2530AD570](v124, v125);

      v126 = MEMORY[0x2530AD570](0xD000000000000012, v175 | 0x8000000000000000);
      v127 = static HomeStore.shared.getter(v126);
      v128 = sub_2529D9114();

      if (!v128)
      {
        goto LABEL_90;
      }

      v129 = v182;
      if ((sub_252E32E54() & 1) == 0 || *(v128 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) != *(v129 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
      {

LABEL_90:
        v130 = 0xE500000000000000;
        v131 = 0x65736C6166;
        goto LABEL_91;
      }

      if (*(v128 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v123 && *(v128 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v123[1])
      {
      }

      else
      {
        v163 = sub_252E37DB4();

        if ((v163 & 1) == 0)
        {
          goto LABEL_90;
        }
      }

      v130 = 0xE400000000000000;
      v131 = 1702195828;
LABEL_91:
      MEMORY[0x2530AD570](v131, v130);

      v132 = MEMORY[0x2530AD570](0xD000000000000012, v174 | 0x8000000000000000);
      v133 = static HomeStore.shared.getter(v132);
      v134 = sub_2529F1BFC();

      if (v134)
      {
        v135 = v182;
        if ((sub_252E32E54() & 1) != 0 && *(v134 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v135 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
        {
          if (*(v134 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v123 && *(v134 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v123[1])
          {

LABEL_121:
            v136 = 0xE400000000000000;
            v137 = 1702195828;
            goto LABEL_99;
          }

          v164 = sub_252E37DB4();

          if (v164)
          {
            goto LABEL_121;
          }
        }

        else
        {
        }
      }

      v136 = 0xE500000000000000;
      v137 = 0x65736C6166;
LABEL_99:
      MEMORY[0x2530AD570](v137, v136);

      MEMORY[0x2530AD570](0x3A73656E6F7A0A0ALL, 0xE90000000000000ALL);
      MEMORY[0x2530AD570](v183, v184);
      MEMORY[0x2530AD570](0x3A736D6F6F720A0ALL, 0xE90000000000000ALL);
      v138 = v180;
      v139 = v187;
      MEMORY[0x2530AD570](v180, v187);
      MEMORY[0x2530AD570](0x7370756F72670A0ALL, 0xEA00000000000A3ALL);
      v196 = v120;
      MEMORY[0x2530AD570](v120, v122);
      MEMORY[0x2530AD570](0x73656E6563730A0ALL, 0xEA0000000000203ALL);
      v140 = sub_2529E789C();
      v0 = type metadata accessor for Scene(0);
      v141 = MEMORY[0x2530AD730](v140, v0);
      v143 = v142;

      MEMORY[0x2530AD570](v141, v143);

      MEMORY[0x2530AD570](32010, 0xE200000000000000);
      v145 = v197;
      v144 = v198;
      if (sub_252E37054() > 30000 || (v197 = v138, v198 = v139, sub_252947DBC(), v146 = *(sub_252E377D4() + 16), , v146 >= 0x4B1))
      {

        v197 = 0;
        v198 = 0xE000000000000000;
        sub_252E379F4();
        v147 = *v123;
        v148 = v123[1];

        MEMORY[0x2530AD570](v147, v148);

        v149 = MEMORY[0x2530AD570](0xD000000000000012, v175 | 0x8000000000000000);
        v150 = static HomeStore.shared.getter(v149);
        v151 = sub_2529D9114();

        if (v151)
        {
          v152 = v182;
          if ((sub_252E32E54() & 1) != 0 && *(v151 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v152 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
          {
            if (*(v151 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v123 && *(v151 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v123[1])
            {

              goto LABEL_123;
            }

            v165 = sub_252E37DB4();

            if (v165)
            {
LABEL_123:
              v153 = 0xE400000000000000;
              v154 = 1702195828;
LABEL_109:
              MEMORY[0x2530AD570](v154, v153);

              v155 = MEMORY[0x2530AD570](0xD000000000000012, v174 | 0x8000000000000000);
              v156 = static HomeStore.shared.getter(v155);
              v157 = sub_2529F1BFC();

              if (v157)
              {
                v158 = v182;
                if ((sub_252E32E54() & 1) != 0 && *(v157 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) == *(v158 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType))
                {
                  if (*(v157 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == *v123 && *(v157 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v123[1])
                  {

                    goto LABEL_125;
                  }

                  v166 = sub_252E37DB4();

                  if (v166)
                  {
LABEL_125:
                    v159 = 0xE400000000000000;
                    v160 = 1702195828;
                    goto LABEL_117;
                  }
                }

                else
                {
                }
              }

              v159 = 0xE500000000000000;
              v160 = 0x65736C6166;
LABEL_117:
              MEMORY[0x2530AD570](v160, v159);

              MEMORY[0x2530AD570](0x3A73656E6F7A0A0ALL, 0xE90000000000000ALL);
              MEMORY[0x2530AD570](v183, v184);

              MEMORY[0x2530AD570](0x73656E6563730A0ALL, 0xEA0000000000203ALL);
              sub_2529E789C();
              v0 = MEMORY[0x2530AD730]();
              v162 = v161;

              MEMORY[0x2530AD570](v0, v162);

              MEMORY[0x2530AD570](32010, 0xE200000000000000);
              sub_252CC3D90(v197, v198, 0xD00000000000006FLL, v172 | 0x8000000000000000);

              sub_2529E4C38(0x736D6F6F72, 0xE500000000000000, v180, v187, 30000, 1200);

              sub_2529E4C38(0x7370756F7267, 0xE600000000000000, v196, v122, 30000, 1200);
              goto LABEL_6;
            }
          }

          else
          {
          }
        }

        v153 = 0xE500000000000000;
        v154 = 0x65736C6166;
        goto LABEL_109;
      }

      sub_252CC3D90(v145, v144, 0xD00000000000006FLL, v172 | 0x8000000000000000);
LABEL_6:

      v12 = v176;
      v10 = v170;
      if (v176 == v169)
      {
        goto LABEL_136;
      }
    }

    v199 = MEMORY[0x277D84F90];
    sub_2529AA3A0(0, v17 & ~(v17 >> 63), 0);
    if (v17 < 0)
    {
      goto LABEL_130;
    }

    v18 = 0;
    v19 = v199;
    v184 = v16;
    v185 = v16 & 0xC000000000000001;
    v179 = v16 + 32;
    v180 = (v16 & 0xFFFFFFFFFFFFFF8);
    v183 = v17;
    while (2)
    {
      v20 = v18 + 1;
      if (!__OFADD__(v18, 1))
      {
        if (v185)
        {
          v21 = MEMORY[0x2530ADF00]();
        }

        else
        {
          if (v18 >= *(v180 + 2))
          {
            goto LABEL_128;
          }

          v21 = *(v179 + 8 * v18);
        }

        v22 = v21;
        type metadata accessor for Zone(0);
        v192 = swift_allocObject();
        *(v192 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v22;
        v23 = v22;
        v24 = [v23 uniqueIdentifier];
        sub_252E32E64();

        v25 = [v23 name];
        v191 = sub_252E36F34();
        v196 = v26;

        v27 = [v23 assistantIdentifier];
        v195 = v23;

        if (v27)
        {
          v28 = sub_252E36F34();
          v30 = v29;
        }

        else
        {
          v28 = 0;
          v30 = 0;
        }

        v31 = v192;
        (*v193)(v192 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v194);
        v32 = (v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v33 = v195;
        v34 = v196;
        *v32 = v191;
        v32[1] = v34;
        *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 2;
        v35 = (v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v35 = v28;
        v35[1] = v30;
        v36 = [v33 rooms];
        sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
        v0 = sub_252E37264();

        if (v0 >> 62)
        {
          v37 = sub_252E378C4();
        }

        else
        {
          v37 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v37)
        {
          v186 = v20;
          v38 = [v195 rooms];
          v39 = sub_252E37264();

          if (v39 >> 62)
          {
            v40 = sub_252E378C4();
            v187 = v19;
            if (!v40)
            {
              goto LABEL_43;
            }

LABEL_31:
            v197 = MEMORY[0x277D84F90];
            sub_2529AA3A0(0, v40 & ~(v40 >> 63), 0);
            if (v40 < 0)
            {
              goto LABEL_127;
            }

            v41 = 0;
            v42 = v197;
            do
            {
              if ((v39 & 0xC000000000000001) != 0)
              {
                v43 = MEMORY[0x2530ADF00](v41, v39);
              }

              else
              {
                v43 = *(v39 + 8 * v41 + 32);
              }

              v44 = v43;
              v45 = [v43 name];
              v46 = sub_252E36F34();
              v48 = v47;

              v197 = v42;
              v50 = *(v42 + 2);
              v49 = *(v42 + 3);
              if (v50 >= v49 >> 1)
              {
                sub_2529AA3A0((v49 > 1), v50 + 1, 1);
                v42 = v197;
              }

              ++v41;
              *(v42 + 2) = v50 + 1;
              v51 = &v42[16 * v50];
              *(v51 + 4) = v46;
              *(v51 + 5) = v48;
            }

            while (v40 != v41);

            v6 = v181;
          }

          else
          {
            v40 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v187 = v19;
            if (v40)
            {
              goto LABEL_31;
            }

LABEL_43:

            v42 = MEMORY[0x277D84F90];
          }

          v197 = v42;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540480, &qword_252E3C910);
          sub_2529E6488(&qword_27F541110, &qword_27F540480, &qword_252E3C910, MEMORY[0x277D83958]);
          v53 = sub_252E36EA4();
          v55 = v54;

          v197 = 0;
          v198 = 0xE000000000000000;
          sub_252E379F4();
          v56 = v196;

          v197 = v191;
          v198 = v56;
          MEMORY[0x2530AD570](0x6F6F7220200A7B20, 0xED00005B203A736DLL);
          MEMORY[0x2530AD570](v53, v55);

          MEMORY[0x2530AD570](8194653, 0xE300000000000000);
          v52 = sub_252AD24A4(1, 8224, 0xE200000000000000);
          v196 = v57;

          v17 = v183;
          v20 = v186;
          v19 = v187;
        }

        else
        {

          v52 = v191;
        }

        v199 = v19;
        v0 = v19[2];
        v58 = v19[3];
        if (v0 >= v58 >> 1)
        {
          sub_2529AA3A0((v58 > 1), v0 + 1, 1);
          v19 = v199;
        }

        v19[2] = v0 + 1;
        v59 = &v19[2 * v0];
        v60 = v196;
        v59[4] = v52;
        v59[5] = v60;
        v18 = v20;
        if (v20 == v17)
        {

          goto LABEL_50;
        }

        continue;
      }

      break;
    }

    __break(1u);
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
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    swift_once();
  }

LABEL_136:

  sub_252CC3D90(0xD00000000000001FLL, 0x8000000252E703D0, 0xD00000000000006FLL, v172 | 0x8000000000000000);
}

uint64_t sub_2529E1FF0(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v85 = a1;
  v86 = a2;
  v82 = sub_252E36C84();
  v84 = *(v82 - 8);
  v6 = MEMORY[0x28223BE20](v82);
  v81 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v72 - v8;
  v10 = sub_252E36D54();
  v83 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v79 = &v72 - v15;
  MEMORY[0x28223BE20](v14);
  v80 = &v72 - v16;
  v17 = sub_252E36AD4();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v77 = &v72 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v76 = &v72 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v72 - v23;
  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v78 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded;
  v25 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v25 != 2 && (v25 & 1) != 0)
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v26 = 5457241;
    v27 = __swift_project_value_buffer(v17, qword_27F544D78);
    (*(v18 + 16))(v24, v27, v17);
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v85, v86);
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E704D0);
    v28 = *(v3 + v78);
    if (v28 == 2 || (v28 & 1) == 0)
    {
      v29 = 0xE200000000000000;
      v30 = 20302;
    }

    else
    {
      v29 = 0xE300000000000000;
      v30 = 5457241;
    }

    MEMORY[0x2530AD570](v30, v29);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E704F0);
    v58 = *(v3 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted);
    if (v58 == 2 || (v58 & 1) == 0)
    {
      v59 = 0xE200000000000000;
      v26 = 20302;
    }

    else
    {
      v59 = 0xE300000000000000;
    }

    MEMORY[0x2530AD570](v26, v59);

    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v87, v88, 0xD00000000000006FLL, 0x8000000252E70160);

    (*(v18 + 8))(v24, v17);
    sub_252E37614();
    return 1;
  }

  v31 = dispatch_semaphore_create(0);
  v32 = qword_2814B0A98;
  v33 = v31;
  v75 = v10;
  if (a3)
  {
    v74 = v18;
    if (v32 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v17, qword_2814B0AA0);
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_252E379F4();
    v34 = v86;

    v87 = v85;
    v88 = v34;
    MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E70530);
    sub_252CC3D90(v87, v88, 0xD00000000000006FLL, 0x8000000252E70160);

    v35 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshWaitSemaphores;
    swift_beginAccess();
    v36 = v33;
    MEMORY[0x2530AD700]();
    if (*((*(v4 + v35) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v35) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_252E372A4();
    }

    sub_252E372D4();
    swift_endAccess();
    v18 = v74;
  }

  else
  {
    if (v32 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v17, qword_2814B0AA0);
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_252E379F4();
    v37 = v86;

    v87 = v85;
    v88 = v37;
    MEMORY[0x2530AD570](0xD00000000000001CLL, 0x8000000252E703F0);
    sub_252CC3D90(v87, v88, 0xD00000000000006FLL, 0x8000000252E70160);

    v38 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadWaitSemaphores;
    swift_beginAccess();
    v39 = v33;
    MEMORY[0x2530AD700]();
    if (*((*(v4 + v38) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v4 + v38) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      v74 = v17;
      sub_252E372A4();
      v17 = v74;
    }

    sub_252E372D4();
    swift_endAccess();
  }

  sub_252E37614();
  if (!v33)
  {
    return 1;
  }

  v74 = v17;
  sub_252E36D14();
  *v9 = 5;
  v40 = v84;
  v41 = v82;
  (*(v84 + 104))(v9, *MEMORY[0x277D85188], v82);
  sub_252E36D24();
  v42 = *(v40 + 8);
  v84 = v40 + 8;
  v72 = v42;
  v42(v9, v41);
  v73 = v33;
  v43 = sub_252E375F4();
  sub_252E36D14();
  sub_252E36D34();
  v44 = *(v83 + 8);
  v45 = v75;
  v83 += 8;
  v44(v13, v75);
  if ((v43 & 1) == 0)
  {
    if (qword_27F53F4F0 != -1)
    {
      swift_once();
    }

    v51 = v74;
    v52 = __swift_project_value_buffer(v74, qword_27F544D78);
    v53 = v76;
    (*(v18 + 16))(v76, v52, v51);
    v87 = 0;
    v88 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
    MEMORY[0x2530AD570](v85, v86);
    MEMORY[0x2530AD570](0xD00000000000001BLL, 0x8000000252E704D0);
    v54 = *(v4 + v78);
    v55 = v73;
    if (v54 == 2 || (v54 & 1) == 0)
    {
      v56 = 0xE200000000000000;
      v57 = 20302;
    }

    else
    {
      v56 = 0xE300000000000000;
      v57 = 5457241;
    }

    MEMORY[0x2530AD570](v57, v56);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E704F0);
    v60 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted);
    if (v60 == 2 || (v60 & 1) == 0)
    {
      v61 = 0xE200000000000000;
      v62 = 20302;
    }

    else
    {
      v61 = 0xE300000000000000;
      v62 = 5457241;
    }

    MEMORY[0x2530AD570](v62, v61);

    MEMORY[0x2530AD570](0xD00000000000001FLL, 0x8000000252E70510);
    v64 = v81;
    v63 = v82;
    sub_252E37AE4();
    MEMORY[0x2530AD570](34, 0xE100000000000000);
    sub_252CC3D90(v87, v88, 0xD00000000000006FLL, 0x8000000252E70160);

    (*(v18 + 8))(v53, v74);
    v72(v64, v63);
    v44(v79, v45);
    v44(v80, v45);
    return 1;
  }

  if (qword_27F53F4F0 != -1)
  {
    swift_once();
  }

  v46 = v74;
  v47 = __swift_project_value_buffer(v74, qword_27F544D78);
  (*(v18 + 16))(v77, v47, v46);
  v87 = 0;
  v88 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70410);
  MEMORY[0x2530AD570](v85, v86);
  MEMORY[0x2530AD570](0xD000000000000028, 0x8000000252E70430);
  v48 = *(v4 + v78);
  if (v48 == 2 || (v48 & 1) != 0)
  {
    v49 = 0xE200000000000000;
    v50 = 20302;
  }

  else
  {
    v49 = 0xE300000000000000;
    v50 = 5457241;
  }

  MEMORY[0x2530AD570](v50, v49);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E70460);
  v66 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_refreshCompleted);
  if (v66 == 2 || (v66 & 1) == 0)
  {
    v67 = 0xE200000000000000;
    v68 = 20302;
  }

  else
  {
    v67 = 0xE300000000000000;
    v68 = 5457241;
  }

  MEMORY[0x2530AD570](v68, v67);

  MEMORY[0x2530AD570](0xD00000000000001ELL, 0x8000000252E70480);
  v70 = v81;
  v69 = v82;
  sub_252E37AE4();
  MEMORY[0x2530AD570](34, 0xE100000000000000);
  v71 = v77;
  sub_252CC4050(v87, v88, 0xD00000000000006FLL, 0x8000000252E70160, 0xD000000000000025, 0x8000000252E704A0, 981);

  (*(v18 + 8))(v71, v46);
  v72(v70, v69);
  v44(v79, v45);
  v44(v80, v45);
  return 0;
}

id HomeStore.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeStore(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_2529E2E20(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2529E2F18;

  return v6(a1);
}

uint64_t sub_2529E2F18()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2529E3010(uint64_t *a1, uint64_t (*a2)(uint64_t), unint64_t *a3, void *a4)
{
  v8 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = a2(v8);
    *a1 = v8;
  }

  v10 = *(v8 + 16);
  v12[0] = v8 + 32;
  v12[1] = v10;
  sub_2529E30AC(v12, a3, a4);
  return sub_252E37AA4();
}

uint64_t sub_2529E30AC(uint64_t *a1, unint64_t *a2, void *a3)
{
  v6 = a1[1];
  result = sub_252E37D74();
  if (result < v6)
  {
    if (v6 >= -1)
    {
      v8 = result;
      v9 = v6 / 2;
      if (v6 <= 1)
      {
        v10 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_25293F638(0, a2, a3);
        v10 = sub_252E372B4();
        *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) = v9;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFF8;
      v12[0] = ((v10 & 0xFFFFFFFFFFFFFF8) + 32);
      v12[1] = v9;
      sub_2529E346C(v12, v13, a1, v8);
      *(v11 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6 < 0)
  {
    goto LABEL_12;
  }

  if (v6)
  {
    return sub_2529E31C8(0, v6, 1, a1);
  }

  return result;
}

uint64_t sub_2529E31C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v42 = sub_252E32E84();
  v8 = MEMORY[0x28223BE20](v42);
  v41 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v8);
  v40 = &v34 - v12;
  v35 = a2;
  if (a3 != a2)
  {
    v13 = *a4;
    v39 = (v11 + 8);
    v43 = v13;
    v14 = v13 + 8 * a3 - 8;
    v15 = a1 - a3;
LABEL_6:
    v37 = v14;
    v38 = a3;
    v16 = *(v43 + 8 * a3);
    v36 = v15;
    while (1)
    {
      v17 = *v14;
      v18 = v16;
      v19 = v17;
      v45 = v18;
      v20 = [v18 uniqueIdentifier];
      v21 = v40;
      sub_252E32E64();

      v22 = sub_252E32E24();
      v44 = v23;
      v24 = *v39;
      v25 = v42;
      (*v39)(v21, v42);
      v46 = v19;
      v26 = [v19 uniqueIdentifier];
      v27 = v41;
      sub_252E32E64();

      v28 = sub_252E32E24();
      v30 = v29;
      v24(v27, v25);
      if (v22 == v28 && v44 == v30)
      {

LABEL_5:
        a3 = v38 + 1;
        v14 = v37 + 8;
        v15 = v36 - 1;
        if (v38 + 1 == v35)
        {
          return result;
        }

        goto LABEL_6;
      }

      v31 = sub_252E37DB4();

      if ((v31 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v43)
      {
        break;
      }

      v32 = *v14;
      v16 = *(v14 + 8);
      *v14 = v16;
      *(v14 + 8) = v32;
      v14 -= 8;
      if (__CFADD__(v15++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_2529E346C(void ***a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = v5;
  v124 = a1;
  v136 = sub_252E32E84();
  v10 = MEMORY[0x28223BE20](v136);
  v133 = &v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v132 = &v119 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v128 = &v119 - v15;
  MEMORY[0x28223BE20](v14);
  v127 = &v119 - v17;
  v18 = a3[1];
  v125 = a3;
  if (v18 < 1)
  {
    v20 = MEMORY[0x277D84F90];
LABEL_100:
    v6 = *v124;
    if (!*v124)
    {
      goto LABEL_141;
    }

    v4 = v20;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v113 = v4;
LABEL_103:
      v142 = v113;
      v4 = *(v113 + 2);
      if (v4 >= 2)
      {
        do
        {
          v114 = *a3;
          if (!*a3)
          {
            goto LABEL_139;
          }

          a3 = (v4 - 1);
          v115 = *&v113[16 * v4];
          v116 = v113;
          v117 = *&v113[16 * v4 + 24];
          sub_2529E3E28((v114 + 8 * v115), (v114 + 8 * *&v113[16 * v4 + 16]), (v114 + 8 * v117), v6);
          if (v7)
          {
            break;
          }

          if (v117 < v115)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v116 = sub_252934564(v116);
          }

          if (v4 - 2 >= *(v116 + 2))
          {
            goto LABEL_129;
          }

          v118 = &v116[16 * v4];
          *v118 = v115;
          *(v118 + 1) = v117;
          v142 = v116;
          sub_2529344D8(v4 - 1);
          v113 = v142;
          v4 = *(v142 + 2);
          a3 = v125;
        }

        while (v4 > 1);
      }

LABEL_111:

      return;
    }

LABEL_135:
    v113 = sub_252934564(v4);
    goto LABEL_103;
  }

  v19 = 0;
  v135 = (v16 + 8);
  v20 = MEMORY[0x277D84F90];
  v123 = a4;
  while (2)
  {
    v21 = v19++;
    if (v19 >= v18)
    {
      goto LABEL_27;
    }

    v122 = v20;
    v6 = *a3;
    v22 = *(*a3 + 8 * v19);
    v140 = *(*a3 + 8 * v21);
    v23 = v140;
    v141 = v22;
    v24 = v22;
    v4 = v23;
    LODWORD(v137) = sub_2529DDDE4(&v141, &v140);
    if (v7)
    {

      return;
    }

    v19 = v21 + 2;
    if (v21 + 2 >= v18)
    {
      v20 = v122;
      if (v137)
      {
        goto LABEL_19;
      }

      goto LABEL_27;
    }

    v121 = 0;
    v120 = v21;
    v25 = &v6[v21 + 2];
    v134 = v18;
    while (1)
    {
      v131 = v19;
      v27 = *(v25 - 1);
      v28 = *v25;
      v29 = v27;
      v138 = v28;
      v30 = [v28 uniqueIdentifier];
      v31 = v127;
      sub_252E32E64();

      v4 = sub_252E32E24();
      v6 = v32;
      v33 = v136;
      v34 = *v135;
      (*v135)(v31, v136);
      v139 = v29;
      v35 = [v29 uniqueIdentifier];
      v36 = v128;
      sub_252E32E64();

      v37 = sub_252E32E24();
      v39 = v38;
      v34(v36, v33);
      if (v4 == v37 && v6 == v39)
      {

        v26 = v134;
        if (v137)
        {
          a3 = v125;
          v20 = v122;
          a4 = v123;
          v7 = v121;
          v19 = v131;
          v21 = v120;
          goto LABEL_19;
        }

        goto LABEL_9;
      }

      v4 = sub_252E37DB4();

      v26 = v134;
      if ((v137 ^ v4))
      {
        break;
      }

LABEL_9:
      v19 = v131 + 1;
      ++v25;
      if (v26 == v131 + 1)
      {
        v19 = v26;
        a3 = v125;
        v20 = v122;
        a4 = v123;
        v7 = v121;
        goto LABEL_18;
      }
    }

    a3 = v125;
    v20 = v122;
    a4 = v123;
    v7 = v121;
    v19 = v131;
LABEL_18:
    v21 = v120;
    if (v137)
    {
LABEL_19:
      if (v19 < v21)
      {
        goto LABEL_132;
      }

      if (v21 < v19)
      {
        v40 = 8 * v19 - 8;
        v41 = 8 * v21;
        v42 = v19;
        v43 = v21;
        do
        {
          if (v43 != --v42)
          {
            v45 = *a3;
            if (!*a3)
            {
              goto LABEL_138;
            }

            v44 = *(v45 + v41);
            *(v45 + v41) = *(v45 + v40);
            *(v45 + v40) = v44;
          }

          ++v43;
          v40 -= 8;
          v41 += 8;
        }

        while (v43 < v42);
      }
    }

LABEL_27:
    v46 = a3[1];
    if (v19 >= v46)
    {
      goto LABEL_47;
    }

    if (__OFSUB__(v19, v21))
    {
      goto LABEL_131;
    }

    if (v19 - v21 >= a4)
    {
LABEL_47:
      if (v19 < v21)
      {
        goto LABEL_130;
      }

      v67 = v20;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v20 = v67;
      }

      else
      {
        v20 = sub_252934578(0, *(v67 + 2) + 1, 1, v67);
      }

      v4 = *(v20 + 2);
      v68 = *(v20 + 3);
      v69 = v4 + 1;
      if (v4 >= v68 >> 1)
      {
        v20 = sub_252934578((v68 > 1), v4 + 1, 1, v20);
      }

      *(v20 + 2) = v69;
      v70 = &v20[16 * v4];
      *(v70 + 4) = v21;
      *(v70 + 5) = v19;
      v6 = *v124;
      if (!*v124)
      {
        goto LABEL_140;
      }

      if (!v4)
      {
LABEL_3:
        v18 = a3[1];
        a4 = v123;
        if (v19 >= v18)
        {
          goto LABEL_100;
        }

        continue;
      }

      while (1)
      {
        v71 = v69 - 1;
        if (v69 >= 4)
        {
          break;
        }

        if (v69 == 3)
        {
          v72 = *(v20 + 4);
          v73 = *(v20 + 5);
          v82 = __OFSUB__(v73, v72);
          v74 = v73 - v72;
          v75 = v82;
LABEL_67:
          if (v75)
          {
            goto LABEL_119;
          }

          v88 = &v20[16 * v69];
          v90 = *v88;
          v89 = *(v88 + 1);
          v91 = __OFSUB__(v89, v90);
          v92 = v89 - v90;
          v93 = v91;
          if (v91)
          {
            goto LABEL_122;
          }

          v94 = &v20[16 * v71 + 32];
          v96 = *v94;
          v95 = *(v94 + 1);
          v82 = __OFSUB__(v95, v96);
          v97 = v95 - v96;
          if (v82)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v92, v97))
          {
            goto LABEL_126;
          }

          if (v92 + v97 >= v74)
          {
            if (v74 < v97)
            {
              v71 = v69 - 2;
            }

            goto LABEL_88;
          }

          goto LABEL_81;
        }

        v98 = &v20[16 * v69];
        v100 = *v98;
        v99 = *(v98 + 1);
        v82 = __OFSUB__(v99, v100);
        v92 = v99 - v100;
        v93 = v82;
LABEL_81:
        if (v93)
        {
          goto LABEL_121;
        }

        v101 = &v20[16 * v71];
        v103 = *(v101 + 4);
        v102 = *(v101 + 5);
        v82 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v82)
        {
          goto LABEL_124;
        }

        if (v104 < v92)
        {
          goto LABEL_3;
        }

LABEL_88:
        v4 = v71 - 1;
        if (v71 - 1 >= v69)
        {
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
LABEL_121:
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
          goto LABEL_134;
        }

        if (!*a3)
        {
          goto LABEL_137;
        }

        v109 = v20;
        v110 = *&v20[16 * v4 + 32];
        v111 = *&v20[16 * v71 + 40];
        sub_2529E3E28((*a3 + 8 * v110), (*a3 + 8 * *&v20[16 * v71 + 32]), (*a3 + 8 * v111), v6);
        if (v7)
        {
          goto LABEL_111;
        }

        if (v111 < v110)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v109 = sub_252934564(v109);
        }

        if (v4 >= *(v109 + 2))
        {
          goto LABEL_116;
        }

        v112 = &v109[16 * v4];
        *(v112 + 4) = v110;
        *(v112 + 5) = v111;
        v142 = v109;
        sub_2529344D8(v71);
        v20 = v142;
        v69 = *(v142 + 2);
        if (v69 <= 1)
        {
          goto LABEL_3;
        }
      }

      v76 = &v20[16 * v69 + 32];
      v77 = *(v76 - 64);
      v78 = *(v76 - 56);
      v82 = __OFSUB__(v78, v77);
      v79 = v78 - v77;
      if (v82)
      {
        goto LABEL_117;
      }

      v81 = *(v76 - 48);
      v80 = *(v76 - 40);
      v82 = __OFSUB__(v80, v81);
      v74 = v80 - v81;
      v75 = v82;
      if (v82)
      {
        goto LABEL_118;
      }

      v83 = &v20[16 * v69];
      v85 = *v83;
      v84 = *(v83 + 1);
      v82 = __OFSUB__(v84, v85);
      v86 = v84 - v85;
      if (v82)
      {
        goto LABEL_120;
      }

      v82 = __OFADD__(v74, v86);
      v87 = v74 + v86;
      if (v82)
      {
        goto LABEL_123;
      }

      if (v87 >= v79)
      {
        v105 = &v20[16 * v71 + 32];
        v107 = *v105;
        v106 = *(v105 + 1);
        v82 = __OFSUB__(v106, v107);
        v108 = v106 - v107;
        if (v82)
        {
          goto LABEL_127;
        }

        if (v74 < v108)
        {
          v71 = v69 - 2;
        }

        goto LABEL_88;
      }

      goto LABEL_67;
    }

    break;
  }

  v47 = v21 + a4;
  if (__OFADD__(v21, a4))
  {
    goto LABEL_133;
  }

  if (v47 >= v46)
  {
    v47 = a3[1];
  }

  if (v47 < v21)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v19 == v47)
  {
    goto LABEL_47;
  }

  v121 = v7;
  v122 = v20;
  v134 = *a3;
  v48 = v134 + 8 * v19 - 8;
  v120 = v21;
  v49 = v21 - v19;
  v126 = v47;
LABEL_38:
  v130 = v48;
  v131 = v19;
  v50 = *(v134 + 8 * v19);
  v129 = v49;
  v51 = v49;
  while (1)
  {
    v52 = *v48;
    v53 = v50;
    v54 = v52;
    v138 = v53;
    v55 = [v53 uniqueIdentifier];
    v56 = v132;
    sub_252E32E64();

    v137 = sub_252E32E24();
    v58 = v57;
    v6 = v136;
    v59 = *v135;
    (*v135)(v56, v136);
    v139 = v54;
    v60 = [v54 uniqueIdentifier];
    v61 = v133;
    sub_252E32E64();

    v62 = sub_252E32E24();
    v4 = v63;
    v59(v61, v6);
    if (v137 == v62 && v58 == v4)
    {

LABEL_37:
      v19 = v131 + 1;
      v48 = v130 + 8;
      v49 = v129 - 1;
      if (v131 + 1 == v126)
      {
        v19 = v126;
        v7 = v121;
        v20 = v122;
        a3 = v125;
        v21 = v120;
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    v64 = sub_252E37DB4();

    if ((v64 & 1) == 0)
    {
      goto LABEL_37;
    }

    if (!v134)
    {
      break;
    }

    v65 = *v48;
    v50 = *(v48 + 8);
    *v48 = v50;
    *(v48 + 8) = v65;
    v48 -= 8;
    if (__CFADD__(v51++, 1))
    {
      goto LABEL_37;
    }
  }

  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
}