uint64_t sub_26C6B8054()
{
  v1 = *(v0 + 1208);
  sub_26C6A6570(v0 + 336);
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_26C6B8430;
  }

  else
  {
    sub_26C6C0984(v0 + 336);
    v2 = sub_26C6B80F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6B80F0()
{
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];
  v13 = v0[137];
  v14 = v0[133] + v0[147];
  *(v14 + 1) = 4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[68] = sub_26C6C0AF4;
  v0[69] = v6;
  v0[64] = MEMORY[0x277D85DD0];
  v0[65] = 1107296256;
  v0[66] = sub_26C670B0C;
  v0[67] = &block_descriptor_90;
  v7 = _Block_copy(v0 + 64);

  sub_26C6D8968();
  v0[131] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v1, v3, v7);
  _Block_release(v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v13);

  if ((*(v14 + 8) | 2) == 3)
  {
    v8 = swift_task_alloc();
    v0[154] = v8;
    *v8 = v0;
    v8[1] = sub_26C6B8778;
    v9 = v0[152];

    return sub_26C6B62F0(v9);
  }

  else
  {
    v11 = v0[152];
    sub_26C6C0A84((v0 + 18));

    __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
    v12 = swift_task_alloc();
    v0[150] = v12;
    *v12 = v0;
    v12[1] = sub_26C6B6F4C;

    return MEMORY[0x282200310](v0 + 10, 0, 0);
  }
}

uint64_t sub_26C6B8430()
{
  sub_26C6C0984((v0 + 42));
  v1 = v0[139];
  v2 = v0[138];
  v3 = v0[136];
  v4 = v0[135];
  v5 = v0[134];
  v13 = v0[137];
  v14 = v0[133] + v0[147];
  *(v14 + 1) = 4;
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v0[68] = sub_26C6C0AF4;
  v0[69] = v6;
  v0[64] = MEMORY[0x277D85DD0];
  v0[65] = 1107296256;
  v0[66] = sub_26C670B0C;
  v0[67] = &block_descriptor_90;
  v7 = _Block_copy(v0 + 64);

  sub_26C6D8968();
  v0[131] = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v1, v3, v7);
  _Block_release(v7);
  (*(v4 + 8))(v3, v5);
  (*(v2 + 8))(v1, v13);

  if ((*(v14 + 8) | 2) == 3)
  {
    v8 = swift_task_alloc();
    v0[154] = v8;
    *v8 = v0;
    v8[1] = sub_26C6B8778;
    v9 = v0[152];

    return sub_26C6B62F0(v9);
  }

  else
  {
    v11 = v0[152];
    sub_26C6C0A84((v0 + 18));

    __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
    v12 = swift_task_alloc();
    v0[150] = v12;
    *v12 = v0;
    v12[1] = sub_26C6B6F4C;

    return MEMORY[0x282200310](v0 + 10, 0, 0);
  }
}

uint64_t sub_26C6B8778()
{

  return MEMORY[0x2822009F8](sub_26C6B8874, 0, 0);
}

uint64_t sub_26C6B8874()
{
  sub_26C6C0A84(v0 + 144);
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 840, *(v0 + 864));
  v1 = swift_task_alloc();
  *(v0 + 1200) = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 80, 0, 0);
}

uint64_t sub_26C6B894C()
{
  v1 = *(v0 + 1208);
  sub_26C6A6570(v0 + 400);
  swift_unknownObjectRelease();
  if (v1)
  {
    v2 = sub_26C6B8AC0;
  }

  else
  {
    sub_26C6C0984(v0 + 400);
    v2 = sub_26C6B89E8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6B89E8()
{
  sub_26C6C0A84((v0 + 18));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B8AC0()
{
  sub_26C6C0A84((v0 + 18));
  sub_26C6C0984((v0 + 50));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B8BA0()
{

  return MEMORY[0x2822009F8](sub_26C6B8C9C, 0, 0);
}

uint64_t sub_26C6B8C9C()
{
  sub_26C6C0A84(v0 + 144);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 272));
  __swift_mutable_project_boxed_opaque_existential_1(v0 + 840, *(v0 + 864));
  v1 = swift_task_alloc();
  *(v0 + 1200) = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 80, 0, 0);
}

uint64_t sub_26C6B8D88()
{

  return MEMORY[0x2822009F8](sub_26C6B8E84, 0, 0);
}

uint64_t sub_26C6B8E84()
{
  sub_26C678418(v0[159], v0[160]);

  sub_26C6C0A84((v0 + 18));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B8F80()
{

  return MEMORY[0x2822009F8](sub_26C6B907C, 0, 0);
}

uint64_t sub_26C6B907C()
{
  sub_26C67EE70(v0[163], v0[164]);
  sub_26C6C0A84((v0 + 18));

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 34);
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

uint64_t sub_26C6B916C()
{

  return MEMORY[0x2822009F8](sub_26C6B9268, 0, 0);
}

uint64_t sub_26C6B9268()
{
  sub_26C6C0850(v0[166], v0[167], v0[168]);
  sub_26C6C0A84((v0 + 18));
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 105), v0[108]);
  v1 = swift_task_alloc();
  v0[150] = v1;
  *v1 = v0;
  v1[1] = sub_26C6B6F4C;

  return MEMORY[0x282200310](v0 + 10, 0, 0);
}

void sub_26C6B9348(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_showPinHandler;
    v9 = Strong;
    swift_beginAccess();
    v10 = *v8;
    v11 = *(v8 + 8);
    sub_26C676954(v10, v11);

    if (v10)
    {
      v10(a2, a3, a4);
      sub_26C676904(v10, v11);
    }
  }
}

uint64_t sub_26C6B940C(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 1408) = v4;
  *(v5 + 1400) = a4;
  *(v5 + 1392) = a3;
  *(v5 + 1492) = a2;
  *(v5 + 1384) = a1;
  return MEMORY[0x2822009F8](sub_26C6B943C, 0, 0);
}

uint64_t sub_26C6B943C()
{
  v45 = v0;
  v1 = *(v0 + 1492);
  if (v1 <= 1)
  {
    if (!*(v0 + 1492))
    {
      v5 = v0 + 16;
      v9 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 1488;
      *(v0 + 24) = sub_26C6B9D24;
      v10 = swift_continuation_init();
      *(v0 + 744) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
      *(v0 + 720) = v10;
      *(v0 + 688) = MEMORY[0x277D85DD0];
      *(v0 + 696) = 1107296256;
      *(v0 + 704) = sub_26C6C28A0;
      *(v0 + 712) = &block_descriptor_113;
      [v9 provisionAnisetteWithCompletion_];
      goto LABEL_11;
    }

    v19 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);
    if (*(v19 + 16))
    {

      v20 = sub_26C689AC8(0x617461446D6973, 0xE700000000000000);
      if (v21)
      {
        sub_26C676984(*(v19 + 56) + 32 * v20, v0 + 1136);

        if (swift_dynamicCast())
        {
          v5 = v0 + 144;
          v22 = *(v0 + 1408);
          *(v0 + 1424) = *(v0 + 1280);
          *(v0 + 1432) = *(v0 + 1288);
          v23 = *(v22 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
          v24 = sub_26C6D8798();
          *(v0 + 1440) = v24;
          *(v0 + 144) = v0;
          *(v0 + 184) = v0 + 1491;
          *(v0 + 152) = sub_26C6BA0CC;
          v25 = swift_continuation_init();
          *(v0 + 808) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
          *(v0 + 784) = v25;
          *(v0 + 752) = MEMORY[0x277D85DD0];
          *(v0 + 760) = 1107296256;
          *(v0 + 768) = sub_26C6C28A0;
          *(v0 + 776) = &block_descriptor_110;
          [v23 syncAnisetteWithSIMData:v24 completion:v0 + 752];
          goto LABEL_11;
        }
      }

      else
      {
      }
    }

    sub_26C6C0B64();
    v27 = swift_allocError();
    v28 = xmmword_26C6DD360;
  }

  else
  {
    if (v1 == 2)
    {
      v5 = v0 + 208;
      v11 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
      *(v0 + 208) = v0;
      *(v0 + 248) = v0 + 1490;
      *(v0 + 216) = sub_26C6BA480;
      v12 = swift_continuation_init();
      *(v0 + 936) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
      *(v0 + 912) = v12;
      *(v0 + 880) = MEMORY[0x277D85DD0];
      *(v0 + 888) = 1107296256;
      *(v0 + 896) = sub_26C6C28A0;
      *(v0 + 904) = &block_descriptor_107_0;
      [v11 eraseAnisetteWithCompletion_];
      goto LABEL_11;
    }

    if (v1 == 3)
    {
      v2 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);
      if (*(v2 + 16))
      {

        v3 = sub_26C689AC8(0x7250646C756F6873, 0xEF6E6F697369766FLL);
        if (v4)
        {
          sub_26C676984(*(v2 + 56) + 32 * v3, v0 + 1040);

          if (swift_dynamicCast())
          {
            v5 = v0 + 272;
            v6 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
            v7 = *(v0 + 1489);
            *(v0 + 272) = v0;
            *(v0 + 312) = v0 + 1360;
            *(v0 + 280) = sub_26C6BA800;
            v8 = swift_continuation_init();
            *(v0 + 680) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
            *(v0 + 656) = v8;
            *(v0 + 624) = MEMORY[0x277D85DD0];
            *(v0 + 632) = 1107296256;
            *(v0 + 640) = sub_26C6C296C;
            *(v0 + 648) = &block_descriptor_104;
            [v6 fetchAnisetteDataAndProvisionIfNecessary:v7 withCompletion:v0 + 624];
LABEL_11:

            return MEMORY[0x282200938](v5);
          }
        }

        else
        {
        }
      }

      sub_26C6C0B64();
      v27 = swift_allocError();
      v28 = xmmword_26C6DD350;
    }

    else
    {
      v13 = *(*(v0 + 1384) + OBJC_IVAR___WFAnisetteRequest_data);
      if (*(v13 + 16))
      {

        v14 = sub_26C689AC8(1684632420, 0xE400000000000000);
        if (v15)
        {
          sub_26C676984(*(v13 + 56) + 32 * v14, v0 + 944);

          if (swift_dynamicCast())
          {
            v5 = v0 + 80;
            v16 = *(*(v0 + 1408) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_anisetteAgent);
            v17 = sub_26C6D89E8();
            *(v0 + 1472) = v17;

            *(v0 + 80) = v0;
            *(v0 + 120) = v0 + 1368;
            *(v0 + 88) = sub_26C6BAAA4;
            v18 = swift_continuation_init();
            *(v0 + 872) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
            *(v0 + 848) = v18;
            *(v0 + 816) = MEMORY[0x277D85DD0];
            *(v0 + 824) = 1107296256;
            *(v0 + 832) = sub_26C6C296C;
            *(v0 + 840) = &block_descriptor_101;
            [v16 legacyAnisetteDataForDSID:v17 withCompletion:v0 + 816];
            goto LABEL_11;
          }
        }

        else
        {
        }
      }

      sub_26C6C0B64();
      v27 = swift_allocError();
      v28 = xmmword_26C6DD340;
    }
  }

  *v26 = v28;
  *(v26 + 16) = 0;
  swift_willThrow();
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v29 = sub_26C6D8898();
  __swift_project_value_buffer(v29, qword_2804AD1F8);
  v30 = v27;
  v31 = sub_26C6D8878();
  v32 = sub_26C6D8BA8();

  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v44 = v34;
    *v33 = 136446210;
    *(v0 + 1376) = v27;
    v35 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v36 = sub_26C6D8A18();
    v38 = sub_26C67A77C(v36, v37, &v44);

    *(v33 + 4) = v38;
    _os_log_impl(&dword_26C66B000, v31, v32, "Anisette Request Handling Error: %{public}s.", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x26D6A7490](v34, -1, -1);
    MEMORY[0x26D6A7490](v33, -1, -1);
  }

  v39 = *(v0 + 1392);
  v40 = v27;
  v41 = sub_26C689E88(MEMORY[0x277D84F90]);
  v39(v27, 0, v41);

  v42 = *(v0 + 8);

  return v42();
}

uint64_t sub_26C6B9D24()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1416) = v1;
  if (v1)
  {
    v2 = sub_26C6BAD50;
  }

  else
  {
    v2 = sub_26C6B9E34;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6B9E34()
{
  v1 = *(v0 + 1488);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C6DA0F0;
  *(v0 + 1232) = 0xD00000000000001CLL;
  *(v0 + 1240) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C6DA0F0;
  *(v4 + 32) = 0x7369766F72507369;
  v5 = v4 + 32;
  *(v4 + 40) = 0xED000064656E6F69;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = v1;
  v6 = sub_26C68AB1C(v4);
  swift_setDeallocating();
  sub_26C677B60(v5, &qword_2804A8B48, &qword_26C6DB3D0);
  swift_deallocClassInstance();
  v7 = type metadata accessor for AnisetteResponse();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___WFAnisetteResponse_id];
  *v9 = 0x6F697369766F7270;
  *(v9 + 1) = 0xE90000000000006ELL;
  *&v8[OBJC_IVAR___WFAnisetteResponse_data] = v6;
  *(v0 + 1296) = v8;
  *(v0 + 1304) = v7;
  v10 = objc_msgSendSuper2((v0 + 1296), sel_init);
  v11 = sub_26C6CC2C8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    *(v2 + 96) = v3;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1032) = MEMORY[0x277CC9318];
    *(v0 + 1008) = v11;
    *(v0 + 1016) = v13;
    sub_26C68A024((v0 + 1008), (v2 + 72));
  }

  v14 = *(v0 + 1392);
  v15 = sub_26C689E88(v2);
  swift_setDeallocating();
  sub_26C677B60(v2 + 32, &qword_2804A86B8, &qword_26C6DA550);
  swift_deallocClassInstance();
  v14(0, 0, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26C6BA0CC()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1448) = v1;
  if (v1)
  {
    v2 = sub_26C6BAF5C;
  }

  else
  {
    v2 = sub_26C6BA1DC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6BA1DC()
{
  v1 = *(v0 + 1491);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C6DA0F0;
  *(v0 + 1344) = 0xD00000000000001CLL;
  *(v0 + 1352) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_26C6DA0F0;
  *(v4 + 32) = 0x6465636E79537369;
  v5 = v4 + 32;
  *(v4 + 40) = 0xE800000000000000;
  *(v4 + 72) = MEMORY[0x277D839B0];
  *(v4 + 48) = v1;
  v6 = sub_26C68AB1C(v4);
  swift_setDeallocating();
  sub_26C677B60(v5, &qword_2804A8B48, &qword_26C6DB3D0);
  swift_deallocClassInstance();
  v7 = type metadata accessor for AnisetteResponse();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___WFAnisetteResponse_id];
  *v9 = 1668184435;
  *(v9 + 1) = 0xE400000000000000;
  *&v8[OBJC_IVAR___WFAnisetteResponse_data] = v6;
  *(v0 + 1200) = v8;
  *(v0 + 1208) = v7;
  v10 = objc_msgSendSuper2((v0 + 1200), sel_init);
  v11 = sub_26C6CC2C8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    *(v2 + 96) = v3;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1192) = MEMORY[0x277CC9318];
    *(v0 + 1168) = v11;
    *(v0 + 1176) = v13;
    sub_26C68A024((v0 + 1168), (v2 + 72));
  }

  v14 = *(v0 + 1432);
  v15 = *(v0 + 1424);
  v16 = *(v0 + 1392);
  v17 = sub_26C689E88(v2);
  swift_setDeallocating();
  sub_26C677B60(v2 + 32, &qword_2804A86B8, &qword_26C6DA550);
  swift_deallocClassInstance();
  v16(0, 0, v17);

  sub_26C678418(v15, v14);
  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_26C6BA480()
{
  v1 = *(*v0 + 240);
  *(*v0 + 1456) = v1;
  if (v1)
  {
    v2 = sub_26C6BB184;
  }

  else
  {
    v2 = sub_26C6BA590;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6BA590()
{
  v1 = *(v0 + 1490);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_26C6DA0F0;
  *(v0 + 1248) = 0xD00000000000001CLL;
  *(v0 + 1256) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(inited + 32) = 0x6465736172457369;
  v5 = inited + 32;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 72) = MEMORY[0x277D839B0];
  *(inited + 48) = v1;
  v6 = sub_26C68AB1C(inited);
  swift_setDeallocating();
  sub_26C677B60(v5, &qword_2804A8B48, &qword_26C6DB3D0);
  v7 = type metadata accessor for AnisetteResponse();
  v8 = objc_allocWithZone(v7);
  v9 = &v8[OBJC_IVAR___WFAnisetteResponse_id];
  *v9 = 0x6573617265;
  *(v9 + 1) = 0xE500000000000000;
  *&v8[OBJC_IVAR___WFAnisetteResponse_data] = v6;
  *(v0 + 1264) = v8;
  *(v0 + 1272) = v7;
  v10 = objc_msgSendSuper2((v0 + 1264), sel_init);
  v11 = sub_26C6CC2C8();
  v13 = v12;

  if (v13 >> 60 == 15)
  {
    *(v2 + 96) = v3;
    *(v2 + 72) = 0;
    *(v2 + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1096) = MEMORY[0x277CC9318];
    *(v0 + 1072) = v11;
    *(v0 + 1080) = v13;
    sub_26C68A024((v0 + 1072), (v2 + 72));
  }

  v14 = *(v0 + 1392);
  v15 = sub_26C689E88(v2);
  swift_setDeallocating();
  sub_26C677B60(v2 + 32, &qword_2804A86B8, &qword_26C6DA550);
  swift_deallocClassInstance();
  v14(0, 0, v15);

  v16 = *(v0 + 8);

  return v16();
}

uint64_t sub_26C6BA800()
{
  v1 = *(*v0 + 304);
  *(*v0 + 1464) = v1;
  if (v1)
  {
    v2 = sub_26C6BB390;
  }

  else
  {
    v2 = sub_26C6BA910;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6BA910()
{
  v1 = *(v0 + 1360);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(v0 + 1216) = 0xD00000000000001CLL;
  *(v0 + 1224) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  v4 = v1;
  v5 = sub_26C6CC838(v1, 3u);
  v6 = sub_26C6CC2C8();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    *(inited + 96) = v3;
    *(inited + 72) = 0;
    *(inited + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1000) = MEMORY[0x277CC9318];
    *(v0 + 976) = v6;
    *(v0 + 984) = v8;
    sub_26C68A024((v0 + 976), (inited + 72));
  }

  v9 = *(v0 + 1392);
  v10 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  v9(0, 0, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26C6BAAA4()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1480) = v1;
  if (v1)
  {
    v2 = sub_26C6BB59C;
  }

  else
  {
    v2 = sub_26C6BABB4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6BABB4()
{
  v1 = *(v0 + 1368);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  *(v0 + 1312) = 0xD00000000000001CLL;
  *(v0 + 1320) = 0x800000026C6E0110;
  v3 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  v4 = v1;
  v5 = sub_26C6CC838(v1, 4u);
  v6 = sub_26C6CC2C8();
  v8 = v7;

  if (v8 >> 60 == 15)
  {
    *(inited + 96) = v3;
    *(inited + 72) = 0;
    *(inited + 80) = 0xE000000000000000;
  }

  else
  {
    *(v0 + 1128) = MEMORY[0x277CC9318];
    *(v0 + 1104) = v6;
    *(v0 + 1112) = v8;
    sub_26C68A024((v0 + 1104), (inited + 72));
  }

  v9 = *(v0 + 1392);
  v10 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
  v9(0, 0, v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_26C6BAD50()
{
  v18 = v0;
  swift_willThrow();
  v1 = v0[177];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD1F8);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[172] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v9 = sub_26C6D8A18();
    v11 = sub_26C67A77C(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Anisette Request Handling Error: %{public}s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v12 = v0[174];
  v13 = v1;
  v14 = sub_26C689E88(MEMORY[0x277D84F90]);
  v12(v1, 0, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26C6BAF5C()
{
  v21 = v0;
  v1 = v0[180];
  v2 = v0[179];
  v3 = v0[178];
  swift_willThrow();
  sub_26C678418(v3, v2);

  v4 = v0[181];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v5 = sub_26C6D8898();
  __swift_project_value_buffer(v5, qword_2804AD1F8);
  v6 = v4;
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BA8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v20 = v10;
    *v9 = 136446210;
    v0[172] = v4;
    v11 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v12 = sub_26C6D8A18();
    v14 = sub_26C67A77C(v12, v13, &v20);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_26C66B000, v7, v8, "Anisette Request Handling Error: %{public}s.", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v15 = v0[174];
  v16 = v4;
  v17 = sub_26C689E88(MEMORY[0x277D84F90]);
  v15(v4, 0, v17);

  v18 = v0[1];

  return v18();
}

uint64_t sub_26C6BB184()
{
  v18 = v0;
  swift_willThrow();
  v1 = v0[182];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD1F8);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[172] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v9 = sub_26C6D8A18();
    v11 = sub_26C67A77C(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Anisette Request Handling Error: %{public}s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v12 = v0[174];
  v13 = v1;
  v14 = sub_26C689E88(MEMORY[0x277D84F90]);
  v12(v1, 0, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26C6BB390()
{
  v18 = v0;
  swift_willThrow();
  v1 = v0[183];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD1F8);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446210;
    v0[172] = v1;
    v8 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v9 = sub_26C6D8A18();
    v11 = sub_26C67A77C(v9, v10, &v17);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Anisette Request Handling Error: %{public}s.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v12 = v0[174];
  v13 = v1;
  v14 = sub_26C689E88(MEMORY[0x277D84F90]);
  v12(v1, 0, v14);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26C6BB59C()
{
  v19 = v0;
  v1 = v0[184];
  swift_willThrow();

  v2 = v0[185];
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD1F8);
  v4 = v2;
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18 = v8;
    *v7 = 136446210;
    v0[172] = v2;
    v9 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v10 = sub_26C6D8A18();
    v12 = sub_26C67A77C(v10, v11, &v18);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_26C66B000, v5, v6, "Anisette Request Handling Error: %{public}s.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v13 = v0[174];
  v14 = v2;
  v15 = sub_26C689E88(MEMORY[0x277D84F90]);
  v13(v2, 0, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_26C6BB7B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x2822009F8](sub_26C6BB7DC, 0, 0);
}

uint64_t sub_26C6BB7DC()
{
  *(v0 + 72) = *(*(v0 + 64) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  swift_getObjectType();
  v2 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BB870, v2, v1);
}

uint64_t sub_26C6BB870()
{
  v0[10] = sub_26C6AB310(v0[2], v0[3], v0[4], v0[5]);
  v0[11] = v1;

  return MEMORY[0x2822009F8](sub_26C6BB908, 0, 0);
}

uint64_t sub_26C6BB908()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[6];
  v4 = sub_26C69F1B4(v2, v1);
  v3(0, 0, v4);

  sub_26C678418(v2, v1);
  v5 = v0[1];

  return v5();
}

uint64_t sub_26C6BB9B0()
{
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD240);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[10];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    sub_26C6AFA8C();
    swift_allocError();
    *v9 = v6;
    v10 = v1;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v11;
    *v8 = v11;
    _os_log_impl(&dword_26C66B000, v4, v5, "Unable to prepare Rapport Source Template %{public}@.", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v12 = v0[6];

  sub_26C699F34();
  v13 = swift_allocError();
  *v14 = 2;
  v12(v13, 0, 0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26C6BBBB4(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 40) = a3;
  *(v4 + 48) = v3;
  *(v4 + 32) = a2;
  v6 = sub_26C6D8778();
  *(v4 + 56) = v6;
  *(v4 + 64) = *(v6 - 8);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = swift_task_alloc();
  *(v4 + 88) = swift_task_alloc();
  v7 = sub_26C6D8948();
  *(v4 + 96) = v7;
  *(v4 + 104) = *(v7 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = *a1;

  return MEMORY[0x2822009F8](sub_26C6BBCF8, 0, 0);
}

uint64_t sub_26C6BBCF8()
{
  v2 = *(v0 + 120);
  v1 = *(v0 + 128);
  v3 = (*(v0 + 48) + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_fileTransferAgent);
  *(v0 + 136) = *v3;
  *(v0 + 144) = v3[1];
  *(v0 + 152) = swift_getObjectType();
  *(v0 + 16) = v2;
  *(v0 + 24) = v1;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_26C6BBDD8;
  v5 = *(v0 + 112);
  v6 = *(v0 + 88);

  return sub_26C6ABFF8(v5, v6, (v0 + 16));
}

uint64_t sub_26C6BBDD8()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_26C6BC7BC;
  }

  else
  {
    v2 = sub_26C6BBEEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6BBEEC()
{
  v84 = v0;
  v1 = [objc_opt_self() defaultManager];
  sub_26C6D8768();
  v2 = sub_26C6D89E8();

  v3 = [v1 fileExistsAtPath_];

  if (!v3)
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v24 = v0[11];
    v26 = v0[8];
    v25 = v0[9];
    v27 = v0[7];
    v28 = sub_26C6D8898();
    __swift_project_value_buffer(v28, qword_2804AD288);
    (*(v26 + 16))(v25, v24, v27);
    v29 = sub_26C6D8878();
    v30 = sub_26C6D8BA8();
    v31 = os_log_type_enabled(v29, v30);
    v33 = v0[8];
    v32 = v0[9];
    v34 = v0[7];
    if (v31)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v83[0] = v36;
      *v35 = 136446210;
      v79 = sub_26C6D8768();
      v38 = v37;
      v81 = *(v33 + 8);
      v81(v32, v34);
      v39 = sub_26C67A77C(v79, v38, v83);

      *(v35 + 4) = v39;
      _os_log_impl(&dword_26C66B000, v29, v30, "Unable to find file at path: %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x26D6A7490](v36, -1, -1);
      MEMORY[0x26D6A7490](v35, -1, -1);
    }

    else
    {

      v81 = *(v33 + 8);
      v81(v32, v34);
    }

    v41 = v0[13];
    v40 = v0[14];
    v43 = v0[11];
    v42 = v0[12];
    v44 = v0[7];
    v45 = v0[4];
    sub_26C699F34();
    v46 = swift_allocError();
    *v47 = 1;
    v45(v46, 0, 0);

    v81(v43, v44);
    (*(v41 + 8))(v40, v42);
    goto LABEL_17;
  }

  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD288);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_26C66B000, v5, v6, "Encoding Enrollment Assets Data", v7, 2u);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v8 = v0[21];

  sub_26C6D86A8();
  swift_allocObject();
  sub_26C6D8698();
  sub_26C6C0BE4(&qword_2804A8F78, MEMORY[0x277D04EB8], MEMORY[0x277D04EC0]);
  v9 = sub_26C6D8688();
  v0[22] = v9;
  v0[23] = v10;
  if (v8)
  {

    v11 = v8;
    v12 = sub_26C6D8878();
    v13 = sub_26C6D8BB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = v8;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_26C66B000, v12, v13, "Failed to encode EnrollmentAsserts %{public}@", v14, 0xCu);
      sub_26C677B60(v15, &qword_2804A9070, &qword_26C6DA3C0);
      MEMORY[0x26D6A7490](v15, -1, -1);
      MEMORY[0x26D6A7490](v14, -1, -1);
    }

    v18 = v0[4];

    sub_26C699F34();
    v19 = swift_allocError();
    *v20 = 1;
    v18(v19, 0, 0);

    goto LABEL_10;
  }

  v80 = v9;
  v82 = v10;

  v50 = (sub_26C6D8718() + 16);
  if (!*v50)
  {
    v61 = v0[10];
    v60 = v0[11];
    v63 = v0[7];
    v62 = v0[8];

    (*(v62 + 16))(v61, v60, v63);
    v64 = sub_26C6D8878();
    v65 = sub_26C6D8BB8();
    v66 = os_log_type_enabled(v64, v65);
    v67 = v0[10];
    v69 = v0[7];
    v68 = v0[8];
    if (v66)
    {
      v70 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v83[0] = v71;
      *v70 = 136446210;
      sub_26C6C0BE4(&qword_2804A87B8, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v72 = sub_26C6D8E28();
      v74 = v73;
      (*(v68 + 8))(v67, v69);
      v75 = sub_26C67A77C(v72, v74, v83);

      *(v70 + 4) = v75;
      _os_log_impl(&dword_26C66B000, v64, v65, "Failed to get fileName from enrollmentsURL %{public}s", v70, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v71);
      MEMORY[0x26D6A7490](v71, -1, -1);
      MEMORY[0x26D6A7490](v70, -1, -1);
    }

    else
    {

      (*(v68 + 8))(v67, v69);
    }

    v76 = v0[4];
    sub_26C699F34();
    v77 = swift_allocError();
    *v78 = 1;
    v76(v77, 0, 0);

    sub_26C678418(v80, v82);
LABEL_10:
    v22 = v0[13];
    v21 = v0[14];
    v23 = v0[12];
    (*(v0[8] + 8))(v0[11], v0[7]);
    (*(v22 + 8))(v21, v23);
LABEL_17:

    v48 = v0[1];

    return v48();
  }

  v51 = &v50[2 * *v50];
  v52 = *v51;
  v0[24] = *v51;
  v53 = v51[1];
  v0[25] = v53;
  swift_bridgeObjectRetain_n();

  v54 = sub_26C6D8878();
  v55 = sub_26C6D8BB8();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v83[0] = v57;
    *v56 = 136446210;
    *(v56 + 4) = sub_26C67A77C(v52, v53, v83);
    _os_log_impl(&dword_26C66B000, v54, v55, "Sending Enrollments zipped file %{public}s", v56, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v57);
    MEMORY[0x26D6A7490](v57, -1, -1);
    MEMORY[0x26D6A7490](v56, -1, -1);
  }

  v59 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BC9C0, v59, v58);
}

uint64_t sub_26C6BC7BC()
{
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[21];
  v2 = sub_26C6D8898();
  __swift_project_value_buffer(v2, qword_2804AD288);
  v3 = v1;
  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BA8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = v0[21];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26C66B000, v4, v5, "Error getting enrollments URL %@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v11 = v0[21];
  v12 = v0[4];

  sub_26C699F34();
  v13 = swift_allocError();
  *v14 = 1;
  v12(v13, 0, 0);

  v15 = v0[1];

  return v15();
}

uint64_t sub_26C6BC9C0()
{
  sub_26C6ABCA0(*(v0 + 192), *(v0 + 200), *(v0 + 88));

  return MEMORY[0x2822009F8](sub_26C6BCA30, 0, 0);
}

uint64_t sub_26C6BCA30()
{
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  v3 = *(v0 + 32);
  v4 = sub_26C6C61AC(*(v0 + 192), *(v0 + 200), v2, v1);
  v3(0, 0, v4);

  sub_26C678418(v2, v1);
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 96);
  (*(*(v0 + 64) + 8))(*(v0 + 88), *(v0 + 56));
  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

void sub_26C6BCB44(char a1, void (*a2)(void, void, unint64_t), uint64_t a3)
{
  v7 = sub_26C6D8958();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_26C6D8978();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 == 3)
  {
    v33[0] = *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v17 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = sub_26C6C0A00;
    v41 = v17;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v16 = &block_descriptor_74;
    goto LABEL_5;
  }

  if (!a1)
  {
    v33[0] = *(v3 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v15 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v40 = sub_26C6C0A20;
    v41 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v37 = 1107296256;
    v16 = &block_descriptor_78;
LABEL_5:
    v38 = sub_26C670B0C;
    v39 = v16;
    v18 = _Block_copy(&aBlock);
    v34 = a2;
    v19 = v18;

    sub_26C6D8968();
    v35 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    v33[1] = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v14, v10, v19);
    _Block_release(v19);
    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v11);

    v20 = sub_26C689E88(MEMORY[0x277D84F90]);
    v34(0, 0, v20);

    return;
  }

  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v21 = a2;
  v22 = sub_26C6D8898();
  __swift_project_value_buffer(v22, qword_2804AD240);
  v23 = sub_26C6D8878();
  v24 = sub_26C6D8BA8();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    aBlock = v26;
    *v25 = 136446210;
    LOBYTE(v35) = a1;
    v27 = sub_26C6D8A18();
    v29 = sub_26C67A77C(v27, v28, &aBlock);

    *(v25 + 4) = v29;
    _os_log_impl(&dword_26C66B000, v23, v24, "Received unhandled security event: %{public}s", v25, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
    MEMORY[0x26D6A7490](v26, -1, -1);
    MEMORY[0x26D6A7490](v25, -1, -1);
  }

  sub_26C699F34();
  v30 = swift_allocError();
  *v31 = 1;
  v32 = sub_26C689E88(MEMORY[0x277D84F90]);
  v21(v30, 0, v32);
}

void sub_26C6BD068(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_userInteractionProgressEventHandler;
    v3 = Strong;
    swift_beginAccess();
    v5 = *v2;
    v4 = *(v2 + 8);
    sub_26C676954(v5, v4);

    if (v5)
    {
      v5(0);
      sub_26C676904(v5, v4);
    }
  }

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v8 = v6;
    swift_beginAccess();
    v9 = *v7;
    v10 = *(v7 + 8);
    sub_26C676954(v9, v10);

    if (v9)
    {
      v11 = sub_26C689E88(MEMORY[0x277D84F90]);
      v9(5, v11);
      sub_26C676904(v9, v10);
    }
  }
}

