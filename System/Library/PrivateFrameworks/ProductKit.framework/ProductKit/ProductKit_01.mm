uint64_t PersonalizationAssetManager.storeAsset(from:to:)(_OWORD *a1, void *a2)
{
  *(v3 + 304) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  *(v3 + 312) = swift_task_alloc();
  v6 = sub_260E68EF4();
  *(v3 + 320) = v6;
  *(v3 + 328) = *(v6 - 8);
  *(v3 + 336) = swift_task_alloc();
  *(v3 + 344) = *a1;
  v7 = a2[1];
  *(v3 + 360) = *a2;
  *(v3 + 368) = v7;

  return MEMORY[0x2822009F8](sub_260E1E2B4, v2, 0);
}

uint64_t sub_260E1E2B4()
{
  v2 = *(v0 + 344);
  v1 = *(v0 + 352);
  v20 = v1;
  v3 = *(v0 + 328);
  v4 = *(v0 + 336);
  v21 = *(v0 + 320);
  v5 = *(v0 + 304);
  sub_260E69644();
  *(v0 + 288) = sub_260E2FFA0(v2, v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08, MEMORY[0x277D83958]);
  v6 = sub_260E68FC4();
  v8 = v7;

  MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v22 = v6;
  *(v0 + 376) = v8;
  sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E2D960(v4);
  sub_260E68ED4();
  (*(v3 + 8))(v4, v21);
  v9 = *(v0 + 256);
  v10 = *(v0 + 264);
  sub_260E68984();
  sub_260E15FB4(v9, v10);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  sub_260E69484();
  v11 = sub_260E69404();
  *(v0 + 384) = v11;
  v12 = v5[10];
  v14 = v5[7];
  v13 = v5[8];
  *(v0 + 48) = v5[9];
  *(v0 + 64) = v12;
  *(v0 + 16) = v14;
  *(v0 + 32) = v13;
  sub_260E15E4C(v2, v20);
  v15 = swift_task_alloc();
  *(v0 + 392) = v15;
  *v15 = v0;
  v15[1] = sub_260E1E56C;
  v16 = *(v0 + 344);
  v17 = *(v0 + 352);
  v18 = *(v0 + 304);

  return sub_260E24B24(v0 + 80, v22, v8, v11, v0 + 16, v18, v16, v17);
}

uint64_t sub_260E1E56C()
{
  v2 = *v1;
  *(*v1 + 400) = v0;

  v3 = *(v2 + 384);
  v4 = *(v2 + 304);
  if (v0)
  {

    v5 = sub_260E1EF9C;
  }

  else
  {

    v5 = sub_260E1E6E4;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t sub_260E1E6E4()
{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 304);
  v3 = *(v0 + 312);
  *(v0 + 408) = *(v0 + 80);
  v5 = *(v0 + 112);
  *(v0 + 424) = *(v0 + 104);
  *(v0 + 432) = v5;
  v6 = *(v0 + 120);
  *(v0 + 440) = v6;
  *(v0 + 160) = v6;
  v7 = v6;
  *(v0 + 136) = v2;
  *(v0 + 144) = v1;
  *(v0 + 152) = v5;
  v8 = sub_260E69304();
  *(v0 + 448) = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 56);
  *(v0 + 456) = v10;
  *(v0 + 464) = (v9 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v10(v3, 1, 1, v8);
  v12 = sub_260E338D4(&qword_27FE545A8, v11, type metadata accessor for PersonalizationAssetManager, &protocol conformance descriptor for PersonalizationAssetManager);
  *(v0 + 472) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = v4;
  *(v13 + 24) = v12;
  *(v13 + 32) = v2;
  *(v13 + 40) = v1;
  v14 = *(v0 + 152);
  *(v13 + 48) = *(v0 + 136);
  *(v13 + 64) = v14;
  *(v13 + 80) = *(v0 + 168);
  *(v13 + 88) = v4;
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  sub_260E15E4C(v5, v7);
  sub_260E308D8(v0 + 136, v0 + 176);
  v15 = sub_260E1FB2C(0, 0, v3, &unk_260E6CA40, v13);
  *(v0 + 480) = v15;
  v16 = swift_task_alloc();
  *(v0 + 488) = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
  *(v0 + 496) = v17;
  *v16 = v0;
  v16[1] = sub_260E1E928;
  v18 = MEMORY[0x277D84950];
  v19 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 272, v15, v19, v17, v18);
}

uint64_t sub_260E1E928()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](sub_260E1EA54, v1, 0);
}

uint64_t sub_260E1EA54()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);
  v3 = *(v0 + 456);
  v5 = *(v0 + 360);
  v4 = *(v0 + 368);
  v7 = *(v0 + 304);
  v6 = *(v0 + 312);
  *(v0 + 504) = *(v0 + 272);
  *(v0 + 282) = *(v0 + 280);
  v3(v6, 1, 1, v2);
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v1;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v7;
  *(v8 + 56) = *(v0 + 136);
  *(v8 + 72) = *(v0 + 152);
  *(v8 + 88) = *(v0 + 168);
  swift_retain_n();

  sub_260E308D8(v0 + 136, v0 + 216);
  v9 = sub_260E20828(0, 0, v6, &unk_260E6CA58, v8);
  *(v0 + 512) = v9;
  v10 = swift_task_alloc();
  *(v0 + 520) = v10;
  *v10 = v0;
  v10[1] = sub_260E1EBD8;
  v11 = MEMORY[0x277D84A98];
  v12 = MEMORY[0x277D84AC0];
  v13 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282200440](v0 + 281, v9, v13, v11, v12);
}

uint64_t sub_260E1EBD8()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x2822009F8](sub_260E1ED04, v1, 0);
}

uint64_t sub_260E1ED04(uint64_t a1)
{
  if (*(v1 + 281))
  {

    return swift_willThrowTypedImpl();
  }

  else if (*(v1 + 282))
  {
    v3 = *(v1 + 504);
    v4 = *(v1 + 432);
    v5 = *(v1 + 440);
    v6 = *(v1 + 416);
    v7 = *(v1 + 408);
    *(v1 + 296) = v3;
    v8 = v3;
    swift_willThrowTypedImpl();
    sub_260E15590();
    swift_allocError();
    *v9 = 0;
    *(v9 + 8) = 0;
    *(v9 + 16) = 2;
    swift_willThrow();
    sub_260E30B30(v3, 1);
    sub_260E30B30(v3, 1);
    sub_260E30B3C(v1 + 136);
    sub_260E15FB4(v7, v6);

    sub_260E15FB4(v4, v5);

    v10 = *(v1 + 8);

    return v10();
  }

  else
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v11 = *(v1 + 344);
    v12 = *(v1 + 352);
    v13 = sub_260E68E94();
    v14 = __swift_project_value_buffer(v13, qword_27FE54540);
    sub_260E15E4C(v11, v12);

    v15 = swift_task_alloc();
    *(v1 + 528) = v15;
    *v15 = v1;
    v15[1] = sub_260E1F00C;
    v16 = *(v1 + 344);
    v17 = *(v1 + 352);
    v18 = *(v1 + 304);

    return sub_260E67EE4(0xD00000000000001ALL, 0x8000000260E72500, v14, v18, v16, v17);
  }
}

uint64_t sub_260E1EF9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E1F00C()
{
  v1 = *(*v0 + 352);
  v2 = *(*v0 + 344);
  v3 = *(*v0 + 304);

  sub_260E15FB4(v2, v1);

  return MEMORY[0x2822009F8](sub_260E1F160, v3, 0);
}

uint64_t sub_260E1F160()
{
  v1 = v0[54];
  v2 = v0[55];
  v3 = v0[52];
  v4 = v0[51];
  sub_260E30B3C((v0 + 17));
  sub_260E15FB4(v4, v3);

  sub_260E15FB4(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_260E1F220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[24] = a6;
  v7[25] = a7;
  v7[22] = a4;
  v7[23] = a5;
  return MEMORY[0x2822009F8](sub_260E1F244, a7, 0);
}

uint64_t sub_260E1F244()
{
  v39 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_260E68E94();
  *(v0 + 208) = __swift_project_value_buffer(v2, qword_27FE54540);
  sub_260E308D8(v1, v0 + 16);
  sub_260E308D8(v1, v0 + 56);

  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  if (v5)
  {
    v8 = *(v0 + 176);
    v7 = *(v0 + 184);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v36 = v10;
    *v9 = 136315394;

    sub_260E69644();

    v37 = v8;
    v38 = v7;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v11 = sub_260E43774(v8, v7, &v36);

    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    v12 = *(v6 + 16);
    v13 = *(v6 + 24);
    v14 = v13 >> 62;
    v15 = *(v0 + 192);
    if ((v13 >> 62) > 1)
    {
      if (v14 != 2)
      {
        sub_260E30B3C(v15);
        v16 = 0;
        goto LABEL_15;
      }

      v18 = v12 + 16;
      v12 = *(v12 + 16);
      v17 = *(v18 + 8);
      v15 = sub_260E30B3C(v15);
      v16 = v17 - v12;
      if (!__OFSUB__(v17, v12))
      {
        goto LABEL_15;
      }

      __break(1u);
    }

    else if (!v14)
    {
      sub_260E30B3C(v15);
      v16 = BYTE6(v13);
LABEL_15:
      v20 = *(v0 + 192);
      *(v9 + 14) = v16;
      sub_260E30B3C(v20);
      _os_log_impl(&dword_260E02000, v3, v4, "Store imageData Local START {filename: %s, imageData.count: %ld}", v9, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x2666F1EF0](v10, -1, -1);
      MEMORY[0x2666F1EF0](v9, -1, -1);
      goto LABEL_16;
    }

    result = sub_260E30B3C(v15);
    LODWORD(v16) = HIDWORD(v12) - v12;
    if (__OFSUB__(HIDWORD(v12), v12))
    {
      __break(1u);
      return result;
    }

    v16 = v16;
    goto LABEL_15;
  }

  sub_260E30B3C(*(v0 + 192));
  sub_260E30B3C(v6);
LABEL_16:

  v21 = *(v0 + 192);
  sub_260E686F4();
  swift_allocObject();
  sub_260E686E4();
  v22 = *(v21 + 32);
  v23 = *(v21 + 16);
  *(v0 + 96) = *v21;
  *(v0 + 112) = v23;
  *(v0 + 128) = v22;
  sub_260E33704();
  v24 = sub_260E686D4();
  *(v0 + 216) = v24;
  *(v0 + 224) = v25;
  v26 = v24;
  v27 = v25;
  v28 = *(v0 + 200);
  v30 = *(v0 + 176);
  v29 = *(v0 + 184);

  v31 = *(v28 + 304);
  v37 = 0;
  v38 = 0xE000000000000000;
  swift_bridgeObjectRetain_n();
  sub_260E69644();

  v37 = v30;
  v38 = v29;
  MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
  v32 = v37;
  v33 = v38;
  *(v0 + 232) = v38;
  *(v0 + 136) = v32;
  *(v0 + 144) = v33;
  *(v0 + 152) = v26;
  *(v0 + 160) = v27;
  v35 = (v31 + *v31);
  v34 = swift_task_alloc();
  *(v0 + 240) = v34;
  *v34 = v0;
  v34[1] = sub_260E1F698;

  return v35(v0 + 136, v0 + 152);
}

uint64_t sub_260E1F698()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_260E1F8D8;
  }

  else
  {

    v2 = sub_260E1F7E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E1F7FC(uint64_t a1)
{
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Store imageData Local END", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  sub_260E15FB4(v1[27], v1[28]);

  v5 = v1[1];

  return v5();
}

uint64_t sub_260E1F8F4()
{
  v22 = v0;
  v1 = v0[31];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[31];
    v7 = v0[22];
    v6 = v0[23];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315394;
    v0[21] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v19);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v20 = 0;
    v21 = 0xE000000000000000;
    sub_260E69644();

    v20 = v7;
    v21 = v6;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v14 = sub_260E43774(v20, v21, &v19);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_260E02000, v3, v4, "Store imageData Local FAILED -- {error: %s, filename: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
  }

  v15 = v0[27];
  v16 = v0[28];
  swift_willThrow();
  sub_260E15FB4(v15, v16);
  v17 = v0[1];

  return v17();
}

uint64_t sub_260E1FB2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = v22 - v9;
  sub_260E15684(a3, v22 - v9, &qword_27FE545A0, &qword_260E6CA30);
  v11 = sub_260E69304();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_260E155E4(v10, &qword_27FE545A0, &qword_260E6CA30);
  }

  else
  {
    sub_260E692F4();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = sub_260E69284();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = sub_260E690A4() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_260E1FDD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  return MEMORY[0x2822009F8](sub_260E1FDFC, a6, 0);
}

uint64_t sub_260E1FDFC()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[10] = __swift_project_value_buffer(v1, qword_27FE54540);

  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
    sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

    sub_260E69484();
    v6 = sub_260E69404();
    *(v4 + 4) = v6;
    *v5 = v6;
    _os_log_impl(&dword_260E02000, v2, v3, "Store imageData Private CloudKit database START {recordID: %@}", v4, 0xCu);
    sub_260E155E4(v5, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v5, -1, -1);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v7 = v0[8];
  v8 = v0[9];

  v19 = *(v7 + 240);
  v0[11] = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  v0[12] = sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  swift_bridgeObjectRetain_n();
  sub_260E69484();
  v9 = sub_260E69404();
  v0[13] = v9;
  v17 = *(v8 + 32);

  sub_260E69484();
  v10 = sub_260E69404();
  sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  v11 = v10;
  v12 = sub_260E69534();
  v0[14] = v12;
  v13 = [v12 encryptedValues];
  swift_getObjectType();
  sub_260E68984();
  sub_260E694A4();
  swift_unknownObjectRelease();
  v14 = [v12 encryptedValues];
  swift_getObjectType();
  v0[2] = v17;
  sub_260E69804();
  sub_260E694A4();

  swift_unknownObjectRelease();
  v0[3] = v9;
  v0[4] = v12;
  v18 = (v19 + *v19);
  v15 = swift_task_alloc();
  v0[15] = v15;
  *v15 = v0;
  v15[1] = sub_260E2027C;

  return (v18)(v0 + 3, v0 + 4);
}

uint64_t sub_260E2027C()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_260E20584;
  }

  else
  {
    v2 = sub_260E203AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E203AC()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_260E2041C, v2, 0);
}

uint64_t sub_260E2041C()
{

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    sub_260E69484();
    v5 = sub_260E69404();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&dword_260E02000, v1, v2, "Store imageData Private CloudKit database END {recordID: %@}", v3, 0xCu);
    sub_260E155E4(v4, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v4, -1, -1);
    MEMORY[0x2666F1EF0](v3, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_260E20584()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 64);

  return MEMORY[0x2822009F8](sub_260E205F4, v2, 0);
}

uint64_t sub_260E205F4()
{
  v21 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
    v7 = v0[6];
    v6 = v0[7];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v0[5] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v18);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v19 = 0;
    v20 = 0xE000000000000000;
    sub_260E69644();

    v19 = v7;
    v20 = v6;
    MEMORY[0x2666F0C00](0xD000000000000010, 0x8000000260E72820);
    v14 = sub_260E43774(v19, v20, &v18);

    *(v8 + 14) = v14;
    _os_log_impl(&dword_260E02000, v3, v4, "Store imageData Private CloudKit database FAILED -- {error: %s, filename: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  else
  {
    v15 = v0[16];
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_260E20828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545A0, &qword_260E6CA30);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_260E15684(a3, v25 - v10, &qword_27FE545A0, &qword_260E6CA30);
  v12 = sub_260E69304();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_260E155E4(v11, &qword_27FE545A0, &qword_260E6CA30);
  }

  else
  {
    sub_260E692F4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_260E69284();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_260E690A4() + 32;
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

      sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);

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

  sub_260E155E4(a3, &qword_27FE545A0, &qword_260E6CA30);
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

uint64_t sub_260E20B28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x2822009F8](sub_260E20B50, a1, 0);
}

uint64_t sub_260E20B50()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  __swift_project_value_buffer(v1, qword_27FE54540);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v2, v3, "Successfully saved imageData to local cache and Private CloudKit database -- deleting public record local cache", v4, 2u);
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

  v6 = v0[6];
  v5 = v0[7];
  v7 = v0[5];

  v8 = *(v7 + 352);
  sub_260E69644();
  v0[4] = sub_260E2FFA0(v6, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08, MEMORY[0x277D83958]);
  v9 = sub_260E68FC4();
  v11 = v10;

  MEMORY[0x2666F0C00](0x5F63696C6275705FLL, 0xEF6E6F736A2E3176);
  v0[8] = v11;
  v0[2] = v9;
  v0[3] = v11;
  v14 = (v8 + *v8);
  v12 = swift_task_alloc();
  v0[9] = v12;
  *v12 = v0;
  v12[1] = sub_260E20E04;

  return v14(v0 + 2);
}

