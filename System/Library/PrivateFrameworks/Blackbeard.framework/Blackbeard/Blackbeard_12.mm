uint64_t sub_1E5FACF3C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E5FAD050;
  }

  else
  {
    v2 = sub_1E5FA1DB4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FAD050()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FAD0B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD220, 0, 0);
}

uint64_t sub_1E5FAD220()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FAD31C;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E5FAD31C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD434, 0, 0);
}

uint64_t sub_1E5FAD434()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E5FAD510;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E5FAD510()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD60C, 0, 0);
}

uint64_t sub_1E5FAD60C()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FAD75C, v6, v5);
  }
}

uint64_t sub_1E5FAD75C()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAD7E0, 0, 0);
}

uint64_t sub_1E5FAD7E0()
{
  sub_1E5DFE50C(v0[4], &qword_1ED0721B0, &qword_1E65EA988);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E5FAD510;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E5FAD8A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A0, &qword_1E65EA978);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721A8, &qword_1E65EA980);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FADA0C, 0, 0);
}

uint64_t sub_1E5FADA0C()
{
  v1 = SessionService.makeAudioLanguagePreferenceUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FADB08;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E5FADB08()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FAE0A4;
  }

  else
  {
    v2 = sub_1E5FADC38;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FADC38()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E5FADD14;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E5FADD14()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FADE10, 0, 0);
}

uint64_t sub_1E5FADE10()
{
  v1 = v0[4];
  v2 = sub_1E65D9AC8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FADF60, v6, v5);
  }
}

uint64_t sub_1E5FADF60()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FADFE4, 0, 0);
}

uint64_t sub_1E5FADFE4()
{
  sub_1E5DFE50C(v0[4], &qword_1ED072198, &unk_1E660C690);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1E5FADD14;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E5FAE0A4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FAE120(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072180, &qword_1E65EA960);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072188, &qword_1E65EA968);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072190, &qword_1E65EA970);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAE28C, 0, 0);
}

uint64_t sub_1E5FAE28C()
{
  v1 = SessionService.makeSessionTerminatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FAE388;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E5FAE388()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E5FAEF78;
  }

  else
  {
    v2 = sub_1E5FAE4B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FAE4B8()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_1E5FAE594;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E5FAE594()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FAE690, 0, 0);
}

uint64_t sub_1E5FAE690()
{
  v1 = v0[4];
  v2 = sub_1E65DDE98();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[15] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FAE7E0, v6, v5);
  }
}

uint64_t sub_1E5FAE7E0()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAE864, 0, 0);
}

uint64_t sub_1E5FAE864()
{
  sub_1E5DFE50C(v0[4], &qword_1ED072180, &qword_1E65EA960);
  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1E5FAE594;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E5FAE924(uint64_t a1)
{
  Description = type metadata accessor for SessionService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FACE20(a1, v1 + v5);
}

uint64_t sub_1E5FAEA00(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FAD0B4(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E5FAEB5C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for SessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FAD8A0(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_0(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E5FAEE1C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for SessionService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072170, &qword_1E65EA8F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FAE120(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t sub_1E5FAEF7C()
{
  result = sub_1E5F9B388(&unk_1F5FA7FF8);
  qword_1ED096120 = result;
  return result;
}

id MarketingPurchaseHandler.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E5FAEFD8(uint64_t a1)
{
  v2[121] = v1;
  v2[115] = a1;
  v2[127] = type metadata accessor for RouteDestination(0);
  v2[128] = swift_task_alloc();
  v2[129] = swift_task_alloc();
  v3 = sub_1E65D8668();
  v2[130] = v3;
  v2[131] = *(v3 - 8);
  v2[132] = swift_task_alloc();
  v4 = sub_1E65D9658();
  v2[133] = v4;
  v2[134] = *(v4 - 8);
  v2[135] = swift_task_alloc();
  v2[136] = swift_task_alloc();
  v5 = sub_1E65DE1F8();
  v2[137] = v5;
  v2[138] = *(v5 - 8);
  v2[139] = swift_task_alloc();
  type metadata accessor for SharePlaySessionDetour.State(0);
  v2[140] = swift_task_alloc();
  v2[141] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v2[142] = v6;
  v2[143] = *(v6 - 8);
  v2[144] = swift_task_alloc();
  v7 = type metadata accessor for AppComposer(0);
  v2[145] = v7;
  v8 = *(v7 - 8);
  v2[146] = v8;
  v2[147] = *(v8 + 64);
  v2[148] = swift_task_alloc();
  v2[149] = swift_task_alloc();
  v9 = sub_1E65D8D48();
  v2[150] = v9;
  v10 = *(v9 - 8);
  v2[151] = v10;
  v2[152] = *(v10 + 64);
  v2[153] = swift_task_alloc();
  v2[154] = swift_task_alloc();
  v2[155] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FAF328, 0, 0);
}

uint64_t sub_1E5FAF328()
{
  v1 = *(v0 + 1128);
  v2 = *(v0 + 968);
  v3 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  swift_beginAccess();
  sub_1E5FB78B8(v2 + v3, v1, type metadata accessor for SharePlaySessionDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E5FB9854(*(v0 + 1128), type metadata accessor for SharePlaySessionDetour.State);
LABEL_5:

    v20 = *(v0 + 8);

    return v20();
  }

  v6 = *(v0 + 1192);
  v7 = *(v0 + 1144);
  v38 = *(v0 + 1136);
  v40 = *(v0 + 1152);
  v8 = *(v0 + 1128);
  v42 = *(v0 + 1120);
  v44 = *(v0 + 920);
  v9 = *(v4 + 48);
  v10 = *(v4 + 64);
  v37 = *(*(v0 + 1208) + 32);
  v37(*(v0 + 1240), v8, *(v0 + 1200));
  sub_1E5E1FA80(v8 + v9, v6);
  (*(v7 + 32))(v40, v8 + v10, v38);
  (*(v5 + 56))(v42, 1, 1, v4);
  swift_beginAccess();
  sub_1E5FB7A1C(v42, v2 + v3);
  swift_endAccess();
  if (v44)
  {
    v11 = *(v0 + 1240);
    v12 = *(v0 + 1232);
    v13 = *(v0 + 1208);
    v14 = *(v0 + 1200);
    v43 = *(v0 + 1152);
    v45 = *(v0 + 1192);
    v15 = *(v0 + 1144);
    v16 = *(v0 + 1112);
    v17 = *(v0 + 1104);
    v39 = *(v0 + 1096);
    v41 = *(v0 + 1136);
    v18 = *(v0 + 920);
    swift_getObjectType();
    (*(v13 + 16))(v12, v11, v14);
    v19 = v18;
    sub_1E65DE1E8();
    sub_1E65DDDE8();
    (*(v17 + 8))(v16, v39);
    *(v0 + 872) = v18;
    sub_1E65E5FE8();
    (*(v15 + 8))(v43, v41);
    sub_1E5FB9854(v45, type metadata accessor for AppComposer);
    (*(v13 + 8))(v11, v14);
    goto LABEL_5;
  }

  v22 = *(v0 + 1240);
  v23 = *(v0 + 1224);
  v24 = *(v0 + 1208);
  v25 = *(v0 + 1200);
  v26 = *(v0 + 1184);
  v27 = *(v0 + 1176);
  v28 = *(v0 + 1168);
  v46 = *(v0 + 1160);
  sub_1E5FB78B8(*(v0 + 1192), v26, type metadata accessor for AppComposer);
  v29 = *(v24 + 16);
  v24 += 16;
  *(v0 + 1248) = v29;
  *(v0 + 1256) = v24 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v29(v23, v22, v25);
  v30 = (*(v28 + 80) + 16) & ~*(v28 + 80);
  v31 = (v27 + *(v24 + 64) + v30) & ~*(v24 + 64);
  v32 = swift_allocObject();
  *(v0 + 1264) = v32;
  sub_1E5E1FA80(v26, v32 + v30);
  v37(v32 + v31, v23, v25);
  swift_asyncLet_begin();
  *(v0 + 1360) = *(v46 + 20);
  *(v0 + 1364) = *(type metadata accessor for AppEnvironment(0) + 116);
  v33 = SharePlayService.waitForSession.getter();
  *(v0 + 1272) = v34;
  v47 = (v33 + *v33);
  v35 = swift_task_alloc();
  *(v0 + 1280) = v35;
  *v35 = v0;
  v35[1] = sub_1E5FAF918;
  v36 = *(v0 + 1240);

  return v47(v36);
}

uint64_t sub_1E5FAF918()
{
  *(*v1 + 1288) = v0;

  if (v0)
  {
    v2 = sub_1E5FB0550;
  }

  else
  {
    v2 = sub_1E5FAFA2C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FAFA2C()
{

  v1 = SharePlayService.willBeginActivity.getter();
  v0[162] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[163] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FAFB48;
  v4 = v0[155];

  return v6(v4);
}

uint64_t sub_1E5FAFB48()
{
  *(*v1 + 1312) = v0;

  if (v0)
  {
    v2 = sub_1E5FB0784;
  }

  else
  {
    v2 = sub_1E5FAFC5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FAFC5C()
{

  v1 = SharePlayService.joinActivity.getter();
  *(v0 + 1320) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 1328) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FAFD70;

  return v5();
}

uint64_t sub_1E5FAFD70()
{
  *(*v1 + 1336) = v0;

  if (v0)
  {
    v2 = sub_1E5FB09B8;
  }

  else
  {
    v2 = sub_1E5FAFE84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FAFE84()
{

  v1 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEC0](v0 + 16, v1, sub_1E5FAFEF0, v0 + 832);
}

uint64_t sub_1E5FAFEF0()
{
  *(v1 + 1344) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, *(v1 + 1088), sub_1E5FB0BEC, v1 + 880);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E5FAFF34, 0, 0);
  }
}

uint64_t sub_1E5FAFF34()
{
  v1 = v0[135];
  v2 = v0[134];
  v3 = v0[133];
  v4 = v0[132];
  v5 = v0[131];
  v6 = v0[130];
  (*(v2 + 16))(v1, v0[136], v3);
  sub_1E65D9618();
  (*(v2 + 8))(v1, v3);
  v7 = sub_1E65D8658();
  v9 = v8;
  LOBYTE(v3) = v10;
  (*(v5 + 8))(v4, v6);
  if (v3)
  {
    v11 = v0[156];
    v12 = v0[155];
    v13 = v0[150];
    v14 = v0[129];
    v15 = v0[128];
    v16 = v0[127];
    v17 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
    *v14 = sub_1E65D8D08();
    *(v14 + 8) = v18;
    *(v14 + 16) = sub_1E65D8D18();
    *(v14 + 24) = v19;
    *(v14 + 32) = sub_1E65D8CE8();
    *(v14 + 40) = v7;
    v20 = sub_1E65D96F8();
    (*(*(v20 - 8) + 56))(v14 + v17, 1, 1, v20);
    *(v14 + 48) = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    v11(v14 + *(v16 + 20), v12, v13);
    type metadata accessor for RouteSource(0);
    swift_storeEnumTagMultiPayload();
    *(v14 + *(v16 + 24)) = MEMORY[0x1E69E7CD0];
    sub_1E5FB78B8(v14, v15, type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
    sub_1E5FB9854(v14, type metadata accessor for RouteDestination);
    v21 = sub_1E5FB01DC;
    v22 = v0[136];
    v23 = v0 + 2;
    v24 = v0 + 122;
  }

  else
  {
    sub_1E5F87058(v7, v9, 0);
    sub_1E5FB94B0();
    v0[169] = swift_allocError();
    *v25 = 1;
    swift_willThrow();
    v21 = sub_1E5FB0388;
    v22 = v0[136];
    v23 = v0 + 2;
    v24 = v0 + 116;
  }

  return MEMORY[0x1EEE6DEB0](v23, v22, v21, v24);
}

uint64_t sub_1E5FB01F8()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  (*(v0[143] + 8))(v0[144], v0[142]);
  sub_1E5FB9854(v4, type metadata accessor for AppComposer);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FB03A4()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[142];
  v0[103] = v0[169];
  sub_1E65E5FE8();
  (*(v6 + 8))(v5, v7);
  sub_1E5FB9854(v4, type metadata accessor for AppComposer);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FB0550()
{

  v1 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E5FB05BC, v0 + 656);
}

uint64_t sub_1E5FB05D8()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[142];
  v0[103] = v0[161];
  sub_1E65E5FE8();
  (*(v6 + 8))(v5, v7);
  sub_1E5FB9854(v4, type metadata accessor for AppComposer);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FB0784()
{

  v1 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E5FB07F0, v0 + 720);
}

uint64_t sub_1E5FB080C()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[142];
  v0[103] = v0[164];
  sub_1E65E5FE8();
  (*(v6 + 8))(v5, v7);
  sub_1E5FB9854(v4, type metadata accessor for AppComposer);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FB09B8()
{

  v1 = *(v0 + 1088);

  return MEMORY[0x1EEE6DEB0](v0 + 16, v1, sub_1E5FB0A24, v0 + 784);
}

uint64_t sub_1E5FB0A40()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[142];
  v0[103] = v0[167];
  sub_1E65E5FE8();
  (*(v6 + 8))(v5, v7);
  sub_1E5FB9854(v4, type metadata accessor for AppComposer);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FB0C08()
{
  v1 = v0[155];
  v2 = v0[151];
  v3 = v0[150];
  v4 = v0[149];
  v5 = v0[144];
  v6 = v0[143];
  v7 = v0[142];
  v0[103] = v0[168];
  sub_1E65E5FE8();
  (*(v6 + 8))(v5, v7);
  sub_1E5FB9854(v4, type metadata accessor for AppComposer);
  (*(v2 + 8))(v1, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E5FB0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5FB0DD8, 0, 0);
}

uint64_t sub_1E5FB0DD8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[5] = v2;
  v3 = sub_1E65D8D18();
  v5 = v4;
  v0[6] = v4;
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = sub_1E5FB0F24;
  v7 = v0[2];

  return v9(v7, v3, v5);
}

uint64_t sub_1E5FB0F24()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB106C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5FB106C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FB10D8()
{
  v1 = sub_1E65DE1F8();
  v39 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SharePlaySessionDetour.State(0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v40 = *(v10 - 8);
  v41 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v42 = &v34 - v11;
  v43 = sub_1E65D8D48();
  v12 = *(v43 - 8);
  v13 = MEMORY[0x1EEE9AC00](v43);
  v38 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v34 - v15;
  v17 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  swift_beginAccess();
  sub_1E5FB78B8(v0 + v17, v9, type metadata accessor for SharePlaySessionDetour.State);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v9, 1, v18) == 1)
  {
    return sub_1E5FB9854(v9, type metadata accessor for SharePlaySessionDetour.State);
  }

  v36 = v3;
  v37 = v1;
  v21 = *(v18 + 48);
  v22 = *(v18 + 64);
  v23 = *(v12 + 32);
  v35 = v16;
  v23(v16, v9, v43);
  v24 = v40;
  v25 = &v9[v22];
  v26 = v41;
  (*(v40 + 32))(v42, v25, v41);
  sub_1E5FB9854(&v9[v21], type metadata accessor for AppComposer);
  (*(v19 + 56))(v7, 1, 1, v18);
  swift_beginAccess();
  sub_1E5FB7A1C(v7, v0 + v17);
  swift_endAccess();
  swift_getObjectType();
  v27 = v35;
  v28 = v43;
  (*(v12 + 16))(v38, v35, v43);
  v29 = v36;
  sub_1E65DE1E8();
  v30 = v37;
  sub_1E65DDDE8();
  (*(v39 + 8))(v29, v30);
  sub_1E5FB94B0();
  v31 = swift_allocError();
  *v32 = 0;
  v44 = v31;
  v33 = v42;
  sub_1E65E5FE8();
  (*(v24 + 8))(v33, v26);
  return (*(v12 + 8))(v27, v28);
}

uint64_t sub_1E5FB158C(uint64_t a1)
{
  v2[238] = v1;
  v2[237] = a1;
  v3 = sub_1E65DB7D8();
  v2[239] = v3;
  v2[240] = *(v3 - 8);
  v2[241] = swift_task_alloc();
  v2[242] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v2[243] = swift_task_alloc();
  v4 = sub_1E65DB438();
  v2[244] = v4;
  v5 = *(v4 - 8);
  v2[245] = v5;
  v2[246] = *(v5 + 64);
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v2[249] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v2[250] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v2[251] = swift_task_alloc();
  v6 = sub_1E65D7A38();
  v2[252] = v6;
  v2[253] = *(v6 - 8);
  v2[254] = swift_task_alloc();
  v2[255] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[256] = swift_task_alloc();
  v2[257] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v2[258] = v7;
  v2[259] = *(v7 - 8);
  v2[260] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB18B4, 0, 0);
}

uint64_t sub_1E5FB18B4()
{
  v1 = *(v0 + 2072);
  v2 = *(v0 + 2064);
  v3 = *(v0 + 2056);
  sub_1E65DB5A8();
  sub_1E65D74C8();

  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1E5DFE50C(*(v0 + 2056), &qword_1ED072340, &qword_1E65EA410);
    sub_1E5FB94B0();
    v4 = swift_allocError();
    *v5 = 2;
    *(v0 + 1848) = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
    sub_1E65E5FE8();

    v6 = *(v0 + 8);

    return v6(0);
  }

  else
  {
    v8 = *(v0 + 2080);
    v9 = *(v0 + 2072);
    v10 = *(v0 + 2064);
    v11 = *(v0 + 2048);
    v12 = *(v0 + 2024);
    v32 = *(v0 + 2032);
    v33 = *(v0 + 2016);
    v13 = *(v0 + 2008);
    v28 = *(v0 + 2000);
    v29 = *(v0 + 1992);
    v30 = *(v0 + 2040);
    v34 = *(v0 + 1984);
    v37 = *(v0 + 1976);
    v35 = *(v0 + 1960);
    v36 = *(v0 + 1952);
    v31 = *(v0 + 1944);
    (*(v9 + 32))(v8, *(v0 + 2056), v10);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072350, &unk_1E660BBE0);
    sub_1E65D7F18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077610, &qword_1E660BBF0);
    sub_1E65D7F18();
    *(v0 + 2088) = *(v0 + 1856);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072360, &qword_1E65EAB90);
    sub_1E65D7F18();
    v14 = *MEMORY[0x1E69CBDD8];
    v15 = sub_1E65D8F38();
    v16 = *(v15 - 8);
    (*(v16 + 104))(v13, v14, v15);
    (*(v16 + 56))(v13, 0, 1, v15);
    (*(v9 + 16))(v11, v8, v10);
    (*(v9 + 56))(v11, 0, 1, v10);
    v17 = sub_1E65D9908();
    (*(*(v17 - 8) + 56))(v28, 1, 1, v17);
    v18 = sub_1E65D9F88();
    (*(*(v18 - 8) + 56))(v29, 1, 1, v18);
    sub_1E65D7A28();
    (*(v12 + 16))(v32, v30, v33);
    sub_1E65D8CA8();
    v19 = sub_1E65D8CB8();
    (*(*(v19 - 8) + 56))(v31, 0, 1, v19);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072368, &qword_1E65EAB98);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E65EA670;
    *(inited + 32) = sub_1E65D8868();
    *(inited + 40) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    v22 = swift_initStackObject();
    *(v22 + 16) = xmmword_1E65EA670;
    *(v22 + 32) = sub_1E65D8878();
    *(v22 + 40) = v23;
    *(v22 + 48) = 0xD000000000000014;
    *(v22 + 56) = 0x80000001E6610A70;
    v24 = sub_1E6427498(v22);
    swift_setDeallocating();
    sub_1E5DFE50C(v22 + 32, &qword_1ED072378, &qword_1E65EABA8);
    *(v0 + 1864) = v24;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
    sub_1E5FB9504();
    sub_1E65E6848();
    sub_1E642764C(inited);
    swift_setDeallocating();
    sub_1E5DFE50C(inited + 32, &unk_1ED072390, &qword_1E65EABB8);
    sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
    sub_1E65DB428();
    sub_1E5DF650C(v0 + 1608, v0 + 1688);
    (*(v35 + 16))(v37, v34, v36);
    v25 = (*(v35 + 80) + 56) & ~*(v35 + 80);
    v26 = swift_allocObject();
    *(v0 + 2096) = v26;
    sub_1E5DF599C((v0 + 1688), v26 + 16);
    (*(v35 + 32))(v26 + v25, v37, v36);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735C0, &qword_1E65EABD0);
    swift_asyncLet_begin();
    sub_1E5DF650C(v0 + 1528, v0 + 1768);
    v27 = swift_allocObject();
    *(v0 + 2104) = v27;
    sub_1E5DF599C((v0 + 1768), v27 + 16);
    sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
    swift_asyncLet_begin();

    return MEMORY[0x1EEE6DEC0](v0 + 16, v0 + 1872, sub_1E5FB205C, v0 + 1296);
  }
}

uint64_t sub_1E5FB205C()
{
  v1[264] = v0;
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB29D0, 0, 0);
  }

  else
  {
    v1[265] = v1[234];

    return MEMORY[0x1EEE6DEC0](v1 + 82, v1 + 235, sub_1E5FB210C, v1 + 206);
  }
}

uint64_t sub_1E5FB210C()
{
  *(v1 + 2128) = v0;
  if (v0)
  {
    v2 = sub_1E5FB2A60;
  }

  else
  {
    v2 = sub_1E5FB2140;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FB2140()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1920);
  v3 = *(v0 + 1880);
  *(v0 + 2136) = v3;
  *(v0 + 2176) = *MEMORY[0x1E69CD5F8];
  v4 = *(v2 + 104);
  *(v0 + 2144) = v4;
  *(v0 + 2152) = (v2 + 104) & 0xFFFFFFFFFFFFLL | 0xB2E4000000000000;
  v4(v1);
  sub_1E65E6058();
  v5 = v3;
  *(v0 + 2160) = sub_1E65E6048();
  v7 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB221C, v7, v6);
}

uint64_t sub_1E5FB221C()
{
  v17 = *(v0 + 2144);
  v16 = *(v0 + 2176);
  v20 = *(v0 + 2120);
  v21 = *(v0 + 2136);
  v1 = *(v0 + 2088);
  v2 = *(v0 + 1928);
  v18 = *(v0 + 1936);
  v19 = *(v0 + 1920);
  v3 = *(v0 + 1912);
  v22 = *(v0 + 1904);

  sub_1E65DB578();
  sub_1E65E1268();
  v4 = objc_allocWithZone(MEMORY[0x1E698CCF0]);
  v5 = sub_1E65E5C48();

  v6 = sub_1E65E5C48();

  v7 = [v4 initWithServiceType:v5 placement:v6 bag:v1];

  v8 = sub_1E65E5C48();
  [v7 setOfferHints_];

  v17(v2, v16, v3);
  sub_1E5FB96FC(&qword_1ED0723A8, MEMORY[0x1E69CD608], MEMORY[0x1E69CD610]);
  v9 = v7;
  LOBYTE(v7) = sub_1E65E5B98();
  v10 = *(v19 + 8);
  v10(v2, v3);
  [v9 setAnonymousMetrics_];
  sub_1E625B644(v20);

  v11 = sub_1E65E5AF8();

  [v9 setMetricsOverlay_];

  [v9 setAccount_];
  sub_1E65DB588();
  v12 = sub_1E65E5C48();

  [v9 setMediaClientIdentifier_];

  [v9 setDelegate_];
  v13 = [objc_opt_self() currentProcess];
  sub_1E65DB598();
  v14 = sub_1E65E6348();

  [v9 setClientInfo_];
  *(v0 + 2168) = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) initWithRootViewController_];

  v10(v18, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1880, sub_1E5FB25A4, v0 + 1728);
}

