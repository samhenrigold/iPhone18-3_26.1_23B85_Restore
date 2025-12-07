uint64_t sub_232DE43A8()
{
  v1 = *(*v0 + 368);
  *(*v0 + 1064) = v1;
  if (v1)
  {
    v2 = sub_232DE4AC4;
  }

  else
  {
    v2 = sub_232DE4844;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE44E4(uint64_t a1)
{
  v2 = v1[129];
  v10 = v1[130];
  v11 = v1[128];
  v3 = v1[126];
  v4 = v1[118];
  v5 = v1[116];
  swift_willThrow();

  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v6 = sub_232E01B50();
  MEMORY[0x238395970](v6);

  sub_232E01380();

  v3(v4, v5);
  v7 = sub_232E00C50();
  v1[134] = v7;
  v1[34] = v1;
  v1[35] = sub_232DE4708;
  v8 = swift_continuation_init();
  v1[89] = v10;
  v1[86] = v8;
  v1[82] = MEMORY[0x277D85DD0];
  v1[83] = 1107296256;
  v1[84] = sub_232DCA134;
  v1[85] = &block_descriptor_121;
  [v11 endIndexBatchWithClientState:v7 completionHandler:v1 + 82];

  return MEMORY[0x282200938](v1 + 34);
}

uint64_t sub_232DE4708()
{
  v1 = *(*v0 + 304);
  *(*v0 + 1080) = v1;
  if (v1)
  {
    v2 = sub_232DE4CF0;
  }

  else
  {
    v2 = sub_232DE4C3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE4844()
{
  v1 = *(v0 + 1056);
  v2 = *(v0 + 1008);
  v3 = *(v0 + 944);
  v4 = *(v0 + 928);

  sub_232E01270();
  sub_232E01370();
  v2(v3, v4);
  v5 = *(v0 + 960);
  v6 = (*(v0 + 952) - 1) & *(v0 + 952);
  if (v6)
  {
    v7 = *(v0 + 864);
LABEL_7:
    *(v0 + 960) = v5;
    *(v0 + 952) = v6;
    v9 = *(*(v7 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    switch(v9)
    {
      case 0:
        v10 = *(v0 + 880);
        v11 = sub_232DE3E80;
        goto LABEL_13;
      case 1:
        v10 = *(v0 + 872);
        v11 = sub_232DE3640;
        goto LABEL_13;
      case 2:
        v10 = *(v0 + 888);
        v11 = sub_232DE4DB0;
LABEL_13:

        return MEMORY[0x2822009F8](v11, v10, 0);
    }

    *(v0 + 832) = v9;
    v12 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v12);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      if (v8 >= (((1 << *(v0 + 1184)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v0 + 864);
      v6 = *(v7 + 8 * v8 + 56);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_232DE4AC4(uint64_t a1)
{
  v2 = v1[132];
  swift_willThrow();

  v3 = v1[128];
  v1[136] = v1[133];

  return MEMORY[0x2822009F8](sub_232DE4B78, 0, 0);
}

uint64_t sub_232DE4B78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE4C3C()
{
  swift_willThrow();
  v1 = *(v0 + 1024);
  *(v0 + 1088) = *(v0 + 1048);

  return MEMORY[0x2822009F8](sub_232DE4B78, 0, 0);
}

uint64_t sub_232DE4CF0(uint64_t a1)
{
  v2 = v1[131];
  v3 = v1[128];
  swift_willThrow();

  v4 = v1[134];
  v1[136] = v1[135];

  return MEMORY[0x2822009F8](sub_232DE4B78, 0, 0);
}

uint64_t sub_232DE4DB0(uint64_t a1)
{
  v2 = v1[118];
  v3 = v1[117];
  v4 = v1[116];
  sub_232E01270();
  sub_232E01360();
  v5 = *(v3 + 8);
  v1[137] = v5;
  v1[138] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v5(v2, v4);
  v1[139] = sub_232DDF6E0();

  return MEMORY[0x2822009F8](sub_232DE4EB4, 0, 0);
}

uint64_t sub_232DE4EB4()
{
  v1 = v0[139];
  [v1 beginIndexBatch];
  v2 = sub_232E015C0();
  v0[140] = v2;
  v0[2] = v0;
  v0[3] = sub_232DE5038;
  v3 = swift_continuation_init();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[141] = v4;
  v0[57] = v4;
  v0[50] = MEMORY[0x277D85DD0];
  v0[51] = 1107296256;
  v0[52] = sub_232DCA134;
  v0[53] = &block_descriptor_108;
  v0[54] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 50];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DE5038()
{
  v1 = *(*v0 + 48);
  *(*v0 + 1136) = v1;
  if (v1)
  {
    v2 = sub_232DE5410;
  }

  else
  {
    v2 = sub_232DE5174;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE5174()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 1112);

  v3 = sub_232E00C50();
  *(v0 + 1144) = v3;
  *(v0 + 144) = v0;
  *(v0 + 152) = sub_232DE52D4;
  v4 = swift_continuation_init();
  *(v0 + 584) = v1;
  *(v0 + 560) = v4;
  *(v0 + 528) = MEMORY[0x277D85DD0];
  *(v0 + 536) = 1107296256;
  *(v0 + 544) = sub_232DCA134;
  *(v0 + 552) = &block_descriptor_114;
  [v2 endIndexBatchWithClientState:v3 completionHandler:v0 + 528];

  return MEMORY[0x282200938](v0 + 144);
}

uint64_t sub_232DE52D4()
{
  v1 = *(*v0 + 176);
  *(*v0 + 1152) = v1;
  if (v1)
  {
    v2 = sub_232DE59EC;
  }

  else
  {
    v2 = sub_232DE576C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE5410(uint64_t a1)
{
  v2 = v1[140];
  v10 = v1[141];
  v11 = v1[139];
  v3 = v1[137];
  v4 = v1[118];
  v5 = v1[116];
  swift_willThrow();

  sub_232E01270();
  sub_232E018F0();

  swift_getErrorValue();
  v6 = sub_232E01B50();
  MEMORY[0x238395970](v6);

  sub_232E01380();

  v3(v4, v5);
  v7 = sub_232E00C50();
  v1[145] = v7;
  v1[10] = v1;
  v1[11] = sub_232DE5630;
  v8 = swift_continuation_init();
  v1[65] = v10;
  v1[58] = MEMORY[0x277D85DD0];
  v1[59] = 1107296256;
  v1[60] = sub_232DCA134;
  v1[61] = &block_descriptor_111;
  v1[62] = v8;
  [v11 endIndexBatchWithClientState:v7 completionHandler:v1 + 58];

  return MEMORY[0x282200938](v1 + 10);
}

uint64_t sub_232DE5630()
{
  v1 = *(*v0 + 112);
  *(*v0 + 1168) = v1;
  if (v1)
  {
    v2 = sub_232DE5C18;
  }

  else
  {
    v2 = sub_232DE5B64;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE576C()
{
  v1 = *(v0 + 1144);
  v2 = *(v0 + 1096);
  v3 = *(v0 + 944);
  v4 = *(v0 + 928);

  sub_232E01270();
  sub_232E01370();
  v2(v3, v4);
  v5 = *(v0 + 960);
  v6 = (*(v0 + 952) - 1) & *(v0 + 952);
  if (v6)
  {
    v7 = *(v0 + 864);
LABEL_7:
    *(v0 + 960) = v5;
    *(v0 + 952) = v6;
    v9 = *(*(v7 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v6)))));
    switch(v9)
    {
      case 0:
        v10 = *(v0 + 880);
        v11 = sub_232DE3E80;
        goto LABEL_13;
      case 1:
        v10 = *(v0 + 872);
        v11 = sub_232DE3640;
        goto LABEL_13;
      case 2:
        v10 = *(v0 + 888);
        v11 = sub_232DE4DB0;
LABEL_13:

        return MEMORY[0x2822009F8](v11, v10, 0);
    }

    *(v0 + 832) = v9;
    v12 = MEMORY[0x277D83B88];

    return MEMORY[0x2821FE1D0](&type metadata for SearchItemIndexer.IndexItemType, v0 + 832, &type metadata for SearchItemIndexer.IndexItemType, v12);
  }

  else
  {
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
      }

      if (v8 >= (((1 << *(v0 + 1184)) + 63) >> 6))
      {
        break;
      }

      v7 = *(v0 + 864);
      v6 = *(v7 + 8 * v8 + 56);
      ++v5;
      if (v6)
      {
        v5 = v8;
        goto LABEL_7;
      }
    }

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_232DE59EC(uint64_t a1)
{
  v2 = v1[143];
  swift_willThrow();

  v3 = v1[139];
  v1[147] = v1[144];

  return MEMORY[0x2822009F8](sub_232DE5AA0, 0, 0);
}

uint64_t sub_232DE5AA0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE5B64()
{
  swift_willThrow();
  v1 = *(v0 + 1112);
  *(v0 + 1176) = *(v0 + 1136);

  return MEMORY[0x2822009F8](sub_232DE5AA0, 0, 0);
}

uint64_t sub_232DE5C18(uint64_t a1)
{
  v2 = v1[142];
  v3 = v1[139];
  swift_willThrow();

  v4 = v1[145];
  v1[147] = v1[146];

  return MEMORY[0x2822009F8](sub_232DE5AA0, 0, 0);
}

uint64_t sub_232DE5CD8()
{
  v1[4] = v0;
  v2 = sub_232E012A0();
  v1[5] = v2;
  v1[6] = *(v2 - 8);
  v1[7] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE5D98, 0, 0);
}

uint64_t sub_232DE5D98()
{
  v1 = objc_opt_self();
  v0[8] = v1;
  v2 = [v1 standardUserDefaults];
  v3 = sub_232E014C0();
  v4 = [v2 integerForKey_];

  if (v4 == 1)
  {

    v5 = v0[1];

    return v5();
  }

  else
  {
    v8 = v0[6];
    v7 = v0[7];
    v9 = v0[5];
    sub_232E01270();
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000021, 0x8000000232E0E0D0);
    v0[2] = v4;
    v10 = sub_232E01AB0();
    MEMORY[0x238395970](v10);

    MEMORY[0x238395970](0x64656465656E202CLL, 0xEA0000000000203ALL);
    v0[3] = 1;
    v11 = sub_232E01AB0();
    MEMORY[0x238395970](v11);

    MEMORY[0x238395970](0xD000000000000016, 0x8000000232E0E100);
    sub_232E01360();

    v12 = *(v8 + 8);
    v0[9] = v12;
    v0[10] = (v8 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v12(v7, v9);
    v0[11] = sub_232DDF7E4();
    v13 = swift_task_alloc();
    v0[12] = v13;
    *v13 = v0;
    v13[1] = sub_232DE6050;

    return sub_232DE2C30();
  }
}

uint64_t sub_232DE6050()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_232DE6A1C;
  }

  else
  {

    v2 = sub_232DE616C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE616C()
{
  *(v0 + 112) = sub_232DDF89C();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_232DE6208;

  return sub_232DE9558();
}

uint64_t sub_232DE6208()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_232DE6A8C;
  }

  else
  {

    v2 = sub_232DE6324;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE6324()
{
  v1 = sub_232DDF99C();
  *(v0 + 136) = v1;

  return MEMORY[0x2822009F8](sub_232DE6390, v1, 0);
}

uint64_t sub_232DE6390(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[7];
  v4 = v1[5];
  sub_232E01270();
  sub_232E01360();
  v2(v3, v4);
  v5 = sub_232DDF6E0();
  v1[18] = v5;
  v6 = swift_task_alloc();
  v1[19] = v6;
  *v6 = v1;
  v6[1] = sub_232DE649C;

  return sub_232DC7248(0, 0xC000000000000000, v5);
}

uint64_t sub_232DE649C()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 136);
    v4 = sub_232DE686C;
  }

  else
  {

    v4 = sub_232DE65C8;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DE65C8()
{
  v1 = sub_232DDFAAC();
  *(v0 + 168) = v1;

  return MEMORY[0x2822009F8](sub_232DE6634, v1, 0);
}

uint64_t sub_232DE6634(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[7];
  v4 = v1[5];
  sub_232E01270();
  sub_232E01360();
  v2(v3, v4);
  v5 = sub_232DDF6E0();
  v1[22] = v5;
  v6 = swift_task_alloc();
  v1[23] = v6;
  *v6 = v1;
  v6[1] = sub_232DE6740;

  return sub_232DC68A8(0, 0xC000000000000000, v5);
}

uint64_t sub_232DE6740()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 168);
    v4 = sub_232DE69A4;
  }

  else
  {

    v4 = sub_232DE68E4;
    v3 = 0;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DE686C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE68E4()
{
  v1 = [*(v0 + 64) standardUserDefaults];
  v2 = sub_232E014C0();
  [v1 setInteger:1 forKey:v2];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_232DE69A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE6A1C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE6A8C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE6AFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v23 - v16;
  v18 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = v18;
  v19[5] = a7;
  v19[6] = a8;
  v19[7] = a1;
  v19[8] = a2;
  if (a3 <= 16)
  {
    if (a3 == 9)
    {

      sub_232E01660();
      goto LABEL_10;
    }

LABEL_8:

    sub_232E01690();
    goto LABEL_10;
  }

  if (a3 == 17)
  {

    sub_232E01680();
    goto LABEL_10;
  }

  if (a3 != 25 && a3 != 33)
  {
    goto LABEL_8;
  }

  sub_232E01670();
LABEL_10:
  v20 = sub_232E016B0();
  (*(*(v20 - 8) + 56))(v17, 0, 1, v20);
  v21 = swift_allocObject();
  v21[2] = 0;
  v21[3] = 0;
  v21[4] = &unk_232E07D38;
  v21[5] = v19;
  sub_232DF55C8(0, 0, v17, &unk_232E07D48, v21);
}

uint64_t sub_232DE6D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[13] = a7;
  v8[14] = a8;
  v8[11] = a5;
  v8[12] = a6;
  v8[9] = a3;
  v8[10] = a4;
  v8[8] = a2;
  v9 = sub_232E012A0();
  v8[15] = v9;
  v8[16] = *(v9 - 8);
  v8[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE6E1C, 0, 0);
}

uint64_t sub_232DE6E1C()
{
  v1 = objc_allocWithZone(MEMORY[0x277D71790]);
  v2 = sub_232E014C0();
  v0[18] = [v1 initWithTransactionName_];

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {
    v4 = swift_task_alloc();
    v0[20] = v4;
    *v4 = v0;
    v4[1] = sub_232DE6FEC;

    return sub_232DE5CD8();
  }

  else
  {
    v7 = (v0[11] + *v0[11]);
    v6 = swift_task_alloc();
    v0[22] = v6;
    *v6 = v0;
    v6[1] = sub_232DE71C4;

    return v7();
  }
}

uint64_t sub_232DE6FEC()
{
  v2 = *v1;
  *(v2 + 168) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_232DE7350, 0, 0);
  }

  else
  {

    v5 = (*(v2 + 88) + **(v2 + 88));
    v3 = swift_task_alloc();
    *(v2 + 176) = v3;
    *v3 = v2;
    v3[1] = sub_232DE71C4;

    return v5();
  }
}

uint64_t sub_232DE71C4()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_232DE7508;
  }

  else
  {
    v2 = sub_232DE72D8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DE72D8()
{
  (*(v0 + 104))(0);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE7350()
{
  v1 = *(v0 + 168);
  v3 = *(v0 + 128);
  v2 = *(v0 + 136);
  v4 = *(v0 + 120);
  v10 = *(v0 + 104);
  v6 = *(v0 + 64);
  v5 = *(v0 + 72);
  sub_232E01270();
  sub_232E018F0();
  *(v0 + 40) = 0;
  *(v0 + 48) = 0xE000000000000000;
  MEMORY[0x238395970](0xD000000000000014, 0x8000000232E0E070);
  MEMORY[0x238395970](v6, v5);
  MEMORY[0x238395970](0xD000000000000015, 0x8000000232E0E090);
  *(v0 + 56) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
  sub_232E019A0();
  sub_232E01380();

  (*(v3 + 8))(v2, v4);
  v7 = v1;
  v10(v1);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_232DE7508(uint64_t a1)
{
  v2 = *(v1 + 184);
  v4 = *(v1 + 128);
  v3 = *(v1 + 136);
  v5 = *(v1 + 120);
  v11 = *(v1 + 104);
  v7 = *(v1 + 64);
  v6 = *(v1 + 72);
  sub_232E01270();
  sub_232E018F0();
  *(v1 + 40) = 0;
  *(v1 + 48) = 0xE000000000000000;
  MEMORY[0x238395970](0xD000000000000014, 0x8000000232E0E070);
  MEMORY[0x238395970](v7, v6);
  MEMORY[0x238395970](0xD000000000000015, 0x8000000232E0E090);
  *(v1 + 56) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
  sub_232E019A0();
  sub_232E01380();

  (*(v4 + 8))(v3, v5);
  v8 = v2;
  v11(v2);

  v9 = *(v1 + 8);

  return v9();
}

id sub_232DE76B8(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = a2;
  v8[3] = a3;
  v8[4] = v7;
  v11[4] = sub_232DE8140;
  v11[5] = v8;
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 1107296256;
  v11[2] = sub_232DBF518;
  v11[3] = &block_descriptor_135;
  v9 = _Block_copy(v11);
  sub_232D73138(a2, a3);

  sub_232D73138(sub_232DE8140, v8);

  [a1 setCompletionBlock_];
  _Block_release(v9);

  return [*(v3 + OBJC_IVAR___TPSSearchItemIndexer_queue) addOperation_];
}

void sub_232DE7828(void (*a1)(id), uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v5 = Strong;
      v6 = [Strong error];
    }

    else
    {
      v6 = 0;
    }

    a1(v6);
  }
}

uint64_t sub_232DE78C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7768, &qword_232E07D08);
    v3 = sub_232E018E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_232E01BA0();
      v12 = result & v6;
      v13 = (result & v6) >> 6;
      v14 = *(v5 + 8 * v13);
      v15 = 1 << (result & v6);
      v16 = *(v3 + 48);
      if ((v15 & v14) != 0)
      {
        while (*(v16 + 8 * v12) != v10)
        {
          v12 = (v12 + 1) & v6;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
          if (((1 << v12) & v14) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v13) = v15 | v14;
        *(v16 + 8 * v12) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_232DE79E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7778, &unk_232E07D20);
    v3 = sub_232E018E0();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      sub_232E01BB0();
      MEMORY[0x238395FF0](v10);
      result = sub_232E01BE0();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + 8 * v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + 8 * v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return MEMORY[0x277D84FA0];
}

uint64_t sub_232DE7B24()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_232DA7C78;

  return sub_232DE3260(v2, v3, v5, v4);
}

uint64_t sub_232DE7BD0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE0AA0(v2, v3);
}

uint64_t sub_232DE7C68()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE10A4(v2, v3);
}

uint64_t sub_232DE7D00()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE1618(v2, v3);
}

uint64_t sub_232DE7D98()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE1BA0(v2, v3);
}

uint64_t objectdestroyTm_0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_232DE7E70()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_232DA7C78;

  return sub_232DE2128(v2, v3);
}

uint64_t sub_232DE7F08()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232DA7C78;

  return sub_232DE2930();
}

uint64_t objectdestroy_3Tm()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

unint64_t sub_232DE7FF4()
{
  result = qword_27DDD7750;
  if (!qword_27DDD7750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7750);
  }

  return result;
}

unint64_t sub_232DE804C()
{
  result = qword_27DDD7758;
  if (!qword_27DDD7758)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7760, &qword_232E07C80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7758);
  }

  return result;
}