uint64_t sub_260E20E04()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_260E20F50;
  }

  else
  {
    v2 = sub_260E20F38;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E20F88()
{
  v77 = v0;
  v0[5] = &type metadata for ProductKitFeatureFlag;
  v0[6] = sub_260E31F80();
  v1 = sub_260E68A54();
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if ((v1 & 1) == 0)
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v16 = sub_260E68E94();
    __swift_project_value_buffer(v16, qword_27FE54540);
    v17 = sub_260E68E74();
    v18 = sub_260E69474();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_260E02000, v17, v18, "ProductKit.ManateeMigration FeatureFlag not enabled, returning", v19, 2u);
      MEMORY[0x2666F1EF0](v19, -1, -1);
    }

    v20 = v0[1];
    goto LABEL_39;
  }

  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = sub_260E68E94();
  v0[42] = __swift_project_value_buffer(v2, qword_27FE54540);
  v3 = sub_260E68E74();
  v4 = sub_260E69474();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_260E02000, v3, v4, "Manatee container migration START", v5, 2u);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  v6 = v0[41];

  v7 = *(v6 + 368);
  v0[43] = v7;
  if (!v7 || (v8 = *(v0[41] + 376), (v0[44] = v8) == 0))
  {

    v21 = sub_260E68E74();
    v22 = sub_260E69454();

    if (os_log_type_enabled(v21, v22))
    {
      v74 = v0[41];
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v75 = v24;
      *v23 = 136315394;
      v0[24] = v7;
      v25 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
      v26 = sub_260E69084();
      v28 = sub_260E43774(v26, v27, &v75);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      v29 = *(v74 + 376);
      v0[25] = v29;
      v30 = v29;
      v31 = sub_260E69084();
      v33 = sub_260E43774(v31, v32, &v75);

      *(v23 + 14) = v33;
      _os_log_impl(&dword_260E02000, v21, v22, "Manatee container migration FAIL --- container nil {publicCloudKitContainer: %s, manateeCloudKitContainer: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v24, -1, -1);
      MEMORY[0x2666F1EF0](v23, -1, -1);
    }

    else
    {

      v25 = v7;
    }

    v34 = v0[41];
    v75 = 0;
    v76 = 0xE000000000000000;
    sub_260E69644();
    MEMORY[0x2666F0C00](0xD00000000000004DLL, 0x8000000260E72520);
    v0[22] = v7;
    v35 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
    v36 = sub_260E69084();
    MEMORY[0x2666F0C00](v36);

    MEMORY[0x2666F0C00](0xD00000000000001CLL, 0x8000000260E72570);
    v37 = *(v34 + 376);
    v0[23] = v37;
    v38 = v37;
    v39 = sub_260E69084();
    MEMORY[0x2666F0C00](v39);

    MEMORY[0x2666F0C00](125, 0xE100000000000000);
    v40 = v75;
    v41 = v76;
    sub_260E15590();
    swift_allocError();
    *v42 = v40;
    *(v42 + 8) = v41;
    *(v42 + 16) = 1;
    swift_willThrow();
    goto LABEL_38;
  }

  v73 = v8;
  v9 = v8;
  v10 = v7;
  v11 = [v10 containerIdentifier];
  if (v11)
  {
    v12 = v11;
    v13 = sub_260E69024();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v72 = v9;
  v43 = [v9 containerIdentifier];
  if (!v43)
  {
    if (!v15)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v44 = v43;
  v45 = sub_260E69024();
  v47 = v46;

  if (!v15)
  {
    if (!v47)
    {
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  if (!v47)
  {
LABEL_29:

    goto LABEL_30;
  }

  if (v13 == v45 && v15 == v47)
  {

LABEL_34:

    v51 = sub_260E68E74();
    v52 = sub_260E69454();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v75 = v71;
      *v53 = 136315394;
      v0[39] = v7;
      v54 = v10;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
      v55 = sub_260E69084();
      v57 = sub_260E43774(v55, v56, &v75);

      *(v53 + 4) = v57;
      *(v53 + 12) = 2080;
      v58 = v72;
      v59 = v73;
      v0[40] = v73;
      v60 = v72;
      v61 = sub_260E69084();
      v63 = sub_260E43774(v61, v62, &v75);

      *(v53 + 14) = v63;
      _os_log_impl(&dword_260E02000, v51, v52, "Manatee container migration FAIL --- containers are the same {publicCloudKitContainer: %s, manateeCloudKitContainer: %s}", v53, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v71, -1, -1);
      MEMORY[0x2666F1EF0](v53, -1, -1);
    }

    else
    {

      v58 = v72;
      v59 = v73;
    }

    v75 = 0;
    v76 = 0xE000000000000000;
    sub_260E69644();
    MEMORY[0x2666F0C00](0xD000000000000057, 0x8000000260E725B0);
    v0[37] = v7;
    v64 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545C8, &qword_260E6CA68);
    v65 = sub_260E69084();
    MEMORY[0x2666F0C00](v65);

    MEMORY[0x2666F0C00](0xD00000000000001CLL, 0x8000000260E72570);
    v0[38] = v59;
    v66 = v58;
    v67 = sub_260E69084();
    MEMORY[0x2666F0C00](v67);

    MEMORY[0x2666F0C00](125, 0xE100000000000000);
    v68 = v75;
    v69 = v76;
    sub_260E15590();
    swift_allocError();
    *v70 = v68;
    *(v70 + 8) = v69;
    *(v70 + 16) = 1;
    swift_willThrow();

LABEL_38:
    v20 = v0[1];
LABEL_39:

    return v20();
  }

  v50 = sub_260E69834();

  if (v50)
  {
    goto LABEL_34;
  }

LABEL_30:
  v0[45] = [v10 privateCloudDatabase];
  v48 = swift_task_alloc();
  v0[46] = v48;
  *v48 = v0;
  v48[1] = sub_260E2185C;

  return sub_260E4A92C(0xD000000000000015, 0x8000000260E72590);
}

uint64_t sub_260E2185C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 376) = a1;
  *(v3 + 384) = v1;

  if (v1)
  {
    v4 = *(v3 + 328);
    v5 = sub_260E23980;
  }

  else
  {
    v6 = *(v3 + 328);

    v5 = sub_260E21984;
    v4 = v6;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

void *sub_260E21984()
{
  v52 = v0;
  result = v0[47];
  v2 = result[2];
  v0[49] = v2;
  if (!v2)
  {

    v20 = sub_260E68E74();
    v21 = sub_260E69474();
    v22 = os_log_type_enabled(v20, v21);
    v24 = v0[43];
    v23 = v0[44];
    if (v22)
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_260E02000, v20, v21, "Manatee container migration END", v25, 2u);
      MEMORY[0x2666F1EF0](v25, -1, -1);
    }

    else
    {

      v20 = v24;
    }

    v19 = v0[1];
LABEL_16:

    return v19();
  }

  v3 = v0[48];
  v0[50] = 0;
  if (!result[2])
  {
    __break(1u);
    return result;
  }

  v4 = result[4];
  v0[51] = v4;
  v5 = result[5];
  v0[52] = v5;
  v6 = v5;
  v7 = v4;
  sub_260E23B14(v6, v0 + 7);
  if (v3)
  {

    v8 = v3;
    v9 = sub_260E68E74();
    v10 = sub_260E69474();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v51[0] = v12;
      *v11 = 136315138;
      v0[26] = v3;
      v13 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v14 = sub_260E69084();
      v16 = sub_260E43774(v14, v15, v51);

      *(v11 + 4) = v16;
      _os_log_impl(&dword_260E02000, v9, v10, "Manatee container migration FAIL {error: %s}", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v12);
      MEMORY[0x2666F1EF0](v12, -1, -1);
      MEMORY[0x2666F1EF0](v11, -1, -1);
    }

    v18 = v0[43];
    v17 = v0[44];
    swift_willThrow();

    v19 = v0[1];
    goto LABEL_16;
  }

  v26 = v0[9];
  v27 = v0[10];
  v0[53] = v0[8];
  v0[54] = v26;
  v0[55] = v27;
  v49 = v0[11];
  v0[56] = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

  sub_260E69484();
  v28 = sub_260E69404();
  sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  v29 = v28;
  v30 = sub_260E69534();
  v0[57] = v30;
  v31 = [v30 encryptedValues];
  swift_getObjectType();
  v32 = sub_260E68984();
  v33 = MEMORY[0x277CBBE08];
  v0[15] = MEMORY[0x277D837D0];
  v0[16] = v33;
  v0[12] = v32;
  v0[13] = v34;
  sub_260E694A4();
  swift_unknownObjectRelease();
  [v30 encryptedValues];
  swift_getObjectType();
  v0[27] = v49;
  v35 = sub_260E69804();
  v0[20] = MEMORY[0x277D837D0];
  v0[21] = v33;
  v0[17] = v35;
  v0[18] = v36;
  sub_260E694A4();

  swift_unknownObjectRelease();
  v37 = v7;
  v38 = sub_260E68E74();
  v39 = sub_260E69474();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v51[0] = v41;
    *v40 = 136315138;
    v0[36] = v37;
    v42 = v37;
    v43 = sub_260E69084();
    v45 = sub_260E43774(v43, v44, v51);

    *(v40 + 4) = v45;
    _os_log_impl(&dword_260E02000, v38, v39, "Migrate data to manatee CloudKit database START {recordID: %s}", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v41);
    MEMORY[0x2666F1EF0](v41, -1, -1);
    MEMORY[0x2666F1EF0](v40, -1, -1);
  }

  v46 = *(v0[41] + 240);
  v47 = [v30 recordID];
  v0[58] = v47;
  v0[28] = v47;
  v0[29] = v30;
  v50 = (v46 + *v46);
  v48 = swift_task_alloc();
  v0[59] = v48;
  *v48 = v0;
  v48[1] = sub_260E21FB8;

  return (v50)(v0 + 28, v0 + 29);
}

uint64_t sub_260E21FB8()
{
  *(*v1 + 480) = v0;

  if (v0)
  {

    v2 = sub_260E22438;
  }

  else
  {
    v2 = sub_260E220D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E220D4()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_260E22140, v1, 0);
}

uint64_t sub_260E22140()
{
  v25 = v0;
  v1 = *(v0 + 456);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 456);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v24 = v6;
    *v5 = 136315138;
    *(v0 + 280) = [v4 recordID];
    v7 = sub_260E69084();
    v9 = sub_260E43774(v7, v8, &v24);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_260E02000, v2, v3, "Migrate data to manatee CloudKit database END {recordID: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2666F1EF0](v6, -1, -1);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  v10 = *(v0 + 408);
  v11 = sub_260E68E74();
  v12 = sub_260E69474();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = *(v0 + 408);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = v15;
    *v14 = 136315138;
    *(v0 + 272) = v13;
    v16 = v13;
    v17 = sub_260E69084();
    v19 = sub_260E43774(v17, v18, &v24);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_260E02000, v11, v12, "Remove data from non manatee CloudKit database START {recordID: %s}", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x2666F1EF0](v15, -1, -1);
    MEMORY[0x2666F1EF0](v14, -1, -1);
  }

  v20 = *(*(v0 + 328) + 224);
  *(v0 + 248) = *(v0 + 408);
  v23 = (v20 + *v20);
  v21 = swift_task_alloc();
  *(v0 + 488) = v21;
  *v21 = v0;
  v21[1] = sub_260E22850;

  return v23(v0 + 248);
}

uint64_t sub_260E22438()
{
  v1 = *(v0 + 328);

  return MEMORY[0x2822009F8](sub_260E224A4, v1, 0);
}

uint64_t sub_260E224A4()
{
  v48 = v0;
  v1 = v0;
  v2 = *(v0 + 480);
  v3 = *(v0 + 456);
  v4 = v2;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = *(v0 + 480);
    v8 = *(v0 + 456);
    v45 = *(v0 + 432);
    v46 = *(v0 + 440);
    v9 = *(v0 + 416);
    v43 = v8;
    v44 = *(v0 + 408);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v47[0] = v11;
    *v10 = 136315394;
    *(v0 + 240) = v7;
    v12 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v13 = sub_260E69084();
    v15 = sub_260E43774(v13, v14, v47);

    *(v10 + 4) = v15;
    *(v10 + 12) = 2080;
    v16 = [v8 recordID];
    v17 = [v16 recordName];

    v18 = sub_260E69024();
    v20 = v19;

    v21 = sub_260E43774(v18, v20, v47);

    *(v10 + 14) = v21;
    v22 = v6;
    v23 = v44;
    _os_log_impl(&dword_260E02000, v5, v22, "Migrate data to manatee CloudKit database FAILED -- {error: %s, recordName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);

    swift_willThrow();

    v24 = v45;
    v25 = v46;
  }

  else
  {
    v26 = *(v0 + 456);
    v27 = *(v0 + 432);
    v28 = *(v0 + 440);
    v9 = v1[52];
    v23 = v1[51];

    swift_willThrow();

    v24 = v27;
    v25 = v28;
  }

  sub_260E15FB4(v24, v25);

  v29 = v1[60];
  v30 = v29;
  v31 = sub_260E68E74();
  v32 = sub_260E69474();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v47[0] = v34;
    *v33 = 136315138;
    v1[26] = v29;
    v35 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v36 = sub_260E69084();
    v38 = sub_260E43774(v36, v37, v47);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_260E02000, v31, v32, "Manatee container migration FAIL {error: %s}", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v34);
    MEMORY[0x2666F1EF0](v34, -1, -1);
    MEMORY[0x2666F1EF0](v33, -1, -1);
  }

  v40 = v1[43];
  v39 = v1[44];
  swift_willThrow();

  v41 = v1[1];

  return v41();
}

uint64_t sub_260E22850()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_260E2311C;
  }

  else
  {
    v2 = sub_260E22964;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_260E22980()
{
  v71 = v0;
  v1 = *(v0 + 408);
  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v68 = *(v0 + 440);
    v65 = *(v0 + 456);
    v66 = *(v0 + 432);
    v4 = *(v0 + 416);
    v5 = *(v0 + 408);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v70[0] = v7;
    *v6 = 136315138;
    *(v0 + 264) = v5;
    v8 = v5;
    v9 = sub_260E69084();
    v11 = sub_260E43774(v9, v10, v70);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_260E02000, v2, v3, "Remove data from non manatee CloudKit database END {recordID: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);

    sub_260E15FB4(v66, v68);
  }

  else
  {
    v12 = *(v0 + 456);
    v14 = *(v0 + 432);
    v13 = *(v0 + 440);
    v15 = *(v0 + 408);

    sub_260E15FB4(v14, v13);
  }

  v16 = *(v0 + 400) + 1;
  if (v16 == *(v0 + 392))
  {

    v17 = sub_260E68E74();
    v18 = sub_260E69474();
    v19 = os_log_type_enabled(v17, v18);
    v21 = *(v0 + 344);
    v20 = *(v0 + 352);
    if (v19)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_260E02000, v17, v18, "Manatee container migration END", v22, 2u);
      MEMORY[0x2666F1EF0](v22, -1, -1);
    }

    else
    {

      v17 = v21;
    }

    v41 = *(v0 + 8);
LABEL_14:

    v41();
    return;
  }

  v23 = *(v0 + 496);
  *(v0 + 400) = v16;
  v24 = *(v0 + 376);
  if (v16 >= *(v24 + 16))
  {
    __break(1u);
    return;
  }

  v25 = v24 + 16 * v16;
  v26 = *(v25 + 32);
  *(v0 + 408) = v26;
  v27 = *(v25 + 40);
  *(v0 + 416) = v27;
  v28 = v27;
  v29 = v26;
  sub_260E23B14(v28, (v0 + 56));
  if (v23)
  {

    v30 = v23;
    v31 = sub_260E68E74();
    v32 = sub_260E69474();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v70[0] = v34;
      *v33 = 136315138;
      *(v0 + 208) = v23;
      v35 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v36 = sub_260E69084();
      v38 = sub_260E43774(v36, v37, v70);

      *(v33 + 4) = v38;
      _os_log_impl(&dword_260E02000, v31, v32, "Manatee container migration FAIL {error: %s}", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x2666F1EF0](v34, -1, -1);
      MEMORY[0x2666F1EF0](v33, -1, -1);
    }

    v40 = *(v0 + 344);
    v39 = *(v0 + 352);
    swift_willThrow();

    v41 = *(v0 + 8);
    goto LABEL_14;
  }

  v42 = *(v0 + 72);
  v43 = *(v0 + 80);
  *(v0 + 424) = *(v0 + 64);
  *(v0 + 432) = v42;
  *(v0 + 440) = v43;
  v67 = *(v0 + 88);
  *(v0 + 448) = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

  sub_260E69484();
  v44 = sub_260E69404();
  sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
  v45 = v44;
  v46 = sub_260E69534();
  *(v0 + 456) = v46;
  v47 = [v46 encryptedValues];
  swift_getObjectType();
  v48 = sub_260E68984();
  v49 = MEMORY[0x277CBBE08];
  *(v0 + 120) = MEMORY[0x277D837D0];
  *(v0 + 128) = v49;
  *(v0 + 96) = v48;
  *(v0 + 104) = v50;
  sub_260E694A4();
  swift_unknownObjectRelease();
  [v46 encryptedValues];
  swift_getObjectType();
  *(v0 + 216) = v67;
  v51 = sub_260E69804();
  *(v0 + 160) = MEMORY[0x277D837D0];
  *(v0 + 168) = v49;
  *(v0 + 136) = v51;
  *(v0 + 144) = v52;
  sub_260E694A4();

  swift_unknownObjectRelease();
  v53 = v29;
  v54 = sub_260E68E74();
  v55 = sub_260E69474();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v70[0] = v57;
    *v56 = 136315138;
    *(v0 + 288) = v53;
    v58 = v53;
    v59 = sub_260E69084();
    v61 = sub_260E43774(v59, v60, v70);

    *(v56 + 4) = v61;
    _os_log_impl(&dword_260E02000, v54, v55, "Migrate data to manatee CloudKit database START {recordID: %s}", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x2666F1EF0](v57, -1, -1);
    MEMORY[0x2666F1EF0](v56, -1, -1);
  }

  v62 = *(*(v0 + 328) + 240);
  v63 = [v46 recordID];
  *(v0 + 464) = v63;
  *(v0 + 224) = v63;
  *(v0 + 232) = v46;
  v69 = (v62 + *v62);
  v64 = swift_task_alloc();
  *(v0 + 472) = v64;
  *v64 = v0;
  v64[1] = sub_260E21FB8;

  v69(v0 + 224, v0 + 232);
}

void sub_260E23138()
{
  v69 = v0;
  v1 = *(v0 + 496);
  v2 = *(v0 + 408);
  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69454();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 496);
    v66 = *(v0 + 440);
    v63 = *(v0 + 456);
    v64 = *(v0 + 432);
    v62 = *(v0 + 416);
    v7 = *(v0 + 408);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v68[0] = v9;
    *v8 = 136315394;
    *(v0 + 256) = v6;
    v10 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, v68);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    v14 = [v7 recordName];
    v15 = sub_260E69024();
    v17 = v16;

    v18 = sub_260E43774(v15, v17, v68);

    *(v8 + 14) = v18;
    _os_log_impl(&dword_260E02000, v4, v5, "Remove data from non manatee CloudKit database FAILED -- {error: %s, recordName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);

    sub_260E15FB4(v64, v66);
  }

  else
  {
    v19 = *(v0 + 496);
    v20 = *(v0 + 456);
    v22 = *(v0 + 432);
    v21 = *(v0 + 440);
    v23 = *(v0 + 408);

    sub_260E15FB4(v22, v21);
  }

  v24 = *(v0 + 400) + 1;
  if (v24 == *(v0 + 392))
  {

    v25 = sub_260E68E74();
    v26 = sub_260E69474();
    v27 = os_log_type_enabled(v25, v26);
    v29 = *(v0 + 344);
    v28 = *(v0 + 352);
    if (v27)
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_260E02000, v25, v26, "Manatee container migration END", v30, 2u);
      MEMORY[0x2666F1EF0](v30, -1, -1);
    }

    else
    {

      v25 = v29;
    }

    v37 = *(v0 + 8);

    v37();
  }

  else
  {
    *(v0 + 400) = v24;
    v31 = *(v0 + 376);
    if (v24 >= *(v31 + 16))
    {
      __break(1u);
    }

    else
    {
      v32 = v31 + 16 * v24;
      v33 = *(v32 + 32);
      *(v0 + 408) = v33;
      v34 = *(v32 + 40);
      *(v0 + 416) = v34;
      v35 = v34;
      v36 = v33;
      sub_260E23B14(v35, (v0 + 56));
      v38 = *(v0 + 72);
      v39 = *(v0 + 80);
      *(v0 + 424) = *(v0 + 64);
      *(v0 + 432) = v38;
      *(v0 + 440) = v39;
      v65 = *(v0 + 88);
      *(v0 + 448) = sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
      sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);

      sub_260E69484();
      v40 = sub_260E69404();
      sub_260E157C4(0, &qword_27FE545D0, 0x277CBC5A0);
      v41 = v40;
      v42 = sub_260E69534();
      *(v0 + 456) = v42;
      v43 = [v42 encryptedValues];
      swift_getObjectType();
      v44 = sub_260E68984();
      v45 = MEMORY[0x277CBBE08];
      *(v0 + 120) = MEMORY[0x277D837D0];
      *(v0 + 128) = v45;
      *(v0 + 96) = v44;
      *(v0 + 104) = v46;
      sub_260E694A4();
      swift_unknownObjectRelease();
      [v42 encryptedValues];
      swift_getObjectType();
      *(v0 + 216) = v65;
      v47 = sub_260E69804();
      *(v0 + 160) = MEMORY[0x277D837D0];
      *(v0 + 168) = v45;
      *(v0 + 136) = v47;
      *(v0 + 144) = v48;
      sub_260E694A4();

      swift_unknownObjectRelease();
      v49 = v36;
      v50 = sub_260E68E74();
      v51 = sub_260E69474();

      if (os_log_type_enabled(v50, v51))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v68[0] = v54;
        *v53 = 136315138;
        *(v0 + 288) = v49;
        v55 = v49;
        v56 = sub_260E69084();
        v58 = sub_260E43774(v56, v57, v68);

        *(v53 + 4) = v58;
        _os_log_impl(&dword_260E02000, v50, v51, "Migrate data to manatee CloudKit database START {recordID: %s}", v53, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v54);
        MEMORY[0x2666F1EF0](v54, -1, -1);
        MEMORY[0x2666F1EF0](v53, -1, -1);
      }

      v59 = *(*(v0 + 328) + 240);
      v60 = [v42 recordID];
      *(v0 + 464) = v60;
      *(v0 + 224) = v60;
      *(v0 + 232) = v42;
      v67 = (v59 + *v59);
      v61 = swift_task_alloc();
      *(v0 + 472) = v61;
      *v61 = v0;
      v61[1] = sub_260E21FB8;

      v67(v0 + 224, v0 + 232);
    }
  }
}

uint64_t sub_260E23980()
{
  v16 = v0;

  v1 = *(v0 + 384);
  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v0 + 208) = v1;
    v7 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v8 = sub_260E69084();
    v10 = sub_260E43774(v8, v9, &v15);

    *(v5 + 4) = v10;
    _os_log_impl(&dword_260E02000, v3, v4, "Manatee container migration FAIL {error: %s}", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2666F1EF0](v6, -1, -1);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  v12 = *(v0 + 344);
  v11 = *(v0 + 352);
  swift_willThrow();

  v13 = *(v0 + 8);

  return v13();
}