uint64_t sub_1E5FB25FC()
{
  v1 = v0[260];
  v2 = v0[259];
  v3 = v0[258];
  v4 = v0[255];
  v5 = v0[253];
  v6 = v0[252];
  v7 = v0[248];
  v8 = v0[245];
  v9 = v0[244];
  swift_unknownObjectRelease();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 201);
  __swift_destroy_boxed_opaque_existential_1(v0 + 191);
  (*(v2 + 8))(v1, v3);

  v12 = v0[271];

  v10 = v0[1];

  return v10(v12);
}

uint64_t sub_1E5FB2814()
{
  v1 = v0[260];
  v2 = v0[259];
  v3 = v0[258];
  v4 = v0[255];
  v5 = v0[253];
  v6 = v0[252];
  v7 = v0[248];
  v8 = v0[245];
  v9 = v0[244];
  swift_unknownObjectRelease();
  (*(v8 + 8))(v7, v9);
  (*(v5 + 8))(v4, v6);
  __swift_destroy_boxed_opaque_existential_1(v0 + 201);
  __swift_destroy_boxed_opaque_existential_1(v0 + 191);
  (*(v2 + 8))(v1, v3);

  v10 = v0[1];

  return v10(0);
}

uint64_t sub_1E5FB29D0()
{
  *(v0 + 1888) = *(v0 + 2112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  sub_1E65E5FE8();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1880, sub_1E5FB27BC, v0 + 1424);
}

uint64_t sub_1E5FB2A60()
{

  *(v0 + 1888) = *(v0 + 2128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  sub_1E65E5FE8();

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1880, sub_1E5FB27BC, v0 + 1424);
}

uint64_t sub_1E5FB2AF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65DB7D8();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB2BBC, 0, 0);
}

uint64_t sub_1E5FB2BBC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 104))(v1, *MEMORY[0x1E69CD5F8], v3);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FB2CB8;
  v8 = v0[7];
  v9 = v0[4];

  return MEMORY[0x1EEE378C0](v9, v8, 0, v5, v6);
}

uint64_t sub_1E5FB2CB8(uint64_t a1)
{
  v4 = *v2;
  v4[9] = v1;

  v5 = v4[7];
  v6 = v4[6];
  v7 = v4[5];
  if (v1)
  {
    (*(v6 + 8))(v5, v7);
    v8 = sub_1E5FB2EB0;
  }

  else
  {
    v4[10] = a1;
    (*(v6 + 8))(v5, v7);
    v8 = sub_1E5FB2E40;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E5FB2E40()
{
  **(v0 + 16) = *(v0 + 80);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FB2EB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FB2F14(uint64_t a1, uint64_t a2)
{
  v2[3] = a1;
  v2[4] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B0, &qword_1E65EABE8);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB2FE0, 0, 0);
}

uint64_t sub_1E5FB2FE0()
{
  v1 = *(v0 + 56);
  __swift_project_boxed_opaque_existential_1(*(v0 + 32), *(*(v0 + 32) + 24));
  sub_1E65E3948();
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = "Blackbeard/SharePlaySessionDetour.swift";
  *(v2 + 24) = 39;
  *(v2 + 32) = 2;
  *(v2 + 40) = 161;
  *(v2 + 48) = v1;
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  v4 = sub_1E5DEF738(0, &qword_1ED0723A0, 0x1E6959A28);
  *v3 = v0;
  v3[1] = sub_1E5FB3130;

  return MEMORY[0x1EEE6DE38](v0 + 16, 0, 0, 0xD000000000000013, 0x80000001E6610AC0, sub_1E5FB9744, v2, v4);
}

uint64_t sub_1E5FB3130()
{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FB32D0, 0, 0);
  }

  else
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[5];
    v9 = v2 + 2;
    v7 = v2[2];
    v8 = v9[1];

    *v8 = v7;
    (*(v5 + 8))(v4, v6);

    v10 = v3[1];

    return v10();
  }
}

uint64_t sub_1E5FB32D0()
{
  (*(v0[6] + 8))(v0[7], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FB3420(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = type metadata accessor for RouteSource(0);
  v6[9] = swift_task_alloc();
  v7 = sub_1E65D8D48();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB3518, 0, 0);
}

uint64_t sub_1E5FB3518()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 24);
  v3 = type metadata accessor for RouteDestination(0);
  sub_1E5FB78B8(v2 + *(v3 + 20), v1, type metadata accessor for RouteSource);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    v4 = *(v0 + 96);
    v6 = *(v0 + 48);
    v5 = *(v0 + 56);
    v15 = *(v0 + 32);
    (*(*(v0 + 88) + 32))(v4, *(v0 + 72), *(v0 + 80));
    v7 = swift_task_alloc();
    *(v0 + 104) = v7;
    *(v7 + 16) = v5;
    *(v7 + 24) = v4;
    *(v7 + 32) = v15;
    *(v7 + 48) = v6;
    v8 = swift_task_alloc();
    *(v0 + 112) = v8;
    *(v8 + 16) = v5;
    v9 = swift_task_alloc();
    *(v0 + 120) = v9;
    *v9 = v0;
    v9[1] = sub_1E5FB3734;
    v10 = *(v0 + 16);

    return MEMORY[0x1EEE6DE18](v10, &unk_1E65EAAE0, v7, sub_1E5FB79E8, v8, 0, 0, v3);
  }

  else
  {
    v11 = *(v0 + 16);
    v12 = *(v0 + 24);
    sub_1E5FB9854(*(v0 + 72), type metadata accessor for RouteSource);
    sub_1E5FB78B8(v12, v11, type metadata accessor for RouteDestination);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_1E5FB3734()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1E5FB38E0;
  }

  else
  {

    v2 = sub_1E5FB3858;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FB3858()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FB38E0()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FB398C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FB39B4, 0, 0);
}

uint64_t sub_1E5FB39B4()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 40);
  *(v2 + 16) = *(v0 + 24);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = type metadata accessor for RouteDestination(0);
  *v4 = v0;
  v4[1] = sub_1E5FB3ABC;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000024, 0x80000001E66103D0, sub_1E5FB7A0C, v2, v5);
}

uint64_t sub_1E5FB3ABC()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5F8EAB0, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E5FB3BF8(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v49 = a5;
  v50 = a6;
  v51 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v42 = *(v9 - 8);
  v10 = v42;
  v48 = *(v42 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v47 = &v41 - v11;
  v12 = type metadata accessor for AppComposer(0);
  v46 = *(v12 - 8);
  v45 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v44 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v43 = &v41 - v15;
  v16 = type metadata accessor for SharePlaySessionDetour.State(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v41 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722E0, &qword_1E65EAAA0);
  v20 = *(v19 + 48);
  v21 = *(v19 + 64);
  v22 = sub_1E65D8D48();
  (*(*(v22 - 8) + 16))(v18, a3, v22);
  sub_1E5FB78B8(a4, &v18[v20], type metadata accessor for AppComposer);
  v23 = *(v10 + 16);
  v23(&v18[v21], a1, v9);
  (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
  v24 = OBJC_IVAR____TtC10Blackbeard22SharePlaySessionDetour_state;
  v25 = v51;
  swift_beginAccess();
  sub_1E5FB7A1C(v18, &v25[v24]);
  swift_endAccess();
  v26 = sub_1E65E60A8();
  v27 = v43;
  (*(*(v26 - 8) + 56))(v43, 1, 1, v26);
  v28 = v44;
  sub_1E5FB78B8(a4, v44, type metadata accessor for AppComposer);
  v29 = v47;
  v23(v47, a1, v9);
  v30 = (*(v46 + 80) + 32) & ~*(v46 + 80);
  v31 = (v45 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
  v32 = v42;
  v33 = (*(v42 + 80) + v31 + 8) & ~*(v42 + 80);
  v34 = (v48 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  *(v35 + 16) = 0;
  *(v35 + 24) = 0;
  sub_1E5E1FA80(v28, v35 + v30);
  v36 = v51;
  *(v35 + v31) = v51;
  (*(v32 + 32))(v35 + v33, v29, v9);
  v37 = (v35 + v34);
  v38 = v50;
  *v37 = v49;
  v37[1] = v38;
  v39 = v36;
  swift_unknownObjectRetain();
  sub_1E64B80F8(0, 0, v27, &unk_1E65EAAF8, v35);
}

uint64_t sub_1E5FB4044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_1E65D76A8();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();
  v10 = sub_1E65D92D8();
  v8[10] = v10;
  v8[11] = *(v10 - 8);
  v8[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4168, 0, 0);
}

uint64_t sub_1E5FB4168()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = ServiceSubscriptionService.queryServiceSubscription.getter();
  v0[13] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FB4284;
  v4 = v0[12];

  return v6(v4);
}

uint64_t sub_1E5FB4284()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E5FB4B20;
  }

  else
  {
    v2 = sub_1E5FB4398;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FB4398()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  sub_1E65D7698();
  v4 = sub_1E65D92A8();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = swift_task_alloc();
    v0[16] = v5;
    *v5 = v0;
    v5[1] = sub_1E5FB4544;

    return sub_1E5FAEFD8(0);
  }

  else
  {
    v8 = v0[11];
    v7 = v0[12];
    v9 = v0[10];
    sub_1E5FB7C50();
    v10 = swift_allocError();
    *v11 = 4;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
    v0[17] = v10;
    v12 = swift_task_alloc();
    v0[18] = v12;
    *v12 = v0;
    v12[1] = sub_1E5FB46C4;
    v13 = v0[4];

    return sub_1E5FB158C(v13);
  }
}

uint64_t sub_1E5FB4544()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4640, 0, 0);
}

uint64_t sub_1E5FB4640()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FB46C4(uint64_t a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB47C4, 0, 0);
}

uint64_t sub_1E5FB47C4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    v11 = *(v0 + 48);
    ObjectType = swift_getObjectType();
    v3 = swift_allocObject();
    *(v0 + 160) = v3;
    *(v3 + 16) = v1;
    v4 = *(v11 + 24);
    v5 = v1;
    v10 = (v4 + *v4);
    v6 = swift_task_alloc();
    *(v0 + 168) = v6;
    *v6 = v0;
    v6[1] = sub_1E5FB4988;
    v7 = *(v0 + 48);

    return v10(sub_1E5FB7C38, v3, ObjectType, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1E5FB4988()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4AA0, 0, 0);
}

uint64_t sub_1E5FB4AA0()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FB4B20()
{

  v0[17] = v0[15];
  v1 = swift_task_alloc();
  v0[18] = v1;
  *v1 = v0;
  v1[1] = sub_1E5FB46C4;
  v2 = v0[4];

  return sub_1E5FB158C(v2);
}

uint64_t sub_1E5FB4BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1E5DFA78C;

  return sub_1E5FB3420(a1, a2, a3, a4, a5);
}

uint64_t sub_1E5FB4C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = sub_1E65DB628();
  v5[8] = v6;
  v5[9] = *(v6 - 8);
  v5[10] = swift_task_alloc();
  v7 = sub_1E65E3B68();
  v5[11] = v7;
  v5[12] = *(v7 - 8);
  v5[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FB4DAC, 0, 0);
}

uint64_t sub_1E5FB4DAC()
{
  v26 = v0;
  v1 = v0[6];
  if (v1)
  {
    v2 = v1;
    sub_1E65DE348();
    v3 = v1;
    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6328();

    v6 = os_log_type_enabled(v4, v5);
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    if (v6)
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v25 = v11;
      *v10 = 136446210;
      swift_getErrorValue();
      v12 = MEMORY[0x1E694E6C0](v0[3], v0[4]);
      v14 = sub_1E5DFD4B0(v12, v13, &v25);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Purchase failed with error: %{public}s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E694F1C0](v11, -1, -1);
      MEMORY[0x1E694F1C0](v10, -1, -1);

      (*(v8 + 8))(v7, v9);
    }

    else
    {

      (*(v8 + 8))(v7, v9);
    }

    v22 = v1;
    v23 = swift_task_alloc();
    v0[14] = v23;
    *v23 = v0;
    v23[1] = sub_1E5FB50B8;
    v24 = v0[6];

    return sub_1E5FAEFD8(v24);
  }

  else
  {
    if (swift_unknownObjectWeakLoadStrong())
    {
      v16 = v0[9];
      v15 = v0[10];
      v17 = v0[8];
      v18 = v0[6];
      swift_getObjectType();
      v19 = v18;
      sub_1E65DB618();
      sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
      sub_1E65DDDE8();
      swift_unknownObjectRelease();
      (*(v16 + 8))(v15, v17);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1E5FB50B8()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1E5FB51D0, 0, 0);
}

uint64_t sub_1E5FB51D0()
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v2 = *(v0 + 72);
    v1 = *(v0 + 80);
    v3 = *(v0 + 64);
    v4 = *(v0 + 48);
    swift_getObjectType();
    v5 = v4;
    sub_1E65DB618();
    sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
    sub_1E65DDDE8();
    swift_unknownObjectRelease();
    (*(v2 + 8))(v1, v3);
  }

  v6 = *(v0 + 8);

  return v6();
}

void *sub_1E5FB544C(void *a1, void *a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  if (a2)
  {
    v10 = a2;
    v11 = [v10 correlationID];
    if (v11)
    {

      v12 = sub_1E65E60A8();
      (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
      v13 = swift_allocObject();
      v13[2] = 0;
      v13[3] = 0;
      v13[4] = v3;
      v14 = v3;
      sub_1E64B80F8(0, 0, v9, &unk_1E65EAB48, v13);
    }

    else
    {
    }
  }

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = result;
    v17 = [a1 metricsOverlay];
    if (v17)
    {
      v18 = v17;
      v19 = sub_1E65E5B08();
    }

    else
    {
      v19 = 0;
    }

    sub_1E5FB63A0(a2, a3, v19);
  }

  return result;
}

uint64_t sub_1E5FB5638()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFA78C;

  return sub_1E5FAEFD8(0);
}

uint64_t sub_1E5FB56E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1E65E6058();
  v5[7] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB577C, v7, v6);
}

uint64_t sub_1E5FB577C()
{
  if (*(v0 + 40) && (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 80) = Strong) != 0))
  {
    v2 = *(v0 + 40);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1E5FB5884;
    v4 = *(v0 + 40);

    return sub_1E5FAEFD8(v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E5FB5884()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5FB9AF4, v4, v3);
}

uint64_t sub_1E5FB59E4(uint64_t a1, void *a2, void (*a3)(uint64_t, void *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  a3(a1, a2);
  v15 = sub_1E65E60A8();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  sub_1E65E6058();
  v16 = a2;

  v17 = sub_1E65E6048();
  v18 = swift_allocObject();
  v19 = MEMORY[0x1E69E85E0];
  v18[2] = v17;
  v18[3] = v19;
  v18[4] = a2;
  v18[5] = a5;
  sub_1E64B80F8(0, 0, v14, a7, v18);
}

uint64_t sub_1E5FB5B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  sub_1E65E6058();
  v5[7] = sub_1E65E6048();
  v7 = sub_1E65E5FC8();
  v5[8] = v7;
  v5[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1E5FB5BCC, v7, v6);
}

uint64_t sub_1E5FB5BCC()
{
  if (*(v0 + 40) && (swift_beginAccess(), Strong = swift_unknownObjectWeakLoadStrong(), (*(v0 + 80) = Strong) != 0))
  {
    v2 = *(v0 + 40);
    v3 = swift_task_alloc();
    *(v0 + 88) = v3;
    *v3 = v0;
    v3[1] = sub_1E5FB5CD4;
    v4 = *(v0 + 40);

    return sub_1E5FAEFD8(v4);
  }

  else
  {

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E5FB5CD4()
{
  v1 = *v0;
  v2 = *(*v0 + 80);

  v3 = *(v1 + 72);
  v4 = *(v1 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1E5FB5E14, v4, v3);
}

uint64_t sub_1E5FB5E14()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1E5FB6044(void *a1, uint64_t a2, void *a3, void *a4, void *a5, void (*a6)(id, void *, void *))
{
  v10 = a3;
  v11 = a4;
  v12 = a1;
  v13 = a5;
  a6(v10, a4, a5);
}

void *sub_1E5FB60F8(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = [a1 metricsOverlay];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1E65E5B08();
    }

    else
    {
      v12 = 0;
    }

    a4(a2, a3, v12);
  }

  return result;
}

id sub_1E5FB6210(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1E5FB62CC(void *a1, int a2, void *a3, void *a4, void *aBlock, void (*a6)(id, id, void *))
{
  v10 = _Block_copy(aBlock);
  _Block_copy(v10);
  v11 = a3;
  v12 = a4;
  v13 = a1;
  a6(v12, v13, v10);
  _Block_release(v10);
  _Block_release(v10);
}

void sub_1E5FB63A0(void *a1, void *a2, uint64_t a3)
{
  v69 = a3;
  v5 = sub_1E65E4F38();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E4F68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E3B68();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v64 - v19;
  if (a2)
  {
    v21 = a2;
    sub_1E65DE348();
    v22 = a2;
    v23 = sub_1E65E3B48();
    v24 = sub_1E65E6328();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      aBlock[0] = v26;
      *v25 = 136446210;
      swift_getErrorValue();
      v27 = MEMORY[0x1E694E6C0](v73, v74);
      v29 = sub_1E5DFD4B0(v27, v28, aBlock);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1E5DE9000, v23, v24, "Purchase failed with error: %{public}s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x1E694F1C0](v26, -1, -1);
      MEMORY[0x1E694F1C0](v25, -1, -1);
    }

    (*(v70 + 8))(v20, v71);
    sub_1E5FB73D8(a2);
    v30 = a2;
LABEL_5:

    return;
  }

  v65 = v12;
  v66 = v10;
  v67 = v8;
  v68 = v6;
  if (!a1)
  {
    sub_1E65DE348();
    v47 = sub_1E65E3B48();
    v48 = sub_1E65E6328();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 0;
      _os_log_impl(&dword_1E5DE9000, v47, v48, "No purchase result found", v49, 2u);
      MEMORY[0x1E694F1C0](v49, -1, -1);
    }

    (*(v70 + 8))(v16, v71);
    sub_1E5FB7CAC();
    v50 = swift_allocError();
    *v51 = 1;
    sub_1E5FB73D8(v50);
    v30 = v50;
    goto LABEL_5;
  }

  v31 = v18;
  v32 = a1;
  v33 = [v32 correlationID];
  if (v33)
  {
    v34 = v33;
    v35 = sub_1E65E5C78();
    v37 = v36;

    sub_1E65DE348();

    v38 = sub_1E65E3B48();
    v39 = sub_1E65E6338();

    v40 = os_log_type_enabled(v38, v39);
    v64 = v9;
    if (v40)
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = v35;
      v44 = v39;
      v45 = v42;
      aBlock[0] = v42;
      *v41 = 136446210;
      v46 = sub_1E5DFD4B0(v43, v37, aBlock);

      *(v41 + 4) = v46;
      _os_log_impl(&dword_1E5DE9000, v38, v44, "Successful purchase with correlation ID: %{public}s", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1E694F1C0](v45, -1, -1);
      MEMORY[0x1E694F1C0](v41, -1, -1);
    }

    else
    {
    }

    (*(v70 + 8))(v31, v71);
    v54 = v66;
    v55 = v69;
    sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
    v56 = sub_1E65E63C8();
    v57 = swift_allocObject();
    v58 = v72;
    v57[2] = v72;
    v57[3] = v32;
    v57[4] = v55;
    aBlock[4] = sub_1E5FB7D70;
    aBlock[5] = v57;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E5E05AB0;
    aBlock[3] = &block_descriptor_67;
    v59 = _Block_copy(aBlock);

    v60 = v32;
    v61 = v58;

    v62 = v65;
    sub_1E65E4F48();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1E5FB96FC(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
    sub_1E5E05A4C();
    v63 = v67;
    sub_1E65E6738();
    MEMORY[0x1E694DDE0](0, v62, v63, v59);
    _Block_release(v59);

    (*(v68 + 8))(v63, v5);
    (*(v54 + 8))(v62, v64);
  }

  else
  {
    sub_1E5FB7CAC();
    v52 = swift_allocError();
    *v53 = 2;
    sub_1E5FB73D8(v52);
  }
}

void sub_1E5FB6B04(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v59 = a3;
  v61 = a1;
  v6 = sub_1E65E4F38();
  v60 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E4F68();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E3B68();
  v62 = *(v13 - 8);
  v63 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v53 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v53 - v20;
  if (a2)
  {
    v22 = a2;
    sub_1E65DE348();
    v23 = a2;
    v24 = sub_1E65E3B48();
    v25 = sub_1E65E6328();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v26 = 136446210;
      swift_getErrorValue();
      v28 = MEMORY[0x1E694E6C0](v64, v65);
      v30 = sub_1E5DFD4B0(v28, v29, aBlock);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_1E5DE9000, v24, v25, "Carrier link failed with error: %{public}s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v27);
      MEMORY[0x1E694F1C0](v27, -1, -1);
      MEMORY[0x1E694F1C0](v26, -1, -1);
    }

    (*(v62 + 8))(v21, v63);
    sub_1E5FB73D8(a2);
    v31 = a2;
LABEL_5:

    return;
  }

  v55 = v12;
  v56 = v10;
  v57 = v8;
  v58 = v9;
  v32 = v61;
  if (!v61)
  {
    sub_1E65DE348();
    v48 = sub_1E65E3B48();
    v49 = sub_1E65E6328();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&dword_1E5DE9000, v48, v49, "No carrier link result found", v50, 2u);
      MEMORY[0x1E694F1C0](v50, -1, -1);
    }

    (*(v62 + 8))(v16, v63);
    sub_1E5FB7CAC();
    v51 = swift_allocError();
    *v52 = 4;
    sub_1E5FB73D8(v51);
    v31 = v51;
    goto LABEL_5;
  }

  v33 = v61;
  sub_1E65DE348();
  v34 = v33;
  v35 = sub_1E65E3B48();
  v36 = sub_1E65E6338();

  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v54 = v4;
    v38 = v37;
    v39 = swift_slowAlloc();
    *v38 = 138412290;
    *(v38 + 4) = v34;
    *v39 = v32;
    v40 = v34;
    _os_log_impl(&dword_1E5DE9000, v35, v36, "Successful carrier link with result: %@", v38, 0xCu);
    sub_1E5DFE50C(v39, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v39, -1, -1);
    v4 = v54;
    MEMORY[0x1E694F1C0](v38, -1, -1);
  }

  (*(v62 + 8))(v19, v63);
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v41 = sub_1E65E63C8();
  v42 = swift_allocObject();
  v42[2] = v4;
  v42[3] = v34;
  v42[4] = v59;
  aBlock[4] = sub_1E5FB7D00;
  aBlock[5] = v42;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor_61;
  v43 = _Block_copy(aBlock);

  v44 = v34;
  v45 = v4;

  v46 = v55;
  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5FB96FC(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  v47 = v57;
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v46, v47, v43);
  _Block_release(v43);

  (*(v60 + 8))(v47, v6);
  (*(v56 + 8))(v46, v58);
}