uint64_t sub_26C6BD19C(char a1, void (*a2)(void, void, unint64_t), uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v32 = a2;
  v6 = sub_26C6D8958();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_26C6D8978();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v30 = *(v4 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = sub_26C6C09D8;
    v39 = v14;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_26C670B0C;
    v37 = &block_descriptor_65;
    v15 = _Block_copy(&aBlock);

    sub_26C6D8968();
    v33 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v13, v9, v15);
    _Block_release(v15);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v10);
  }

  else
  {
    v30 = v10;
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD240);
    v17 = sub_26C6D8878();
    v18 = sub_26C6D8BB8();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_26C66B000, v17, v18, "Setup Complete", v19, 2u);
      MEMORY[0x26D6A7490](v19, -1, -1);
    }

    v29 = *(v4 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_publisherQueue);
    v20 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = sub_26C6C09F8;
    v39 = v20;
    aBlock = MEMORY[0x277D85DD0];
    v35 = 1107296256;
    v36 = sub_26C670B0C;
    v37 = &block_descriptor_69_0;
    v21 = _Block_copy(&aBlock);

    sub_26C6D8968();
    v33 = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v13, v9, v21);
    _Block_release(v21);
    (*(v7 + 8))(v9, v6);
    (*(v11 + 8))(v13, v30);

    v22 = sub_26C6B0A20();
    v24 = v23;
    v25 = sub_26C68A7EC(&unk_287D2B0F8);
    sub_26C677B60(&unk_287D2B118, &qword_2804A8BE8, &qword_26C6DB4F8);
    v37 = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
    v38 = sub_26C6C08B8();
    v26 = swift_allocObject();
    aBlock = v26;
    v26[2] = 0xD000000000000044;
    v26[3] = 0x800000026C6E0070;
    v26[4] = v22;
    v26[5] = v24;
    v26[6] = v25;
    sub_26C6CDF0C(&aBlock);
    __swift_destroy_boxed_opaque_existential_1Tm(&aBlock);
  }

  v27 = sub_26C689E88(MEMORY[0x277D84F90]);
  v32(0, 0, v27);
}

void sub_26C6BD7A4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v3 = Strong;
    swift_beginAccess();
    v5 = *v2;
    v4 = *(v2 + 8);
    sub_26C676954(v5, v4);

    if (v5)
    {
      v6 = sub_26C689E88(MEMORY[0x277D84F90]);
      v5(15, v6);
      sub_26C676904(v5, v4);
    }
  }

  swift_beginAccess();
  v7 = swift_unknownObjectWeakLoadStrong();
  if (v7)
  {
    v8 = v7 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v9 = v7;
    swift_beginAccess();
    v10 = *v8;
    v11 = *(v8 + 8);
    sub_26C676954(v10, v11);

    if (v10)
    {
      v12 = sub_26C689E88(MEMORY[0x277D84F90]);
      v10(1, v12);
      sub_26C676904(v10, v11);
    }
  }
}

uint64_t sub_26C6BD8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[50] = a3;
  v4[51] = v3;
  v4[48] = a1;
  v4[49] = a2;
  v5 = sub_26C6D8958();
  v4[52] = v5;
  v4[53] = *(v5 - 8);
  v4[54] = swift_task_alloc();
  v6 = sub_26C6D8978();
  v4[55] = v6;
  v4[56] = *(v6 - 8);
  v4[57] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_26C6BDA18, 0, 0);
}

uint64_t sub_26C6BDA18()
{
  v82 = v0;
  v1 = *(v0 + 400);
  if (v1 >> 62 == 2)
  {
    v13 = (v0 + 144);
    v14 = (v1 & 0x3FFFFFFFFFFFFFFFLL);
    v15 = qword_2804A85A0;
    v79 = *(v0 + 392);

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD240);
    v17 = v14;
    v18 = sub_26C6D8878();
    v19 = sub_26C6D8BA8();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v81[0] = v21;
      *v20 = 136446210;
      swift_getErrorValue();
      v22 = sub_26C6D8E88();
      v24 = sub_26C67A77C(v22, v23, v81);

      *(v20 + 4) = v24;
      v13 = (v0 + 144);
      _os_log_impl(&dword_26C66B000, v18, v19, "SFSession error: %{public}s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x26D6A7490](v21, -1, -1);
      MEMORY[0x26D6A7490](v20, -1, -1);
    }

    v25 = v14;
    v26 = *(v0 + 448);
    v27 = *(v0 + 456);
    v28 = *(v0 + 432);
    v30 = *(v0 + 416);
    v29 = *(v0 + 424);
    v78 = *(v0 + 392);
    v76 = *(v0 + 440);
    v77 = *(v0 + 384);
    v31 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v32 = swift_allocObject();
    *(v32 + 16) = v31;
    *(v32 + 24) = v25;
    *(v0 + 176) = sub_26C6C089C;
    *(v0 + 184) = v32;
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_26C670B0C;
    *(v0 + 168) = &block_descriptor_51;
    v33 = _Block_copy(v13);
    v34 = v25;

    sub_26C6D8968();
    *(v0 + 352) = MEMORY[0x277D84F90];
    sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
    sub_26C6BFEC4();
    sub_26C6D8C88();
    MEMORY[0x26D6A6AF0](0, v27, v28, v33);
    _Block_release(v33);
    (*(v29 + 8))(v28, v30);
    (*(v26 + 8))(v27, v76);

    if (v78)
    {
      v35 = v77;
    }

    else
    {
      v35 = 0;
    }

    if (v78)
    {
      v36 = v79;
    }

    else
    {
      v36 = 0xE000000000000000;
    }

    v37 = sub_26C6D86E8();
    v38 = [v37 code];

    *(v0 + 360) = v38;
    v39 = sub_26C6D8E28();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8BE0, &qword_26C6DB4F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    *(inited + 32) = 0x646F43726F727265;
    v43 = inited + 32;
    *(inited + 40) = 0xE900000000000065;
    *(inited + 48) = v39;
    *(inited + 56) = v41;
    v44 = sub_26C68A7EC(inited);
    swift_setDeallocating();
    sub_26C677B60(v43, &qword_2804A8BE8, &qword_26C6DB4F8);
    *(v0 + 264) = &type metadata for DisconnectedProximitySetupClientAnalyticsEvent;
    *(v0 + 272) = sub_26C6C08B8();
    v45 = swift_allocObject();
    *(v0 + 240) = v45;
    v45[2] = 0xD000000000000044;
    v45[3] = 0x800000026C6E0070;
    v45[4] = v35;
    v45[5] = v36;
    v45[6] = v44;
    sub_26C6CDF0C((v0 + 240));
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
    goto LABEL_38;
  }

  if (v1 >> 62 != 3)
  {
    goto LABEL_33;
  }

  v2 = *(v0 + 384);
  v3 = *(v0 + 392);
  if (v1 == 0xC000000000000000 && !v3 && v2 == 1)
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD240);
    v5 = sub_26C6D8878();
    v6 = sub_26C6D8BA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_26C66B000, v5, v6, "SFSession interrupted", v7, 2u);
      MEMORY[0x26D6A7490](v7, -1, -1);
    }

    v8 = *(v0 + 408);

    v9 = v8 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_interruptionHandler;
    swift_beginAccess();
    v10 = *v9;
    if (*v9)
    {
      v11 = *(v9 + 8);

      v10(v12);
      sub_26C676904(v10, v11);
    }

LABEL_38:

    v74 = *(v0 + 8);

    return v74();
  }

  if (v1 != 0xC000000000000000 || v3 || v2 != 3)
  {
LABEL_33:
    if (qword_2804A85A0 != -1)
    {
      swift_once();
      v1 = *(v0 + 400);
    }

    v62 = *(v0 + 384);
    v61 = *(v0 + 392);
    v63 = sub_26C6D8898();
    __swift_project_value_buffer(v63, qword_2804AD240);
    sub_26C6C0804(v62, v61, v1);
    v64 = sub_26C6D8878();
    v65 = sub_26C6D8BA8();
    sub_26C6C0850(v62, v61, v1);
    if (os_log_type_enabled(v64, v65))
    {
      v67 = *(v0 + 392);
      v66 = *(v0 + 400);
      v68 = *(v0 + 384);
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v81[0] = v70;
      *v69 = 136446210;
      *(v0 + 280) = v68;
      *(v0 + 288) = v67;
      *(v0 + 296) = v66;
      sub_26C6C0804(v68, v67, v66);
      v71 = sub_26C6D8A18();
      v73 = sub_26C67A77C(v71, v72, v81);

      *(v69 + 4) = v73;
      _os_log_impl(&dword_26C66B000, v64, v65, "Session Agent Error: %{public}s", v69, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v70);
      MEMORY[0x26D6A7490](v70, -1, -1);
      MEMORY[0x26D6A7490](v69, -1, -1);
    }

    goto LABEL_38;
  }

  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v46 = sub_26C6D8898();
  __swift_project_value_buffer(v46, qword_2804AD240);
  v47 = sub_26C6D8878();
  v48 = sub_26C6D8BA8();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 0;
    _os_log_impl(&dword_26C66B000, v47, v48, "Failed to establish encrypted channel.", v49, 2u);
    MEMORY[0x26D6A7490](v49, -1, -1);
  }

  v51 = *(v0 + 448);
  v50 = *(v0 + 456);
  v52 = *(v0 + 432);
  v80 = *(v0 + 440);
  v54 = *(v0 + 416);
  v53 = *(v0 + 424);
  v55 = *(v0 + 408);

  v56 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *(v0 + 224) = sub_26C6C0954;
  *(v0 + 232) = v56;
  *(v0 + 192) = MEMORY[0x277D85DD0];
  *(v0 + 200) = 1107296256;
  *(v0 + 208) = sub_26C670B0C;
  *(v0 + 216) = &block_descriptor_58_0;
  v57 = _Block_copy((v0 + 192));

  sub_26C6D8968();
  *(v0 + 376) = MEMORY[0x277D84F90];
  sub_26C6C0BE4(&qword_2804A8F50, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F58, &qword_26C6DD370);
  sub_26C6BFEC4();
  sub_26C6D8C88();
  MEMORY[0x26D6A6AF0](0, v50, v52, v57);
  _Block_release(v57);
  (*(v53 + 8))(v52, v54);
  (*(v51 + 8))(v50, v80);

  *(v0 + 464) = *(v55 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 104) = &type metadata for SecurityRequest;
  *(v0 + 112) = &off_287D2D528;
  *(v0 + 80) = 2;
  v58 = swift_allocObject();
  *(v58 + 16) = 2;
  *(v0 + 120) = sub_26C6C11B0;
  *(v0 + 128) = v58;
  *(v0 + 136) = 0;
  type metadata accessor for SFSessionAgent(0);
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  swift_unknownObjectRetain();
  v60 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BE518, v60, v59);
}

uint64_t sub_26C6BE518()
{
  sub_26C6A6570(v0 + 80);
  swift_unknownObjectRelease();
  sub_26C6C0984(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_26C6BE5EC()
{
  sub_26C6C0984(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

void sub_26C6BE660(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v5 = Strong;
    swift_beginAccess();
    v7 = *v4;
    v6 = *(v4 + 8);
    sub_26C676954(v7, v6);

    if (v7)
    {
      v8 = sub_26C689E88(MEMORY[0x277D84F90]);
      v7(a2, v8);
      sub_26C676904(v7, v6);
    }
  }
}

void sub_26C6BE724(NSObject *a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a1)
  {
    v5 = a1;
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v6 = sub_26C6D8898();
    __swift_project_value_buffer(v6, qword_2804AD240);
    v7 = a1;
    v8 = sub_26C6D8878();
    v9 = sub_26C6D8BB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v28 = v11;
      *v10 = 136446466;
      v12 = sub_26C6D8A18();
      v14 = sub_26C67A77C(v12, v13, &v28);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2082;
      v15 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v16 = sub_26C6D8A18();
      v18 = sub_26C67A77C(v16, v17, &v28);

      *(v10 + 14) = v18;
      _os_log_impl(&dword_26C66B000, v8, v9, "Request %{public}s failed to send, error: %{public}s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v11, -1, -1);
      MEMORY[0x26D6A7490](v10, -1, -1);

      return;
    }

    v26 = a1;
  }

  else
  {
    if (qword_2804A85A0 != -1)
    {
      swift_once();
    }

    v19 = sub_26C6D8898();
    __swift_project_value_buffer(v19, qword_2804AD240);
    oslog = sub_26C6D8878();
    v20 = sub_26C6D8BB8();
    if (os_log_type_enabled(oslog, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v28 = v22;
      *v21 = 136446210;
      v23 = sub_26C6D8A18();
      v25 = sub_26C67A77C(v23, v24, &v28);

      *(v21 + 4) = v25;
      _os_log_impl(&dword_26C66B000, oslog, v20, "Request %{public}s sent successfully.", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v22);
      MEMORY[0x26D6A7490](v22, -1, -1);
      MEMORY[0x26D6A7490](v21, -1, -1);

      return;
    }

    v26 = oslog;
  }
}

void sub_26C6BEA84(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_setupProgressEventHandler;
    v4 = Strong;
    swift_beginAccess();
    v5 = *v3;
    v6 = *(v3 + 8);
    sub_26C676954(v5, v6);

    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      sub_26C6D8CD8();
      swift_getErrorValue();
      *(inited + 96) = v10;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
      (*(*(v10 - 8) + 16))(boxed_opaque_existential_1);
      v9 = sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
      v5(1, v9);
      sub_26C676904(v5, v6);
    }
  }
}

id WFSetupClient.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_26C6BECA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[20] = a4;
  v5[21] = v4;
  v5[18] = a1;
  v5[19] = a3;
  return MEMORY[0x2822009F8](sub_26C6BECC8, 0, 0);
}

uint64_t sub_26C6BECC8()
{
  v20 = v0;
  if (qword_2804A85B8 != -1)
  {
    swift_once();
  }

  v1 = v0[18];
  v2 = sub_26C6D8898();
  v0[22] = __swift_project_value_buffer(v2, qword_2804AD288);
  sub_26C67749C(v1, (v0 + 10));
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8B98();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136446210;
    v7 = v0[13];
    v8 = v0[14];
    __swift_project_boxed_opaque_existential_1(v0 + 10, v7);
    v9 = (*(v8 + 8))(v7, v8);
    if (v10)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = 0xE000000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
    v13 = sub_26C67A77C(v11, v12, &v19);

    *(v5 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v3, v4, "Storing enrollments data: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D6A7490](v6, -1, -1);
    MEMORY[0x26D6A7490](v5, -1, -1);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 10);
  }

  v14 = swift_task_alloc();
  v0[23] = v14;
  *v14 = v0;
  v14[1] = sub_26C6BEF00;
  v15 = v0[19];
  v16 = v0[20];
  v17 = v0[18];

  return sub_26C6ACFB8(v17, v15, v16);
}

uint64_t sub_26C6BEF00()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_26C6BF244;
  }

  else
  {
    v2 = sub_26C6BF014;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6BF014()
{
  *(v0 + 200) = *(v0 + 192);
  v1 = *(v0 + 144);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = (*(v3 + 8))(v2, v3);
  v6 = v5;
  *(v0 + 208) = v5;
  *(v0 + 216) = v4;
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8B98();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = *(v0 + 192) == 0;
    v10 = swift_slowAlloc();
    *v10 = 67240192;
    *(v10 + 4) = v9;
    _os_log_impl(&dword_26C66B000, v7, v8, "Will send EnrollmentsReceivedRequest with success result %{BOOL,public}d", v10, 8u);
    MEMORY[0x26D6A7490](v10, -1, -1);
  }

  if (v6)
  {
    v11 = v6;
  }

  else
  {
    v11 = 0xE000000000000000;
  }

  if (v6)
  {
    v12 = v4;
  }

  else
  {
    v12 = 0;
  }

  v13 = *(v0 + 192);
  v14 = *(v0 + 168);

  *(v0 + 224) = *(v14 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 40) = &type metadata for EnrollmentsReceivedRequest;
  *(v0 + 48) = &off_287D2F118;
  *(v0 + 16) = v12;
  *(v0 + 24) = v11;
  *(v0 + 32) = v13 == 0;
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  *(v15 + 32) = v13 == 0;
  *(v0 + 56) = sub_26C6C10F0;
  *(v0 + 64) = v15;
  *(v0 + 72) = 0;
  type metadata accessor for SFSessionAgent(0);
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v17 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BF568, v17, v16);
}