void sub_260E23B14(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = [objc_msgSend(a1 encryptedValues)];
  swift_unknownObjectRelease();
  v6 = sub_260E691B4();

  v7 = *(v6 + 16);

  if (v7)
  {
    v8 = [a1 encryptedValues];
  }

  else
  {
    v8 = a1;
  }

  v9 = v8;
  v10 = sub_260E68FF4();
  v11 = [v9 objectForKeyedSubscript_];

  sub_260E2E4B0(v11, 0xD000000000000010, 0x8000000260E72780, v12);
  swift_unknownObjectRelease();
  if (v2)
  {
    goto LABEL_74;
  }

  v55 = a2;
  v13 = sub_260E68FF4();
  v14 = [v9 objectForKeyedSubscript_];

  if (v14 && (v58 = v14, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546C8, &qword_260E6D638), (swift_dynamicCast() & 1) != 0))
  {
    v16 = v56;
    v15 = v57;
  }

  else
  {
    v15 = 0xE100000000000000;
    v16 = 49;
  }

  v17 = HIBYTE(v15) & 0xF;
  v18 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {

    goto LABEL_71;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {
    sub_260E4DC24(v16, v15, 10);
    v23 = v52;
    v54 = v53;

    if ((v54 & 1) == 0)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    v56 = v16;
    v57 = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (!v17)
      {
LABEL_83:
        __break(1u);
        return;
      }

      v20 = (v17 - 1);
      if (v17 != 1)
      {
        v23 = 0;
        v34 = &v56 + 1;
        while (1)
        {
          v35 = *v34 - 48;
          if (v35 > 9)
          {
            break;
          }

          v36 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v36 + v35;
          if (__OFADD__(v36, v35))
          {
            break;
          }

          ++v34;
          if (!--v20)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v16 == 45)
    {
      if (!v17)
      {
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v20 = (v17 - 1);
      if (v17 != 1)
      {
        v23 = 0;
        v27 = &v56 + 1;
        while (1)
        {
          v28 = *v27 - 48;
          if (v28 > 9)
          {
            break;
          }

          v29 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v29 - v28;
          if (__OFSUB__(v29, v28))
          {
            break;
          }

          ++v27;
          if (!--v20)
          {
            goto LABEL_70;
          }
        }
      }
    }

    else if (v17)
    {
      v23 = 0;
      v39 = &v56;
      while (1)
      {
        v40 = *v39 - 48;
        if (v40 > 9)
        {
          break;
        }

        v41 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v41 + v40;
        if (__OFADD__(v41, v40))
        {
          break;
        }

        v39 = (v39 + 1);
        if (!--v17)
        {
LABEL_68:
          LOBYTE(v20) = 0;
          goto LABEL_70;
        }
      }
    }
  }

  else
  {
    if ((v16 & 0x1000000000000000) != 0)
    {
      v20 = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v20 = sub_260E696A4();
    }

    v21 = *v20;
    if (v21 == 43)
    {
      if (v18 >= 1)
      {
        v30 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          if (!v20)
          {
            goto LABEL_70;
          }

          v31 = v20 + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              break;
            }

            v33 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              break;
            }

            ++v31;
            if (!--v30)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      goto LABEL_82;
    }

    if (v21 == 45)
    {
      if (v18 >= 1)
      {
        v22 = v18 - 1;
        if (v18 != 1)
        {
          v23 = 0;
          if (!v20)
          {
            goto LABEL_70;
          }

          v24 = v20 + 1;
          while (1)
          {
            v25 = *v24 - 48;
            if (v25 > 9)
            {
              break;
            }

            v26 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v26 - v25;
            if (__OFSUB__(v26, v25))
            {
              break;
            }

            ++v24;
            if (!--v22)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_69;
      }

      __break(1u);
      goto LABEL_81;
    }

    if (v18)
    {
      v23 = 0;
      if (!v20)
      {
        goto LABEL_70;
      }

      while (1)
      {
        v37 = *v20 - 48;
        if (v37 > 9)
        {
          break;
        }

        v38 = 10 * v23;
        if ((v23 * 10) >> 64 != (10 * v23) >> 63)
        {
          break;
        }

        v23 = v38 + v37;
        if (__OFADD__(v38, v37))
        {
          break;
        }

        ++v20;
        if (!--v18)
        {
          goto LABEL_68;
        }
      }
    }
  }

LABEL_69:
  v23 = 0;
  LOBYTE(v20) = 1;
LABEL_70:
  LOBYTE(v58) = v20;
  v42 = v20;

  if (v42)
  {
LABEL_71:
    v23 = 1;
  }

LABEL_72:
  v43 = sub_260E68934();
  v45 = v44;

  if (v45 >> 60 == 15)
  {
    sub_260E15590();
    swift_allocError();
    *v46 = 0xD000000000000030;
    *(v46 + 8) = 0x8000000260E727A0;
    *(v46 + 16) = 0;
    swift_willThrow();
LABEL_74:
    swift_unknownObjectRelease();

    return;
  }

  v47 = [a1 recordID];
  v48 = [v47 recordName];

  v49 = sub_260E69024();
  v51 = v50;
  swift_unknownObjectRelease();

  *v55 = v49;
  v55[1] = v51;
  v55[2] = v43;
  v55[3] = v45;
  v55[4] = v23;
}

void sub_260E240B4(void *a1@<X0>, uint64_t *a2@<X1>, _OWORD *a3@<X8>)
{
  v108 = a3;
  v6 = sub_260E68904();
  v115 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v97[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v97[-v10];
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v97[-v14];
  v17 = *a2;
  v16 = a2[1];
  v18 = MEMORY[0x2666F1050](0x746E65644979656BLL, 0xED00007265696669, v13);
  v20 = sub_260E2E4B0(v18, 0xD000000000000014, 0x8000000260E72880, v19);
  if (v3)
  {
    sub_260E15FB4(v17, v16);

LABEL_3:
    swift_unknownObjectRelease();
    return;
  }

  v102 = v11;
  v103 = v8;
  v104 = 0;
  v105 = v21;
  v22 = v115;
  v106 = v17;
  v107 = v16;
  v101 = v20;
  swift_unknownObjectRelease();
  v23 = a1;
  if (!MEMORY[0x2666F1050](0x7373416567616D69, 0xEA00000000007465))
  {
    goto LABEL_12;
  }

  objc_opt_self();
  v24 = swift_dynamicCastObjCClass();
  if (!v24)
  {
    swift_unknownObjectRelease();
LABEL_12:
    v46 = MEMORY[0x2666F1050](0x6567616D69, 0xE500000000000000);
    v47 = v104;
    sub_260E2E4B0(v46, 0x692E64726F636572, 0xEC0000006567616DLL, v48);
    if (v47)
    {
      sub_260E15FB4(v106, v107);

      goto LABEL_3;
    }

    swift_unknownObjectRelease();
    v50 = v106;
    v49 = v107;
    goto LABEL_24;
  }

  v25 = [v24 fileURL];
  if (!v25)
  {
    sub_260E15FB4(v106, v107);

    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v51 = sub_260E68E94();
    __swift_project_value_buffer(v51, qword_27FE54540);
    v52 = sub_260E68E74();
    v53 = sub_260E69454();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_260E02000, v52, v53, "Public record asset isn't locally cached", v54, 2u);
      MEMORY[0x2666F1EF0](v54, -1, -1);
    }

    sub_260E15590();
    swift_allocError();
    *v55 = xmmword_260E6C9E0;
    *(v55 + 16) = 2;
    swift_willThrow();
    swift_unknownObjectRelease();
    goto LABEL_26;
  }

  v26 = v102;
  v27 = v25;
  sub_260E688C4();

  v28 = v22;
  v29 = *(v22 + 32);
  v30 = v15;
  v31 = v26;
  v32 = v6;
  v29(v15, v31, v6);
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v102 = v23;
  v33 = sub_260E68E94();
  __swift_project_value_buffer(v33, qword_27FE54540);
  v34 = v103;
  (*(v28 + 16))(v103, v30, v6);
  v35 = sub_260E68E74();
  v36 = sub_260E69434();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v99 = v37;
    v100 = swift_slowAlloc();
    *&v110 = v100;
    *v37 = 136315138;
    sub_260E338D4(&qword_27FE54570, 255, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v38 = sub_260E69804();
    v40 = v39;
    v98 = v36;
    v41 = *(v28 + 8);
    v41(v34, v32);
    v42 = sub_260E43774(v38, v40, &v110);

    v43 = v99;
    *(v99 + 1) = v42;
    v44 = v43;
    _os_log_impl(&dword_260E02000, v35, v98, "Reading data from %s", v43, 0xCu);
    v45 = v100;
    __swift_destroy_boxed_opaque_existential_0(v100);
    MEMORY[0x2666F1EF0](v45, -1, -1);
    MEMORY[0x2666F1EF0](v44, -1, -1);
  }

  else
  {

    v41 = *(v28 + 8);
    v41(v34, v32);
  }

  v50 = v106;
  v56 = v104;
  sub_260E68FE4();
  if (v56)
  {
    v41(v30, v32);
    swift_unknownObjectRelease();
    sub_260E15FB4(v50, v107);

    return;
  }

  v41(v30, v32);
  swift_unknownObjectRelease();
  v49 = v107;
  v23 = v102;
LABEL_24:
  v57 = sub_260E68934();
  v59 = v58;

  if (v59 >> 60 == 15)
  {
    sub_260E15FB4(v50, v49);

    sub_260E15590();
    swift_allocError();
    *v60 = 0xD000000000000030;
    *(v60 + 8) = 0x8000000260E728A0;
    *(v60 + 16) = 0;
    swift_willThrow();
LABEL_26:

    return;
  }

  v61 = MEMORY[0x2666F1050](0x6E6F6973726576, 0xE700000000000000);
  if (v61 && (v109[0] = v61, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546C8, &qword_260E6D638), (swift_dynamicCast() & 1) != 0))
  {
    v62 = *(&v110 + 1);
    v63 = v110;
  }

  else
  {
    v62 = 0xE100000000000000;
    v63 = 49;
  }

  v64 = HIBYTE(v62) & 0xF;
  v65 = v63 & 0xFFFFFFFFFFFFLL;
  if ((v62 & 0x2000000000000000) != 0)
  {
    v66 = HIBYTE(v62) & 0xF;
  }

  else
  {
    v66 = v63 & 0xFFFFFFFFFFFFLL;
  }

  if (!v66)
  {

    goto LABEL_93;
  }

  if ((v62 & 0x1000000000000000) != 0)
  {
    sub_260E4DC24(v63, v62, 10);
    v70 = v94;
    v96 = v95;

    if ((v96 & 1) == 0)
    {
      v50 = v106;
      v49 = v107;
      goto LABEL_94;
    }

    v50 = v106;
    v49 = v107;
    goto LABEL_93;
  }

  if ((v62 & 0x2000000000000000) == 0)
  {
    if ((v63 & 0x1000000000000000) != 0)
    {
      v67 = ((v62 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v67 = sub_260E696A4();
    }

    v68 = *v67;
    if (v68 == 43)
    {
      if (v65 >= 1)
      {
        v77 = v65 - 1;
        if (v65 != 1)
        {
          v70 = 0;
          if (!v67)
          {
            goto LABEL_92;
          }

          v78 = v67 + 1;
          while (1)
          {
            v79 = *v78 - 48;
            if (v79 > 9)
            {
              break;
            }

            v80 = 10 * v70;
            if ((v70 * 10) >> 64 != (10 * v70) >> 63)
            {
              break;
            }

            v70 = v80 + v79;
            if (__OFADD__(v80, v79))
            {
              break;
            }

            ++v78;
            if (!--v77)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_91;
      }

      goto LABEL_102;
    }

    if (v68 == 45)
    {
      if (v65 >= 1)
      {
        v69 = v65 - 1;
        if (v65 != 1)
        {
          v70 = 0;
          if (!v67)
          {
            goto LABEL_92;
          }

          v71 = v67 + 1;
          while (1)
          {
            v72 = *v71 - 48;
            if (v72 > 9)
            {
              break;
            }

            v73 = 10 * v70;
            if ((v70 * 10) >> 64 != (10 * v70) >> 63)
            {
              break;
            }

            v70 = v73 - v72;
            if (__OFSUB__(v73, v72))
            {
              break;
            }

            ++v71;
            if (!--v69)
            {
              goto LABEL_90;
            }
          }
        }

        goto LABEL_91;
      }

      __break(1u);
      goto LABEL_101;
    }

    if (v65)
    {
      v70 = 0;
      if (!v67)
      {
        goto LABEL_92;
      }

      while (1)
      {
        v84 = *v67 - 48;
        if (v84 > 9)
        {
          break;
        }

        v85 = 10 * v70;
        if ((v70 * 10) >> 64 != (10 * v70) >> 63)
        {
          break;
        }

        v70 = v85 + v84;
        if (__OFADD__(v85, v84))
        {
          break;
        }

        ++v67;
        if (!--v65)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_91;
  }

  *&v110 = v63;
  *(&v110 + 1) = v62 & 0xFFFFFFFFFFFFFFLL;
  if (v63 != 43)
  {
    if (v63 == 45)
    {
      if (!v64)
      {
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
        goto LABEL_103;
      }

      v67 = (v64 - 1);
      if (v64 != 1)
      {
        v70 = 0;
        v74 = &v110 + 1;
        while (1)
        {
          v75 = *v74 - 48;
          if (v75 > 9)
          {
            break;
          }

          v76 = 10 * v70;
          if ((v70 * 10) >> 64 != (10 * v70) >> 63)
          {
            break;
          }

          v70 = v76 - v75;
          if (__OFSUB__(v76, v75))
          {
            break;
          }

          ++v74;
          if (!--v67)
          {
            goto LABEL_92;
          }
        }
      }
    }

    else if (v64)
    {
      v70 = 0;
      v86 = &v110;
      while (1)
      {
        v87 = *v86 - 48;
        if (v87 > 9)
        {
          break;
        }

        v88 = 10 * v70;
        if ((v70 * 10) >> 64 != (10 * v70) >> 63)
        {
          break;
        }

        v70 = v88 + v87;
        if (__OFADD__(v88, v87))
        {
          break;
        }

        ++v86;
        if (!--v64)
        {
LABEL_90:
          LOBYTE(v67) = 0;
          goto LABEL_92;
        }
      }
    }

LABEL_91:
    v70 = 0;
    LOBYTE(v67) = 1;
LABEL_92:
    LOBYTE(v109[0]) = v67;
    v89 = v67;

    if ((v89 & 1) == 0)
    {
LABEL_94:
      v109[0] = v50;
      v109[1] = v49;
      sub_260E2EBA8(v101, v105, v57, v59, v109, v70, &v110);

      v90 = v111;
      v91 = v112;
      v92 = v114;
      v93 = v108;
      *v108 = v110;
      *(v93 + 2) = v90;
      *(v93 + 3) = v91;
      v93[2] = v113;
      *(v93 + 6) = v92;
      return;
    }

LABEL_93:
    v70 = 1;
    goto LABEL_94;
  }

  if (v64)
  {
    v67 = (v64 - 1);
    if (v64 != 1)
    {
      v70 = 0;
      v81 = &v110 + 1;
      while (1)
      {
        v82 = *v81 - 48;
        if (v82 > 9)
        {
          break;
        }

        v83 = 10 * v70;
        if ((v70 * 10) >> 64 != (10 * v70) >> 63)
        {
          break;
        }

        v70 = v83 + v82;
        if (__OFADD__(v83, v82))
        {
          break;
        }

        ++v81;
        if (!--v67)
        {
          goto LABEL_92;
        }
      }
    }

    goto LABEL_91;
  }

LABEL_103:
  __break(1u);
}

uint64_t sub_260E24B24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v8[44] = a7;
  v8[45] = a8;
  v8[42] = a5;
  v8[43] = a6;
  v8[40] = a3;
  v8[41] = a4;
  v8[38] = a1;
  v8[39] = a2;
  sub_260E15E4C(a7, a8);
  sub_260E15E4C(a7, a8);
  sub_260E15E4C(a7, a8);

  return MEMORY[0x2822009F8](sub_260E24BCC, a6, 0);
}

uint64_t sub_260E24BCC()
{
  v22 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[41];
  v2 = sub_260E68E94();
  v0[46] = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[40];
    v6 = v0[41];
    v8 = v0[39];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v7, &v21);
    *(v9 + 22) = 2080;
    v11 = [v6 recordName];
    v12 = sub_260E69024();
    v14 = v13;

    v15 = sub_260E43774(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_260E02000, v4, v5, "Fetch %s START {cacheName: %s, recordName: %s}", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  v16 = v0[40];
  v17 = *(v0[43] + 320);
  v0[32] = v0[39];
  v0[33] = v16;
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[47] = v18;
  *v18 = v0;
  v18[1] = sub_260E24EA4;

  return (v20)(v0 + 30, v0 + 32);
}

uint64_t sub_260E24EA4()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_260E2552C;
  }

  else
  {
    v2 = sub_260E24FB8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E24FD4(uint64_t a1)
{
  v51 = v1;
  v2 = *(v1 + 240);
  v3 = *(v1 + 248);
  *(v1 + 392) = v2;
  *(v1 + 400) = v3;
  v4 = sub_260E68E74();
  v5 = sub_260E69434();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v9 = *(v1 + 352);
    v8 = *(v1 + 360);

    sub_260E15E4C(v9, v8);
    v10 = swift_task_alloc();
    *(v1 + 432) = v10;
    *v10 = v1;
    v10[1] = sub_260E25CE4;
    v11 = *(v1 + 352);
    v12 = *(v1 + 360);
    v13 = *(v1 + 336);
    v14 = *(v1 + 344);
    v15 = *(v1 + 320);
    v16 = *(v1 + 328);
    v17 = *(v1 + 312);
    v18 = v1 + 72;
LABEL_11:

    return sub_260E28FF0(v18, v17, v15, v16, v13, v14, v11, v12);
  }

  if (v6)
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_260E02000, v4, v5, "Record exists locally. Loading.", v19, 2u);
    MEMORY[0x2666F1EF0](v19, -1, -1);
  }

  v20 = *(v1 + 384);

  sub_260E686C4();
  swift_allocObject();
  sub_260E686B4();
  sub_260E33758();
  sub_260E686A4();
  v21 = v20;
  *(v1 + 408) = v20;

  if (v20)
  {

    v22 = v20;
    v23 = sub_260E68E74();
    v24 = sub_260E69454();

    if (os_log_type_enabled(v23, v24))
    {
      v26 = *(v1 + 312);
      v25 = *(v1 + 320);
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v50[0] = v28;
      *v27 = 136315394;
      *(v1 + 296) = v21;
      v29 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v30 = sub_260E69084();
      v32 = sub_260E43774(v30, v31, v50);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2080;
      *(v27 + 14) = sub_260E43774(v26, v25, v50);
      _os_log_impl(&dword_260E02000, v23, v24, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v28, -1, -1);
      MEMORY[0x2666F1EF0](v27, -1, -1);
    }

    sub_260E15E4C(*(v1 + 352), *(v1 + 360));
    v33 = swift_task_alloc();
    *(v1 + 416) = v33;
    *v33 = v1;
    v33[1] = sub_260E2575C;
    v11 = *(v1 + 352);
    v12 = *(v1 + 360);
    v13 = *(v1 + 336);
    v14 = *(v1 + 344);
    v15 = *(v1 + 320);
    v16 = *(v1 + 328);
    v17 = *(v1 + 312);
    v18 = v1 + 184;
    goto LABEL_11;
  }

  v35 = sub_260E68E74();
  v36 = sub_260E69474();

  v37 = os_log_type_enabled(v35, v36);
  v39 = *(v1 + 352);
  v38 = *(v1 + 360);
  if (v37)
  {
    v40 = *(v1 + 312);
    v49 = *(v1 + 320);
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v50[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v50);
    *(v41 + 12) = 2080;
    *(v41 + 14) = sub_260E43774(v40, v49, v50);
    _os_log_impl(&dword_260E02000, v35, v36, "Fetch %s END -- Local load {filename: %s}", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v42, -1, -1);
    MEMORY[0x2666F1EF0](v41, -1, -1);
  }

  sub_260E16168(v2, v3);

  sub_260E15FB4(v39, v38);
  sub_260E15FB4(v39, v38);
  sub_260E15FB4(v39, v38);
  v43 = *(v1 + 304);
  v44 = *(v1 + 144);
  v45 = *(v1 + 152);
  v46 = *(v1 + 176);
  v47 = *(v1 + 160);
  *v43 = *(v1 + 128);
  *(v43 + 16) = v44;
  *(v43 + 24) = v45;
  *(v43 + 32) = v47;
  *(v43 + 48) = v46;
  sub_260E15FB4(*(v1 + 352), *(v1 + 360));
  v48 = *(v1 + 8);

  return v48();
}

uint64_t sub_260E25548()
{
  v24 = v0;
  v1 = v0[48];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[48];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315394;
    v0[34] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v23);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_260E43774(v7, v6, &v23);
    _os_log_impl(&dword_260E02000, v3, v4, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  sub_260E15E4C(v0[44], v0[45]);
  v14 = swift_task_alloc();
  v0[56] = v14;
  *v14 = v0;
  v14[1] = sub_260E26240;
  v15 = v0[44];
  v16 = v0[45];
  v17 = v0[42];
  v18 = v0[43];
  v19 = v0[40];
  v20 = v0[41];
  v21 = v0[39];

  return sub_260E28FF0((v0 + 2), v21, v19, v20, v17, v18, v15, v16);
}

uint64_t sub_260E2575C()
{
  v2 = *v1;
  *(*v1 + 424) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_260E25A9C;
  }

  else
  {
    v4 = sub_260E25888;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E25888()
{
  v23 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 400);
  v4 = *(v0 + 408);
  v6 = *(v0 + 392);
  v7 = *(v0 + 352);
  v8 = *(v0 + 360);
  if (v3)
  {
    v9 = *(v0 + 312);
    v20 = *(v0 + 320);
    v10 = swift_slowAlloc();
    v21 = v4;
    v22 = swift_slowAlloc();
    v11 = v22;
    *v10 = 136315394;
    *(v10 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v22);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_260E43774(v9, v20, &v22);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v11, -1, -1);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    sub_260E16168(v6, v5);
    v12 = v21;
  }

  else
  {
    sub_260E16168(*(v0 + 392), *(v0 + 400));
    v12 = v4;
  }

  sub_260E15FB4(v7, v8);
  sub_260E15FB4(v7, v8);
  sub_260E15FB4(v7, v8);
  v13 = *(v0 + 304);
  v14 = *(v0 + 200);
  v15 = *(v0 + 208);
  v16 = *(v0 + 232);
  v17 = *(v0 + 216);
  *v13 = *(v0 + 184);
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  *(v13 + 32) = v17;
  *(v13 + 48) = v16;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_260E25A9C()
{
  v22 = v0;
  v1 = v0[53];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[53];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v21);
    *(v8 + 12) = 2080;
    v0[36] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, v21);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_260E43774(v7, v6, v21);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v14 = v0[50];
  v15 = v0[51];
  v16 = v0[49];
  swift_willThrow();
  sub_260E16168(v16, v14);

  v18 = v0[44];
  v17 = v0[45];
  sub_260E15FB4(v18, v17);
  sub_260E15FB4(v18, v17);
  sub_260E15FB4(v18, v17);
  sub_260E15FB4(v18, v17);
  v19 = v0[1];

  return v19();
}

uint64_t sub_260E25CE4()
{
  v2 = *v1;
  *(*v1 + 440) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_260E26004;
  }

  else
  {
    v4 = sub_260E25E10;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E25E10()
{
  v20 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 392);
  v4 = *(v0 + 400);
  v6 = *(v0 + 352);
  v7 = *(v0 + 360);
  if (v3)
  {
    v8 = *(v0 + 312);
    v18 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v19);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v18, &v19);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s END -- load from CloudKit {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  sub_260E16168(v5, v4);

  sub_260E15FB4(v6, v7);
  sub_260E15FB4(v6, v7);
  sub_260E15FB4(v6, v7);
  v11 = *(v0 + 304);
  v12 = *(v0 + 88);
  v13 = *(v0 + 96);
  v14 = *(v0 + 120);
  v15 = *(v0 + 104);
  *v11 = *(v0 + 72);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v15;
  *(v11 + 48) = v14;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_260E26004()
{
  v21 = v0;
  v1 = v0[55];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[55];
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v20[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v20);
    *(v8 + 12) = 2080;
    v0[35] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, v20);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_260E43774(v7, v6, v20);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v14 = v0[49];
  v15 = v0[50];
  swift_willThrow();
  sub_260E16168(v14, v15);
  v17 = v0[44];
  v16 = v0[45];
  sub_260E15FB4(v17, v16);
  sub_260E15FB4(v17, v16);
  sub_260E15FB4(v17, v16);
  sub_260E15FB4(v17, v16);
  v18 = v0[1];

  return v18();
}

uint64_t sub_260E26240()
{
  v2 = *v1;
  *(*v1 + 456) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = sub_260E26558;
  }

  else
  {
    v4 = sub_260E2636C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E2636C()
{
  v19 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 384);
  v5 = *(v0 + 352);
  v6 = *(v0 + 360);
  if (v3)
  {
    v8 = *(v0 + 312);
    v7 = *(v0 + 320);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v18 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, &v18);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v7, &v18);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  sub_260E15FB4(v5, v6);
  sub_260E15FB4(v5, v6);
  sub_260E15FB4(v5, v6);
  v11 = *(v0 + 304);
  v12 = *(v0 + 32);
  v13 = *(v0 + 40);
  v14 = *(v0 + 64);
  v15 = *(v0 + 48);
  *v11 = *(v0 + 16);
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v15;
  *(v11 + 48) = v14;
  sub_260E15FB4(*(v0 + 352), *(v0 + 360));
  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_260E26558()
{
  v13 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69454();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[39];
    v3 = v0[40];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_260E43774(0x655263696C627550, 0xEC00000064726F63, v12);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_260E43774(v4, v3, v12);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v6, -1, -1);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  v7 = v0[48];
  swift_willThrow();

  v9 = v0[44];
  v8 = v0[45];
  sub_260E15FB4(v9, v8);
  sub_260E15FB4(v9, v8);
  sub_260E15FB4(v9, v8);
  sub_260E15FB4(v9, v8);
  v10 = v0[1];

  return v10();
}