uint64_t sub_1E5FB71C0(uint64_t a1, void *a2, uint64_t a3, unsigned int *a4)
{
  v7 = sub_1E65DB638();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_1E65DB868();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1 + OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v18[1] = *(v15 + 8);
    v18[0] = swift_getObjectType();
    *v10 = a2;
    (*(v8 + 104))(v10, *a4, v7);

    v17 = a2;
    sub_1E65DB858();
    sub_1E5FB96FC(&qword_1EE2D6D20, MEMORY[0x1E69CD638], MEMORY[0x1E69CD630]);
    sub_1E65DDDE8();
    swift_unknownObjectRelease();
    return (*(v12 + 8))(v14, v11);
  }

  return result;
}

uint64_t sub_1E5FB73D8(void *a1)
{
  v3 = sub_1E65E4F38();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65E4F68();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5DEF738(0, &qword_1EE2D4600, 0x1E69E9610);
  v10 = sub_1E65E63C8();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  *(v11 + 24) = a1;
  aBlock[4] = sub_1E5FB7CA4;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E5E05AB0;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);
  v13 = v1;
  v14 = a1;

  sub_1E65E4F48();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1E5FB96FC(&qword_1EE2D4A00, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078770, &unk_1E65EAB00);
  sub_1E5E05A4C();
  sub_1E65E6738();
  MEMORY[0x1E694DDE0](0, v9, v6, v12);
  _Block_release(v12);

  (*(v4 + 8))(v6, v3);
  return (*(v7 + 8))(v9, v17);
}

uint64_t sub_1E5FB76A8(uint64_t a1, void *a2)
{
  v3 = sub_1E65DB628();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getObjectType();
    v8 = a2;
    sub_1E65DB618();
    sub_1E5FB96FC(&unk_1ED079C30, MEMORY[0x1E69CD580], MEMORY[0x1E69CD578]);
    sub_1E65DDDE8();
    swift_unknownObjectRelease();
    return (*(v4 + 8))(v6, v3);
  }

  return result;
}

id MarketingPurchaseHandler.init()()
{
  *&v0[OBJC_IVAR____TtC10Blackbeard24MarketingPurchaseHandler_eventHub + 8] = 0;
  swift_unknownObjectWeakInit();
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MarketingPurchaseHandler();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t sub_1E5FB78B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FB7920(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E5FB398C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E5FB7A1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SharePlaySessionDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FB7A80(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = *(v1 + v7);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1E5DFA78C;

  return sub_1E5FB4044(a1, v11, v12, v1 + v6, v10, v1 + v9, v14, v15);
}

unint64_t sub_1E5FB7C50()
{
  result = qword_1ED072300;
  if (!qword_1ED072300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072300);
  }

  return result;
}

unint64_t sub_1E5FB7CAC()
{
  result = qword_1ED072310;
  if (!qword_1ED072310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072310);
  }

  return result;
}

uint64_t objectdestroy_57Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1E5FB7D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a4;
  v42 = a1;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0);
  v45 = *(v11 - 8);
  v44 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v36 - v12;
  v14 = sub_1E65E3B68();
  v43 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1E5FB8174(0x65uLL);
  sub_1E65DE338();
  v17 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = v17;
  if (os_log_type_enabled(v17, v40))
  {
    v18 = swift_slowAlloc();
    v39 = a6;
    v19 = v18;
    v37 = swift_slowAlloc();
    v47 = v37;
    *v19 = 134218498;
    *(v19 + 4) = v46;
    *(v19 + 12) = 2080;
    v20 = sub_1E65E68B8();
    v38 = v8;
    v22 = sub_1E5DFD4B0(v20, v21, &v47);
    v36 = v14;
    v23 = v11;
    v24 = a2;
    v25 = a3;
    v26 = a5;
    v27 = v22;
    LOBYTE(v8) = v38;

    *(v19 + 14) = v27;
    a5 = v26;
    a3 = v25;
    a2 = v24;
    v11 = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = a5;
    v28 = v41;
    _os_log_impl(&dword_1E5DE9000, v41, v40, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v19, 0x20u);
    v29 = v37;
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1E694F1C0](v29, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);

    (*(v43 + 8))(v16, v36);
  }

  else
  {

    (*(v43 + 8))(v16, v14);
  }

  v30 = v45;
  (*(v45 + 16))(v13, v42, v11);
  v31 = (*(v30 + 80) + 56) & ~*(v30 + 80);
  v32 = swift_allocObject();
  *(v32 + 16) = v46;
  *(v32 + 24) = a2;
  *(v32 + 32) = a3;
  *(v32 + 40) = v8;
  *(v32 + 48) = a5;
  (*(v30 + 32))(v32 + v31, v13, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B0, &qword_1E65EABE8);
  v33 = sub_1E65DACC8();
  v34 = swift_allocObject();
  *(v34 + 16) = sub_1E5FB9754;
  *(v34 + 24) = v32;

  v33(sub_1E5E20BC8, v34);
}

unint64_t sub_1E5FB8174(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1E694F1E0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1E694F1E0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FB8200(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8)
{
  v31 = a7;
  v30 = a6;
  v29 = a5;
  LODWORD(v10) = a2;
  v12 = sub_1E65E3B68();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DE338();
  v16 = sub_1E65E3B48();
  v17 = sub_1E65E6338();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = a8;
    v19 = v18;
    v20 = swift_slowAlloc();
    HIDWORD(v27) = v10;
    v10 = v20;
    v32 = v20;
    *v19 = 134218498;
    *(v19 + 4) = a3;
    *(v19 + 12) = 2080;
    v21 = sub_1E65E68B8();
    v23 = sub_1E5DFD4B0(v21, v22, &v32);

    *(v19 + 14) = v23;
    *(v19 + 22) = 2048;
    *(v19 + 24) = v31;
    _os_log_impl(&dword_1E5DE9000, v16, v17, "Finished P->A conversion: %ld:%s:%lu", v19, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v10);
    v24 = v10;
    LOBYTE(v10) = BYTE4(v27);
    MEMORY[0x1E694F1C0](v24, -1, -1);
    MEMORY[0x1E694F1C0](v19, -1, -1);
  }

  (*(v13 + 8))(v15, v12);
  v32 = a1;
  v25 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0);
  if (v10)
  {
    return sub_1E65E5FE8();
  }

  else
  {
    return sub_1E65E5FF8();
  }
}

unint64_t sub_1E5FB8458(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0723C0, &qword_1E65EABF8);
    v3 = sub_1E65E6A28();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E5FB97E4(v4, &v16);
      v5 = v16;
      v6 = v17;
      result = sub_1E6215038(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = v3[7] + 40 * result;
      v11 = v18;
      v12 = v19;
      *(v10 + 32) = v20;
      *v10 = v11;
      *(v10 + 16) = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 56;
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
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

void sub_1E5FB857C(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = sub_1E5FB9AD8;
  v10[3] = v8;
  v10[4] = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);

    v14 = [v13 initWithRequest:a1 presentingViewController:v12];
    v15 = [v14 performAuthentication];
    aBlock[4] = sub_1E5FB91E4;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E64453F4;
    aBlock[3] = &block_descriptor_117;
    v16 = _Block_copy(aBlock);

    [v15 addFinishBlock_];

    _Block_release(v16);
  }

  else
  {
    sub_1E5FB9054();
    v17 = swift_allocError();
    _Block_copy(a3);

    v18 = sub_1E65D73A8();
    (a3)[2](a3, 0, v18);

    v19 = sub_1E65E60A8();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_1E65E6058();

    v20 = v17;
    v21 = sub_1E65E6048();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v17;
    v22[5] = v9;
    sub_1E64B80F8(0, 0, v7, &unk_1E65EAB30, v22);
  }
}

void sub_1E5FB88F8(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = aBlock - v6;
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v10 = swift_allocObject();
  v10[2] = sub_1E5FB9AD8;
  v10[3] = v8;
  v10[4] = v9;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);

    v14 = [v13 initWithRequest:a1 presentingViewController:v12];
    v15 = [v14 present];
    aBlock[4] = sub_1E5FB90A8;
    aBlock[5] = v10;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E64453F4;
    aBlock[3] = &block_descriptor_96;
    v16 = _Block_copy(aBlock);

    [v15 addFinishBlock_];

    _Block_release(v16);
  }

  else
  {
    sub_1E5FB9054();
    v17 = swift_allocError();
    _Block_copy(a3);

    v18 = sub_1E65D73A8();
    (a3)[2](a3, 0, v18);

    v19 = sub_1E65E60A8();
    (*(*(v19 - 8) + 56))(v7, 1, 1, v19);
    sub_1E65E6058();

    v20 = v17;
    v21 = sub_1E65E6048();
    v22 = swift_allocObject();
    v23 = MEMORY[0x1E69E85E0];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v17;
    v22[5] = v9;
    sub_1E64B80F8(0, 0, v7, &unk_1E65EAB18, v22);
  }
}

void sub_1E5FB8C74(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x1E698CC58]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 performAuthentication];
    v14[4] = sub_1E5FB904C;
    v14[5] = v5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1E64453F4;
    v14[3] = &block_descriptor_79;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_1E5FB9054();
    v12 = swift_allocError();
    _Block_copy(a3);
    v13 = sub_1E65D73A8();
    (a3)[2](a3, 0, v13);
  }
}

void sub_1E5FB8E60(uint64_t a1, uint64_t a2, void (**a3)(void, void, void))
{
  v5 = swift_allocObject();
  *(v5 + 16) = a3;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = objc_allocWithZone(MEMORY[0x1E698CC50]);
    _Block_copy(a3);
    v9 = [v8 initWithRequest:a1 presentingViewController:v7];
    v10 = [v9 present];
    v14[4] = sub_1E5FB904C;
    v14[5] = v5;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 1107296256;
    v14[2] = sub_1E64453F4;
    v14[3] = &block_descriptor_73;
    v11 = _Block_copy(v14);

    [v10 addFinishBlock_];
    _Block_release(v11);
  }

  else
  {
    sub_1E5FB9054();
    v12 = swift_allocError();
    _Block_copy(a3);
    v13 = sub_1E65D73A8();
    (a3)[2](a3, 0, v13);
  }
}

unint64_t sub_1E5FB9054()
{
  result = qword_1ED072318;
  if (!qword_1ED072318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072318);
  }

  return result;
}

uint64_t sub_1E5FB90E4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FB5B34(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_88Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1E5FB9220(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FB56E4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_91Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1E5FB9328()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E5DFE6BC;

  return sub_1E5FB5638();
}

uint64_t sub_1E5FB93DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E5FB4C90(a1, v4, v5, v6, v7);
}

unint64_t sub_1E5FB94B0()
{
  result = qword_1ED072348;
  if (!qword_1ED072348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072348);
  }

  return result;
}

unint64_t sub_1E5FB9504()
{
  result = qword_1ED072388;
  if (!qword_1ED072388)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072380, &qword_1E65EABB0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072388);
  }

  return result;
}

uint64_t sub_1E5FB9580(uint64_t a1)
{
  v4 = *(sub_1E65DB438() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FB2AF8(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E5FB9660(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FB2F14(a1, v1 + 16);
}

uint64_t sub_1E5FB96FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5FB9754(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723B8, &qword_1E65EABF0) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(v1 + 40);
  v11 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1E5FB8200(v8, v9, v4, v5, v6, v10, v7, v11);
}

uint64_t sub_1E5FB97E4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072390, &qword_1E65EABB8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FB9854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5FB98B4(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(sub_1E65D8D48() - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E5FB0DB4(a1, v1 + v6, v1 + v9);
}

unint64_t sub_1E5FB9A14()
{
  result = qword_1ED0723D8;
  if (!qword_1ED0723D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0723D8);
  }

  return result;
}

unint64_t sub_1E5FB9A6C()
{
  result = qword_1ED0723E0;
  if (!qword_1ED0723E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0723E0);
  }

  return result;
}

uint64_t sub_1E5FB9AF8(uint64_t a1)
{
  v1 = sub_1E65DB948();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DC158();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DAE38();
  v10 = sub_1E65DAE38();
  v11 = MEMORY[0x1E699D400];
  if (v9 != v10)
  {
    v11 = MEMORY[0x1E699D408];
  }

  (*(v6 + 104))(v8, *v11, v5);
  (*(v2 + 104))(v4, *MEMORY[0x1E699D178], v1);
  return sub_1E65DB9E8();
}

uint64_t sub_1E5FB9CA4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2 <= 5)
  {
    if (a2 > 2)
    {
      if (a2 == 3)
      {
        *a3 = xmmword_1E65EADE0;
        return result;
      }

      if (a2 == 4)
      {
        *a3 = xmmword_1E65EADD0;
        return result;
      }
    }

    else if (a2)
    {
      if (a2 == 1)
      {
        *a3 = 0;
        *(a3 + 8) = 0;
        return result;
      }

      if (a2 == 2)
      {
        *a3 = xmmword_1E65EADF0;
        return result;
      }

      goto LABEL_19;
    }

LABEL_8:
    *a3 = xmmword_1E65EAE00;
    return result;
  }

  if ((a2 - 7) < 4)
  {
    goto LABEL_8;
  }

  if (a2 == 6)
  {
    *a3 = xmmword_1E65EADC0;
    return result;
  }

  if (a2 == 11)
  {
    *a3 = xmmword_1E65EADB0;
    return result;
  }

LABEL_19:
  *a3 = result;
  *(a3 + 8) = a2;
}

uint64_t sub_1E5FB9D84(uint64_t a1)
{
  v2 = sub_1E5FBD4C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FB9DC0(uint64_t a1)
{
  v2 = sub_1E5FBD4C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FB9DFC()
{
  v1 = *v0;
  v2 = 0x486B726F77747261;
  v3 = 1954047348;
  if (v1 != 5)
  {
    v3 = 0x6E694C6F65646976;
  }

  v4 = 0x6546646E4177656ELL;
  if (v1 != 3)
  {
    v4 = 0x6C6F686563616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000010;
  if (v1 != 1)
  {
    v5 = 1835365481;
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

uint64_t sub_1E5FB9EF0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E5FBE0B4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E5FB9F24(uint64_t a1)
{
  v2 = sub_1E5FBD1C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FB9F60(uint64_t a1)
{
  v2 = sub_1E5FBD1C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FB9F9C(uint64_t a1)
{
  v2 = sub_1E5FBD474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FB9FD8(uint64_t a1)
{
  v2 = sub_1E5FBD474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA014(uint64_t a1)
{
  v2 = sub_1E5FBD420();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA050(uint64_t a1)
{
  v2 = sub_1E5FBD420();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5FBA138(uint64_t a1)
{
  v2 = sub_1E5FBD378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA174(uint64_t a1)
{
  v2 = sub_1E5FBD378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA1B0(uint64_t a1)
{
  v2 = sub_1E5FBD324();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA1EC(uint64_t a1)
{
  v2 = sub_1E5FBD324();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA228(uint64_t a1)
{
  v2 = sub_1E5FBD2D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA264(uint64_t a1)
{
  v2 = sub_1E5FBD2D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E5FBA2A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E65E6C18();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E5FBA320(uint64_t a1)
{
  v2 = sub_1E5FBD27C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E5FBA35C(uint64_t a1)
{
  v2 = sub_1E5FBD27C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t BrowseItemContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723F0, &qword_1E65EAE10);
  v85 = *(v2 - 8);
  v86 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v82 = &v62 - v3;
  v4 = sub_1E65E0128();
  v83 = *(v4 - 8);
  v84 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v81 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0723F8, &qword_1E65EAE18);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v76 = &v62 - v6;
  v78 = sub_1E65DFC88();
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v75 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072400, &qword_1E65EAE20);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v70 = &v62 - v8;
  v72 = sub_1E65DFDA8();
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v69 = &v62 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072408, &qword_1E65EAE28);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v66 = &v62 - v10;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072410, &qword_1E65EAE30);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v95 = &v62 - v11;
  v12 = sub_1E65DF978();
  v93 = *(v12 - 8);
  v94 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v92 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072418, &qword_1E65EAE38);
  v90 = *(v14 - 8);
  v91 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v62 - v15;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072420, &qword_1E65EAE40);
  v63 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v17 = &v62 - v16;
  v18 = sub_1E65DFF38();
  v87 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v62 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for BrowseItemContext(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072428, &qword_1E65EAE48);
  v97 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v25 = &v62 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E5FBD1C4();
  v98 = v25;
  sub_1E65E6DA8();
  sub_1E5FBD218(v96, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v34 = v20;
    v35 = v17;
    v36 = v89;
    v37 = v90;
    v38 = v88;
    v39 = v18;
    v40 = v91;
    v42 = v94;
    v41 = v95;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v101 = 1;
        sub_1E5FBD474();
        v43 = v99;
        v44 = v98;
        sub_1E65E6B18();
        sub_1E65E6B48();

        (*(v37 + 8))(v36, v40);
        return (*(v97 + 8))(v44, v43);
      }

      v56 = v93;
      v57 = v23;
      v58 = v92;
      (*(v93 + 32))(v92, v57, v94);
      v102 = 2;
      sub_1E5FBD420();
      v59 = v41;
      v50 = v98;
      sub_1E65E6B18();
      sub_1E5FBD61C(&qword_1ED072480, MEMORY[0x1E699D410], MEMORY[0x1E699D418]);
      v60 = v65;
      sub_1E65E6B78();
      (*(v64 + 8))(v59, v60);
      (*(v56 + 8))(v58, v42);
      v27 = v99;
    }

    else
    {
      v53 = v87;
      v54 = v34;
      v55 = v39;
      (*(v87 + 32))(v34, v23, v39);
      v100 = 0;
      sub_1E5FBD4C8();
      v50 = v98;
      sub_1E65E6B18();
      sub_1E5FBD61C(&qword_1ED072498, MEMORY[0x1E699D5E0], MEMORY[0x1E699D5E8]);
      sub_1E65E6B78();
      (*(v63 + 8))(v35, v38);
      (*(v53 + 8))(v54, v55);
      v27 = v99;
    }

    goto LABEL_16;
  }

  if (EnumCaseMultiPayload > 4)
  {
    v27 = v99;
    if (EnumCaseMultiPayload != 5)
    {
      v46 = v83;
      v48 = v84;
      v47 = v81;
      (*(v83 + 32))(v81, v23, v84);
      v107 = 6;
      sub_1E5FBD27C();
      v49 = v82;
      v50 = v98;
      sub_1E65E6B18();
      sub_1E5FBD61C(&qword_1ED072440, MEMORY[0x1E699D660], MEMORY[0x1E699D668]);
      v51 = v86;
      sub_1E65E6B78();
      v61 = v85;
      goto LABEL_15;
    }

    v46 = v77;
    v47 = v75;
    v48 = v78;
    (*(v77 + 32))(v75, v23, v78);
    v106 = 5;
    sub_1E5FBD2D0();
    v49 = v76;
    v50 = v98;
    sub_1E65E6B18();
    sub_1E5FBD61C(&qword_1ED072450, MEMORY[0x1E699D548], MEMORY[0x1E699D550]);
    v51 = v80;
    sub_1E65E6B78();
    v52 = &v109;
LABEL_13:
    v61 = *(v52 - 32);
LABEL_15:
    (*(v61 + 8))(v49, v51);
    (*(v46 + 8))(v47, v48);
LABEL_16:
    v32 = *(v97 + 8);
    v33 = v50;
    return v32(v33, v27);
  }

  v27 = v99;
  if (EnumCaseMultiPayload != 3)
  {
    v46 = v71;
    v47 = v69;
    v48 = v72;
    (*(v71 + 32))(v69, v23, v72);
    v105 = 4;
    sub_1E5FBD324();
    v49 = v70;
    v50 = v98;
    sub_1E65E6B18();
    sub_1E5FBD61C(&qword_1ED072460, MEMORY[0x1E699D578], MEMORY[0x1E699D580]);
    v51 = v74;
    sub_1E65E6B78();
    v52 = &v108;
    goto LABEL_13;
  }

  v28 = *v23;
  v104 = 3;
  sub_1E5FBD378();
  v29 = v66;
  v30 = v98;
  sub_1E65E6B18();
  v103 = v28;
  sub_1E5FBD3CC();
  v31 = v68;
  sub_1E65E6B78();
  (*(v67 + 8))(v29, v31);
  v32 = *(v97 + 8);
  v33 = v30;
  return v32(v33, v27);
}

uint64_t BrowseItemContext.hash(into:)(uint64_t a1)
{
  v37 = a1;
  v1 = sub_1E65E0128();
  v34 = *(v1 - 8);
  v35 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v33 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1E65DFC88();
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65DFDA8();
  v30 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DF978();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DFF38();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for BrowseItemContext(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5FBD218(v36, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        MEMORY[0x1E694E740](1);
        sub_1E65E5D78();
      }

      else
      {
        (*(v9 + 32))(v11, v18, v8);
        MEMORY[0x1E694E740](2);
        sub_1E5FBD61C(qword_1EE2D6610, MEMORY[0x1E699D410], MEMORY[0x1E699D420]);
        sub_1E65E5B48();
        return (*(v9 + 8))(v11, v8);
      }
    }

    else
    {
      (*(v13 + 32))(v15, v18, v12);
      MEMORY[0x1E694E740](0);
      sub_1E5FBD61C(&qword_1ED0724B0, MEMORY[0x1E699D5E0], MEMORY[0x1E699D5F0]);
      sub_1E65E5B48();
      return (*(v13 + 8))(v15, v12);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v22 = v31;
      v21 = v32;
      v23 = v29;
      (*(v31 + 32))(v29, v18, v32);
      MEMORY[0x1E694E740](5);
      v24 = &unk_1ED0724A8;
      v25 = MEMORY[0x1E699D548];
      v26 = MEMORY[0x1E699D558];
    }

    else
    {
      v23 = v33;
      v22 = v34;
      v21 = v35;
      (*(v34 + 32))(v33, v18, v35);
      MEMORY[0x1E694E740](6);
      v24 = &unk_1ED0724A0;
      v25 = MEMORY[0x1E699D660];
      v26 = MEMORY[0x1E699D670];
    }

    sub_1E5FBD61C(v24, v25, v26);
    sub_1E65E5B48();
    return (*(v22 + 8))(v23, v21);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    MEMORY[0x1E694E740](3);
    return sub_1E65E03E8();
  }

  else
  {
    v27 = v30;
    (*(v30 + 32))(v7, v18, v5);
    MEMORY[0x1E694E740](4);
    sub_1E5FBD61C(&qword_1EE2D65E8, MEMORY[0x1E699D578], MEMORY[0x1E699D588]);
    sub_1E65E5B48();
    return (*(v27 + 8))(v7, v5);
  }
}

uint64_t BrowseItemContext.hashValue.getter()
{
  sub_1E65E6D28();
  BrowseItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t BrowseItemContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724B8, &qword_1E65EAE50);
  v4 = *(v3 - 8);
  v109 = v3;
  v110 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v112 = &v89 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724C0, &qword_1E65EAE58);
  v107 = *(v6 - 8);
  v108 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v114 = &v89 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724C8, &qword_1E65EAE60);
  v105 = *(v8 - 8);
  v106 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v113 = &v89 - v9;
  v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724D0, &qword_1E65EAE68);
  v104 = *(v101 - 8);
  MEMORY[0x1EEE9AC00](v101);
  v120 = &v89 - v10;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724D8, &qword_1E65EAE70);
  v103 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v119 = &v89 - v11;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724E0, &qword_1E65EAE78);
  v100 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v118 = &v89 - v12;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724E8, &qword_1E65EAE80);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v116 = &v89 - v13;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0724F0, &unk_1E65EAE88);
  v121 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v15 = &v89 - v14;
  v115 = type metadata accessor for BrowseItemContext(0);
  v16 = MEMORY[0x1EEE9AC00](v115);
  v96 = &v89 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v95 = &v89 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v94 = &v89 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v89 - v23;
  v25 = MEMORY[0x1EEE9AC00](v22);
  v27 = &v89 - v26;
  v28 = MEMORY[0x1EEE9AC00](v25);
  v30 = &v89 - v29;
  v31 = MEMORY[0x1EEE9AC00](v28);
  v33 = &v89 - v32;
  MEMORY[0x1EEE9AC00](v31);
  v35 = &v89 - v34;
  v36 = a1[3];
  v122 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v36);
  sub_1E5FBD1C4();
  v37 = v123;
  sub_1E65E6D98();
  v123 = v37;
  if (v37)
  {
    goto LABEL_13;
  }

  v89 = v30;
  v91 = v33;
  v90 = v24;
  v92 = v27;
  v38 = v116;
  v40 = v118;
  v39 = v119;
  v41 = v120;
  v93 = v35;
  v42 = v117;
  v43 = sub_1E65E6AF8();
  if (*(v43 + 16) != 1 || (v44 = *(v43 + 32), v44 == 7))
  {
    v49 = sub_1E65E68F8();
    v50 = swift_allocError();
    v52 = v51;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80);
    *v52 = v115;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v49 - 8) + 104))(v52, *MEMORY[0x1E69E6AF8], v49);
    v123 = v50;
    swift_willThrow();
    goto LABEL_11;
  }

  if (*(v43 + 32) > 2u)
  {
    if (*(v43 + 32) > 4u)
    {
      v45 = v121;
      if (v44 != 5)
      {
        v131 = 6;
        sub_1E5FBD27C();
        v78 = v123;
        sub_1E65E6A68();
        v123 = v78;
        if (v78)
        {
          goto LABEL_36;
        }

        sub_1E65E0128();
        sub_1E5FBD61C(&qword_1ED0724F8, MEMORY[0x1E699D660], MEMORY[0x1E699D678]);
        v79 = v96;
        v80 = v109;
        v81 = v112;
        v82 = v123;
        sub_1E65E6AD8();
        v123 = v82;
        if (v82)
        {
          (*(v110 + 8))(v81, v80);
          goto LABEL_36;
        }

        (*(v110 + 8))(v81, v80);
        (*(v45 + 8))(v15, v42);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v88 = v79;
        goto LABEL_42;
      }

      v130 = 5;
      sub_1E5FBD2D0();
      v60 = v123;
      sub_1E65E6A68();
      v123 = v60;
      if (v60)
      {
        goto LABEL_36;
      }

      sub_1E65DFC88();
      sub_1E5FBD61C(&qword_1ED072500, MEMORY[0x1E699D548], MEMORY[0x1E699D560]);
      v86 = v95;
      v61 = v108;
      v62 = v114;
      v63 = v123;
      sub_1E65E6AD8();
      v123 = v63;
      if (v63)
      {
        v64 = v107;
LABEL_32:
        (*(v64 + 8))(v62, v61);
        goto LABEL_36;
      }

      (*(v107 + 8))(v62, v61);
      (*(v45 + 8))(v15, v42);
      swift_unknownObjectRelease();
    }

    else
    {
      v45 = v121;
      if (v44 == 3)
      {
        v128 = 3;
        sub_1E5FBD378();
        v46 = v123;
        sub_1E65E6A68();
        v123 = v46;
        if (v46)
        {
LABEL_36:
          (*(v45 + 8))(v15, v42);
          goto LABEL_12;
        }

        sub_1E5FBD580();
        v47 = v101;
        v48 = v123;
        sub_1E65E6AD8();
        v123 = v48;
        if (v48)
        {
          (*(v104 + 8))(v41, v47);
          goto LABEL_36;
        }

        (*(v104 + 8))(v41, v47);
        (*(v45 + 8))(v15, v42);
        swift_unknownObjectRelease();
        v87 = v90;
        *v90 = v127;
        swift_storeEnumTagMultiPayload();
        v88 = v87;
        goto LABEL_42;
      }

      v129 = 4;
      sub_1E5FBD324();
      v76 = v123;
      sub_1E65E6A68();
      v123 = v76;
      if (v76)
      {
        goto LABEL_36;
      }

      sub_1E65DFDA8();
      sub_1E5FBD61C(&qword_1ED072508, MEMORY[0x1E699D578], MEMORY[0x1E699D590]);
      v86 = v94;
      v61 = v106;
      v62 = v113;
      v77 = v123;
      sub_1E65E6AD8();
      v123 = v77;
      if (v77)
      {
        v64 = v105;
        goto LABEL_32;
      }

      (*(v105 + 8))(v62, v61);
      (*(v45 + 8))(v15, v42);
      swift_unknownObjectRelease();
    }

LABEL_41:
    swift_storeEnumTagMultiPayload();
    v88 = v86;
LABEL_42:
    v70 = v93;
    sub_1E5FBD51C(v88, v93);
    v69 = v122;
    goto LABEL_43;
  }

  if (!*(v43 + 32))
  {
    v124 = 0;
    sub_1E5FBD4C8();
    v65 = v123;
    sub_1E65E6A68();
    v123 = v65;
    if (!v65)
    {
      sub_1E65DFF38();
      sub_1E5FBD61C(&qword_1ED072520, MEMORY[0x1E699D5E0], MEMORY[0x1E699D5F8]);
      v66 = v91;
      v67 = v99;
      v68 = v123;
      sub_1E65E6AD8();
      (*(v98 + 8))(v38, v67);
      (*(v121 + 8))(v15, v42);
      swift_unknownObjectRelease();
      v53 = v122;
      v123 = v68;
      if (v68)
      {
        return __swift_destroy_boxed_opaque_existential_1(v53);
      }

      v69 = v122;
      swift_storeEnumTagMultiPayload();
      v70 = v93;
      sub_1E5FBD51C(v66, v93);
LABEL_43:
      sub_1E5FBD51C(v70, v111);
      v53 = v69;
      return __swift_destroy_boxed_opaque_existential_1(v53);
    }

    goto LABEL_11;
  }

  if (v44 == 1)
  {
    v125 = 1;
    sub_1E5FBD474();
    v55 = v40;
    v56 = v123;
    sub_1E65E6A68();
    v123 = v56;
    if (!v56)
    {
      v57 = v97;
      v58 = sub_1E65E6AA8();
      v59 = v55;
      v123 = 0;
      v83 = v58;
      v85 = v84;
      (*(v100 + 8))(v59, v57);
      (*(v121 + 8))(v15, v42);
      swift_unknownObjectRelease();
      v86 = v89;
      *v89 = v83;
      *(v86 + 1) = v85;
      goto LABEL_41;
    }

    goto LABEL_11;
  }

  v126 = 2;
  sub_1E5FBD420();
  v71 = v123;
  sub_1E65E6A68();
  v123 = v71;
  if (v71)
  {
LABEL_11:
    (*(v121 + 8))(v15, v42);
    goto LABEL_12;
  }

  sub_1E65DF978();
  sub_1E5FBD61C(&qword_1ED072518, MEMORY[0x1E699D410], MEMORY[0x1E699D428]);
  v86 = v92;
  v72 = v102;
  v73 = v123;
  sub_1E65E6AD8();
  v74 = v39;
  v75 = v121;
  v123 = v73;
  if (!v73)
  {
    (*(v103 + 8))(v74, v72);
    (*(v75 + 8))(v15, v42);
    swift_unknownObjectRelease();
    goto LABEL_41;
  }

  (*(v103 + 8))(v74, v72);
  (*(v75 + 8))(v15, v42);