uint64_t sub_26C6BF244()
{
  v1 = *(v0 + 192);
  v2 = v1;
  v3 = sub_26C6D8878();
  v4 = sub_26C6D8BA8();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 192);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26C66B000, v3, v4, "Error enrollments data: %{public}@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  else
  {
  }

  *(v0 + 200) = 0;
  v11 = *(v0 + 144);
  v12 = v11[3];
  v13 = v11[4];
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = (*(v13 + 8))(v12, v13);
  v16 = v15;
  *(v0 + 208) = v15;
  *(v0 + 216) = v14;
  v17 = sub_26C6D8878();
  v18 = sub_26C6D8B98();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = *(v0 + 192) == 0;
    v20 = swift_slowAlloc();
    *v20 = 67240192;
    *(v20 + 4) = v19;
    _os_log_impl(&dword_26C66B000, v17, v18, "Will send EnrollmentsReceivedRequest with success result %{BOOL,public}d", v20, 8u);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  if (v16)
  {
    v21 = v16;
  }

  else
  {
    v21 = 0xE000000000000000;
  }

  if (v16)
  {
    v22 = v14;
  }

  else
  {
    v22 = 0;
  }

  v23 = *(v0 + 192);
  v24 = *(v0 + 168);

  *(v0 + 224) = *(v24 + OBJC_IVAR____TtC10TDGSharing13WFSetupClient_sessionAgent);
  *(v0 + 40) = &type metadata for EnrollmentsReceivedRequest;
  *(v0 + 48) = &off_287D2F118;
  *(v0 + 16) = v22;
  *(v0 + 24) = v21;
  *(v0 + 32) = v23 == 0;
  v25 = swift_allocObject();
  *(v25 + 16) = v22;
  *(v25 + 24) = v21;
  *(v25 + 32) = v23 == 0;
  *(v0 + 56) = sub_26C6C10F0;
  *(v0 + 64) = v25;
  *(v0 + 72) = 0;
  type metadata accessor for SFSessionAgent(0);
  sub_26C6C0BE4(&qword_2804A8D90, type metadata accessor for SFSessionAgent, &unk_26C6DCA10);
  swift_bridgeObjectRetain_n();
  swift_unknownObjectRetain();
  v27 = sub_26C6D8AD8();

  return MEMORY[0x2822009F8](sub_26C6BF568, v27, v26);
}

uint64_t sub_26C6BF568()
{
  v1 = *(v0 + 200);
  *(v0 + 76) = sub_26C6A6570(v0 + 16);
  if (v1)
  {
    swift_unknownObjectRelease();

    return MEMORY[0x2822009F8](sub_26C6BF644, 0, 0);
  }

  else
  {
    swift_unknownObjectRelease();

    sub_26C6C0984(v0 + 16);
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_26C6BF644()
{
  v19 = v0;
  sub_26C6C0984(v0 + 16);

  v1 = sub_26C6D8878();
  v2 = sub_26C6D8BA8();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 76);
    v4 = *(v0 + 208);
    v5 = *(v0 + 192) == 0;
    if (v4)
    {
      v6 = *(v0 + 208);
    }

    else
    {
      v6 = 0xE000000000000000;
    }

    if (v4)
    {
      v7 = *(v0 + 216);
    }

    else
    {
      v7 = 0;
    }

    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136446466;
    *(v0 + 120) = v7;
    *(v0 + 128) = v6;
    *(v0 + 136) = v5;
    v10 = sub_26C6D8A18();
    v12 = sub_26C67A77C(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2082;
    *(v0 + 73) = v3;
    *(v0 + 74) = HIBYTE(v3) & 1;
    v13 = sub_26C6D8A18();
    v15 = sub_26C67A77C(v13, v14, &v18);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_26C66B000, v1, v2, "Error sending request %{public}s: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v9, -1, -1);
    MEMORY[0x26D6A7490](v8, -1, -1);
  }

  else
  {
  }

  v16 = *(v0 + 8);

  return v16();
}

void sub_26C6BF848(NSObject *a1, uint64_t a2, uint64_t a3, NSObject *a4, uint64_t a5, char a6)
{
  if (a1)
  {
    v7 = a1;
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD288);
    v9 = a1;

    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v30 = v13;
      *v12 = 136446466;

      v14 = sub_26C6D8A18();
      v16 = sub_26C67A77C(v14, v15, &v30);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2082;
      v17 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v18 = sub_26C6D8A18();
      v20 = sub_26C67A77C(v18, v19, &v30);

      *(v12 + 14) = v20;
      _os_log_impl(&dword_26C66B000, v10, v11, "Request %{public}s failed to send, error: %{public}s", v12, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v13, -1, -1);
      MEMORY[0x26D6A7490](v12, -1, -1);

      return;
    }

    v28 = a1;
  }

  else
  {
    if (qword_2804A85B8 != -1)
    {
      swift_once();
    }

    v21 = sub_26C6D8898();
    __swift_project_value_buffer(v21, qword_2804AD288);

    oslog = sub_26C6D8878();
    v22 = sub_26C6D8BB8();

    if (os_log_type_enabled(oslog, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30 = v24;
      *v23 = 136446210;

      v25 = sub_26C6D8A18();
      v27 = sub_26C67A77C(v25, v26, &v30);

      *(v23 + 4) = v27;
      _os_log_impl(&dword_26C66B000, oslog, v22, "Request %{public}s sent successfully.", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);

      return;
    }

    v28 = oslog;
  }
}

double sub_26C6BFC14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = sub_26C689AC8(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_26C6CF180();
      v10 = v12;
    }

    *a3 = *(*(v10 + 56) + 16 * v8);
    sub_26C6BFCC4(v8, v10);
    *v4 = v10;
  }

  else
  {
    result = 0.0;
    *a3 = xmmword_26C6DA6C0;
  }

  return result;
}

uint64_t sub_26C6BFCC4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_26C6D8CA8() + 1) & ~v5;
    do
    {
      sub_26C6D8EE8();

      sub_26C6D8A38();
      v9 = sub_26C6D8F08();

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
        v15 = (v14 + 16 * v3);
        v16 = (v14 + 16 * v6);
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

  return result;
}

uint64_t sub_26C6BFE74()
{
  MEMORY[0x26D6A7510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_26C6BFEC4()
{
  result = qword_2804A8F60;
  if (!qword_2804A8F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8F58, &qword_26C6DD370);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F60);
  }

  return result;
}

uint64_t sub_26C6BFF28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C676B2C;

  return sub_26C6B19A8(a1, v4, v5, v6);
}

uint64_t sub_26C6BFFDC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B2680(a1, v4, v5, v6);
}

uint64_t sub_26C6C0090()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_26C6C00D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_26C677C9C;

  return sub_26C6B5AF0(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_3Tm_0()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C01DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B5E54(a1, v4, v5, v6);
}

void sub_26C6C0804(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 2)
  {

    v5 = (a3 & 0x3FFFFFFFFFFFFFFFLL);
  }
}

void sub_26C6C0850(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 2)
  {
  }
}

unint64_t sub_26C6C08B8()
{
  result = qword_2804A8F68;
  if (!qword_2804A8F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F68);
  }

  return result;
}

uint64_t sub_26C6C090C()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_26C6C0B14()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26C6C0B64()
{
  result = qword_2804A8F70;
  if (!qword_2804A8F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F70);
  }

  return result;
}

uint64_t sub_26C6C0BE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_26C6C0C2C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6C0C64(int a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v7 = a1;
  v6[0] = a2;
  v6[1] = a3;
  return v4(&v7, v6);
}

uint64_t sub_26C6C0CD8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

uint64_t sub_26C6C0D68(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5 = a2;
  v6 = a1;
  return v3(&v6, &v5);
}

uint64_t sub_26C6C0E1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B4508(a1, v4, v5, v6);
}

uint64_t objectdestroy_47Tm()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t objectdestroy_157Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C0F54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6B4610(a1, v4, v5, v6);
}

uint64_t sub_26C6C10B8()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

void sub_26C6C13E0(uint64_t a1, _BYTE *a2)
{
  v25[1] = *MEMORY[0x277D85DE8];
  v5 = objc_opt_self();
  v6 = sub_26C6D89A8();
  v25[0] = 0;
  v7 = [v5 dataWithJSONObject:v6 options:0 error:v25];

  v8 = v25[0];
  if (v7)
  {
    v9 = sub_26C6D87A8();
    v11 = v10;

    sub_26C6D8678();
    swift_allocObject();
    sub_26C6D8668();
    sub_26C6C1D44();
    sub_26C6D8658();
    if (!v3)
    {

      sub_26C678418(v9, v11);
      return;
    }

    sub_26C678418(v9, v11);
    v12 = v3;
  }

  else
  {
    v13 = v8;
    v12 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v14 = sub_26C6D8898();
  __swift_project_value_buffer(v14, qword_2804AD258);

  v15 = sub_26C6D8878();
  v16 = sub_26C6D8BA8();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v25[0] = v18;
    *v17 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F80, &qword_26C6DD580);
    v19 = sub_26C6D8A18();
    v21 = sub_26C67A77C(v19, v20, v25);

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = sub_26C6D89C8();
    v24 = sub_26C67A77C(v22, v23, v25);

    *(v17 + 14) = v24;
    _os_log_impl(&dword_26C66B000, v15, v16, "Unabled to decode %{public}s from %{public}s", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v18, -1, -1);
    MEMORY[0x26D6A7490](v17, -1, -1);
  }

  LOBYTE(v25[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();

  *a2 = 1;
}

uint64_t sub_26C6C174C(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8FA8, &qword_26C6DD590);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v15 = v1[1];
  v16 = v8;
  v9 = v1[3];
  v14 = v1[2];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C1D98();
  sub_26C6D8F38();
  LOBYTE(v17) = 0;
  sub_26C6C1E40();
  sub_26C6D8E18();
  if (!v2)
  {
    v11 = v9;
    v12 = v14;
    LOBYTE(v17) = 1;
    sub_26C6D8DF8();
    v17 = v12;
    v18 = v11;
    v19 = 2;
    sub_26C67ED2C(v12, v11);
    sub_26C686938();
    sub_26C6D8E18();
    sub_26C678418(v17, v18);
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_26C6C1964@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8F90, &qword_26C6DD588);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C1D98();
  sub_26C6D8F28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v16[0]) = 0;
  sub_26C6C1DEC();
  sub_26C6D8DE8();
  LOBYTE(v16[0]) = 1;
  v9 = sub_26C6D8DC8();
  v11 = v10;
  v12 = v9;
  v17 = 2;
  sub_26C686AFC();
  sub_26C6D8DE8();
  (*(v6 + 8))(v8, v5);
  v13 = v16[0];
  v14 = v16[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;
  a2[3] = v14;

  sub_26C67ED2C(v13, v14);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);

  return sub_26C678418(v13, v14);
}

unint64_t sub_26C6C1BBC()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6570795461746164;
  }
}

uint64_t sub_26C6C1C1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_26C6C1FAC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_26C6C1C44(uint64_t a1)
{
  v2 = sub_26C6C1D98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6C1C80(uint64_t a1)
{
  v2 = sub_26C6C1D98();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_26C6C1CDC(uint64_t a1, _BYTE *a2)
{
  sub_26C6C13E0(a1, &v5);
  if (v3)
  {
    *a2 = v5;
  }
}

unint64_t sub_26C6C1D44()
{
  result = qword_2804A8F88;
  if (!qword_2804A8F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F88);
  }

  return result;
}

unint64_t sub_26C6C1D98()
{
  result = qword_2804A8F98;
  if (!qword_2804A8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8F98);
  }

  return result;
}

unint64_t sub_26C6C1DEC()
{
  result = qword_2804A8FA0;
  if (!qword_2804A8FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FA0);
  }

  return result;
}

unint64_t sub_26C6C1E40()
{
  result = qword_2804A8FB0;
  if (!qword_2804A8FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FB0);
  }

  return result;
}

unint64_t sub_26C6C1EA8()
{
  result = qword_2804A8FB8;
  if (!qword_2804A8FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FB8);
  }

  return result;
}

unint64_t sub_26C6C1F00()
{
  result = qword_2804A8FC0;
  if (!qword_2804A8FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FC0);
  }

  return result;
}

unint64_t sub_26C6C1F58()
{
  result = qword_2804A8FC8;
  if (!qword_2804A8FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FC8);
  }

  return result;
}

uint64_t sub_26C6C1FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
  if (v4 || (sub_26C6D8E48() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C6DF820 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000026C6DF840 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_26C6D8E48();

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

unint64_t sub_26C6C20F0()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  if (v1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 8;
  }

  *(inited + 96) = MEMORY[0x277D849A8];
  *(inited + 72) = v3;
  v4 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v4;
}

uint64_t sub_26C6C21A8@<X0>(_BYTE *a1@<X1>, _BYTE *a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_26C6C21F8(a3);
  if (v3)
  {
    *a1 = result;
  }

  else
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_26C6C21F8(uint64_t a1)
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v2 = sub_26C689928(v18), (v3 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v2, v19);
    sub_26C678324(v18);
    if (swift_dynamicCast())
    {
      if (qword_2804A85A8 != -1)
      {
        swift_once();
      }

      v14 = sub_26C6D8898();
      __swift_project_value_buffer(v14, qword_2804AD258);

      v5 = sub_26C6D8878();
      v6 = sub_26C6D8BA8();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v18[0] = v8;
        *v7 = 136446466;
        *(v7 + 4) = sub_26C67A77C(6386527, 0xE300000000000000, v18);
        *(v7 + 12) = 2082;
        v15 = sub_26C6D89C8();
        v17 = sub_26C67A77C(v15, v16, v18);

        *(v7 + 14) = v17;
        v12 = "Unable to decode raw value for key: %{public}s, from payload: %{public}s";
        goto LABEL_10;
      }

      goto LABEL_11;
    }
  }

  else
  {
    sub_26C678324(v18);
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD258);

  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BA8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v18[0] = v8;
    *v7 = 136446466;
    *(v7 + 4) = sub_26C67A77C(24947, 0xE200000000000000, v18);
    *(v7 + 12) = 2082;
    v9 = sub_26C6D89C8();
    v11 = sub_26C67A77C(v9, v10, v18);

    *(v7 + 14) = v11;
    v12 = "Unable to get raw value for key: %{public}s, from payload: %{public}s";
LABEL_10:
    _os_log_impl(&dword_26C66B000, v5, v6, v12, v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

LABEL_11:

  LOBYTE(v18[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();
  return 1;
}

unint64_t sub_26C6C25B8()
{
  result = qword_2804A8FD0;
  if (!qword_2804A8FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_2804A8FD8, qword_26C6DD710);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FD0);
  }

  return result;
}

unint64_t sub_26C6C2620()
{
  result = qword_2804A8FE0;
  if (!qword_2804A8FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A8FE0);
  }

  return result;
}

uint64_t sub_26C6C267C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_26C6C27A4;

  return v9(a1, a2, a3);
}

uint64_t sub_26C6C27A4(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_26C6C28A0(uint64_t a1, char a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26C6C296C(uint64_t a1, void *a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    **(*(v5 + 64) + 40) = a2;
    v9 = a2;

    return MEMORY[0x282200950](v5);
  }
}

uint64_t sub_26C6C2BB0(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26C6C6010;

  return sub_26C6C4B88();
}

uint64_t sub_26C6C2DE0(void *a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v6 = a1;
  v7 = a3;
  v8 = sub_26C6D87A8();
  v10 = v9;

  v3[4] = v8;
  v3[5] = v10;
  v11 = swift_task_alloc();
  v3[6] = v11;
  *v11 = v3;
  v11[1] = sub_26C6C2ECC;

  return sub_26C6C4DEC(v8, v10);
}

uint64_t sub_26C6C2ECC(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *(*v2 + 16);
  v8 = *v2;

  v9 = v5[3];
  sub_26C678418(v5[4], v5[5]);
  if (v3)
  {
    v10 = sub_26C6D86E8();

    (*(v9 + 16))(v9, 0, v10);
  }

  else
  {
    (*(v9 + 16))(v9, a1 & 1, 0);
  }

  _Block_release(v6[3]);
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_26C6C31FC(const void *a1)
{
  *(v1 + 16) = _Block_copy(a1);
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_26C6C32A4;

  return sub_26C6C5164();
}

uint64_t sub_26C6C32A4(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);
  if (v3)
  {
    v9 = sub_26C6D86E8();

    (*(v8 + 16))(v8, 0, v9);
  }

  else
  {
    (*(v8 + 16))(v8, a1 & 1, 0);
  }

  _Block_release(*(v6 + 16));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_26C6C35A0(int a1, void *aBlock)
{
  *(v2 + 16) = _Block_copy(aBlock);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_26C6C364C;

  return sub_26C6C54A8();
}

uint64_t sub_26C6C364C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *v2;

  v7 = *(v5 + 16);
  if (v3)
  {
    v8 = sub_26C6D86E8();

    (v7)[2](v7, 0, v8);
    _Block_release(v7);
  }

  else
  {
    (v7)[2](v7, a1, 0);
    _Block_release(v7);
  }

  v9 = *(v6 + 8);

  return v9();
}

uint64_t sub_26C6C3954(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  v5 = sub_26C6D8A08();
  v7 = v6;
  v3[4] = v6;
  v8 = a3;
  v9 = swift_task_alloc();
  v3[5] = v9;
  *v9 = v3;
  v9[1] = sub_26C6C3A3C;

  return sub_26C6C57E4(v5, v7);
}

uint64_t sub_26C6C3A3C(void *a1)
{
  v3 = v1;
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *v2;

  v8 = *(v5 + 24);
  if (v3)
  {
    v9 = sub_26C6D86E8();

    (v8)[2](v8, 0, v9);
    _Block_release(v8);
  }

  else
  {
    (v8)[2](*(v5 + 24), a1, 0);
    _Block_release(v8);
  }

  v10 = *(v7 + 8);

  return v10();
}

id sub_26C6C3C38(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFAnisetteAgent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26C6C3C94()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26C677C9C;

  return sub_26C6C3954(v2, v3, v4);
}

uint64_t sub_26C6C3D48(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_26C677C9C;

  return v6();
}

uint64_t sub_26C6C3E30()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26C677C9C;

  return sub_26C6C3D48(v2, v3, v4);
}

uint64_t sub_26C6C3EF0(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_26C676B2C;

  return v7();
}

uint64_t sub_26C6C3FD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_26C677C9C;

  return sub_26C6C3EF0(a1, v4, v5, v6);
}

uint64_t sub_26C6C40A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_26C6C4390(a3, v23 - v10);
  v12 = sub_26C6D8B08();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_26C677B60(v11, &qword_2804A86F8, &qword_26C6DA3D0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_26C6D8AF8();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_26C6D8AD8();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_26C6D8A28() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);

    return v21;
  }

LABEL_8:
  sub_26C677B60(a3, &qword_2804A86F8, &qword_26C6DA3D0);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_26C6C4390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A86F8, &qword_26C6DA3D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_26C6C4400()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6C4438(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26C677C9C;

  return sub_26C697FA4(a1, v4);
}

uint64_t sub_26C6C44F0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_26C676B2C;

  return sub_26C697FA4(a1, v4);
}

uint64_t sub_26C6C45C8()
{
  v1 = v0[18];
  v2 = [objc_allocWithZone(MEMORY[0x277CFD4A8]) init];
  v0[19] = v2;
  [v2 setSharingChannel_];
  if (qword_2804A85A0 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD240);
  v4 = v2;
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    *(v7 + 4) = v4;
    *v8 = v4;
    v9 = v4;
    _os_log_impl(&dword_26C66B000, v5, v6, "Creating CDPStateController with context: %@", v7, 0xCu);
    sub_26C677B60(v8, &qword_2804A9070, &qword_26C6DA3C0);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  v10 = [objc_allocWithZone(MEMORY[0x277CFD548]) initWithContext_];
  v0[20] = v10;
  v11 = sub_26C6D8878();
  if (v10)
  {
    v12 = sub_26C6D8BB8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_26C66B000, v11, v12, "Starting CoreCDP approval server…", v13, 2u);
      MEMORY[0x26D6A7490](v13, -1, -1);
    }

    v0[2] = v0;
    v0[7] = v0 + 22;
    v0[3] = sub_26C6C4990;
    v14 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_26C6C28A0;
    v0[13] = &block_descriptor_111;
    v0[14] = v14;
    [v10 startCircleApplicationApprovalServer_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v15 = sub_26C6D8BA8();
    if (os_log_type_enabled(v11, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26C66B000, v11, v15, "CDPStateController(context:) returned nil during its init.", v16, 2u);
      MEMORY[0x26D6A7490](v16, -1, -1);
    }

    sub_26C6C5F40();
    swift_allocError();
    swift_willThrow();

    v17 = v0[1];

    return v17(0);
  }
}

uint64_t sub_26C6C4990()
{
  v1 = *(*v0 + 48);
  *(*v0 + 168) = v1;
  if (v1)
  {
    v2 = sub_26C6C4B0C;
  }

  else
  {
    v2 = sub_26C6C4AA0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6C4AA0()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 176);
  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26C6C4B0C()
{
  v1 = v0[20];
  v2 = v0[19];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_26C6C4BA4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[18] = v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_26C6C4CDC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C28A0;
  v0[13] = &block_descriptor_107_1;
  v0[14] = v2;
  [v1 provisionWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C4CDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_26C6C605C;
  }

  else
  {
    v2 = sub_26C6C602C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6C4DEC(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_26C6C4E0C, 0, 0);
}

uint64_t sub_26C6C4E0C()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[20] = v1;
  v2 = sub_26C6D8798();
  v0[21] = v2;
  v0[2] = v0;
  v0[7] = v0 + 23;
  v0[3] = sub_26C6C4F68;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C28A0;
  v0[13] = &block_descriptor_88;
  v0[14] = v3;
  [v1 syncWithSIMData:v2 completion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C4F68()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_26C6C50E8;
  }

  else
  {
    v2 = sub_26C6C5078;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6C5078()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 184);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26C6C50E8()
{
  v1 = v0[21];
  v2 = v0[20];
  swift_willThrow();

  v3 = v0[1];

  return v3(0);
}

uint64_t sub_26C6C5180()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[18] = v1;
  v0[2] = v0;
  v0[7] = v0 + 20;
  v0[3] = sub_26C6C52B8;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9060, &qword_26C6DD420);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C28A0;
  v0[13] = &block_descriptor_69_1;
  v0[14] = v2;
  [v1 eraseWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C52B8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 152) = v1;
  if (v1)
  {
    v2 = sub_26C6C5434;
  }

  else
  {
    v2 = sub_26C6C53C8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6C53C8()
{
  v1 = *(v0 + 160);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26C6C5434()
{
  v1 = *(v0 + 144);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2(0);
}

uint64_t sub_26C6C54C4()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[19] = v1;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26C6C55FC;
  v2 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C296C;
  v0[13] = &block_descriptor_50_0;
  v0[14] = v2;
  [v1 anisetteDataWithCompletion_];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C55FC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 160) = v1;
  if (v1)
  {
    v2 = sub_26C6C5774;
  }

  else
  {
    v2 = sub_26C6C570C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6C570C()
{
  v1 = *(v0 + 144);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_26C6C5774()
{
  v1 = *(v0 + 152);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_26C6C57E4(uint64_t a1, uint64_t a2)
{
  *(v2 + 152) = a1;
  *(v2 + 160) = a2;
  return MEMORY[0x2822009F8](sub_26C6C5804, 0, 0);
}

uint64_t sub_26C6C5804()
{
  v1 = [objc_allocWithZone(MEMORY[0x277CF0168]) init];
  v0[21] = v1;
  v2 = sub_26C6D89E8();
  v0[22] = v2;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_26C6C5960;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9050, &qword_26C6DD418);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_26C6C296C;
  v0[13] = &block_descriptor_4;
  v0[14] = v3;
  [v1 legacyAnisetteDataForDSID:v2 withCompletion:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_26C6C5960()
{
  v1 = *(*v0 + 48);
  *(*v0 + 184) = v1;
  if (v1)
  {
    v2 = sub_26C6C5AE0;
  }

  else
  {
    v2 = sub_26C6C5A70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_26C6C5A70()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_26C6C5AE0()
{
  v1 = v0[22];
  v2 = v0[21];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t sub_26C6C5B70()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C5BB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_26C677C9C;

  return sub_26C6C35A0(v2, v3);
}

uint64_t sub_26C6C5C68()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26C677C9C;

  return sub_26C6C31FC(v2);
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_26C6C5D5C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_26C676B2C;

  return sub_26C6C2DE0(v2, v3, v4);
}

uint64_t objectdestroy_53Tm()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_26C6C5E50()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_26C677C9C;

  return sub_26C6C2BB0(v2);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

unint64_t sub_26C6C5F40()
{
  result = qword_2804A9068;
  if (!qword_2804A9068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9068);
  }

  return result;
}

unint64_t sub_26C6C5FA8()
{
  result = qword_2804A9078;
  if (!qword_2804A9078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9078);
  }

  return result;
}

unint64_t sub_26C6C6078()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D849A8];
  *(inited + 72) = 4;
  v1 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v1;
}

uint64_t TransmittableFileDataType.init(rawValue:)@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_26C6D8DB8();

  *a3 = v4 != 0;
  return result;
}

unint64_t sub_26C6C6384()
{
  result = qword_2804A90E0;
  if (!qword_2804A90E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A90E0);
  }

  return result;
}

uint64_t sub_26C6C63D8()
{
  sub_26C6D8EE8();
  sub_26C6D8A38();
  return sub_26C6D8F08();
}

uint64_t sub_26C6C6454(uint64_t a1)
{
  sub_26C6D8EE8();
  sub_26C6D8A38();
  return sub_26C6D8F08();
}

uint64_t sub_26C6C64AC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_26C6D8DB8();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_26C6C65E4()
{
  v1 = *v0;
  v2 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  v11[0] = 0x6570795461746164;
  v11[1] = 0xE800000000000000;
  sub_26C67ED18(v1, v2);
  v4 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  *(inited + 96) = v4;
  *(inited + 72) = 0x656D6C6C6F726E65;
  *(inited + 80) = 0xEB0000000073746ELL;
  v5 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  if (v2 >> 60 != 15)
  {
    sub_26C6D8CD8();
    v10 = MEMORY[0x277CC9318];
    *&v9 = v1;
    *(&v9 + 1) = v2;
    sub_26C68A024(&v9, v8);
    sub_26C67ED2C(v1, v2);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_26C689CC0(v8, v11, isUniquelyReferenced_nonNull_native);
    sub_26C67EE70(v1, v2);
    sub_26C678324(v11);
  }

  return v5;
}

double sub_26C6C6774@<D0>(uint64_t a1@<X0>, _BYTE *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C6D8CD8();
  if (!*(a1 + 16) || (v6 = sub_26C689928(v26), (v7 & 1) == 0))
  {
    sub_26C678324(v26);
    goto LABEL_10;
  }

  sub_26C676984(*(a1 + 56) + 32 * v6, v27);
  sub_26C678324(v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v15 = sub_26C6D8898();
    __swift_project_value_buffer(v15, qword_2804AD258);

    v9 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0x6570795461746164, 0xE800000000000000, v26);
    *(v11 + 12) = 2082;
LABEL_14:
    v18 = sub_26C6D89C8();
    v20 = sub_26C67A77C(v18, v19, v26);

    *(v11 + 14) = v20;
    _os_log_impl(&dword_26C66B000, v9, v16, "Unable to load %{public}s from %{public}s", v11, 0x16u);
    swift_arrayDestroy();
    v14 = v17;
    goto LABEL_15;
  }

  if (sub_26C6D8DB8())
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v8 = sub_26C6D8898();
    __swift_project_value_buffer(v8, qword_2804AD258);

    v9 = sub_26C6D8878();
    v10 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v9, v10))
    {

      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v26[0] = v12;
    *v11 = 136446210;
    v13 = sub_26C67A77C(0x6570795461746164, 0xE800000000000000, v26);

    *(v11 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v9, v10, "Unable to cast %{public}s into DataType.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    v14 = v12;
LABEL_15:
    MEMORY[0x26D6A7490](v14, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
LABEL_16:

    LOBYTE(v26[0]) = 1;
    sub_26C676694();
    swift_willThrowTypedImpl();
    *a2 = 1;
    return result;
  }

  *&v25 = 0xD00000000000001ALL;
  *(&v25 + 1) = 0x800000026C6E02E0;
  sub_26C6D8CD8();
  if (!*(a1 + 16) || (v22 = sub_26C689928(v26), (v23 & 1) == 0))
  {
    sub_26C678324(v26);
    goto LABEL_23;
  }

  sub_26C676984(*(a1 + 56) + 32 * v22, v27);
  sub_26C678324(v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_23:
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v24 = sub_26C6D8898();
    __swift_project_value_buffer(v24, qword_2804AD258);

    v9 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v9, v16))
    {
      goto LABEL_16;
    }

    v11 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v26[0] = v17;
    *v11 = 136446466;
    *(v11 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E02E0, v26);
    *(v11 + 12) = 2082;
    goto LABEL_14;
  }

  result = *&v25;
  *a3 = v25;
  return result;
}