uint64_t sub_260E26724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2822009F8](sub_260E2674C, a6, 0);
}

uint64_t sub_260E2674C()
{
  v22 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_260E68E94();
  v0[36] = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v7, &v21);
    *(v9 + 22) = 2080;
    v11 = [v6 recordName];
    v12 = sub_260E69024();
    v14 = v13;

    v15 = sub_260E43774(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_260E02000, v4, v5, "Fetch %s START {cacheName: %s, recordName: %s}", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  v16 = v0[32];
  v17 = *(v0[35] + 320);
  v0[24] = v0[31];
  v0[25] = v16;
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_260E26A30;

  return (v20)(v0 + 22, v0 + 24);
}

uint64_t sub_260E26A30()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_260E27060;
  }

  else
  {
    v2 = sub_260E26B44;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E26B60(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
  v4 = sub_260E68E74();
  v5 = sub_260E69434();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v1 + 352) = v8;
    *v8 = v1;
    v8[1] = sub_260E27798;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 56;
LABEL_11:

    return sub_260E2B268(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v16 = *(v1 + 304);

  sub_260E686C4();
  swift_allocObject();
  sub_260E686B4();
  sub_260E33970();
  sub_260E686A4();
  v17 = v16;
  *(v1 + 328) = v16;

  if (v16)
  {

    v18 = v16;
    v19 = sub_260E68E74();
    v20 = sub_260E69454();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v1 + 248);
      v21 = *(v1 + 256);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315394;
      *(v1 + 232) = v17;
      v25 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v26 = sub_260E69084();
      v28 = sub_260E43774(v26, v27, v42);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_260E43774(v22, v21, v42);
      _os_log_impl(&dword_260E02000, v19, v20, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v24, -1, -1);
      MEMORY[0x2666F1EF0](v23, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v1 + 336) = v29;
    *v29 = v1;
    v29[1] = sub_260E27288;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 136;
    goto LABEL_11;
  }

  v31 = sub_260E68E74();
  v32 = sub_260E69474();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = *(v1 + 248);
    v33 = *(v1 + 256);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v42);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_260E43774(v34, v33, v42);
    _os_log_impl(&dword_260E02000, v31, v32, "Fetch %s END -- Local load {filename: %s}", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v36, -1, -1);
    MEMORY[0x2666F1EF0](v35, -1, -1);
  }

  sub_260E16168(v2, v3);

  v37 = *(v1 + 240);
  v38 = *(v1 + 104);
  v39 = *(v1 + 128);
  v40 = *(v1 + 112);
  *v37 = *(v1 + 96);
  *(v37 + 8) = v38;
  *(v37 + 16) = v40;
  *(v37 + 32) = v39;
  v41 = *(v1 + 8);

  return v41();
}

uint64_t sub_260E2707C()
{
  v22 = v0;
  v1 = v0[38];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v0[26] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_260E43774(v7, v6, &v21);
    _os_log_impl(&dword_260E02000, v3, v4, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[46] = v14;
  *v14 = v0;
  v14[1] = sub_260E27C90;
  v15 = v0[34];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[33];
  v19 = v0[31];

  return sub_260E2B268((v0 + 2), v19, v17, v18, v15, v16);
}

uint64_t sub_260E27288()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E2757C;
  }

  else
  {
    v4 = sub_260E273B4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E273B4()
{
  v18 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 320);
  v4 = *(v0 + 328);
  v6 = *(v0 + 312);
  if (v3)
  {
    v8 = *(v0 + 248);
    v7 = *(v0 + 256);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v17);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v7, &v17);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s END -- fallback to CloudKit [2] {cacheName: %s}", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  sub_260E16168(v6, v5);

  v11 = *(v0 + 240);
  v12 = *(v0 + 144);
  v13 = *(v0 + 168);
  v14 = *(v0 + 152);
  *v11 = *(v0 + 136);
  *(v11 + 8) = v12;
  *(v11 + 16) = v14;
  *(v11 + 32) = v13;
  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_260E2757C()
{
  v20 = v0;
  v1 = v0[43];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[43];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v19);
    *(v8 + 12) = 2080;
    v0[28] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, v19);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_260E43774(v7, v6, v19);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s FAIL -- fallback to CloudKit [2] {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v14 = v0[40];
  v15 = v0[41];
  v16 = v0[39];
  swift_willThrow();
  sub_260E16168(v16, v14);

  v17 = v0[1];

  return v17();
}

uint64_t sub_260E27798()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E27A80;
  }

  else
  {
    v4 = sub_260E278C4;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E278C4()
{
  v17 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v5 = *(v0 + 312);
  v4 = *(v0 + 320);
  if (v3)
  {
    v7 = *(v0 + 248);
    v6 = *(v0 + 256);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315394;
    *(v8 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_260E43774(v7, v6, &v16);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s END -- load from CloudKit {cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  sub_260E16168(v5, v4);

  v10 = *(v0 + 240);
  v11 = *(v0 + 64);
  v12 = *(v0 + 88);
  v13 = *(v0 + 72);
  *v10 = *(v0 + 56);
  *(v10 + 8) = v11;
  *(v10 + 16) = v13;
  *(v10 + 32) = v12;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_260E27A80()
{
  v19 = v0;
  v1 = v0[45];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[45];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18[0] = v9;
    *v8 = 136315650;
    *(v8 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v18);
    *(v8 + 12) = 2080;
    v0[27] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, v18);

    *(v8 + 14) = v13;
    *(v8 + 22) = 2080;
    *(v8 + 24) = sub_260E43774(v7, v6, v18);
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch %s FAIL -- load from CloudKit {error: %s, cacheName: %s}", v8, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v14 = v0[39];
  v15 = v0[40];
  swift_willThrow();
  sub_260E16168(v14, v15);
  v16 = v0[1];

  return v16();
}

uint64_t sub_260E27C90()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E27F6C;
  }

  else
  {
    v4 = sub_260E27DBC;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E27DBC()
{
  v16 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 304);
  if (v3)
  {
    v6 = *(v0 + 248);
    v5 = *(v0 + 256);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v15);
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_260E43774(v6, v5, &v15);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s END -- fallback to CloudKit [1] {cacheName: %s}", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v9 = *(v0 + 240);
  v10 = *(v0 + 24);
  v11 = *(v0 + 48);
  v12 = *(v0 + 32);
  *v9 = *(v0 + 16);
  *(v9 + 8) = v10;
  *(v9 + 16) = v12;
  *(v9 + 32) = v11;
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_260E27F6C()
{
  v11 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69454();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[31];
    v3 = v0[32];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315394;
    *(v5 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v10);
    *(v5 + 12) = 2080;
    *(v5 + 14) = sub_260E43774(v4, v3, v10);
    _os_log_impl(&dword_260E02000, v1, v2, "Fetch %s FAIL -- fallback to CloudKit [1] {cacheName: %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v6, -1, -1);
    MEMORY[0x2666F1EF0](v5, -1, -1);
  }

  v7 = v0[38];
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_260E28108(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[34] = a5;
  v6[35] = a6;
  v6[32] = a3;
  v6[33] = a4;
  v6[30] = a1;
  v6[31] = a2;
  return MEMORY[0x2822009F8](sub_260E28130, a6, 0);
}

uint64_t sub_260E28130()
{
  v22 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = v0[33];
  v2 = sub_260E68E94();
  v0[36] = __swift_project_value_buffer(v2, qword_27FE54540);

  v3 = v1;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[32];
    v6 = v0[33];
    v8 = v0[31];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, &v21);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_260E43774(v8, v7, &v21);
    *(v9 + 22) = 2080;
    v11 = [v6 recordName];
    v12 = sub_260E69024();
    v14 = v13;

    v15 = sub_260E43774(v12, v14, &v21);

    *(v9 + 24) = v15;
    _os_log_impl(&dword_260E02000, v4, v5, "Fetch %s START {cacheName: %s, recordName: %s}", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v9, -1, -1);
  }

  v16 = v0[32];
  v17 = *(v0[35] + 320);
  v0[24] = v0[31];
  v0[25] = v16;
  v20 = (v17 + *v17);
  v18 = swift_task_alloc();
  v0[37] = v18;
  *v18 = v0;
  v18[1] = sub_260E28414;

  return (v20)(v0 + 22, v0 + 24);
}

uint64_t sub_260E28414()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_260E28A44;
  }

  else
  {
    v2 = sub_260E28528;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E28544(uint64_t a1)
{
  v43 = v1;
  v2 = *(v1 + 176);
  v3 = *(v1 + 184);
  *(v1 + 312) = v2;
  *(v1 + 320) = v3;
  v4 = sub_260E68E74();
  v5 = sub_260E69434();
  v6 = os_log_type_enabled(v4, v5);
  if (v3 >> 60 == 15)
  {
    if (v6)
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_260E02000, v4, v5, "No local record -- loading from CloudKit", v7, 2u);
      MEMORY[0x2666F1EF0](v7, -1, -1);
    }

    v8 = swift_task_alloc();
    *(v1 + 352) = v8;
    *v8 = v1;
    v8[1] = sub_260E28D98;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 56;
LABEL_11:

    return sub_260E2A2E0(v14, v13, v11, v12, v9, v10);
  }

  if (v6)
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_260E02000, v4, v5, "Record exists locally. Loading.", v15, 2u);
    MEMORY[0x2666F1EF0](v15, -1, -1);
  }

  v16 = *(v1 + 304);

  sub_260E686C4();
  swift_allocObject();
  sub_260E686B4();
  sub_260E33970();
  sub_260E686A4();
  v17 = v16;
  *(v1 + 328) = v16;

  if (v16)
  {

    v18 = v16;
    v19 = sub_260E68E74();
    v20 = sub_260E69454();

    if (os_log_type_enabled(v19, v20))
    {
      v22 = *(v1 + 248);
      v21 = *(v1 + 256);
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v42[0] = v24;
      *v23 = 136315394;
      *(v1 + 232) = v17;
      v25 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v26 = sub_260E69084();
      v28 = sub_260E43774(v26, v27, v42);

      *(v23 + 4) = v28;
      *(v23 + 12) = 2080;
      *(v23 + 14) = sub_260E43774(v22, v21, v42);
      _os_log_impl(&dword_260E02000, v19, v20, "Error decoding local record -- fallback to CloudKit {error: %s, cacheName: %s}", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2666F1EF0](v24, -1, -1);
      MEMORY[0x2666F1EF0](v23, -1, -1);
    }

    v29 = swift_task_alloc();
    *(v1 + 336) = v29;
    *v29 = v1;
    v29[1] = sub_260E28C6C;
    v9 = *(v1 + 272);
    v10 = *(v1 + 280);
    v11 = *(v1 + 256);
    v12 = *(v1 + 264);
    v13 = *(v1 + 248);
    v14 = v1 + 136;
    goto LABEL_11;
  }

  v31 = sub_260E68E74();
  v32 = sub_260E69474();

  if (os_log_type_enabled(v31, v32))
  {
    v34 = *(v1 + 248);
    v33 = *(v1 + 256);
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42[0] = v36;
    *v35 = 136315394;
    *(v35 + 4) = sub_260E43774(0x5265746176697250, 0xED000064726F6365, v42);
    *(v35 + 12) = 2080;
    *(v35 + 14) = sub_260E43774(v34, v33, v42);
    _os_log_impl(&dword_260E02000, v31, v32, "Fetch %s END -- Local load {filename: %s}", v35, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v36, -1, -1);
    MEMORY[0x2666F1EF0](v35, -1, -1);
  }

  sub_260E16168(v2, v3);

  v37 = *(v1 + 240);
  v38 = *(v1 + 104);
  v39 = *(v1 + 128);
  v40 = *(v1 + 112);
  *v37 = *(v1 + 96);
  *(v37 + 8) = v38;
  *(v37 + 16) = v40;
  *(v37 + 32) = v39;
  v41 = *(v1 + 8);

  return v41();
}

uint64_t sub_260E28A60()
{
  v22 = v0;
  v1 = v0[38];

  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69454();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[38];
    v7 = v0[31];
    v6 = v0[32];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136315394;
    v0[26] = v5;
    v10 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v11 = sub_260E69084();
    v13 = sub_260E43774(v11, v12, &v21);

    *(v8 + 4) = v13;
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_260E43774(v7, v6, &v21);
    _os_log_impl(&dword_260E02000, v3, v4, "Error reading local data -- fallback to CloudKit {error: %s, cacheName: %s}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v14 = swift_task_alloc();
  v0[46] = v14;
  *v14 = v0;
  v14[1] = sub_260E28EC4;
  v15 = v0[34];
  v16 = v0[35];
  v17 = v0[32];
  v18 = v0[33];
  v19 = v0[31];

  return sub_260E2A2E0((v0 + 2), v19, v17, v18, v15, v16);
}

uint64_t sub_260E28C6C()
{
  v2 = *v1;
  *(*v1 + 344) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E34384;
  }

  else
  {
    v4 = sub_260E3437C;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E28D98()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E343B0;
  }

  else
  {
    v4 = sub_260E34394;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E28EC4()
{
  v2 = *v1;
  *(*v1 + 376) = v0;

  v3 = *(v2 + 280);
  if (v0)
  {
    v4 = sub_260E343AC;
  }

  else
  {
    v4 = sub_260E34378;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_260E28FF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a5;
  v8[17] = a6;
  v8[14] = a3;
  v8[15] = a4;
  v8[12] = a1;
  v8[13] = a2;
  v10 = sub_260E689E4();
  v8[20] = v10;
  v8[21] = *(v10 - 8);
  v8[22] = swift_task_alloc();
  v8[23] = swift_task_alloc();
  v8[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E290D8, a6, 0);
}

uint64_t sub_260E290D8()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[13];
  v1 = v0[14];
  v3 = sub_260E68E94();
  v4 = __swift_project_value_buffer(v3, qword_27FE54540);
  v0[25] = v4;
  sub_260E69644();

  MEMORY[0x2666F0C00](v2, v1);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v0[26] = 0x8000000260E72840;

  v5 = swift_task_alloc();
  v0[27] = v5;
  *v5 = v0;
  v5[1] = sub_260E2926C;
  v6 = v0[17];
  v7 = v0[13];
  v8 = v0[14];

  return sub_260E67AB4(0xD00000000000001FLL, 0x8000000260E72840, v4, v6, v7, v8);
}

uint64_t sub_260E2926C()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_260E293C4, v1, 0);
}