LABEL_12:
  swift_unknownObjectRelease();
LABEL_13:
  v53 = v122;
  return __swift_destroy_boxed_opaque_existential_1(v53);
}

uint64_t sub_1E5FBC718()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC74C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_1E5FBC780()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_1E5FBC7AC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC7E0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC814()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC848()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC87C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E5FBC8E0()
{
  sub_1E65E6D28();
  BrowseItemContext.hash(into:)(v1);
  return sub_1E65E6D78();
}

uint64_t sub_1E5FBC924(uint64_t a1)
{
  sub_1E65E6D28();
  BrowseItemContext.hash(into:)(v2);
  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard17BrowseItemContextO2eeoiySbAC_ACtFZ_0(char *a1, char *a2)
{
  v85 = a1;
  v86 = a2;
  v2 = sub_1E65E0128();
  v77 = *(v2 - 8);
  v78 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v72 = &v69 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65DFC88();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v71 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65DFDA8();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v70 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65DF978();
  v83 = *(v8 - 8);
  v84 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1E65DFF38();
  v82 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for BrowseItemContext(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v81 = &v69 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v80 = &v69 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v79 = &v69 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v69 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v69 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = (&v69 - v28);
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v69 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0725F0, &qword_1E65EB898);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v35 = &v69 - v34;
  v36 = (&v69 + *(v33 + 56) - v34);
  sub_1E5FBD218(v85, &v69 - v34);
  sub_1E5FBD218(v86, v36);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v85 = v13;
    v86 = v10;
    v40 = v82;
    v39 = v83;
    v41 = v11;
    v42 = v84;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1E5FBD218(v35, v29);
        v44 = *v29;
        v43 = v29[1];
        if (swift_getEnumCaseMultiPayload() == 1)
        {
          v45 = *v36;
          v46 = v36[1];
          if (v44 == v45 && v43 == v46)
          {
          }

          else
          {
            v68 = sub_1E65E6C18();

            if ((v68 & 1) == 0)
            {
              sub_1E5FBE388(v35);
              goto LABEL_30;
            }
          }

          sub_1E5FBE388(v35);
          v38 = 1;
          return v38 & 1;
        }
      }

      else
      {
        sub_1E5FBD218(v35, v26);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          v52 = v39;
          v53 = *(v39 + 32);
          v54 = v86;
          v53(v86, v36, v42);
          v38 = MEMORY[0x1E6947320](v26, v54);
          v55 = *(v52 + 8);
          v55(v54, v42);
          v55(v26, v42);
          goto LABEL_32;
        }

        (*(v39 + 8))(v26, v42);
      }
    }

    else
    {
      sub_1E5FBD218(v35, v31);
      if (!swift_getEnumCaseMultiPayload())
      {
        v65 = v85;
        (*(v40 + 32))(v85, v36, v41);
        v38 = sub_1E65DFF28();
        v66 = *(v40 + 8);
        v66(v65, v41);
        v66(v31, v41);
        goto LABEL_32;
      }

      (*(v40 + 8))(v31, v41);
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload == 5)
    {
      v47 = v80;
      sub_1E5FBD218(v35, v80);
      if (swift_getEnumCaseMultiPayload() == 5)
      {
        v49 = v75;
        v48 = v76;
        v50 = v71;
        (*(v75 + 32))(v71, v36, v76);
        v38 = MEMORY[0x1E6947680](v47, v50);
        v51 = *(v49 + 8);
        v51(v50, v48);
        v51(v47, v48);
        goto LABEL_32;
      }

      (*(v75 + 8))(v47, v76);
      goto LABEL_29;
    }

    v62 = v81;
    sub_1E5FBD218(v35, v81);
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      v63 = v77;
      v57 = v78;
      v64 = v72;
      (*(v77 + 32))(v72, v36, v78);
      v38 = sub_1E65E0118();
      v60 = *(v63 + 8);
      v60(v64, v57);
      v61 = v62;
      goto LABEL_23;
    }

    (*(v77 + 8))(v62, v78);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1E5FBD218(v35, v23);
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v38 = sub_1E65E03D8();
LABEL_32:
        sub_1E5FBE388(v35);
        return v38 & 1;
      }

      goto LABEL_29;
    }

    v56 = v79;
    sub_1E5FBD218(v35, v79);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v58 = v73;
      v57 = v74;
      v59 = v70;
      (*(v73 + 32))(v70, v36, v74);
      v38 = MEMORY[0x1E69477A0](v56, v59);
      v60 = *(v58 + 8);
      v60(v59, v57);
      v61 = v56;
LABEL_23:
      v60(v61, v57);
      goto LABEL_32;
    }

    (*(v73 + 8))(v56, v74);
  }

LABEL_29:
  sub_1E5FBE320(v35);
LABEL_30:
  v38 = 0;
  return v38 & 1;
}

unint64_t sub_1E5FBD1C4()
{
  result = qword_1ED072430;
  if (!qword_1ED072430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072430);
  }

  return result;
}

uint64_t sub_1E5FBD218(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItemContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5FBD27C()
{
  result = qword_1ED072438;
  if (!qword_1ED072438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072438);
  }

  return result;
}

unint64_t sub_1E5FBD2D0()
{
  result = qword_1ED072448;
  if (!qword_1ED072448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072448);
  }

  return result;
}

unint64_t sub_1E5FBD324()
{
  result = qword_1ED072458;
  if (!qword_1ED072458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072458);
  }

  return result;
}

unint64_t sub_1E5FBD378()
{
  result = qword_1ED072468;
  if (!qword_1ED072468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072468);
  }

  return result;
}

unint64_t sub_1E5FBD3CC()
{
  result = qword_1ED072470;
  if (!qword_1ED072470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072470);
  }

  return result;
}

unint64_t sub_1E5FBD420()
{
  result = qword_1ED072478;
  if (!qword_1ED072478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072478);
  }

  return result;
}

unint64_t sub_1E5FBD474()
{
  result = qword_1ED072488;
  if (!qword_1ED072488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072488);
  }

  return result;
}

unint64_t sub_1E5FBD4C8()
{
  result = qword_1ED072490;
  if (!qword_1ED072490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072490);
  }

  return result;
}

uint64_t sub_1E5FBD51C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BrowseItemContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5FBD580()
{
  result = qword_1ED072510;
  if (!qword_1ED072510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072510);
  }

  return result;
}

uint64_t sub_1E5FBD61C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t getEnumTagSinglePayload for RouteAnnotation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for RouteAnnotation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E5FBD878()
{
  result = qword_1ED072530;
  if (!qword_1ED072530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072530);
  }

  return result;
}

unint64_t sub_1E5FBD8D0()
{
  result = qword_1ED072538;
  if (!qword_1ED072538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072538);
  }

  return result;
}

unint64_t sub_1E5FBD928()
{
  result = qword_1ED072540;
  if (!qword_1ED072540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072540);
  }

  return result;
}

unint64_t sub_1E5FBD980()
{
  result = qword_1ED072548;
  if (!qword_1ED072548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072548);
  }

  return result;
}

unint64_t sub_1E5FBD9D8()
{
  result = qword_1ED072550;
  if (!qword_1ED072550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072550);
  }

  return result;
}

unint64_t sub_1E5FBDA30()
{
  result = qword_1ED072558;
  if (!qword_1ED072558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072558);
  }

  return result;
}

unint64_t sub_1E5FBDA88()
{
  result = qword_1ED072560;
  if (!qword_1ED072560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072560);
  }

  return result;
}

unint64_t sub_1E5FBDAE0()
{
  result = qword_1ED072568;
  if (!qword_1ED072568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072568);
  }

  return result;
}

unint64_t sub_1E5FBDB38()
{
  result = qword_1ED072570;
  if (!qword_1ED072570)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072570);
  }

  return result;
}

unint64_t sub_1E5FBDB90()
{
  result = qword_1ED072578;
  if (!qword_1ED072578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072578);
  }

  return result;
}

unint64_t sub_1E5FBDBE8()
{
  result = qword_1ED072580;
  if (!qword_1ED072580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072580);
  }

  return result;
}

unint64_t sub_1E5FBDC40()
{
  result = qword_1ED072588;
  if (!qword_1ED072588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072588);
  }

  return result;
}

unint64_t sub_1E5FBDC98()
{
  result = qword_1ED072590;
  if (!qword_1ED072590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072590);
  }

  return result;
}

unint64_t sub_1E5FBDCF0()
{
  result = qword_1ED072598;
  if (!qword_1ED072598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072598);
  }

  return result;
}

unint64_t sub_1E5FBDD48()
{
  result = qword_1ED0725A0;
  if (!qword_1ED0725A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725A0);
  }

  return result;
}

unint64_t sub_1E5FBDDA0()
{
  result = qword_1ED0725A8;
  if (!qword_1ED0725A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725A8);
  }

  return result;
}

unint64_t sub_1E5FBDDF8()
{
  result = qword_1ED0725B0;
  if (!qword_1ED0725B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725B0);
  }

  return result;
}

unint64_t sub_1E5FBDE50()
{
  result = qword_1ED0725B8;
  if (!qword_1ED0725B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725B8);
  }

  return result;
}

unint64_t sub_1E5FBDEA8()
{
  result = qword_1ED0725C0;
  if (!qword_1ED0725C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725C0);
  }

  return result;
}

unint64_t sub_1E5FBDF00()
{
  result = qword_1ED0725C8;
  if (!qword_1ED0725C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725C8);
  }

  return result;
}

unint64_t sub_1E5FBDF58()
{
  result = qword_1ED0725D0;
  if (!qword_1ED0725D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725D0);
  }

  return result;
}

unint64_t sub_1E5FBDFB0()
{
  result = qword_1ED0725D8;
  if (!qword_1ED0725D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725D8);
  }

  return result;
}

unint64_t sub_1E5FBE008()
{
  result = qword_1ED0725E0;
  if (!qword_1ED0725E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725E0);
  }

  return result;
}

unint64_t sub_1E5FBE060()
{
  result = qword_1ED0725E8;
  if (!qword_1ED0725E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725E8);
  }

  return result;
}

uint64_t sub_1E5FBE0B4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x486B726F77747261 && a2 == 0xED00007265646165;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001E6610B10 == a2 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1835365481 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6546646E4177656ELL && a2 == 0xEE00646572757461 || (sub_1E65E6C18() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6F686563616C70 && a2 == 0xEB00000000726564 || (sub_1E65E6C18() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1E65E6C18() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E694C6F65646976 && a2 == 0xE90000000000006BLL)
  {

    return 6;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E5FBE320(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0725F0, &qword_1E65EB898);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5FBE388(uint64_t a1)
{
  v2 = type metadata accessor for BrowseItemContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5FBE400@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E2C78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E2948();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5FBE720(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v5 + 32))(v7, v10, v4);
        sub_1E65E2C28();
        sub_1E65E2C68();
        sub_1E65E2C38();
        sub_1E65E2C48();
        sub_1E65D8318();
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        v13 = v10[1];
        *a1 = *v10;
        *(a1 + 8) = v13;
      }

      goto LABEL_5;
    }

LABEL_9:
    v14 = v10[1];
    *a1 = *v10;
    *(a1 + 8) = v14;
    sub_1E65D9758();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 6)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v12 = v10[1];
    *a1 = *v10;
    *(a1 + 8) = v12;
  }

  else
  {
    v18[0] = sub_1E65E2D48();
    v18[1] = v15;
    sub_1E5FBE784();
    sub_1E65D7FA8();
    v16 = v20;
    *a1 = v19;
    *(a1 + 16) = v16;
  }

LABEL_5:
  sub_1E65D9758();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5FBE720(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E2948();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E5FBE784()
{
  result = qword_1ED0725F8;
  if (!qword_1ED0725F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0725F8);
  }

  return result;
}

uint64_t sub_1E5FBE828(void *a1, uint64_t a2, unsigned __int8 a3)
{
  v5 = sub_1E65D7848();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v9 - 8);
  sub_1E65E5BA8();
  (*(v6 + 16))(v8, a2, v5);
  v10 = a1;
  return sub_1E65E5D48();
}

uint64_t sub_1E5FBEA08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = v3;
  v54 = a3;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = MEMORY[0x1EEE9AC00](v7 - 8);
  v56 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v55 = &v47 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v51 = &v47 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v47 - v15;
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  sub_1E65E5148();

  v50 = sub_1E65E5138();
  v18 = v4;
  v57 = v4;
  sub_1E5E1DEAC(v4, v16);
  v19 = *(v8 + 80);
  v20 = (v19 + 32) & ~v19;
  v52 = v20 + v9;
  v53 = v20;
  v21 = (v20 + v9) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  v48 = v17;
  v49 = &unk_1E65EB910;
  *(v22 + 16) = &unk_1E65EB910;
  *(v22 + 24) = v17;
  sub_1E5E1FA80(v16, v22 + v20);
  *(v22 + v20 + v9) = 0;
  v23 = v22 + v21;
  v58 = sub_1E6172524;
  *(v23 + 8) = sub_1E6172524;
  *(v23 + 16) = 0;
  v24 = (v22 + ((v21 + 31) & 0xFFFFFFFFFFFFFFF8));
  v25 = MEMORY[0x1E69AB380];
  v27 = v50;
  v26 = v51;
  *v24 = v50;
  v24[1] = v25;
  sub_1E5E1DEAC(v18, v26);
  v28 = (v19 + 48) & ~v19;
  v29 = v28 + v9;
  v30 = (v28 + v9) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v49;
  v31[2] = v49;
  v31[3] = v17;
  v31[4] = v27;
  v33 = v27;
  v31[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v26, v31 + v28);
  *(v31 + v29) = 0;
  v34 = v31 + v30;
  v35 = v57;
  *(v34 + 1) = v58;
  *(v34 + 2) = 0;
  v36 = v55;
  sub_1E5E1DEAC(v35, v55);
  v37 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v39 = v32;
  v38[2] = v32;
  v40 = v48;
  v38[3] = v48;
  v38[4] = v33;
  v38[5] = MEMORY[0x1E69AB380];
  sub_1E5E1FA80(v36, v38 + v28);
  v41 = v38 + v37;
  v42 = v57;
  *v41 = v58;
  *(v41 + 1) = 0;
  v41[16] = 0;
  v43 = v56;
  sub_1E5E1DEAC(v42, v56);
  v44 = swift_allocObject();
  *(v44 + 16) = v39;
  *(v44 + 24) = v40;
  sub_1E5E1FA80(v43, v44 + v53);
  swift_retain_n();
  result = swift_retain_n();
  v46 = v54;
  *v54 = v33;
  v46[1] = MEMORY[0x1E69AB380];
  v46[2] = &unk_1E65EB918;
  v46[3] = v22;
  v46[4] = &unk_1E65FA770;
  v46[5] = v31;
  v46[6] = &unk_1E65EB920;
  v46[7] = v38;
  v46[8] = &unk_1E65FA780;
  v46[9] = v44;
  return result;
}

uint64_t sub_1E5FBEDA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v3[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v3[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FBEEEC, 0, 0);
}

uint64_t sub_1E5FBEEEC()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = v0[2];
  v6 = *MEMORY[0x1E69CBD68];
  v7 = sub_1E65D8F38();
  v8 = *(v7 - 8);
  (*(v8 + 104))(v2, v6, v7);
  (*(v8 + 56))(v2, 0, 1, v7);
  v9 = sub_1E65D74E8();
  (*(*(v9 - 8) + 56))(v1, 1, 1, v9);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v3, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);

  sub_1E65D7A28();
  v12 = sub_1E65D7A38();
  (*(*(v12 - 8) + 56))(v5, 0, 1, v12);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1E5FBF150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v5[4] = type metadata accessor for PageMetricsClick(0);
  v5[5] = swift_task_alloc();
  v6 = sub_1E65E1998();
  v5[6] = v6;
  v5[7] = *(v6 - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FBF240, 0, 0);
}