void sub_26C6C6C90(uint64_t a1@<X0>, _BYTE *a2@<X1>, _OWORD *a3@<X8>)
{
  sub_26C6C6774(a1, &v5, a3);
  if (v3)
  {
    *a2 = v5;
  }
}

uint64_t sub_26C6C6CC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9100, &qword_26C6DDD40);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C751C();
  sub_26C6D8F38();
  LOBYTE(v14) = 0;
  sub_26C6D8DF8();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    sub_26C67ED2C(v12, v13);
    sub_26C686938();
    sub_26C6D8E18();
    sub_26C678418(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_26C6C6E64()
{
  if (*v0)
  {
    return 0x656D6C6C6F726E65;
  }

  else
  {
    return 0x656D614E656C6966;
  }
}

uint64_t sub_26C6C6EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D614E656C6966 && a2 == 0xE800000000000000;
  if (v6 || (sub_26C6D8E48() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656D6C6C6F726E65 && a2 == 0xEE0061746144746ELL)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_26C6D8E48();

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

uint64_t sub_26C6C6F90(uint64_t a1)
{
  v2 = sub_26C6C751C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6C6FCC(uint64_t a1)
{
  v2 = sub_26C6C751C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C6C7008@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_26C6C7570(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

unint64_t sub_26C6C7058()
{
  result = qword_2804A90E8;
  if (!qword_2804A90E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A90E8);
  }

  return result;
}

uint64_t sub_26C6C70AC(uint64_t a1)
{
  v2 = v1;
  v25[4] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_26C6D89A8();
  v24 = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:&v24];

  v6 = v24;
  if (v5)
  {
    v7 = sub_26C6D87A8();
    v9 = v8;

    sub_26C6D8678();
    swift_allocObject();
    sub_26C6D8668();
    sub_26C6C7400();
    sub_26C6D8658();
    if (!v1)
    {

      sub_26C678418(v7, v9);
      return v25[0];
    }

    sub_26C678418(v7, v9);
  }

  else
  {
    v10 = v6;
    v2 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v11 = sub_26C6D8898();
  __swift_project_value_buffer(v11, qword_2804AD258);

  v12 = sub_26C6D8878();
  v13 = sub_26C6D8BA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = &type metadata for RapportRetrieveDataResponse;
    v25[0] = v15;
    *v14 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A90F0, "DY");
    v16 = sub_26C6D8A18();
    v18 = sub_26C67A77C(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_26C6D89C8();
    v21 = sub_26C67A77C(v19, v20, v25);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_26C66B000, v12, v13, "Unabled to decode %{public}s from %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v15, -1, -1);
    MEMORY[0x26D6A7490](v14, -1, -1);
  }

  v22 = 2;
  LOBYTE(v25[0]) = 2;
  sub_26C676694();
  swift_willThrowTypedImpl();

  return v22;
}

unint64_t sub_26C6C7400()
{
  result = qword_2804A90F8;
  if (!qword_2804A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A90F8);
  }

  return result;
}

uint64_t sub_26C6C7464(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_26C6C74C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_26C6C751C()
{
  result = qword_2804A9108;
  if (!qword_2804A9108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9108);
  }

  return result;
}

uint64_t sub_26C6C7570(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9110, &qword_26C6DDD48);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6C751C();
  sub_26C6D8F28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    LOBYTE(v12) = 0;
    v7 = sub_26C6D8DC8();
    v11[15] = 1;
    sub_26C686AFC();
    sub_26C6D8DE8();
    (*(v4 + 8))(v6, v3);
    v9 = v12;
    v10 = v13;

    sub_26C67ED2C(v9, v10);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);

    sub_26C678418(v9, v10);
  }

  return v7;
}

unint64_t sub_26C6C77A0()
{
  result = qword_2804A9118;
  if (!qword_2804A9118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9118);
  }

  return result;
}

unint64_t sub_26C6C77F8()
{
  result = qword_2804A9120;
  if (!qword_2804A9120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9120);
  }

  return result;
}

unint64_t sub_26C6C7850()
{
  result = qword_2804A9128;
  if (!qword_2804A9128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9128);
  }

  return result;
}

double static SetupServiceAction.from(_:metaData:handler:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  if (a1 > 3)
  {
    if (a1 <= 5)
    {
      if (a1 == 4)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = a3;
        *(v18 + 24) = a4;
        *a5 = sub_26C68AF88;
        *(a5 + 8) = v18;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v10 = 4;
      }

      else
      {
        v11 = swift_allocObject();
        *(v11 + 16) = a3;
        *(v11 + 24) = a4;
        *a5 = sub_26C68AF88;
        *(a5 + 8) = v11;
        *(a5 + 16) = 0;
        *(a5 + 24) = 0;
        v10 = 5;
      }

      goto LABEL_20;
    }

    if (a1 == 6)
    {
      sub_26C6D8CD8();
      if (*(a2 + 16) && (v23 = sub_26C689928(v55), (v24 & 1) != 0))
      {
        sub_26C676984(*(a2 + 56) + 32 * v23, v56);
        sub_26C678324(v55);
        if (swift_dynamicCast())
        {
          v25 = swift_allocObject();
          *(v25 + 16) = a3;
          *(v25 + 24) = a4;
          *a5 = 7235952;
          *(a5 + 8) = 0xE300000000000000;
          *(a5 + 16) = sub_26C68AF88;
          *(a5 + 24) = v25;
          *(a5 + 32) = 6;
          goto LABEL_32;
        }
      }

      else
      {
        sub_26C678324(v55);
      }

      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v41 = sub_26C6D8898();
      __swift_project_value_buffer(v41, qword_2804AD228);

      v28 = sub_26C6D8878();
      v29 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_54;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v30 = 136446467;
      v56[0] = 6;
      type metadata accessor for WFSetupServiceAction(0);
      v42 = sub_26C6D8A18();
      v44 = sub_26C67A77C(v42, v43, v55);

      *(v30 + 4) = v44;
      *(v30 + 12) = 2081;
      v45 = sub_26C6D89C8();
      v47 = sub_26C67A77C(v45, v46, v55);

      *(v30 + 14) = v47;
      v38 = "Unable to decode WFSetupServiceAction: %{public}s with data: %{private}s";
      goto LABEL_53;
    }

    if (a1 != 7)
    {
LABEL_33:
      if (qword_2804A8598 != -1)
      {
        swift_once();
      }

      v27 = sub_26C6D8898();
      __swift_project_value_buffer(v27, qword_2804AD228);

      v28 = sub_26C6D8878();
      v29 = sub_26C6D8BA8();

      if (!os_log_type_enabled(v28, v29))
      {
        goto LABEL_54;
      }

      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v55[0] = v31;
      *v30 = 136446466;
      v56[0] = a1;
      type metadata accessor for WFSetupServiceAction(0);
      v32 = sub_26C6D8A18();
      v34 = sub_26C67A77C(v32, v33, v55);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2082;
      v35 = sub_26C6D89C8();
      v37 = sub_26C67A77C(v35, v36, v55);

      *(v30 + 14) = v37;
      v38 = "Unable to decode unknown WFSetupServiceAction type: %{public}s with data: %{public}s";
LABEL_53:
      _os_log_impl(&dword_26C66B000, v28, v29, v38, v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v31, -1, -1);
      MEMORY[0x26D6A7490](v30, -1, -1);
LABEL_54:

      result = 0.0;
      *a5 = 0u;
      *(a5 + 16) = 0u;
      *(a5 + 32) = -1;
      return result;
    }

    sub_26C6D8CD8();
    if (*(a2 + 16) && (v13 = sub_26C689928(v55), (v14 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v13, v56);
      sub_26C678324(v55);
      if (swift_dynamicCast())
      {
        v15 = sub_26C6D8DB8();

        if (v15 <= 2)
        {
          v16 = swift_allocObject();
          *(v16 + 16) = a3;
          *(v16 + 24) = a4;
          *a5 = v15;
          *(a5 + 8) = sub_26C6C8B68;
          *(a5 + 16) = v16;
          *(a5 + 24) = 0;
          *(a5 + 32) = 7;
LABEL_32:

          return result;
        }
      }
    }

    else
    {
      sub_26C678324(v55);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v48 = sub_26C6D8898();
    __swift_project_value_buffer(v48, qword_2804AD228);

    v28 = sub_26C6D8878();
    v29 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_54;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55[0] = v31;
    *v30 = 136446466;
    v40 = 7;
LABEL_52:
    v56[0] = v40;
    type metadata accessor for WFSetupServiceAction(0);
    v49 = sub_26C6D8A18();
    v51 = sub_26C67A77C(v49, v50, v55);

    *(v30 + 4) = v51;
    *(v30 + 12) = 2082;
    v52 = sub_26C6D89C8();
    v54 = sub_26C67A77C(v52, v53, v55);

    *(v30 + 14) = v54;
    v38 = "Unable to decode WFSetupServiceAction: %{public}s with data: %{public}s";
    goto LABEL_53;
  }

  if (a1 > 1)
  {
    if (a1 != 2)
    {
      v12 = swift_allocObject();
      *(v12 + 16) = a3;
      *(v12 + 24) = a4;
      *a5 = sub_26C6C8B74;
      *(a5 + 8) = v12;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v10 = 3;
      goto LABEL_20;
    }

    sub_26C6D8CD8();
    if (*(a2 + 16) && (v20 = sub_26C689928(v55), (v21 & 1) != 0))
    {
      sub_26C676984(*(a2 + 56) + 32 * v20, v56);
      sub_26C678324(v55);
      if (swift_dynamicCast())
      {
        v22 = swift_allocObject();
        *(v22 + 16) = a3;
        *(v22 + 24) = a4;
        *a5 = 2003790950;
        *(a5 + 8) = sub_26C68AF88;
        *(a5 + 16) = v22;
        *(a5 + 24) = 0;
        *(a5 + 32) = 2;
        goto LABEL_32;
      }
    }

    else
    {
      sub_26C678324(v55);
    }

    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v39 = sub_26C6D8898();
    __swift_project_value_buffer(v39, qword_2804AD228);

    v28 = sub_26C6D8878();
    v29 = sub_26C6D8BA8();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_54;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55[0] = v31;
    *v30 = 136446466;
    v40 = 2;
    goto LABEL_52;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = a3;
      *(v9 + 24) = a4;
      *a5 = sub_26C689A70;
      *(a5 + 8) = v9;
      *(a5 + 16) = 0;
      *(a5 + 24) = 0;
      v10 = 1;
LABEL_20:
      *(a5 + 32) = v10;
      goto LABEL_21;
    }

    goto LABEL_33;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = a3;
  *(v17 + 24) = a4;
  *a5 = sub_26C68AF88;
  *(a5 + 8) = v17;
  *(a5 + 16) = 0;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0;
LABEL_21:

  return result;
}

uint64_t sub_26C6C81E0(char a1, void (*a2)(unint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D839B0];
  *(inited + 72) = a1;
  v5 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  a2(v5);
}

uint64_t sub_26C6C82B8(uint64_t a1, char a2, void (*a3)(unint64_t))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    sub_26C6D8CD8();
    swift_getErrorValue();
    *(inited + 96) = v8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v8 - 8) + 16))(boxed_opaque_existential_1);
    v6 = sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C6A012C(inited + 32);
  }

  else
  {
    v6 = sub_26C689E88(MEMORY[0x277D84F90]);
  }

  a3(v6);
}

uint64_t SetupServiceAction.to()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 > 3)
  {
    if (*(v0 + 32) <= 5u)
    {
      v6 = *(v0 + 8);
      if (v5 == 4)
      {
        v8 = 4;
        sub_26C698320(v1, v2, v4, v3, 4u);
      }

      else
      {
        v8 = 5;
        sub_26C698320(v1, v2, v4, v3, 5u);
      }

      sub_26C689E88(MEMORY[0x277D84F90]);
      v7 = swift_allocObject();
      goto LABEL_16;
    }

    if (v5 == 6)
    {
      v10 = *(v0 + 24);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;

      v12 = MEMORY[0x277D837D0];
      sub_26C6D8CD8();
      *(inited + 96) = v12;
      *(inited + 72) = v1;
      *(inited + 80) = v2;
      sub_26C689E88(inited);
      swift_setDeallocating();
      sub_26C6A012C(inited + 32);
      v7 = swift_allocObject();
      v8 = 6;
      v2 = v4;
      v4 = v10;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
      v14 = swift_initStackObject();
      *(v14 + 16) = xmmword_26C6DA0F0;

      v15 = MEMORY[0x277D837D0];
      sub_26C6D8CD8();
      if (v1)
      {
        if (v1 == 1)
        {
          v16 = "SessionDisconnect";
          v17 = 0xD000000000000019;
        }

        else
        {
          v16 = "ignoreOnSessionDisconnect";
          v17 = 0xD00000000000001DLL;
        }
      }

      else
      {
        v17 = 0xD000000000000021;
        v16 = "prescriptionRecords";
      }

      *(v14 + 96) = v15;
      *(v14 + 72) = v17;
      *(v14 + 80) = v16 | 0x8000000000000000;
      sub_26C689E88(v14);
      swift_setDeallocating();
      sub_26C6A012C(v14 + 32);
      v8 = 7;
      v7 = swift_allocObject();
    }
  }

  else
  {
    if (*(v0 + 32) <= 1u)
    {
      v6 = *(v0 + 8);
      if (v5)
      {
        v8 = 1;
        sub_26C698320(v1, v2, v4, v3, 1u);
        sub_26C689E88(MEMORY[0x277D84F90]);
        v7 = swift_allocObject();
      }

      else
      {
        sub_26C698320(v1, v2, v4, v3, 0);
        sub_26C689E88(MEMORY[0x277D84F90]);
        v7 = swift_allocObject();
        v8 = 0;
      }

      goto LABEL_16;
    }

    if (v5 != 2)
    {
      v6 = *(v0 + 8);
      v8 = 3;
      sub_26C698320(v1, v2, v4, v3, 3u);
      sub_26C689E88(MEMORY[0x277D84F90]);
      v7 = swift_allocObject();
LABEL_16:
      v2 = v1;
      v4 = v6;
      goto LABEL_17;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v9 = swift_initStackObject();
    *(v9 + 16) = xmmword_26C6DA0F0;

    sub_26C6D8CD8();
    *(v9 + 96) = MEMORY[0x277D83B88];
    *(v9 + 72) = v1;
    sub_26C689E88(v9);
    swift_setDeallocating();
    sub_26C6A012C(v9 + 32);
    v7 = swift_allocObject();
    v8 = 2;
  }

LABEL_17:
  *(v7 + 16) = v2;
  *(v7 + 24) = v4;
  return v8;
}

void sub_26C6C88D4(uint64_t a1, void (*a2)(uint64_t))
{
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v4 = sub_26C689928(v14), (v5 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v4, v15);
    sub_26C678324(v14);
    if (swift_dynamicCast())
    {
      a2(115);
      return;
    }
  }

  else
  {
    sub_26C678324(v14);
  }

  if (qword_2804A8598 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD228);

  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BA8();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14[0] = v10;
    *v9 = 136446210;
    v11 = sub_26C6D89C8();
    v13 = sub_26C67A77C(v11, v12, v14);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_26C66B000, v7, v8, "Unable to decode WFSetupServiceAction handler for .resume with data: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }
}

uint64_t sub_26C6C8B30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
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

uint64_t sub_26C6C8BA4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 33))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 32);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C6C8BEC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 249;
    *(result + 8) = 0;
    if (a3 >= 0xF9)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6C8CE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26C677C9C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t sub_26C6C8E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 48) + **(a5 + 48));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_26C676B2C;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing23FileTransferSourceEventO(uint64_t a1)
{
  if ((*(a1 + 40) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 40) & 3;
  }
}

uint64_t sub_26C6C8FA8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 41))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 40);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6C8FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6C9030(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_26C6C9068(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_26C6C90B8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_26C6C910C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_26C6C9134(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_26C6C917C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6C91C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
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

uint64_t sub_26C6C9210(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6C9274@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v3 = sub_26C6D8898();
  __swift_project_value_buffer(v3, qword_2804AD258);

  v4 = sub_26C6D8878();
  v5 = sub_26C6D8BB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v69[0] = v7;
    *v6 = 136446210;
    v8 = sub_26C6D89C8();
    v10 = sub_26C67A77C(v8, v9, v69);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_26C66B000, v4, v5, "Attemping to decode preauth data: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x26D6A7490](v7, -1, -1);
    MEMORY[0x26D6A7490](v6, -1, -1);
  }

  v67 = 0x73676E616CLL;
  v68 = 0xE500000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v11 = sub_26C689928(v69), (v12 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v11, &v70);
    sub_26C678324(v69);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8D58, &unk_26C6DC170);
    if (swift_dynamicCast())
    {
      if (v72)
      {
        goto LABEL_17;
      }

      goto LABEL_12;
    }
  }

  else
  {
    sub_26C678324(v69);
  }

  v72 = 0;
LABEL_12:
  v67 = 1735287148;
  v68 = 0xE400000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v13 = sub_26C689928(v69), (v14 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v13, &v70);
    sub_26C678324(v69);
    if (swift_dynamicCast())
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9130, "HS");
      v15 = swift_allocObject();
      *(v15 + 16) = xmmword_26C6DA0F0;
      *(v15 + 32) = 1735287148;
      *(v15 + 40) = 0xE400000000000000;
      v72 = v15;
    }
  }

  else
  {
    sub_26C678324(v69);
  }