uint64_t sub_260E293C4()
{
  v1 = v0[15];
  sub_260E689B4();
  v2 = v1;
  v3 = sub_260E68E74();
  v4 = sub_260E69474();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[15];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    *(v6 + 4) = v5;
    *v7 = v5;
    v8 = v5;
    _os_log_impl(&dword_260E02000, v3, v4, "Fetch CloudKit Record START {recordID: %@}", v6, 0xCu);
    sub_260E155E4(v7, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  v10 = v0[15];
  v9 = v0[16];

  v0[10] = v10;
  v13 = (*(v9 + 16) + **(v9 + 16));
  v11 = swift_task_alloc();
  v0[28] = v11;
  *v11 = v0;
  v11[1] = sub_260E295A8;

  return v13(v0 + 9, v0 + 10);
}

uint64_t sub_260E295A8()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_260E29E44;
  }

  else
  {
    v2 = sub_260E296BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E296BC()
{
  v1 = v0[17];
  v0[30] = v0[9];
  return MEMORY[0x2822009F8](sub_260E296E0, v1, 0);
}

uint64_t sub_260E296E0()
{
  v79 = v0;
  v1 = *(v0 + 240);
  if (!v1)
  {
    v22 = *(v0 + 120);
    v23 = sub_260E68E74();
    v24 = sub_260E69454();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 120);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_260E02000, v23, v24, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v26, 0xCu);
      sub_260E155E4(v27, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v27, -1, -1);
      MEMORY[0x2666F1EF0](v26, -1, -1);
    }

    sub_260E15590();
    v29 = swift_allocError();
    *v30 = xmmword_260E6C9E0;
    *(v30 + 16) = 2;
    swift_willThrow();
    v31 = *(v0 + 120);
    (*(*(v0 + 168) + 8))(*(v0 + 192), *(v0 + 160));
    v32 = v31;
    v33 = v29;
    v34 = sub_260E68E74();
    v35 = sub_260E69454();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 120);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v77 = v39;
      *v37 = 136315394;
      *(v0 + 88) = v29;
      v40 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v41 = sub_260E69084();
      v43 = sub_260E43774(v41, v42, &v77);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v36;
      *v38 = v36;
      v44 = v36;
      _os_log_impl(&dword_260E02000, v34, v35, "### Error fetching from CloudKit {error: %s, recordID: %@}", v37, 0x16u);
      sub_260E155E4(v38, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x2666F1EF0](v39, -1, -1);
      MEMORY[0x2666F1EF0](v37, -1, -1);
    }

    v46 = *(v0 + 144);
    v45 = *(v0 + 152);
    swift_allocError();
    v48 = v47;
    v49 = v29;
    sub_260E1A348(v29, v48);
    swift_willThrow();

    v50 = v46;
    v51 = v45;
    goto LABEL_14;
  }

  v2 = (v0 + 16);
  v3 = *(v0 + 120);
  (*(*(v0 + 168) + 16))(*(v0 + 184), *(v0 + 192), *(v0 + 160));
  v4 = v3;
  v5 = v1;
  v6 = sub_260E68E74();
  v7 = sub_260E69474();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 184);
  v9 = *(v0 + 192);
  if (v8)
  {
    v75 = *(v0 + 192);
    v76 = v5;
    v12 = *(v0 + 168);
    v11 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 120);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2048;
    v17 = v14;
    sub_260E689B4();
    sub_260E689A4();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v20(v10, v13);
    *(v15 + 14) = v19;
    _os_log_impl(&dword_260E02000, v6, v7, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v15, 0x16u);
    sub_260E155E4(v16, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v16, -1, -1);
    v21 = v15;
    v2 = (v0 + 16);
    MEMORY[0x2666F1EF0](v21, -1, -1);

    v20(v75, v13);
    v5 = v76;
  }

  else
  {
    v53 = *(v0 + 160);
    v52 = *(v0 + 168);

    v54 = *(v52 + 8);
    v54(v10, v53);
    v54(v9, v53);
  }

  v55 = sub_260E68E74();
  v56 = sub_260E69474();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_260E02000, v55, v56, "Will parse public cloudkit record", v57, 2u);
    MEMORY[0x2666F1EF0](v57, -1, -1);
  }

  v58 = *(v0 + 232);
  v60 = *(v0 + 144);
  v59 = *(v0 + 152);

  v77 = v60;
  v78 = v59;
  sub_260E15E4C(v60, v59);
  sub_260E240B4(v5, &v77, v2);
  if (v58)
  {
    v62 = *(v0 + 144);
    v61 = *(v0 + 152);

    v50 = v62;
    v51 = v61;
LABEL_14:
    sub_260E15FB4(v50, v51);

    v63 = *(v0 + 8);

    return v63();
  }

  v65 = sub_260E68E74();
  v66 = sub_260E69474();
  if (os_log_type_enabled(v65, v66))
  {
    v67 = swift_slowAlloc();
    *v67 = 0;
    _os_log_impl(&dword_260E02000, v65, v66, "Did parse public cloudkit record", v67, 2u);
    MEMORY[0x2666F1EF0](v67, -1, -1);
  }

  v68 = *(v0 + 136);
  v70 = *(v0 + 104);
  v69 = *(v0 + 112);

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_260E69644();

  v77 = 0xD000000000000018;
  v78 = 0x8000000260E72860;
  MEMORY[0x2666F0C00](v70, v69);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v72 = v77;
  v71 = v78;
  *(v0 + 248) = v78;
  v73 = swift_task_alloc();
  *(v0 + 256) = v73;
  v73[2] = v70;
  v73[3] = v69;
  v73[4] = v2;
  v73[5] = v68;
  v74 = swift_task_alloc();
  *(v0 + 264) = v74;
  *v74 = v0;
  v74[1] = sub_260E2A0C8;

  return sub_260E67764(v72, v71, dword_260E6D670);
}

uint64_t sub_260E29E60()
{
  v24 = v0;
  v1 = v0[29];
  v2 = v0[15];
  (*(v0[21] + 8))(v0[24], v0[20]);
  v3 = v2;
  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[15];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v23 = v10;
    *v8 = 136315394;
    v0[11] = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v12 = sub_260E69084();
    v14 = sub_260E43774(v12, v13, &v23);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v15 = v7;
    _os_log_impl(&dword_260E02000, v5, v6, "### Error fetching from CloudKit {error: %s, recordID: %@}", v8, 0x16u);
    sub_260E155E4(v9, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  v17 = v0[18];
  v16 = v0[19];
  sub_260E15590();
  swift_allocError();
  v19 = v18;
  v20 = v1;
  sub_260E1A348(v1, v19);
  swift_willThrow();

  sub_260E15FB4(v17, v16);

  v21 = v0[1];

  return v21();
}

uint64_t sub_260E2A0C8()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x2822009F8](sub_260E2A218, v1, 0);
}

uint64_t sub_260E2A218()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 96);

  sub_260E15FB4(v2, v1);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 64);
  v7 = *(v0 + 48);
  *v3 = *(v0 + 16);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v7;
  *(v3 + 48) = v6;

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_260E2A2E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v8 = sub_260E689E4();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E2A3C4, a6, 0);
}

uint64_t sub_260E2A3C4()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = sub_260E68E94();
  v4 = __swift_project_value_buffer(v3, qword_27FE54540);
  v0[21] = v4;
  sub_260E69644();

  MEMORY[0x2666F0C00](v2, v1);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v0[22] = 0x8000000260E72840;

  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_260E2A558;
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];

  return sub_260E67AB4(0xD00000000000001FLL, 0x8000000260E72840, v4, v6, v7, v8);
}

uint64_t sub_260E2A558()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_260E2A6B0, v1, 0);
}

uint64_t sub_260E2A6B0(uint64_t a1)
{
  v2 = v1[13];
  sub_260E689B4();
  v3 = v2;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_260E02000, v4, v5, "Fetch CloudKit Record START {recordID: %@}", v7, 0xCu);
    sub_260E155E4(v8, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v11 = v1[13];
  v10 = v1[14];

  v1[8] = v11;
  v14 = (*(v10 + 16) + **(v10 + 16));
  v12 = swift_task_alloc();
  v1[24] = v12;
  *v12 = v1;
  v12[1] = sub_260E2A894;

  return v14(v1 + 7, v1 + 8);
}

uint64_t sub_260E2A894()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_260E2B0FC;
  }

  else
  {
    v2 = sub_260E2A9A8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E2A9A8()
{
  v1 = v0[15];
  v0[26] = v0[7];
  return MEMORY[0x2822009F8](sub_260E2A9CC, v1, 0);
}

uint64_t sub_260E2A9CC()
{
  v68 = v0;
  v1 = *(v0 + 208);
  if (!v1)
  {
    v22 = *(v0 + 104);
    v23 = sub_260E68E74();
    v24 = sub_260E69454();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 104);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_260E02000, v23, v24, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v26, 0xCu);
      sub_260E155E4(v27, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v27, -1, -1);
      MEMORY[0x2666F1EF0](v26, -1, -1);
    }

    sub_260E15590();
    v29 = swift_allocError();
    *v30 = xmmword_260E6C9E0;
    *(v30 + 16) = 2;
    swift_willThrow();
    v31 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v32 = v31;
    v33 = v29;
    v34 = sub_260E68E74();
    v35 = sub_260E69454();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 104);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67[0] = v39;
      *v37 = 136315394;
      *(v0 + 72) = v29;
      v40 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v41 = sub_260E69084();
      v43 = sub_260E43774(v41, v42, v67);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v36;
      *v38 = v36;
      v44 = v36;
      _os_log_impl(&dword_260E02000, v34, v35, "### Error fetching from CloudKit {error: %s, recordID: %@}", v37, 0x16u);
      sub_260E155E4(v38, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x2666F1EF0](v39, -1, -1);
      MEMORY[0x2666F1EF0](v37, -1, -1);
    }

    swift_allocError();
    v46 = v45;
    v47 = v29;
    sub_260E1A348(v29, v46);
    swift_willThrow();

    goto LABEL_14;
  }

  v2 = (v0 + 16);
  v3 = *(v0 + 104);
  (*(*(v0 + 136) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
  v4 = v3;
  v5 = v1;
  v6 = sub_260E68E74();
  v7 = sub_260E69474();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  if (v8)
  {
    v65 = *(v0 + 160);
    v66 = v5;
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2048;
    v17 = v14;
    sub_260E689B4();
    sub_260E689A4();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v20(v10, v13);
    *(v15 + 14) = v19;
    _os_log_impl(&dword_260E02000, v6, v7, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v15, 0x16u);
    sub_260E155E4(v16, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v16, -1, -1);
    v21 = v15;
    v2 = (v0 + 16);
    MEMORY[0x2666F1EF0](v21, -1, -1);

    v20(v65, v13);
    v5 = v66;
  }

  else
  {
    v49 = *(v0 + 128);
    v48 = *(v0 + 136);

    v50 = *(v48 + 8);
    v50(v10, v49);
    v50(v9, v49);
  }

  v51 = sub_260E68E74();
  v52 = sub_260E69474();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_260E02000, v51, v52, "Will parse public cloudkit record", v53, 2u);
    MEMORY[0x2666F1EF0](v53, -1, -1);
  }

  v54 = *(v0 + 200);

  sub_260E23B14(v5, v2);
  if (v54)
  {

LABEL_14:

    v55 = *(v0 + 8);

    return v55();
  }

  v57 = sub_260E68E74();
  v58 = sub_260E69474();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_260E02000, v57, v58, "Did parse public cloudkit record", v59, 2u);
    MEMORY[0x2666F1EF0](v59, -1, -1);
  }

  v60 = *(v0 + 120);
  v62 = *(v0 + 88);
  v61 = *(v0 + 96);

  sub_260E69644();

  v67[0] = 0xD000000000000018;
  v67[1] = 0x8000000260E72860;
  MEMORY[0x2666F0C00](v62, v61);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  *(v0 + 216) = 0x8000000260E72860;
  v63 = swift_task_alloc();
  *(v0 + 224) = v63;
  v63[2] = v62;
  v63[3] = v61;
  v63[4] = v2;
  v63[5] = v60;
  v64 = swift_task_alloc();
  *(v0 + 232) = v64;
  *v64 = v0;
  v64[1] = sub_260E2B118;

  return sub_260E67764(0xD000000000000018, 0x8000000260E72860, dword_260E6D6C0);
}

uint64_t sub_260E2B118()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_260E34380, v1, 0);
}

uint64_t sub_260E2B268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[14] = a5;
  v6[15] = a6;
  v6[12] = a3;
  v6[13] = a4;
  v6[10] = a1;
  v6[11] = a2;
  v8 = sub_260E689E4();
  v6[16] = v8;
  v6[17] = *(v8 - 8);
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_260E2B34C, a6, 0);
}

uint64_t sub_260E2B34C()
{
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = sub_260E68E94();
  v4 = __swift_project_value_buffer(v3, qword_27FE54540);
  v0[21] = v4;
  sub_260E69644();

  MEMORY[0x2666F0C00](v2, v1);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v0[22] = 0x8000000260E72840;

  v5 = swift_task_alloc();
  v0[23] = v5;
  *v5 = v0;
  v5[1] = sub_260E2B4E0;
  v6 = v0[15];
  v7 = v0[11];
  v8 = v0[12];

  return sub_260E67AB4(0xD00000000000001FLL, 0x8000000260E72840, v4, v6, v7, v8);
}

uint64_t sub_260E2B4E0()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_260E2B638, v1, 0);
}

uint64_t sub_260E2B638(uint64_t a1)
{
  v2 = v1[13];
  sub_260E689B4();
  v3 = v2;
  v4 = sub_260E68E74();
  v5 = sub_260E69474();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v1[13];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v6;
    *v8 = v6;
    v9 = v6;
    _os_log_impl(&dword_260E02000, v4, v5, "Fetch CloudKit Record START {recordID: %@}", v7, 0xCu);
    sub_260E155E4(v8, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v8, -1, -1);
    MEMORY[0x2666F1EF0](v7, -1, -1);
  }

  v11 = v1[13];
  v10 = v1[14];

  v1[8] = v11;
  v14 = (*(v10 + 16) + **(v10 + 16));
  v12 = swift_task_alloc();
  v1[24] = v12;
  *v12 = v1;
  v12[1] = sub_260E2B81C;

  return v14(v1 + 7, v1 + 8);
}

uint64_t sub_260E2B81C()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_260E2C084;
  }

  else
  {
    v2 = sub_260E2B930;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E2B930()
{
  v1 = v0[15];
  v0[26] = v0[7];
  return MEMORY[0x2822009F8](sub_260E2B954, v1, 0);
}

uint64_t sub_260E2B954()
{
  v68 = v0;
  v1 = *(v0 + 208);
  if (!v1)
  {
    v22 = *(v0 + 104);
    v23 = sub_260E68E74();
    v24 = sub_260E69454();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = *(v0 + 104);
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      *v26 = 138412290;
      *(v26 + 4) = v25;
      *v27 = v25;
      v28 = v25;
      _os_log_impl(&dword_260E02000, v23, v24, "Fetch CloudKit Record FAILED -- Record doesn't exist {recordID: %@}", v26, 0xCu);
      sub_260E155E4(v27, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v27, -1, -1);
      MEMORY[0x2666F1EF0](v26, -1, -1);
    }

    sub_260E15590();
    v29 = swift_allocError();
    *v30 = xmmword_260E6C9E0;
    *(v30 + 16) = 2;
    swift_willThrow();
    v31 = *(v0 + 104);
    (*(*(v0 + 136) + 8))(*(v0 + 160), *(v0 + 128));
    v32 = v31;
    v33 = v29;
    v34 = sub_260E68E74();
    v35 = sub_260E69454();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = *(v0 + 104);
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v67[0] = v39;
      *v37 = 136315394;
      *(v0 + 72) = v29;
      v40 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
      v41 = sub_260E69084();
      v43 = sub_260E43774(v41, v42, v67);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2112;
      *(v37 + 14) = v36;
      *v38 = v36;
      v44 = v36;
      _os_log_impl(&dword_260E02000, v34, v35, "### Error fetching from CloudKit {error: %s, recordID: %@}", v37, 0x16u);
      sub_260E155E4(v38, &qword_27FE542F0, &unk_260E6BFF0);
      MEMORY[0x2666F1EF0](v38, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x2666F1EF0](v39, -1, -1);
      MEMORY[0x2666F1EF0](v37, -1, -1);
    }

    swift_allocError();
    v46 = v45;
    v47 = v29;
    sub_260E1A348(v29, v46);
    swift_willThrow();

    goto LABEL_14;
  }

  v2 = (v0 + 16);
  v3 = *(v0 + 104);
  (*(*(v0 + 136) + 16))(*(v0 + 152), *(v0 + 160), *(v0 + 128));
  v4 = v3;
  v5 = v1;
  v6 = sub_260E68E74();
  v7 = sub_260E69474();

  v8 = os_log_type_enabled(v6, v7);
  v10 = *(v0 + 152);
  v9 = *(v0 + 160);
  if (v8)
  {
    v65 = *(v0 + 160);
    v66 = v5;
    v12 = *(v0 + 136);
    v11 = *(v0 + 144);
    v13 = *(v0 + 128);
    v14 = *(v0 + 104);
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v15 = 138412546;
    *(v15 + 4) = v14;
    *v16 = v14;
    *(v15 + 12) = 2048;
    v17 = v14;
    sub_260E689B4();
    sub_260E689A4();
    v19 = v18;
    v20 = *(v12 + 8);
    v20(v11, v13);
    v20(v10, v13);
    *(v15 + 14) = v19;
    _os_log_impl(&dword_260E02000, v6, v7, "Fetch CloudKit Record END {recordID: %@, duration: %f}", v15, 0x16u);
    sub_260E155E4(v16, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v16, -1, -1);
    v21 = v15;
    v2 = (v0 + 16);
    MEMORY[0x2666F1EF0](v21, -1, -1);

    v20(v65, v13);
    v5 = v66;
  }

  else
  {
    v49 = *(v0 + 128);
    v48 = *(v0 + 136);

    v50 = *(v48 + 8);
    v50(v10, v49);
    v50(v9, v49);
  }

  v51 = sub_260E68E74();
  v52 = sub_260E69474();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&dword_260E02000, v51, v52, "Will parse public cloudkit record", v53, 2u);
    MEMORY[0x2666F1EF0](v53, -1, -1);
  }

  v54 = *(v0 + 200);

  sub_260E23B14(v5, v2);
  if (v54)
  {

LABEL_14:

    v55 = *(v0 + 8);

    return v55();
  }

  v57 = sub_260E68E74();
  v58 = sub_260E69474();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 0;
    _os_log_impl(&dword_260E02000, v57, v58, "Did parse public cloudkit record", v59, 2u);
    MEMORY[0x2666F1EF0](v59, -1, -1);
  }

  v60 = *(v0 + 120);
  v62 = *(v0 + 88);
  v61 = *(v0 + 96);

  sub_260E69644();

  v67[0] = 0xD000000000000018;
  v67[1] = 0x8000000260E72860;
  MEMORY[0x2666F0C00](v62, v61);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  *(v0 + 216) = 0x8000000260E72860;
  v63 = swift_task_alloc();
  *(v0 + 224) = v63;
  v63[2] = v62;
  v63[3] = v61;
  v63[4] = v2;
  v63[5] = v60;
  v64 = swift_task_alloc();
  *(v0 + 232) = v64;
  *v64 = v0;
  v64[1] = sub_260E2C2F4;

  return sub_260E67764(0xD000000000000018, 0x8000000260E72860, &unk_260E6D6D8);
}

uint64_t sub_260E2C0A0()
{
  v22 = v0;
  v1 = v0[25];
  v2 = v0[13];
  (*(v0[17] + 8))(v0[20], v0[16]);
  v3 = v2;
  v4 = v1;
  v5 = sub_260E68E74();
  v6 = sub_260E69454();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = v0[13];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v8 = 136315394;
    v0[9] = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v12 = sub_260E69084();
    v14 = sub_260E43774(v12, v13, &v21);

    *(v8 + 4) = v14;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v7;
    *v9 = v7;
    v15 = v7;
    _os_log_impl(&dword_260E02000, v5, v6, "### Error fetching from CloudKit {error: %s, recordID: %@}", v8, 0x16u);
    sub_260E155E4(v9, &qword_27FE542F0, &unk_260E6BFF0);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x2666F1EF0](v10, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  sub_260E15590();
  swift_allocError();
  v17 = v16;
  v18 = v1;
  sub_260E1A348(v1, v17);
  swift_willThrow();

  v19 = v0[1];

  return v19();
}