uint64_t sub_1E5FBF240()
{
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];
  (*(v2 + 16))(v1, v0[2], v3);
  if ((*(v2 + 88))(v1, v3) == *MEMORY[0x1E699E968])
  {
    v5 = v0[4];
    v4 = v0[5];
    v6 = v0[3];
    v7 = sub_1E65D9D78();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = v5[5];
    v9 = *MEMORY[0x1E69CBA90];
    v10 = sub_1E65D8C68();
    (*(*(v10 - 8) + 104))(v4 + v8, v9, v10);
    v11 = v5[6];
    v12 = sub_1E65D74E8();
    (*(*(v12 - 8) + 56))(v4 + v11, 1, 1, v12);
    v13 = v5[8];
    v14 = sub_1E65DA208();
    (*(*(v14 - 8) + 56))(v4 + v13, 1, 1, v14);
    v15 = v5[14];
    v16 = *MEMORY[0x1E69CBCC8];
    v17 = sub_1E65D8F28();
    (*(*(v17 - 8) + 104))(v4 + v15, v16, v17);
    v18 = v5[15];
    v19 = sub_1E65D9908();
    (*(*(v19 - 8) + 56))(v4 + v18, 1, 1, v19);
    v20 = MEMORY[0x1E69E7CC0];
    v21 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v4 + v5[7]) = v20;
    v22 = (v4 + v5[9]);
    *v22 = 0;
    v22[1] = 0;
    v23 = (v4 + v5[10]);
    *v23 = 0;
    v23[1] = 0;
    *(v4 + v5[11]) = v21;
    v24 = (v4 + v5[12]);
    *v24 = 0;
    v24[1] = 0;
    *(v4 + v5[13]) = xmmword_1E65EB8E0;
    v29 = (*(v6 + 48) + **(v6 + 48));
    v25 = swift_task_alloc();
    v0[9] = v25;
    *v25 = v0;
    v25[1] = sub_1E5FBF5FC;
    v26 = v0[5];

    return v29(v26);
  }

  else
  {
    (*(v0[7] + 8))(v0[8], v0[6]);

    v28 = v0[1];

    return v28();
  }
}