uint64_t sub_232DE8110(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t block_copy_helper_133(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_232DE8164(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_232DA72F4;

  return sub_232DE6D50(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_232DE8240(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_232DA7C78;

  return sub_232DA71FC(a1, v4, v5, v6);
}

uint64_t sub_232DE8398(unint64_t a1)
{
  v2 = sub_232DE78C4(&unk_284824A48);
  if (!(a1 >> 62))
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_20:

    return 0;
  }

LABEL_19:
  v3 = sub_232E019C0();
  if (!v3)
  {
    goto LABEL_20;
  }

LABEL_3:
  v4 = 0;
  v5 = v2 + 56;
  while (1)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x238395D50](v4, a1);
    }

    else
    {
      if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v6 = *(a1 + 32 + 8 * v4);
    }

    v7 = v6;
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v9 = [v6 inAppAdamID];
    v10 = [v9 longLongValue];

    if (*(v2 + 16))
    {
      v11 = sub_232E01BA0();
      v12 = -1 << *(v2 + 32);
      v13 = v11 & ~v12;
      if ((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
      {
        break;
      }
    }

LABEL_4:

    if (v4 == v3)
    {
      goto LABEL_20;
    }
  }

  v14 = ~v12;
  while (*(*(v2 + 48) + 8 * v13) != v10)
  {
    v13 = (v13 + 1) & v14;
    if (((*(v5 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 1;
}

id TPSAppleNewsPlusSubscriptionValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id TPSAppleNewsPlusSubscriptionValidation.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for TPSAppleNewsPlusSubscriptionValidation();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_232DE8680@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  result = sub_232E01870();
  if (result == 1 << *(a1 + 32))
  {
    *a2 = 0u;
    a2[1] = 0u;
  }

  else
  {
    v5 = *(a1 + 36);

    return sub_232DE8AF4(result, v5, a1, a2);
  }

  return result;
}

id sub_232DE8704()
{
  result = [v0 targetContext];
  if (result)
  {
    v2 = result;
    v3 = sub_232E01470();

    if (*(v3 + 16) == 1)
    {
      sub_232DE8680(v3, &v5);

      if (v6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7320, &qword_232E05EF8);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      sub_232DE94F0(&v5);
    }

    else
    {
    }

    return 0;
  }

  return result;
}

id GenerativeModelsUseCaseAvailabilityValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id GenerativeModelsUseCaseAvailabilityValidation.init(targetContext:)(uint64_t a1)
{
  v2 = sub_232E01450();

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithTargetContext_, v2);

  return v3;
}

id GenerativeModelsUseCaseAvailabilityValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelsUseCaseAvailabilityValidation.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GenerativeModelsUseCaseAvailabilityValidation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GenerativeModelsUseCaseAvailabilityValidation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232DE8AF4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || 1 << *(a3 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a3 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a3 + 36) == a2)
  {
    return sub_232DAB730(*(a3 + 56) + 32 * result, a4);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_232DE8B48(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xE900000000000064;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v4 = 0x6C62616C69617661;
    }

    else
    {
      v4 = 0x4965736143657375;
    }

    v5 = sub_232DD5634(v4, v2);
    v7 = v6;

    if (v7)
    {
      sub_232DAB730(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_12;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_232DE8C38(char a1, uint64_t a2)
{
  if (a1)
  {
    v2 = 0xE900000000000065;
  }

  else
  {
    v2 = 0xE900000000000064;
  }

  if (*(a2 + 16))
  {
    if (a1)
    {
      v4 = 0x6C62616C69617661;
    }

    else
    {
      v4 = 0x4965736143657375;
    }

    v5 = sub_232DD5634(v4, v2);
    v7 = v6;

    if (v7)
    {
      sub_232DAB730(*(a2 + 56) + 32 * v5, v9);
      goto LABEL_12;
    }
  }

  else
  {
  }

  memset(v9, 0, sizeof(v9));
LABEL_12:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 2;
  }
}

unint64_t sub_232DE8D28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7490, &unk_232E07090);
    v3 = sub_232E01A00();
    v4 = a1 + 32;

    while (1)
    {
      sub_232DE9480(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_232DD5634(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_232D734CC(&v15, (v3[7] + 32 * result));
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

unint64_t sub_232DE8E38()
{
  result = qword_27DDD7780;
  if (!qword_27DDD7780)
  {
    sub_232E00930();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7780);
  }

  return result;
}

void sub_232DE8ECC(void *a1, uint64_t a2)
{
  v46 = a2;
  v3 = sub_232E00930();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_232E012A0();
  v44 = *(v7 - 8);
  v45 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v43 - v11;
  v13 = sub_232DE8704();
  if (v13)
  {
    v14 = v13;
    sub_232DE8B48(0, v13);
    if (v15)
    {
      v43 = v12;
      v16 = sub_232DE8C38(1, v14);

      if (v16 != 2)
      {
        v17 = sub_232DB5EF0();

        v18 = v43;
        sub_232E01290();
        v19 = 0xE000000000000000;
        v47 = 0;
        v48 = 0xE000000000000000;
        sub_232E018F0();
        v20 = [a1 name];
        if (v20)
        {
          v21 = v20;
          v22 = sub_232E014D0();
          v19 = v23;
        }

        else
        {
          v22 = 0;
        }

        MEMORY[0x238395970](v22, v19);

        MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
        v36 = [a1 targetContext];
        if (v36)
        {
          v37 = v36;
          sub_232E01470();
        }

        else
        {
          sub_232DB3428(MEMORY[0x277D84F90]);
        }

        v38 = sub_232E01480();
        v40 = v39;

        MEMORY[0x238395970](v38, v40);

        MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
        if (v17)
        {
          v41 = 1702195828;
        }

        else
        {
          v41 = 0x65736C6166;
        }

        if (v17)
        {
          v42 = 0xE400000000000000;
        }

        else
        {
          v42 = 0xE500000000000000;
        }

        MEMORY[0x238395970](v41, v42);

        sub_232E01350();

        (*(v44 + 8))(v18, v45);
        (*(v46 + 16))(v46, v17 & 1, 0);
        return;
      }
    }
  }

  sub_232E01290();
  v24 = 0xE000000000000000;
  v47 = 0;
  v48 = 0xE000000000000000;
  sub_232E018F0();
  v25 = [a1 name];
  if (v25)
  {
    v26 = v25;
    v27 = sub_232E014D0();
    v24 = v28;
  }

  else
  {
    v27 = 0;
  }

  MEMORY[0x238395970](v27, v24);

  MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0E190);
  v29 = [a1 targetContext];
  if (v29)
  {
    v30 = v29;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v31 = sub_232E01480();
  v33 = v32;

  MEMORY[0x238395970](v31, v33);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xEE0065736C616620);
  sub_232E01380();

  (*(v44 + 8))(v10, v45);
  LODWORD(v47) = 22;
  sub_232DE8D28(MEMORY[0x277D84F90]);
  sub_232DE8E38();
  sub_232E00AC0();
  v34 = sub_232E00920();
  (*(v4 + 8))(v6, v3);
  v35 = sub_232E00AD0();
  (*(v46 + 16))(v46, 0, v35);
}

uint64_t sub_232DE9480(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7498, &qword_232E065A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_232DE94F0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74C0, &qword_232E07DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_232DE9558()
{
  v1[2] = v0;
  v1[3] = *v0;
  v2 = sub_232E00BE0();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v3 = sub_232E012A0();
  v1[8] = v3;
  v1[9] = *(v3 - 8);
  v1[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE96A8, v0, 0);
}

uint64_t sub_232DE96A8(uint64_t a1)
{
  v3 = v1[9];
  v2 = v1[10];
  v4 = v1[8];
  sub_232E01270();
  sub_232E01360();
  (*(v3 + 8))(v2, v4);
  v5 = sub_232DE833C();
  v1[11] = v5;
  v6 = swift_task_alloc();
  v1[12] = v6;
  *v6 = v1;
  v6[1] = sub_232DE97B8;

  return sub_232DC7A00(0, 0xC000000000000000, v5);
}

uint64_t sub_232DE97B8()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_232DE99D0;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_232DE98E0;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DE98E0()
{
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[4];
  v4 = v0[5];
  sub_232DE9A58();
  sub_232E00B80();
  v5 = *(v4 + 8);
  v5(v1, v3);
  sub_232DB5818();
  v5(v2, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_232DE99D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DE9A58()
{
  v0 = sub_232E00BE0();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v12 - v5;
  v7 = [objc_opt_self() defaultManager];
  v8 = [objc_opt_self() appGroupIdentifier];
  if (v8)
  {
    v9 = v8;
    v10 = [v7 containerURLForSecurityApplicationGroupIdentifier_];

    if (v10)
    {
      sub_232E00BB0();

      (*(v1 + 32))(v6, v4, v0);
      sub_232E00B80();
      return (*(v1 + 8))(v6, v0);
    }
  }

  else
  {
    __break(1u);
  }

  result = sub_232E019B0();
  __break(1u);
  return result;
}

uint64_t sub_232DE9C78(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 192) = a3;
  *(v4 + 200) = v3;
  *(v4 + 416) = a2;
  *(v4 + 184) = a1;
  v5 = sub_232E012A0();
  *(v4 + 208) = v5;
  *(v4 + 216) = *(v5 - 8);
  *(v4 + 224) = swift_task_alloc();
  *(v4 + 232) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DE9D4C, v3, 0);
}

uint64_t sub_232DE9D4C()
{
  v81 = v0;
  v1 = v0[23];
  sub_232DEBF1C();
  v79 = MEMORY[0x277D84F90];
  if (v1 >> 62)
  {
LABEL_55:
    v2 = sub_232E019C0();
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  v78 = v0;
  if (v2)
  {
    v4 = 0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v7 = v0[23] + 32;
    v8 = &selRef_productId;
    v9 = &selRef_anyObject;
    while (1)
    {
      if (v5)
      {
        v10 = MEMORY[0x238395D50](v4, v78[23]);
        v0 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
LABEL_19:
          __break(1u);
LABEL_20:
          v0 = v78;
          v3 = v79;
          break;
        }
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_55;
        }

        v10 = *(v7 + 8 * v4);
        v0 = (v4 + 1);
        if (__OFADD__(v4, 1))
        {
          goto LABEL_19;
        }
      }

      v1 = v10;
      if ([v1 v8[243]] & 2) == 0 || (objc_msgSend(v1, sel_isIntro) & 1) != 0 || (objc_msgSend(v1, v9[383]))
      {
      }

      else
      {
        v11 = [v1 isLinkedArticle];

        if (v11)
        {
        }

        else
        {
          sub_232E01950();
          sub_232E01980();
          v8 = &selRef_productId;
          sub_232E01990();
          sub_232E01960();
        }

        v9 = &selRef_anyObject;
      }

      ++v4;
      if (v0 == v2)
      {
        goto LABEL_20;
      }
    }
  }

  v0[30] = v3;
  if (v0[52])
  {
    v12 = sub_232DE833C();
    v0[31] = v12;
    v0[2] = v0;
    v0[7] = v0 + 20;
    v0[3] = sub_232DEA7A0;
    v13 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7668, &qword_232E07568);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_232DCDB54;
    v0[13] = &block_descriptor_10;
    v0[14] = v13;
    [v12 fetchLastClientStateWithCompletionHandler_];

    return MEMORY[0x282200938](v0 + 2);
  }

  v0[33] = 0;
  v0[34] = 0xC000000000000000;
  v14 = sub_232DF26FC(v0[23], 0, 0xC000000000000000);
  if (v14 == 2)
  {
    v16 = v0[27];
    v15 = v0[28];
    v17 = v0[26];

    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(0, 0xC000000000000000);
    (*(v16 + 8))(v15, v17);

    v18 = v0[1];

    return v18();
  }

  v19 = v14;
  sub_232E01270();
  v79 = 0;
  v80 = 0xE000000000000000;
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
  v20 = v0[29];
  v21 = v0[26];
  v22 = v0[27];
  v23 = v0[24];
  v0[22] = 0;
  v24 = sub_232E01AB0();
  MEMORY[0x238395970](v24);

  MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
  sub_232E01370();

  v25 = *(v22 + 8);
  v25(v20, v21);
  if (v23 <= 1)
  {
    v26 = 1;
  }

  else
  {
    v26 = v23;
  }

  v0[35] = v26;
  if (!v19 || (v27 = v0[25], v29 = *(v27 + 112), v28 = *(v27 + 120), , v30 = sub_232DC9A94(v29, v28), (v0[36] = v31) == 0))
  {
    v57 = v0[28];
    v58 = v0[26];
    sub_232E01270();
    sub_232E01360();
    v25(v57, v58);
    v59 = swift_task_alloc();
    v0[48] = v59;
    *v59 = v0;
    v60 = sub_232DEB7EC;
LABEL_50:
    v59[1] = v60;

    return sub_232DE9558();
  }

  v32 = v30;
  v33 = v31;
  if ((sub_232DF1404(0, 0xC000000000000000, v30, v31) & 1) == 0)
  {
    v61 = v0[28];
    v62 = v0[26];

    sub_232E01270();
    sub_232E01360();
    v25(v61, v62);
    v59 = swift_task_alloc();
    v0[44] = v59;
    *v59 = v0;
    v60 = sub_232DEB40C;
    goto LABEL_50;
  }

  v72 = v0[28];
  v74 = v0[30];
  v76 = v0[26];
  v70 = v32;
  v71 = v33;
  v34 = sub_232DF173C(v0[23], v32, v33);
  v36 = v35;
  v38 = v37;
  v0[37] = v37;
  sub_232E01270();
  v80 = 0xE000000000000000;
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000019, 0x8000000232E0D7D0);
  v39 = MEMORY[0x277D837D0];
  v40 = MEMORY[0x238395A10](v34, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v40);

  MEMORY[0x238395970](0x657461647075202CLL, 0xEB00000000203A64);
  v41 = MEMORY[0x238395A10](v36, v39);
  MEMORY[0x238395970](v41);
  v42 = v78;

  MEMORY[0x238395970](0x6574656C6564202CLL, 0xEB00000000203A64);
  v69 = v38;
  v43 = MEMORY[0x238395A10](v38, v39);
  MEMORY[0x238395970](v43);

  sub_232E01360();

  v25(v72, v76);

  sub_232DC2F90(v44);
  v45 = v74;
  v77 = v34;
  v79 = MEMORY[0x277D84F90];
  v46 = v78[30];
  if (v74 < 0 || (v74 & 0x4000000000000000) != 0)
  {
    goto LABEL_58;
  }

  for (i = v46[2]; i; v46 = v42[30])
  {
    v48 = 0;
    v73 = v42 + 18;
    v75 = v45 & 0xC000000000000001;
    v49 = v46 + 4;
    while (1)
    {
      if (v75)
      {
        v50 = MEMORY[0x238395D50](v48, v78[30]);
      }

      else
      {
        if (v48 >= v46[2])
        {
          goto LABEL_57;
        }

        v50 = v49[v48];
      }

      v51 = v50;
      v52 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      v42 = v46;
      v53 = [v50 identifier];
      v54 = sub_232E014D0();
      v56 = v55;

      v78[18] = v54;
      v78[19] = v56;
      v45 = swift_task_alloc();
      *(v45 + 16) = v73;
      LOBYTE(v54) = sub_232DF7F9C(sub_232DB0E78, v45, v77);

      if (v54)
      {
        sub_232E01950();
        sub_232E01980();
        sub_232E01990();
        v45 = &v79;
        sub_232E01960();
      }

      else
      {
      }

      v46 = v42;
      ++v48;
      if (v52 == i)
      {
        v42 = v78;
        v63 = v79;
        goto LABEL_60;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    i = sub_232E019C0();
  }

  v63 = MEMORY[0x277D84F90];
LABEL_60:

  v42[38] = v63;
  if (*(v69 + 16))
  {
    v64 = swift_task_alloc();
    v42[39] = v64;
    *v64 = v42;
    v64[1] = sub_232DEB0E8;

    return sub_232DEC2F4(v69, v70, v71);
  }

  else
  {

    v42[41] = v71;
    v65 = swift_task_alloc();
    v42[42] = v65;
    *v65 = v42;
    v65[1] = sub_232DEB2C0;
    v66 = v42[38];
    v67 = v42[35];

    return sub_232DECA3C(v66, v67, v70, v71);
  }
}

uint64_t sub_232DEA7A0()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 256) = v2;
  if (v2)
  {
    v3 = *(v1 + 200);

    v4 = sub_232DEBC40;
    v5 = v3;
  }

  else
  {
    v5 = *(v1 + 200);
    v4 = sub_232DEA8C8;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232DEA8C8()
{
  v71 = v0;
  v1 = *(v0 + 160);
  v2 = *(v0 + 168);

  *(v0 + 264) = v1;
  *(v0 + 272) = v2;
  v3 = sub_232DF26FC(*(v0 + 184), v1, v2);
  if (v3 == 2)
  {
    v5 = *(v0 + 216);
    v4 = *(v0 + 224);
    v6 = *(v0 + 208);

    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(v1, v2);
    (*(v5 + 8))(v4, v6);

    v7 = *(v0 + 8);

    return v7();
  }

  v9 = v3;
  sub_232E01270();
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_232E018F0();
  v10 = &v69;
  MEMORY[0x238395970](0xD000000000000030, 0x8000000232E0D8F0);
  v11 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    v12 = 0;
    if (v11 != 2)
    {
      goto LABEL_14;
    }

    v14 = *(v1 + 16);
    v13 = *(v1 + 24);
    v15 = __OFSUB__(v13, v14);
    v12 = v13 - v14;
    if (!v15)
    {
      goto LABEL_14;
    }

    __break(1u);
  }

  else if (!v11)
  {
    v12 = BYTE6(v2);
    goto LABEL_14;
  }

  LODWORD(v12) = HIDWORD(v1) - v1;
  if (__OFSUB__(HIDWORD(v1), v1))
  {
    goto LABEL_41;
  }

  v12 = v12;
LABEL_14:
  v16 = *(v0 + 232);
  v17 = *(v0 + 208);
  v18 = *(v0 + 216);
  v19 = *(v0 + 192);
  *(v0 + 176) = v12;
  v20 = sub_232E01AB0();
  MEMORY[0x238395970](v20);

  MEMORY[0x238395970](0x736574796220, 0xE600000000000000);
  sub_232E01370();

  v21 = *(v18 + 8);
  v21(v16, v17);
  if (v19 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 = v19;
  }

  *(v0 + 280) = v22;
  if (!v9 || (v23 = *(v0 + 200), v25 = *(v23 + 112), v24 = *(v23 + 120), , v26 = sub_232DC9A94(v25, v24), (*(v0 + 288) = v27) == 0))
  {
    v51 = *(v0 + 224);
    v52 = *(v0 + 208);
    sub_232E01270();
    sub_232E01360();
    v21(v51, v52);
    v53 = swift_task_alloc();
    *(v0 + 384) = v53;
    *v53 = v0;
    v54 = sub_232DEB7EC;
LABEL_35:
    v53[1] = v54;

    return sub_232DE9558();
  }

  v28 = v26;
  v29 = v27;
  if ((sub_232DF1404(v1, v2, v26, v27) & 1) == 0)
  {
    v55 = *(v0 + 224);
    v56 = *(v0 + 208);

    sub_232E01270();
    sub_232E01360();
    v21(v55, v56);
    v53 = swift_task_alloc();
    *(v0 + 352) = v53;
    *v53 = v0;
    v54 = sub_232DEB40C;
    goto LABEL_35;
  }

  v30 = *(v0 + 224);
  v65 = *(v0 + 240);
  v68 = *(v0 + 208);
  v63 = v28;
  v64 = v29;
  v31 = sub_232DF173C(*(v0 + 184), v28, v29);
  v33 = v32;
  v35 = v34;
  *(v0 + 296) = v34;
  sub_232E01270();
  v69 = 0;
  v70 = 0xE000000000000000;
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000019, 0x8000000232E0D7D0);
  v36 = MEMORY[0x277D837D0];
  v37 = MEMORY[0x238395A10](v31, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v37);

  MEMORY[0x238395970](0x657461647075202CLL, 0xEB00000000203A64);
  v38 = MEMORY[0x238395A10](v33, v36);
  MEMORY[0x238395970](v38);

  MEMORY[0x238395970](0x6574656C6564202CLL, 0xEB00000000203A64);
  v62 = v35;
  v39 = MEMORY[0x238395A10](v35, v36);
  MEMORY[0x238395970](v39);

  sub_232E01360();

  v21(v30, v68);
  v69 = v31;

  sub_232DC2F90(v40);
  v10 = v65;
  v67 = v69;
  v69 = MEMORY[0x277D84F90];
  v41 = *(v0 + 240);
  if (v65 < 0 || (v65 & 0x4000000000000000) != 0)
  {
    goto LABEL_42;
  }

  for (i = *(v41 + 16); i; v41 = *(v0 + 240))
  {
    v43 = 0;
    v66 = v10 & 0xC000000000000001;
    while (1)
    {
      if (v66)
      {
        v44 = MEMORY[0x238395D50](v43, *(v0 + 240));
      }

      else
      {
        if (v43 >= *(v41 + 16))
        {
          goto LABEL_40;
        }

        v44 = *(v41 + 32 + 8 * v43);
      }

      v45 = v44;
      v46 = v43 + 1;
      if (__OFADD__(v43, 1))
      {
        break;
      }

      v47 = [v44 identifier];
      v48 = sub_232E014D0();
      v50 = v49;

      *(v0 + 144) = v48;
      *(v0 + 152) = v50;
      v10 = swift_task_alloc();
      *(v10 + 16) = v0 + 144;
      LOBYTE(v48) = sub_232DF7F9C(sub_232DB0E78, v10, v67);

      if (v48)
      {
        sub_232E01950();
        sub_232E01980();
        sub_232E01990();
        v10 = &v69;
        sub_232E01960();
      }

      else
      {
      }

      ++v43;
      if (v46 == i)
      {
        v57 = v69;
        goto LABEL_44;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    i = sub_232E019C0();
  }

  v57 = MEMORY[0x277D84F90];
LABEL_44:

  *(v0 + 304) = v57;
  if (*(v62 + 16))
  {
    v58 = swift_task_alloc();
    *(v0 + 312) = v58;
    *v58 = v0;
    v58[1] = sub_232DEB0E8;

    return sub_232DEC2F4(v62, v63, v64);
  }

  else
  {

    *(v0 + 328) = v64;
    v59 = swift_task_alloc();
    *(v0 + 336) = v59;
    *v59 = v0;
    v59[1] = sub_232DEB2C0;
    v60 = *(v0 + 304);
    v61 = *(v0 + 280);

    return sub_232DECA3C(v60, v61, v63, v64);
  }
}

uint64_t sub_232DEB0E8(uint64_t a1, uint64_t a2)
{
  v5 = a1;
  v6 = *v3;
  v7 = *v3;
  *(*v3 + 320) = v2;

  if (v2)
  {
    v8 = v6[25];

    return MEMORY[0x2822009F8](sub_232DEBCC0, v8, 0);
  }

  else
  {

    v6[41] = a2;
    v9 = swift_task_alloc();
    v6[42] = v9;
    *v9 = v7;
    v9[1] = sub_232DEB2C0;
    v10 = v6[35];
    v11 = v6[38];

    return sub_232DECA3C(v11, v10, v5, a2);
  }
}

uint64_t sub_232DEB2C0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  *(*v3 + 344) = v2;

  if (v2)
  {
    v5 = *(v4 + 200);
    v6 = sub_232DEBD34;
  }

  else
  {
    v7 = *(v4 + 200);

    v6 = sub_232DEE418;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DEB40C()
{
  v2 = *v1;

  if (v0)
  {

    *(v2 + 376) = v0;
    v3 = *(v2 + 200);
    v4 = sub_232DEB778;
  }

  else
  {
    v3 = *(v2 + 200);
    v4 = sub_232DEB538;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DEB538()
{
  v1 = sub_232DB3120(MEMORY[0x277D84F90]);
  v0[45] = v1;
  v2 = swift_task_alloc();
  v0[46] = v2;
  *v2 = v0;
  v2[1] = sub_232DEB5F0;
  v3 = v0[35];
  v4 = v0[30];

  return sub_232DECA3C(v4, v3, 2, v1);
}

uint64_t sub_232DEB5F0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;

  if (v2)
  {

    *(v4 + 376) = v2;
    v5 = *(v4 + 200);
    v6 = sub_232DEB778;
  }

  else
  {
    v7 = *(v4 + 200);

    v6 = sub_232DEE418;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DEB778()
{
  sub_232DB091C(v0[33], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DEB7EC()
{
  v2 = *v1;

  if (v0)
  {

    *(v2 + 408) = v0;
    v3 = *(v2 + 200);
    v4 = sub_232DEBBCC;
  }

  else
  {
    v3 = *(v2 + 200);
    v4 = sub_232DEB918;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DEB918()
{
  v1 = sub_232DB3120(MEMORY[0x277D84F90]);
  v0[49] = v1;
  v2 = swift_task_alloc();
  v0[50] = v2;
  *v2 = v0;
  v2[1] = sub_232DEB9D0;
  v3 = v0[35];
  v4 = v0[30];

  return sub_232DECA3C(v4, v3, 2, v1);
}

uint64_t sub_232DEB9D0(uint64_t a1, uint64_t a2)
{
  v4 = *v3;

  if (v2)
  {

    *(v4 + 408) = v2;
    v5 = *(v4 + 200);
    v6 = sub_232DEBBCC;
  }

  else
  {
    v7 = *(v4 + 200);

    v6 = sub_232DEBB58;
    v5 = v7;
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t sub_232DEBB58()
{
  sub_232DB091C(v0[33], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DEBBCC()
{
  sub_232DB091C(v0[33], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DEBC40(uint64_t a1)
{
  v2 = *(v1 + 248);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_232DEBCC0()
{
  sub_232DB091C(v0[33], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DEBD34()
{
  sub_232DB091C(v0[33], v0[34]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_232DEBDE0()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[19] = v2;
  v0[2] = v0;
  v0[3] = sub_232DCD970;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_33;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithDomainIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DEBF1C()
{
  v22[3] = *MEMORY[0x277D85DE8];
  v19 = sub_232E012A0();
  v0 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_232E00AB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_232E00BE0();
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232DE9A58();
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_232E00B70();
  v22[0] = 0;
  v12 = [v10 createDirectoryAtURL:v11 withIntermediateDirectories:1 attributes:0 error:v22];

  if (v12)
  {
    v13 = v22[0];
    sub_232E00AA0();
    sub_232E00A90();
    sub_232E00B60();
    (*(v4 + 8))(v6, v3);
  }

  else
  {
    v14 = v22[0];
    v15 = sub_232E00AE0();

    swift_willThrow();
    sub_232E01270();
    v22[0] = 0;
    v22[1] = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000028, 0x8000000232E0D970);
    v16 = sub_232E00BC0();
    MEMORY[0x238395970](v16);

    MEMORY[0x238395970](0x6162206D6F726620, 0xEE00203A70756B63);
    v21 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    sub_232E019A0();
    sub_232E01380();

    (*(v0 + 8))(v2, v19);
  }

  return (*(v7 + 8))(v9, v20);
}

uint64_t sub_232DEC2F4(uint64_t a1, __int16 a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 160) = a2;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  v5 = sub_232E00BE0();
  *(v4 + 48) = v5;
  *(v4 + 56) = *(v5 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  v6 = sub_232E012A0();
  *(v4 + 80) = v6;
  *(v4 + 88) = *(v6 - 8);
  *(v4 + 96) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DEC44C, v3, 0);
}

uint64_t sub_232DEC44C(uint64_t a1)
{
  v3 = *(v1 + 88);
  v2 = *(v1 + 96);
  v4 = *(v1 + 80);
  v5 = *(v1 + 16);
  sub_232E01270();
  sub_232E018F0();

  v6 = MEMORY[0x238395A10](v5, MEMORY[0x277D837D0]);
  MEMORY[0x238395970](v6);

  sub_232E01360();

  (*(v3 + 8))(v2, v4);
  v7 = *(v5 + 16);

  if (v7)
  {
    v9 = 0;
    v10 = *(v1 + 24);
    v11 = *(v1 + 16) + 40;
    do
    {
      v12 = (v11 + 16 * v9);
      v13 = v9;
      while (1)
      {
        if (v13 >= v7)
        {
          __break(1u);
LABEL_18:
          __break(1u);
          return result;
        }

        v9 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          goto LABEL_18;
        }

        v14 = *(v12 - 1);
        v15 = *v12;

        v16 = sub_232DD5634(v14, v15);
        if (v17)
        {
          break;
        }

        ++v13;
        v12 += 2;
        if (v9 == v7)
        {
          goto LABEL_14;
        }
      }

      v18 = v16;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_232DC2ADC();
      }

      v19 = v18;

      v20 = (*(v10 + 56) + 16 * v18);
      v21 = *v20;
      v22 = v20[1];
      sub_232DC2630(v19, v10);
      sub_232DB091C(v21, v22);
    }

    while (v9 != v7);
  }

  else
  {
    v10 = *(v1 + 24);
  }

LABEL_14:
  *(v1 + 104) = v10;
  v23 = *(v1 + 16);
  v24 = *(v1 + 160);
  *(v1 + 112) = sub_232DE833C();
  v25 = sub_232DD2640(v24, v10);
  v27 = v26;
  *(v1 + 120) = v25;
  *(v1 + 128) = v26;
  v28 = swift_task_alloc();
  *(v1 + 136) = v28;
  *(v28 + 16) = v23;
  v29 = swift_task_alloc();
  *(v1 + 144) = v29;
  *v29 = v1;
  v29[1] = sub_232DEC6F0;

  return sub_232DC7F98(v25, v27, &unk_232E07E20, v28);
}

uint64_t sub_232DEC6F0()
{
  v2 = *v1;
  v2[19] = v0;

  v3 = v2[16];
  v4 = v2[15];
  v5 = v2[14];
  if (v0)
  {
    v6 = v2[4];

    sub_232DB091C(v4, v3);

    v7 = sub_232DEC9C4;
  }

  else
  {
    v6 = v2[4];
    sub_232DB091C(v2[15], v2[16]);

    v7 = sub_232DEC8AC;
  }

  return MEMORY[0x2822009F8](v7, v6, 0);
}

uint64_t sub_232DEC8AC()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  v5 = *(v0 + 16);
  sub_232DC9AF4(*(*(v0 + 32) + 112), *(*(v0 + 32) + 120), *(v0 + 160), *(v0 + 104));
  sub_232DE9A58();
  sub_232E00B80();
  v6 = *(v4 + 8);
  v6(v1, v3);
  sub_232DB5548(v5, v2);
  v6(v2, v3);

  v7 = *(v0 + 8);
  v8 = *(v0 + 104);
  v9 = *(v0 + 160);

  return v7(v9, v8);
}

uint64_t sub_232DEC9C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DECA3C(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  *(v5 + 88) = a4;
  *(v5 + 96) = v4;
  *(v5 + 184) = a3;
  *(v5 + 72) = a1;
  *(v5 + 80) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  *(v5 + 104) = swift_task_alloc();
  *(v5 + 112) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DECAEC, v4, 0);
}

uint64_t sub_232DECAEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *(v5 + 72);
  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v8 = *(v5 + 80);
    if (v8)
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  a1 = sub_232E019C0();
  v7 = a1;
  v8 = *(v5 + 80);
  if (!v8)
  {
    goto LABEL_20;
  }

LABEL_3:
  v9 = *(v5 + 88);
  v10 = *(v5 + 184);
  v11 = *(v5 + 72);

  v12 = sub_232DEDF44(0, v7, v8, v11, v8);
  *(v5 + 120) = v12;
  v13 = swift_allocObject();
  *(v5 + 128) = v13;
  *(v13 + 16) = v10;
  *(v13 + 24) = v9;
  v14 = *(v12 + 16);
  *(v5 + 136) = v14;
  if (v14)
  {
    v15 = v13;
    v16 = sub_232DEE238();
    *(v5 + 144) = v16;
    *(v5 + 152) = 0;
    v17 = *(v12 + 16);

    if (v17)
    {
      v19 = *(v5 + 104);
      v18 = *(v5 + 112);
      v20 = *(v5 + 96);
      v21 = *(v12 + 32);
      v22 = sub_232E016B0();
      v23 = *(v22 - 8);
      (*(v23 + 56))(v18, 1, 1, v22);
      v24 = swift_allocObject();
      v24[2] = v20;
      v24[3] = v16;
      v24[4] = v21;
      v24[5] = v20;
      v24[6] = v15;
      sub_232DA7734(v18, v19);
      v25 = (*(v23 + 48))(v19, 1, v22);
      swift_retain_n();

      v26 = *(v5 + 104);
      if (v25 == 1)
      {
        sub_232DA77A4(*(v5 + 104));
      }

      else
      {
        sub_232E016A0();
        (*(v23 + 8))(v26, v22);
      }

      v32 = v24[2];
      swift_unknownObjectRetain();

      if (v32)
      {
        swift_getObjectType();
        v33 = sub_232E01630();
        v35 = v34;
        swift_unknownObjectRelease();
      }

      else
      {
        v33 = 0;
        v35 = 0;
      }

      sub_232DA77A4(*(v5 + 112));
      if (v35 | v33)
      {
        *(v5 + 16) = 0;
        *(v5 + 24) = 0;
        *(v5 + 32) = v33;
        *(v5 + 40) = v35;
      }

      v36 = MEMORY[0x277D84F78];
      v37 = swift_task_create();
      *(v5 + 160) = v37;
      v38 = swift_task_alloc();
      *(v5 + 168) = v38;
      a1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v38 = v5;
      v38[1] = sub_232DECEEC;
      a5 = MEMORY[0x277D84950];
      a3 = v36 + 8;
      a2 = v37;
      a4 = a1;

      return MEMORY[0x282200430](a1, a2, a3, a4, a5);
    }

LABEL_21:
    __break(1u);
    return MEMORY[0x282200430](a1, a2, a3, a4, a5);
  }

  v27 = *(v5 + 128);
  swift_beginAccess();
  v28 = *(v27 + 24);
  v29 = *(v27 + 16);

  v30 = *(v5 + 8);

  return v30(v29, v28);
}

uint64_t sub_232DECEEC()
{
  v2 = *v1;
  *(*v1 + 176) = v0;

  if (v0)
  {
    v3 = *(v2 + 96);

    v4 = sub_232DED394;
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 96);
    v4 = sub_232DED020;
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

uint64_t sub_232DED020()
{
  v1 = v0[19];
  v2 = v0[17];

  if (v1 + 1 == v2)
  {

    v8 = v0[16];
    swift_beginAccess();
    v9 = *(v8 + 24);
    v10 = *(v8 + 16);

    v11 = v0[1];

    return v11(v10, v9);
  }

  else
  {
    v13 = v0[19] + 1;
    v0[19] = v13;
    v14 = v0[15];
    if (v13 >= *(v14 + 16))
    {
      __break(1u);
    }

    else
    {
      v15 = v0[18];
      v16 = v0[16];
      v18 = v0[13];
      v17 = v0[14];
      v19 = v0[12];
      v20 = *(v14 + 8 * v13 + 32);
      v21 = sub_232E016B0();
      v22 = *(v21 - 8);
      (*(v22 + 56))(v17, 1, 1, v21);
      v23 = swift_allocObject();
      v23[2] = v19;
      v23[3] = v15;
      v23[4] = v20;
      v23[5] = v19;
      v23[6] = v16;
      sub_232DA7734(v17, v18);
      LODWORD(v17) = (*(v22 + 48))(v18, 1, v21);
      swift_retain_n();

      v24 = v0[13];
      if (v17 == 1)
      {
        sub_232DA77A4(v0[13]);
      }

      else
      {
        sub_232E016A0();
        (*(v22 + 8))(v24, v21);
      }

      v25 = v23[2];
      swift_unknownObjectRetain();

      if (v25)
      {
        swift_getObjectType();
        v26 = sub_232E01630();
        v28 = v27;
        swift_unknownObjectRelease();
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      sub_232DA77A4(v0[14]);
      if (v28 | v26)
      {
        v0[2] = 0;
        v0[3] = 0;
        v0[4] = v26;
        v0[5] = v28;
      }

      v29 = MEMORY[0x277D84F78];
      v30 = swift_task_create();
      v0[20] = v30;
      v31 = swift_task_alloc();
      v0[21] = v31;
      v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
      *v31 = v0;
      v31[1] = sub_232DECEEC;
      v7 = MEMORY[0x277D84950];
      v5 = v29 + 8;
      v4 = v30;
      v6 = v3;
    }

    return MEMORY[0x282200430](v3, v4, v5, v6, v7);
  }
}

uint64_t sub_232DED394()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_232DED40C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[12] = a4;
  v8 = sub_232E012A0();
  v6[15] = v8;
  v6[16] = *(v8 - 8);
  v6[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DED4D4, a5, 0);
}

uint64_t sub_232DED4D4(uint64_t a1)
{
  v2 = v1[12];
  sub_232E01270();
  sub_232E018F0();

  if (v2 >> 62)
  {
    v3 = sub_232E019C0();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = v1[16];
  v4 = v1[17];
  v6 = v1[15];
  v1[11] = v3;
  v7 = sub_232E01AB0();
  MEMORY[0x238395970](v7);

  MEMORY[0x238395970](0x736D65746920, 0xE600000000000000);
  sub_232E01370();

  (*(v5 + 8))(v4, v6);
  v8 = swift_task_alloc();
  v1[18] = v8;
  *v8 = v1;
  v8[1] = sub_232DED664;
  v9 = v1[12];

  return sub_232DA8D10(v9);
}

uint64_t sub_232DED664(uint64_t a1)
{
  v2 = *(*v1 + 104);
  *(*v1 + 152) = a1;

  return MEMORY[0x2822009F8](sub_232DED77C, v2, 0);
}

uint64_t sub_232DED77C()
{
  v18 = v0;
  v1 = v0[19];
  if (v1 >> 62)
  {
    if (sub_232E019C0())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[14];
    v3 = v0[12];
    swift_beginAccess();
    v4 = sub_232DF1E1C(v3);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_232DDD348(v4, sub_232DDD294, 0, isUniquelyReferenced_nonNull_native, &v17);

    v6 = v0[19];
    v7 = v0[14];
    *(v2 + 24) = v17;
    swift_endAccess();
    v0[20] = sub_232DE833C();
    swift_beginAccess();
    v8 = *(v2 + 24);
    v9 = *(v7 + 16);

    v10 = sub_232DD2640(v9, v8);
    v12 = v11;

    v0[21] = v10;
    v0[22] = v12;
    v13 = swift_task_alloc();
    v0[23] = v13;
    *(v13 + 16) = v6;
    v14 = swift_task_alloc();
    v0[24] = v14;
    *v14 = v0;
    v14[1] = sub_232DED9E4;

    return sub_232DC7F98(v10, v12, &unk_232E07E40, v13);
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_232DED9E4()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = v2[13];
    v4 = sub_232DEDBF4;
  }

  else
  {
    v5 = v2[22];
    v7 = v2[20];
    v6 = v2[21];
    v8 = v2[13];

    sub_232DB091C(v6, v5);

    v4 = sub_232DEDB3C;
    v3 = v8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_232DEDB3C()
{
  v1 = v0[13];
  v2 = v0[14];
  swift_beginAccess();
  v3 = *(v2 + 24);
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  v6 = *(v2 + 16);

  sub_232DC9AF4(v4, v5, v6, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_232DEDBF4()
{
  v1 = v0[22];
  v3 = v0[20];
  v2 = v0[21];

  sub_232DB091C(v2, v1);

  v4 = v0[1];

  return v4();
}

uint64_t sub_232DEDC94(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DEDCB4, 0, 0);
}

uint64_t sub_232DEDCB4()
{
  v1 = v0[18];
  sub_232DDD69C();
  v2 = sub_232E015C0();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_232DDCC0C;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_27;
  v0[14] = v3;
  [v1 indexSearchableItems:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DEDDF0(uint64_t a1, uint64_t a2)
{
  *(v2 + 144) = a1;
  *(v2 + 152) = a2;
  return MEMORY[0x2822009F8](sub_232DEDE10, 0, 0);
}

uint64_t sub_232DEDE10()
{
  v1 = v0[18];
  v2 = sub_232E015C0();
  v0[20] = v2;
  v0[2] = v0;
  v0[3] = sub_232DDCE70;
  v3 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7630, &qword_232E07530);
  v0[10] = MEMORY[0x277D85DD0];
  v0[11] = 1107296256;
  v0[12] = sub_232DCA134;
  v0[13] = &block_descriptor_13_0;
  v0[14] = v3;
  [v1 deleteSearchableItemsWithIdentifiers:v2 completionHandler:v0 + 10];

  return MEMORY[0x282200938](v0 + 2);
}

uint64_t sub_232DEDF44(int64_t a1, int64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = 0;
  v11 = a1;
  while (1)
  {
    v12 = v11 <= a2;
    if (a3 > 0)
    {
      v12 = v11 >= a2;
    }

    if (v12)
    {
      break;
    }

    v13 = __OFADD__(v11, a3);
    v11 += a3;
    if (v13)
    {
      v11 = (v11 >> 63) ^ 0x8000000000000000;
    }

    v13 = __OFADD__(v10++, 1);
    if (v13)
    {
      __break(1u);
      break;
    }
  }

  v14 = a1;
  v29 = MEMORY[0x277D84F90];
  sub_232DF9010(0, v10, 0);
  if (v10)
  {
    v15 = v14;
    while (1)
    {
      v16 = v15 <= a2;
      if (a3 > 0)
      {
        v16 = v15 >= a2;
      }

      if (v16)
      {
        break;
      }

      if (__OFADD__(v15, a3))
      {
        v14 = ((v15 + a3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v14 = v15 + a3;
      }

      v17 = sub_232DCFD20(v15, a4, a5);
      if (v5)
      {
        goto LABEL_37;
      }

      v19 = *(v29 + 16);
      v18 = *(v29 + 24);
      if (v19 >= v18 >> 1)
      {
        v27 = v17;
        sub_232DF9010((v18 > 1), v19 + 1, 1);
        v17 = v27;
      }

      *(v29 + 16) = v19 + 1;
      *(v29 + 8 * v19 + 32) = v17;
      v15 = v14;
      if (!--v10)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_22:
    v20 = v14 <= a2;
    if (a3 > 0)
    {
      v20 = v14 >= a2;
    }

    if (v20)
    {
LABEL_25:

      return v29;
    }

    while (1)
    {
      v22 = __OFADD__(v14, a3) ? ((v14 + a3) >> 63) ^ 0x8000000000000000 : v14 + a3;
      v23 = sub_232DCFD20(v14, a4, a5);
      if (v5)
      {
        break;
      }

      v25 = *(v29 + 16);
      v24 = *(v29 + 24);
      if (v25 >= v24 >> 1)
      {
        v28 = v23;
        sub_232DF9010((v24 > 1), v25 + 1, 1);
        v23 = v28;
      }

      *(v29 + 16) = v25 + 1;
      *(v29 + 8 * v25 + 32) = v23;
      v26 = v22 <= a2;
      if (a3 > 0)
      {
        v26 = v22 >= a2;
      }

      v14 = v22;
      if (v26)
      {
        goto LABEL_25;
      }
    }
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t sub_232DEE19C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DEDDF0(a1, v4);
}

unint64_t sub_232DEE238()
{
  result = qword_2814E8180;
  if (!qword_2814E8180)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DDD7318, &qword_232E05EE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8180);
  }

  return result;
}

uint64_t sub_232DEE29C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_232DA7C78;

  return sub_232DED40C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_232DEE364(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DEDC94(a1, v4);
}

BOOL sub_232DEE470(unint64_t a1)
{
  if (a1 >> 62)
  {
LABEL_17:
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = sub_232E019C0();
  }

  else
  {
    v12 = a1 & 0xFFFFFFFFFFFFFF8;
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  do
  {
    v4 = v3;
    if (v2 == v3)
    {
      break;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x238395D50](v3, a1);
    }

    else
    {
      if (v3 >= *(v12 + 16))
      {
        goto LABEL_16;
      }

      v5 = *(a1 + 8 * v3 + 32);
    }

    v6 = v5;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

    v7 = [v5 offerID];
    sub_232E014D0();

    LOBYTE(v7) = sub_232E015A0();

    if (v7)
    {

      return v2 != v4;
    }

    sub_232DB3688(0, &qword_27DDD7788, 0x277D82BB8);
    v8 = [v6 familyID];
    sub_232DB3688(0, &qword_2814E7BB8, 0x277CCABB0);
    v9 = sub_232E01820();
    v10 = sub_232E01830();

    v3 = v4 + 1;
  }

  while ((v10 & 1) == 0);
  return v2 != v4;
}

id AppleArcadeSubscriptionValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id AppleArcadeSubscriptionValidation.__deallocating_deinit(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for AppleArcadeSubscriptionValidation();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_232DEE778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[16] = a5;
  v6[17] = v5;
  v6[14] = a3;
  v6[15] = a4;
  v6[12] = a1;
  v6[13] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77B8, &qword_232E07F28);
  v6[18] = v7;
  v6[19] = *(v7 - 8);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77C0, &unk_232E07F30);
  v6[21] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7308, &qword_232E05ED0);
  v6[22] = swift_task_alloc();
  v8 = sub_232E010C0();
  v6[23] = v8;
  v6[24] = *(v8 - 8);
  v6[25] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77C8, &qword_232E07F40);
  v6[26] = v9;
  v6[27] = *(v9 - 8);
  v6[28] = swift_task_alloc();
  v10 = sub_232E01080();
  v6[29] = v10;
  v6[30] = *(v10 - 8);
  v6[31] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A0, &qword_232E07EE8);
  v6[32] = swift_task_alloc();
  v11 = sub_232E01000();
  v6[33] = v11;
  v6[34] = *(v11 - 8);
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v12 = sub_232E010E0();
  v6[37] = v12;
  v6[38] = *(v12 - 8);
  v6[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A8, &unk_232E07EF0);
  v6[40] = swift_task_alloc();
  v13 = sub_232E01110();
  v6[41] = v13;
  v6[42] = *(v13 - 8);
  v6[43] = swift_task_alloc();
  v14 = sub_232E012A0();
  v6[44] = v14;
  v6[45] = *(v14 - 8);
  v6[46] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DEEBC8, 0, 0);
}

uint64_t sub_232DEEBC8(uint64_t a1)
{
  v2 = v1[45];
  v3 = v1[46];
  v28 = v1[44];
  v32 = v1[42];
  v33 = v1[41];
  v29 = v1[39];
  v4 = v1[38];
  v30 = v1[37];
  v31 = v1[43];
  v37 = v1[35];
  v35 = v1[36];
  v36 = v1[34];
  v38 = v1[33];
  v34 = v1[32];
  v39 = v1[22];
  v40 = v1[21];
  v5 = v1[16];
  v6 = v1[14];
  v7 = v1[15];
  v8 = v1[13];
  sub_232E01250();
  sub_232E018F0();

  MEMORY[0x238395970](v8, v6);
  MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
  MEMORY[0x238395970](v7, v5);
  sub_232E01360();

  v9 = *(v2 + 8);
  v1[47] = v9;
  v1[48] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v3, v28);
  v10 = objc_opt_self();

  v11 = [v10 defaultEnvironment];
  v12 = sub_232DF1294();
  v13 = MEMORY[0x277CEB188];
  v1[5] = v12;
  v1[6] = v13;
  v1[2] = v11;
  sub_232E010D0();
  (*(v4 + 104))(v29, *MEMORY[0x277CEB068], v30);
  sub_232E01100();
  v14 = sub_232E010F0();
  v16 = v15;

  v1[49] = v14;
  (*(v32 + 8))(v31, v33);
  __swift_destroy_boxed_opaque_existential_1(v1 + 2);
  v17 = sub_232E01010();
  (*(*(v17 - 8) + 56))(v34, 1, 1, v17);

  sub_232E00FF0();
  (*(v36 + 16))(v37, v35, v38);

  sub_232E01070();
  ObjectType = swift_getObjectType();
  v19 = sub_232E01180();
  (*(*(v19 - 8) + 56))(v39, 1, 1, v19);
  v20 = sub_232E01130();
  (*(*(v20 - 8) + 56))(v40, 1, 1, v20);
  sub_232E010B0();
  sub_232E010A0();
  sub_232E00FE0();
  swift_allocObject();
  v21 = sub_232E00FD0();
  v1[50] = v21;
  v22 = swift_task_alloc();
  v1[51] = v22;
  *v22 = v1;
  v22[1] = sub_232DEF064;
  v23 = v1[31];
  v24 = v1[28];
  v25 = v1[25];
  v26 = MEMORY[0x277CEAFA0];

  return MEMORY[0x28213DA80](v24, v23, v25, v21, v26, ObjectType, v16);
}

uint64_t sub_232DEF064()
{
  v2 = *v1;
  *(*v1 + 416) = v0;

  (*(v2[24] + 8))(v2[25], v2[23]);

  if (v0)
  {
    v3 = sub_232DEF438;
  }

  else
  {
    v3 = sub_232DEF1E8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_232DEF1E8()
{
  v2 = *(v0 + 152);
  v1 = *(v0 + 160);
  v3 = *(v0 + 144);
  sub_232E01090();
  sub_232E01120();
  (*(v2 + 8))(v1, v3);
  v4 = *(v0 + 288);
  v5 = *(v0 + 272);
  v6 = *(v0 + 240);
  v16 = *(v0 + 248);
  v17 = *(v0 + 264);
  v7 = *(v0 + 224);
  v15 = *(v0 + 232);
  v9 = *(v0 + 208);
  v8 = *(v0 + 216);
  v11 = *(v0 + 88);
  v10 = *(v0 + 96);
  if (v11)
  {
    v12 = [*(v0 + 88) value];

    sub_232E01850();
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v16, v15);
    (*(v5 + 8))(v4, v17);
  }

  else
  {
    swift_unknownObjectRelease();
    (*(v8 + 8))(v7, v9);
    (*(v6 + 8))(v16, v15);
    (*(v5 + 8))(v4, v17);
    *v10 = 0u;
    v10[1] = 0u;
  }

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_232DEF438(uint64_t a1)
{
  v2 = v1[46];
  v11 = v1[47];
  v3 = v1[44];
  v4 = v1[36];
  v5 = v1[34];
  v13 = v1[33];
  v6 = v1[31];
  v7 = v1[30];
  v12 = v1[29];
  sub_232E01250();
  sub_232E018F0();

  swift_getErrorValue();
  v8 = sub_232E01B50();
  MEMORY[0x238395970](v8);

  sub_232E01380();

  v11(v2, v3);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v7 + 8))(v6, v12);
  (*(v5 + 8))(v4, v13);

  v9 = v1[1];

  return v9();
}

uint64_t sub_232DEF7EC(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[10] = a5;
  v5[11] = _Block_copy(aBlock);
  v8 = sub_232E014D0();
  v10 = v9;
  v5[12] = v9;
  v11 = sub_232E014D0();
  v13 = v12;
  v5[13] = v12;
  if (a3)
  {
    v14 = sub_232E01470();
  }

  else
  {
    v14 = 0;
  }

  v5[14] = v14;
  a5;
  v15 = swift_task_alloc();
  v5[15] = v15;
  *v15 = v5;
  v15[1] = sub_232DF1400;

  return sub_232DEE778((v5 + 2), v8, v10, v11, v13);
}

uint64_t sub_232DEF924(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[24] = a6;
  v7[25] = v6;
  v7[22] = a4;
  v7[23] = a5;
  v7[20] = a2;
  v7[21] = a3;
  v7[19] = a1;
  v8 = sub_232E01150();
  v7[26] = v8;
  v7[27] = *(v8 - 8);
  v7[28] = swift_task_alloc();
  v9 = sub_232E01060();
  v7[29] = v9;
  v7[30] = *(v9 - 8);
  v7[31] = swift_task_alloc();
  v10 = sub_232E012A0();
  v7[32] = v10;
  v7[33] = *(v10 - 8);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A0, &qword_232E07EE8);
  v7[36] = swift_task_alloc();
  v11 = sub_232E01000();
  v7[37] = v11;
  v7[38] = *(v11 - 8);
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v12 = sub_232E010E0();
  v7[41] = v12;
  v7[42] = *(v12 - 8);
  v7[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77A8, &unk_232E07EF0);
  v7[44] = swift_task_alloc();
  v13 = sub_232E01110();
  v7[45] = v13;
  v7[46] = *(v13 - 8);
  v7[47] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DEFC44, 0, 0);
}

uint64_t sub_232DEFC44()
{
  v1 = v0;
  v40 = 0x65756C6176;
  v3 = v0[46];
  v2 = v0[47];
  v4 = v0[42];
  v5 = v0[43];
  v39 = v0[41];
  v30 = v0[45];
  v32 = v0[36];
  v37 = v0[24];
  v6 = objc_opt_self();

  v7 = [v6 defaultEnvironment];
  v8 = sub_232DF1294();
  v0[2] = v7;
  v9 = v0 + 2;
  v10 = MEMORY[0x277CEB188];
  v9[3] = v8;
  v9[4] = v10;
  sub_232E010D0();
  (*(v4 + 104))(v5, *MEMORY[0x277CEB068], v39);
  sub_232E01100();
  v11 = sub_232E010F0();
  v38 = v12;

  v9[46] = v11;
  (*(v3 + 8))(v2, v30);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v13 = sub_232E01010();
  (*(*(v13 - 8) + 56))(v32, 1, 1, v13);

  sub_232E00FF0();
  if (v37 && (v14 = v1[24], *(v14 + 16)) && (v15 = sub_232DD5634(0x79747265706F7270, 0xEC000000656D614ELL), (v16 & 1) != 0))
  {
    v17 = (*(v14 + 56) + 16 * v15);
    v18 = v17[1];
    v40 = *v17;
  }

  else
  {
    v18 = 0xE500000000000000;
  }

  v1[49] = v40;
  v1[50] = v18;
  v19 = v1[38];
  v35 = v1[37];
  v36 = v1[40];
  v20 = v1[35];
  v21 = v1[33];
  v33 = v1[32];
  v34 = v1[39];
  v29 = v1[22];
  v31 = v1[23];
  v23 = v1[20];
  v22 = v1[21];
  sub_232E01250();
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000014, 0x8000000232E0E440);
  MEMORY[0x238395970](v40, v18);
  MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
  MEMORY[0x238395970](v23, v22);
  MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
  MEMORY[0x238395970](v29, v31);
  sub_232E01360();

  v24 = *(v21 + 8);
  v1[51] = v24;
  v1[52] = (v21 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v24(v20, v33);
  sub_232E01040();

  sub_232E01050();
  (*(v19 + 16))(v34, v36, v35);
  sub_232E01140();
  ObjectType = swift_getObjectType();
  v26 = swift_task_alloc();
  v1[53] = v26;
  *v26 = v1;
  v26[1] = sub_232DF0090;
  v27 = v1[28];

  return MEMORY[0x28213DA90](v27, ObjectType, v38);
}

uint64_t sub_232DF0090(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 432) = a1;
  *(v3 + 440) = v1;

  if (v1)
  {
    v4 = sub_232DF0738;
  }

  else
  {
    v4 = sub_232DF01A4;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_232DF01A4(uint64_t a1)
{
  v2 = *(v1 + 432);
  if (v2)
  {

    v3 = sub_232E017F0();
    if (v3)
    {
      v4 = v3;
      v5 = [v3 value];

      sub_232E01850();
      swift_unknownObjectRelease();
    }

    else
    {
      *(v1 + 72) = 0u;
      *(v1 + 56) = 0u;
    }

    sub_232DB54D8(v1 + 56, v1 + 88);
    if (*(v1 + 112))
    {
      if (swift_dynamicCast())
      {
        v52 = *(v1 + 408);
        v61 = *(v1 + 320);
        v15 = *(v1 + 304);
        v16 = *(v1 + 272);
        v56 = *(v1 + 248);
        v58 = *(v1 + 296);
        v17 = *(v1 + 240);
        v54 = *(v1 + 232);
        v18 = *(v1 + 216);
        v48 = *(v1 + 208);
        v50 = *(v1 + 224);
        v44 = *(v1 + 184);
        v45 = *(v1 + 256);
        v19 = *(v1 + 160);
        v40 = *(v1 + 168);
        v42 = *(v1 + 176);
        v20 = *(v1 + 448);
        sub_232E01250();
        sub_232E018F0();
        MEMORY[0x238395970](0xD000000000000020, 0x8000000232E0E4A0);
        if (v20)
        {
          v21 = 1702195828;
        }

        else
        {
          v21 = 0x65736C6166;
        }

        if (v20)
        {
          v22 = 0xE400000000000000;
        }

        else
        {
          v22 = 0xE500000000000000;
        }

        MEMORY[0x238395970](v21, v22);

        MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
        MEMORY[0x238395970](v19, v40);
        MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
        MEMORY[0x238395970](v42, v44);
        sub_232E01360();

        swift_unknownObjectRelease();
        v52(v16, v45);
        (*(v18 + 8))(v50, v48);
        (*(v17 + 8))(v56, v54);
      }

      else
      {
        v61 = *(v1 + 320);
        v15 = *(v1 + 304);
        v58 = *(v1 + 296);
        v30 = *(v1 + 240);
        v31 = *(v1 + 248);
        v33 = *(v1 + 224);
        v32 = *(v1 + 232);
        v35 = *(v1 + 208);
        v34 = *(v1 + 216);

        swift_unknownObjectRelease();
        (*(v34 + 8))(v33, v35);
        (*(v30 + 8))(v31, v32);
      }

      (*(v15 + 8))(v61, v58);
    }

    else
    {
      v62 = *(v1 + 320);
      v23 = *(v1 + 304);
      v59 = *(v1 + 296);
      v24 = *(v1 + 240);
      v25 = *(v1 + 248);
      v27 = *(v1 + 224);
      v26 = *(v1 + 232);
      v29 = *(v1 + 208);
      v28 = *(v1 + 216);

      swift_unknownObjectRelease();
      (*(v28 + 8))(v27, v29);
      (*(v24 + 8))(v25, v26);
      (*(v23 + 8))(v62, v59);
      sub_232DE94F0(v1 + 88);
    }

    v14 = *(v1 + 152);
    v13 = *(v1 + 56);
    v14[1] = *(v1 + 72);
  }

  else
  {
    v49 = *(v1 + 408);
    v7 = *(v1 + 392);
    v6 = *(v1 + 400);
    v60 = *(v1 + 320);
    v8 = *(v1 + 304);
    v9 = *(v1 + 280);
    v55 = *(v1 + 248);
    v57 = *(v1 + 296);
    v10 = *(v1 + 240);
    v53 = *(v1 + 232);
    v11 = *(v1 + 216);
    v46 = *(v1 + 208);
    v47 = *(v1 + 224);
    v41 = *(v1 + 184);
    v43 = *(v1 + 256);
    v12 = *(v1 + 160);
    v38 = *(v1 + 168);
    v39 = *(v1 + 176);
    v51 = *(v1 + 152);
    sub_232E01250();
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0E480);
    MEMORY[0x238395970](v7, v6);

    MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
    MEMORY[0x238395970](v12, v38);
    MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
    MEMORY[0x238395970](v39, v41);
    sub_232E01380();

    swift_unknownObjectRelease();
    v49(v9, v43);
    (*(v11 + 8))(v47, v46);
    (*(v10 + 8))(v55, v53);
    (*(v8 + 8))(v60, v57);
    v13 = 0uLL;
    v14 = v51;
    v51[1] = 0u;
  }

  *v14 = v13;

  v36 = *(v1 + 8);

  return v36();
}

uint64_t sub_232DF0738(uint64_t a1)
{
  v16 = v1[51];
  v2 = v1[49];
  v3 = v1[50];
  v22 = v1[40];
  v20 = v1[38];
  v21 = v1[37];
  v4 = v1[35];
  v19 = v1[31];
  v17 = v1[30];
  v18 = v1[29];
  v5 = v1[27];
  v15 = v1[28];
  v13 = v1[32];
  v14 = v1[26];
  v11 = v1[22];
  v12 = v1[23];
  v7 = v1[20];
  v6 = v1[21];
  sub_232E01250();
  sub_232E018F0();
  MEMORY[0x238395970](0xD000000000000010, 0x8000000232E0E480);
  MEMORY[0x238395970](v2, v3);

  MEMORY[0x238395970](0xD000000000000011, 0x8000000232E0E460);
  MEMORY[0x238395970](v7, v6);
  MEMORY[0x238395970](0x646E7562206E6920, 0xED0000204449656CLL);
  MEMORY[0x238395970](v11, v12);
  MEMORY[0x238395970](8250, 0xE200000000000000);
  swift_getErrorValue();
  v8 = sub_232E01B50();
  MEMORY[0x238395970](v8);

  sub_232E01380();

  v16(v4, v13);
  swift_willThrow();
  swift_unknownObjectRelease();
  (*(v5 + 8))(v15, v14);
  (*(v17 + 8))(v19, v18);
  (*(v20 + 8))(v22, v21);

  v9 = v1[1];

  return v9();
}

uint64_t sub_232DF0B8C(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[10] = a5;
  v5[11] = _Block_copy(aBlock);
  v8 = sub_232E014D0();
  v10 = v9;
  v5[12] = v9;
  v11 = sub_232E014D0();
  v13 = v12;
  v5[13] = v12;
  if (a3)
  {
    a3 = sub_232E01470();
  }

  v5[14] = a3;
  a5;
  v14 = swift_task_alloc();
  v5[15] = v14;
  *v14 = v5;
  v14[1] = sub_232DF0CCC;

  return sub_232DEF924((v5 + 2), v8, v10, v11, v13, a3);
}

uint64_t sub_232DF0CCC()
{
  v2 = v0;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v5 = *v1;

  if (v2)
  {
    v6 = *(v3 + 88);
    v7 = sub_232E00AD0();

    (v6)[2](v6, 0, v7);
    _Block_release(v6);
  }

  else
  {
    v8 = *(v3 + 32);
    *(v3 + 48) = *(v3 + 16);
    *(v3 + 64) = v8;
    v9 = *(v3 + 72);
    if (v9)
    {
      v10 = __swift_project_boxed_opaque_existential_1((v3 + 48), *(v3 + 72));
      v11 = *(v9 - 8);
      v12 = swift_task_alloc();
      (*(v11 + 16))(v12, v10, v9);
      v13 = sub_232E01AC0();
      (*(v11 + 8))(v12, v9);

      __swift_destroy_boxed_opaque_existential_1((v3 + 48));
    }

    else
    {
      v13 = 0;
    }

    v14 = *(v3 + 88);
    v14[2](v14, v13, 0);
    _Block_release(v14);
    swift_unknownObjectRelease();
  }

  v15 = *(v5 + 8);

  return v15();
}

id AppIntentsHelper.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppIntentsHelper.init()()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR___TPSAppIntentsHelper_clientLabel];
  *v2 = 0xD000000000000019;
  *(v2 + 1) = 0x8000000232E0E3A0;
  *&v0[OBJC_IVAR___TPSAppIntentsHelper_source] = 3;
  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_init);
}

id AppIntentsHelper.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DF110C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232DA72F4;

  return sub_232DF0B8C(v2, v3, v4, v5, v6);
}

uint64_t sub_232DF11D4()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_232DA7C78;

  return sub_232DF3D3C(v2, v3, v4);
}

unint64_t sub_232DF1294()
{
  result = qword_27DDD77B0;
  if (!qword_27DDD77B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD77B0);
  }

  return result;
}

uint64_t objectdestroyTm_1()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232DF1338()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_232DA7C78;

  return sub_232DEF7EC(v2, v3, v4, v5, v6);
}

uint64_t sub_232DF1404(uint64_t a1, uint64_t a2, __int16 a3, uint64_t a4)
{
  v8 = sub_232E012A0();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_232DB1790(a1, a2);
  v14 = v13;
  v16 = v15;
  if (v12 == a3)
  {
    v17 = sub_232DD6BA4(a3, a4);
    v19 = v18;
    sub_232DB0970(v14, v16);
    v20 = sub_232DB07B4(v17, v19, v14, v16);
    sub_232DB091C(v14, v16);
    sub_232DB091C(v17, v19);
    if (v20)
    {
      sub_232DB091C(v14, v16);
      return 1;
    }

    sub_232E01270();
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000003BLL, 0x8000000232E0C8C0);
    sub_232DB0970(v14, v16);
    v25 = sub_232E00C10();
    MEMORY[0x238395970](v25);

    sub_232DB091C(v14, v16);
    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v26 = sub_232DD6BA4(a3, a4);
    v28 = v27;
    v29 = sub_232E00C10();
    MEMORY[0x238395970](v29);

    sub_232DB091C(v26, v28);
  }

  else
  {
    v22 = v12;
    sub_232E01270();
    v32 = 0;
    v33 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000031, 0x8000000232E0C850);
    v31 = v22;
    v23 = sub_232E01AB0();
    MEMORY[0x238395970](v23);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v31 = a3;
    v24 = sub_232E01AB0();
    MEMORY[0x238395970](v24);
  }

  MEMORY[0x238395970](41, 0xE100000000000000);
  sub_232E01360();

  sub_232DB091C(v14, v16);
  (*(v9 + 8))(v11, v8);
  return 0;
}

void *sub_232DF173C(unint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_232DB3120(MEMORY[0x277D84F90]);

  v6 = sub_232DF1E1C(a1);

  v8 = sub_232DCA018(v7);
  v9 = sub_232DCA018(v6);
  v10 = v9;
  if (*(v8 + 16) <= *(v9 + 16) >> 3)
  {
    v24 = v9;

    sub_232DD61D8(v8);
    v11 = v24;
  }

  else
  {

    v11 = sub_232DD088C(v8, v10);
  }

  if (*(v10 + 16) <= *(v8 + 16) >> 3)
  {
    v24 = v8;

    sub_232DD61D8(v10);
    v12 = v8;
  }

  else
  {

    v12 = sub_232DD088C(v10, v8);
  }

  v13 = sub_232DD6304(v10, v8);

  v14 = sub_232DF2A18(v13, a2, a3, 2, v6);

  v15 = *(v11 + 16);
  if (!v15)
  {
    goto LABEL_14;
  }

  v16 = sub_232DAE004(*(v11 + 16), 0);
  v17 = sub_232DAFE80(&v24, v16 + 4, v15, v11);
  result = sub_232DD2638(v24);
  if (v17 != v15)
  {
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v19 = *(v14 + 16);
  if (!v19)
  {
    goto LABEL_15;
  }

LABEL_10:
  v20 = sub_232DAE004(v19, 0);
  v21 = sub_232DAFE80(&v24, v20 + 4, v19, v14);
  result = sub_232DD2638(v24);
  if (v21 != v19)
  {
    goto LABEL_19;
  }

  v22 = *(v12 + 16);
  if (v22)
  {
    while (1)
    {
      v23 = sub_232DAE004(v22, 0);
      v12 = sub_232DAFE80(&v24, v23 + 4, v22, v12);
      sub_232DD2638(v24);
      if (v12 == v22)
      {
        break;
      }

      __break(1u);
LABEL_14:

      v16 = MEMORY[0x277D84F90];
      v19 = *(v14 + 16);
      if (v19)
      {
        goto LABEL_10;
      }

LABEL_15:

      v22 = *(v12 + 16);
      if (!v22)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
  }

  return v16;
}

uint64_t sub_232DF19D0(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77D8, &qword_232E080E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DF3260();
  sub_232E01C10();
  v13 = 0;
  sub_232E01A90();
  if (!v3)
  {
    v11[1] = a3;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    sub_232DD90E4(&qword_2814E7C50, sub_232DD8E74, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_232E01A80();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_232DF1BA0(uint64_t a1)
{
  v2 = sub_232DF3260();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DF1BDC(uint64_t a1)
{
  v2 = sub_232DF3260();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DF1C18@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_232DF32B4(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

BOOL sub_232DF1C68(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  if (v2 != *a2)
  {
    return 0;
  }

  v3 = *(a2 + 1);
  v4 = sub_232DD6BA4(*a1, *(a1 + 1));
  v6 = v5;
  v7 = sub_232DD6BA4(v2, v3);
  v9 = v8;
  v10 = sub_232DB07B4(v4, v6, v7, v8);
  sub_232DB091C(v7, v9);
  sub_232DB091C(v4, v6);
  return v10;
}

unint64_t sub_232DF1D10()
{
  result = qword_27DDD77D0;
  if (!qword_27DDD77D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD77D0);
  }

  return result;
}

unint64_t *sub_232DF1D64(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v12 = sub_232DD7C7C(v11, a2, a3, a5, a7);
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();

    return v12;
  }

  return result;
}

unint64_t sub_232DF1E1C(unint64_t a1)
{
  v65 = *MEMORY[0x277D85DE8];
  v45 = sub_232E01410();
  inited = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v44 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E01500();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_232E01440();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232DB3120(MEMORY[0x277D84F90]);
  if (a1 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232E019C0())
  {
    v11 = 0;
    v51 = 0;
    v43 = a1 & 0xC000000000000001;
    v42 = a1 & 0xFFFFFFFFFFFFFF8;
    v40 = a1 + 32;
    v57 = v5 + 1;
    v37 = (inited + 16);
    v36 = (inited + 8);
    v35 = (v7 + 8);
    v41 = xmmword_232E076B0;
    v52 = v4;
    v39 = a1;
    v38 = i;
    while (1)
    {
      if (v43)
      {
        v21 = MEMORY[0x238395D50](v11, a1);
      }

      else
      {
        if (v11 >= *(v42 + 16))
        {
          goto LABEL_41;
        }

        v21 = *(v40 + 8 * v11);
      }

      v22 = v21;
      v23 = __OFADD__(v11, 1);
      v24 = v11 + 1;
      if (v23)
      {
        break;
      }

      v49 = v24;
      v50 = v9;
      v25 = [v21 identifier];
      v47 = sub_232E014D0();
      v48 = v26;

      sub_232E01430();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
      inited = swift_initStackObject();
      *(inited + 16) = v41;
      *(inited + 32) = swift_getKeyPath();
      v46 = inited + 32;
      *(inited + 40) = swift_getKeyPath();
      v7 = 0;
      *(inited + 48) = swift_getKeyPath();
      v58 = inited & 0xC000000000000001;
      v59 = inited;
      v54 = inited & 0xFFFFFFFFFFFFFF8;
      a1 = v53;
      do
      {
        if (v58)
        {
          inited = MEMORY[0x238395D50](v7, v59);
        }

        else
        {
          if (v7 >= *(v54 + 16))
          {
            __break(1u);
LABEL_36:
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            __break(1u);
            goto LABEL_40;
          }

          inited = *(v59 + 8 * v7 + 32);
        }

        v60 = v22;
        v27 = v22;
        swift_getAtKeyPath();

        v9 = *(&v62 + 1);
        v5 = v62;
        sub_232E014F0();
        v28 = sub_232E014E0();
        v30 = v29;

        (*v57)(a1, v4);
        if (v30 >> 60 == 15)
        {

          goto LABEL_11;
        }

        v31 = v30 >> 62;
        if ((v30 >> 62) > 1)
        {
          if (v31 == 2)
          {
            a1 = *(v28 + 16);
            v4 = *(v28 + 24);

            v5 = (v30 & 0x3FFFFFFFFFFFFFFFLL);
            v9 = sub_232E00A30();
            if (v9)
            {
              v5 = (v30 & 0x3FFFFFFFFFFFFFFFLL);
              v32 = sub_232E00A60();
              if (__OFSUB__(a1, v32))
              {
                goto LABEL_38;
              }

              v9 += a1 - v32;
            }

            v23 = __OFSUB__(v4, a1);
            a1 = v4 - a1;
            if (v23)
            {
              goto LABEL_37;
            }

            goto LABEL_31;
          }

          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
          *&v62 = 0;
          *(&v62 + 6) = 0;
        }

        else
        {
          if (v31)
          {
            v4 = v28;
            a1 = (v28 >> 32) - v28;
            if (v28 >> 32 < v28)
            {
              goto LABEL_36;
            }

            v9 = sub_232E00A30();
            if (v9)
            {
              v5 = (v30 & 0x3FFFFFFFFFFFFFFFLL);
              v33 = sub_232E00A60();
              if (__OFSUB__(v28, v33))
              {
                goto LABEL_39;
              }

              v9 += v28 - v33;
            }

LABEL_31:
            sub_232E00A50();
            sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
            v5 = v56;
            sub_232E01400();
            sub_232DB0E28(v28, v30);

            sub_232DB0E28(v28, v30);
            v4 = v52;
            a1 = v53;
            goto LABEL_11;
          }

          *&v62 = v28;
          WORD4(v62) = v30;
          BYTE10(v62) = BYTE2(v30);
          BYTE11(v62) = BYTE3(v30);
          BYTE12(v62) = BYTE4(v30);
          BYTE13(v62) = BYTE5(v30);
          sub_232DB0AB8(&qword_2814E7C70, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
        }

        v5 = v56;
        sub_232E01400();
        sub_232DB0E28(v28, v30);

        sub_232DB0E28(v28, v30);
LABEL_11:
        ++v7;
      }

      while (v7 != 3);
      swift_setDeallocating();
      swift_arrayDestroy();
      v12 = v44;
      v13 = v56;
      sub_232E01420();
      v14 = v45;
      v63 = v45;
      v64 = sub_232DB0AB8(&qword_2814E7C78, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v62);
      (*v37)(boxed_opaque_existential_1, v12, v14);
      __swift_project_boxed_opaque_existential_1(&v62, v63);
      v16 = v51;
      sub_232E00A80();
      v51 = v16;
      (*v36)(v12, v14);
      v17 = v60;
      v7 = v61;
      __swift_destroy_boxed_opaque_existential_1(&v62);
      (*v35)(v13, v55);
      v18 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v62 = v18;
      v5 = &v62;
      v20 = v17;
      inited = v48;
      sub_232DF4500(v20, v7, v47, v48, isUniquelyReferenced_nonNull_native);

      v9 = v62;
      v11 = v49;
      a1 = v39;
      if (v49 == v38)
      {
        return v9;
      }
    }

LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

  return v9;
}

uint64_t sub_232DF26FC(unint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_232E012A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v11 != 2)
    {
      return 0;
    }

    v12 = *(a2 + 16);
    v13 = *(a2 + 24);
LABEL_8:
    if (v12 != v13)
    {
      goto LABEL_9;
    }

    return 0;
  }

  if (v11)
  {
    v12 = a2;
    v13 = a2 >> 32;
    goto LABEL_8;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    return 0;
  }

LABEL_9:
  v14 = v8;
  v15 = sub_232DB1790(a2, a3);
  v17 = v16;
  v19 = v18;
  if (v15 != 2)
  {
    v25 = v15;
    sub_232E01270();
    v30 = 0;
    v31 = 0xE000000000000000;
    sub_232E018F0();
    MEMORY[0x238395970](0xD000000000000032, 0x8000000232E0E520);
    v29 = v25;
    v26 = sub_232E01AB0();
    MEMORY[0x238395970](v26);

    MEMORY[0x238395970](0x6E6572727563202CLL, 0xEB00000000203A74);
    v29 = 2;
    v27 = sub_232E01AB0();
    MEMORY[0x238395970](v27);

    MEMORY[0x238395970](41, 0xE100000000000000);
    sub_232E01360();

    sub_232DB091C(v17, v19);
    (*(v7 + 8))(v10, v14);
    return 0;
  }

  sub_232DB3120(MEMORY[0x277D84F90]);

  v20 = sub_232DF1E1C(a1);
  sub_232DB0970(v17, v19);
  v21 = sub_232DD6BA4(2, v20);
  v23 = v22;

  LOBYTE(v20) = sub_232DB07B4(v17, v19, v21, v23);
  sub_232DB091C(v21, v23);
  sub_232DB091C(v17, v19);
  if (v20)
  {
    sub_232DB091C(v17, v19);
    return 2;
  }

  else
  {
    sub_232E01270();
    sub_232E01360();
    sub_232DB091C(v17, v19);
    (*(v7 + 8))(v10, v14);
    return 1;
  }
}

uint64_t sub_232DF2A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = a1;
  v84[2] = *MEMORY[0x277D85DE8];
  v12 = *(a1 + 32);
  v13 = v12 & 0x3F;
  v75 = ((1 << v12) + 63) >> 6;
  v14 = 8 * v75;

  if (v13 > 0xD)
  {
    goto LABEL_85;
  }

  while (2)
  {
    v78 = v6;
    v74 = &v69;
    MEMORY[0x28223BE20](v15);
    v76 = &v69 - ((v14 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v76, v14);
    v77 = 0;
    a2 = 0;
    v6 = v11 + 56;
    v16 = 1 << *(v11 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v14 = v17 & *(v11 + 56);
    v18 = (v16 + 63) >> 6;
    v81 = a5;
    v82 = a3;
    v80 = v11;
    while (v14)
    {
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v22 = v19 | (a2 << 6);
      v23 = *(v11 + 48);
      v79 = v22;
      v24 = (v23 + 16 * v22);
      a4 = *v24;
      v25 = v24[1];
      v26 = *(a3 + 16);

      if (v26 && (v27 = sub_232DD5634(a4, v25), (v28 & 1) != 0))
      {
        v29 = (*(a3 + 56) + 16 * v27);
        v30 = *v29;
        v31 = v29[1];
        sub_232DB0970(*v29, v31);
        if (!*(a5 + 16))
        {
          goto LABEL_17;
        }
      }

      else
      {
        v30 = 0;
        v31 = 0xF000000000000000;
        if (!*(a5 + 16))
        {
LABEL_17:
          v32 = 0;
          v33 = 0xF000000000000000;
          goto LABEL_23;
        }
      }

      v34 = v25;
      v35 = v14;
      v36 = v30;
      v37 = a4;
      a4 = v34;
      v38 = sub_232DD5634(v37, v34);
      if (v39)
      {
        v40 = (*(a5 + 56) + 16 * v38);
        v41 = *v40;
        v33 = v40[1];
        sub_232DB0970(*v40, v33);
        v32 = v41;
      }

      else
      {
        v32 = 0;
        v33 = 0xF000000000000000;
      }

      v30 = v36;
      v14 = v35;
LABEL_23:
      if (v31 >> 60 == 15)
      {
        if (v33 >> 60 == 15)
        {
          goto LABEL_6;
        }

        goto LABEL_69;
      }

      if (v33 >> 60 == 15)
      {
LABEL_69:
        a4 = v32;
        sub_232DB0E28(v30, v31);
        v63 = a4;
        v64 = v33;
LABEL_78:
        sub_232DB0E28(v63, v64);

        a5 = v81;
        a3 = v82;
        v11 = v80;
LABEL_79:
        *&v76[(v79 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v79;
        v47 = __OFADD__(v77++, 1);
        if (v47)
        {
          __break(1u);
LABEL_82:
          v66 = sub_232DD1508(v76, v75, v77, v11);

          return v66;
        }
      }

      else
      {
        v42 = v31 >> 62;
        v43 = v33 >> 62;
        if (v31 >> 62 == 3)
        {
          v44 = 0;
          if (!v30 && v31 == 0xC000000000000000 && v33 >> 62 == 3)
          {
            v44 = 0;
            if (!v32 && v33 == 0xC000000000000000)
            {
              sub_232DB0E28(0, 0xC000000000000000);
              goto LABEL_6;
            }
          }

LABEL_42:
          if (v43 <= 1)
          {
            goto LABEL_43;
          }

          goto LABEL_48;
        }

        if (v42 <= 1)
        {
          if (!v42)
          {
            v44 = BYTE6(v31);
            if (v43 <= 1)
            {
              goto LABEL_43;
            }

            goto LABEL_48;
          }

          LODWORD(v44) = HIDWORD(v30) - v30;
          if (__OFSUB__(HIDWORD(v30), v30))
          {
            goto LABEL_90;
          }

          v44 = v44;
          goto LABEL_42;
        }

        if (v42 == 2)
        {
          v46 = *(v30 + 16);
          v45 = *(v30 + 24);
          v47 = __OFSUB__(v45, v46);
          v44 = v45 - v46;
          if (v47)
          {
            goto LABEL_91;
          }

          goto LABEL_42;
        }

        v44 = 0;
        if (v43 <= 1)
        {
LABEL_43:
          if (v43)
          {
            LODWORD(v48) = HIDWORD(v32) - v32;
            if (__OFSUB__(HIDWORD(v32), v32))
            {
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
              __break(1u);
LABEL_94:
              __break(1u);
LABEL_95:
              __break(1u);
            }

            v48 = v48;
          }

          else
          {
            v48 = BYTE6(v33);
          }

          goto LABEL_50;
        }

LABEL_48:
        if (v43 != 2)
        {
          if (!v44)
          {
            goto LABEL_56;
          }

LABEL_77:
          sub_232DB0E28(v32, v33);
          v63 = v30;
          v64 = v31;
          goto LABEL_78;
        }

        v50 = *(v32 + 16);
        v49 = *(v32 + 24);
        v47 = __OFSUB__(v49, v50);
        v48 = v49 - v50;
        if (v47)
        {
          goto LABEL_89;
        }

LABEL_50:
        if (v44 != v48)
        {
          goto LABEL_77;
        }

        if (v44 < 1)
        {
LABEL_56:
          sub_232DB0E28(v32, v33);
LABEL_6:
          sub_232DB0E28(v30, v31);

          a5 = v81;
          a3 = v82;
          v11 = v80;
        }

        else
        {
          if (v42 > 1)
          {
            v73 = v32;
            if (v42 == 2)
            {
              v52 = *(v30 + 16);
              v70 = *(v30 + 24);
              v71 = v52;
              v72 = v30;
              sub_232DD8DCC(v30, v31);
              v53 = v73;
              sub_232DD8DCC(v73, v33);
              sub_232DD8DCC(v53, v33);
              v54 = sub_232E00A30();
              if (v54)
              {
                v55 = v54;
                v56 = sub_232E00A60();
                v57 = v71;
                if (__OFSUB__(v71, v56))
                {
                  goto LABEL_94;
                }

                v69 = v71 - v56 + v55;
              }

              else
              {
                v69 = 0;
                v57 = v71;
              }

              if (__OFSUB__(v70, v57))
              {
                goto LABEL_93;
              }

              sub_232E00A50();
              v61 = v69;
              goto LABEL_73;
            }

            memset(v84, 0, 14);
            sub_232DD8DCC(v30, v31);
            v51 = v73;
            sub_232DD8DCC(v73, v33);
            sub_232DD8DCC(v51, v33);
          }

          else
          {
            if (v42)
            {
              v73 = v32;
              v70 = v30;
              v71 = (v30 >> 32) - v30;
              if (v30 >> 32 < v30)
              {
                goto LABEL_92;
              }

              v72 = v30;
              sub_232DD8DCC(v30, v31);
              v58 = v73;
              sub_232DD8DCC(v73, v33);
              sub_232DD8DCC(v58, v33);
              v59 = sub_232E00A30();
              if (v59)
              {
                v60 = sub_232E00A60();
                if (__OFSUB__(v70, v60))
                {
                  goto LABEL_95;
                }

                v59 += v70 - v60;
              }

              sub_232E00A50();
              v61 = v59;
LABEL_73:
              v51 = v73;
              v65 = v78;
              sub_232DAD698(v61, v73, v33, v84);
              v78 = v65;
              if (v65)
              {
LABEL_96:
                result = sub_232DB0E28(v51, v33);
                __break(1u);
                return result;
              }

              sub_232DB0E28(v51, v33);
              sub_232DB0E28(v51, v33);
              v30 = v72;
              sub_232DB0E28(v72, v31);
              sub_232DB0E28(v51, v33);
              a4 = LOBYTE(v84[0]);
              goto LABEL_75;
            }

            v84[0] = v30;
            LOWORD(v84[1]) = v31;
            BYTE2(v84[1]) = BYTE2(v31);
            BYTE3(v84[1]) = BYTE3(v31);
            BYTE4(v84[1]) = BYTE4(v31);
            BYTE5(v84[1]) = BYTE5(v31);
            v73 = v84 + BYTE6(v31);
            v51 = v32;
            sub_232DD8DCC(v30, v31);
            sub_232DD8DCC(v51, v33);
            sub_232DD8DCC(v51, v33);
          }

          v62 = v78;
          sub_232DAD698(v84, v51, v33, &v83);
          v78 = v62;
          if (v62)
          {
            goto LABEL_96;
          }

          sub_232DB0E28(v51, v33);
          sub_232DB0E28(v51, v33);
          sub_232DB0E28(v30, v31);
          sub_232DB0E28(v51, v33);
          a4 = v83;
LABEL_75:
          sub_232DB0E28(v30, v31);

          a5 = v81;
          a3 = v82;
          v11 = v80;
          if ((a4 & 1) == 0)
          {
            goto LABEL_79;
          }
        }
      }
    }

    v20 = a2;
    while (1)
    {
      a2 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (a2 >= v18)
      {
        goto LABEL_82;
      }

      v21 = *(v6 + 8 * a2);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_85:

    if (swift_stdlib_isStackAllocationSafe())
    {

      continue;
    }

    break;
  }

  v68 = swift_slowAlloc();

  v66 = sub_232DF1D64(v68, v75, v11, a2, a3, a4, a5);

  MEMORY[0x238396AF0](v68, -1, -1);

  return v66;
}

unint64_t sub_232DF3230(uint64_t a1)
{
  *(a1 + 8) = sub_232DD24D8();
  result = sub_232DD2484();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_232DF3260()
{
  result = qword_2814E8470;
  if (!qword_2814E8470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8470);
  }

  return result;
}

uint64_t sub_232DF32B4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77E0, &qword_232E080F0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_232DB3120(MEMORY[0x277D84F90]);

  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_232DF3260();
  sub_232E01C00();
  if (!v1)
  {
    v10 = 0;
    v7 = sub_232E01A40();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD76B0, &qword_232E07910);
    v9[15] = 1;
    sub_232DD90E4(&qword_2814E7C48, sub_232DD9168, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_232E01A30();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_232DF34E4()
{
  result = qword_27DDD77E8;
  if (!qword_27DDD77E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD77E8);
  }

  return result;
}

unint64_t sub_232DF353C()
{
  result = qword_2814E8460;
  if (!qword_2814E8460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8460);
  }

  return result;
}

unint64_t sub_232DF3594()
{
  result = qword_2814E8468;
  if (!qword_2814E8468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8468);
  }

  return result;
}

uint64_t static TipKitContentManager.updateContent(meta:documents:clientConditions:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DF369C;

  return sub_232DF4B78(a1, a2);
}

uint64_t sub_232DF369C(char a1)
{
  v7 = *v2;

  v4 = *(v7 + 8);
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1 & 1;
  }

  return v4(v5);
}

uint64_t sub_232DF3944(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock)
{
  v4[2] = _Block_copy(aBlock);
  if (a1)
  {
    a1 = sub_232E01470();
  }

  v4[3] = a1;
  if (a2)
  {
    a2 = sub_232E01470();
  }

  v4[4] = a2;
  if (a3)
  {
    v8 = sub_232E01700();
  }

  else
  {
    v8 = 0;
  }

  v4[5] = v8;
  v9 = swift_task_alloc();
  v4[6] = v9;
  *v9 = v4;
  v9[1] = sub_232DF3A90;

  return sub_232DF4B78(a1, a2);
}

uint64_t sub_232DF3A90(char a1)
{
  v3 = v1;
  v6 = *v2;
  v5 = *v2;
  v7 = *v2;

  v8 = *(v5 + 16);

  if (v3)
  {
    v9 = sub_232E00AD0();

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

id TipKitContentManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TipKitContentManager.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id TipKitContentManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_232DF3D3C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_232DA7C78;

  return v6();
}

uint64_t sub_232DF3E24(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_232DA72F4;

  return v7();
}

uint64_t sub_232DF3F0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v23 - v10;
  sub_232DA7734(a3, v23 - v10);
  v12 = sub_232E016B0();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_232DA77A4(v11);
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

  sub_232E016A0();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_232E01630();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_232E01520() + 32;
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

    sub_232DA77A4(a3);

    return v21;
  }

LABEL_8:
  sub_232DA77A4(a3);
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

uint64_t sub_232DF4208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_232DD5634(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_232DC27F4();
      v13 = v21;
      goto LABEL_8;
    }

    sub_232DC1518(v18, a5 & 1);
    v13 = sub_232DD5634(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_232E01B40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    *v24 = a1;
    v24[1] = a2;
  }

  else
  {
    sub_232DF8B54(v13, a3, a4, a1, a2, v23);
  }
}

uint64_t sub_232DF4398(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void (*a5)(void), void (*a6)(uint64_t, void), void (*a7)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v11 = v7;
  v16 = *v7;
  v17 = sub_232DD5634(a2, a3);
  v19 = *(v16 + 16);
  v20 = (v18 & 1) == 0;
  v21 = __OFADD__(v19, v20);
  v22 = v19 + v20;
  if (v21)
  {
    __break(1u);
    goto LABEL_16;
  }

  v23 = v18;
  v24 = *(v16 + 24);
  if (v24 < v22 || (a4 & 1) == 0)
  {
    if (v24 >= v22 && (a4 & 1) == 0)
    {
      v25 = v17;
      a5();
      v17 = v25;
      goto LABEL_8;
    }

    a6(v22, a4 & 1);
    v17 = sub_232DD5634(a2, a3);
    if ((v23 & 1) != (v26 & 1))
    {
LABEL_16:
      sub_232E01B40();
      __break(1u);
      return MEMORY[0x2821F96F8]();
    }
  }

LABEL_8:
  v27 = *v11;
  if (v23)
  {
    *(*(v27 + 56) + 8 * v17) = a1;

    return MEMORY[0x2821F96F8]();
  }

  a7(v17, a2, a3, a1, v27);
}

uint64_t sub_232DF4500(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_232DD5634(a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_232DC2ADC();
      v13 = v21;
      goto LABEL_8;
    }

    sub_232DC1A88(v18, a5 & 1);
    v13 = sub_232DD5634(a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = sub_232E01B40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 16 * v13);
    v25 = *v24;
    v26 = v24[1];
    *v24 = a1;
    v24[1] = a2;

    return sub_232DB091C(v25, v26);
  }

  else
  {
    sub_232DF8B54(v13, a3, a4, a1, a2, v23);
  }
}

_OWORD *sub_232DF4650(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_232DD5634(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_232DC2C60();
      v11 = v19;
      goto LABEL_8;
    }

    sub_232DC1D44(v16, a4 & 1);
    v11 = sub_232DD5634(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_232E01B40();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    __swift_destroy_boxed_opaque_existential_1(v22);

    return sub_232D734CC(a1, v22);
  }

  else
  {
    sub_232DF8BEC(v11, a2, a3, a1, v21);
  }
}

unint64_t *sub_232DF47A0(uint64_t a1)
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
    result = sub_232DF4900(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_232DF4B00(v8, v4, v2);
  result = MEMORY[0x238396AF0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_232DF4900(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v20 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v21 = 0;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_12:
    v13 = v10 | (v4 << 6);
    v14 = *(*(a3 + 56) + 8 * v13);
    if (*(v14 + 16))
    {

      v15 = sub_232DD5634(0xD000000000000010, 0x8000000232E0E630);
      if (v16 & 1) != 0 && (sub_232DAB730(*(v14 + 56) + 32 * v15, v22), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7800, &qword_232E082B0), (swift_dynamicCast()))
      {
        v18 = *(v23 + 16);

        if (v18)
        {
          *(v20 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
          if (__OFADD__(v21++, 1))
          {
            __break(1u);
            return sub_232DFA33C(v20, a2, v21, a3);
          }
        }
      }

      else
      {
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_232DFA33C(v20, a2, v21, a3);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232DF4B00(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_232DF4900(result, a2, a3);

    return v6;
  }

  return result;
}

uint64_t sub_232DF4B78(uint64_t a1, uint64_t a2)
{
  v2[33] = a1;
  v2[34] = a2;
  v3 = sub_232E012A0();
  v2[35] = v3;
  v2[36] = *(v3 - 8);
  v2[37] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DF4C38, 0, 0);
}

uint64_t sub_232DF4C38()
{
  v1 = *(v0 + 264);
  if (v1)
  {
    if (*(v1 + 16))
    {
      v2 = sub_232DD5634(0x79726576696C6564, 0xEC0000006F666E49);
      if (v3)
      {
        sub_232DAB730(*(v1 + 56) + 32 * v2, v0 + 16);
        v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77F0, &qword_232E08298);
        if (swift_dynamicCast())
        {
          v5 = *(v0 + 272);
          v6 = *(v0 + 240);
          if (v5)
          {
            if (*(v5 + 16))
            {
              v7 = sub_232DD5634(0x746E656D75636F64, 0xE900000000000073);
              if (v8)
              {
                sub_232DAB730(*(v5 + 56) + 32 * v7, v0 + 48);
                v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD77F8, &unk_232E082A0);
                if (swift_dynamicCast())
                {
                  v10 = *(v0 + 248);
                  v32 = sub_232DF47A0(v6);

                  v12 = *(v10 + 16);
                  v33 = v9;
                  if (!v12)
                  {
                    v34 = MEMORY[0x277D84F90];
                    goto LABEL_34;
                  }

                  v13 = 0;
                  v34 = MEMORY[0x277D84F90];
                  while (1)
                  {
                    v14 = v13;
                    while (1)
                    {
                      if (v14 >= *(v10 + 16))
                      {
                        __break(1u);
                        return MEMORY[0x2821D93D0](isUniquelyReferenced_nonNull_native);
                      }

                      v15 = *(v10 + 32 + 8 * v14);
                      if (*(v15 + 16))
                      {
                        break;
                      }

LABEL_13:
                      if (v12 == ++v14)
                      {
                        goto LABEL_34;
                      }
                    }

                    v16 = sub_232DD5634(0x746E65746E6F63, 0xE700000000000000);
                    if ((v17 & 1) == 0)
                    {
                      goto LABEL_12;
                    }

                    sub_232DAB730(*(v15 + 56) + 32 * v16, v0 + 80);
                    if ((swift_dynamicCast() & 1) == 0)
                    {
                      goto LABEL_12;
                    }

                    if (!*(*(v0 + 256) + 16))
                    {
                      break;
                    }

                    sub_232DD5634(1768843629, 0xE400000000000000);
                    if ((v18 & 1) == 0)
                    {
                      break;
                    }

                    v19 = v34;
                    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                    v36 = v34;
                    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                    {
                      isUniquelyReferenced_nonNull_native = sub_232DF8F50(0, *(v34 + 16) + 1, 1);
                      v19 = v34;
                    }

                    v21 = *(v19 + 16);
                    v20 = *(v19 + 24);
                    v22 = v21 + 1;
                    if (v21 >= v20 >> 1)
                    {
                      v35 = v21 + 1;
                      v31 = *(v19 + 16);
                      isUniquelyReferenced_nonNull_native = sub_232DF8F50((v20 > 1), v21 + 1, 1);
                      v22 = v35;
                      v19 = v36;
                      v21 = v31;
                    }

                    v13 = v14 + 1;
                    *(v19 + 16) = v22;
                    v34 = v19;
                    *(v19 + 8 * v21 + 32) = v15;
                    if (v12 - 1 == v14)
                    {
LABEL_34:

                      *(v0 + 136) = v4;
                      *(v0 + 112) = v32;
                      sub_232D734CC((v0 + 112), (v0 + 144));
                      v28 = swift_isUniquelyReferenced_nonNull_native();
                      sub_232DF4650((v0 + 144), 0x79726576696C6564, 0xEC0000006F666E49, v28);
                      *(v0 + 200) = v33;
                      *(v0 + 176) = v34;
                      sub_232D734CC((v0 + 176), (v0 + 208));
                      v29 = swift_isUniquelyReferenced_nonNull_native();
                      sub_232DF4650((v0 + 208), 0x746E656D75636F64, 0xE900000000000073, v29);
                      v30 = sub_232E01450();
                      *(v0 + 304) = v30;

                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75D0, &qword_232E07068);
                      sub_232E01460();
                      *(v0 + 312) = 0;

                      goto LABEL_29;
                    }
                  }

LABEL_12:

                  goto LABEL_13;
                }
              }
            }
          }
        }
      }
    }
  }

  v24 = *(v0 + 288);
  v23 = *(v0 + 296);
  v25 = *(v0 + 280);
  sub_232E01260();
  sub_232E01370();
  (*(v24 + 8))(v23, v25);
LABEL_29:

  v26 = *(v0 + 8);

  return v26(0);
}

uint64_t sub_232DF5164()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_232DF52F0;
  }

  else
  {

    v2 = sub_232DF5280;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DF5280()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_232DF52F0()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t sub_232DF5390()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_232DA72F4;

  return sub_232DF3944(v2, v3, v4, v5);
}

uint64_t sub_232DF5458(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DA78F8(a1, v4);
}

uint64_t sub_232DF5510(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DA78F8(a1, v4);
}

uint64_t sub_232DF55C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_232DA7734(a3, v25 - v10);
  v12 = sub_232E016B0();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_232DA77A4(v11);
  }

  else
  {
    sub_232E016A0();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_232E01630();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_232E01520() + 32;
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

      sub_232DA77A4(a3);

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

  sub_232DA77A4(a3);
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

uint64_t sub_232DF5888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[24] = a5;
  v6[25] = a6;
  v6[23] = a4;
  v7 = sub_232E012A0();
  v6[26] = v7;
  v6[27] = *(v7 - 8);
  v6[28] = swift_task_alloc();
  v6[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_232DF5958, 0, 0);
}

uint64_t sub_232DF5958()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[30] = v1;
  if (v1)
  {
    v2 = v1;
    v0[2] = v0;
    v0[7] = v0 + 21;
    v0[3] = sub_232DF5D08;
    v3 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7808, &qword_232E08318);
    v0[10] = MEMORY[0x277D85DD0];
    v0[11] = 1107296256;
    v0[12] = sub_232DF62F0;
    v0[13] = &block_descriptor_11;
    v0[14] = v3;
    [v2 accountsWithCompletion_];

    return MEMORY[0x282200938](v0 + 2);
  }

  else
  {
    v4 = v0[23];
    v25 = [v4 BOOLValue];
    sub_232E01290();
    v5 = 0xE000000000000000;
    sub_232E018F0();
    v6 = [v4 name];
    if (v6)
    {
      v7 = v6;
      v8 = sub_232E014D0();
      v5 = v9;
    }

    else
    {
      v8 = 0;
    }

    v10 = v0[23];
    MEMORY[0x238395970](v8, v5);

    MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
    v11 = [v10 targetContext];
    if (v11)
    {
      v12 = v11;
      sub_232E01470();
    }

    else
    {
      sub_232DB3428(MEMORY[0x277D84F90]);
    }

    v13 = v0[29];
    v14 = v0[30];
    v16 = v0[26];
    v15 = v0[27];
    v17 = v0[24];
    v18 = sub_232E01480();
    v20 = v19;

    MEMORY[0x238395970](v18, v20);

    MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
    if (v25)
    {
      v21 = 0x65736C6166;
    }

    else
    {
      v21 = 1702195828;
    }

    if (v25)
    {
      v22 = 0xE500000000000000;
    }

    else
    {
      v22 = 0xE400000000000000;
    }

    MEMORY[0x238395970](v21, v22);

    sub_232E01350();

    (*(v15 + 8))(v13, v16);
    v17(v25 ^ 1, 0);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_232DF5D08()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_232DF617C;
  }

  else
  {
    v2 = sub_232DF5E18;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_232DF5E18()
{
  v1 = *(v0 + 168);

  if (v1)
  {
    if (v1 >> 62)
    {
      goto LABEL_16;
    }

    for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_232E019C0())
    {
      v3 = 0;
      while (1)
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x238395D50](v3, v1);
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_15;
          }

          v4 = *(v1 + 8 * v3 + 32);
        }

        v5 = v4;
        v6 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          break;
        }

        if ([v4 type] == 1)
        {

          v7 = 0;
          goto LABEL_19;
        }

        ++v3;
        if (v6 == i)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_15:
      __break(1u);
LABEL_16:
      ;
    }

LABEL_17:
  }

  v7 = 1;
LABEL_19:
  v8 = *(v0 + 184);
  v9 = [v8 BOOLValue];
  sub_232E01290();
  v10 = 0xE000000000000000;
  sub_232E018F0();
  v11 = [v8 name];
  if (v11)
  {
    v12 = v11;
    v13 = sub_232E014D0();
    v10 = v14;
  }

  else
  {
    v13 = 0;
  }

  v15 = *(v0 + 184);
  MEMORY[0x238395970](v13, v10);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v16 = [v15 targetContext];
  if (v16)
  {
    v17 = v16;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v18 = v7 ^ v9;
  v19 = *(v0 + 232);
  v30 = *(v0 + 240);
  v20 = *(v0 + 208);
  v21 = *(v0 + 216);
  v22 = *(v0 + 192);
  v23 = sub_232E01480();
  v25 = v24;

  MEMORY[0x238395970](v23, v25);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if (v18)
  {
    v26 = 1702195828;
  }

  else
  {
    v26 = 0x65736C6166;
  }

  if (v18)
  {
    v27 = 0xE400000000000000;
  }

  else
  {
    v27 = 0xE500000000000000;
  }

  MEMORY[0x238395970](v26, v27);

  sub_232E01350();

  (*(v21 + 8))(v19, v20);
  v22(v18, 0);

  v28 = *(v0 + 8);

  return v28();
}

uint64_t sub_232DF617C(uint64_t a1)
{
  v3 = v1[30];
  v2 = v1[31];
  v5 = v1[27];
  v4 = v1[28];
  v6 = v1[26];
  v7 = v1[24];
  swift_willThrow();

  sub_232E01250();
  sub_232E018F0();

  swift_getErrorValue();
  v8 = sub_232E01B50();
  MEMORY[0x238395970](v8);

  sub_232E01380();

  (*(v5 + 8))(v4, v6);
  v9 = v2;
  v7(0, v2);

  v10 = v1[1];

  return v10();
}

uint64_t sub_232DF62F0(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    v6 = swift_allocError();
    *v7 = a3;
    v8 = a3;

    return MEMORY[0x282200958](v5, v6);
  }

  else
  {
    v9 = 0;
    if (a2)
    {
      sub_232DF6A6C();
      v9 = sub_232E015D0();
    }

    **(*(v5 + 64) + 40) = v9;

    return swift_continuation_throwingResume();
  }
}

id WalletHasPaymentMethodsValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id WalletHasPaymentMethodsValidation.init(targetContext:)(uint64_t a1)
{
  v2 = sub_232E01450();

  v5.receiver = v1;
  v5.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithTargetContext_, v2);

  return v3;
}

id WalletHasPaymentMethodsValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id WalletHasPaymentMethodsValidation.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  return objc_msgSendSuper2(&v2, sel_init);
}

id WalletHasPaymentMethodsValidation.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WalletHasPaymentMethodsValidation();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_232DF681C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_232DA72F4;

  return sub_232DF5888(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_232DF68E4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA7C78;

  return sub_232DA78F8(a1, v4);
}

uint64_t sub_232DF699C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_232DA72F4;

  return sub_232DA78F8(a1, v4);
}

unint64_t sub_232DF6A6C()
{
  result = qword_27DDD7810;
  if (!qword_27DDD7810)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DDD7810);
  }

  return result;
}

id CloudDeviceHasPhoneOrPadValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id CloudDeviceHasPhoneOrPadValidation.init(targetContext:)(uint64_t a1)
{
  v2 = sub_232E01450();

  v5.receiver = v1;
  v5.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithTargetContext_, v2);

  return v3;
}

id CloudDeviceHasPhoneOrPadValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CloudDeviceHasPhoneOrPadValidation.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id CloudDeviceHasPhoneOrPadValidation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for CloudDeviceHasPhoneOrPadValidation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232DF6DDC(void *a1, uint64_t a2)
{
  v33 = a2;
  v3 = sub_232E012A0();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() idsDevices];
  sub_232DA8CC4();
  v7 = sub_232E015D0();

  if (v7 >> 62)
  {
LABEL_31:
    v8 = sub_232E019C0();
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = 0;
  do
  {
    v10 = v9;
    if (v8 == v9)
    {
      break;
    }

    if ((v7 & 0xC000000000000001) != 0)
    {
      v11 = MEMORY[0x238395D50](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_30;
      }

      v11 = *(v7 + 8 * v9 + 32);
    }

    v12 = v11;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v13 = [v11 deviceType];

    v9 = v10 + 1;
  }

  while (v13 != 2 && v13 != 4);

  v15 = [a1 BOOLValue];
  sub_232E01290();
  v16 = 0xE000000000000000;
  v34 = 0;
  v35 = 0xE000000000000000;
  sub_232E018F0();
  v17 = [a1 name];
  if (v17)
  {
    v18 = v17;
    v19 = sub_232E014D0();
    v16 = v20;
  }

  else
  {
    v19 = 0;
  }

  MEMORY[0x238395970](v19, v16);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v21 = [a1 targetContext];
  if (v21)
  {
    v22 = v21;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v23 = (v8 != v10) ^ v15;
  v24 = sub_232E01480();
  v26 = v25;

  MEMORY[0x238395970](v24, v26);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if (v23)
  {
    v27 = 0x65736C6166;
  }

  else
  {
    v27 = 1702195828;
  }

  if (v23)
  {
    v28 = 0xE500000000000000;
  }

  else
  {
    v28 = 0xE400000000000000;
  }

  MEMORY[0x238395970](v27, v28);

  sub_232E01350();

  (*(v31 + 8))(v5, v32);
  return (*(v33 + 16))(v33, v23 ^ 1u, 0);
}

uint64_t sub_232DF71D8()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_232DF7208()
{
  sub_232DF71D8();

  return MEMORY[0x282200960](v0);
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_232DF72D4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_232DF7328(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_232DF7388(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v13 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7818, &qword_232E08598);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_232DF78E8();
  sub_232E01C10();
  LOBYTE(v14) = 0;
  sub_232E01A90();
  if (!v4)
  {
    v14 = a3;
    v15 = v13;
    v16 = 1;
    sub_232DB0970(a3, v13);
    sub_232DD8E74();
    sub_232E01A80();
    sub_232DB091C(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_232DF7524(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6873616863;
  }

  else
  {
    v3 = 118;
  }

  if (v2)
  {
    v4 = 0xE100000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6873616863;
  }

  else
  {
    v5 = 118;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE100000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_232E01AD0();
  }

  return v8 & 1;
}

uint64_t sub_232DF75BC()
{
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DF7630(uint64_t a1)
{
  sub_232E01530();
}

uint64_t sub_232DF7690(uint64_t a1)
{
  sub_232E01BB0();
  sub_232E01530();

  return sub_232E01BE0();
}

uint64_t sub_232DF7700@<X0>(char *a2@<X8>)
{
  v3 = sub_232E01A10();

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

void sub_232DF7760(uint64_t *a1@<X8>)
{
  v2 = 118;
  if (*v1)
  {
    v2 = 0x6873616863;
  }

  v3 = 0xE100000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_232DF7790()
{
  if (*v0)
  {
    return 0x6873616863;
  }

  else
  {
    return 118;
  }
}

uint64_t sub_232DF77BC@<X0>(char *a3@<X8>)
{
  v4 = sub_232E01A10();

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

uint64_t sub_232DF7820(uint64_t a1)
{
  v2 = sub_232DF78E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_232DF785C(uint64_t a1)
{
  v2 = sub_232DF78E8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_232DF7898@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = sub_232DF793C(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

unint64_t sub_232DF78E8()
{
  result = qword_2814E8230[0];
  if (!qword_2814E8230[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2814E8230);
  }

  return result;
}

uint64_t sub_232DF793C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7820, &qword_232E085A0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_232DF78E8();
  sub_232E01C00();
  if (!v1)
  {
    v9[16] = 0;
    v7 = sub_232E01A40();
    v9[15] = 1;
    sub_232DD9168();
    sub_232E01A30();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v7;
}

unint64_t sub_232DF7B14()
{
  result = qword_27DDD7828;
  if (!qword_27DDD7828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DDD7828);
  }

  return result;
}

unint64_t sub_232DF7B6C()
{
  result = qword_2814E8220;
  if (!qword_2814E8220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8220);
  }

  return result;
}

unint64_t sub_232DF7BC4()
{
  result = qword_2814E8228;
  if (!qword_2814E8228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2814E8228);
  }

  return result;
}

uint64_t sub_232DF7C18(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  if (v9)
  {
    while (1)
    {
      v13 = v12;
LABEL_8:
      v14 = (*(a3 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v9)))));
      v15 = v14[1];
      v16[0] = *v14;
      v16[1] = v15;

      a1(v16);
      if (v3)
      {
        break;
      }

      v9 &= v9 - 1;

      v12 = v13;
      if (!v9)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
      }

      v9 = *(v6 + 8 * v13);
      ++v12;
      if (v9)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_232DF7D50(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x277D84F90];
  sub_232DF9030(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_232E01870();
  v6 = result;
  v7 = 0;
  v24 = *(a1 + 36);
  v22 = v1;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v9 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v10 = (*(a1 + 48) + 16 * v6);
    v11 = v10[1];
    v23 = *v10;
    v12 = *(v25 + 16);
    v13 = *(v25 + 24);

    if (v12 >= v13 >> 1)
    {
      result = sub_232DF9030((v13 > 1), v12 + 1, 1);
    }

    *(v25 + 16) = v12 + 1;
    v14 = (v25 + 24 * v12);
    v14[4] = v23;
    v14[5] = v11;
    v14[6] = 0;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_24;
    }

    v4 = a1 + 64;
    v15 = *(a1 + 64 + 8 * v9);
    if ((v15 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    if (v24 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (v6 & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 72 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          result = sub_232DFC9C4(v6, v24, 0);
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      result = sub_232DFC9C4(v6, v24, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_232DF7F9C(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_232DF804C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v21 = a2;
  v6 = sub_232E00EA0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a4;
  v11 = *(v10 + 16);
  v19[1] = v7 + 16;
  v20 = v11;
  v12 = (v7 + 8);

  v14 = 0;
  while (1)
  {
    v16 = v14;
    if (v20 == v14)
    {
      goto LABEL_8;
    }

    if (v14 >= *(v10 + 16))
    {
      break;
    }

    (*(v7 + 16))(v9, v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v14, v6);
    if (sub_232E00E90() == a1 && v17 == v21)
    {

      (*v12)(v9, v6);
LABEL_8:
      v18 = v20 == v16;

      return v18;
    }

    ++v14;
    v15 = sub_232E01AD0();

    result = (*v12)(v9, v6);
    if (v15)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t static TPSTipsManager.presentReentryNotificationIfNeeded()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7278, &qword_232E07570);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_232E016B0();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  sub_232DF55C8(0, 0, v2, &unk_232E08700, v4);
}

uint64_t sub_232DF8584()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232DA72F4;

  return MEMORY[0x2821CF938](1);
}

void sub_232DF8708(uint64_t *a1, uint64_t a2, uint64_t a3, id a4, id a5, void *a6)
{
  if (*(a2 + 16))
  {
    v41 = a1[1];
    v42 = *a1;
    v11 = sub_232DD5634(*a1, v41);
    if (v12)
    {
      if (a3)
      {
        if (*(a3 + 16))
        {
          v13 = (*(a2 + 56) + 16 * v11);
          v14 = *v13;
          v15 = v13[1];

          v16 = sub_232DD5634(v14, v15);
          v18 = v17;

          if (v18)
          {
            v43[0] = *(*(a3 + 56) + 8 * v16);
            swift_unknownObjectRetain();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74A8, &unk_232E065B0);
            if (swift_dynamicCast())
            {
              sub_232DC8988(v43[5]);

              v19 = objc_allocWithZone(TPSContextualInfo);
              v20 = sub_232E01450();

              v21 = [v19 initWithDictionary_];

              if (v21)
              {
                v22 = [v21 usageEvents];
                if (!v22)
                {

                  return;
                }

                v23 = v22;
                sub_232DB3688(0, &qword_2814E7BE0, 0x277D71710);
                v24 = sub_232E015D0();

                v25 = v24;
                if (v24 >> 62)
                {
                  goto LABEL_26;
                }

                v26 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v26)
                {
LABEL_11:
                  v36 = v21;
                  sub_232E01240();
                  if (v26 >= 1)
                  {
                    v27 = 0;
                    v28 = v25;
                    v39 = v25 & 0xC000000000000001;
                    v40 = a6;
                    v37 = v26;
                    v38 = v25;
                    while (1)
                    {
                      if (v39)
                      {
                        v29 = MEMORY[0x238395D50](v27, v28);
                      }

                      else
                      {
                        v29 = *(v28 + 8 * v27 + 32);
                      }

                      v30 = v29;
                      v31 = objc_allocWithZone(MEMORY[0x277CCA970]);
                      v32 = a4;
                      a6 = sub_232E00CA0();
                      a4 = a5;
                      v33 = sub_232E00CA0();
                      a5 = [v31 initWithStartDate:a6 endDate:v33];

                      v21 = MEMORY[0x238395650](v30, a5);
                      v25 = v40;
                      v35 = sub_232DF8A80(v43, v42, v41);
                      if (*(v34 + 8) == 1)
                      {
                        (v35)(v43, 0);
                        a5 = a4;
                      }

                      else
                      {
                        if (v21 < 0)
                        {
                          __break(1u);
LABEL_25:
                          __break(1u);
LABEL_26:
                          v26 = sub_232E019C0();
                          if (!v26)
                          {
                            goto LABEL_27;
                          }

                          goto LABEL_11;
                        }

                        if (__OFADD__(*v34, v21))
                        {
                          goto LABEL_25;
                        }

                        a5 = a4;
                        *v34 += v21;
                        (v35)(v43, 0);
                      }

                      a4 = v32;
                      ++v27;

                      v28 = v38;
                      if (v37 == v27)
                      {

                        return;
                      }
                    }
                  }

                  __break(1u);
                }

                else
                {
LABEL_27:
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t (*sub_232DF8A80(uint64_t **a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_232DFB014(v6, a2, a3);
  return sub_232DF8B08;
}

void sub_232DF8B08(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

unint64_t sub_232DF8B54(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

unint64_t sub_232DF8BA4(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

_OWORD *sub_232DF8BEC(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_232D734CC(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

void sub_232DF8C80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t *a5, void *a6)
{
  v6 = a4 >> 1;
  v7 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v7)
  {
    if (v7 < 1)
    {
      if (v6 != a3)
      {
LABEL_7:
        sub_232DB3688(0, a5, a6);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD74D8, &qword_232E06820);
      v11 = swift_allocObject();
      v12 = _swift_stdlib_malloc_size(v11);
      v13 = v12 - 32;
      if (v12 < 32)
      {
        v13 = v12 - 25;
      }

      v11[2] = v7;
      v11[3] = (2 * (v13 >> 3)) | 1;
      if (v6 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_232DF8D90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7390, &qword_232E06218);
      v7 = *(sub_232E00EA0() - 8);
      v8 = *(v7 + 72);
      v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      if (!v8)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v11 - v9 == 0x8000000000000000 && v8 == -1)
      {
        goto LABEL_16;
      }

      v10[2] = v5;
      v10[3] = 2 * ((v11 - v9) / v8);
      if (v4 != a3)
      {
LABEL_10:
        sub_232E00EA0();
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void *sub_232DF8F30(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE380(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8F50(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE3A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_232DF8F70(char *a1, int64_t a2, char a3)
{
  result = sub_232DAE3C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_232DF8F90(char *a1, int64_t a2, char a3)
{
  result = sub_232DAE4D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8FB0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE5E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8FD0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE60C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF8FF0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE630(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF9010(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE654(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_232DF9030(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_232DAE7AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_232DF9050(void *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_232DB02B4(v2);
  }

  v3 = v2[2];
  v20[0] = (v2 + 4);
  v20[1] = v3;
  result = sub_232E01AA0();
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 8;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v2[3 * i + 6];
        v12 = v9;
        v13 = v8;
        do
        {
          if (*(v13 - 2) >= v11)
          {
            break;
          }

          v14 = *(v13 - 2);
          v15 = *(v13 - 2);
          *(v13 - 3) = *v13;
          v13 -= 3;
          v16 = v13[2];
          v13[4] = v15;
          *(v13 + 1) = v14;
          *(v13 - 1) = v16;
          v13[1] = v11;
        }

        while (!__CFADD__(v12++, 1));
        v8 += 3;
        --v9;
      }
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73A0, &qword_232E06228);
      v7 = sub_232E01600();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x277D84F90];
    }

    v18[0] = v7 + 32;
    v18[1] = v6;
    sub_232DF91C0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_232DF91C0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v92 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x277D84F90];
LABEL_88:
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_232DAFB5C(v7);
      v7 = result;
    }

    v84 = (v7 + 16);
    v85 = *(v7 + 16);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = (v7 + 16 * v85);
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_232DF977C((*a3 + 24 * *v86), (*a3 + 24 * *v88), *a3 + 24 * v89, v93);
        if (v4)
        {
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        v86[1] = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        result = memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v6 = 0;
  v7 = MEMORY[0x277D84F90];
  v91 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 24 * v6 + 16);
      v10 = 24 * v8;
      v11 = *a3 + 24 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 64);
      v15 = v9;
      while (v5 != v13)
      {
        v16 = *v14;
        v14 += 3;
        v17 = (v12 < v9) ^ (v15 >= v16);
        ++v13;
        v15 = v16;
        if ((v17 & 1) == 0)
        {
          v6 = v13 - 1;
          if (v12 >= v9)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v12 >= v9)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v18 = 24 * v6 - 8;
        v19 = v6;
        v20 = v8;
        do
        {
          if (v20 != --v19)
          {
            v26 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v21 = (v26 + v10);
            v22 = (v26 + v18);
            v23 = *v21;
            v24 = *(v21 + 2);
            v25 = *v22;
            *v21 = *(v22 - 1);
            *(v21 + 2) = v25;
            *(v22 - 1) = v23;
            *v22 = v24;
          }

          ++v20;
          v18 -= 24;
          v10 += 24;
        }

        while (v20 < v19);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_232DADA58(0, *(v7 + 16) + 1, 1, v7);
      v7 = result;
    }

    v37 = *(v7 + 16);
    v36 = *(v7 + 24);
    v38 = v37 + 1;
    if (v37 >= v36 >> 1)
    {
      result = sub_232DADA58((v36 > 1), v37 + 1, 1, v7);
      v7 = result;
    }

    *(v7 + 16) = v38;
    v39 = v7 + 32;
    v40 = (v7 + 32 + 16 * v37);
    *v40 = v8;
    v40[1] = v6;
    v93 = *v92;
    if (!*v92)
    {
      goto LABEL_127;
    }

    if (v37)
    {
      while (1)
      {
        v41 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v42 = *(v7 + 32);
          v43 = *(v7 + 40);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = (v7 + 16 * v38);
          v60 = *v58;
          v59 = v58[1];
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = (v39 + 16 * v41);
          v66 = *v64;
          v65 = v64[1];
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v41 = v38 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v38 < 2)
        {
          goto LABEL_112;
        }

        v68 = (v7 + 16 * v38);
        v70 = *v68;
        v69 = v68[1];
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = (v39 + 16 * v41);
        v73 = *v71;
        v72 = v71[1];
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v41 - 1 >= v38)
        {
          __break(1u);
LABEL_99:
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = (v39 + 16 * (v41 - 1));
        v80 = *v79;
        v81 = (v39 + 16 * v41);
        v82 = v81[1];
        sub_232DF977C((*a3 + 24 * *v79), (*a3 + 24 * *v81), *a3 + 24 * v82, v93);
        if (v4)
        {
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v41 > *(v7 + 16))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        v79[1] = v82;
        v83 = *(v7 + 16);
        if (v41 >= v83)
        {
          goto LABEL_101;
        }

        v38 = v83 - 1;
        result = memmove((v39 + 16 * v41), v81 + 2, 16 * (v83 - 1 - v41));
        *(v7 + 16) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = v39 + 16 * v38;
      v47 = *(v46 - 64);
      v48 = *(v46 - 56);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 48);
      v50 = *(v46 - 40);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = (v7 + 16 * v38);
      v55 = *v53;
      v54 = v53[1];
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = (v39 + 16 * v41);
        v77 = *v75;
        v76 = v75[1];
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v41 = v38 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v91;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v27 = *a3;
  v28 = *a3 + 24 * v6;
  v29 = v8 - v6;
LABEL_30:
  v30 = *(v27 + 24 * v6 + 16);
  v31 = v29;
  v32 = v28;
  while (1)
  {
    if (*(v32 - 1) >= v30)
    {
LABEL_29:
      ++v6;
      v28 += 24;
      --v29;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v27)
    {
      break;
    }

    v33 = *v32;
    v34 = v32[1];
    *v32 = *(v32 - 3);
    v32[2] = *(v32 - 1);
    *(v32 - 2) = v34;
    *(v32 - 1) = v30;
    *(v32 - 3) = v33;
    v32 -= 3;
    if (__CFADD__(v31++, 1))
    {
      goto LABEL_29;
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
  return result;
}

uint64_t sub_232DF977C(char *__dst, char *__src, unint64_t a3, char *a4)
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

    v12 = &v4[24 * v9];
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

      if (*(v4 + 2) < *(v6 + 2))
      {
        break;
      }

      v13 = v4;
      v14 = v7 == v4;
      v4 += 24;
      if (!v14)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v14 = v7 == v6;
    v6 += 24;
    if (v14)
    {
      goto LABEL_9;
    }

LABEL_8:
    v15 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v15;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_20:
    v5 -= 24;
    do
    {
      v16 = (v5 + 24);
      if (*(v6 - 1) < *(v12 - 1))
      {
        v19 = v6 - 24;
        if (v16 != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v17 = v12 - 24;
      if (v16 != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_31:
  v21 = ((v12 - v4) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v22 = (v21 >> 2) + (v21 >> 63);
  if (v6 != v4 || v6 >= &v4[24 * v22])
  {
    memmove(v6, v4, 24 * v22);
  }

  return 1;
}

unint64_t *sub_232DF99B8(uint64_t a1)
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
    result = sub_232DF9C84(v6, v4, v2);
    if (v1)
    {
      return swift_willThrow();
    }

    return result;
  }

  v8 = swift_slowAlloc();
  v9 = sub_232DF9F54(v8, v4, v2);
  result = MEMORY[0x238396AF0](v8, -1, -1);
  if (!v1)
  {
    return v9;
  }

  return result;
}

unint64_t *sub_232DF9B18(uint64_t a1, uint64_t *a2)
{
  v4 = a1;
  v12[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x28223BE20](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_232DF9D70(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_232DFA05C(v10, v6, v4, a2);
  result = MEMORY[0x238396AF0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t *sub_232DF9C84(unint64_t *result, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v11 = v10 | (v5 << 6);
LABEL_11:
    if (*(*(a3 + 56) + 8 * v11) >= 1)
    {
      *(result + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
        return sub_232DFA580(result, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v9)
    {
      return sub_232DFA580(result, a2, v4, a3);
    }

    v13 = *(a3 + 64 + 8 * v5);
    ++v12;
    if (v13)
    {
      v8 = (v13 - 1) & v13;
      v11 = __clz(__rbit64(v13)) | (v5 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232DF9D70(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = 0;
  v26 = a4;
  v23 = a2;
  v24 = result;
  v4 = 0;
  v27 = a3;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v28 = &v23;
    v14 = (*(v27 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v27 + 56) + 8 * v13);
    v17 = *v26;
    v29[0] = *v14;
    v29[1] = v15;
    MEMORY[0x28223BE20](result);
    v22[2] = v29;

    v18 = v16;

    v19 = v30;
    v20 = sub_232DF7F9C(sub_232DFC8EC, v22, v17);
    v30 = v19;

    if ((v20 & 1) == 0)
    {
      *(v24 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v25++, 1))
      {
        __break(1u);
        return sub_232DFA7BC(v24, v23, v25, v27, &qword_27DDD7830, &qword_232E08710);
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      return sub_232DFA7BC(v24, v23, v25, v27, &qword_27DDD7830, &qword_232E08710);
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_232DF9F54(unint64_t *result, uint64_t a2, uint64_t a3)
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

    v6 = sub_232DF9C84(result, a2, a3);

    return v6;
  }

  return result;
}

void *sub_232DF9FCC(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_232DFB448(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_232DFA05C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_232DF9D70(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_232DFA0E4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7480, &qword_232E06588);
  result = sub_232E01A00();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v35 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = 16 * (v13 | (v11 << 6));
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = (v17 + v16);
    v22 = v21[1];
    v36 = *v21;
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = 16 * v26;
    v32 = (*(v9 + 48) + v31);
    *v32 = v19;
    v32[1] = v20;
    v33 = (*(v9 + 56) + v31);
    *v33 = v36;
    v33[1] = v22;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v35;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_232DFA33C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7848, &qword_232E08728);
  result = sub_232E01A00();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_232DFA580(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
  result = sub_232E01A00();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v31 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v32 = *(v17 + 8 * v16);
    sub_232E01BB0();

    sub_232E01530();
    result = sub_232E01BE0();
    v21 = -1 << *(v9 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v12 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    v29 = (*(v9 + 48) + 16 * v24);
    *v29 = v19;
    v29[1] = v20;
    *(*(v9 + 56) + 8 * v24) = v32;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v31;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_232DFA7BC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v6 = a4;
  v7 = a3;
  if (*(a4 + 16) == a3)
  {

    return v6;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_232E01A00();
  v11 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 64;
  v34 = v6;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_16:
    v18 = v15 | (v13 << 6);
    v19 = *(v6 + 56);
    v20 = (*(v6 + 48) + 16 * v18);
    v21 = *v20;
    v22 = v20[1];
    v23 = *(v19 + 8 * v18);
    sub_232E01BB0();

    v35 = v23;
    sub_232E01530();
    result = sub_232E01BE0();
    v24 = -1 << *(v11 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v14 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v14 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = (*(v11 + 48) + 16 * v27);
    *v32 = v21;
    v32[1] = v22;
    *(*(v11 + 56) + 8 * v27) = v35;
    ++*(v11 + 16);
    if (__OFSUB__(v7--, 1))
    {
      goto LABEL_32;
    }

    v6 = v34;
    if (!v7)
    {
      return v11;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      return v11;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v12 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void sub_232DFA9F4(void *a1, char a2, void *a3)
{
  v37 = a1[2];
  if (!v37)
  {
    goto LABEL_21;
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = sub_232DD5634(v7, v6);
  v12 = v9[2];
  v13 = (v11 & 1) == 0;
  v14 = __OFADD__(v12, v13);
  v15 = v12 + v13;
  if (v14)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v16 = v11;
  if (v9[3] < v15)
  {
    sub_232DC2030(v15, v5 & 1);
    v10 = sub_232DD5634(v7, v6);
    if ((v16 & 1) == (v17 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v10 = sub_232E01B40();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v16)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v20 = v10;
  sub_232DC2E28();
  v10 = v20;
  if (v16)
  {
LABEL_8:
    v18 = swift_allocError();
    swift_willThrow();
    v19 = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD73C8, &qword_232E07080);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_26;
  }

LABEL_11:
  v21 = *a3;
  *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
  v22 = (v21[6] + 16 * v10);
  *v22 = v7;
  v22[1] = v6;
  *(v21[7] + 8 * v10) = v8;
  v23 = v21[2];
  v14 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v14)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    sub_232E018F0();
    MEMORY[0x238395970](0xD00000000000001BLL, 0x8000000232E0E7B0);
    sub_232E019A0();
    MEMORY[0x238395970](39, 0xE100000000000000);
    sub_232E019B0();
    __break(1u);
    return;
  }

  v21[2] = v24;
  if (v37 != 1)
  {
    v5 = a1 + 9;
    v8 = 1;
    while (v8 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v25 = *v5;
      v26 = *a3;

      v27 = sub_232DD5634(v7, v6);
      v29 = v26[2];
      v30 = (v28 & 1) == 0;
      v14 = __OFADD__(v29, v30);
      v31 = v29 + v30;
      if (v14)
      {
        goto LABEL_23;
      }

      v16 = v28;
      if (v26[3] < v31)
      {
        sub_232DC2030(v31, 1);
        v27 = sub_232DD5634(v7, v6);
        if ((v16 & 1) != (v32 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v16)
      {
        goto LABEL_8;
      }

      v33 = *a3;
      *(*a3 + 8 * (v27 >> 6) + 64) |= 1 << v27;
      v34 = (v33[6] + 16 * v27);
      *v34 = v7;
      v34[1] = v6;
      *(v33[7] + 8 * v27) = v25;
      v35 = v33[2];
      v14 = __OFADD__(v35, 1);
      v36 = v35 + 1;
      if (v14)
      {
        goto LABEL_24;
      }

      ++v8;
      v33[2] = v36;
      v5 += 3;
      if (v37 == v8)
      {
        goto LABEL_21;
      }
    }

    goto LABEL_25;
  }

LABEL_21:
}

uint64_t sub_232DFAD70()
{
  v1 = sub_232E00EA0();
  v26 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1);
  v29 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v2);
  v30 = &v22 - v5;
  v25 = v0;
  v6 = *v0;
  v7 = *(*v0 + 2);
  v8 = v7 - 2;
  if (v7 >= 2)
  {
    v9 = 0;
    v22 = v7 - 2;
    v23 = (v26 + 40);
    v24 = v26 + 16;
    while (1)
    {
      v31 = 0;
      result = MEMORY[0x238396B10](&v31, 8);
      v11 = (v31 * v7) >> 64;
      if (v7 > v31 * v7)
      {
        v12 = -v7 % v7;
        if (v12 > v31 * v7)
        {
          do
          {
            v31 = 0;
            result = MEMORY[0x238396B10](&v31, 8);
          }

          while (v12 > v31 * v7);
          v11 = (v31 * v7) >> 64;
        }
      }

      v13 = v9 + v11;
      if (__OFADD__(v9, v11))
      {
        break;
      }

      if (v9 != v13)
      {
        v14 = *(v6 + 2);
        if (v9 >= v14)
        {
          goto LABEL_19;
        }

        v15 = v1;
        v28 = (*(v26 + 80) + 32) & ~*(v26 + 80);
        v16 = &v6[v28];
        v17 = *(v26 + 72);
        v18 = *(v26 + 16);
        v27 = v17 * v9;
        result = v18(v30, &v6[v28 + v17 * v9], v15);
        if (v13 >= v14)
        {
          goto LABEL_20;
        }

        v19 = v17 * v13;
        v18(v29, &v16[v17 * v13], v15);
        result = swift_isUniquelyReferenced_nonNull_native();
        v1 = v15;
        if ((result & 1) == 0)
        {
          result = sub_232DB02FC(v6);
          v6 = result;
        }

        if (v9 >= *(v6 + 2))
        {
          goto LABEL_21;
        }

        v20 = &v6[v28];
        v21 = *v23;
        result = (*v23)(&v6[v28 + v27], v29, v15);
        if (v13 >= *(v6 + 2))
        {
          goto LABEL_22;
        }

        result = v21(&v20[v19], v30, v15);
        *v25 = v6;
        v8 = v22;
      }

      --v7;
      if (v9++ == v8)
      {
        return result;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  return result;
}

void (*sub_232DFB014(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_232DFB3BC(v7);
  v7[9] = sub_232DFB120(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_232DFB0C0;
}

void sub_232DFB0C0(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*sub_232DFB120(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[3] = a3;
  v10[4] = v4;
  v10[2] = a2;
  v12 = *v4;
  v13 = sub_232DD5634(a2, a3);
  *(v11 + 9) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = v14 ^ 1;
  v17 = __OFADD__(v15, (v14 ^ 1) & 1);
  v18 = v15 + ((v14 ^ 1) & 1);
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_232DC2E28();
      v13 = v21;
      goto LABEL_11;
    }

    sub_232DC2030(v18, a4 & 1);
    v13 = sub_232DD5634(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_232E01B40();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[5] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  *(v11 + 8) = v16 & 1;
  return sub_232DFB288;
}

void sub_232DFB288(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 8);
  LOBYTE(v5) = *(*a1 + 9);
  if (a2)
  {
    if ((*a1)[1])
    {
      goto LABEL_8;
    }

    v6 = v2[5];
    v4 = *v2[4];
    if (*(*a1 + 9))
    {
      goto LABEL_11;
    }

    v8 = v2[2];
    v7 = v2[3];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    v9 = (v4[6] + 16 * v6);
    *v9 = v8;
    v9[1] = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v10 = v4[2];
    v11 = __OFADD__(v10, 1);
    v3 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v4[2] = v3;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v12 = v2[5];
      v13 = *v2[4];
      sub_232DFC970(*(v13 + 48) + 16 * v12);
      sub_232DC22D0(v12, v13);
    }

    goto LABEL_14;
  }

  v6 = v2[5];
  v4 = *v2[4];
  if ((v5 & 1) == 0)
  {
    v15 = v2[2];
    v14 = v2[3];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    v16 = (v4[6] + 16 * v6);
    *v16 = v15;
    v16[1] = v14;
    *(v4[7] + 8 * v6) = v3;
    v17 = v4[2];
    v11 = __OFADD__(v17, 1);
    v3 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

uint64_t (*sub_232DFB3BC(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_232DFB3E4;
}

uint64_t sub_232DFB3F0(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_232E01AD0() & 1;
  }
}

void sub_232DFB448(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, id))
{
  v22 = 0;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
LABEL_11:
    v13 = v10 | (v4 << 6);
    v14 = (*(a3 + 48) + 16 * v13);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(*(a3 + 56) + 8 * v13);

    v18 = v17;
    LOBYTE(v15) = a4(v15, v16, v18);

    if (v15)
    {
      *(a1 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_15:
        sub_232DFA7BC(a1, a2, v22, a3, &qword_27DDD7840, &qword_232E08720);
        return;
      }
    }
  }

  v11 = v4;
  while (1)
  {
    v4 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v4 >= v9)
    {
      goto LABEL_15;
    }

    v12 = *(v5 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v8 = (v12 - 1) & v12;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_232DFB5C8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, id))
{
  v4 = a1;
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v9 = swift_slowAlloc();
      sub_232DF9FCC(v9, v6, v4, a2);
      MEMORY[0x238396AF0](v9, -1, -1);
      return;
    }
  }

  MEMORY[0x28223BE20](a1);
  v8 = v10 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v8, v7);
  sub_232DFB448(v8, v6, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }
}

void *sub_232DFB748(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v51 = a4;
  v52 = a1;
  v53 = a2;
  v54 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD7838, &qword_232E08718);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_232E00EA0();
  v60 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232E00D90();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_232E00DA0();
  v56 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75C0, &qword_232E07050);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v50 - v17;
  v19 = sub_232E00CE0();
  v58 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v55 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v23 = &v50 - v22;
  sub_232E00CD0();
  sub_232E00D80();
  (*(v11 + 104))(v13, *MEMORY[0x277CC9968], v10);
  v57 = v23;
  sub_232E00D70();
  (*(v11 + 8))(v13, v10);
  v24 = v15;
  v25 = v58;
  (*(v56 + 8))(v24, v59);
  if ((*(v25 + 48))(v18, 1, v19) == 1)
  {
    sub_232DAB434(v18, &qword_27DDD75C0, &qword_232E07050);
    v26 = MEMORY[0x277D84F90];
    (*(v25 + 8))(v57, v19);
    return v26;
  }

  v27 = v55;
  (*(v25 + 32))(v55, v18, v19);
  v28 = v52;
  v29 = 0;
  if (*(sub_232DF7D50(v52) + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DDD75E0, &qword_232E07088);
    v30 = sub_232E01A00();
  }

  else
  {
    v30 = MEMORY[0x277D84F98];
  }

  v50 = v19;
  v61[0] = v30;

  sub_232DFA9F4(v31, 1, v61);

  v62 = v61[0];
  MEMORY[0x28223BE20](v32);
  v33 = v54;
  *(&v50 - 6) = v53;
  *(&v50 - 5) = v33;
  v34 = v57;
  *(&v50 - 4) = v27;
  *(&v50 - 3) = v34;
  *(&v50 - 2) = &v62;
  sub_232DF7C18(sub_232DFC94C, (&v50 - 8), v28);
  v54 = v62;
  v35 = sub_232DF99B8(v62);
  v36 = v35[2];
  if (v36)
  {
    v53 = 0;
    v37 = sub_232DAE088(v36, 0);
    v59 = sub_232DB0130(v61, v37 + 4, v36, v35);
    v38 = v61[0];
    v29 = v61[2];
    v56 = v61[4];

    sub_232D734F4(v38);
    if (v59 != v36)
    {
LABEL_29:
      __break(1u);
      swift_unexpectedError();
      __break(1u);
      goto LABEL_30;
    }

    v29 = v53;
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
  }

  v61[0] = v37;
  sub_232DF9050(v61);
  if (!v29)
  {

    if ((v51 & 0x8000000000000000) == 0)
    {
      v56 = v61[0];
      if (*(v61[0] + 16) >= v51)
      {
        v39 = v51;
      }

      else
      {
        v39 = *(v61[0] + 16);
      }

      v26 = MEMORY[0x277D84F90];
      if (v51 && v39)
      {
        v40 = (v60 + 48);
        v41 = (v60 + 32);
        v42 = v56 + 40;
        v59 = v9;
        do
        {

          sub_232E00E80();
          if ((*v40)(v6, 1, v7) == 1)
          {
            sub_232DAB434(v6, &qword_27DDD7838, &qword_232E08718);
          }

          else
          {
            v43 = *v41;
            (*v41)(v9, v6, v7);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v26 = sub_232DADD9C(0, v26[2] + 1, 1, v26);
            }

            v45 = v26[2];
            v44 = v26[3];
            if (v45 >= v44 >> 1)
            {
              v26 = sub_232DADD9C((v44 > 1), v45 + 1, 1, v26);
            }

            v26[2] = v45 + 1;
            v46 = v26 + ((*(v60 + 80) + 32) & ~*(v60 + 80)) + *(v60 + 72) * v45;
            v9 = v59;
            v43(v46, v59, v7);
          }

          v42 += 24;
          --v39;
        }

        while (v39);
      }

      swift_unknownObjectRelease();
      v47 = *(v58 + 8);
      v48 = v50;
      v47(v55, v50);
      v47(v57, v48);
      return v26;
    }

    __break(1u);
    goto LABEL_29;
  }

LABEL_30:

  __break(1u);
  return result;
}

uint64_t _sSo14TPSTipsManagerC10TipsDaemonE22hmtFeaturedCollections4with25collectionDeliveryInfoMap08deliverykL0SaySo13TPSCollectionCGSgSDySSAIGSg_SDyS2SGSDySSyXlGSgtF_0(uint64_t a1, void *a2, uint64_t a3)
{
  v55 = sub_232E00EA0();
  v7 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v9 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_232E00F30();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  result = 0;
  if (a1)
  {
    sub_232E01210();
    v15 = sub_232E011F0();
    v16 = MEMORY[0x277D84F90];
    if (v15)
    {
      v59 = sub_232E00E70();
      v17 = sub_232DFAD70();
      v18 = v59;
      v19 = *(v59 + 16);
      if (v19 >= 4)
      {
        sub_232DF8D90(v59, v59 + ((*(v7 + 80) + 32) & ~*(v7 + 80)), 0, 7uLL);
        v21 = v20;

        v19 = *(v21 + 16);
        v18 = v21;
      }

      v59 = v18;
      if (v19 >= 3)
      {
        goto LABEL_6;
      }
    }

    else
    {
      sub_232E00F20();
      v22 = sub_232E00F00();
      v23 = v10;
      v18 = v22;
      v17 = (*(v11 + 8))(v13, v23);
      v59 = v18;
      v19 = *(v18 + 16);
      if (v19 >= 3)
      {
LABEL_6:
        v58 = v16;
LABEL_9:
        v26 = v7 + 16;
        v56 = *(v7 + 16);
        v27 = *(v7 + 80);
        v54 = v18;
        v28 = v18 + ((v27 + 32) & ~v27);
        v7 = *(v7 + 72);
        v3 = (v26 - 8);
        v29 = v57;
        v30 = v55;
        v56(v9, v28, v55);
        while (1)
        {
          v31 = sub_232E00E90();
          if (!*(v29 + 16))
          {
            break;
          }

          v33 = sub_232DD5634(v31, v32);
          v35 = v34;
          v30 = v55;

          if ((v35 & 1) == 0)
          {
            goto LABEL_11;
          }

          v29 = v57;
          v36 = *(*(v57 + 56) + 8 * v33);
          v37 = *v3;
          v38 = v36;
          v39 = v37(v9, v30);
          MEMORY[0x2383959E0](v39);
          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v58 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_232E015F0();
            v30 = v55;
          }

          sub_232E01610();
          v16 = v58;
LABEL_12:
          v28 += v7;
          if (!--v19)
          {
            goto LABEL_20;
          }

          v56(v9, v28, v30);
        }

LABEL_11:
        (*v3)(v9, v30);
        v29 = v57;
        goto LABEL_12;
      }
    }

    MEMORY[0x28223BE20](v17);
    *(&v53 - 2) = &v59;
    sub_232DFB5C8(v57, sub_232DFC944);
    v25 = sub_232DFB748(v24, a2, a3, 3 - *(v59 + 16));

    sub_232DC3084(v25);
    v18 = v59;
    v19 = *(v59 + 16);
    v58 = v16;
    if (v19)
    {
      goto LABEL_9;
    }

    v54 = v59;
LABEL_20:
    if (v16 >> 62)
    {
      if (v16 < 0)
      {
        v41 = v16;
      }

      else
      {
        v41 = v16 & 0xFFFFFFFFFFFFFF8;
      }

      v42 = sub_232E019C0();
      if (sub_232E019C0() < 0)
      {
        __break(1u);
        goto LABEL_51;
      }

      if (v42 >= 3)
      {
        v52 = 3;
      }

      else
      {
        v52 = v42;
      }

      if ((v42 & 0x8000000000000000) == 0)
      {
        v40 = v52;
      }

      else
      {
        v40 = 3;
      }

      result = sub_232E019C0();
      if (result >= v40)
      {
LABEL_25:
        if ((v16 & 0xC000000000000001) != 0 && v40)
        {
          sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);

          sub_232E01910();
          if (v40 != 1)
          {
            sub_232E01910();
            if (v40 != 2)
            {
              sub_232E01910();
            }
          }
        }

        else
        {
        }

        if (v16 >> 62)
        {
          v41 = sub_232E019D0();
          v3 = v43;
          v7 = v44;
          v42 = v45;
        }

        else
        {
          v7 = 0;
          v41 = v16 & 0xFFFFFFFFFFFFFF8;
          v3 = ((v16 & 0xFFFFFFFFFFFFFF8) + 32);
          v42 = (2 * v40) | 1;
        }

        v46 = v42 >> 1;
        if (v7 == v42 >> 1)
        {

          swift_unknownObjectRelease();
          return 0;
        }

        if ((v42 & 1) == 0)
        {
          goto LABEL_37;
        }

        sub_232E01AF0();
        swift_unknownObjectRetain_n();
        v49 = swift_dynamicCastClass();
        if (!v49)
        {
          swift_unknownObjectRelease();
          v49 = MEMORY[0x277D84F90];
        }

        v50 = *(v49 + 16);

        if (!__OFSUB__(v46, v7))
        {
          if (v50 == v46 - v7)
          {
            v51 = swift_dynamicCastClass();

            swift_unknownObjectRelease_n();
            result = v51;
            if (v51)
            {
              return result;
            }

            v48 = MEMORY[0x277D84F90];
            goto LABEL_44;
          }

          goto LABEL_52;
        }

LABEL_51:
        __break(1u);
LABEL_52:
        swift_unknownObjectRelease_n();
LABEL_37:
        sub_232DF8C80(v41, v3, v7, v42, &qword_2814E7C18, 0x277D716D8);
        v48 = v47;

LABEL_44:
        swift_unknownObjectRelease();
        return v48;
      }
    }

    else
    {
      result = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= 3)
      {
        v40 = 3;
      }

      else
      {
        v40 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (result >= v40)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
  }

  return result;
}

void _sSo14TPSTipsManagerC10TipsDaemonE30updatedHMTCollectionSectionMap4from19featuredCollectionsSDySSSo013TPSCollectionG0CGSgAJ_SaySo0L0CGSgtF_0(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    v26 = MEMORY[0x277D84F90];
    v27 = MEMORY[0x277D84F90];
    v3 = 1 << *(a1 + 32);
    v4 = -1;
    if (v3 < 64)
    {
      v4 = ~(-1 << v3);
    }

    v5 = v4 & *(a1 + 64);
    v6 = (v3 + 63) >> 6;

    v7 = 0;
LABEL_7:
    v8 = v7;
    if (!v5)
    {
      goto LABEL_9;
    }

    do
    {
      v7 = v8;
LABEL_12:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = v9 | (v7 << 6);
      v11 = (*(a1 + 48) + 16 * v10);
      v13 = *v11;
      v12 = v11[1];
      v14 = *(*(a1 + 56) + 8 * v10);
      if (v13 == sub_232E014D0() && v12 == v15)
      {

        goto LABEL_7;
      }

      v17 = sub_232E01AD0();

      v18 = v14;

      if ((v17 & 1) == 0)
      {
        sub_232DB3688(0, &qword_2814E7C18, 0x277D716D8);
        v19 = sub_232E015C0();
        [v18 removeCollections_];

        v20 = [v18 collections];
        v21 = sub_232E015D0();

        if (v21 >> 62)
        {
          v22 = sub_232E019C0();
        }

        else
        {
          v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v22)
        {
        }

        else
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v26 = sub_232DADB5C(0, *(v26 + 2) + 1, 1, v26);
          }

          v24 = *(v26 + 2);
          v23 = *(v26 + 3);
          if (v24 >= v23 >> 1)
          {
            v26 = sub_232DADB5C((v23 > 1), v24 + 1, 1, v26);
          }

          *(v26 + 2) = v24 + 1;
          v25 = &v26[16 * v24];
          *(v25 + 4) = v13;
          *(v25 + 5) = v12;
          v27 = v26;
        }

        goto LABEL_7;
      }

      v8 = v7;
    }

    while (v5);
LABEL_9:
    while (1)
    {
      v7 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v7 >= v6)
      {

        sub_232DF9B18(a1, &v27);

        return;
      }

      v5 = *(a1 + 64 + 8 * v7);
      ++v8;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
  }
}

uint64_t sub_232DFC794()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232DA7C78;

  return sub_232DF8584();
}

uint64_t sub_232DFC840()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_232DA72F4;

  return sub_232DF8584();
}

uint64_t sub_232DFC8EC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_232E01AD0() & 1;
  }
}

uint64_t sub_232DFC9C4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_232DFC9D4(char a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_232E00AD0();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1 & 1);
}

id GenerativeModelsEligibilityValidation.__allocating_init(targetContext:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  v3 = sub_232E01450();

  v4 = [v2 initWithTargetContext_];

  return v4;
}

id GenerativeModelsEligibilityValidation.init(targetContext:)(uint64_t a1)
{
  v2 = sub_232E01450();

  v5.receiver = v1;
  v5.super_class = type metadata accessor for GenerativeModelsEligibilityValidation();
  v3 = objc_msgSendSuper2(&v5, sel_initWithTargetContext_, v2);

  return v3;
}

id GenerativeModelsEligibilityValidation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GenerativeModelsEligibilityValidation.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GenerativeModelsEligibilityValidation();
  return objc_msgSendSuper2(&v3, sel_init);
}

id GenerativeModelsEligibilityValidation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for GenerativeModelsEligibilityValidation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_232DFCD68(void *a1, uint64_t a2)
{
  v49 = a2;
  v44 = a1;
  v2 = sub_232E012A0();
  v47 = *(v2 - 8);
  v48 = v2;
  MEMORY[0x28223BE20](v2);
  v41 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_232E00F60();
  v42 = *(v4 - 8);
  v43 = v4;
  MEMORY[0x28223BE20](v4);
  v40 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_232E00FA0();
  v6 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_232E00E30();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = sub_232E00F80();
  v13 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_232E00FC0();
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_232E00E10();
  sub_232E00E20();
  (*(v10 + 8))(v12, v9);
  (*(v6 + 104))(v8, *MEMORY[0x277D0E2B8], v39);
  v19 = v41;
  sub_232E00F70();
  sub_232E00FB0();
  v20 = v15;
  v21 = v44;
  (*(v13 + 8))(v20, v38);
  v22 = v40;
  sub_232E00F90();
  v23 = sub_232E00F40();
  (*(v42 + 8))(v22, v43);
  v24 = [v21 BOOLValue];
  sub_232E01290();
  v25 = 0xE000000000000000;
  v50 = 0;
  v51 = 0xE000000000000000;
  sub_232E018F0();
  v26 = [v21 name];
  if (v26)
  {
    v27 = v26;
    v28 = sub_232E014D0();
    v25 = v29;
  }

  else
  {
    v28 = 0;
  }

  MEMORY[0x238395970](v28, v25);

  MEMORY[0x238395970](0xD000000000000012, 0x8000000232E0CC20);
  v30 = [v21 targetContext];
  if (v30)
  {
    v31 = v30;
    sub_232E01470();
  }

  else
  {
    sub_232DB3428(MEMORY[0x277D84F90]);
  }

  v32 = sub_232E01480();
  v34 = v33;

  MEMORY[0x238395970](v32, v34);

  MEMORY[0x238395970](0x3A64696C6156202ELL, 0xE900000000000020);
  if ((v23 ^ v24))
  {
    v35 = 0x65736C6166;
  }

  else
  {
    v35 = 1702195828;
  }

  if ((v23 ^ v24))
  {
    v36 = 0xE500000000000000;
  }

  else
  {
    v36 = 0xE400000000000000;
  }

  MEMORY[0x238395970](v35, v36);

  sub_232E01350();

  (*(v47 + 8))(v19, v48);
  (*(v49 + 16))(v49, ((v23 ^ v24) & 1) == 0, 0);
  return (*(v45 + 8))(v18, v46);
}