uint64_t sub_260E2C2F4()
{
  v1 = *(*v0 + 120);

  return MEMORY[0x2822009F8](sub_260E2C444, v1, 0);
}

uint64_t sub_260E2C444()
{
  v1 = *(v0 + 80);

  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  *v1 = *(v0 + 16);
  *(v1 + 8) = v2;
  *(v1 + 16) = v4;
  *(v1 + 32) = v3;

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_260E2C4EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 112) = a2;
  *(v4 + 120) = a4;
  *(v4 + 104) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  return MEMORY[0x2822009F8](sub_260E2C528, a4, 0);
}

uint64_t sub_260E2C528()
{
  v20 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[16] = __swift_project_value_buffer(v1, qword_27FE54540);

  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[13];
    v4 = v0[14];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_260E43774(v5, v4, &v19);
    _os_log_impl(&dword_260E02000, v2, v3, "Will cache record {filename: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  sub_260E686F4();
  swift_allocObject();
  sub_260E686E4();
  sub_260E3386C();
  v8 = sub_260E686D4();
  v0[17] = v8;
  v0[18] = v9;
  v10 = v8;
  v11 = v9;
  v13 = v0[14];
  v12 = v0[15];
  v14 = v0[13];

  v15 = *(v12 + 304);
  v0[9] = v14;
  v0[10] = v13;
  v0[11] = v10;
  v0[12] = v11;
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[19] = v16;
  *v16 = v0;
  v16[1] = sub_260E2C804;

  return (v18)(v0 + 9, v0 + 11);
}

uint64_t sub_260E2C804()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_260E2CA90;
  }

  else
  {
    v2 = sub_260E2C918;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E2C934()
{
  v13 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[17];
  v4 = v0[18];
  if (v3)
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_260E43774(v7, v6, &v12);
    _os_log_impl(&dword_260E02000, v1, v2, "Did cache record {filename: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  sub_260E15FB4(v5, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_260E2CAAC()
{
  sub_260E15FB4(v0[17], v0[18]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_260E2CB10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 96) = a2;
  *(v4 + 104) = a4;
  *(v4 + 88) = a1;
  v5 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v5;
  *(v4 + 48) = *(a3 + 32);
  return MEMORY[0x2822009F8](sub_260E2CB44, a4, 0);
}

uint64_t sub_260E2CB44()
{
  v20 = v0;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v1 = sub_260E68E94();
  v0[14] = __swift_project_value_buffer(v1, qword_27FE54540);

  v2 = sub_260E68E74();
  v3 = sub_260E69474();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[11];
    v4 = v0[12];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v19 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_260E43774(v5, v4, &v19);
    _os_log_impl(&dword_260E02000, v2, v3, "Will cache record {filename: %s}", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2666F1EF0](v7, -1, -1);
    MEMORY[0x2666F1EF0](v6, -1, -1);
  }

  sub_260E686F4();
  swift_allocObject();
  sub_260E686E4();
  sub_260E33704();
  v8 = sub_260E686D4();
  v0[15] = v8;
  v0[16] = v9;
  v10 = v8;
  v11 = v9;
  v13 = v0[12];
  v12 = v0[13];
  v14 = v0[11];

  v15 = *(v12 + 304);
  v0[7] = v14;
  v0[8] = v13;
  v0[9] = v10;
  v0[10] = v11;
  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  v0[17] = v16;
  *v16 = v0;
  v16[1] = sub_260E2CE20;

  return (v18)(v0 + 7, v0 + 9);
}

uint64_t sub_260E2CE20()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_260E2D0AC;
  }

  else
  {
    v2 = sub_260E2CF34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E2CF50()
{
  v13 = v0;

  v1 = sub_260E68E74();
  v2 = sub_260E69474();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[15];
  v4 = v0[16];
  if (v3)
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v12 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_260E43774(v7, v6, &v12);
    _os_log_impl(&dword_260E02000, v1, v2, "Did cache record {filename: %s}", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x2666F1EF0](v9, -1, -1);
    MEMORY[0x2666F1EF0](v8, -1, -1);
  }

  sub_260E15FB4(v5, v4);

  v10 = v0[1];

  return v10();
}

uint64_t sub_260E2D0C8()
{
  sub_260E15FB4(v0[15], v0[16]);
  v1 = v0[1];

  return v1();
}

uint64_t PersonalizationAssetManager.deinit()
{
  v1 = *(v0 + 320);
  v10[12] = *(v0 + 304);
  v10[13] = v1;
  v2 = *(v0 + 352);
  v10[14] = *(v0 + 336);
  v10[15] = v2;
  v3 = *(v0 + 256);
  v10[8] = *(v0 + 240);
  v10[9] = v3;
  v4 = *(v0 + 288);
  v10[10] = *(v0 + 272);
  v10[11] = v4;
  v5 = *(v0 + 192);
  v10[4] = *(v0 + 176);
  v10[5] = v5;
  v6 = *(v0 + 224);
  v10[6] = *(v0 + 208);
  v10[7] = v6;
  v7 = *(v0 + 128);
  v10[0] = *(v0 + 112);
  v10[1] = v7;
  v8 = *(v0 + 160);
  v10[2] = *(v0 + 144);
  v10[3] = v8;
  sub_260E31FD4(v10);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PersonalizationAssetManager.__deallocating_deinit()
{
  v1 = *(v0 + 320);
  v10[12] = *(v0 + 304);
  v10[13] = v1;
  v2 = *(v0 + 352);
  v10[14] = *(v0 + 336);
  v10[15] = v2;
  v3 = *(v0 + 256);
  v10[8] = *(v0 + 240);
  v10[9] = v3;
  v4 = *(v0 + 288);
  v10[10] = *(v0 + 272);
  v10[11] = v4;
  v5 = *(v0 + 192);
  v10[4] = *(v0 + 176);
  v10[5] = v5;
  v6 = *(v0 + 224);
  v10[6] = *(v0 + 208);
  v10[7] = v6;
  v7 = *(v0 + 128);
  v10[0] = *(v0 + 112);
  v10[1] = v7;
  v8 = *(v0 + 160);
  v10[2] = *(v0 + 144);
  v10[3] = v8;
  sub_260E31FD4(v10);

  swift_defaultActor_destroy();
  return swift_defaultActor_deallocate();
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.stableBluetoothIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_260E2D2AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000019 && 0x8000000260E726C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_260E69834();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260E2D34C(uint64_t a1)
{
  v2 = sub_260E32004();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2D388(uint64_t a1)
{
  v2 = sub_260E32004();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545D8, &qword_260E6CA70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32004();
  sub_260E69944();
  sub_260E697C4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PersonalizationAssetManager.PostPairingAssetInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545E8, &qword_260E6CA78);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32004();
  sub_260E69934();
  if (!v2)
  {
    v9 = sub_260E69784();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E2D68C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545D8, &qword_260E6CA70);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32004();
  sub_260E69944();
  sub_260E697C4();
  return (*(v3 + 8))(v5, v2);
}

double static PersonalizationAssetManager.PrePairingAssetInfo.fixture_airtag_anusree_AB21.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = sub_260E32058(&unk_28735D508);
  v4 = v3;
  v5 = sub_260E32058(&unk_28735D530);
  *&v12 = v2;
  *(&v12 + 1) = v4;
  v11[3] = MEMORY[0x277CC9318];
  v11[4] = MEMORY[0x277CC9300];
  v11[0] = v5;
  v11[1] = v6;
  v7 = __swift_project_boxed_opaque_existential_0(v11, MEMORY[0x277CC9318]);
  v8 = *v7;
  v9 = v7[1];
  sub_260E15E4C(v2, v4);
  sub_260E3188C(v8, v9, &v12);
  sub_260E15FB4(v2, v4);
  __swift_destroy_boxed_opaque_existential_0(v11);
  result = *&v12;
  *a1 = v12;
  return result;
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.init(scannedBluetoothData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t static PersonalizationAssetManager.PrePairingAssetInfo.fixture_airpods_test1.getter@<X0>(uint64_t *a1@<X8>)
{
  result = sub_260E32058(&unk_28735D560);
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.scannedBluetoothData.getter()
{
  v1 = *v0;
  sub_260E15E4C(*v0, *(v0 + 8));
  return v1;
}

uint64_t sub_260E2D8F4(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a3 + 16);
      v6 = *(a3 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    v5 = v4 == 0;
    if (v4)
    {
      v6 = a3 >> 32;
    }

    else
    {
      v6 = BYTE6(a4);
    }

    if (v5)
    {
      v7 = 0;
    }

    else
    {
      v7 = a3;
    }
  }

  if (v7 > a2)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v6 <= a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (a2 + 1 >= result)
  {
    return sub_260E68964();
  }

LABEL_17:
  __break(1u);
  return result;
}

uint64_t sub_260E2D960@<X0>(uint64_t a2@<X8>)
{
  v31 = a2;
  v30 = sub_260E68F24();
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_260E69064();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_260E68EF4();
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  v11 = v2[1];
  v32 = sub_260E2D8F4(4, 17, *v2, v11);
  v33 = v13;
  sub_260E68EE4();
  sub_260E69054();
  v14 = sub_260E69034();
  v16 = v15;

  (*(v6 + 8))(v8, v5);
  if (v16 >> 60 == 15)
  {
    result = sub_260E69704("Fatal error", 11, 2, 0xD000000000000019, 0x8000000260E72980, "ProductKit/PersonalizationAssetManager.swift", 44, 2, 469, 0);
    __break(1u);
  }

  else
  {
    v17 = sub_260E2D8F4(0, 3, v12, v11);
    v19 = v18;
    v36 = v14;
    v37 = v16;
    v34 = MEMORY[0x277CC9318];
    v35 = MEMORY[0x277CC9300];
    v32 = v17;
    v33 = v18;
    v20 = __swift_project_boxed_opaque_existential_0(&v32, MEMORY[0x277CC9318]);
    v21 = *v20;
    v22 = v20[1];
    sub_260E338C0(v14, v16);
    sub_260E15E4C(v17, v19);
    sub_260E3188C(v21, v22, &v36);
    sub_260E15FB4(v17, v19);
    sub_260E16168(v14, v16);
    __swift_destroy_boxed_opaque_existential_0(&v32);
    v23 = v36;
    v24 = v37;
    v32 = v36;
    v33 = v37;
    sub_260E68F04();
    sub_260E68F14();
    (*(v28 + 8))(v4, v30);
    sub_260E68F74();
    sub_260E338D4(&qword_27FE546F8, 255, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_260E3391C();
    sub_260E68F64();
    (*(v27 + 8))(v10, v29);
    return sub_260E15FB4(v23, v24);
  }

  return result;
}

unint64_t PersonalizationAssetManager.PrePairingAssetInfo.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v16 = *v0;
  sub_260E69644();

  v3 = sub_260E2D8F4(0, 3, v1, v2);
  v5 = v4;
  sub_260E2FFA0(v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54580, &qword_260E6CA08);
  sub_260E335CC(&qword_27FE54588, &qword_27FE54580, &qword_260E6CA08, MEMORY[0x277D83958]);
  v6 = sub_260E68FC4();
  v8 = v7;
  sub_260E15FB4(v3, v5);

  MEMORY[0x2666F0C00](v6, v8);

  MEMORY[0x2666F0C00](0x65655379656B202CLL, 0xEB00000000203A64);
  v9 = sub_260E2D8F4(4, 17, v16, v2);
  v11 = v10;
  sub_260E2FFA0(v9, v10);
  v12 = sub_260E68FC4();
  v14 = v13;
  sub_260E15FB4(v9, v11);

  MEMORY[0x2666F0C00](v12, v14);

  MEMORY[0x2666F0C00](41, 0xE100000000000000);
  return 0xD000000000000018;
}

uint64_t sub_260E2DFC4()
{
  sub_260E698F4();
  MEMORY[0x2666F1410](0);
  return sub_260E69914();
}

uint64_t sub_260E2E034(uint64_t a1)
{
  sub_260E698F4();
  MEMORY[0x2666F1410](0);
  return sub_260E69914();
}

uint64_t sub_260E2E090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x8000000260E726E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_260E69834();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_260E2E130(uint64_t a1)
{
  v2 = sub_260E32134();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2E16C(uint64_t a1)
{
  v2 = sub_260E32134();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE545F0, &qword_260E6CA80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E15E4C(v7, v8);
  sub_260E32134();
  sub_260E69944();
  v10 = v7;
  v11 = v8;
  sub_260E32188();
  sub_260E697F4();
  sub_260E15FB4(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t PersonalizationAssetManager.PrePairingAssetInfo.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54608, &qword_260E6CA88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32134();
  sub_260E69934();
  if (!v2)
  {
    sub_260E321DC();
    sub_260E697B4();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_260E2E4B0(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a1)
  {
    return sub_260E30318(a1, a2, a3, a4);
  }

  sub_260E69644();
  MEMORY[0x2666F0C00](0xD000000000000012, 0x8000000260E727E0);
  MEMORY[0x2666F0C00](a2, a3);
  MEMORY[0x2666F0C00](0x656372756F537B20, 0xEF203A657079542ELL);
  MEMORY[0x2666F0C00](0x64726F6365524B43, 0xED000065756C6156);
  MEMORY[0x2666F0C00](0x746567726154202CLL, 0xEF203A657079542ELL);
  MEMORY[0x2666F0C00](0x676E69727453, 0xE600000000000000);
  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  sub_260E15590();
  swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 0xE000000000000000;
  *(v7 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_260E2E610()
{
  v1 = 0x7461446567616D69;
  if (*v0 != 1)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000019;
  }
}

uint64_t sub_260E2E674@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260E32380(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260E2E6A8(uint64_t a1)
{
  v2 = sub_260E32230();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2E6E4(uint64_t a1)
{
  v2 = sub_260E32230();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PrivateRecord.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54618, &qword_260E6CA90);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = v1[2];
  v11 = v1[3];
  v12 = v7;
  v10 = v1[4];
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32230();
  sub_260E69944();
  LOBYTE(v14) = 0;
  v8 = v13;
  sub_260E697C4();
  if (!v8)
  {
    v14 = v12;
    v15 = v11;
    v16 = 1;
    sub_260E15E4C(v12, v11);
    sub_260E32188();
    sub_260E697F4();
    sub_260E15FB4(v14, v15);
    LOBYTE(v14) = 2;
    sub_260E697E4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PersonalizationAssetManager.PrivateRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54628, &qword_260E6CA98);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32230();
  sub_260E69934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  LOBYTE(v20) = 0;
  v9 = sub_260E69784();
  v19 = v10;
  v22 = 1;
  sub_260E321DC();
  sub_260E697B4();
  v17 = v20;
  v18 = v21;
  LOBYTE(v20) = 2;
  v11 = sub_260E697A4();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  v12 = v19;
  *a2 = v9;
  a2[1] = v12;
  v14 = v17;
  a2[2] = v17;
  a2[3] = v13;
  a2[4] = v11;

  sub_260E15E4C(v14, v13);
  __swift_destroy_boxed_opaque_existential_0(a1);

  return sub_260E15FB4(v14, v13);
}

uint64_t sub_260E2EBA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v95 = a7;
  v96 = a6;
  v107 = a3;
  v12 = sub_260E68F54();
  v98 = *(v12 - 8);
  v99 = v12;
  MEMORY[0x28223BE20](v12);
  v101 = &v92 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_260E68EF4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v97 = (&v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v17);
  v19 = &v92 - v18;
  v20 = a5[1];
  v106 = *a5;
  v110 = v106;
  v111 = v20;
  v112 = v20;
  sub_260E2D960(&v92 - v18);
  sub_260E68ED4();
  v21 = *(v15 + 8);
  v104 = v15 + 8;
  v105 = v14;
  v103 = v21;
  v21(v19, v14);
  v22 = v110;
  v23 = v111;
  v24 = sub_260E68964();
  v26 = v25;
  sub_260E15FB4(v22, v23);
  v27 = sub_260E68984();
  v29 = v28;
  sub_260E15FB4(v24, v26);
  v102 = a4;
  if (v27 == a1 && v29 == a2)
  {
    v30 = 1;
  }

  else
  {
    v30 = sub_260E69834();
  }

  v110 = 0;
  v111 = 0xE000000000000000;
  sub_260E69644();
  MEMORY[0x2666F0C00](0xD000000000000028, 0x8000000260E728E0);
  MEMORY[0x2666F0C00](a1, a2);

  MEMORY[0x2666F0C00](0xD00000000000001BLL, 0x8000000260E72910);
  v31 = v106;
  v32 = v112;
  v108 = v106;
  v109 = v112;
  sub_260E2D960(v19);
  sub_260E68ED4();
  v100 = v7;
  v103(v19, v105);
  v33 = v108;
  v34 = v109;
  v35 = sub_260E68964();
  v37 = v36;
  sub_260E15FB4(v33, v34);
  v38 = sub_260E68984();
  v40 = v39;
  sub_260E15FB4(v35, v37);
  MEMORY[0x2666F0C00](v38, v40);

  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  v41 = v111;
  if ((v30 & 1) == 0)
  {
    v58 = v110;
    sub_260E15FB4(v31, v32);
    v110 = 0;
    v111 = 0xE000000000000000;
    sub_260E69644();

    v110 = 0xD000000000000016;
    v111 = 0x8000000260E72930;
    MEMORY[0x2666F0C00](v58, v41);

    v59 = v110;
    v60 = v111;
    sub_260E15590();
    swift_allocError();
    *v61 = v59;
    *(v61 + 8) = v60;
    *(v61 + 16) = 0;
    swift_willThrow();
    v56 = v107;
    v57 = v102;
    return sub_260E15FB4(v56, v57);
  }

  v42 = v107;
  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v43 = sub_260E68E94();
  v44 = __swift_project_value_buffer(v43, qword_27FE54540);
  v45 = v102;
  sub_260E15E4C(v42, v102);
  v94 = v44;
  v46 = sub_260E68E74();
  v47 = sub_260E69434();
  sub_260E15FB4(v42, v45);
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v110 = v49;
    *v48 = 136315138;
    sub_260E15E4C(v42, v45);
    v50 = sub_260E68924();
    v52 = v51;
    sub_260E15FB4(v107, v45);
    v53 = sub_260E43774(v50, v52, &v110);

    *(v48 + 4) = v53;
    v42 = v107;
    _os_log_impl(&dword_260E02000, v46, v47, "Decrypting image: %s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x2666F1EF0](v49, -1, -1);
    MEMORY[0x2666F1EF0](v48, -1, -1);
  }

  v54 = v106;
  sub_260E15E4C(v42, v45);
  v55 = v100;
  sub_260E2F4FC(v42, v45);
  if (v55)
  {
    sub_260E15FB4(v54, v112);
    v56 = v42;
    v57 = v45;
    return sub_260E15FB4(v56, v57);
  }

  v110 = v54;
  v111 = v112;
  v63 = v97;
  sub_260E2D960(v97);
  v64 = v63;
  v65 = sub_260E68F34();
  v67 = v66;
  v103(v64, v105);
  sub_260E15E4C(v65, v67);
  v68 = sub_260E68E74();
  LODWORD(v64) = sub_260E69434();
  v100 = v67;
  sub_260E15FB4(v65, v67);
  LODWORD(v94) = v64;
  v97 = v68;
  v69 = os_log_type_enabled(v68, v64);
  v93 = v65;
  if (v69)
  {
    v70 = v65;
    v71 = swift_slowAlloc();
    v72 = swift_slowAlloc();
    v110 = v72;
    *v71 = 136315138;
    v73 = v100;
    sub_260E15E4C(v70, v100);
    v74 = sub_260E68924();
    v76 = v75;
    sub_260E15FB4(v70, v73);
    v77 = sub_260E43774(v74, v76, &v110);
    v42 = v107;

    *(v71 + 4) = v77;
    v78 = v101;
    v79 = v97;
    _os_log_impl(&dword_260E02000, v97, v94, "Finished fetching personalized asset: %s", v71, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v72);
    MEMORY[0x2666F1EF0](v72, -1, -1);
    v80 = v71;
    v54 = v106;
    MEMORY[0x2666F1EF0](v80, -1, -1);
  }

  else
  {

    v78 = v101;
  }

  sub_260E157C4(0, &qword_27FE54590, 0x277CBC5D0);
  v110 = v54;
  v111 = v112;
  sub_260E2D960(v19);
  sub_260E68ED4();
  v103(v19, v105);
  v81 = v54;
  v82 = v110;
  v83 = v111;
  sub_260E68984();
  sub_260E15FB4(v82, v83);
  sub_260E157C4(0, &qword_27FE54598, 0x277CBC5F8);
  sub_260E69484();
  v84 = sub_260E69404();
  v85 = [v84 recordName];

  v86 = sub_260E69024();
  v88 = v87;

  sub_260E15FB4(v42, v102);
  result = (*(v98 + 8))(v78, v99);
  v89 = v95;
  v90 = v112;
  *v95 = v81;
  v89[1] = v90;
  v89[2] = v86;
  v89[3] = v88;
  v91 = v100;
  v89[4] = v93;
  v89[5] = v91;
  v89[6] = v96;
  return result;
}

uint64_t sub_260E2F4FC(uint64_t a1, unint64_t a2)
{
  v29[5] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(a1 + 16);
    v3 = *(a1 + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_260E15FB4(a1, a2);
      v7 = sub_260E68EC4();
      sub_260E338D4(&qword_27FE546E8, 255, MEMORY[0x277CC51E8], MEMORY[0x277CC51F0]);
      swift_allocError();
      (*(*(v7 - 8) + 104))(v8, *MEMORY[0x277CC51E0], v7);
      return swift_willThrow();
    }

    goto LABEL_35;
  }

  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  v29[3] = MEMORY[0x277CC9318];
  v29[4] = MEMORY[0x277CC9300];
  v29[0] = a1;
  v29[1] = a2;
  v10 = __swift_project_boxed_opaque_existential_0(v29, MEMORY[0x277CC9318]);
  v11 = *v10;
  v12 = v10[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v27, 0, 14);
      v15 = v27;
      v14 = v27;
      goto LABEL_33;
    }

    v16 = *(v11 + 16);
    v17 = *(v11 + 24);
    v18 = sub_260E68744();
    if (v18)
    {
      v19 = sub_260E68764();
      v11 = v16 - v19;
      if (__OFSUB__(v16, v19))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      v18 += v11;
    }

    v5 = __OFSUB__(v17, v16);
    v20 = v17 - v16;
    if (!v5)
    {
      goto LABEL_25;
    }

    __break(1u);
    goto LABEL_21;
  }

  if (v13)
  {
LABEL_21:
    v21 = v11;
    v22 = v11 >> 32;
    v20 = v22 - v21;
    if (v22 >= v21)
    {
      v18 = sub_260E68744();
      if (!v18)
      {
LABEL_25:
        v24 = sub_260E68754();
        if (v24 >= v20)
        {
          v25 = v20;
        }

        else
        {
          v25 = v24;
        }

        v26 = (v25 + v18);
        if (v18)
        {
          v14 = v26;
        }

        else
        {
          v14 = 0;
        }

        v15 = v18;
        goto LABEL_33;
      }

      v23 = sub_260E68764();
      if (!__OFSUB__(v21, v23))
      {
        v18 += v21 - v23;
        goto LABEL_25;
      }

LABEL_38:
      __break(1u);
    }

    goto LABEL_36;
  }

  v27[0] = *v10;
  LOWORD(v27[1]) = v12;
  BYTE2(v27[1]) = BYTE2(v12);
  BYTE3(v27[1]) = BYTE3(v12);
  BYTE4(v27[1]) = BYTE4(v12);
  BYTE5(v27[1]) = BYTE5(v12);
  v14 = v27 + BYTE6(v12);
  v15 = v27;
LABEL_33:
  sub_260E30B6C(v15, v14, &v28);
  __swift_destroy_boxed_opaque_existential_0(v29);
  return sub_260E68F44();
}

unint64_t sub_260E2F818()
{
  v1 = 0x614E64726F636572;
  v2 = 0x7461446567616D69;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6973726576;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000013;
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

uint64_t sub_260E2F8A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_260E324AC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_260E2F8D4(uint64_t a1)
{
  v2 = sub_260E32284();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_260E2F910(uint64_t a1)
{
  v2 = sub_260E32284();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t PersonalizationAssetManager.PublicRecord.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54630, &qword_260E6CAA0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v22 = v1[3];
  v23 = v10;
  v11 = v1[4];
  v20 = v1[5];
  v21 = v11;
  v19[1] = v1[6];
  v12 = a1[3];
  v13 = a1;
  v15 = v14;
  __swift_project_boxed_opaque_existential_0(v13, v12);
  sub_260E15E4C(v8, v9);
  sub_260E32284();
  sub_260E69944();
  v24 = v8;
  v25 = v9;
  v26 = 0;
  sub_260E322D8();
  sub_260E697F4();
  sub_260E15FB4(v24, v25);
  if (!v2)
  {
    v17 = v20;
    v16 = v21;
    LOBYTE(v24) = 1;
    sub_260E697C4();
    v24 = v16;
    v25 = v17;
    v26 = 2;
    sub_260E15E4C(v16, v17);
    sub_260E32188();
    sub_260E697F4();
    sub_260E15FB4(v24, v25);
    LOBYTE(v24) = 3;
    sub_260E697E4();
  }

  return (*(v5 + 8))(v7, v15);
}

uint64_t PersonalizationAssetManager.PublicRecord.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54648, &qword_260E6CAA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_260E32284();
  sub_260E69934();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v28 = 0;
  sub_260E3232C();
  sub_260E697B4();
  v9 = v26;
  v25 = v27;
  LOBYTE(v26) = 1;
  v10 = sub_260E69784();
  v24 = v11;
  v23 = v10;
  v28 = 2;
  sub_260E321DC();
  sub_260E697B4();
  v21 = v26;
  v22 = v27;
  LOBYTE(v26) = 3;
  v13 = sub_260E697A4();
  (*(v6 + 8))(v8, v5);
  v14 = v9;
  *a2 = v9;
  v15 = v24;
  v16 = v25;
  v18 = v22;
  v17 = v23;
  a2[1] = v25;
  a2[2] = v17;
  v19 = v21;
  a2[3] = v15;
  a2[4] = v19;
  a2[5] = v18;
  a2[6] = v13;
  sub_260E15E4C(v14, v16);

  sub_260E15E4C(v19, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  sub_260E15FB4(v14, v16);

  return sub_260E15FB4(v19, v18);
}

uint64_t sub_260E2FED4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_0(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_260E31DC8(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_260E31E80(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_260E31EFC(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_0(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_260E2FFA0(unint64_t a1, unint64_t a2)
{
  v46 = *MEMORY[0x277D85DE8];
  v4 = a2 >> 62;
  v30 = HIDWORD(a1);
  if ((a2 >> 62) <= 1)
  {
    if (!v4)
    {
      v5 = BYTE6(a2);
      goto LABEL_10;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    return MEMORY[0x277D84F90];
  }

  v7 = *(a1 + 16);
  v6 = *(a1 + 24);
  v5 = v6 - v7;
  if (__OFSUB__(v6, v7))
  {
    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a1), a1))
    {
      goto LABEL_49;
    }

    v5 = HIDWORD(a1) - a1;
  }

LABEL_10:
  v8 = MEMORY[0x277D84F90];
  if (v5)
  {
    v45 = MEMORY[0x277D84F90];
    sub_260E659E0(0, v5 & ~(v5 >> 63), 0);
    if (v4)
    {
      if (v4 == 2)
      {
        v9 = *(a1 + 16);
      }

      else
      {
        v9 = a1;
      }
    }

    else
    {
      v9 = 0;
    }

    v32 = v9;
    if (v5 < 0)
    {
      goto LABEL_48;
    }

    v10 = 0;
    v8 = v45;
    v29 = &v33 + v9;
    v31 = v4;
    do
    {
      if (v10 >= v5)
      {
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
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
      }

      v11 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        goto LABEL_41;
      }

      v12 = v32 + v10;
      if (v4 == 2)
      {
        if (v12 < *(a1 + 16))
        {
          goto LABEL_43;
        }

        if (v12 >= *(a1 + 24))
        {
          goto LABEL_45;
        }

        v17 = sub_260E68744();
        if (!v17)
        {
          goto LABEL_51;
        }

        v14 = v17;
        v18 = sub_260E68764();
        v16 = v12 - v18;
        if (__OFSUB__(v12, v18))
        {
          goto LABEL_47;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v12 >= BYTE6(a2))
          {
            goto LABEL_42;
          }

          v33 = a1;
          v34 = BYTE2(a1);
          v35 = BYTE3(a1);
          v36 = v30;
          v37 = BYTE5(a1);
          v38 = BYTE6(a1);
          v39 = HIBYTE(a1);
          v40 = a2;
          v41 = BYTE2(a2);
          v42 = BYTE3(a2);
          v43 = BYTE4(a2);
          v44 = BYTE5(a2);
          v19 = v29[v10];
          goto LABEL_36;
        }

        if (v12 < a1 || v12 >= a1 >> 32)
        {
          goto LABEL_44;
        }

        v13 = sub_260E68744();
        if (!v13)
        {
          goto LABEL_50;
        }

        v14 = v13;
        v15 = sub_260E68764();
        v16 = v12 - v15;
        if (__OFSUB__(v12, v15))
        {
          goto LABEL_46;
        }
      }

      v19 = *(v14 + v16);
LABEL_36:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54708, &qword_260E6D680);
      v20 = swift_allocObject();
      *(v20 + 16) = xmmword_260E6BDB0;
      *(v20 + 56) = MEMORY[0x277D84B78];
      *(v20 + 64) = MEMORY[0x277D84BC0];
      *(v20 + 32) = v19;
      v21 = sub_260E69044();
      v45 = v8;
      v24 = *(v8 + 16);
      v23 = *(v8 + 24);
      if (v24 >= v23 >> 1)
      {
        v28 = v21;
        v26 = v22;
        sub_260E659E0((v23 > 1), v24 + 1, 1);
        v22 = v26;
        v21 = v28;
        v8 = v45;
      }

      *(v8 + 16) = v24 + 1;
      v25 = v8 + 16 * v24;
      *(v25 + 32) = v21;
      *(v25 + 40) = v22;
      ++v10;
      LODWORD(v4) = v31;
    }

    while (v11 != v5);
  }

  return v8;
}

uint64_t sub_260E30318(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546C8, &qword_260E6D638);
  if (swift_dynamicCast())
  {
    return v9;
  }

  sub_260E69644();

  MEMORY[0x2666F0C00](a2, a3);
  MEMORY[0x2666F0C00](0x7465677261547B20, 0xEF203A657079542ELL);
  MEMORY[0x2666F0C00](0x676E69727453, 0xE600000000000000);
  MEMORY[0x2666F0C00](0x656372756F53202CLL, 0xEA0000000000203ALL);
  swift_unknownObjectRetain();
  v7 = sub_260E69074();
  MEMORY[0x2666F0C00](v7);

  MEMORY[0x2666F0C00](125, 0xE100000000000000);
  sub_260E15590();
  swift_allocError();
  *v8 = 0xD000000000000012;
  *(v8 + 8) = 0x8000000260E72800;
  *(v8 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_260E304C0(uint64_t a1, void *a2, void *a3)
{
  v5 = __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  v7 = *v5;
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FE545B0, &unk_260E6C010);
    v8 = swift_allocError();
    *v9 = a3;
    v10 = a3;
    v5 = v7;
    v6 = v8;

    return MEMORY[0x282200958](v5, v6);
  }

  if (!a2)
  {
    __break(1u);
    return MEMORY[0x282200958](v5, v6);
  }

  **(v7[8] + 40) = a2;
  v11 = a2;

  return swift_continuation_throwingResume();
}

uint64_t sub_260E30598(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260E30690;

  return v6(a1);
}

uint64_t sub_260E30690()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E307AC()
{
  swift_unknownObjectRelease();

  sub_260E15FB4(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260E30804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[11];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E343A8;

  return sub_260E1F220(a1, v4, v5, v6, v7, (v1 + 6), v8);
}

uint64_t sub_260E30910()
{
  swift_unknownObjectRelease();

  sub_260E15FB4(*(v0 + 72), *(v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_260E30968(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_260E30A3C;

  return sub_260E1FDD8(a1, v4, v5, v6, v7, v8, (v1 + 7));
}

uint64_t sub_260E30A3C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_260E30B30(id a1, char a2)
{
  if (a2)
  {
  }
}

_BYTE *sub_260E30B6C@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_260E31DC8(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_260E31E80(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_260E31EFC(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_260E30C00(uint64_t *a1, uint64_t *a2)
{
  v3 = sub_260E68904();
  v4 = *(v3 - 8);
  v5 = swift_task_alloc();
  sub_260E4A030();
  _s19ParentDirectoryCRUDVMa(0);
  sub_260E688A4();
  sub_260E68994();
  (*(v4 + 8))(v5, v3);

  v7 = *(v2 + 8);

  return v7();
}

uint64_t sub_260E30D6C(uint64_t *a1, uint64_t *a2)
{
  *a1 = sub_260E4A4DC(*a2, a2[1]);
  a1[1] = v4;
  v5 = *(v2 + 8);

  return v5();
}

uint64_t sub_260E30DFC(uint64_t *a1, uint64_t *a2)
{
  v4 = sub_260E68904();
  v5 = *(v4 - 8);
  v6 = swift_task_alloc();
  sub_260E4A6EC(*a1, a1[1]);
  sub_260E4A030();
  _s19ParentDirectoryCRUDVMa(0);
  sub_260E688A4();
  sub_260E68994();
  (*(v5 + 8))(v6, v4);

  v8 = *(v2 + 8);

  return v8();
}

uint64_t sub_260E30F78(uint64_t *a1)
{
  sub_260E4A6EC(*a1, a1[1]);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_260E30FFC(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 152) = *a2;
  *(v3 + 160) = v4;
  return MEMORY[0x2822009F8](sub_260E31024, 0, 0);
}

uint64_t sub_260E31024()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E3114C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54738, &qword_260E6D7A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_227;
  v0[14] = v3;
  [v1 saveRecord:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E3114C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_260E343A0;
  }

  else
  {
    v2 = sub_260E34398;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E3125C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  *(v3 + 16) = a1;
  v4 = *a2;
  v5 = *a3;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_260E312FC;

  return sub_260E4B484(v4, v5);
}

uint64_t sub_260E312FC(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_260E3140C(uint64_t a1, void *a2, uint64_t *a3)
{
  v4 = *a3;
  *(v3 + 152) = *a2;
  *(v3 + 160) = v4;
  return MEMORY[0x2822009F8](sub_260E31434, 0, 0);
}

uint64_t sub_260E31434()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E3114C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54738, &qword_260E6D7A8);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_221;
  v0[14] = v3;
  [v1 saveRecord:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E3155C(void *a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 152) = *a1;
  *(v2 + 160) = v3;
  return MEMORY[0x2822009F8](sub_260E31584, 0, 0);
}

uint64_t sub_260E31584()
{
  v2 = v0[19];
  v1 = v0[20];
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_260E316AC;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54730, &qword_260E6D7A0);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_260E343C0;
  v0[13] = &block_descriptor_0;
  v0[14] = v3;
  [v1 deleteRecordWithID:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_260E316AC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_260E31820;
  }

  else
  {
    v2 = sub_260E317BC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_260E317BC()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_260E31820(uint64_t a1)
{
  swift_willThrow();
  v2 = *(v1 + 8);

  return v2();
}

uint64_t sub_260E3188C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      return sub_260E68954();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_260E319C4(v4, v5);
  }

  if (v3 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_260E319C4(v4, v5);
  }

  return sub_260E68954();
}

uint64_t sub_260E319C4(uint64_t a1, uint64_t a2)
{
  result = sub_260E68744();
  if (!result || (result = sub_260E68764(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      sub_260E68754();
      return sub_260E68954();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_260E31A58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a3 + 32);
  *(v4 + 64) = *(a3 + 48);
  v9 = swift_task_alloc();
  *(v4 + 72) = v9;
  *v9 = v4;
  v9[1] = sub_260E31B20;

  return sub_260E2C4EC(a1, a2, v4 + 16, a4);
}

uint64_t sub_260E31B20()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E31C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  *(v4 + 48) = *(a3 + 32);
  v9 = swift_task_alloc();
  *(v4 + 56) = v9;
  *v9 = v4;
  v9[1] = sub_260E31CD4;

  return sub_260E2CB10(a1, a2, v4 + 16, a4);
}

uint64_t sub_260E31CD4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_260E31DC8(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_260E31E80(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_260E68774();
  swift_allocObject();
  result = sub_260E68734();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    sub_260E68944();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t sub_260E31EFC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  sub_260E68774();
  swift_allocObject();
  result = sub_260E68734();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_260E31F80()
{
  result = qword_27FE545C0;
  if (!qword_27FE545C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE545C0);
  }

  return result;
}

unint64_t sub_260E32004()
{
  result = qword_27FE545E0;
  if (!qword_27FE545E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE545E0);
  }

  return result;
}

uint64_t sub_260E32058(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE546B8, &unk_260E6D628);
  v10 = sub_260E335CC(&qword_27FE546C0, &qword_27FE546B8, &unk_260E6D628, MEMORY[0x277CC9C28]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_260E30B6C(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_0(v8);
  return v5;
}

unint64_t sub_260E32134()
{
  result = qword_27FE545F8;
  if (!qword_27FE545F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE545F8);
  }

  return result;
}

unint64_t sub_260E32188()
{
  result = qword_27FE54600;
  if (!qword_27FE54600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54600);
  }

  return result;
}

unint64_t sub_260E321DC()
{
  result = qword_27FE54610;
  if (!qword_27FE54610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54610);
  }

  return result;
}

unint64_t sub_260E32230()
{
  result = qword_27FE54620;
  if (!qword_27FE54620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54620);
  }

  return result;
}

unint64_t sub_260E32284()
{
  result = qword_27FE54638;
  if (!qword_27FE54638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54638);
  }

  return result;
}

unint64_t sub_260E322D8()
{
  result = qword_27FE54640;
  if (!qword_27FE54640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54640);
  }

  return result;
}

unint64_t sub_260E3232C()
{
  result = qword_27FE54650;
  if (!qword_27FE54650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54650);
  }

  return result;
}

uint64_t sub_260E32380(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000019 && 0x8000000260E726C0 == a2 || (sub_260E69834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_260E69834() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_260E69834();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_260E324AC(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000013 && 0x8000000260E72700 == a2 || (sub_260E69834() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x614E64726F636572 && a2 == 0xEA0000000000656DLL || (sub_260E69834() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061 || (sub_260E69834() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_260E69834();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

id _sSo11CKContainerC10ProductKitE16AirTagsContainerABvgZ_0()
{
  if (!sub_260E38D68())
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v5 = sub_260E68E94();
    __swift_project_value_buffer(v5, qword_27FE54540);
    v1 = sub_260E68E74();
    v6 = sub_260E69474();
    if (!os_log_type_enabled(v1, v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v6, "Using production environment", v4, 2u);
    v3 = 1;
    goto LABEL_10;
  }

  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_260E68E94();
  __swift_project_value_buffer(v0, qword_27FE54540);
  v1 = sub_260E68E74();
  v2 = sub_260E69474();
  v3 = 2;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v2, "Using sandbox environment", v4, 2u);
LABEL_10:
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

LABEL_12:

  v7 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v8 = sub_260E68FF4();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v3];

  v10 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  return v10;
}

id _sSo11CKContainerC10ProductKitE31PersonalizationManateeContainerABvgZ_0()
{
  if (!sub_260E38D68())
  {
    if (qword_27FE53DA0 != -1)
    {
      swift_once();
    }

    v5 = sub_260E68E94();
    __swift_project_value_buffer(v5, qword_27FE54540);
    v1 = sub_260E68E74();
    v6 = sub_260E69474();
    if (!os_log_type_enabled(v1, v6))
    {
      v3 = 1;
      goto LABEL_12;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v6, "Using production environment", v4, 2u);
    v3 = 1;
    goto LABEL_10;
  }

  if (qword_27FE53DA0 != -1)
  {
    swift_once();
  }

  v0 = sub_260E68E94();
  __swift_project_value_buffer(v0, qword_27FE54540);
  v1 = sub_260E68E74();
  v2 = sub_260E69474();
  v3 = 2;
  if (os_log_type_enabled(v1, v2))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_260E02000, v1, v2, "Using sandbox environment", v4, 2u);
LABEL_10:
    MEMORY[0x2666F1EF0](v4, -1, -1);
  }

LABEL_12:

  v7 = objc_allocWithZone(MEMORY[0x277CBC220]);
  v8 = sub_260E68FF4();
  v9 = [v7 initWithContainerIdentifier:v8 environment:v3];

  v10 = [objc_allocWithZone(MEMORY[0x277CBC218]) initWithContainerID_];
  return v10;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_260E32A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_260E32AC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_260E32B34(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_260E32B90(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationAssetManager.Asset.Metadata(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for PersonalizationAssetManager.Asset.Metadata(uint64_t result, int a2, int a3)
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

uint64_t sub_260E32C58(uint64_t a1, int a2)
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

uint64_t sub_260E32CA0(uint64_t result, int a2, int a3)
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

uint64_t sub_260E32CEC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 16))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_260E32D40(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
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

uint64_t sub_260E32DB0(uint64_t a1, int a2)
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

uint64_t sub_260E32DF8(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_260E32E6C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_260E32EB4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PersonalizationAssetManager.PublicRecord.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PersonalizationAssetManager.PublicRecord.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_260E330D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_260E3311C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_260E331B0()
{
  result = qword_27FE54658;
  if (!qword_27FE54658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54658);
  }

  return result;
}

unint64_t sub_260E33208()
{
  result = qword_27FE54660;
  if (!qword_27FE54660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54660);
  }

  return result;
}

unint64_t sub_260E33260()
{
  result = qword_27FE54668;
  if (!qword_27FE54668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54668);
  }

  return result;
}

unint64_t sub_260E332B8()
{
  result = qword_27FE54670;
  if (!qword_27FE54670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54670);
  }

  return result;
}

unint64_t sub_260E33310()
{
  result = qword_27FE54678;
  if (!qword_27FE54678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54678);
  }

  return result;
}

unint64_t sub_260E33368()
{
  result = qword_27FE54680;
  if (!qword_27FE54680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54680);
  }

  return result;
}

unint64_t sub_260E333C0()
{
  result = qword_27FE54688;
  if (!qword_27FE54688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54688);
  }

  return result;
}

unint64_t sub_260E33418()
{
  result = qword_27FE54690;
  if (!qword_27FE54690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54690);
  }

  return result;
}

unint64_t sub_260E33470()
{
  result = qword_27FE54698;
  if (!qword_27FE54698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54698);
  }

  return result;
}

unint64_t sub_260E334C8()
{
  result = qword_27FE546A0;
  if (!qword_27FE546A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546A0);
  }

  return result;
}

unint64_t sub_260E33520()
{
  result = qword_27FE546A8;
  if (!qword_27FE546A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546A8);
  }

  return result;
}

unint64_t sub_260E33578()
{
  result = qword_27FE546B0;
  if (!qword_27FE546B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546B0);
  }

  return result;
}

uint64_t sub_260E335CC(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_260E33614()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_260E3364C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E343A8;

  return sub_260E30598(a1, v4);
}

unint64_t sub_260E33704()
{
  result = qword_27FE546D0;
  if (!qword_27FE546D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546D0);
  }

  return result;
}