uint64_t sub_1E5FBF5FC()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1E5FBF788;
  }

  else
  {
    v2 = sub_1E5FBF710;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FBF710()
{
  sub_1E5FC0990(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FBF788()
{
  sub_1E5FC0990(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FBF804(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[22] = a4;
  v5[23] = a5;
  v5[24] = type metadata accessor for PageMetricsClick(0);
  v5[25] = swift_task_alloc();
  v6 = sub_1E65E1BA8();
  v5[26] = v6;
  v5[27] = *(v6 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v7 = sub_1E65E19C8();
  v5[30] = v7;
  v5[31] = *(v7 - 8);
  v5[32] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FBF95C, 0, 0);
}

uint64_t sub_1E5FBF95C()
{
  v2 = *(v0 + 248);
  v1 = *(v0 + 256);
  v3 = *(v0 + 240);
  (*(v2 + 16))(v1, *(v0 + 176), v3);
  v4 = (*(v2 + 88))(v1, v3);
  if (v4 == *MEMORY[0x1E699E980] || v4 == *MEMORY[0x1E699E988])
  {
    goto LABEL_3;
  }

  if (v4 == *MEMORY[0x1E699E990])
  {
    v12 = *(v0 + 256);
    v13 = *(v0 + 232);
    v14 = *(v0 + 208);
    v15 = *(v0 + 216);
    (*(*(v0 + 248) + 96))(v12, *(v0 + 240));
    *(v0 + 336) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
    (*(v15 + 32))(v13, v12, v14);
    type metadata accessor for AppComposer(0);
    v16 = sub_1E65DAE38();
    if (v16 != sub_1E65DAE38())
    {
      v50 = *(v0 + 336);
      v51 = *(v0 + 256);
      (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
      v52 = sub_1E65D7968();
      (*(*(v52 - 8) + 8))(v51 + v50, v52);
      goto LABEL_4;
    }

    v17 = MEMORY[0x1E6949580]();
    sub_1E5FBEA08(v17, v18, (v0 + 96));

    v19 = *(v0 + 112);
    *(v0 + 264) = *(v0 + 120);
    v53 = (v19 + *v19);
    v20 = swift_task_alloc();
    *(v0 + 272) = v20;
    *v20 = v0;
    v20[1] = sub_1E5FC00AC;

    return v53();
  }

  else
  {
    if (v4 == *MEMORY[0x1E699E9A8])
    {
LABEL_3:
      v5 = *(v0 + 256);
      v6 = *(v0 + 208);
      v7 = *(v0 + 216);
      (*(*(v0 + 248) + 96))(v5, *(v0 + 240));
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072600, &qword_1E65EB8F8) + 64);
      v9 = sub_1E65D7968();
      (*(*(v9 - 8) + 8))(v5 + v8, v9);
      (*(v7 + 8))(v5, v6);
LABEL_4:

      v10 = *(v0 + 8);

      return v10();
    }

    if (v4 != *MEMORY[0x1E699E9A0])
    {
      if (v4 != *MEMORY[0x1E699E970] && v4 != *MEMORY[0x1E699E978] && v4 != *MEMORY[0x1E699E9B8] && v4 != *MEMORY[0x1E699E9B0] && v4 != *MEMORY[0x1E699E998])
      {
        (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
      }

      goto LABEL_4;
    }

    v21 = *(v0 + 256);
    v23 = *(v0 + 216);
    v22 = *(v0 + 224);
    v24 = *(v0 + 200);
    v25 = *(v0 + 208);
    v26 = *(v0 + 192);
    (*(*(v0 + 248) + 96))(v21, *(v0 + 240));
    (*(v23 + 32))(v22, v21, v25);
    v27 = sub_1E65D9D78();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
    v28 = v26[5];
    v29 = *MEMORY[0x1E69CBA90];
    v30 = sub_1E65D8C68();
    (*(*(v30 - 8) + 104))(v24 + v28, v29, v30);
    v31 = v26[6];
    v32 = sub_1E65D74E8();
    (*(*(v32 - 8) + 56))(v24 + v31, 1, 1, v32);
    v33 = v26[8];
    v34 = sub_1E65DA208();
    (*(*(v34 - 8) + 56))(v24 + v33, 1, 1, v34);
    v35 = v26[14];
    v36 = *MEMORY[0x1E69CBCC8];
    v37 = sub_1E65D8F28();
    (*(*(v37 - 8) + 104))(v24 + v35, v36, v37);
    v38 = v26[15];
    v39 = sub_1E65D9908();
    (*(*(v39 - 8) + 56))(v24 + v38, 1, 1, v39);
    v40 = MEMORY[0x1E69E7CC0];
    v41 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v24 + v26[7]) = v40;
    v42 = (v24 + v26[9]);
    *v42 = 0;
    v42[1] = 0;
    v43 = (v24 + v26[10]);
    *v43 = 0;
    v43[1] = 0;
    *(v24 + v26[11]) = v41;
    v44 = (v24 + v26[12]);
    *v44 = 0;
    v44[1] = 0;
    *(v24 + v26[13]) = xmmword_1E65EB8E0;
    v45 = MEMORY[0x1E6949580]();
    sub_1E5FBEA08(v45, v46, (v0 + 16));

    v47 = *(v0 + 64);
    *(v0 + 288) = *(v0 + 72);
    v54 = (v47 + *v47);
    v48 = swift_task_alloc();
    *(v0 + 296) = v48;
    *v48 = v0;
    v48[1] = sub_1E5FC02D0;
    v49 = *(v0 + 200);

    return v54(v49);
  }
}

uint64_t sub_1E5FC00AC()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = sub_1E5FC06A0;
  }

  else
  {
    v2 = sub_1E5FC01C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FC01C0()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 336);
  v2 = *(v0 + 256);
  (*(*(v0 + 216) + 8))(*(v0 + 232), *(v0 + 208));
  v3 = sub_1E65D7968();
  (*(*(v3 - 8) + 8))(v2 + v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5FC02D0()
{
  v2 = *v1;
  v2[38] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E5FC07BC, 0, 0);
  }

  else
  {
    v3 = v2[6];
    v2[39] = v2[7];
    v6 = (v3 + *v3);
    v4 = swift_task_alloc();
    v2[40] = v4;
    *v4 = v2;
    v4[1] = sub_1E5FC04A0;

    return v6();
  }
}

uint64_t sub_1E5FC04A0()
{
  *(*v1 + 328) = v0;

  if (v0)
  {
    v2 = sub_1E5FC08A4;
  }

  else
  {
    v2 = sub_1E5FC05B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FC05B4()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_unknownObjectRelease();

  sub_1E5FC0990(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FC06A0()
{
  v1 = *(v0 + 336);
  v2 = *(v0 + 256);
  v3 = *(v0 + 232);
  v4 = *(v0 + 208);
  v5 = *(v0 + 216);
  swift_unknownObjectRelease();

  (*(v5 + 8))(v3, v4);
  v6 = sub_1E65D7968();
  (*(*(v6 - 8) + 8))(v2 + v1, v6);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E5FC07BC()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_unknownObjectRelease();

  sub_1E5FC0990(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FC08A4()
{
  v2 = v0[27];
  v1 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  swift_unknownObjectRelease();

  sub_1E5FC0990(v4);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FC0990(uint64_t a1)
{
  v2 = type metadata accessor for PageMetricsClick(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5FC09EC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FBEDA4(a1, v5, v4);
}

uint64_t sub_1E5FC0A98()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = v3 + *(v2 + 64);
  v5 = ((v4 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);
  v7 = *(v0 + 24);
  v8 = v0 + (v4 & 0xFFFFFFFFFFFFFFF8);
  v9 = *(v8 + 8);
  v10 = *(v8 + 16);
  v11 = *(v0 + v5);
  v12 = *(v0 + v5 + 8);
  v13 = *(v0 + v4);
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E6172628(v6, v7, v0 + v3, v13, v9, v10, v11, v12);
}

uint64_t sub_1E5FC0BE0(uint64_t a1)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1E5DFA78C;

  return sub_1E617415C(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_1E5FC0D2C(void x0_0, uint64_t a1, unsigned __int8 a2)
{
  v3 = a2;
  v4 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1E65DAE38();
  v6 = sub_1E65DAE38();
  v7 = v6;
  if (v3 == 2)
  {
    sub_1E6168408(v5 == v6);
    sub_1E65E03F8();

    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    v9 = sub_1E65E4B48();
    if (v5 == v7)
    {
      if (v9)
      {
        sub_1E65DC388();
      }
    }

    else if (v9)
    {
      sub_1E65DC368();
    }

    sub_1E65E0768();
    sub_1E65E0958();
    sub_1E65E03F8();
    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1E5FC0EB4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  LODWORD(v73) = a2;
  v71 = a3;
  v72 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v70 = (&v58 - v5);
  v6 = sub_1E65E0438();
  v67 = *(v6 - 8);
  v68 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v75 = &v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v64 = &v58 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v63 = &v58 - v11;
  v62 = sub_1E65D7268();
  v12 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v74 = &v58 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = (&v58 - v18);
  v20 = sub_1E65D72D8();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v24 = &v58 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v58 - v25;
  v76 = 0;
  v77 = 0xE000000000000000;
  sub_1E65E68A8();

  v76 = 0xD000000000000010;
  v77 = 0x80000001E6610B80;
  sub_1E65DCD88();
  sub_1E5FC4958(&qword_1ED072658, MEMORY[0x1E6968848], MEMORY[0x1E6968870]);
  v27 = sub_1E65E6BC8();
  MEMORY[0x1E694D7C0](v27);

  v61 = *(v21 + 8);
  v61(v26, v20);
  MEMORY[0x1E694D7C0](8250, 0xE200000000000000);
  v28 = sub_1E65DCD68();
  MEMORY[0x1E694D7C0](v28);

  v65 = v77;
  v66 = v76;
  v69 = v19;
  sub_1E5FC1978(v73, v19);
  sub_1E65DCD88();
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v29 = sub_1E65D7348();
  __swift_project_value_buffer(v29, qword_1EE2EA268);
  v30 = v62;
  (*(v12 + 104))(v14, *MEMORY[0x1E69686E8], v62);
  sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
  sub_1E65D73C8();
  (*(v12 + 8))(v14, v30);
  v61(v24, v20);
  v31 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v32 = *(*(v31 - 8) + 56);
  v61 = v31;
  v32(v63, 1, 1, v31);
  v33 = type metadata accessor for ActionButtonDescriptor(0);
  v34 = *(*(v33 - 8) + 56);
  v62 = v33;
  v34(v64, 1, 1, v33);
  v60 = sub_1E5FC4958(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v59 = sub_1E5FC4958(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v35 = v74;
  sub_1E65E0458();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  (*(v67 + 104))(v75, *MEMORY[0x1E699D7D8], v68);
  v37 = sub_1E65DCD78();
  MEMORY[0x1EEE9AC00](v37);
  v55 = v3;
  v56 = v72;
  LOBYTE(v57) = v73;
  v73 = sub_1E5F9F490(sub_1E5FC4934, v54, v37);

  v38 = sub_1E65DCD68();
  v40 = v39;
  sub_1E65DCD88();
  v41 = sub_1E65E5D58();
  v43 = v42;
  v44 = type metadata accessor for SectionMetrics(0);
  v45 = *(v44 + 24);
  v46 = *MEMORY[0x1E69CBCB0];
  v47 = sub_1E65D8F28();
  v48 = v70;
  (*(*(v47 - 8) + 104))(v70 + v45, v46, v47);
  v49 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v48 = v38;
  v48[1] = v40;
  v48[2] = v41;
  v48[3] = v43;
  *(v48 + *(v44 + 32)) = v49;
  (*(*(v44 - 8) + 56))(v48, 0, 1, v44);
  v72 = type metadata accessor for ArtworkDescriptor(0);
  v68 = type metadata accessor for ContextMenu(0);
  v67 = type metadata accessor for ItemContext(0);
  v64 = type metadata accessor for ItemMetrics(0);
  v63 = type metadata accessor for ViewDescriptor(0);
  sub_1E5FC4958(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E5FC4958(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E5FC4958(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E5FC4958(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E5FC4958(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v50 = sub_1E5FC4958(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v51 = sub_1E5FC4958(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v52 = sub_1E5DF11E0();
  v57 = sub_1E5FC4958(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v55 = v52;
  v56 = v59;
  v54[0] = v50;
  v54[1] = v51;
  return sub_1E65E0418();
}

uint64_t sub_1E5FC1978@<X0>(unsigned __int8 a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = sub_1E65DCD98();
  if (a2 <= 1u)
  {
    if (a2)
    {
      if (v5)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
        sub_1E65E0708();
        v6 = v15;
        goto LABEL_10;
      }
    }

    else if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0708();
      v6 = v14;
LABEL_10:
      v9 = qword_1E65EB998[v6];
      *a3 = sub_1E5FC2544();
      a3[1] = v9;
      v10 = *MEMORY[0x1E699D840];
      v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
      (*(*(v11 - 8) + 104))(a3, v10, v11);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
      return swift_storeEnumTagMultiPayload();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0678();
    if (sub_1E65E07C8())
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
    }

    goto LABEL_15;
  }

  if (a2 != 3)
  {
    result = sub_1E65E69D8();
    __break(1u);
    return result;
  }

  if ((v5 & 1) == 0)
  {
    v13 = 3;
LABEL_15:
    *a3 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
    goto LABEL_16;
  }

  *a3 = 2;
  v7 = *MEMORY[0x1E699D848];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  (*(*(v8 - 8) + 104))(a3, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
LABEL_16:

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5FC1C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, int a3@<W3>, uint64_t a4@<X8>)
{
  v49 = a4;
  LODWORD(v44) = a3;
  v42 = a1;
  v43 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v41 = v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v48 = v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = v38 - v9;
  v10 = sub_1E65DCA68();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1E65DCF98();
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = type metadata accessor for ItemContext(0);
  v16 = MEMORY[0x1EEE9AC00](v52);
  v40 = v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v38 - v18;
  v20 = sub_1E65DCCE8();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1E65DCA48();
  MEMORY[0x1EEE9AC00](v24);
  v26 = v38 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65DCD98();
  sub_1E5FC49A0(v42, v26, MEMORY[0x1E699EE60]);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v45 + 32))(v13, v26, v46);
    v27 = sub_1E65DCED8();
    v29 = v28;
    v30 = sub_1E65DCEF8();
    if (v31)
    {
      v32 = v30;
    }

    else
    {
      v32 = 0;
    }

    if (v31)
    {
      v33 = v31;
    }

    else
    {
      v33 = 0xE000000000000000;
    }

    v50 = v27;
    v51 = v29;

    MEMORY[0x1E694D7C0](v32, v33);

    MEMORY[0x1E694D7C0](0, 0xE000000000000000);

    sub_1E65DCF48();
    sub_1E65DCED8();
    sub_1E65DCE68();
    sub_1E65DCEF8();
    sub_1E65DCC88();
    type metadata accessor for SearchItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    sub_1E5FC39B8(v43, v44, v47);
    sub_1E621AD08(v48);
    v34 = v41;
    sub_1E601320C(v41);
    v35 = type metadata accessor for ItemMetrics(0);
    (*(*(v35 - 8) + 56))(v34, 0, 1, v35);
    v44 = type metadata accessor for ActionButtonDescriptor(0);
    v43 = type metadata accessor for ArtworkDescriptor(0);
    v42 = type metadata accessor for ContextMenu(0);
    v39 = type metadata accessor for ViewDescriptor(0);
    v38[1] = sub_1E5FC4958(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
    v38[0] = sub_1E5FC4958(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
    sub_1E5FC4958(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
    sub_1E5FC4958(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E5FC4958(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E5FC4958(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E5FC4958(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
    sub_1E5FC4958(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
    sub_1E65E0488();
    (*(v45 + 8))(v13, v46);
  }

  else
  {
    (*(v21 + 32))(v23, v26, v20);
    (*(v21 + 16))(v19, v23, v20);
    type metadata accessor for SearchItemContext(0);
    swift_storeEnumTagMultiPayload();
    swift_storeEnumTagMultiPayload();
    v36 = sub_1E65DCA28();
    sub_1E5FC0D2C(v43, v44, v36);
    sub_1E5FC4958(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E5FC4958(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E5FC4958(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
    sub_1E65E04D8();
    (*(v21 + 8))(v23, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5FC2544()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  if (v3 < 3u)
  {
    sub_1E65E0678();
    v0 = (sub_1E65E07C8() & 1) == 0;
    v1 = 1;
    goto LABEL_8;
  }

  if (v3 - 4 >= 2)
  {
    sub_1E65E0678();
    v0 = (sub_1E65E07C8() & 1) == 0;
    v1 = 2;
LABEL_8:
    if (v0)
    {
      return v1;
    }

    else
    {
      return v1 + 1;
    }
  }

  sub_1E65E0678();
  if (sub_1E65E07C8())
  {
    return 6;
  }

  else
  {
    return 3;
  }
}

uint64_t sub_1E5FC25FC@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1E65D8B18();
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v29 = sub_1E65D72D8();
  v9 = *(v29 - 8);
  v10 = MEMORY[0x1EEE9AC00](v29);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v28 - v13;
  v15 = sub_1E65D9328();
  sub_1E63C4134(a1, a2, v15, v14);

  sub_1E65D9308();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v30 = a3;
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_10:
      v18 = MEMORY[0x1E69E7CC0];
      goto LABEL_11;
    }

    v17 = MEMORY[0x1E69CB898];
LABEL_9:
    EnumCaseMultiPayload = sub_1E5FC4ACC(v8, v17);
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v17 = MEMORY[0x1E69CC6F0];
    }

    else
    {
      v17 = MEMORY[0x1E69CCB70];
    }

    goto LABEL_9;
  }

  v18 = *v8;
LABEL_11:
  MEMORY[0x1EEE9AC00](EnumCaseMultiPayload);
  *(&v28 - 2) = a1;
  *(&v28 - 1) = a2;
  v28 = sub_1E6402828(sub_1E5FC4A08, (&v28 - 4), v18);

  sub_1E65D92E8();
  v19 = v9;
  v20 = *(v9 + 16);
  v21 = v29;
  v20(v12, v14, v29);
  v22 = sub_1E65D92F8();
  v24 = v23;
  v32 = v22;
  v33 = v23;
  v26 = v25 & 1;
  v34 = v25 & 1;
  v31 = 22;
  sub_1E5FC4A24();
  sub_1E5FC4A78();
  sub_1E65D7FE8();
  sub_1E5F87058(v22, v24, v26);
  sub_1E65DCD58();
  return (*(v19 + 8))(v14, v21);
}

uint64_t sub_1E5FC2900@<X0>(uint64_t a2@<X1>, void *a3@<X2>, char *x8_0@<X8>)
{
  v7 = sub_1E65DCA68();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 104))(v10, *MEMORY[0x1E699EE70], v7);
  sub_1E645A968(v10, a2, a3, x8_0);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1E5FC2A20@<X0>(char *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  LODWORD(v109) = a3;
  v104 = a2;
  v117 = a1;
  v118 = a4;
  v119 = sub_1E65D7348();
  v103 = *(v119 - 8);
  MEMORY[0x1EEE9AC00](v119);
  v102 = &v99 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E0848();
  v101 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E0A98();
  v100 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_1E65E0A88();
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v106 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D7268();
  v113 = *(v12 - 8);
  v114 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v111 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65D72D8();
  v115 = *(v14 - 8);
  v116 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v112 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = sub_1E65E0968();
  v108 = *(v17 - 8);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v99 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v99 - v21;
  v23 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v99 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E5FC49A0(v117, v25, MEMORY[0x1E699D780]);
  v117 = v25;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 10)
  {
    v45 = v103;
    v46 = v101;
    v47 = v102;
    if (sub_1E65E4B48())
    {
      sub_1E65DC388();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
    sub_1E65E0678();
    sub_1E65E07C8();
    v48 = v7;
    sub_1E65E0838();
    sub_1E65E0678();
    v49 = sub_1E65E07C8();
    v50 = v118;
    if (v49)
    {
      v51 = v45;
      if (qword_1ED071AF0 != -1)
      {
        swift_once();
      }

      v52 = qword_1ED096630;
    }

    else
    {
      v51 = v45;
      if (qword_1EE2D7268 != -1)
      {
        swift_once();
      }

      v52 = qword_1EE2EA250;
    }

    v83 = v119;
    v84 = __swift_project_value_buffer(v119, v52);
    (*(v51 + 16))(v47, v84, v83);
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072620, &qword_1E65EB938);
    v86 = v85[12];
    v87 = v85[20];
    v107 = v85[16];
    v108 = v87;
    (*(v46 + 16))(v50, v7, v5);
    sub_1E604FC70(MEMORY[0x1E69E7CD0], v50 + v86);
    v109 = v5;
    v88 = v112;
    sub_1E65DCF58();
    v89 = *MEMORY[0x1E69686E8];
    v110 = v48;
    v91 = v113;
    v90 = v114;
    v92 = v111;
    (*(v113 + 104))(v111, v89, v114);
    sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v93 = v116;
    sub_1E65D73C8();
    (*(v91 + 8))(v92, v90);
    v94 = v115;
    (*(v115 + 8))(v88, v93);
    (*(v51 + 8))(v47, v119);
    v95 = *(v46 + 8);
    v96 = v109;
    v95(v110, v109);
    (*(v94 + 56))(v50 + v107, 0, 1, v93);
    v97 = *MEMORY[0x1E699DB20];
    v98 = sub_1E65E0B08();
    (*(*(v98 - 8) + 104))(v50 + v108, v97, v98);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    swift_storeEnumTagMultiPayload();
    return (v95)(v117, v96);
  }

  else if (EnumCaseMultiPayload == 8)
  {
    (*(v100 + 104))(v10, *MEMORY[0x1E699DAF8], v8);
    if (sub_1E65E4B48())
    {
      sub_1E65DC368();
    }

    v67 = v118;
    v68 = v106;
    v69 = v107;
    v70 = v105;
    sub_1E65E0A78();
    v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
    v72 = v71[12];
    v73 = v71[16];
    v108 = v71[20];
    v118 = v71[24];
    (*(v70 + 16))(v67, v68, v69);
    sub_1E604FC70(MEMORY[0x1E69E7CD0], v67 + v72);
    v74 = v112;
    sub_1E65DCF58();
    if (qword_1ED071A38 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v119, qword_1ED096420);
    v76 = v113;
    v75 = v114;
    v77 = v111;
    (*(v113 + 104))(v111, *MEMORY[0x1E69686E8], v114);
    sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
    v78 = v116;
    sub_1E65D73C8();
    (*(v76 + 8))(v77, v75);
    v79 = v115;
    (*(v115 + 8))(v74, v78);
    v80 = *(v70 + 8);
    v81 = v107;
    v80(v106, v107);
    v82 = *(v79 + 56);
    v82(v67 + v73, 0, 1, v78);
    v82(v67 + v108, 1, 1, v78);
    v82(v67 + v118, 1, 1, v78);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
    swift_storeEnumTagMultiPayload();
    return (v80)(v117, v81);
  }

  else
  {
    v27 = v118;
    v28 = v112;
    v99 = v17;
    if (EnumCaseMultiPayload == 6)
    {
      if (sub_1E65E4B48())
      {
        sub_1E65DC388();
      }

      sub_1E65E0768();
      sub_1E65E0958();
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072608, &qword_1E65EB928);
      v30 = v29[12];
      v31 = v29[16];
      v32 = v29[24];
      v106 = v29[20];
      v107 = v32;
      v33 = v108;
      (*(v108 + 16))(v27, v22, v17);
      sub_1E604FC70(MEMORY[0x1E69E7CD0], v27 + v30);
      sub_1E65DCF58();
      v34 = v28;
      v35 = v27;
      if (qword_1ED071A08 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v119, qword_1ED096390);
      v37 = v113;
      v36 = v114;
      v38 = v111;
      (*(v113 + 104))(v111, *MEMORY[0x1E69686E8], v114);
      sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v39 = v116;
      sub_1E65D73C8();
      (*(v37 + 8))(v38, v36);
      v40 = v115;
      (*(v115 + 8))(v34, v39);
      v41 = *(v33 + 8);
      v42 = v99;
      v41(v22, v99);
      v43 = *(v40 + 56);
      v43(v35 + v31, 0, 1, v39);
      v43(&v106[v35], 1, 1, v39);
      v43(v35 + v107, 1, 1, v39);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      return (v41)(v117, v42);
    }

    else
    {
      v53 = v17;
      if (sub_1E65E4B48())
      {
        sub_1E65DC388();
      }

      sub_1E65E0768();
      sub_1E65E0958();
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072608, &qword_1E65EB928);
      v55 = v54[12];
      v56 = v54[20];
      v105 = v54[16];
      v106 = v56;
      v107 = v54[24];
      v57 = v108;
      (*(v108 + 16))(v27, v20, v53);
      sub_1E604FC70(MEMORY[0x1E69E7CD0], v27 + v55);
      sub_1E65DCF58();
      v58 = v28;
      if (qword_1ED071A38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v119, qword_1ED096420);
      v60 = v113;
      v59 = v114;
      v61 = v111;
      (*(v113 + 104))(v111, *MEMORY[0x1E69686E8], v114);
      sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v62 = v105;
      v63 = v116;
      v64 = v58;
      sub_1E65D73C8();
      (*(v60 + 8))(v61, v59);
      v65 = v115;
      (*(v115 + 8))(v64, v63);
      (*(v57 + 8))(v20, v99);
      v66 = *(v65 + 56);
      v66(v27 + v62, 0, 1, v63);
      v66(&v106[v27], 1, 1, v63);
      v66(v27 + v107, 1, 1, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      return sub_1E5FC4ACC(v117, MEMORY[0x1E699D780]);
    }
  }
}

uint64_t sub_1E5FC39B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v119 = a3;
  v7 = sub_1E65E0968();
  v110 = *(v7 - 8);
  v111 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v109 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_1E65D7348();
  v107 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v104 = v99 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E0A98();
  v103 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E65E0A88();
  v105 = *(v13 - 8);
  v106 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v108 = v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1E65D7268();
  v114 = *(v15 - 8);
  v115 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v112 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1E65D72D8();
  v116 = *(v17 - 8);
  v117 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v113 = v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v19 - 8);
  v20 = sub_1E65E03F8();
  v21 = MEMORY[0x1EEE9AC00](v20);
  v23 = v99 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = v99 - v24;
  v26 = sub_1E65DCE68();
  sub_1E5FC0D2C(a1, a2, v26);
  v27 = sub_1E65DAE38();
  if (v27 == sub_1E65DAE38())
  {
    sub_1E5FC2A20(v25, a1, a2, v119);
    v28 = MEMORY[0x1E699D780];
    v29 = v25;
    return sub_1E5FC4ACC(v29, v28);
  }

  v99[1] = a2;
  v100 = v4;
  v31 = v119;
  v102 = v25;
  sub_1E5FC49A0(v25, v23, MEMORY[0x1E699D780]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v101 = v23;
  switch(EnumCaseMultiPayload)
  {
    case 10:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
      sub_1E65E0678();
      if (sub_1E65E07C8())
      {
        v47 = v113;
        if (qword_1ED071AF0 != -1)
        {
          swift_once();
        }

        v48 = qword_1ED096630;
      }

      else
      {
        v47 = v113;
        if (qword_1EE2D7268 != -1)
        {
          swift_once();
        }

        v48 = qword_1EE2EA250;
      }

      v82 = v118;
      v83 = __swift_project_value_buffer(v118, v48);
      v84 = v107;
      v85 = v104;
      (*(v107 + 16))(v104, v83, v82);
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072620, &qword_1E65EB938);
      v87 = v86[12];
      v88 = v86[16];
      v119 = v86[20];
      v89 = sub_1E65DAE38();
      v90 = v89 == sub_1E65DAE38();
      sub_1E6168408(v90);
      sub_1E604FC70(MEMORY[0x1E69E7CD0], v31 + v87);
      sub_1E65DCF58();
      v92 = v114;
      v91 = v115;
      v93 = v112;
      (*(v114 + 104))(v112, *MEMORY[0x1E69686E8], v115);
      sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v94 = v117;
      sub_1E65D73C8();
      (*(v92 + 8))(v93, v91);
      v95 = v116;
      (*(v116 + 8))(v47, v94);
      (*(v84 + 8))(v85, v118);
      sub_1E5FC4ACC(v102, MEMORY[0x1E699D780]);
      (*(v95 + 56))(v31 + v88, 0, 1, v94);
      v96 = *MEMORY[0x1E699DB20];
      v97 = sub_1E65E0B08();
      (*(*(v97 - 8) + 104))(v31 + v119, v96, v97);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v98 = sub_1E65E0848();
      return (*(*(v98 - 8) + 8))(v101, v98);
    case 8:
      (*(v103 + 104))(v12, *MEMORY[0x1E699DAF8], v10);
      if (sub_1E65E4B48())
      {
        sub_1E65DC368();
      }

      v66 = v31;
      v67 = v113;
      v68 = v105;
      v69 = v106;
      v70 = v108;
      sub_1E65E0A78();
      v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072628, &qword_1E65EB940);
      v72 = v71[12];
      v73 = v71[16];
      v113 = v71[20];
      v119 = v71[24];
      (*(v68 + 16))(v66, v70, v69);
      sub_1E604FC70(MEMORY[0x1E69E7CD0], v66 + v72);
      sub_1E65DCF58();
      v74 = v67;
      if (qword_1ED071A38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v118, qword_1ED096420);
      v76 = v114;
      v75 = v115;
      v77 = v112;
      (*(v114 + 104))(v112, *MEMORY[0x1E69686E8], v115);
      sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v78 = v117;
      sub_1E65D73C8();
      (*(v76 + 8))(v77, v75);
      v79 = v116;
      (*(v116 + 8))(v74, v78);
      v80 = *(v68 + 8);
      v80(v108, v69);
      sub_1E5FC4ACC(v102, MEMORY[0x1E699D780]);
      v81 = *(v79 + 56);
      v81(v66 + v73, 0, 1, v78);
      v81(&v113[v66], 1, 1, v78);
      v81(v66 + v119, 1, 1, v78);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      return (v80)(v101, v69);
    case 6:
      v33 = sub_1E65E4B48();
      v34 = v113;
      if (v33)
      {
        sub_1E65DC388();
      }

      v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072608, &qword_1E65EB928);
      v36 = v35[12];
      v37 = v35[16];
      v38 = v35[24];
      v108 = v35[20];
      v109 = v38;
      sub_1E65E0768();
      sub_1E65E0958();
      sub_1E604FC70(MEMORY[0x1E69E7CD0], v31 + v36);
      sub_1E65DCF58();
      v39 = v102;
      v40 = v34;
      if (qword_1ED071A38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v118, qword_1ED096420);
      v42 = v114;
      v41 = v115;
      v43 = v112;
      (*(v114 + 104))(v112, *MEMORY[0x1E69686E8], v115);
      sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v44 = v117;
      sub_1E65D73C8();
      (*(v42 + 8))(v43, v41);
      v45 = v116;
      (*(v116 + 8))(v40, v44);
      sub_1E5FC4ACC(v39, MEMORY[0x1E699D780]);
      v46 = *(v45 + 56);
      v46(v31 + v37, 0, 1, v44);
      v46(&v108[v31], 1, 1, v44);
      v46(&v109[v31], 1, 1, v44);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      return (*(v110 + 8))(v101, v111);
    default:
      v49 = sub_1E65E4B48();
      v50 = v110;
      v51 = v111;
      if (v49)
      {
        sub_1E65DC388();
      }

      sub_1E65E0768();
      v52 = v109;
      sub_1E65E0958();
      v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072608, &qword_1E65EB928);
      v54 = v53[12];
      v55 = v53[20];
      v106 = v53[16];
      v107 = v55;
      v108 = v53[24];
      (*(v50 + 16))(v31, v52, v51);
      sub_1E604FC70(MEMORY[0x1E69E7CD0], v31 + v54);
      v56 = v50;
      v57 = v113;
      sub_1E65DCF58();
      if (qword_1ED071A38 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v118, qword_1ED096420);
      v59 = v114;
      v58 = v115;
      v60 = v112;
      (*(v114 + 104))(v112, *MEMORY[0x1E69686E8], v115);
      sub_1E5FC4958(&qword_1EE2D7280, MEMORY[0x1E6968848], MEMORY[0x1E6968820]);
      v61 = v106;
      v62 = v117;
      sub_1E65D73C8();
      (*(v59 + 8))(v60, v58);
      v63 = v116;
      (*(v116 + 8))(v57, v62);
      (*(v56 + 8))(v109, v111);
      v64 = MEMORY[0x1E699D780];
      sub_1E5FC4ACC(v102, MEMORY[0x1E699D780]);
      v65 = *(v63 + 56);
      v65(v31 + v61, 0, 1, v62);
      v65(v31 + v107, 1, 1, v62);
      v65(&v108[v31], 1, 1, v62);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
      swift_storeEnumTagMultiPayload();
      v29 = v101;
      v28 = v64;
      return sub_1E5FC4ACC(v29, v28);
  }
}

uint64_t sub_1E5FC4958(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E5FC49A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E5FC4A24()
{
  result = qword_1ED072688;
  if (!qword_1ED072688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072688);
  }

  return result;
}

unint64_t sub_1E5FC4A78()
{
  result = qword_1ED072690;
  if (!qword_1ED072690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072690);
  }

  return result;
}

uint64_t sub_1E5FC4ACC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5FC4B2C@<X0>(uint64_t a1@<X8>)
{
  v68 = a1;
  v76 = sub_1E65E2BA8();
  v2 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v4 = &v60 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65D7BC8();
  v64 = *(v5 - 8);
  v65 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v61 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65E2D98();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v66 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072698, &qword_1E65EB9C8);
  MEMORY[0x1EEE9AC00](v77);
  v10 = &v60 - v9;
  v11 = sub_1E65D76F8();
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v63 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v16 = sub_1E65D76A8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v60 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65D7DE8();
  v62 = v15;
  sub_1E65D7DC8();
  v67 = v1;
  v18 = sub_1E65D7E38();
  v19 = sub_1E64278E4(MEMORY[0x1E69E7CC0]);
  v20 = v18 + 64;
  v21 = 1 << *(v18 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v18 + 64);
  v24 = (v21 + 63) >> 6;
  v69 = v2 + 16;
  v70 = v2;
  v75 = (v2 + 8);
  v78 = v18;

  v25 = 0;
  v73 = v24;
  v74 = v18 + 64;
  v71 = v10;
  v72 = v4;
  while (v23)
  {
    v79 = v19;
LABEL_12:
    v27 = __clz(__rbit64(v23)) | (v25 << 6);
    v28 = v78;
    v29 = *(v78 + 48);
    v30 = sub_1E65D8EF8();
    (*(*(v30 - 8) + 16))(v10, v29 + *(*(v30 - 8) + 72) * v27, v30);
    v31 = *(*(v28 + 56) + 8 * v27);
    *&v10[*(v77 + 48)] = v31;

    sub_1E65D8EB8();
    sub_1E65D8EC8();
    sub_1E65D8ED8();
    sub_1E65D8EE8();
    sub_1E65E2B58();
    v32 = *(v31 + 16);
    if (v32)
    {
      v80 = MEMORY[0x1E69E7CC0];
      sub_1E601BEE4(0, v32, 0);
      v33 = v80;
      v34 = (v31 + 40);
      do
      {
        v35 = *(v34 - 1);
        v36 = *v34;
        v80 = v33;
        v38 = *(v33 + 16);
        v37 = *(v33 + 24);

        if (v38 >= v37 >> 1)
        {
          sub_1E601BEE4((v37 > 1), v38 + 1, 1);
          v33 = v80;
        }

        *(v33 + 16) = v38 + 1;
        v39 = v33 + 16 * v38;
        *(v39 + 32) = v35;
        *(v39 + 40) = v36;
        v34 += 2;
        --v32;
      }

      while (v32);
      v10 = v71;
      v4 = v72;
    }

    else
    {
      v33 = MEMORY[0x1E69E7CC0];
    }

    v40 = v79;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = v40;
    v42 = sub_1E6417154(v4);
    v44 = *(v40 + 16);
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_31;
    }

    v48 = v43;
    if (*(v40 + 24) < v47)
    {
      sub_1E6419AE4(v47, isUniquelyReferenced_nonNull_native);
      v42 = sub_1E6417154(v4);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      v19 = v80;
      if (v48)
      {
        goto LABEL_4;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v55 = v42;
    sub_1E64235E0();
    v42 = v55;
    v19 = v80;
    if (v48)
    {
LABEL_4:
      *(v19[7] + 8 * v42) = v33;

      (*v75)(v4, v76);
      goto LABEL_5;
    }

LABEL_25:
    v19[(v42 >> 6) + 8] |= 1 << v42;
    v50 = v70;
    v51 = v42;
    v52 = v76;
    (*(v70 + 16))(v19[6] + *(v70 + 72) * v42, v4, v76);
    *(v19[7] + 8 * v51) = v33;
    (*(v50 + 8))(v4, v52);
    v53 = v19[2];
    v46 = __OFADD__(v53, 1);
    v54 = v53 + 1;
    if (v46)
    {
      goto LABEL_32;
    }

    v19[2] = v54;
LABEL_5:
    v23 &= v23 - 1;
    sub_1E5FC5260(v10);
    v24 = v73;
    v20 = v74;
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

      v56 = v61;
      sub_1E65D7E98();
      sub_1E65D7BA8();
      sub_1E65D7BB8();
      sub_1E65D7B68();
      sub_1E65E2D68();
      (*(v64 + 8))(v56, v65);
      v80 = sub_1E65D7E48();
      v81 = v57 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726A0, &qword_1E65EB9D0);
      sub_1E65D7FB8();
      sub_1E65D7E08();
      v80 = sub_1E65D7EA8();
      v81 = v58 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726A8, &qword_1E65EB9D8);
      sub_1E65D7FB8();
      return sub_1E65E2638();
    }

    v23 = *(v20 + 8 * v26);
    ++v25;
    if (v23)
    {
      v79 = v19;
      v25 = v26;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1E65E6C68();
  __break(1u);
  return result;
}

uint64_t sub_1E5FC5260(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072698, &qword_1E65EB9C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5FC52C8@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E65E0FD8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1E65E0B48();
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5FC55E8(v2, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload <= 1)
    {
      if (EnumCaseMultiPayload)
      {
        (*(v5 + 32))(v7, v10, v4);
        sub_1E65E0F98();
        sub_1E65E0FC8();
        sub_1E65E0FA8();
        sub_1E65E0FB8();
        sub_1E65D8318();
        (*(v5 + 8))(v7, v4);
      }

      else
      {
        v13 = v10[1];
        *a1 = *v10;
        *(a1 + 8) = v13;
      }

      goto LABEL_5;
    }

LABEL_9:
    v14 = v10[1];
    *a1 = *v10;
    *(a1 + 8) = v14;
    sub_1E65D9758();
    return swift_storeEnumTagMultiPayload();
  }

  if (EnumCaseMultiPayload <= 6)
  {
    goto LABEL_9;
  }

  if (EnumCaseMultiPayload == 7)
  {
    v12 = v10[1];
    *a1 = *v10;
    *(a1 + 8) = v12;
  }

  else
  {
    v18[0] = sub_1E65E0D38();
    v18[1] = v15;
    sub_1E5FBE784();
    sub_1E65D7FA8();
    v16 = v20;
    *a1 = v19;
    *(a1 + 16) = v16;
  }

LABEL_5:
  sub_1E65D9758();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E5FC55E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65E0B48();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FC564C@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for RemoteBrowsingService();
  Description = v3[-1].Description;
  v75 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v71 = v4;
  v72 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v80 = &v53 - v6;
  v7 = type metadata accessor for ContentAvailabilityService();
  v8 = v7[-1].Description;
  MEMORY[0x1EEE9AC00](v7);
  v78 = v9;
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B0, &qword_1E65EB9F0);
  v73 = *(v70 - 8);
  v11 = MEMORY[0x1EEE9AC00](v70);
  v81 = &v53 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v77 = &v53 - v13;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v15 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v16 = type metadata accessor for AppEnvironment(0);
  v17 = *(v16 + 56);
  v64 = v17;
  v59 = *(v16 + 100);
  swift_getKeyPath();
  v62 = v8[2];
  v63 = (v8 + 2);
  v18 = v15 + v17;
  v19 = v15;
  v55 = v15;
  v62(v10, v18, v7);
  v61 = v7;
  v20 = *(v8 + 80);
  v21 = (v20 + 16) & ~v20;
  v65 = v20;
  v66 = v20 | 7;
  v22 = swift_allocObject();
  v60 = v10;
  v23 = v8[4];
  v67 = (v8 + 4);
  v68 = v23;
  v23(v22 + v21, v10, v7);

  v24 = v77;
  sub_1E65E4E08();
  v25 = v70;
  a1[3] = v70;
  a1[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v69 = a1;
  v27 = v73;
  v28 = *(v73 + 16);
  v28(boxed_opaque_existential_1, v24, v25);
  v54 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  v76 = swift_allocObject();
  *(v76 + 16) = xmmword_1E65EB9E0;
  v57 = sub_1E65E60A8();
  v29 = *(v57 - 8);
  v56 = *(v29 + 56);
  v58 = v29 + 56;
  v56(v80, 1, 1, v57);
  v30 = Description;
  v31 = v19 + v59;
  v32 = v72;
  v33 = v75;
  Description[2](v72, v31, v75);
  v28(v81, v24, v25);
  v34 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v35 = *(v27 + 80);
  v36 = v27;
  v37 = (v71 + v35 + v34) & ~v35;
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  (v30)[4]((v38 + v34), v32, v33);
  v39 = v36;
  v40 = v25;
  v75 = *(v36 + 32);
  v41 = v81;
  (v75)(v38 + v37, v81, v25);
  v42 = v80;
  v43 = sub_1E6059EAC(0, 0, v80, &unk_1E65EBA30, v38);
  *(v76 + 32) = v43;
  v56(v42, 1, 1, v57);
  v44 = v60;
  v45 = v61;
  v62(v60, v55 + v64, v61);
  v46 = v77;
  v54(v41, v77, v40);
  v47 = (v65 + 32) & ~v65;
  v48 = (v47 + v78 + v35) & ~v35;
  v49 = swift_allocObject();
  *(v49 + 16) = 0;
  *(v49 + 24) = 0;
  v68(v49 + v47, v44, v45);
  (v75)(v49 + v48, v81, v40);
  v50 = sub_1E6059EAC(0, 0, v80, &unk_1E65EBA40, v49);
  v51 = v76;
  *(v76 + 40) = v50;
  result = (*(v39 + 8))(v46, v40);
  v69[5] = v51;
  return result;
}

uint64_t sub_1E5FC5D44(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FC5D64, 0, 0);
}

uint64_t sub_1E5FC5D64()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[5] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Querying allowed content ratings...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = ContentAvailabilityService.queryAllowedContentRatings.getter();
  v0[6] = v6;
  v9 = (v5 + *v5);
  v7 = swift_task_alloc();
  v0[7] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FC5F1C;

  return v9();
}

uint64_t sub_1E5FC5F1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = sub_1E5FC61A4;
  }

  else
  {
    v4 = sub_1E5FC6030;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E5FC6030()
{
  v11 = v0;

  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();

  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v10 = v4;
    *v3 = 136446210;
    sub_1E5FC7848();
    v5 = sub_1E65E6248();
    v7 = sub_1E5DFD4B0(v5, v6, &v10);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1E5DE9000, v1, v2, "Allowed Content Ratings: %{public}s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v4);
    MEMORY[0x1E694F1C0](v4, -1, -1);
    MEMORY[0x1E694F1C0](v3, -1, -1);
  }

  **(v0 + 24) = *(v0 + 64);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1E5FC61A4()
{
  v15 = v0;
  v1 = v0[9];

  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[9];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[2] = v5;
    v8 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v9 = sub_1E65E5CE8();
    v11 = sub_1E5DFD4B0(v9, v10, &v14);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Failed to query allowed content ratings: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();
  v12 = v0[1];

  return v12();
}

uint64_t sub_1E5FC632C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  v5[4] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B8, &qword_1E65EA990);
  v5[5] = v6;
  v5[6] = *(v6 - 8);
  v5[7] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0721C0, &qword_1E65EA998);
  v5[8] = v7;
  v5[9] = *(v7 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FC6498, 0, 0);
}

uint64_t sub_1E5FC6498()
{
  v1 = RemoteBrowsingService.makeRemoteBrowsingIdentityUpdatedStream.getter();
  v0[11] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FC6594;
  v4 = v0[7];

  return v6(v4);
}

uint64_t sub_1E5FC6594()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FC66AC, 0, 0);
}

uint64_t sub_1E5FC66AC()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  sub_1E65E60F8();
  (*(v2 + 8))(v1, v3);
  v4 = swift_task_alloc();
  v0[13] = v4;
  *v4 = v0;
  v4[1] = sub_1E5FC6788;
  v5 = v0[8];
  v6 = v0[4];

  return MEMORY[0x1EEE6D9C8](v6, 0, 0, v5);
}

uint64_t sub_1E5FC6788()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FC6884, 0, 0);
}

uint64_t sub_1E5FC6884()
{
  v1 = v0[4];
  v2 = sub_1E65D99E8();
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v3 = v0[1];

    return v3();
  }

  else
  {
    sub_1E65E6058();
    v0[14] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FC69D4, v6, v5);
  }
}

uint64_t sub_1E5FC69D4()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B0, &qword_1E65EB9F0);
  sub_1E65E4E18();

  return MEMORY[0x1EEE6DFA0](sub_1E5FC6A58, 0, 0);
}

uint64_t sub_1E5FC6A58()
{
  sub_1E5FC789C(v0[4]);
  v1 = swift_task_alloc();
  v0[13] = v1;
  *v1 = v0;
  v1[1] = sub_1E5FC6788;
  v2 = v0[8];
  v3 = v0[4];

  return MEMORY[0x1EEE6D9C8](v3, 0, 0, v2);
}

uint64_t sub_1E5FC6B08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B8, &qword_1E65EBA48);
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C0, &qword_1E65EBA50);
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FC6C3C, 0, 0);
}