LABEL_17:
  v70 = 0x656C61636F6CLL;
  v71 = 0xE600000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v16 = sub_26C689928(v69), (v17 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v16, &v70);
    sub_26C678324(v69);
    v18 = swift_dynamicCast();
    v19 = v67;
    if (!v18)
    {
      v19 = 0;
    }

    v63 = v19;
    if (v18)
    {
      v20 = v68;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_26C678324(v69);
    v63 = 0;
    v20 = 0;
  }

  v70 = 0x6C65646F6DLL;
  v71 = 0xE500000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v21 = sub_26C689928(v69), (v22 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v21, &v70);
    sub_26C678324(v69);
    v23 = swift_dynamicCast();
    v24 = v67;
    if (!v23)
    {
      v24 = 0;
    }

    v64 = v24;
    if (v23)
    {
      v25 = v68;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    sub_26C678324(v69);
    v64 = 0;
    v25 = 0;
  }

  sub_26C6D8CD8();
  if (*(a1 + 16) && (v26 = sub_26C689928(v69), (v27 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v26, &v70);
    sub_26C678324(v69);
    if (swift_dynamicCast())
    {
      SFDeviceClassCodeToString(0x64u);
      v28 = sub_26C6D8A58();
      v30 = v29;

      v31 = sub_26C6D8878();
      v32 = sub_26C6D8BB8();

      v66 = v28;
      if (os_log_type_enabled(v31, v32))
      {
        v61 = v32;
        v33 = v28;
        v34 = swift_slowAlloc();
        v62 = swift_slowAlloc();
        v69[0] = v62;
        *v34 = 136446466;
        LOBYTE(v70) = 100;
        type metadata accessor for SFDeviceClassCode(0);
        v35 = sub_26C6D8A18();
        v37 = sub_26C67A77C(v35, v36, v69);

        *(v34 + 4) = v37;
        *(v34 + 12) = 2082;
        *(v34 + 14) = sub_26C67A77C(v33, v30, v69);
        _os_log_impl(&dword_26C66B000, v31, v61, "Found Device Class Code: %{public}s. DeviceClass is %{public}s", v34, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D6A7490](v62, -1, -1);
        MEMORY[0x26D6A7490](v34, -1, -1);
      }

      goto LABEL_42;
    }
  }

  else
  {
    sub_26C678324(v69);
  }

  SFDeviceClassCodeToString(0);
  v38 = sub_26C6D8A58();
  v30 = v39;

  v31 = sub_26C6D8878();
  v40 = sub_26C6D8BA8();

  v66 = v38;
  if (os_log_type_enabled(v31, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v69[0] = v42;
    *v41 = 136446210;
    *(v41 + 4) = sub_26C67A77C(v38, v30, v69);
    _os_log_impl(&dword_26C66B000, v31, v40, "Failed to find Device Class Code using .codeUnknown. DeviceClass is %{public}s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v42);
    MEMORY[0x26D6A7490](v42, -1, -1);
    MEMORY[0x26D6A7490](v41, -1, -1);
  }

LABEL_42:

  v70 = 1951627361;
  v71 = 0xE400000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v43 = sub_26C689928(v69), (v44 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v43, &v70);
    sub_26C678324(v69);
    v45 = swift_dynamicCast();
    if (v45)
    {
      v46 = 0x7373616C6364;
    }

    else
    {
      v46 = 0;
    }

    if (v45)
    {
      v47 = 0xE600000000000000;
    }

    else
    {
      v47 = 0xF000000000000000;
    }
  }

  else
  {
    sub_26C678324(v69);
    v46 = 0;
    v47 = 0xF000000000000000;
  }

  v70 = 0x646C697542736FLL;
  v71 = 0xE700000000000000;
  sub_26C6D8CD8();
  if (*(a1 + 16) && (v48 = sub_26C689928(v69), (v49 & 1) != 0))
  {
    sub_26C676984(*(a1 + 56) + 32 * v48, &v70);
    sub_26C678324(v69);
    result = swift_dynamicCast();
    v51 = 0x7373616C6364;
    if (result)
    {
      v52 = 0xE600000000000000;
    }

    else
    {
      v51 = 0;
      v52 = 0;
    }
  }

  else
  {
    result = sub_26C678324(v69);
    v51 = 0;
    v52 = 0;
  }

  if (v72)
  {
    if (v20 && v25)
    {
      if (v47 >> 60 != 15)
      {
        *a2 = v72;
        a2[1] = v63;
        a2[2] = v20;
        a2[3] = v64;
        a2[4] = v25;
        a2[5] = v66;
        a2[6] = v30;
        a2[7] = v46;
        a2[8] = v47;
        a2[9] = v51;
        a2[10] = v52;
        return result;
      }
    }
  }

  else
  {
  }

  v53 = sub_26C6D8878();
  v54 = sub_26C6D8BA8();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v69[0] = v56;
    *v55 = 136446210;
    v57 = sub_26C6D89C8();
    v59 = sub_26C67A77C(v57, v58, v69);

    *(v55 + 4) = v59;
    _os_log_impl(&dword_26C66B000, v53, v54, "Failed to decode pre-auth data payload with data: %{public}s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x26D6A7490](v56, -1, -1);
    MEMORY[0x26D6A7490](v55, -1, -1);
  }

  sub_26C678378();
  swift_allocError();
  *v60 = 257;
  swift_willThrow();
  sub_26C67EE70(v46, v47);
}

uint64_t sub_26C6C9CE0(uint64_t a1)
{
  *(&v5 + 1) = 0xE200000000000000;

  sub_26C6D8CD8();
  v6 = MEMORY[0x277D849A8];
  *&v5 = 3;
  sub_26C68A024(&v5, v4);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_26C689CC0(v4, v7, isUniquelyReferenced_nonNull_native);
  sub_26C678324(v7);
  return a1;
}

const char *SFDeviceClassCodeToString(unsigned int a1)
{
  if (a1 > 8)
  {
    return "?";
  }

  else
  {
    return off_279D43F20[a1];
  }
}

id sub_26C6C9DF4()
{
  v0 = sub_26C6D8868();
  v85 = *(v0 - 8);
  v86 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v84 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_26C689E88(MEMORY[0x277D84F90]);
  v4 = _AXSCopySettingsDataBlobForBuddy();
  if (v4)
  {
    v5 = v4;
    *&v90 = 1951627361;
    *(&v90 + 1) = 0xE400000000000000;
    sub_26C6D8CD8();
    type metadata accessor for CFData(0);
    v91 = v6;
    *&v90 = v5;
    sub_26C68A024(&v90, v89);
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v88 = v3;
    sub_26C689CC0(v89, &v92, isUniquelyReferenced_nonNull_native);

    sub_26C678324(&v92);
    v3 = v88;
  }

  else
  {
    if (qword_2804A85A8 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD258);
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C66B000, v10, v11, "Failed to get the accessibility settings", v12, 2u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }
  }

  v13 = SFDeviceClassCodeGet();
  *&v90 = 0x7373616C6364;
  *(&v90 + 1) = 0xE600000000000000;
  sub_26C6D8CD8();
  v91 = MEMORY[0x277D84B78];
  LOBYTE(v90) = v13;
  sub_26C68A024(&v90, v89);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v3;
  sub_26C689CC0(v89, &v92, v14);
  sub_26C678324(&v92);
  v15 = v88;
  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v16 = sub_26C6D8898();
  v17 = __swift_project_value_buffer(v16, qword_2804AD258);
  v18 = sub_26C6D8878();
  v19 = sub_26C6D8BB8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v92 = v21;
    *v20 = 136446210;
    SFDeviceClassCodeToString(v13);
    v22 = sub_26C6D8A58();
    v24 = sub_26C67A77C(v22, v23, &v92);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_26C66B000, v18, v19, "Setting device class in pre-Auth data: %{public}s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v21);
    MEMORY[0x26D6A7490](v21, -1, -1);
    MEMORY[0x26D6A7490](v20, -1, -1);
  }

  v25 = objc_opt_self();
  v26 = [v25 preferredLanguages];
  v27 = MEMORY[0x277D837D0];
  v28 = sub_26C6D8AA8();

  if (v28[2])
  {
    v30 = v28[4];
    v29 = v28[5];
    swift_bridgeObjectRetain_n();

    v31 = sub_26C6D8878();
    v32 = sub_26C6D8BB8();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v92 = v34;
      *v33 = 136446210;
      *(v33 + 4) = sub_26C67A77C(v30, v29, &v92);
      _os_log_impl(&dword_26C66B000, v31, v32, "Setting preferred langauge in pre-Auth data: %{public}s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v34);
      MEMORY[0x26D6A7490](v34, -1, -1);
      MEMORY[0x26D6A7490](v33, -1, -1);
    }

    *&v90 = 1735287148;
    *(&v90 + 1) = 0xE400000000000000;
    v27 = MEMORY[0x277D837D0];
    sub_26C6D8CD8();
    v91 = v27;
    *&v90 = v30;
    *(&v90 + 1) = v29;
    sub_26C68A024(&v90, v89);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v88 = v15;
    sub_26C689CC0(v89, &v92, v35);
    sub_26C678324(&v92);
    v15 = v88;
  }

  else
  {

    v36 = sub_26C6D8878();
    v37 = sub_26C6D8BA8();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_26C66B000, v36, v37, "No preferred language", v38, 2u);
      MEMORY[0x26D6A7490](v38, -1, -1);
    }
  }

  v39 = [v25 currentLocale];
  sub_26C6D8858();

  v40 = sub_26C6D8848();
  v42 = v41;
  (*(v85 + 8))(v2, v86);
  *&v90 = 0x656C61636F6CLL;
  *(&v90 + 1) = 0xE600000000000000;
  sub_26C6D8CD8();
  v91 = v27;
  *&v90 = v40;
  *(&v90 + 1) = v42;
  sub_26C68A024(&v90, v89);

  v43 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v15;
  sub_26C689CC0(v89, &v92, v43);
  sub_26C678324(&v92);
  v44 = v88;

  v45 = sub_26C6D8878();
  v46 = sub_26C6D8BB8();

  v47 = os_log_type_enabled(v45, v46);
  v87 = v17;
  if (v47)
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v92 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_26C67A77C(v40, v42, &v92);
    _os_log_impl(&dword_26C66B000, v45, v46, "Setting preferred NSLocale in pre-Auth data: %{public}s", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x26D6A7490](v49, -1, -1);
    MEMORY[0x26D6A7490](v48, -1, -1);
  }

  v50 = [objc_opt_self() processInfo];
  [v50 operatingSystemVersion];
  v51 = v92;
  v52 = v93;
  v53 = v94;

  v92 = v51;
  v92 = sub_26C6D8E28();
  v93 = v54;

  MEMORY[0x26D6A6940](46, 0xE100000000000000);

  v55 = v92;
  v56 = v93;
  v92 = v52;
  v57 = sub_26C6D8E28();
  v59 = v58;
  v92 = v55;
  v93 = v56;

  MEMORY[0x26D6A6940](v57, v59);

  MEMORY[0x26D6A6940](46, 0xE100000000000000);

  v60 = v92;
  v61 = v93;
  v92 = v53;
  v62 = sub_26C6D8E28();
  v64 = v63;
  v92 = v60;
  v93 = v61;

  MEMORY[0x26D6A6940](v62, v64);

  v66 = v92;
  v65 = v93;
  *&v90 = 0x646C697542736FLL;
  *(&v90 + 1) = 0xE700000000000000;
  v67 = MEMORY[0x277D837D0];
  sub_26C6D8CD8();
  v91 = v67;
  *&v90 = v66;
  *(&v90 + 1) = v65;
  sub_26C68A024(&v90, v89);

  v68 = swift_isUniquelyReferenced_nonNull_native();
  v88 = v44;
  sub_26C689CC0(v89, &v92, v68);
  sub_26C678324(&v92);
  v69 = v88;

  v70 = sub_26C6D8878();
  v71 = sub_26C6D8BB8();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v92 = v73;
    *v72 = 136446210;
    *(v72 + 4) = sub_26C67A77C(v66, v65, &v92);
    _os_log_impl(&dword_26C66B000, v70, v71, "Setting SFMessageKeyOSBuild in pre-Auth data to : %{public}s", v72, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v73);
    MEMORY[0x26D6A7490](v73, -1, -1);
    MEMORY[0x26D6A7490](v72, -1, -1);
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v75 = result;

    v76 = MobileGestalt_copy_productType_obj();

    if (v76)
    {
      v77 = sub_26C6D8A08();
      v79 = v78;

      *&v90 = 0x6C65646F6DLL;
      *(&v90 + 1) = 0xE500000000000000;
      sub_26C6D8CD8();
      v91 = v67;
      *&v90 = v77;
      *(&v90 + 1) = v79;
      sub_26C68A024(&v90, v89);
      v80 = swift_isUniquelyReferenced_nonNull_native();
      v88 = v69;
      sub_26C689CC0(v89, &v92, v80);
      sub_26C678324(&v92);
      return v88;
    }

    else
    {
      v81 = sub_26C6D8878();
      v82 = sub_26C6D8BA8();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_26C66B000, v81, v82, "Failed to get model for device", v83, 2u);
        MEMORY[0x26D6A7490](v83, -1, -1);
      }
    }

    return v69;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t AnalyticsError.hashValue.getter()
{
  sub_26C6D8EE8();
  MEMORY[0x26D6A6DF0](0);
  return sub_26C6D8F08();
}

unint64_t sub_26C6CA96C()
{
  result = qword_2804A9138;
  if (!qword_2804A9138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9138);
  }

  return result;
}

uint64_t sub_26C6CA9DC()
{
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

uint64_t sub_26C6CAAB0(uint64_t a1)
{
  sub_26C6D8A38();
}

uint64_t sub_26C6CAB70(uint64_t a1)
{
  sub_26C6D8EE8();
  sub_26C6D8A38();

  return sub_26C6D8F08();
}

unint64_t sub_26C6CAC40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_26C6CC7EC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_26C6CAC70(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE90000000000006ELL;
  v4 = 0x6F697369766F7270;
  v5 = 0xE500000000000000;
  v6 = 0x6573617265;
  v7 = 0xE500000000000000;
  v8 = 0x6863746566;
  if (v2 != 3)
  {
    v8 = 0x79636167656CLL;
    v7 = 0xE600000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 1668184435;
    v3 = 0xE400000000000000;
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

uint64_t sub_26C6CAD18()
{
  sub_26C6D8CF8();

  MEMORY[0x26D6A6940](*(v0 + OBJC_IVAR___WFAnisetteRequest_id), *(v0 + OBJC_IVAR___WFAnisetteRequest_id + 8));
  MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);

  v1 = sub_26C6D89C8();
  v3 = v2;

  MEMORY[0x26D6A6940](v1, v3);

  return 540697705;
}

id sub_26C6CAEBC(void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR___WFAnisetteRequest_data;
  *&v1[v4] = sub_26C68AC4C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_26C6DA0F0;
  v6 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v5 + 32) = v6;
  sub_26C6D8C48();

  if (!v25)
  {
    sub_26C677B60(v24, &qword_2804A8950, &qword_26C6DAC50);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v14 = sub_26C6D8898();
    __swift_project_value_buffer(v14, qword_2804AD1F8);
    v15 = sub_26C6D8878();
    v16 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_18;
    }

    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_26C67A77C(0x6574746573696E41, 0xEF74736575716552, v24);
    v19 = "Failed to decode id for object %s";
    goto LABEL_17;
  }

  v8 = v22;
  v7 = v23;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C6DE3D0;
  *(v9 + 32) = v6;
  *(v9 + 40) = sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  *(v9 + 48) = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  *(v9 + 56) = sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  sub_26C6D8C48();

  if (v25)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9198, &qword_26C6DE428);
    if (swift_dynamicCast())
    {
      v10 = v22;
      v11 = &v1[OBJC_IVAR___WFAnisetteRequest_id];
      *v11 = v8;
      *(v11 + 1) = v7;
      *&v1[v4] = v10;

      v21.receiver = v1;
      v21.super_class = ObjectType;
      v12 = objc_msgSendSuper2(&v21, sel_init);

      return v12;
    }
  }

  else
  {

    sub_26C677B60(v24, &qword_2804A8950, &qword_26C6DAC50);
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v20 = sub_26C6D8898();
  __swift_project_value_buffer(v20, qword_2804AD1F8);
  v15 = sub_26C6D8878();
  v16 = sub_26C6D8BA8();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24[0] = v18;
    *v17 = 136315138;
    *(v17 + 4) = sub_26C67A77C(0x6574746573696E41, 0xEF74736575716552, v24);
    v19 = "Failed to decode data for object %s";
LABEL_17:
    _os_log_impl(&dword_26C66B000, v15, v16, v19, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x26D6A7490](v18, -1, -1);
    MEMORY[0x26D6A7490](v17, -1, -1);
  }

LABEL_18:

  swift_deallocPartialClassInstance();
  return 0;
}

NSObject *sub_26C6CB368()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:&v32];
  v2 = v32;
  if (v1)
  {
    v3 = sub_26C6D87A8();

    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD1F8);
    v5 = v0;
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v32 = 0;
      *v8 = 136315138;
      v33 = 0xE000000000000000;
      v34[0] = v31;
      sub_26C6D8CF8();

      v32 = 540697705;
      v33 = 0xE400000000000000;
      MEMORY[0x26D6A6940](*&v5[OBJC_IVAR___WFAnisetteRequest_id], *&v5[OBJC_IVAR___WFAnisetteRequest_id + 8]);
      MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);

      v9 = sub_26C6D89C8();
      v10 = v3;
      v12 = v11;

      MEMORY[0x26D6A6940](v9, v12);

      v13 = sub_26C67A77C(v32, v33, v34);

      *(v8 + 4) = v13;
      v3 = v10;
      _os_log_impl(&dword_26C66B000, v6, v7, "Successfully archived request: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x26D6A7490](v31, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }
  }

  else
  {
    v14 = v2;
    v15 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v16 = sub_26C6D8898();
    __swift_project_value_buffer(v16, qword_2804AD1F8);
    v17 = v0;
    v18 = v15;
    v3 = sub_26C6D8878();
    v19 = sub_26C6D8BA8();

    if (os_log_type_enabled(v3, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 136315394;
      v32 = 0;
      v33 = 0xE000000000000000;
      v34[0] = v21;
      sub_26C6D8CF8();

      v32 = 540697705;
      v33 = 0xE400000000000000;
      MEMORY[0x26D6A6940](*&v17[OBJC_IVAR___WFAnisetteRequest_id], *&v17[OBJC_IVAR___WFAnisetteRequest_id + 8]);
      MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);

      v22 = sub_26C6D89C8();
      v24 = v23;

      MEMORY[0x26D6A6940](v22, v24);

      v25 = sub_26C67A77C(v32, v33, v34);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      v32 = v15;
      v26 = v15;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v27 = sub_26C6D8A18();
      v29 = sub_26C67A77C(v27, v28, v34);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_26C66B000, v3, v19, "Failed to archive request %s with error: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v21, -1, -1);
      MEMORY[0x26D6A7490](v20, -1, -1);
    }

    swift_willThrow();
  }

  return v3;
}

id sub_26C6CB8B8()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_26C6CB940(void *a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = sub_26C6D89E8();

  return v5;
}

uint64_t sub_26C6CB9B0()
{
  sub_26C6D8CF8();

  MEMORY[0x26D6A6940](*(v0 + OBJC_IVAR___WFAnisetteResponse_id), *(v0 + OBJC_IVAR___WFAnisetteResponse_id + 8));
  MEMORY[0x26D6A6940](0x203A61746164202CLL, 0xE800000000000000);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8950, &qword_26C6DAC50);
  v1 = sub_26C6D89C8();
  MEMORY[0x26D6A6940](v1);

  return 540697705;
}

uint64_t sub_26C6CBAB8(void *a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5)
{
  v10 = (v5 + *a2);
  v11 = *v10;
  v12 = v10[1];
  v32 = MEMORY[0x277D837D0];
  v31[0] = v11;
  v31[1] = v12;
  sub_26C684E18(v31, v29);
  v13 = v30;
  if (v30)
  {
    v14 = __swift_project_boxed_opaque_existential_1(v29, v30);
    v15 = *(v13 - 8);
    MEMORY[0x28223BE20](v14);
    v17 = v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v15 + 16))(v17);

    v18 = sub_26C6D8E38();
    (*(v15 + 8))(v17, v13);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {

    v18 = 0;
  }

  v19 = sub_26C6D89E8();
  [a1 encodeObject:v18 forKey:v19];
  swift_unknownObjectRelease();

  sub_26C677B60(v31, &qword_2804A8950, &qword_26C6DAC50);
  v20 = *(v5 + *a3);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v31[0] = v20;
  sub_26C684E18(v31, v29);
  v21 = v30;
  if (v30)
  {
    v22 = __swift_project_boxed_opaque_existential_1(v29, v30);
    v23 = *(v21 - 8);
    MEMORY[0x28223BE20](v22);
    v25 = v29 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v23 + 16))(v25);

    v26 = sub_26C6D8E38();
    (*(v23 + 8))(v25, v21);
    __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  else
  {

    v26 = 0;
  }

  v27 = sub_26C6D89E8();
  [a1 encodeObject:v26 forKey:v27];
  swift_unknownObjectRelease();

  return sub_26C677B60(v31, &qword_2804A8950, &qword_26C6DAC50);
}

id sub_26C6CBE3C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_26C6DA0F0;
  v4 = sub_26C6779D0(0, &qword_2804A8990, 0x277CCACA8);
  *(v3 + 32) = v4;
  sub_26C6D8C48();

  if (!v23)
  {
    sub_26C677B60(v22, &qword_2804A8950, &qword_26C6DAC50);
    goto LABEL_7;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v12 = sub_26C6D8898();
    __swift_project_value_buffer(v12, qword_2804AD1F8);
    v13 = sub_26C6D8878();
    v14 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_18;
    }

    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_26C67A77C(0xD000000000000010, 0x800000026C6DE3E0, v22);
    v17 = "Failed to decode id for object %s";
    goto LABEL_17;
  }

  v6 = v20;
  v5 = v21;
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_26C6DAAC0;
  *(v7 + 32) = v4;
  *(v7 + 40) = sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  *(v7 + 48) = sub_26C6779D0(0, &qword_2804A89B0, 0x277CBEA90);
  *(v7 + 56) = sub_26C6779D0(0, &qword_2804A8808, 0x277CBEAC0);
  *(v7 + 64) = sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
  sub_26C6D8C48();

  if (v23)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9180, &unk_26C6DE418);
    if (swift_dynamicCast())
    {
      v8 = v20;
      v9 = &v1[OBJC_IVAR___WFAnisetteResponse_id];
      *v9 = v6;
      *(v9 + 1) = v5;
      *&v1[OBJC_IVAR___WFAnisetteResponse_data] = v8;
      v19.receiver = v1;
      v19.super_class = type metadata accessor for AnisetteResponse();
      v10 = objc_msgSendSuper2(&v19, sel_init);

      return v10;
    }
  }

  else
  {

    sub_26C677B60(v22, &qword_2804A8950, &qword_26C6DAC50);
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v18 = sub_26C6D8898();
  __swift_project_value_buffer(v18, qword_2804AD1F8);
  v13 = sub_26C6D8878();
  v14 = sub_26C6D8BA8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_26C67A77C(0xD000000000000010, 0x800000026C6DE3E0, v22);
    v17 = "Failed to decode data for object %s";
LABEL_17:
    _os_log_impl(&dword_26C66B000, v13, v14, v17, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x26D6A7490](v16, -1, -1);
    MEMORY[0x26D6A7490](v15, -1, -1);
  }