unint64_t sub_260E33758()
{
  result = qword_27FE546D8;
  if (!qword_27FE546D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546D8);
  }

  return result;
}

uint64_t sub_260E337AC()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260E30A3C;

  return sub_260E31A58(v2, v3, v5, v4);
}

unint64_t sub_260E3386C()
{
  result = qword_27FE546E0;
  if (!qword_27FE546E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE546E0);
  }

  return result;
}

uint64_t sub_260E338C0(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_260E15E4C(result, a2);
  }

  return result;
}

uint64_t sub_260E338D4(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t sub_260E3391C()
{
  result = qword_27FE54700;
  if (!qword_27FE54700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54700);
  }

  return result;
}

unint64_t sub_260E33970()
{
  result = qword_27FE54728;
  if (!qword_27FE54728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54728);
  }

  return result;
}

uint64_t sub_260E339C4()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_260E343A8;

  return sub_260E31C14(v2, v3, v5, v4);
}

uint64_t sub_260E33A84()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_260E33ABC(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260E343A8;

  return sub_260E30FFC(a1, a2, (v2 + 16));
}

uint64_t sub_260E33B70(uint64_t a1, uint64_t *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260E343A8;

  return sub_260E3125C(a1, a2, (v2 + 16));
}

uint64_t sub_260E33C28(uint64_t a1, void *a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_260E343A8;

  return sub_260E3140C(a1, a2, (v2 + 16));
}