uint64_t sub_1E5FC6C3C()
{
  v1 = ContentAvailabilityService.makeAllowedContentRatingsUpdatedStream.getter();
  v0[13] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[14] = v3;
  *v3 = v0;
  v3[1] = sub_1E5FC6D38;
  v4 = v0[12];

  return v6(v4);
}

uint64_t sub_1E5FC6D38()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FC6E50, 0, 0);
}

uint64_t sub_1E5FC6E50()
{
  sub_1E65E60F8();
  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FC6F04;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 32, 0, 0, v2);
}

uint64_t sub_1E5FC6F04()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FC7000, 0, 0);
}

uint64_t sub_1E5FC7000()
{
  v18 = v0;
  v1 = *(v0 + 32);
  *(v0 + 128) = v1;
  if (v1)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v2 = sub_1E65E3B68();
    __swift_project_value_buffer(v2, qword_1EE2EA2A0);

    v3 = sub_1E65E3B48();
    v4 = sub_1E65E6338();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v17 = v6;
      *v5 = 136446210;
      sub_1E5FC7848();
      v7 = sub_1E65E6248();
      v9 = sub_1E5DFD4B0(v7, v8, &v17);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1E5DE9000, v3, v4, "Allowed Content Ratings: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1E694F1C0](v6, -1, -1);
      MEMORY[0x1E694F1C0](v5, -1, -1);
    }

    *(v0 + 16) = v1;
    *(v0 + 24) = 0;
    sub_1E65E6058();
    *(v0 + 136) = sub_1E65E6048();
    v11 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E5FC7274, v11, v10);
  }

  else
  {
    v13 = *(v0 + 88);
    v12 = *(v0 + 96);
    v14 = *(v0 + 80);
    (*(*(v0 + 64) + 8))(*(v0 + 72), *(v0 + 56));
    (*(v13 + 8))(v12, v14);

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_1E5FC7274()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B0, &qword_1E65EB9F0);
  sub_1E65E4E38();

  v1 = swift_task_alloc();
  *(v0 + 120) = v1;
  *v1 = v0;
  v1[1] = sub_1E5FC6F04;
  v2 = *(v0 + 56);

  return MEMORY[0x1EEE6D9C8](v0 + 32, 0, 0, v2);
}

uint64_t sub_1E5FC7350(uint64_t a1)
{
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v5 = (Description[80] + 16) & ~Description[80];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E5FC5D44(a1, v1 + v5);
}

uint64_t sub_1E5FC742C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for RemoteBrowsingService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B0, &qword_1E65EB9F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FC632C(a1, v10, v11, v1 + v6, v1 + v9);
}

uint64_t objectdestroy_3Tm_1(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B0, &qword_1E65EB9F0);
  v7 = *(v6 - 8);
  v8 = (v5 + *(v7 + 80)) & ~*(v7 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v1 + v4, v2);
  (*(v7 + 8))(v1 + v8, v6);

  return swift_deallocObject();
}

uint64_t sub_1E5FC76EC(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 32) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726B0, &qword_1E65EB9F0) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1E5DFE6BC;

  return sub_1E5FC6B08(a1, v10, v11, v1 + v6, v1 + v9);
}

unint64_t sub_1E5FC7848()
{
  result = qword_1EE2D7130;
  if (!qword_1EE2D7130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7130);
  }

  return result;
}

uint64_t sub_1E5FC789C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0721B0, &qword_1E65EA988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E5FC7904(void *a1, uint64_t a2)
{
  v26 = a2;
  v27 = a1;
  v3 = type metadata accessor for TaskScheduler.State(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - v7;
  v9 = sub_1E65D76F8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = (&v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state;
  swift_beginAccess();
  sub_1E5FCC548(v2 + v16, v8, type metadata accessor for TaskScheduler.State);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  v18 = *(v17 - 8);
  if ((*(v18 + 48))(v8, 1, v17) == 1)
  {
    v19 = type metadata accessor for TaskScheduler.State;
    v20 = v8;
  }

  else
  {
    v25 = v6;
    v21 = *(v17 + 48);

    sub_1E5FCC5B0(v8, v15);
    (*(v10 + 32))(v12, &v8[v21], v9);
    if (*v15 == *v27 && (sub_1E65D76D8() & 1) != 0)
    {
      v22 = v25;
      (*(v18 + 56))(v25, 1, 1, v17);
      swift_beginAccess();
      sub_1E5FCD414(v22, v2 + v16);
      swift_endAccess();
      sub_1E5FC7C14();
    }

    (*(v10 + 8))(v12, v9);
    v19 = type metadata accessor for TaskScheduler.ScheduledTask;
    v20 = v15;
  }

  return sub_1E5FCD478(v20, v19);
}

uint64_t sub_1E5FC7C14()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v119 = &v95 - v3;
  v116 = sub_1E65D76F8();
  v118 = *(v116 - 8);
  v4 = *(v118 + 64);
  v5 = MEMORY[0x1EEE9AC00](v116);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v95 - v7;
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v95 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v120 = &v95 - v12;
  v13 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v115 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = (&v95 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v111 = (&v95 - v18);
  v113 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v121 = &v95 - v20;
  v21 = type metadata accessor for TaskScheduler.State(0);
  v22 = MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = &v95 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v95 - v25;
  v27 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state;
  swift_beginAccess();
  v114 = v27;
  sub_1E5FCC548(v1 + v27, v26, type metadata accessor for TaskScheduler.State);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  v112 = *(v28 - 8);
  v29 = *(v112 + 48);
  v117 = v28;
  LODWORD(v27) = v29(v26, 1);
  result = sub_1E5FCD478(v26, type metadata accessor for TaskScheduler.State);
  if (v27 == 1)
  {
    v31 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTasks;
    result = swift_beginAccess();
    v32 = *(v1 + v31);
    if (*(v32 + 16))
    {
      v100 = v4;
      v101 = &v95 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
      v110 = v24;
      swift_beginAccess();
      v104 = *(v115 + 80);
      v107 = (v104 + 32) & ~v104;
      v33 = v121;
      sub_1E5FCC548(v32 + v107, v121, type metadata accessor for TaskScheduler.ScheduledTask);
      v98 = v31;
      sub_1E5FCD4D8(0, 1);
      swift_endAccess();
      v34 = v120;
      sub_1E65D76E8();
      v35 = v118;
      v36 = v118 + 16;
      v37 = v116;
      v108 = *(v118 + 16);
      v108(v8, v34, v116);
      v38 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_vouchers;
      swift_beginAccess();
      v99 = v38;
      sub_1E60F1A58(v11, v8);
      v40 = v35 + 8;
      v39 = *(v35 + 8);
      v105 = v11;
      v41 = v11;
      v42 = v37;
      v109 = v39;
      v39(v41, v37);
      swift_endAccess();
      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v43 = sub_1E65E3B68();
      __swift_project_value_buffer(v43, qword_1EE2EA2A0);
      v44 = v111;
      sub_1E5FCC548(v33, v111, type metadata accessor for TaskScheduler.ScheduledTask);
      v45 = v101;
      v102 = v36;
      v46 = v108;
      v108(v101, v34, v42);

      v47 = sub_1E65E3B48();
      v48 = sub_1E65E6318();

      v49 = os_log_type_enabled(v47, v48);
      v103 = v40;
      v106 = v1;
      if (v49)
      {
        v96 = v48;
        v97 = v47;
        v50 = swift_slowAlloc();
        v95 = swift_slowAlloc();
        v123[0] = v95;
        *v50 = 134218754;
        v51 = *v44;
        sub_1E5FCD478(v44, type metadata accessor for TaskScheduler.ScheduledTask);
        *(v50 + 4) = v51;
        *(v50 + 12) = 2080;
        sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v52 = sub_1E65E6BC8();
        v54 = v53;
        v109(v45, v42);
        v55 = sub_1E5DFD4B0(v52, v54, v123);

        *(v50 + 14) = v55;
        v56 = v50;
        *(v50 + 22) = 2080;
        v57 = *(v1 + v98);
        v58 = *(v57 + 16);
        v59 = MEMORY[0x1E69E7CC0];
        if (v58)
        {
          v122 = MEMORY[0x1E69E7CC0];

          sub_1E601BF04(0, v58, 0);
          v59 = v122;
          v60 = v57 + v107;
          v61 = *(v115 + 9);
          do
          {
            sub_1E5FCC548(v60, v16, type metadata accessor for TaskScheduler.ScheduledTask);
            v62 = *v16;
            sub_1E5FCD478(v16, type metadata accessor for TaskScheduler.ScheduledTask);
            v122 = v59;
            v64 = *(v59 + 16);
            v63 = *(v59 + 24);
            if (v64 >= v63 >> 1)
            {
              sub_1E601BF04((v63 > 1), v64 + 1, 1);
              v59 = v122;
            }

            *(v59 + 16) = v64 + 1;
            *(v59 + 8 * v64 + 32) = v62;
            v60 += v61;
            --v58;
          }

          while (v58);

          v66 = v116;
        }

        else
        {
          v66 = v42;
        }

        v65 = v121;
        v67 = MEMORY[0x1E694D940](v59, MEMORY[0x1E69E6530]);
        v69 = v68;

        v70 = sub_1E5DFD4B0(v67, v69, v123);

        *(v56 + 24) = v70;
        *(v56 + 32) = 2080;
        sub_1E5E0E840(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

        v71 = sub_1E65E6248();
        v73 = v72;

        v74 = sub_1E5DFD4B0(v71, v73, v123);

        *(v56 + 34) = v74;
        v75 = v97;
        _os_log_impl(&dword_1E5DE9000, v97, v96, "Processing %ld %s. Pending: %s. Vouchers: %s", v56, 0x2Au);
        v76 = v95;
        swift_arrayDestroy();
        MEMORY[0x1E694F1C0](v76, -1, -1);
        MEMORY[0x1E694F1C0](v56, -1, -1);

        v34 = v120;
        v42 = v66;
        v46 = v108;
      }

      else
      {
        sub_1E5FCD478(v44, type metadata accessor for TaskScheduler.ScheduledTask);

        v109(v45, v42);
        v65 = v121;
      }

      v77 = *(v117 + 48);
      v116 = *(v117 + 64);
      v78 = v65;
      v79 = v65;
      v80 = v110;
      v115 = type metadata accessor for TaskScheduler.ScheduledTask;
      sub_1E5FCC548(v78, v110, type metadata accessor for TaskScheduler.ScheduledTask);
      v46(v80 + v77, v34, v42);
      v81 = sub_1E65E60A8();
      (*(*(v81 - 8) + 56))(v119, 1, 1, v81);
      sub_1E5FCC548(v79, v16, type metadata accessor for TaskScheduler.ScheduledTask);
      v82 = v105;
      v46(v105, v34, v42);
      v83 = sub_1E5E0E840(&qword_1EE2DB040, type metadata accessor for TaskScheduler, &unk_1E65EBAEC);
      v84 = v107;
      v85 = v118;
      v86 = (v107 + v113 + *(v118 + 80)) & ~*(v118 + 80);
      v87 = (v100 + v86 + 7) & 0xFFFFFFFFFFFFFFF8;
      v88 = v42;
      v89 = swift_allocObject();
      v90 = v106;
      *(v89 + 16) = v106;
      *(v89 + 24) = v83;
      sub_1E5FCC5B0(v16, v89 + v84);
      (*(v85 + 32))(v89 + v86, v82, v88);
      *(v89 + v87) = v90;
      swift_retain_n();
      v91 = sub_1E64B80F8(0, 0, v119, &unk_1E65EBB28, v89);
      v109(v120, v88);
      sub_1E5FCD478(v121, v115);
      v92 = v110;
      *&v110[v116] = v91;
      v93 = v92;
      (*(v112 + 56))();
      v94 = v114;
      swift_beginAccess();
      sub_1E5FCD414(v93, v90 + v94);
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1E5FC87A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5FC87CC, a6, 0);
}

uint64_t sub_1E5FC87CC()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = swift_task_alloc();
  v0[6] = v4;
  v4[2] = v3;
  v4[3] = v2;
  v4[4] = v1;
  v5 = swift_task_alloc();
  v0[7] = v5;
  v5[2] = v3;
  v5[3] = v2;
  v5[4] = v1;
  v6 = sub_1E5E0E840(&qword_1EE2DB040, type metadata accessor for TaskScheduler, &unk_1E65EBAEC);
  v7 = swift_task_alloc();
  v0[8] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FC8928;
  v8 = v0[2];
  v9 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v8, &unk_1E65EBB38, v4, sub_1E5FCD7D4, v5, v1, v6, v9);
}

void sub_1E5FC8928()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1E5FC8A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[13] = a3;
  v4[14] = a4;
  v4[12] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v4[15] = swift_task_alloc();
  v6 = sub_1E65D76F8();
  v4[16] = v6;
  v4[17] = *(v6 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FC8BDC, a4, 0);
}

uint64_t sub_1E5FC8BDC()
{
  v28 = v0;
  sub_1E65E6158();
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v2 = v0[21];
  v3 = v0[16];
  v4 = v0[17];
  v6 = v0[12];
  v5 = v0[13];
  v7 = sub_1E65E3B68();
  v0[27] = __swift_project_value_buffer(v7, qword_1EE2EA2A0);
  sub_1E5FCC548(v6, v1, type metadata accessor for TaskScheduler.ScheduledTask);
  v8 = *(v4 + 16);
  v0[28] = v8;
  v0[29] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v2, v5, v3);
  v9 = sub_1E65E3B48();
  v10 = sub_1E65E6318();
  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[26];
  v13 = v0[21];
  v14 = v0[16];
  v15 = v0[17];
  if (v11)
  {
    v16 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = v25;
    *v16 = 134218242;
    v17 = *v12;
    sub_1E5FCD478(v12, type metadata accessor for TaskScheduler.ScheduledTask);
    *(v16 + 4) = v17;
    *(v16 + 12) = 2080;
    sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v18 = sub_1E65E6BC8();
    v20 = v19;
    v21 = *(v15 + 8);
    v21(v13, v14);
    v22 = sub_1E5DFD4B0(v18, v20, &v27);

    *(v16 + 14) = v22;
    _os_log_impl(&dword_1E5DE9000, v9, v10, "Performing %ld %s", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    MEMORY[0x1E694F1C0](v25, -1, -1);
    MEMORY[0x1E694F1C0](v16, -1, -1);
  }

  else
  {
    sub_1E5FCD478(v0[26], type metadata accessor for TaskScheduler.ScheduledTask);

    v21 = *(v15 + 8);
    v21(v13, v14);
  }

  v0[30] = v21;
  v26 = (*(v0[12] + 8) + **(v0[12] + 8));
  v23 = swift_task_alloc();
  v0[31] = v23;
  *v23 = v0;
  v23[1] = sub_1E5FC956C;

  return v26();
}

uint64_t sub_1E5FC956C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 112);
  if (v0)
  {
    v4 = sub_1E5FC9F88;
  }

  else
  {
    v4 = sub_1E5FC9698;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E5FC9698()
{
  v79 = v0;
  v1 = v0[32];
  sub_1E65E6158();
  if (v1)
  {
    v2 = v0[13];
    v3 = v0[14];
    v4 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_vouchers;
    swift_beginAccess();
    v5 = *(v3 + v4);

    LOBYTE(v2) = sub_1E637CC58(v2, v5);

    if ((v2 & 1) == 0)
    {

      goto LABEL_16;
    }

    v76 = v1;
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = v0[24];
    v7 = v0[19];
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[12];
    v10 = v0[13];
    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    sub_1E5FCC548(v11, v6, type metadata accessor for TaskScheduler.ScheduledTask);
    v72 = *(v8 + 16);
    v72(v7, v10, v9);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6318();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[24];
    v17 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v78[0] = v21;
      *v20 = 134218242;
      v22 = *v16;
      sub_1E5FCD478(v16, type metadata accessor for TaskScheduler.ScheduledTask);
      *(v20 + 4) = v22;
      *(v20 + 12) = 2080;
      sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v23 = sub_1E65E6BC8();
      v25 = v24;
      v73 = *(v19 + 8);
      v73(v17, v18);
      v26 = sub_1E5DFD4B0(v23, v25, v78);

      *(v20 + 14) = v26;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "Throwing %ld %s", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E694F1C0](v21, -1, -1);
      MEMORY[0x1E694F1C0](v20, -1, -1);
    }

    else
    {
      sub_1E5FCD478(v0[24], type metadata accessor for TaskScheduler.ScheduledTask);

      v73 = *(v19 + 8);
      v73(v17, v18);
    }

    v47 = v0[23];
    v48 = v0[18];
    v49 = v0[15];
    v50 = v0[16];
    v52 = v0[12];
    v51 = v0[13];
    swift_beginAccess();
    sub_1E5FCC614(v51, v49);
    sub_1E5DFE50C(v49, &unk_1ED077760, &unk_1E66011D0);
    swift_endAccess();
    v0[11] = v76;
    v53 = v76;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    sub_1E65E5FE8();
    sub_1E5FCC548(v52, v47, type metadata accessor for TaskScheduler.ScheduledTask);
    v72(v48, v51, v50);
    v54 = v76;
    v55 = sub_1E65E3B48();
    v56 = sub_1E65E6318();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v0[23];
    v59 = v0[18];
    v60 = v0[16];
    if (v57)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v78[0] = v75;
      *v61 = 134218498;
      v63 = *v58;
      sub_1E5FCD478(v58, type metadata accessor for TaskScheduler.ScheduledTask);
      *(v61 + 4) = v63;
      *(v61 + 12) = 2080;
      sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v64 = sub_1E65E6BC8();
      v66 = v65;
      v73(v59, v60);
      v67 = sub_1E5DFD4B0(v64, v66, v78);

      *(v61 + 14) = v67;
      *(v61 + 22) = 2112;
      v68 = v76;
      v69 = _swift_stdlib_bridgeErrorToNSError();
      *(v61 + 24) = v69;
      *v62 = v69;
      _os_log_impl(&dword_1E5DE9000, v55, v56, "Thrown %ld %s: %@", v61, 0x20u);
      sub_1E5DFE50C(v62, &unk_1ED072130, &qword_1E65EA840);
      MEMORY[0x1E694F1C0](v62, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v75);
      MEMORY[0x1E694F1C0](v75, -1, -1);
      MEMORY[0x1E694F1C0](v61, -1, -1);
    }

    else
    {
      sub_1E5FCD478(v0[23], type metadata accessor for TaskScheduler.ScheduledTask);

      v73(v59, v60);
    }
  }

  else
  {
    v74 = v0[28];
    v27 = v0[25];
    v28 = v0[20];
    v30 = v0[15];
    v29 = v0[16];
    v31 = v0[13];
    v32 = v0[12];
    swift_beginAccess();
    sub_1E5FCC614(v31, v30);
    sub_1E5DFE50C(v30, &unk_1ED077760, &unk_1E66011D0);
    swift_endAccess();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    sub_1E65E5FF8();
    sub_1E5FCC548(v32, v27, type metadata accessor for TaskScheduler.ScheduledTask);
    v74(v28, v31, v29);
    v33 = sub_1E65E3B48();
    v34 = sub_1E65E6318();
    v35 = os_log_type_enabled(v33, v34);
    v36 = v0[30];
    v37 = v0[25];
    v38 = v0[20];
    v39 = v0[16];
    if (v35)
    {
      v77 = v0[30];
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v78[0] = v41;
      *v40 = 134218242;
      v42 = *v37;
      sub_1E5FCD478(v37, type metadata accessor for TaskScheduler.ScheduledTask);
      *(v40 + 4) = v42;
      *(v40 + 12) = 2080;
      sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v43 = sub_1E65E6BC8();
      v45 = v44;
      v77(v38, v39);
      v46 = sub_1E5DFD4B0(v43, v45, v78);

      *(v40 + 14) = v46;
      _os_log_impl(&dword_1E5DE9000, v33, v34, "Finished %ld %s", v40, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v41);
      MEMORY[0x1E694F1C0](v41, -1, -1);
      MEMORY[0x1E694F1C0](v40, -1, -1);
    }

    else
    {
      sub_1E5FCD478(v0[25], type metadata accessor for TaskScheduler.ScheduledTask);

      v36(v38, v39);
    }
  }

  sub_1E5FC7904(v0[12], v0[13]);
LABEL_16:

  v70 = v0[1];

  return v70();
}