LABEL_18:

  type metadata accessor for AnisetteResponse();
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t sub_26C6CC2C8()
{
  v34[1] = *MEMORY[0x277D85DE8];
  v34[0] = 0;
  v1 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v34];
  v2 = v34[0];
  if (v1)
  {
    v3 = sub_26C6D87A8();

    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v4 = sub_26C6D8898();
    __swift_project_value_buffer(v4, qword_2804AD1F8);
    v5 = v0;
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BB8();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v34[0] = v9;
      *v8 = 136315138;
      v10 = [v5 description];
      v11 = sub_26C6D8A08();
      v13 = v12;

      v14 = sub_26C67A77C(v11, v13, v34);

      *(v8 + 4) = v14;
      _os_log_impl(&dword_26C66B000, v6, v7, "Successfully archived response: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }
  }

  else
  {
    v15 = v2;
    v16 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v17 = sub_26C6D8898();
    __swift_project_value_buffer(v17, qword_2804AD1F8);
    v18 = v0;
    v19 = v16;
    v20 = sub_26C6D8878();
    v21 = sub_26C6D8BA8();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v34[0] = v23;
      *v22 = 136315394;
      v24 = [v18 description];
      v25 = sub_26C6D8A08();
      v27 = v26;

      v28 = sub_26C67A77C(v25, v27, v34);

      *(v22 + 4) = v28;
      *(v22 + 12) = 2080;
      v29 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v30 = sub_26C6D8A18();
      v32 = sub_26C67A77C(v30, v31, v34);

      *(v22 + 14) = v32;
      _os_log_impl(&dword_26C66B000, v20, v21, "Failed to archive request %s with error: %s", v22, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v23, -1, -1);
      MEMORY[0x26D6A7490](v22, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  return v3;
}

id sub_26C6CC6F8(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for AnisetteResponse();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_26C6CC740(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
}

uint64_t sub_26C6CC7B0(uint64_t (*a1)(void))
{
  v1 = a1();

  return MEMORY[0x2821FE788](v1, 0);
}

unint64_t sub_26C6CC7EC(uint64_t a1, uint64_t a2)
{
  v2 = sub_26C6D8DB8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

id sub_26C6CC838(void *a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91A0, &unk_26C6DE430);
  if (a2 <= 1u)
  {
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    if (a2)
    {
      *(inited + 32) = 0x6465636E79537369;
      v23 = inited + 32;
      *(inited + 40) = 0xE800000000000000;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = a1 & 1;
      v24 = sub_26C68AB1C(inited);
      swift_setDeallocating();
      sub_26C677B60(v23, &qword_2804A8B48, &qword_26C6DB3D0);
      v25 = type metadata accessor for AnisetteResponse();
      v26 = objc_allocWithZone(v25);
      v27 = &v26[OBJC_IVAR___WFAnisetteResponse_id];
      *v27 = 1668184435;
      *(v27 + 1) = 0xE400000000000000;
      *&v26[OBJC_IVAR___WFAnisetteResponse_data] = v24;
      v42.receiver = v26;
      v42.super_class = v25;
      return objc_msgSendSuper2(&v42, sel_init);
    }

    else
    {
      *(inited + 32) = 0x7369766F72507369;
      v8 = inited + 32;
      *(inited + 40) = 0xED000064656E6F69;
      *(inited + 72) = MEMORY[0x277D839B0];
      *(inited + 48) = a1 & 1;
      v9 = sub_26C68AB1C(inited);
      swift_setDeallocating();
      sub_26C677B60(v8, &qword_2804A8B48, &qword_26C6DB3D0);
      v10 = type metadata accessor for AnisetteResponse();
      v11 = objc_allocWithZone(v10);
      v12 = &v11[OBJC_IVAR___WFAnisetteResponse_id];
      *v12 = 0x6F697369766F7270;
      *(v12 + 1) = 0xE90000000000006ELL;
      *&v11[OBJC_IVAR___WFAnisetteResponse_data] = v9;
      v41.receiver = v11;
      v41.super_class = v10;
      return objc_msgSendSuper2(&v41, sel_init);
    }
  }

  else if (a2 == 2)
  {
    v14 = swift_initStackObject();
    *(v14 + 16) = xmmword_26C6DA0F0;
    *(v14 + 32) = 0x6465736172457369;
    v15 = v14 + 32;
    *(v14 + 40) = 0xE800000000000000;
    *(v14 + 72) = MEMORY[0x277D839B0];
    *(v14 + 48) = a1 & 1;
    v16 = sub_26C68AB1C(v14);
    swift_setDeallocating();
    sub_26C677B60(v15, &qword_2804A8B48, &qword_26C6DB3D0);
    v17 = type metadata accessor for AnisetteResponse();
    v18 = objc_allocWithZone(v17);
    v19 = &v18[OBJC_IVAR___WFAnisetteResponse_id];
    *v19 = 0x6573617265;
    *(v19 + 1) = 0xE500000000000000;
    *&v18[OBJC_IVAR___WFAnisetteResponse_data] = v16;
    v43.receiver = v18;
    v43.super_class = v17;
    return objc_msgSendSuper2(&v43, sel_init);
  }

  else
  {
    if (a2 == 3)
    {
      v4 = swift_initStackObject();
      *(v4 + 16) = xmmword_26C6DA0F0;
      strcpy((v4 + 32), "anisetteData");
      *(v4 + 45) = 0;
      *(v4 + 46) = -5120;
      if (a1)
      {
        v5 = sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
        v6 = a1;
      }

      else
      {
        v6 = 0;
        v5 = 0;
        *(v4 + 56) = 0;
        *(v4 + 64) = 0;
      }

      *(v4 + 48) = v6;
      *(v4 + 72) = v5;
      v28 = a1;
      v29 = sub_26C68AB1C(v4);
      swift_setDeallocating();
      sub_26C677B60(v4 + 32, &qword_2804A8B48, &qword_26C6DB3D0);
      v30 = type metadata accessor for AnisetteResponse();
      v31 = objc_allocWithZone(v30);
      v32 = &v31[OBJC_IVAR___WFAnisetteResponse_id];
      *v32 = 0x6863746566;
      *(v32 + 1) = 0xE500000000000000;
      *&v31[OBJC_IVAR___WFAnisetteResponse_data] = v29;
      v44.receiver = v31;
      v44.super_class = v30;
      v33 = objc_msgSendSuper2(&v44, sel_init);
      v34 = a1;
      v35 = 3;
    }

    else
    {
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_26C6DA0F0;
      strcpy((v20 + 32), "anisetteData");
      *(v20 + 45) = 0;
      *(v20 + 46) = -5120;
      if (a1)
      {
        v21 = sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
        v22 = a1;
      }

      else
      {
        v22 = 0;
        v21 = 0;
        *(v20 + 56) = 0;
        *(v20 + 64) = 0;
      }

      *(v20 + 48) = v22;
      *(v20 + 72) = v21;
      v36 = a1;
      v37 = sub_26C68AB1C(v20);
      swift_setDeallocating();
      sub_26C677B60(v20 + 32, &qword_2804A8B48, &qword_26C6DB3D0);
      v38 = type metadata accessor for AnisetteResponse();
      v39 = objc_allocWithZone(v38);
      v40 = &v39[OBJC_IVAR___WFAnisetteResponse_id];
      *v40 = 0x79636167656CLL;
      *(v40 + 1) = 0xE600000000000000;
      *&v39[OBJC_IVAR___WFAnisetteResponse_data] = v37;
      v45.receiver = v39;
      v45.super_class = v38;
      v33 = objc_msgSendSuper2(&v45, sel_init);
      v34 = a1;
      v35 = 4;
    }

    sub_26C6CCD10(v34, v35);
    return v33;
  }
}

void sub_26C6CCD10(id a1, unsigned __int8 a2)
{
  if (a2 - 3 <= 1)
  {
  }
}

id sub_26C6CCD28(uint64_t a1, unint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_26C6DA0F0;
      *(inited + 32) = 1684632420;
      *(inited + 40) = 0xE400000000000000;
      *(inited + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87B0, &qword_26C6DA5A8);
      *(inited + 48) = a1;
      *(inited + 56) = a2;

      v17 = sub_26C68AC4C(inited);
      swift_setDeallocating();
      sub_26C677B60(inited + 32, &unk_2804A91C0, &unk_26C6DB3E0);
      v18 = type metadata accessor for AnisetteRequest();
      v19 = objc_allocWithZone(v18);
      v20 = OBJC_IVAR___WFAnisetteRequest_data;
      *&v19[v20] = sub_26C68AC4C(MEMORY[0x277D84F90]);
      v21 = &v19[OBJC_IVAR___WFAnisetteRequest_id];
      *v21 = 0x79636167656CLL;
      *(v21 + 1) = 0xE600000000000000;
      *&v19[v20] = v17;

      v41.receiver = v19;
      v41.super_class = v18;
      v11 = objc_msgSendSuper2(&v41, sel_init);
      v12 = a1;
      v13 = a2;
      v14 = 2;
      goto LABEL_6;
    }

    v30 = a1 | a2;
    v31 = MEMORY[0x277D84F90];
    v32 = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v33 = type metadata accessor for AnisetteRequest();
    v34 = objc_allocWithZone(v33);
    v35 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v34[v35] = sub_26C68AC4C(v31);
    v36 = &v34[OBJC_IVAR___WFAnisetteRequest_id];
    if (v30)
    {
      *v36 = 0x6573617265;
      *(v36 + 1) = 0xE500000000000000;
      *&v34[v35] = v32;

      v39.receiver = v34;
      v39.super_class = v33;
      return objc_msgSendSuper2(&v39, sel_init, v37.receiver, v37.super_class);
    }

    else
    {
      *v36 = 0x6F697369766F7270;
      *(v36 + 1) = 0xE90000000000006ELL;
      *&v34[v35] = v32;

      return objc_msgSendSuper2(&v37, sel_init, v34, v33);
    }
  }

  else
  {
    if (!a3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
      v5 = swift_initStackObject();
      *(v5 + 16) = xmmword_26C6DA0F0;
      *(v5 + 32) = 0x617461446D6973;
      *(v5 + 40) = 0xE700000000000000;
      *(v5 + 72) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A87A8, &qword_26C6DA5A0);
      *(v5 + 48) = a1;
      *(v5 + 56) = a2;
      sub_26C67ED18(a1, a2);
      v6 = sub_26C68AC4C(v5);
      swift_setDeallocating();
      sub_26C677B60(v5 + 32, &unk_2804A91C0, &unk_26C6DB3E0);
      v7 = type metadata accessor for AnisetteRequest();
      v8 = objc_allocWithZone(v7);
      v9 = OBJC_IVAR___WFAnisetteRequest_data;
      *&v8[v9] = sub_26C68AC4C(MEMORY[0x277D84F90]);
      v10 = &v8[OBJC_IVAR___WFAnisetteRequest_id];
      *v10 = 1668184435;
      *(v10 + 1) = 0xE400000000000000;
      *&v8[v9] = v6;

      v38.receiver = v8;
      v38.super_class = v7;
      v11 = objc_msgSendSuper2(&v38, sel_init);
      v12 = a1;
      v13 = a2;
      v14 = 0;
LABEL_6:
      sub_26C6CD15C(v12, v13, v14);
      return v11;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
    v23 = swift_initStackObject();
    *(v23 + 16) = xmmword_26C6DA0F0;
    *(v23 + 32) = 0x7250646C756F6873;
    v24 = v23 + 32;
    *(v23 + 40) = 0xEF6E6F697369766FLL;
    *(v23 + 72) = MEMORY[0x277D839B0];
    *(v23 + 48) = a1 & 1;
    v25 = sub_26C68AC4C(v23);
    swift_setDeallocating();
    sub_26C677B60(v24, &unk_2804A91C0, &unk_26C6DB3E0);
    v26 = type metadata accessor for AnisetteRequest();
    v27 = objc_allocWithZone(v26);
    v28 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v27[v28] = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v29 = &v27[OBJC_IVAR___WFAnisetteRequest_id];
    *v29 = 0x6863746566;
    *(v29 + 1) = 0xE500000000000000;
    *&v27[v28] = v25;

    v40.receiver = v27;
    v40.super_class = v26;
    return objc_msgSendSuper2(&v40, sel_init, v37.receiver, v37.super_class);
  }
}

uint64_t sub_26C6CD15C(uint64_t result, unint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  if (!a3)
  {
    return sub_26C67EE70(result, a2);
  }

  return result;
}

unint64_t sub_26C6CD190()
{
  result = qword_2804A91D0;
  if (!qword_2804A91D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A91D0);
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

uint64_t sub_26C6CD1F8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_26C6CD240(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_26C6CD438(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9200, &qword_26C6DE5D0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6CDDA0();
  sub_26C6D8F38();
  v14 = 0;
  sub_26C6D8DF8();
  if (!v4)
  {
    v13 = 1;
    sub_26C6D8E08();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_26C6CD5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000026C6E03F0 == a2 || (sub_26C6D8E48() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000026C6E0410 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_26C6D8E48();

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
  return result;
}

uint64_t sub_26C6CD6E4(uint64_t a1)
{
  v2 = sub_26C6CDDA0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_26C6CD720(uint64_t a1)
{
  v2 = sub_26C6CDDA0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_26C6CD784@<X0>(_BYTE *a1@<X1>, uint64_t a2@<X8>, uint64_t a3@<X0>)
{
  result = sub_26C6CD81C(a3);
  if (v3)
  {
    *a1 = result;
  }

  else
  {
    *a2 = result;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8 & 1;
  }

  return result;
}

uint64_t sub_26C6CD7C8@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_26C6CDBC8(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t sub_26C6CD81C(uint64_t a1)
{
  v2 = v1;
  v25[3] = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = sub_26C6D89A8();
  v24 = 0;
  v5 = [v3 dataWithJSONObject:v4 options:0 error:&v24];

  v6 = v24;
  if (v5)
  {
    v7 = sub_26C6D87A8();
    v9 = v8;

    sub_26C6D8678();
    swift_allocObject();
    sub_26C6D8668();
    sub_26C6CDB74();
    sub_26C6D8658();
    if (!v1)
    {

      sub_26C678418(v7, v9);
      return v25[0];
    }

    sub_26C678418(v7, v9);
  }

  else
  {
    v10 = v6;
    v2 = sub_26C6D86F8();

    swift_willThrow();
  }

  if (qword_2804A85A8 != -1)
  {
    swift_once();
  }

  v11 = sub_26C6D8898();
  __swift_project_value_buffer(v11, qword_2804AD258);

  v12 = sub_26C6D8878();
  v13 = sub_26C6D8BA8();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v24 = &type metadata for EnrollmentsReceivedRequest;
    v25[0] = v15;
    *v14 = 136446466;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A91E0, &qword_26C6DE5C0);
    v16 = sub_26C6D8A18();
    v18 = sub_26C67A77C(v16, v17, v25);

    *(v14 + 4) = v18;
    *(v14 + 12) = 2082;
    v19 = sub_26C6D89C8();
    v21 = sub_26C67A77C(v19, v20, v25);

    *(v14 + 14) = v21;
    _os_log_impl(&dword_26C66B000, v12, v13, "Unabled to decode %{public}s from %{public}s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D6A7490](v15, -1, -1);
    MEMORY[0x26D6A7490](v14, -1, -1);
  }

  v22 = 1;
  LOBYTE(v25[0]) = 1;
  sub_26C676694();
  swift_willThrowTypedImpl();

  return v22;
}

unint64_t sub_26C6CDB74()
{
  result = qword_2804A91E8;
  if (!qword_2804A91E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A91E8);
  }

  return result;
}

uint64_t sub_26C6CDBC8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A91F0, &qword_26C6DE5C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_26C6CDDA0();
  sub_26C6D8F28();
  if (!v1)
  {
    v9[15] = 0;
    v7 = sub_26C6D8DC8();
    v9[14] = 1;
    sub_26C6D8DD8();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t sub_26C6CDDA0()
{
  result = qword_2804A91F8;
  if (!qword_2804A91F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A91F8);
  }

  return result;
}

unint64_t sub_26C6CDE08()
{
  result = qword_2804A9208;
  if (!qword_2804A9208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9208);
  }

  return result;
}

unint64_t sub_26C6CDE60()
{
  result = qword_2804A9210;
  if (!qword_2804A9210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9210);
  }

  return result;
}

unint64_t sub_26C6CDEB8()
{
  result = qword_2804A9218;
  if (!qword_2804A9218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9218);
  }

  return result;
}

uint64_t sub_26C6CDF0C(void *a1)
{
  v3 = v1;
  result = sub_26C6CF5EC(a1);
  if (!v2)
  {
    v6 = result;
    if (qword_2804A85C8 != -1)
    {
      swift_once();
    }

    v7 = sub_26C6D8898();
    __swift_project_value_buffer(v7, qword_2804AD2B8);
    sub_26C67749C(a1, v25);

    v8 = sub_26C6D8878();
    v9 = sub_26C6D8BB8();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v10 = 136446466;
      v12 = v26;
      v11 = v27;
      __swift_project_boxed_opaque_existential_1(v25, v26);
      v13 = (*(v11 + 32))(v12, v11);
      v15 = v14;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      v16 = sub_26C67A77C(v13, v15, &v28);

      *(v10 + 4) = v16;
      *(v10 + 12) = 2082;
      sub_26C677D78();
      v17 = sub_26C6D89C8();
      v19 = sub_26C67A77C(v17, v18, &v28);

      *(v10 + 14) = v19;
      _os_log_impl(&dword_26C66B000, v8, v9, "Sending analytics event %{public}s with payload %{public}s.", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v10, -1, -1);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_1Tm(v25);
    }

    __swift_project_boxed_opaque_existential_1((v3 + 16), *(v3 + 40));
    v20 = a1[3];
    v21 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v20);
    v22 = (*(v21 + 32))(v20, v21);
    off_287D2B790(v22, v23, v6);
  }

  return result;
}

uint64_t sub_26C6CE1BC(uint64_t a1, uint64_t a2)
{
  v37[4] = *MEMORY[0x277D85DE8];
  v5 = *(a1 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v31 - v9;
  sub_26C6D86A8();
  swift_allocObject();
  sub_26C6D8698();
  v11 = sub_26C6D8688();
  v13 = v12;

  if (!v3)
  {
    v34 = v5;
    v15 = objc_opt_self();
    v16 = sub_26C6D8798();
    v36[0] = 0;
    v17 = [v15 JSONObjectWithData:v16 options:0 error:v36];

    v18 = v36[0];
    if (v17)
    {
      sub_26C6D8C78();
      swift_unknownObjectRelease();
      sub_26C676984(v37, v36);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9220, &qword_26C6DE738);
      if (swift_dynamicCast())
      {
        __swift_destroy_boxed_opaque_existential_1Tm(v37);
        sub_26C678418(v11, v13);
        return v35;
      }

      else
      {
        if (qword_2804A85C8 != -1)
        {
          swift_once();
        }

        v20 = sub_26C6D8898();
        __swift_project_value_buffer(v20, qword_2804AD2B8);
        v21 = v34;
        v33 = *(v34 + 16);
        v33(v10, v2, a1);
        v22 = sub_26C6D8878();
        v23 = sub_26C6D8BA8();
        if (os_log_type_enabled(v22, v23))
        {
          v24 = swift_slowAlloc();
          v32 = v23;
          v25 = v24;
          v31 = swift_slowAlloc();
          v36[0] = v31;
          *v25 = 136315138;
          v33(v8, v10, a1);
          v26 = sub_26C6D8A18();
          v28 = v27;
          (*(v21 + 8))(v10, a1);
          v29 = sub_26C67A77C(v26, v28, v36);

          *(v25 + 4) = v29;
          _os_log_impl(&dword_26C66B000, v22, v32, "Failed to encode object as [String: NSObject]: %s", v25, 0xCu);
          v30 = v31;
          __swift_destroy_boxed_opaque_existential_1Tm(v31);
          MEMORY[0x26D6A7490](v30, -1, -1);
          MEMORY[0x26D6A7490](v25, -1, -1);
        }

        else
        {

          (*(v21 + 8))(v10, a1);
        }

        sub_26C6CF980();
        swift_allocError();
        swift_willThrow();
        sub_26C678418(v11, v13);
        return __swift_destroy_boxed_opaque_existential_1Tm(v37);
      }
    }

    else
    {
      v19 = v18;
      sub_26C6D86F8();

      swift_willThrow();
      return sub_26C678418(v11, v13);
    }
  }

  return result;
}

uint64_t sub_26C6CE5FC()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_26C6CE658(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B70, &qword_26C6DB3F0);
  result = sub_26C6D8D98();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_26C68A024((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_26C68ADDC(v23, &v36);
        sub_26C676984(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_26C6D8CB8();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_26C68A024(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_26C6CE910(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B30, &qword_26C6DE730);
  v35 = v4;
  result = sub_26C6D8D98();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_26C6D8EE8();
      sub_26C6D8A38();
      result = sub_26C6D8F08();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_26C6CEBB4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B58, &unk_26C6DE740);
  v33 = v4;
  result = sub_26C6D8D98();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = 16 * (v18 | (v8 << 6));
      v22 = (*(v5 + 48) + v21);
      v23 = *v22;
      v24 = v22[1];
      v34 = *(*(v5 + 56) + v21);
      if ((v33 & 1) == 0)
      {

        sub_26C67ED2C(v34, *(&v34 + 1));
      }

      sub_26C6D8EE8();
      sub_26C6D8A38();
      result = sub_26C6D8F08();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v23;
      v17[1] = v24;
      *(*(v7 + 56) + v16) = v34;
      ++*(v7 + 16);
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void *sub_26C6CEE70()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B70, &qword_26C6DB3F0);
  v2 = *v0;
  v3 = sub_26C6D8D88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_26C68ADDC(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_26C676984(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_26C68A024(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_26C6CF014()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B30, &qword_26C6DE730);
  v2 = *v0;
  v3 = sub_26C6D8D88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_26C6CF180()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8B58, &unk_26C6DE740);
  v2 = *v0;
  v3 = sub_26C6D8D88();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v22 = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v22;

        result = sub_26C67ED2C(v22, *(&v22 + 1));
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

      v16 = *(v2 + 64 + 8 * v8);
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

id sub_26C6CF304@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_26C6CF350(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v40 = v6;
  while (v9)
  {
    v43 = a4;
    v15 = v11;
LABEL_14:
    v17 = __clz(__rbit64(v9)) | (v15 << 6);
    v18 = (*(a1 + 48) + 16 * v17);
    v19 = v18[1];
    v20 = *(*(a1 + 56) + 8 * v17);
    v47[0] = *v18;
    v47[1] = v19;
    v47[2] = v20;

    v21 = v20;
    a2(&v44, v47);

    v22 = v44;
    v23 = v45;
    v24 = v46;
    v25 = *v48;
    v27 = sub_26C689AC8(v44, v45);
    v28 = v25[2];
    v29 = (v26 & 1) == 0;
    v30 = v28 + v29;
    if (__OFADD__(v28, v29))
    {
      goto LABEL_25;
    }

    v31 = v26;
    if (v25[3] >= v30)
    {
      if ((v43 & 1) == 0)
      {
        sub_26C6CF014();
      }
    }

    else
    {
      sub_26C6CE910(v30, v43 & 1);
      v32 = sub_26C689AC8(v22, v23);
      if ((v31 & 1) != (v33 & 1))
      {
        goto LABEL_27;
      }

      v27 = v32;
    }

    v9 &= v9 - 1;
    v34 = *v48;
    if (v31)
    {
      v12 = *(v34[7] + 8 * v27);

      v13 = v34[7];
      v14 = *(v13 + 8 * v27);
      *(v13 + 8 * v27) = v12;
    }

    else
    {
      v34[(v27 >> 6) + 8] |= 1 << v27;
      v35 = (v34[6] + 16 * v27);
      *v35 = v22;
      v35[1] = v23;
      *(v34[7] + 8 * v27) = v24;
      v36 = v34[2];
      v37 = __OFADD__(v36, 1);
      v38 = v36 + 1;
      if (v37)
      {
        goto LABEL_26;
      }

      v34[2] = v38;
    }

    a4 = 1;
    v11 = v15;
    v6 = v40;
  }

  v16 = v11;
  while (1)
  {
    v15 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v15 >= v10)
    {
      sub_26C6A3D74(a1);
    }

    v9 = *(v6 + 8 * v15);
    ++v16;
    if (v9)
    {
      v43 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_26C6D8E78();
  __break(1u);
  return result;
}

uint64_t sub_26C6CF5EC(void *a1)
{
  sub_26C68A900(MEMORY[0x277D84F90]);

  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v8 = &v25 - v7;
  (*(v4 + 48))(v3, v4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = sub_26C6CE1BC(AssociatedTypeWitness, AssociatedConformanceWitness);
  if (v1)
  {
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    if (qword_2804A85C8 != -1)
    {
      swift_once();
    }

    v14 = sub_26C6D8898();
    __swift_project_value_buffer(v14, qword_2804AD2B8);
    v15 = v1;
    v16 = sub_26C6D8878();
    v17 = sub_26C6D8BA8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = v1;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_26C66B000, v16, v17, "Failed to generate dictionary from payload: %{public}@.", v18, 0xCu);
      sub_26C6CF918(v19);
      MEMORY[0x26D6A7490](v19, -1, -1);
      MEMORY[0x26D6A7490](v18, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    v11 = v10;
    (*(v6 + 8))(v8, AssociatedTypeWitness);
    v12 = a1[3];
    v13 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v12);
    v22 = sub_26C6CE1BC(v12, *(v13 + 8));
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = v11;
    sub_26C6CF350(v22, sub_26C6CF304, 0, isUniquelyReferenced_nonNull_native, &v26);

    return v26;
  }
}

uint64_t sub_26C6CF918(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9070, &qword_26C6DA3C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_26C6CF980()
{
  result = qword_2804A9228;
  if (!qword_2804A9228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2804A9228);
  }

  return result;
}

unint64_t sub_26C6CFA3C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26C6DA0F0;
  sub_26C6D8CD8();
  *(inited + 96) = MEMORY[0x277D83B88];
  *(inited + 72) = 0;
  v1 = sub_26C689E88(inited);
  swift_setDeallocating();
  sub_26C6A012C(inited + 32);
  return v1;
}

uint64_t sub_26C6CFAF4()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD1F8);
  __swift_project_value_buffer(v0, qword_2804AD1F8);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFB70()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD210);
  __swift_project_value_buffer(v0, qword_2804AD210);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFC9C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_26C6D8898();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFD14()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD288);
  __swift_project_value_buffer(v0, qword_2804AD288);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFD94()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD2A0);
  __swift_project_value_buffer(v0, qword_2804AD2A0);
  return sub_26C6D8888();
}

uint64_t sub_26C6CFE14()
{
  v0 = sub_26C6D8898();
  __swift_allocate_value_buffer(v0, qword_2804AD2B8);
  __swift_project_value_buffer(v0, qword_2804AD2B8);
  return sub_26C6D8888();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_26C6CFEFC(uint64_t a1)
{
  v1 = a1;
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9280, &unk_26C6DE9A0);
    v2 = sub_26C6D8DA8();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  v3 = v1 + 64;
  v4 = 1 << *(v1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(v1 + 64);
  v7 = (v4 + 63) >> 6;

  v9 = 0;
  if (v6)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v7)
    {

      return v2;
    }

    v6 = *(v3 + 8 * v15);
    ++v9;
    if (v6)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v6)) | (v15 << 6);
        sub_26C68ADDC(*(v1 + 48) + 40 * v16, v26);
        sub_26C676984(*(v1 + 56) + 32 * v16, v27 + 8);
        v24[0] = v27[0];
        v24[1] = v27[1];
        v25 = v28;
        v23[0] = v26[0];
        v23[1] = v26[1];
        sub_26C68ADDC(v23, v22);
        if (!swift_dynamicCast())
        {
          sub_26C677B60(v23, &qword_2804A8D68, qword_26C6DC4E8);

          goto LABEL_23;
        }

        sub_26C676984(v24 + 8, v22);
        sub_26C677B60(v23, &qword_2804A8D68, qword_26C6DC4E8);
        if ((swift_dynamicCast() & 1) == 0)
        {
          break;
        }

        v6 &= v6 - 1;
        result = sub_26C689AC8(v21, *(&v21 + 1));
        if (v17)
        {
          v10 = v1;
          v11 = 16 * result;
          *(v2[6] + 16 * result) = v21;

          v12 = (v2[7] + v11);
          v1 = v10;
          v13 = *v12;
          v14 = v12[1];
          *v12 = v21;
          result = sub_26C678418(v13, v14);
          v9 = v15;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_26;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v21;
          *(v2[7] + 16 * result) = v21;
          v18 = v2[2];
          v19 = __OFADD__(v18, 1);
          v20 = v18 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v2[2] = v20;
          v9 = v15;
          if (!v6)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v15 = v9;
      }

      sub_26C67EE70(0, 0xF000000000000000);