uint64_t sub_260E33CDC(void *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_260E343A8;

  return sub_260E3155C(a1, (v1 + 16));
}

uint64_t sub_260E33D88(uint64_t a1, uint64_t a2)
{
  v4 = _s19ParentDirectoryCRUDVMa(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E33DF0(uint64_t a1, uint64_t a2)
{
  v4 = _s19ParentDirectoryCRUDVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E33E54(uint64_t *a1, uint64_t *a2)
{
  _s19ParentDirectoryCRUDVMa(0);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E343A8;

  return sub_260E30C00(a1, a2);
}

uint64_t sub_260E33F48(uint64_t *a1, uint64_t *a2)
{
  _s19ParentDirectoryCRUDVMa(0);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E343A8;

  return sub_260E30D6C(a1, a2);
}

uint64_t sub_260E34040(uint64_t *a1, uint64_t *a2)
{
  _s19ParentDirectoryCRUDVMa(0);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_260E343A8;

  return sub_260E30DFC(a1, a2);
}

uint64_t objectdestroy_199Tm()
{
  v1 = (_s19ParentDirectoryCRUDVMa(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*v1 + 64);

  v5 = v1[7];
  v6 = sub_260E68904();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_260E3421C(uint64_t *a1)
{
  _s19ParentDirectoryCRUDVMa(0);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_260E343A8;

  return sub_260E30F78(a1);
}

id ProductKitCatalog.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ProductKitCatalog.init()()
{
  v0 = type metadata accessor for MobileAssetManager();
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v1 + 112) = 0;
  *(v1 + 120) = &unk_260E704C8;
  *(v1 + 128) = 0;
  *(v1 + 136) = &unk_260E704B8;
  *(v1 + 144) = 0;
  v11[3] = v0;
  v11[4] = &off_2873619E8;
  v11[0] = v1;
  v2 = objc_allocWithZone(type metadata accessor for ProductKitCatalog());
  v3 = __swift_mutable_project_boxed_opaque_existential_1(v11, v0);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6, v4);
  v8 = sub_260E35D2C(*v6, v2);
  __swift_destroy_boxed_opaque_existential_0(v11);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v8;
}

BOOL static ProductKitCatalog.isProductKitURL(_:)()
{
  v0 = sub_260E688F4();
  if (!v1)
  {
    return 0;
  }

  if (v0 == 0x7370747468 && v1 == 0xE500000000000000)
  {
  }

  else
  {
    v2 = sub_260E69834();

    if ((v2 & 1) == 0)
    {
      return 0;
    }
  }

  v3 = sub_260E688D4();
  if (v4)
  {
    if (v3 == 0x6C7070612E6E706DLL && v4 == 0xED00006D6F632E65)
    {
    }

    else
    {
      v5 = sub_260E69834();

      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    v6 = sub_260E688E4();
    v8 = sub_260E35A2C(47, 0xE100000000000000, v6, v7);

    if (v8)
    {
      sub_260E688E4();
      v9 = sub_260E690D4();

      return v9 > 5;
    }
  }

  return 0;
}

uint64_t sub_260E3478C(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;

  sub_260E62E28(sub_260E35F7C, v4);
}

void sub_260E3480C(uint64_t a1, void (*a2)(void *))
{
  if (*(a1 + 17))
  {
    v4 = *a1;
    v3 = *(a1 + 8);
    v5 = *(a1 + 16);
    sub_260E15590();
    v6 = swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    sub_260E1A318(v4, v3, v5);
    a2(v6);
  }

  else
  {
    a2(0);
  }
}

void sub_260E3499C(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = sub_260E68844();
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;
  (*(a2 + 16))(a2);
}

void sub_260E34A00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void *), uint64_t a7)
{
  v44 = a2;
  v47 = a6;
  v48 = a7;
  v40 = a4;
  v41 = a5;
  v45 = a3;
  v8 = sub_260E68A24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_260E68A44();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  MEMORY[0x28223BE20](v12);
  v46 = &v40 - v13;
  v14 = sub_260E68904();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MarketingPartNumberURL(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v25.n128_f64[0] = (*(v15 + 16))(v17, a1, v14, v22);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0(v25))
  {
    v27 = v47;
    v26 = v48;
    (*(v15 + 32))(v20, v17, v14);
    sub_260E360EC(v20, v24);
    v28 = *(v43 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v29 = v46;
    sub_260E36E34(v24, v46, type metadata accessor for MarketingPartNumberURL);
    v30 = (v29 + *(v12 + 36));
    sub_260E36150(v28 + 16, v30);
    if (sub_260E69764())
    {
      sub_260E15590();
      v31 = swift_allocError();
      *v32 = xmmword_260E6D7B0;
      *(v32 + 16) = 2;
      v27(0, v31);
    }

    else
    {
      v35 = swift_allocObject();
      *(v35 + 16) = v27;
      *(v35 + 24) = v26;
      __swift_project_boxed_opaque_existential_0(v30, v30[3]);

      v36 = sub_260E3589C();
      v38 = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_260E36278;
      *(v39 + 24) = v35;

      sub_260E61A78(v36, v38, v40, v41, sub_260E36280, v39);
    }

    sub_260E361B4(v24);
    sub_260E36210(v29);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v33 = sub_260E68A34();
    (*(v42 + 8))(v11, v9);
    swift_willThrow();
    (*(v15 + 8))(v17, v14);
    v34 = v33;
    v47(0, v33);
  }
}

void sub_260E34EC0(void *a1, void (*a2)(void, void *))
{
  v3 = *a1;
  if (*(a1 + 17))
  {
    v4 = a1[1];
    v5 = *(a1 + 16);
    sub_260E15590();
    v6 = swift_allocError();
    *v7 = v3;
    *(v7 + 8) = v4;
    *(v7 + 16) = v5;
    sub_260E1A318(v3, v4, v5);
    a2(0, v6);
  }

  else
  {
    a2(*a1, 0);
  }
}

void sub_260E34FA0(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  if (a1)
  {
    sub_260E68904();
    v5 = sub_260E691A4();
  }

  if (a2)
  {
    v6 = sub_260E68844();
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;
  (*(a3 + 16))(a3, v5);
}

void sub_260E3503C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(void, void, void, void *), uint64_t a7)
{
  v44 = a2;
  v47 = a6;
  v48 = a7;
  v40 = a4;
  v41 = a5;
  v45 = a3;
  v8 = sub_260E68A24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_260E68A44();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  MEMORY[0x28223BE20](v12);
  v46 = &v40 - v13;
  v14 = sub_260E68904();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for MarketingPartNumberURL(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v21);
  v24 = &v40 - v23;
  v25.n128_f64[0] = (*(v15 + 16))(v17, a1, v14, v22);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0(v25))
  {
    v27 = v47;
    v26 = v48;
    (*(v15 + 32))(v20, v17, v14);
    sub_260E360EC(v20, v24);
    v28 = *(v43 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v29 = v46;
    sub_260E36E34(v24, v46, type metadata accessor for MarketingPartNumberURL);
    v30 = (v29 + *(v12 + 36));
    sub_260E36150(v28 + 16, v30);
    if (sub_260E69764())
    {
      sub_260E15590();
      v31 = swift_allocError();
      *v32 = xmmword_260E6D7B0;
      *(v32 + 16) = 2;
      v27(0, 0, 0, v31);
    }

    else
    {
      v35 = swift_allocObject();
      *(v35 + 16) = v27;
      *(v35 + 24) = v26;
      __swift_project_boxed_opaque_existential_0(v30, v30[3]);

      v36 = sub_260E3589C();
      v38 = v37;
      v39 = swift_allocObject();
      *(v39 + 16) = sub_260E36288;
      *(v39 + 24) = v35;

      sub_260E61A78(v36, v38, v40, v41, sub_260E36290, v39);
    }

    sub_260E361B4(v24);
    sub_260E36210(v29);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v33 = sub_260E68A34();
    (*(v42 + 8))(v11, v9);
    swift_willThrow();
    (*(v15 + 8))(v17, v14);
    v34 = v33;
    v47(0, 0, 0, v33);
  }
}

void sub_260E3550C(uint64_t *a1, void (*a2)(uint64_t, uint64_t, uint64_t, void *))
{
  v4 = *a1;
  v3 = a1[1];
  v5 = a1[2];
  if (a1[3])
  {
    sub_260E15590();
    v6 = swift_allocError();
    *v7 = v4;
    *(v7 + 8) = v3;
    *(v7 + 16) = v5;
    sub_260E1A318(v4, v3, v5);
    a2(0, 0, 0, v6);
  }

  else
  {
    a2(*a1, v3, v5, 0);
  }
}

uint64_t sub_260E355F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, const void *a6, void (*a7)(char *, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v11 = sub_260E68904();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = _Block_copy(a6);
  sub_260E688C4();
  v16 = sub_260E69024();
  v18 = v17;
  if (a5)
  {
    v19 = sub_260E69024();
    a5 = v20;
  }

  else
  {
    v19 = 0;
  }

  _Block_copy(v15);
  v21 = a1;
  a7(v14, v16, v18, v19, a5, v21, v15);
  _Block_release(v15);
  _Block_release(v15);

  return (*(v12 + 8))(v14, v11);
}

void sub_260E3577C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3)
  {
    v8 = sub_260E68FF4();
    if (a4)
    {
LABEL_3:
      v9 = sub_260E68844();
      goto LABEL_6;
    }
  }

  else
  {
    v8 = 0;
    if (a4)
    {
      goto LABEL_3;
    }
  }

  v9 = 0;
LABEL_6:
  v10 = v9;
  (*(a5 + 16))(a5, a1, v8);
}

id ProductKitCatalog.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ProductKitCatalog();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_260E3589C()
{
  v1 = v0;
  v2 = type metadata accessor for Product.Identifier(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for MarketingPartNumberURL(0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_260E36E34(v1, v4, type metadata accessor for Product.Identifier);
  sub_260E360EC(v4, v7);
  v8 = sub_260E688E4();
  sub_260E548C8(1uLL, v8, v9);

  v10 = sub_260E69594();
  v12 = v11;

  v15[0] = v10;
  v15[1] = v12;
  sub_260E69174();
  v13 = sub_260E69094();

  sub_260E361B4(v7);
  return v13;
}

uint64_t sub_260E35A2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  v4 = sub_260E69104();
  if (v5)
  {
    v6 = v4;
    v7 = v5;
    do
    {
      v10 = sub_260E69104();
      if (!v11)
      {

        return 1;
      }

      if (v6 == v10 && v7 == v11)
      {
      }

      else
      {
        v8 = sub_260E69834();

        if ((v8 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v6 = sub_260E69104();
      v7 = v9;
    }

    while (v9);
  }

  sub_260E69104();
  v13 = v12;

  if (!v13)
  {
    return 1;
  }

LABEL_14:

  return 0;
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

unint64_t sub_260E35BFC(uint64_t a1, uint64_t a2)
{
  sub_260E698F4();
  sub_260E690C4();
  v4 = sub_260E69914();

  return sub_260E35C74(a1, a2, v4);
}

unint64_t sub_260E35C74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_260E69834())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

id sub_260E35D2C(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for MobileAssetManager();
  v25[3] = v4;
  v25[4] = &off_2873619E8;
  v25[0] = a1;
  sub_260E36150(v25, &a2[OBJC_IVAR___ProductKitCatalogInternal_assetManager]);
  sub_260E36150(v25, v24);
  v5 = __swift_mutable_project_boxed_opaque_existential_1(v24, v24[3]);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v9 + 16))(v8, v6);
  v10 = *v8;
  v23[3] = v4;
  v23[4] = &off_2873619E8;
  v23[0] = v10;
  type metadata accessor for Product.Catalog();
  v11 = swift_allocObject();
  v12 = __swift_mutable_project_boxed_opaque_existential_1(v23, v4);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = (&v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15, v13);
  v17 = *v15;
  v11[5] = v4;
  v11[6] = &off_2873619E8;
  v11[2] = v17;
  __swift_destroy_boxed_opaque_existential_0(v23);
  __swift_destroy_boxed_opaque_existential_0(v24);
  *&a2[OBJC_IVAR___ProductKitCatalogInternal_catalog] = v11;
  v18 = type metadata accessor for ProductKitCatalog();
  v22.receiver = a2;
  v22.super_class = v18;
  v19 = objc_msgSendSuper2(&v22, sel_init);
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v19;
}

uint64_t sub_260E35F44()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

unint64_t sub_260E35F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54760, &qword_260E6D7F8);
    v3 = sub_260E69744();
    v4 = a1 + 32;

    while (1)
    {
      sub_260E36E9C(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_260E35BFC(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_260E145CC(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_260E36094()
{
  result = qword_27FE54748;
  if (!qword_27FE54748)
  {
    sub_260E68A44();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FE54748);
  }

  return result;
}

uint64_t sub_260E360EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketingPartNumberURL(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_260E36150(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_260E361B4(uint64_t a1)
{
  v2 = type metadata accessor for MarketingPartNumberURL(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_260E36210(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_260E3634C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (**a7)(void, void, void))
{
  v43 = a6;
  v44 = a2;
  v39 = a4;
  v40 = a5;
  v45 = a3;
  v47 = a1;
  v8 = sub_260E68A24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_260E68A44();
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FE54740, &unk_260E6D7C0);
  MEMORY[0x28223BE20](v41);
  v46 = &v39 - v12;
  v13 = sub_260E68904();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MarketingPartNumberURL(0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v39 - v21;
  v23 = swift_allocObject();
  *(v23 + 16) = a7;
  (*(v14 + 16))(v16, v47, v13);
  _Block_copy(a7);
  if (_s10ProductKit22MarketingPartNumberURLV7isValid3urlSb10Foundation0F0V_tFZ_0(v24))
  {
    (*(v14 + 32))(v19, v16, v13);
    sub_260E360EC(v19, v22);
    v25 = *(v43 + OBJC_IVAR___ProductKitCatalogInternal_catalog);
    v26 = v46;
    sub_260E36E34(v22, v46, type metadata accessor for MarketingPartNumberURL);
    v27 = (v26 + *(v41 + 36));
    sub_260E36150(v25 + 16, v27);
    if (sub_260E69764())
    {
      sub_260E15590();
      v28 = swift_allocError();
      *v29 = xmmword_260E6D7B0;
      *(v29 + 16) = 2;
      v30 = sub_260E68844();
      (a7)[2](a7, 0, v30);
    }

    else
    {
      v34 = swift_allocObject();
      *(v34 + 16) = sub_260E36E24;
      *(v34 + 24) = v23;
      __swift_project_boxed_opaque_existential_0(v27, v27[3]);

      v35 = sub_260E3589C();
      v37 = v36;
      v38 = swift_allocObject();
      *(v38 + 16) = sub_260E36F40;
      *(v38 + 24) = v34;

      sub_260E61A78(v35, v37, v39, v40, sub_260E36F44, v38);
    }

    sub_260E361B4(v22);
    sub_260E36210(v26);
  }

  else
  {
    sub_260E68A14();
    sub_260E35F84(MEMORY[0x277D84F90]);
    sub_260E36094();
    sub_260E68834();
    v31 = sub_260E68A34();
    (*(v42 + 8))(v11, v9);
    swift_willThrow();
    (*(v14 + 8))(v16, v13);
    v32 = v31;
    v33 = sub_260E68844();
    (a7)[2](a7, 0, v33);
  }
}