uint64_t sub_1E5FC9F88()
{
  v57 = v0;
  v1 = v0[32];
  v2 = v0[13];
  v3 = v0[14];
  v4 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_vouchers;
  swift_beginAccess();
  v5 = *(v3 + v4);

  LOBYTE(v2) = sub_1E637CC58(v2, v5);

  if (v2)
  {
    v55 = v1;
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v6 = v0[24];
    v7 = v0[19];
    v9 = v0[16];
    v8 = v0[17];
    v11 = v0[12];
    v10 = v0[13];
    v12 = sub_1E65E3B68();
    __swift_project_value_buffer(v12, qword_1EE2EA2A0);
    sub_1E5FCC548(v11, v6, type metadata accessor for TaskScheduler.ScheduledTask);
    v52 = *(v8 + 16);
    v52(v7, v10, v9);
    v13 = sub_1E65E3B48();
    v14 = sub_1E65E6318();
    v15 = os_log_type_enabled(v13, v14);
    v16 = v0[24];
    v17 = v0[19];
    v18 = v0[16];
    v19 = v0[17];
    if (v15)
    {
      v20 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v56 = v51;
      *v20 = 134218242;
      v21 = *v16;
      sub_1E5FCD478(v16, type metadata accessor for TaskScheduler.ScheduledTask);
      *(v20 + 4) = v21;
      *(v20 + 12) = 2080;
      sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v22 = sub_1E65E6BC8();
      v24 = v23;
      v53 = *(v19 + 8);
      v53(v17, v18);
      v25 = sub_1E5DFD4B0(v22, v24, &v56);

      *(v20 + 14) = v25;
      _os_log_impl(&dword_1E5DE9000, v13, v14, "Throwing %ld %s", v20, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v51);
      MEMORY[0x1E694F1C0](v51, -1, -1);
      MEMORY[0x1E694F1C0](v20, -1, -1);
    }

    else
    {
      sub_1E5FCD478(v0[24], type metadata accessor for TaskScheduler.ScheduledTask);

      v53 = *(v19 + 8);
      v53(v17, v18);
    }

    v26 = v0[23];
    v27 = v0[18];
    v28 = v0[15];
    v29 = v0[16];
    v31 = v0[12];
    v30 = v0[13];
    swift_beginAccess();
    sub_1E5FCC614(v30, v28);
    sub_1E5DFE50C(v28, &unk_1ED077760, &unk_1E66011D0);
    swift_endAccess();
    v0[11] = v55;
    v32 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    sub_1E65E5FE8();
    sub_1E5FCC548(v31, v26, type metadata accessor for TaskScheduler.ScheduledTask);
    v52(v27, v30, v29);
    v33 = v55;
    v34 = sub_1E65E3B48();
    v35 = sub_1E65E6318();

    v36 = os_log_type_enabled(v34, v35);
    v37 = v0[23];
    v38 = v0[18];
    v39 = v0[16];
    if (v36)
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v56 = v54;
      *v40 = 134218498;
      v42 = *v37;
      sub_1E5FCD478(v37, type metadata accessor for TaskScheduler.ScheduledTask);
      *(v40 + 4) = v42;
      *(v40 + 12) = 2080;
      sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v43 = sub_1E65E6BC8();
      v45 = v44;
      v53(v38, v39);
      v46 = sub_1E5DFD4B0(v43, v45, &v56);

      *(v40 + 14) = v46;
      *(v40 + 22) = 2112;
      v47 = v55;
      v48 = _swift_stdlib_bridgeErrorToNSError();
      *(v40 + 24) = v48;
      *v41 = v48;
      _os_log_impl(&dword_1E5DE9000, v34, v35, "Thrown %ld %s: %@", v40, 0x20u);
      sub_1E5DFE50C(v41, &unk_1ED072130, &qword_1E65EA840);
      MEMORY[0x1E694F1C0](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1E694F1C0](v54, -1, -1);
      MEMORY[0x1E694F1C0](v40, -1, -1);
    }

    else
    {
      sub_1E5FCD478(v0[23], type metadata accessor for TaskScheduler.ScheduledTask);

      v53(v38, v39);
    }

    sub_1E5FC7904(v0[12], v0[13]);
  }

  else
  {
  }

  v49 = v0[1];

  return v49();
}

uint64_t sub_1E5FCA600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v51 = &v41 - v7;
  v8 = sub_1E65D76F8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v48 = v11;
  v49 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - v12;
  v14 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v45 = *(v14 - 8);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v46 = v16;
  v47 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = (&v41 - v17);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v19 = sub_1E65E3B68();
  __swift_project_value_buffer(v19, qword_1EE2EA2A0);
  v50 = a1;
  sub_1E5FCC548(a1, v18, type metadata accessor for TaskScheduler.ScheduledTask);
  v44 = *(v9 + 16);
  v44(v13, a2, v8);
  v20 = sub_1E65E3B48();
  v21 = sub_1E65E6318();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v42 = a2;
    v23 = v22;
    v24 = swift_slowAlloc();
    v43 = a3;
    v25 = v24;
    v52 = v24;
    *v23 = 134218242;
    v26 = *v18;
    sub_1E5FCD478(v18, type metadata accessor for TaskScheduler.ScheduledTask);
    *(v23 + 4) = v26;
    *(v23 + 12) = 2080;
    sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v27 = sub_1E65E6BC8();
    v29 = v28;
    (*(v9 + 8))(v13, v8);
    v30 = sub_1E5DFD4B0(v27, v29, &v52);

    *(v23 + 14) = v30;
    _os_log_impl(&dword_1E5DE9000, v20, v21, "onCancel %ld %s", v23, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v25);
    v31 = v25;
    a3 = v43;
    MEMORY[0x1E694F1C0](v31, -1, -1);
    v32 = v23;
    a2 = v42;
    MEMORY[0x1E694F1C0](v32, -1, -1);
  }

  else
  {
    sub_1E5FCD478(v18, type metadata accessor for TaskScheduler.ScheduledTask);

    (*(v9 + 8))(v13, v8);
  }

  v33 = sub_1E65E60A8();
  v34 = v51;
  (*(*(v33 - 8) + 56))(v51, 1, 1, v33);
  v35 = v47;
  sub_1E5FCC548(v50, v47, type metadata accessor for TaskScheduler.ScheduledTask);
  v36 = v49;
  v44(v49, a2, v8);
  v37 = (*(v45 + 80) + 40) & ~*(v45 + 80);
  v38 = (v46 + *(v9 + 80) + v37) & ~*(v9 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = 0;
  *(v39 + 3) = 0;
  *(v39 + 4) = a3;
  sub_1E5FCC5B0(v35, &v39[v37]);
  (*(v9 + 32))(&v39[v38], v36, v8);

  sub_1E64B80F8(0, 0, v34, &unk_1E65EBB48, v39);
}

uint64_t sub_1E5FCAB30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_1E5FCAB54, a4, 0);
}

uint64_t sub_1E5FCAB54()
{
  sub_1E5FCABB8(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FCABB8(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v37 = &v32 - v6;
  v7 = sub_1E65D76F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  MEMORY[0x1EEE9AC00](v36);
  v12 = (&v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_vouchers;
  swift_beginAccess();
  v14 = *(v2 + v13);

  v15 = sub_1E637CC58(a2, v14);

  if (v15)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v17 = sub_1E65E3B68();
    __swift_project_value_buffer(v17, qword_1EE2EA2A0);
    v35 = a1;
    sub_1E5FCC548(a1, v12, type metadata accessor for TaskScheduler.ScheduledTask);
    (*(v8 + 16))(v10, a2, v7);
    v18 = sub_1E65E3B48();
    v19 = sub_1E65E6318();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v34 = a2;
      v21 = v20;
      v33 = swift_slowAlloc();
      v38[0] = v33;
      *v21 = 134218242;
      v22 = *v12;
      sub_1E5FCD478(v12, type metadata accessor for TaskScheduler.ScheduledTask);
      *(v21 + 4) = v22;
      *(v21 + 12) = 2080;
      sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v23 = sub_1E65E6BC8();
      v25 = v24;
      (*(v8 + 8))(v10, v7);
      v26 = sub_1E5DFD4B0(v23, v25, v38);

      *(v21 + 14) = v26;
      _os_log_impl(&dword_1E5DE9000, v18, v19, "Cancelling Immediately %ld %s", v21, 0x16u);
      v27 = v33;
      __swift_destroy_boxed_opaque_existential_1(v33);
      MEMORY[0x1E694F1C0](v27, -1, -1);
      v28 = v21;
      a2 = v34;
      MEMORY[0x1E694F1C0](v28, -1, -1);
    }

    else
    {
      sub_1E5FCD478(v12, type metadata accessor for TaskScheduler.ScheduledTask);

      (*(v8 + 8))(v10, v7);
    }

    swift_beginAccess();
    v29 = v37;
    sub_1E5FCC614(a2, v37);
    sub_1E5DFE50C(v29, &unk_1ED077760, &unk_1E66011D0);
    swift_endAccess();
    sub_1E65E6018();
    sub_1E5E0E840(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v30 = swift_allocError();
    sub_1E65E5AE8();
    v38[0] = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    v31 = v35;
    sub_1E65E5FE8();
    return sub_1E5FC7904(v31, a2);
  }

  return result;
}

uint64_t sub_1E5FCB070()
{
  sub_1E5FCD478(v0 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state, type metadata accessor for TaskScheduler.State);

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1E5FCB128()
{
  v1 = v0;
  v29 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v2 = *(v29 - 8);
  v3 = MEMORY[0x1EEE9AC00](v29);
  v5 = (&v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  if (qword_1EE2D7790 != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = sub_1E65E3B68();
    v28 = __swift_project_value_buffer(v8, qword_1EE2EA2A0);
    sub_1E65E3B38();
    v9 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTasks;
    swift_beginAccess();
    v11 = *(v1 + v9);
    *(v1 + v9) = MEMORY[0x1E69E7CC0];
    v12 = *(v11 + 16);
    if (!v12)
    {
      break;
    }

    v13 = 0;
    *&v10 = 134217984;
    v27 = v10;
    v1 = &qword_1ED071E30;
    v26 = v7;
    while (v13 < *(v11 + 16))
    {
      sub_1E5FCC548(v11 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v13, v7, type metadata accessor for TaskScheduler.ScheduledTask);
      sub_1E5FCC548(v7, v5, type metadata accessor for TaskScheduler.ScheduledTask);
      v15 = sub_1E65E3B48();
      v16 = sub_1E65E6318();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v11;
        v18 = v2;
        v19 = v12;
        v20 = v1;
        v21 = swift_slowAlloc();
        *v21 = v27;
        v22 = *v5;
        sub_1E5FCD478(v5, type metadata accessor for TaskScheduler.ScheduledTask);
        *(v21 + 4) = v22;
        _os_log_impl(&dword_1E5DE9000, v15, v16, "Cancelling Pending %ld", v21, 0xCu);
        v23 = v21;
        v1 = v20;
        v12 = v19;
        v2 = v18;
        v11 = v17;
        v7 = v26;
        MEMORY[0x1E694F1C0](v23, -1, -1);
      }

      else
      {
        sub_1E5FCD478(v5, type metadata accessor for TaskScheduler.ScheduledTask);
      }

      ++v13;

      sub_1E65E6018();
      sub_1E5E0E840(v1, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
      v14 = swift_allocError();
      sub_1E65E5AE8();
      v30 = v14;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
      sub_1E65E5FE8();
      sub_1E5FCD478(v7, type metadata accessor for TaskScheduler.ScheduledTask);
      if (v12 == v13)
      {
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }
}

uint64_t sub_1E5FCB4D0()
{
  v1 = v0;
  v2 = type metadata accessor for TaskScheduler.State(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v15[-v6];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v8 = sub_1E65E3B68();
  __swift_project_value_buffer(v8, qword_1EE2EA2A0);
  sub_1E65E3B38();
  sub_1E5FCB128();
  v9 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state;
  swift_beginAccess();
  sub_1E5FCC548(v0 + v9, v7, type metadata accessor for TaskScheduler.State);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0);
  v11 = *(v10 - 8);
  result = (*(v11 + 48))(v7, 1, v10);
  if (result != 1)
  {
    v13 = *(v10 + 48);
    (*(v11 + 56))(v5, 1, 1, v10);
    swift_beginAccess();
    sub_1E5FCD414(v5, v1 + v9);
    swift_endAccess();
    sub_1E65E6148();

    v14 = sub_1E65D76F8();
    (*(*(v14 - 8) + 8))(&v7[v13], v14);
    return sub_1E5FCD478(v7, type metadata accessor for TaskScheduler.ScheduledTask);
  }

  return result;
}

uint64_t sub_1E5FCB778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  LODWORD(v94) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = v84 - v10;
  v92 = sub_1E65D76F8();
  v87 = *(v92 - 8);
  v11 = MEMORY[0x1EEE9AC00](v92);
  v95 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v91 = v84 - v13;
  v14 = type metadata accessor for TaskScheduler.State(0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = v84 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = v84 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726E0, &qword_1E65EBB18);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v93 = v84 - v21;
  v22 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  v23 = MEMORY[0x1EEE9AC00](v22);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v90 = v84 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = v84 - v27;
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = (v84 - v30);
  v32 = MEMORY[0x1EEE9AC00](v29);
  v36 = v84 - v35;
  v37 = *(a2 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTaskLifetimeTotal);
  v38 = v37 + 1;
  if (__OFADD__(v37, 1))
  {
    __break(1u);
  }

  else
  {
    v89 = v34;
    v85 = v33;
    v86 = v17;
    *(a2 + OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTaskLifetimeTotal) = v38;
    v39 = *(v32 + 24);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726C8, &qword_1E66094D0);
    (*(*(v40 - 8) + 16))(&v36[v39], a1, v40);
    *v36 = v38;
    *(v36 + 1) = a3;
    *(v36 + 2) = a4;
    v41 = qword_1EE2D7790;

    if (v41 == -1)
    {
      goto LABEL_3;
    }
  }

  swift_once();
LABEL_3:
  v42 = sub_1E65E3B68();
  __swift_project_value_buffer(v42, qword_1EE2EA2A0);
  sub_1E5FCC548(v36, v31, type metadata accessor for TaskScheduler.ScheduledTask);
  v43 = sub_1E65E3B48();
  v44 = sub_1E65E6318();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 134217984;
    v46 = *v31;
    sub_1E5FCD478(v31, type metadata accessor for TaskScheduler.ScheduledTask);
    *(v45 + 4) = v46;
    _os_log_impl(&dword_1E5DE9000, v43, v44, "Scheduling %ld", v45, 0xCu);
    MEMORY[0x1E694F1C0](v45, -1, -1);
  }

  else
  {
    sub_1E5FCD478(v31, type metadata accessor for TaskScheduler.ScheduledTask);
  }

  v47 = v95;

  if (v94)
  {
    if (v94 == 1 || (v55 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_state, swift_beginAccess(), sub_1E5FCC548(a2 + v55, v19, type metadata accessor for TaskScheduler.State), v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0726D0, &qword_1E65EBAB0), v57 = *(v56 - 8), (*(v57 + 48))(v19, 1, v56) == 1))
    {
      swift_beginAccess();
      v48 = v93;
      sub_1E5FCC548(v36, v93, type metadata accessor for TaskScheduler.ScheduledTask);
      sub_1E5FCD340(0, 0, v48);
    }

    else
    {
      v89 = v57;
      v94 = v55;
      v95 = v56;
      v58 = *(v56 + 48);
      v84[1] = *&v19[*(v56 + 64)];
      v59 = v90;
      sub_1E5FCC5B0(v19, v90);
      v60 = v87;
      v61 = &v19[v58];
      v62 = v91;
      v63 = v92;
      (*(v87 + 32))(v91, v61, v92);
      v64 = v85;
      sub_1E5FCC548(v59, v85, type metadata accessor for TaskScheduler.ScheduledTask);
      (*(v60 + 16))(v47, v62, v63);
      v65 = sub_1E65E3B48();
      v66 = sub_1E65E6318();
      if (os_log_type_enabled(v65, v66))
      {
        v67 = v63;
        v68 = swift_slowAlloc();
        v84[0] = swift_slowAlloc();
        v96[0] = v84[0];
        *v68 = 134218242;
        v69 = *v64;
        sub_1E5FCD478(v64, type metadata accessor for TaskScheduler.ScheduledTask);
        *(v68 + 4) = v69;
        *(v68 + 12) = 2080;
        sub_1E5E0E840(&qword_1EE2D7198, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v70 = sub_1E65E6BC8();
        v71 = v47;
        v73 = v72;
        v87 = *(v60 + 8);
        (v87)(v71, v67);
        v74 = sub_1E5DFD4B0(v70, v73, v96);

        *(v68 + 14) = v74;
        _os_log_impl(&dword_1E5DE9000, v65, v66, "Rescheduling %ld %s", v68, 0x16u);
        v75 = v84[0];
        __swift_destroy_boxed_opaque_existential_1(v84[0]);
        MEMORY[0x1E694F1C0](v75, -1, -1);
        MEMORY[0x1E694F1C0](v68, -1, -1);
      }

      else
      {
        sub_1E5FCD478(v64, type metadata accessor for TaskScheduler.ScheduledTask);

        v87 = *(v60 + 8);
        (v87)(v47, v63);
      }

      swift_beginAccess();
      v76 = v88;
      v77 = v91;
      sub_1E5FCC614(v91, v88);
      sub_1E5DFE50C(v76, &unk_1ED077760, &unk_1E66011D0);
      swift_endAccess();
      sub_1E65E6148();
      swift_beginAccess();
      v78 = v90;
      v79 = v93;
      sub_1E5FCC548(v90, v93, type metadata accessor for TaskScheduler.ScheduledTask);
      sub_1E5FCD340(0, 0, v79);
      sub_1E5FCC548(v36, v79, type metadata accessor for TaskScheduler.ScheduledTask);
      sub_1E5FCD340(0, 0, v79);
      swift_endAccess();

      (v87)(v77, v92);
      sub_1E5FCD478(v78, type metadata accessor for TaskScheduler.ScheduledTask);
      v80 = v86;
      (*(v89 + 56))(v86, 1, 1, v95);
      v81 = v94;
      swift_beginAccess();
      sub_1E5FCD414(v80, a2 + v81);
    }
  }

  else
  {
    sub_1E5FCC548(v36, v28, type metadata accessor for TaskScheduler.ScheduledTask);
    v49 = OBJC_IVAR____TtC10Blackbeard13TaskScheduler_scheduledTasks;
    swift_beginAccess();
    v50 = *(a2 + v49);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v49) = v50;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v50 = sub_1E64F609C(0, v50[2] + 1, 1, v50);
      *(a2 + v49) = v50;
    }

    v53 = v50[2];
    v52 = v50[3];
    v54 = v89;
    if (v53 >= v52 >> 1)
    {
      v83 = sub_1E64F609C((v52 > 1), v53 + 1, 1, v50);
      v54 = v89;
      v50 = v83;
    }

    v50[2] = v53 + 1;
    sub_1E5FCC5B0(v28, v50 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v53);
    *(a2 + v49) = v50;
  }

  swift_endAccess();
  sub_1E5FC7C14();
  return sub_1E5FCD478(v36, type metadata accessor for TaskScheduler.ScheduledTask);
}

uint64_t sub_1E5FCC240(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 64) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1E5FCC26C, v3, 0);
}

uint64_t sub_1E5FCC26C()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 32);
  v3 = sub_1E5E0E840(&qword_1EE2DB040, type metadata accessor for TaskScheduler, &unk_1E65EBAEC);
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  v5 = *(v0 + 16);
  *(v4 + 16) = v2;
  *(v4 + 24) = v5;
  *(v4 + 40) = v1;
  v6 = swift_task_alloc();
  *(v0 + 48) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FCC3B0;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, v2, v3, 0xD000000000000019, 0x80000001E6610D40, sub_1E5FCC538, v4, v7);
}

uint64_t sub_1E5FCC3B0()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 32);
    v4 = sub_1E5FCC4D4;
  }

  else
  {
    v5 = *(v2 + 32);

    v4 = sub_1E5E1CF6C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E5FCC4D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FCC548(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FCC5B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TaskScheduler.ScheduledTask(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E5FCC614@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1E65D76F8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1E5E0E840(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1E65E5B38();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1E5E0E840(&qword_1EE2D71A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1E65E5B98();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1E610A9D0();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1E5FCCD74(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1E5FCC8BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v6 = *v3;
  sub_1E65E6D28();
  v21 = v3;
  v22 = a3;
  if (a2 > 2)
  {
    if (a2 == 3 || a2 == 4 || a2 == 5)
    {
      goto LABEL_10;
    }
  }

  else if (a2 <= 2)
  {
    goto LABEL_10;
  }

  MEMORY[0x1E694D7C0](a1, a2);
LABEL_10:
  sub_1E65E5D78();

  result = sub_1E65E6D78();
  v8 = -1 << *(v6 + 32);
  v9 = result & ~v8;
  if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
LABEL_53:
    *v22 = xmmword_1E65EAE00;
    return result;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(v6 + 48) + 16 * v9);
    v12 = *v11;
    v13 = v11[1];
    if (v13 > 2)
    {
      break;
    }

    if (!v13)
    {
      v14 = 0xE700000000000000;
      v15 = 0x65726F6C707865;
      if (a2 <= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    if (v13 != 1)
    {
      if (v13 == 2)
      {
        v14 = 0xE700000000000000;
        v15 = 0x7972617262696CLL;
        if (a2 <= 2)
        {
          goto LABEL_38;
        }

        goto LABEL_30;
      }

LABEL_27:
      sub_1E5E05374(v12, v13);
      MEMORY[0x1E694D7C0](v12, v13);
      v15 = 0x7974696C61646F6DLL;
      v14 = 0xE90000000000003ALL;
      if (a2 <= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    v14 = 0xE600000000000000;
    v15 = 0x756F59726F66;
    if (a2 <= 2)
    {
      goto LABEL_38;
    }

LABEL_30:
    if (a2 == 3)
    {
      v16 = 0xE600000000000000;
      if (v15 == 0x686372616573)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    if (a2 != 4)
    {
      if (a2 == 5)
      {
        v16 = 0xE500000000000000;
        if (v15 == 0x736E616C70)
        {
          goto LABEL_50;
        }

        goto LABEL_51;
      }

LABEL_45:
      v17 = v15;
      MEMORY[0x1E694D7C0](a1, a2);
      v16 = 0xE90000000000003ALL;
      if (v17 == 0x7974696C61646F6DLL)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    v16 = 0xE600000000000000;
    if (v15 == 0x7478654E7075)
    {
      goto LABEL_50;
    }

LABEL_51:
    v18 = sub_1E65E6C18();
    sub_1E5E0476C(v12, v13);

    if (v18)
    {
      goto LABEL_55;
    }

    v9 = (v9 + 1) & v10;
    if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      goto LABEL_53;
    }
  }

  if (v13 == 3)
  {
    v14 = 0xE600000000000000;
    v15 = 0x686372616573;
    if (a2 <= 2)
    {
      goto LABEL_38;
    }

    goto LABEL_30;
  }

  if (v13 != 4)
  {
    if (v13 == 5)
    {
      v14 = 0xE500000000000000;
      v15 = 0x736E616C70;
      if (a2 <= 2)
      {
        goto LABEL_38;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  v14 = 0xE600000000000000;
  v15 = 0x7478654E7075;
  if (a2 > 2)
  {
    goto LABEL_30;
  }

LABEL_38:
  if (!a2)
  {
    v16 = 0xE700000000000000;
    if (v15 == 0x65726F6C707865)
    {
      goto LABEL_50;
    }

    goto LABEL_51;
  }

  if (a2 != 1)
  {
    if (a2 == 2)
    {
      v16 = 0xE700000000000000;
      if (v15 == 0x7972617262696CLL)
      {
        goto LABEL_50;
      }

      goto LABEL_51;
    }

    goto LABEL_45;
  }

  v16 = 0xE600000000000000;
  if (v15 != 0x756F59726F66)
  {
    goto LABEL_51;
  }

LABEL_50:
  if (v14 != v16)
  {
    goto LABEL_51;
  }

  sub_1E5E0476C(v12, v13);

LABEL_55:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v21;
  v24 = *v21;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E610AEC0();
    v20 = v24;
  }

  *v22 = *(*(v20 + 48) + 16 * v9);
  result = sub_1E5FCD07C(v9);
  *v21 = v24;
  return result;
}

uint64_t sub_1E5FCCD74(int64_t a1)
{
  v3 = sub_1E65D76F8();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1E65E6758();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1E5E0E840(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1E65E5B38();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}