LABEL_23:

      sub_26C6D85C4(0, 0, 0, 0);
      return 0;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void *sub_26C6D025C()
{
  v1 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C6D02B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26C6D03B8()
{
  v1 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C6D0410(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void *sub_26C6D0514()
{
  v1 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_26C6D056C(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4)
{
  v6 = *a4;
  swift_beginAccess();
  v7 = *(a1 + v6);
  *(a1 + v6) = a3;
  v8 = a3;
}

void sub_26C6D05C8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_26C6D0620(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  v8 = *(v6 + v7);
  *(v6 + v7) = v5;
  v9 = v5;
}

id WFSetupServerAnisetteDataProvider.__allocating_init(companionAuthDevice:transportableAuthKitAccount:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
  v6 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  *&v5[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
  v7 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  *&v5[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
  swift_beginAccess();
  *&v5[v6] = a1;
  swift_beginAccess();
  *&v5[v7] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, sel_init);
}

id WFSetupServerAnisetteDataProvider.init(companionAuthDevice:transportableAuthKitAccount:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
  v5 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
  v6 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
  swift_beginAccess();
  *&v2[v5] = a1;
  swift_beginAccess();
  *&v2[v6] = a2;
  v8.receiver = v2;
  v8.super_class = type metadata accessor for WFSetupServerAnisetteDataProvider();
  return objc_msgSendSuper2(&v8, sel_init);
}

id WFSetupServerAnisetteDataProvider.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_26C6D7B44();

  return v4;
}

id WFSetupServerAnisetteDataProvider.init(coder:)(void *a1)
{
  v2 = sub_26C6D7B44();

  return v2;
}

void sub_26C6D08DC(void (*a1)(void, void *), uint64_t a2)
{
  v3 = v2;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD1F8);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, &aBlock);
    _os_log_impl(&dword_26C66B000, v7, v8, "%{public}s is invoked. ", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12)
  {
    v37 = a1;
    v38 = a2;
    v13 = v12;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v16 = type metadata accessor for AnisetteRequest();
    v17 = objc_allocWithZone(v16);
    v18 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v17[v18] = sub_26C68AC4C(v14);
    v19 = &v17[OBJC_IVAR___WFAnisetteRequest_id];
    *v19 = 0x6F697369766F7270;
    *(v19 + 1) = 0xE90000000000006ELL;
    *&v17[v18] = v15;

    v45.receiver = v17;
    v45.super_class = v16;
    v20 = objc_msgSendSuper2(&v45, sel_init);
    v27 = sub_26C6CB368();
    v29 = v28;

    v30 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v31 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 0x6F697369766F7270;
    v40 = 0xE90000000000006ELL;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v27;
    *(inited + 80) = v29;
    sub_26C67ED2C(v27, v29);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v33 = sub_26C6D89A8();

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v37;
    v35[3] = v38;
    v35[4] = v34;
    v43 = sub_26C6D7EEC;
    v44 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_26C6D1900;
    v42 = &block_descriptor_5;
    v36 = _Block_copy(&aBlock);
    sub_26C676954(v37, v38);

    [v13 sendRequestID:v30 options:v31 request:v33 responseHandler:v36];
    _Block_release(v36);

    sub_26C678418(v27, v29);
  }

  else
  {
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, &aBlock);
      _os_log_impl(&dword_26C66B000, v21, v22, "%{public}s invoked but session is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);
    }

    if (a1)
    {
      sub_26C6C0B64();
      v25 = swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 5;
      a1(0, v25);
    }
  }
}

void sub_26C6D0F7C(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD1F8);
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v10, v11, "Provisioning request failed with osstatus code: %{public}d", v12, 8u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    if (a4)
    {
      v13 = a1;
      sub_26C6C0B64();
      v14 = swift_allocError();
      *v15 = v13;
      *(v15 + 8) = 0;
      *(v15 + 16) = 4;
      a4(0, v14);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v31 = sub_26C6D84A4(a3, 0);

    if (v31)
    {
      v32 = *&v31[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v32 + 16))
      {

        v33 = sub_26C689AC8(0x7369766F72507369, 0xED000064656E6F69);
        if (v34)
        {
          sub_26C684E18(*(v32 + 56) + 32 * v33, &v50);

          v52[0] = v50;
          v52[1] = v51;
          if (*(&v51 + 1))
          {
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v35 = sub_26C6D8898();
              __swift_project_value_buffer(v35, qword_2804AD228);
              v36 = sub_26C6D8878();
              v37 = sub_26C6D8BB8();
              if (os_log_type_enabled(v36, v37))
              {
                v38 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v52[0] = v39;
                *v38 = 67109378;
                *(v38 + 4) = v49;
                *(v38 + 8) = 2080;
                *(v38 + 10) = sub_26C67A77C(0x6F697369766F7270, 0xE90000000000006ELL, v52);
                _os_log_impl(&dword_26C66B000, v36, v37, "Received response: isProvisioned %{BOOL}d for service id: %s", v38, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v39);
                MEMORY[0x26D6A7490](v39, -1, -1);
                MEMORY[0x26D6A7490](v38, -1, -1);
              }

              if (a4)
              {
                v40 = qword_2804A8588;

                if (v40 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v41 = sub_26C6D8878();
                v42 = sub_26C6D8BB8();
                if (os_log_type_enabled(v41, v42))
                {
                  v43 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  *&v52[0] = v44;
                  *v43 = 136446210;
                  *(v43 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, v52);
                  _os_log_impl(&dword_26C66B000, v41, v42, "Invoking completion block that was passed into: %{public}s", v43, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v44);
                  MEMORY[0x26D6A7490](v44, -1, -1);
                  MEMORY[0x26D6A7490](v43, -1, -1);
                }

                a4(v49, 0);
                sub_26C676904(a4, a5);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v45 = sub_26C6D8878();
                v46 = sub_26C6D8BB8();
                if (os_log_type_enabled(v45, v46))
                {
                  v47 = swift_slowAlloc();
                  v48 = swift_slowAlloc();
                  *&v52[0] = v48;
                  *v47 = 136446210;
                  *(v47 + 4) = sub_26C67A77C(0xD00000000000001ELL, 0x800000026C6E0540, v52);
                  _os_log_impl(&dword_26C66B000, v45, v46, "No completion block passed into %{public}s. ", v47, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v48);
                  MEMORY[0x26D6A7490](v48, -1, -1);
                  MEMORY[0x26D6A7490](v47, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v52, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD1F8);
  v20 = v31;
  v21 = sub_26C6D8878();
  v22 = sub_26C6D8BA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v52[0] = v24;
    *v23 = 136315138;
    *&v50 = v31;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v26 = sub_26C6D8A18();
    v28 = sub_26C67A77C(v26, v27, v52);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve value for isProvisioned from anisetteResponse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6A7490](v24, -1, -1);
    MEMORY[0x26D6A7490](v23, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v29 = swift_allocError();
    *v30 = xmmword_26C6DE7C0;
    *(v30 + 16) = 0;
    a4(0, v29);
  }

  else
  {
  }
}

uint64_t sub_26C6D1900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v6 = *(a1 + 32);
  if (a3)
  {
    v7 = sub_26C6D89B8();
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v7 = 0;
  if (a4)
  {
LABEL_3:
    v4 = sub_26C6D89B8();
  }

LABEL_4:

  v6(a2, v7, v4);
}

void sub_26C6D1A90(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26C6D86E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

void sub_26C6D1B00(uint64_t a1, unint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v10 = sub_26C6D8898();
  __swift_project_value_buffer(v10, qword_2804AD1F8);
  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();
  if (os_log_type_enabled(v11, v12))
  {
    v38 = a2;
    v13 = v5;
    v14 = a3;
    v15 = a4;
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, &aBlock);
    _os_log_impl(&dword_26C66B000, v11, v12, "%{public}s is invoked. ", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x26D6A7490](v17, -1, -1);
    v18 = v16;
    a4 = v15;
    a3 = v14;
    v5 = v13;
    a2 = v38;
    MEMORY[0x26D6A7490](v18, -1, -1);
  }

  v19 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v20 = *(v5 + v19);
  if (v20)
  {
    v21 = v20;
    sub_26C67ED18(a1, a2);
    v22 = sub_26C6CCD28(a1, a2, 0);
    v29 = sub_26C6CB368();
    v31 = v30;

    v39 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v32 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 1668184435;
    v41 = 0xE400000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v29;
    *(inited + 80) = v31;
    sub_26C67ED2C(v29, v31);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v34 = sub_26C6D89A8();

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = a3;
    v36[3] = a4;
    v36[4] = v35;
    v44 = sub_26C6D7F10;
    v45 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_26C6D1900;
    v43 = &block_descriptor_10;
    v37 = _Block_copy(&aBlock);
    sub_26C676954(a3, a4);

    [v21 sendRequestID:v39 options:v32 request:v34 responseHandler:v37];
    _Block_release(v37);

    sub_26C678418(v29, v31);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_2804AD228);
    v23 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, &aBlock);
      _os_log_impl(&dword_26C66B000, v23, v24, "%{public}s invoked but session is nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    if (a3)
    {
      sub_26C6C0B64();
      v27 = swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 5;
      a3(0, v27);
    }
  }
}

void sub_26C6D21AC(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD228);
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67240192;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v10, v11, "Syncing anisette with sim data anisette request failed with error status code: %{public}d", v12, 8u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    if (a4)
    {
      v13 = a1;
      sub_26C6C0B64();
      v14 = swift_allocError();
      *v15 = v13;
      *(v15 + 8) = 0;
      *(v15 + 16) = 4;
      a4(0, v14);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v31 = sub_26C6D84A4(a3, 1);

    if (v31)
    {
      v32 = *&v31[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v32 + 16))
      {

        v33 = sub_26C689AC8(0x6465636E79537369, 0xE800000000000000);
        if (v34)
        {
          sub_26C684E18(*(v32 + 56) + 32 * v33, &v50);

          v52[0] = v50;
          v52[1] = v51;
          if (*(&v51 + 1))
          {
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v35 = sub_26C6D8898();
              __swift_project_value_buffer(v35, qword_2804AD228);
              v36 = sub_26C6D8878();
              v37 = sub_26C6D8BB8();
              if (os_log_type_enabled(v36, v37))
              {
                v38 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v52[0] = v39;
                *v38 = 67109378;
                *(v38 + 4) = v49;
                *(v38 + 8) = 2082;
                *(v38 + 10) = sub_26C67A77C(1668184435, 0xE400000000000000, v52);
                _os_log_impl(&dword_26C66B000, v36, v37, "Received response: isSynced %{BOOL}d for service id: %{public}s", v38, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v39);
                MEMORY[0x26D6A7490](v39, -1, -1);
                MEMORY[0x26D6A7490](v38, -1, -1);
              }

              if (a4)
              {
                v40 = qword_2804A8588;

                if (v40 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v41 = sub_26C6D8878();
                v42 = sub_26C6D8BB8();
                if (os_log_type_enabled(v41, v42))
                {
                  v43 = swift_slowAlloc();
                  v44 = swift_slowAlloc();
                  *&v52[0] = v44;
                  *v43 = 136446210;
                  *(v43 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, v52);
                  _os_log_impl(&dword_26C66B000, v41, v42, "Invoking completion block that was passed into: %{public}s", v43, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v44);
                  MEMORY[0x26D6A7490](v44, -1, -1);
                  MEMORY[0x26D6A7490](v43, -1, -1);
                }

                a4(v49, 0);
                sub_26C676904(a4, a5);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v45 = sub_26C6D8878();
                v46 = sub_26C6D8BB8();
                if (os_log_type_enabled(v45, v46))
                {
                  v47 = swift_slowAlloc();
                  v48 = swift_slowAlloc();
                  *&v52[0] = v48;
                  *v47 = 136446210;
                  *(v47 + 4) = sub_26C67A77C(0xD000000000000025, 0x800000026C6E0590, v52);
                  _os_log_impl(&dword_26C66B000, v45, v46, "No completion block passed into %{public}s. ", v47, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v48);
                  MEMORY[0x26D6A7490](v48, -1, -1);
                  MEMORY[0x26D6A7490](v47, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v52, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD1F8);
  v20 = v31;
  v21 = sub_26C6D8878();
  v22 = sub_26C6D8BA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v52[0] = v24;
    *v23 = 136315138;
    *&v50 = v31;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v26 = sub_26C6D8A18();
    v28 = sub_26C67A77C(v26, v27, v52);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve value for isSynced from anisetteResponse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6A7490](v24, -1, -1);
    MEMORY[0x26D6A7490](v23, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v29 = swift_allocError();
    *v30 = xmmword_26C6DE7E0;
    *(v30 + 16) = 0;
    a4(0, v29);
  }

  else
  {
  }
}

void sub_26C6D2BA4(void (*a1)(void, void *), uint64_t a2)
{
  v3 = v2;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v6 = sub_26C6D8898();
  __swift_project_value_buffer(v6, qword_2804AD1F8);
  v7 = sub_26C6D8878();
  v8 = sub_26C6D8BB8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136446210;
    *(v9 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, &aBlock);
    _os_log_impl(&dword_26C66B000, v7, v8, "%{public}s is invoked. ", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x26D6A7490](v10, -1, -1);
    MEMORY[0x26D6A7490](v9, -1, -1);
  }

  v11 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v12 = *(v3 + v11);
  if (v12)
  {
    v37 = a1;
    v38 = a2;
    v13 = v12;
    v14 = MEMORY[0x277D84F90];
    v15 = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v16 = type metadata accessor for AnisetteRequest();
    v17 = objc_allocWithZone(v16);
    v18 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v17[v18] = sub_26C68AC4C(v14);
    v19 = &v17[OBJC_IVAR___WFAnisetteRequest_id];
    *v19 = 0x6573617265;
    *(v19 + 1) = 0xE500000000000000;
    *&v17[v18] = v15;

    v45.receiver = v17;
    v45.super_class = v16;
    v20 = objc_msgSendSuper2(&v45, sel_init);
    v27 = sub_26C6CB368();
    v29 = v28;

    v30 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v31 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 0x6573617265;
    v40 = 0xE500000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v27;
    *(inited + 80) = v29;
    sub_26C67ED2C(v27, v29);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v33 = sub_26C6D89A8();

    v34 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v35 = swift_allocObject();
    v35[2] = v37;
    v35[3] = v38;
    v35[4] = v34;
    v43 = sub_26C6D7F20;
    v44 = v35;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_26C6D1900;
    v42 = &block_descriptor_17;
    v36 = _Block_copy(&aBlock);
    sub_26C676954(v37, v38);

    [v13 sendRequestID:v30 options:v31 request:v33 responseHandler:v36];
    _Block_release(v36);

    sub_26C678418(v27, v29);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v6, qword_2804AD228);
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, &aBlock);
      _os_log_impl(&dword_26C66B000, v21, v22, "%{public}s invoked but session is nil", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);
    }

    if (a1)
    {
      sub_26C6C0B64();
      v25 = swift_allocError();
      *v26 = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 5;
      a1(0, v25);
    }
  }
}

void sub_26C6D327C(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, void *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD228);
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v10, v11, "Erase anisette request failed with error: %d", v12, 8u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    if (a4)
    {
      v13 = a1;
      sub_26C6C0B64();
      v14 = swift_allocError();
      *v15 = v13;
      *(v15 + 8) = 0;
      *(v15 + 16) = 4;
      a4(0, v14);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v31 = sub_26C6D84A4(a3, 2);

    if (v31)
    {
      v32 = *&v31[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v32 + 16))
      {

        v33 = sub_26C689AC8(0x6465736172457369, 0xE800000000000000);
        if (v34)
        {
          sub_26C684E18(*(v32 + 56) + 32 * v33, &v49);

          v51[0] = v49;
          v51[1] = v50;
          if (*(&v50 + 1))
          {
            if (swift_dynamicCast())
            {
              if (qword_2804A8588 != -1)
              {
                swift_once();
              }

              v35 = sub_26C6D8898();
              __swift_project_value_buffer(v35, qword_2804AD1F8);
              v36 = sub_26C6D8878();
              v37 = sub_26C6D8BB8();
              if (os_log_type_enabled(v36, v37))
              {
                v38 = swift_slowAlloc();
                v39 = swift_slowAlloc();
                *&v51[0] = v39;
                *v38 = 67109378;
                *(v38 + 4) = v48;
                *(v38 + 8) = 2080;
                *(v38 + 10) = sub_26C67A77C(0x6573617265, 0xE500000000000000, v51);
                _os_log_impl(&dword_26C66B000, v36, v37, "Received response: isErased %{BOOL}d for service id: %s", v38, 0x12u);
                __swift_destroy_boxed_opaque_existential_1Tm(v39);
                MEMORY[0x26D6A7490](v39, -1, -1);
                MEMORY[0x26D6A7490](v38, -1, -1);
              }

              if (a4)
              {

                v40 = sub_26C6D8878();
                v41 = sub_26C6D8BB8();
                if (os_log_type_enabled(v40, v41))
                {
                  v42 = swift_slowAlloc();
                  v43 = swift_slowAlloc();
                  *&v51[0] = v43;
                  *v42 = 136446210;
                  *(v42 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, v51);
                  _os_log_impl(&dword_26C66B000, v40, v41, "Invoking completion block that was passed into: %{public}s", v42, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v43);
                  MEMORY[0x26D6A7490](v43, -1, -1);
                  MEMORY[0x26D6A7490](v42, -1, -1);
                }

                a4(v48, 0);
                sub_26C676904(a4, a5);
              }

              else
              {
                v44 = sub_26C6D8878();
                v45 = sub_26C6D8BB8();
                if (os_log_type_enabled(v44, v45))
                {
                  v46 = swift_slowAlloc();
                  v47 = swift_slowAlloc();
                  *&v51[0] = v47;
                  *v46 = 136446210;
                  *(v46 + 4) = sub_26C67A77C(0xD00000000000001ALL, 0x800000026C6E05C0, v51);
                  _os_log_impl(&dword_26C66B000, v44, v45, "No completion block passed into %{public}s. ", v46, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v47);
                  MEMORY[0x26D6A7490](v47, -1, -1);
                  MEMORY[0x26D6A7490](v46, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v51, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD1F8);
  v20 = v31;
  v21 = sub_26C6D8878();
  v22 = sub_26C6D8BA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v51[0] = v24;
    *v23 = 136315138;
    *&v49 = v31;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v26 = sub_26C6D8A18();
    v28 = sub_26C67A77C(v26, v27, v51);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve value for isErased from anisetteResponse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6A7490](v24, -1, -1);
    MEMORY[0x26D6A7490](v23, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v29 = swift_allocError();
    *v30 = xmmword_26C6DE800;
    *(v30 + 16) = 0;
    a4(0, v29);
  }

  else
  {
  }
}

void sub_26C6D3BA4(char a1, void (*a2)(void, void *), uint64_t a3)
{
  v4 = v3;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD1F8);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    aBlock = v12;
    *v11 = 136446210;
    *(v11 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, &aBlock);
    _os_log_impl(&dword_26C66B000, v9, v10, "%{public}s is invoked. ", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v12);
    MEMORY[0x26D6A7490](v12, -1, -1);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  v13 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v14 = *(v4 + v13);
  if (v14)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A91B0, &unk_26C6DE440);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    *(inited + 32) = 0x7250646C756F6873;
    *(inited + 40) = 0xEF6E6F697369766FLL;
    *(inited + 72) = MEMORY[0x277D839B0];
    *(inited + 48) = a1 & 1;
    v16 = v14;
    v17 = sub_26C68AC4C(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &unk_2804A91C0, &unk_26C6DB3E0);
    v18 = type metadata accessor for AnisetteRequest();
    v19 = objc_allocWithZone(v18);
    v20 = OBJC_IVAR___WFAnisetteRequest_data;
    *&v19[v20] = sub_26C68AC4C(MEMORY[0x277D84F90]);
    v21 = &v19[OBJC_IVAR___WFAnisetteRequest_id];
    *v21 = 0x6863746566;
    *(v21 + 1) = 0xE500000000000000;
    *&v19[v20] = v17;

    v46.receiver = v19;
    v46.super_class = v18;
    v22 = objc_msgSendSuper2(&v46, sel_init);
    v29 = sub_26C6CB368();
    v31 = v30;

    v39 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v38 = v16;
    v32 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    v33 = swift_initStackObject();
    *(v33 + 16) = xmmword_26C6DA0F0;
    aBlock = 0x6863746566;
    v41 = 0xE500000000000000;
    sub_26C6D8CD8();
    *(v33 + 96) = MEMORY[0x277CC9318];
    *(v33 + 72) = v29;
    *(v33 + 80) = v31;
    sub_26C67ED2C(v29, v31);
    sub_26C689E88(v33);
    swift_setDeallocating();
    sub_26C677B60(v33 + 32, &qword_2804A86B8, &qword_26C6DA550);
    v34 = sub_26C6D89A8();

    v35 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v36 = swift_allocObject();
    v36[2] = a2;
    v36[3] = a3;
    v36[4] = v35;
    v44 = sub_26C6D7F2C;
    v45 = v36;
    aBlock = MEMORY[0x277D85DD0];
    v41 = 1107296256;
    v42 = sub_26C6D1900;
    v43 = &block_descriptor_24;
    v37 = _Block_copy(&aBlock);
    sub_26C676954(a2, a3);

    [v38 sendRequestID:v39 options:v32 request:v34 responseHandler:v37];
    _Block_release(v37);

    sub_26C678418(v29, v31);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v8, qword_2804AD228);
    v23 = sub_26C6D8878();
    v24 = sub_26C6D8BA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, &aBlock);
      _os_log_impl(&dword_26C66B000, v23, v24, "%{public}s invoked but session is nil", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x26D6A7490](v26, -1, -1);
      MEMORY[0x26D6A7490](v25, -1, -1);
    }

    if (a2)
    {
      sub_26C6C0B64();
      v27 = swift_allocError();
      *v28 = 0;
      *(v28 + 8) = 0;
      *(v28 + 16) = 5;
      a2(0, v27);
    }
  }
}

void sub_26C6D430C(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(id, void *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD228);
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v10, v11, "Fetch Anisette request failed with error: %d", v12, 8u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    if (a4)
    {
      v13 = a1;
      sub_26C6C0B64();
      v14 = swift_allocError();
      *v15 = v13;
      *(v15 + 8) = 0;
      *(v15 + 16) = 4;
      a4(0, v14);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v31 = sub_26C6D84A4(a3, 3);

    if (v31)
    {
      v32 = *&v31[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v32 + 16))
      {

        v33 = sub_26C689AC8(0x6574746573696E61, 0xEC00000061746144);
        if (v34)
        {
          sub_26C684E18(*(v32 + 56) + 32 * v33, &v58);

          v60[0] = v58;
          v60[1] = v59;
          if (*(&v59 + 1))
          {
            sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v35 = sub_26C6D8898();
              __swift_project_value_buffer(v35, qword_2804AD228);
              v36 = v57;
              v37 = sub_26C6D8878();
              v38 = sub_26C6D8BB8();

              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                *&v60[0] = v56;
                *v39 = 136315394;
                v40 = [v36 description];
                v55 = v38;
                v41 = sub_26C6D8A08();
                v43 = v42;

                v44 = sub_26C67A77C(v41, v43, v60);

                *(v39 + 4) = v44;
                *(v39 + 12) = 2080;
                *(v39 + 14) = sub_26C67A77C(0x6863746566, 0xE500000000000000, v60);
                _os_log_impl(&dword_26C66B000, v37, v55, "Received response: anisetteData %s for service id: %s", v39, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26D6A7490](v56, -1, -1);
                MEMORY[0x26D6A7490](v39, -1, -1);
              }

              if (a4)
              {
                v45 = qword_2804A8588;

                if (v45 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v46 = sub_26C6D8878();
                v47 = sub_26C6D8BB8();
                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  *&v60[0] = v49;
                  *v48 = 136446210;
                  *(v48 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, v60);
                  _os_log_impl(&dword_26C66B000, v46, v47, "Invoking completion block that was passed into: %{public}s", v48, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v49);
                  MEMORY[0x26D6A7490](v49, -1, -1);
                  MEMORY[0x26D6A7490](v48, -1, -1);
                }

                v50 = v36;
                a4(v36, 0);

                sub_26C676904(a4, a5);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v51 = sub_26C6D8878();
                v52 = sub_26C6D8BB8();
                if (os_log_type_enabled(v51, v52))
                {
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  *&v60[0] = v54;
                  *v53 = 136446210;
                  *(v53 + 4) = sub_26C67A77C(0xD00000000000003BLL, 0x800000026C6E05E0, v60);
                  _os_log_impl(&dword_26C66B000, v51, v52, "No completion block passed into %{public}s. ", v53, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v54);
                  MEMORY[0x26D6A7490](v54, -1, -1);
                  MEMORY[0x26D6A7490](v53, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v60, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD1F8);
  v20 = v31;
  v21 = sub_26C6D8878();
  v22 = sub_26C6D8BA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v60[0] = v24;
    *v23 = 136315138;
    *&v58 = v31;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v26 = sub_26C6D8A18();
    v28 = sub_26C67A77C(v26, v27, v60);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve value for anisetteData from anisetteResponse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6A7490](v24, -1, -1);
    MEMORY[0x26D6A7490](v23, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v29 = swift_allocError();
    *v30 = xmmword_26C6DE820;
    *(v30 + 16) = 0;
    a4(0, v29);
  }

  else
  {
  }
}

void sub_26C6D4D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_26C6D86E8();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

void sub_26C6D4DC8(uint64_t a1, unint64_t a2, void (*a3)(void, void), uint64_t a4)
{
  v5 = v4;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v10 = sub_26C6D8898();
  __swift_project_value_buffer(v10, qword_2804AD1F8);
  v11 = sub_26C6D8878();
  v12 = sub_26C6D8BB8();
  if (os_log_type_enabled(v11, v12))
  {
    v39 = a3;
    v13 = a4;
    v14 = swift_slowAlloc();
    v15 = v5;
    v16 = a1;
    v17 = swift_slowAlloc();
    aBlock = v17;
    *v14 = 136446210;
    *(v14 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, &aBlock);
    _os_log_impl(&dword_26C66B000, v11, v12, "%{public}s is invoked. ", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    v18 = v17;
    a1 = v16;
    v5 = v15;
    MEMORY[0x26D6A7490](v18, -1, -1);
    v19 = v14;
    a4 = v13;
    a3 = v39;
    MEMORY[0x26D6A7490](v19, -1, -1);
  }

  v20 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v21 = *(v5 + v20);
  if (v21)
  {

    v22 = v21;
    v23 = sub_26C6CCD28(a1, a2, 2u);
    v30 = sub_26C6CB368();
    v32 = v31;

    v40 = sub_26C6D89E8();
    sub_26C689E88(MEMORY[0x277D84F90]);
    v33 = sub_26C6D89A8();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9250, &unk_26C6DA390);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_26C6DA0F0;
    aBlock = 0x79636167656CLL;
    v42 = 0xE600000000000000;
    sub_26C6D8CD8();
    *(inited + 96) = MEMORY[0x277CC9318];
    *(inited + 72) = v30;
    *(inited + 80) = v32;
    sub_26C67ED2C(v30, v32);
    sub_26C689E88(inited);
    swift_setDeallocating();
    sub_26C677B60(inited + 32, &qword_2804A86B8, &qword_26C6DA550);
    v35 = sub_26C6D89A8();

    v36 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v37 = swift_allocObject();
    v37[2] = a3;
    v37[3] = a4;
    v37[4] = v36;
    v45 = sub_26C6D7F80;
    v46 = v37;
    aBlock = MEMORY[0x277D85DD0];
    v42 = 1107296256;
    v43 = sub_26C6D1900;
    v44 = &block_descriptor_31;
    v38 = _Block_copy(&aBlock);
    sub_26C676954(a3, a4);

    [v22 sendRequestID:v40 options:v33 request:v35 responseHandler:v38];

    _Block_release(v38);
    sub_26C678418(v30, v32);
  }

  else
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v10, qword_2804AD228);
    v24 = sub_26C6D8878();
    v25 = sub_26C6D8BA8();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, &aBlock);
      _os_log_impl(&dword_26C66B000, v24, v25, "%{public}s invoked but session is nil", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      MEMORY[0x26D6A7490](v27, -1, -1);
      MEMORY[0x26D6A7490](v26, -1, -1);
    }

    if (a3)
    {
      sub_26C6C0B64();
      v28 = swift_allocError();
      *v29 = 0;
      *(v29 + 8) = 0;
      *(v29 + 16) = 5;
      a3(0, v28);
    }
  }
}

void sub_26C6D5474(unsigned int a1, uint64_t a2, uint64_t a3, void (*a4)(id, void *), uint64_t a5, uint64_t a6)
{
  if (a1)
  {
    if (qword_2804A8598 != -1)
    {
      swift_once();
    }

    v9 = sub_26C6D8898();
    __swift_project_value_buffer(v9, qword_2804AD228);
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = a1;
      _os_log_impl(&dword_26C66B000, v10, v11, "Legacy fetch Anisette request failed with error: %d", v12, 8u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    if (a4)
    {
      v13 = a1;
      sub_26C6C0B64();
      v14 = swift_allocError();
      *v15 = v13;
      *(v15 + 8) = 0;
      *(v15 + 16) = 4;
      a4(0, v14);
    }

    return;
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v31 = sub_26C6D84A4(a3, 4);

    if (v31)
    {
      v32 = *&v31[OBJC_IVAR___WFAnisetteResponse_data];
      if (*(v32 + 16))
      {

        v33 = sub_26C689AC8(0x6574746573696E61, 0xEC00000061746144);
        if (v34)
        {
          sub_26C684E18(*(v32 + 56) + 32 * v33, &v58);

          v60[0] = v58;
          v60[1] = v59;
          if (*(&v59 + 1))
          {
            sub_26C6779D0(0, &qword_2804A9190, 0x277CF0160);
            if (swift_dynamicCast())
            {
              if (qword_2804A8598 != -1)
              {
                swift_once();
              }

              v35 = sub_26C6D8898();
              __swift_project_value_buffer(v35, qword_2804AD228);
              v36 = v57;
              v37 = sub_26C6D8878();
              v38 = sub_26C6D8BB8();

              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                v56 = swift_slowAlloc();
                *&v60[0] = v56;
                *v39 = 136315394;
                v40 = [v36 description];
                v55 = v38;
                v41 = sub_26C6D8A08();
                v43 = v42;

                v44 = sub_26C67A77C(v41, v43, v60);

                *(v39 + 4) = v44;
                *(v39 + 12) = 2080;
                *(v39 + 14) = sub_26C67A77C(0x6863746566, 0xE500000000000000, v60);
                _os_log_impl(&dword_26C66B000, v37, v55, "Received response: legacyAnisetteData %s for service id: %s", v39, 0x16u);
                swift_arrayDestroy();
                MEMORY[0x26D6A7490](v56, -1, -1);
                MEMORY[0x26D6A7490](v39, -1, -1);
              }

              if (a4)
              {
                v45 = qword_2804A8588;

                if (v45 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v46 = sub_26C6D8878();
                v47 = sub_26C6D8BB8();
                if (os_log_type_enabled(v46, v47))
                {
                  v48 = swift_slowAlloc();
                  v49 = swift_slowAlloc();
                  *&v60[0] = v49;
                  *v48 = 136446210;
                  *(v48 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, v60);
                  _os_log_impl(&dword_26C66B000, v46, v47, "Invoking completion block that was passed into: %{public}s", v48, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v49);
                  MEMORY[0x26D6A7490](v49, -1, -1);
                  MEMORY[0x26D6A7490](v48, -1, -1);
                }

                v50 = v36;
                a4(v36, 0);

                sub_26C676904(a4, a5);
              }

              else
              {
                if (qword_2804A8588 != -1)
                {
                  swift_once();
                }

                __swift_project_value_buffer(v35, qword_2804AD1F8);
                v51 = sub_26C6D8878();
                v52 = sub_26C6D8BB8();
                if (os_log_type_enabled(v51, v52))
                {
                  v53 = swift_slowAlloc();
                  v54 = swift_slowAlloc();
                  *&v60[0] = v54;
                  *v53 = 136446210;
                  *(v53 + 4) = sub_26C67A77C(0xD00000000000002BLL, 0x800000026C6E0620, v60);
                  _os_log_impl(&dword_26C66B000, v51, v52, "No completion block passed into %{public}s. ", v53, 0xCu);
                  __swift_destroy_boxed_opaque_existential_1Tm(v54);
                  MEMORY[0x26D6A7490](v54, -1, -1);
                  MEMORY[0x26D6A7490](v53, -1, -1);
                }
              }

              return;
            }
          }

          else
          {
            sub_26C677B60(v60, &qword_2804A8950, &qword_26C6DAC50);
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v31 = 0;
  }

  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v19 = sub_26C6D8898();
  __swift_project_value_buffer(v19, qword_2804AD1F8);
  v20 = v31;
  v21 = sub_26C6D8878();
  v22 = sub_26C6D8BA8();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *&v60[0] = v24;
    *v23 = 136315138;
    *&v58 = v31;
    v25 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A9278, &qword_26C6DE998);
    v26 = sub_26C6D8A18();
    v28 = sub_26C67A77C(v26, v27, v60);

    *(v23 + 4) = v28;
    _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve value for legacy anisetteData from anisetteResponse: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x26D6A7490](v24, -1, -1);
    MEMORY[0x26D6A7490](v23, -1, -1);
  }

  if (a4)
  {
    sub_26C6C0B64();
    v29 = swift_allocError();
    *v30 = xmmword_26C6DE820;
    *(v30 + 16) = 0;
    a4(0, v29);
  }

  else
  {
  }
}

uint64_t sub_26C6D5EDC(uint64_t a1, unint64_t a2)
{
  sub_26C6779D0(0, &qword_2804A8768, 0x277CCAAC8);
  type metadata accessor for AnisetteResponse();
  result = sub_26C6D8BC8();
  if (!result)
  {
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v5 = sub_26C6D8898();
    __swift_project_value_buffer(v5, qword_2804AD1F8);
    sub_26C67ED2C(a1, a2);
    v6 = sub_26C6D8878();
    v7 = sub_26C6D8BA8();
    sub_26C678418(a1, a2);
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v13 = v9;
      *v8 = 136315138;
      v10 = sub_26C6D8788();
      v12 = sub_26C67A77C(v10, v11, &v13);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_26C66B000, v6, v7, "Failed to unarchive anisette data response for %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x26D6A7490](v9, -1, -1);
      MEMORY[0x26D6A7490](v8, -1, -1);
    }

    return 0;
  }

  return result;
}

uint64_t sub_26C6D623C(uint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  v2 = *(a1 + 16);
  sub_26C6D8D48();
  if (!v2)
  {
    return v6;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_26C676984(i, v5);
    sub_26C6779D0(0, &qword_2804A9260, 0x277CB8F30);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_26C6D8D28();
    sub_26C6D8D58();
    sub_26C6D8D68();
    sub_26C6D8D38();
    if (!--v2)
    {
      return v6;
    }
  }

  return 0;
}

id WFSetupServerAnisetteDataProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WFSetupServerAnisetteDataProvider.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for WFSetupServerAnisetteDataProvider();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

Swift::Void __swiftcall WFSetupServerAnisetteDataProvider.encode(with:)(NSCoder with)
{
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (v4)
  {
    *(&v40 + 1) = sub_26C6779D0(0, &unk_2804A9268, 0x277CF0218);
    *&v39 = v4;
    sub_26C684E18(&v39, v37);
    v5 = v38;
    if (v38)
    {
      v6 = __swift_project_boxed_opaque_existential_1(v37, v38);
      v7 = *(v5 - 8);
      MEMORY[0x28223BE20](v6);
      v9 = &v37[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v7 + 16))(v9);
      v10 = v4;
      v11 = sub_26C6D8E38();
      (*(v7 + 8))(v9, v5);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }

    else
    {
      v12 = v4;
      v11 = 0;
    }

    v13 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v13];
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  sub_26C677B60(&v39, &qword_2804A8950, &qword_26C6DAC50);
  v14 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (v15)
  {
    *(&v40 + 1) = sub_26C6779D0(0, &qword_2804A9260, 0x277CB8F30);
    *&v39 = v15;
    sub_26C684E18(&v39, v37);
    v16 = v38;
    if (v38)
    {
      v17 = __swift_project_boxed_opaque_existential_1(v37, v38);
      v18 = *(v16 - 8);
      MEMORY[0x28223BE20](v17);
      v20 = &v37[-1] - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v18 + 16))(v20);
      v21 = v15;
      v22 = sub_26C6D8E38();
      (*(v18 + 8))(v20, v16);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }

    else
    {
      v23 = v15;
      v22 = 0;
    }

    v24 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeObject:v22 forKey:v24];
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  sub_26C677B60(&v39, &qword_2804A8950, &qword_26C6DAC50);
  v25 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session;
  swift_beginAccess();
  v26 = *(v1 + v25);
  if (v26)
  {
    *(&v40 + 1) = sub_26C6779D0(0, &qword_2804A8D50, 0x277D02880);
    *&v39 = v26;
    sub_26C684E18(&v39, v37);
    v27 = v38;
    if (v38)
    {
      v28 = __swift_project_boxed_opaque_existential_1(v37, v38);
      v29 = *(v27 - 8);
      MEMORY[0x28223BE20](v28);
      v31 = &v37[-1] - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v29 + 16))(v31);
      v32 = v26;
      v33 = sub_26C6D8E38();
      (*(v29 + 8))(v31, v27);
      __swift_destroy_boxed_opaque_existential_1Tm(v37);
    }

    else
    {
      v34 = v26;
      v33 = 0;
    }

    v35 = sub_26C6D89E8();
    [(objc_class *)with.super.isa encodeObject:v33 forKey:v35];
    swift_unknownObjectRelease();
  }

  else
  {
    v39 = 0u;
    v40 = 0u;
  }

  sub_26C677B60(&v39, &qword_2804A8950, &qword_26C6DAC50);
}

void *sub_26C6D6A04()
{
  if (qword_2804A8588 != -1)
  {
LABEL_75:
    swift_once();
  }

  v0 = sub_26C6D8898();
  __swift_project_value_buffer(v0, qword_2804AD1F8);
  v1 = sub_26C6D8878();
  v2 = sub_26C6D8BB8();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_26C66B000, v1, v2, "Accessing idmsAccountForICloud property", v3, 2u);
    MEMORY[0x26D6A7490](v3, -1, -1);
  }

  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v5 = [v4 aa_primaryAppleAccount];
  if (!v5)
  {
    v10 = sub_26C6D8878();
    v11 = sub_26C6D8BA8();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_26C66B000, v10, v11, "Failed to retrieve primary iCloud account", v12, 2u);
      MEMORY[0x26D6A7490](v12, -1, -1);
    }

    return 0;
  }

  v6 = v5;
  v7 = [v5 username];
  if (v7)
  {
    v8 = v7;
    v83 = sub_26C6D8A08();
    v85 = v9;
  }

  else
  {
    v83 = 0;
    v85 = 0;
  }

  v13 = [v6 aa_altDSID];
  if (v13)
  {
    v14 = v13;
    v84 = sub_26C6D8A08();
    v16 = v15;
  }

  else
  {
    v84 = 0;
    v16 = 0;
  }

  v17 = sub_26C6D89E8();
  v18 = [v6 accountPropertyForKey_];

  if (v18)
  {
    sub_26C6D8C78();
    swift_unknownObjectRelease();
  }

  else
  {
    v88 = 0u;
    v89 = 0u;
  }

  v90 = v88;
  v91 = v89;
  if (*(&v89 + 1))
  {
    sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
    if (swift_dynamicCast())
    {
      v19 = v87;
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    sub_26C677B60(&v90, &qword_2804A8950, &qword_26C6DAC50);
    v19 = 0;
  }

  v20 = [v4 accountTypeWithAccountTypeIdentifier_];
  v21 = [v4 accountsWithAccountType_];
  if (!v21 || (v22 = v21, v23 = sub_26C6D8AA8(), v22, v24 = sub_26C6D623C(v23), , !v24))
  {

    v40 = sub_26C6D8878();
    v41 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v40, v41))
    {
LABEL_82:

      return 0;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to retrieve idms accounts";
LABEL_81:
    _os_log_impl(&dword_26C66B000, v40, v41, v43, v42, 2u);
    MEMORY[0x26D6A7490](v42, -1, -1);
    goto LABEL_82;
  }

  v25 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
LABEL_77:
    v26 = sub_26C6D8D78();
    if (v26)
    {
      goto LABEL_26;
    }

    goto LABEL_78;
  }

  v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v26)
  {
LABEL_78:

LABEL_79:
    v40 = sub_26C6D8878();
    v41 = sub_26C6D8BA8();
    if (!os_log_type_enabled(v40, v41))
    {
      goto LABEL_82;
    }

    v42 = swift_slowAlloc();
    *v42 = 0;
    v43 = "Failed to find idms account asscociated with primary icloud account";
    goto LABEL_81;
  }

LABEL_26:
  v81 = v19;
  v82 = v25;
  v78 = v20;
  v79 = v6;
  v80 = v4;
  v25 = 0;
  v19 = (v24 & 0xC000000000000001);
  while (1)
  {
    if (v19)
    {
      v27 = MEMORY[0x26D6A6C00](v25, v24);
    }

    else
    {
      if (v25 >= *(v82 + 16))
      {
        __break(1u);
        goto LABEL_77;
      }

      v27 = *(v24 + 8 * v25 + 32);
    }

    v28 = v27;
    v6 = (v25 + 1);
    if (__OFADD__(v25, 1))
    {
      __break(1u);
      goto LABEL_75;
    }

    v29 = [v27 aa_altDSID];
    if (v29)
    {
      v30 = v29;
      v31 = sub_26C6D8A08();
      v20 = v32;

      if (v16)
      {
        if (v31 == v84 && v16 == v20)
        {
          v31 = v84;
LABEL_62:

          v44 = v28;

          v45 = sub_26C6D8878();
          v46 = sub_26C6D8BB8();

          v47 = v44;

          if (os_log_type_enabled(v45, v46))
          {
            v48 = swift_slowAlloc();
            v49 = swift_slowAlloc();
            *&v90 = v49;
            *v48 = 136315394;
            v50 = [v47 description];
            v51 = sub_26C6D8A08();
            v53 = v52;

            v54 = sub_26C67A77C(v51, v53, &v90);

            *(v48 + 4) = v54;
            *(v48 + 12) = 2080;
            v55 = sub_26C67A77C(v31, v20, &v90);

            *(v48 + 14) = v55;
            v56 = "Found idms account: %s with matching dsid: %s";
            goto LABEL_67;
          }

LABEL_68:

LABEL_69:

LABEL_70:
          return v47;
        }

        if (sub_26C6D8E48())
        {
          goto LABEL_62;
        }
      }
    }

    v34 = [v28 username];
    if (v34)
    {
      v35 = v34;
      v36 = sub_26C6D8A08();
      v20 = v37;

      if (v85)
      {
        if (v36 == v83 && v85 == v20)
        {
          v36 = v83;
LABEL_65:

          v57 = v28;

          v45 = sub_26C6D8878();
          v46 = sub_26C6D8BB8();

          v47 = v57;

          if (!os_log_type_enabled(v45, v46))
          {
            goto LABEL_68;
          }

          v48 = swift_slowAlloc();
          v49 = swift_slowAlloc();
          *&v90 = v49;
          *v48 = 136315394;
          v58 = [v47 description];
          v59 = sub_26C6D8A08();
          v61 = v60;

          v62 = sub_26C67A77C(v59, v61, &v90);

          *(v48 + 4) = v62;
          *(v48 + 12) = 2080;
          v63 = sub_26C67A77C(v36, v20, &v90);

          *(v48 + 14) = v63;
          v56 = "Found idms account: %s with matching username: %s";
LABEL_67:
          _os_log_impl(&dword_26C66B000, v45, v46, v56, v48, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x26D6A7490](v49, -1, -1);
          MEMORY[0x26D6A7490](v48, -1, -1);
          goto LABEL_69;
        }

        if (sub_26C6D8E48())
        {
          goto LABEL_65;
        }
      }
    }

    v4 = sub_26C6D89E8();
    v38 = [v28 accountPropertyForKey_];

    if (v38)
    {
      sub_26C6D8C78();
      swift_unknownObjectRelease();
    }

    else
    {
      v88 = 0u;
      v89 = 0u;
    }

    v90 = v88;
    v91 = v89;
    if (*(&v89 + 1))
    {
      break;
    }

    sub_26C677B60(&v90, &qword_2804A8950, &qword_26C6DAC50);
LABEL_28:
    ++v25;
    if (v6 == v26)
    {

      v6 = v79;
      v4 = v80;
      v20 = v78;
      v19 = v81;
      goto LABEL_79;
    }
  }

  sub_26C6779D0(0, &qword_2804A89A8, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_28;
  }

  v20 = v81;
  if (!v81)
  {

    goto LABEL_28;
  }

  v4 = v87;
  v20 = v81;
  v39 = sub_26C6D8C58();

  if ((v39 & 1) == 0)
  {

    goto LABEL_28;
  }

  v65 = v28;
  v66 = v4;
  v67 = sub_26C6D8878();
  v68 = sub_26C6D8BB8();

  v47 = v65;
  if (!os_log_type_enabled(v67, v68))
  {

    goto LABEL_70;
  }

  v69 = swift_slowAlloc();
  v70 = swift_slowAlloc();
  v71 = swift_slowAlloc();
  *&v90 = v71;
  *v69 = 136315394;
  v86 = v47;
  v72 = [v47 description];
  v73 = sub_26C6D8A08();
  v75 = v74;

  v76 = sub_26C67A77C(v73, v75, &v90);

  *(v69 + 4) = v76;
  *(v69 + 12) = 2112;
  *(v69 + 14) = v66;
  *v70 = v66;
  v77 = v66;
  _os_log_impl(&dword_26C66B000, v67, v68, "Found idms account: %s with matching dsid: %@", v69, 0x16u);
  sub_26C677B60(v70, &qword_2804A9070, &qword_26C6DA3C0);
  MEMORY[0x26D6A7490](v70, -1, -1);
  __swift_destroy_boxed_opaque_existential_1Tm(v71);
  MEMORY[0x26D6A7490](v71, -1, -1);
  MEMORY[0x26D6A7490](v69, -1, -1);

  return v86;
}

id sub_26C6D7574()
{
  v30[1] = *MEMORY[0x277D85DE8];
  v0 = sub_26C6D6A04();
  if (!v0)
  {
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v13 = sub_26C6D8898();
    __swift_project_value_buffer(v13, qword_2804AD1F8);
    v14 = sub_26C6D8878();
    v15 = sub_26C6D8BA8();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_26C66B000, v14, v15, "Unable to provide clientDeviceAccount due to failure to retrieve idms account", v16, 2u);
      MEMORY[0x26D6A7490](v16, -1, -1);
    }

    return 0;
  }

  v1 = v0;
  v2 = [objc_opt_self() sharedInstance];
  v3 = [v2 transportableAuthKitAccount_];

  v4 = [objc_allocWithZone(MEMORY[0x277CB8F48]) init];
  v30[0] = 0;
  v5 = [v4 credentialForAccount:v3 error:v30];

  if (!v5)
  {
    v17 = v30[0];
    v18 = sub_26C6D86F8();

    swift_willThrow();
    if (qword_2804A8588 != -1)
    {
      swift_once();
    }

    v19 = sub_26C6D8898();
    __swift_project_value_buffer(v19, qword_2804AD1F8);
    v20 = v18;
    v21 = sub_26C6D8878();
    v22 = sub_26C6D8BA8();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v30[0] = v24;
      *v23 = 136446210;
      v25 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2804A9170, &unk_26C6DC960);
      v26 = sub_26C6D8A18();
      v28 = sub_26C67A77C(v26, v27, v30);

      *(v23 + 4) = v28;
      _os_log_impl(&dword_26C66B000, v21, v22, "Failed to retrieve account credentials due to error: %{public}s", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      MEMORY[0x26D6A7490](v24, -1, -1);
      MEMORY[0x26D6A7490](v23, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v6 = qword_2804A8588;
  v7 = v30[0];
  if (v6 != -1)
  {
    swift_once();
  }

  v8 = sub_26C6D8898();
  __swift_project_value_buffer(v8, qword_2804AD1F8);
  v9 = sub_26C6D8878();
  v10 = sub_26C6D8BB8();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_26C66B000, v9, v10, "Successfully retrieved accounts credentials", v11, 2u);
    MEMORY[0x26D6A7490](v11, -1, -1);
  }

  if (v3)
  {
    v12 = v3;
    [v12 setCredential_];
  }

  else
  {
  }

  return v3;
}

id _s10TDGSharing33WFSetupServerAnisetteDataProviderC8isMockedACSb_tcfC_0(uint64_t a1)
{
  if (a1)
  {
    v1 = type metadata accessor for WFSetupServerAnisetteDataProvider();
    v2 = objc_allocWithZone(v1);
    *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
    v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
    *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
    v4 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
    *&v2[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
    swift_beginAccess();
    *&v2[v3] = 0;
    swift_beginAccess();
    *&v2[v4] = 0;
    v13 = v2;
    v5 = &v13;
  }

  else
  {
    v6 = [objc_opt_self() currentDevice];
    v7 = v6;
    if (v6)
    {
      [v6 setLinkType_];
    }

    v8 = sub_26C6D7574();
    v1 = type metadata accessor for WFSetupServerAnisetteDataProvider();
    v9 = objc_allocWithZone(v1);
    *&v9[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
    v10 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
    *&v9[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
    v11 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
    *&v9[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
    swift_beginAccess();
    *&v9[v10] = v7;
    swift_beginAccess();
    *&v9[v11] = v8;
    v14.receiver = v9;
    v5 = &v14;
  }

  v5->super_class = v1;
  return [(objc_super *)v5 init];
}

id sub_26C6D7B44()
{
  v1 = v0;
  *&v0[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_session] = 0;
  v2 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice;
  *&v0[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_companionAuthDevice] = 0;
  v3 = OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount;
  *&v0[OBJC_IVAR____TtC10TDGSharing33WFSetupServerAnisetteDataProvider_transportableAuthKitAccount] = 0;
  if (qword_2804A8588 != -1)
  {
    swift_once();
  }

  v4 = sub_26C6D8898();
  __swift_project_value_buffer(v4, qword_2804AD1F8);
  v5 = sub_26C6D8878();
  v6 = sub_26C6D8BB8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v19[0] = v8;
    *v7 = 136446210;
    *(v7 + 4) = sub_26C67A77C(0x646F632874696E69, 0xEC000000293A7265, v19);
    _os_log_impl(&dword_26C66B000, v5, v6, "%{public}s is invoked.", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D6A7490](v8, -1, -1);
    MEMORY[0x26D6A7490](v7, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2804A8980, &qword_26C6DAC60);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26C6DA0F0;
  *(v9 + 32) = sub_26C6779D0(0, &unk_2804A9268, 0x277CF0218);
  sub_26C6D8C48();

  if (v20)
  {
    if (swift_dynamicCast())
    {
      v10 = v18;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    sub_26C677B60(v19, &qword_2804A8950, &qword_26C6DAC50);
    v10 = 0;
  }

  swift_beginAccess();
  v11 = *&v1[v2];
  *&v1[v2] = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26C6DA0F0;
  *(v12 + 32) = sub_26C6779D0(0, &qword_2804A9260, 0x277CB8F30);
  sub_26C6D8C48();

  if (v20)
  {
    if (swift_dynamicCast())
    {
      v13 = v16;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_26C677B60(v19, &qword_2804A8950, &qword_26C6DAC50);
    v13 = 0;
  }

  swift_beginAccess();
  v14 = *&v1[v3];
  *&v1[v3] = v13;

  v17.receiver = v1;
  v17.super_class = type metadata accessor for WFSetupServerAnisetteDataProvider();
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t sub_26C6D7EB4()
{
  MEMORY[0x26D6A7510](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_2Tm()
{
  if (*(v0 + 16))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

id keypath_getTm@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  v6 = *(v4 + v5);
  *a3 = v6;

  return v6;
}

uint64_t get_enum_tag_for_layout_string_10TDGSharing33WFSetupServerAnisetteDataProviderC0D6ErrorsO(uint64_t a1)
{
  if ((*(a1 + 16) & 7u) <= 4)
  {
    return *(a1 + 16) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t sub_26C6D83A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFB && *(a1 + 17))
  {
    return (*a1 + 251);
  }

  v3 = *(a1 + 16);
  if (v3 <= 5)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_26C6D83F0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 16) = 0;
    *result = a2 - 251;
    *(result + 8) = 0;
    if (a3 >= 0xFB)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_26C6D8434(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0;
    LOBYTE(a2) = 5;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_26C6D845C()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C6D84A4(uint64_t a1, char a2)
{
  if (!a1)
  {
    v4 = 0;
    goto LABEL_8;
  }

  v3 = sub_26C6CFEFC(a1);
  v4 = v3;
  if (!v3)
  {
LABEL_8:
    v10 = 5;
    v11 = 1;
LABEL_11:
    sub_26C6C0B64();
    swift_allocError();
    *v12 = v11;
    *(v12 + 8) = v4;
    *(v12 + 16) = v10;
    swift_willThrow();
    return v4;
  }

  if (!*(v3 + 16) || (v5 = sub_26C689AC8(0xD00000000000001CLL, 0x800000026C6E0110), (v6 & 1) == 0))
  {

LABEL_10:
    v11 = *&aProvisiosync[8 * a2];
    v4 = *&aN[8 * a2];
    v10 = 3;
    goto LABEL_11;
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v8 = *v7;
  v9 = v7[1];
  sub_26C67ED2C(*v7, v9);

  v4 = sub_26C6D5EDC(v8, v9);
  sub_26C678418(v8, v9);
  if (!v4)
  {
    goto LABEL_10;
  }

  return v4;
}

void sub_26C6D85C4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2)
  {

    sub_26C678418(a3, a4);
  }
}