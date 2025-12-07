uint64_t sub_1E6340498()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E63405A8, v1, 0);
}

uint64_t sub_1E63405A8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6340628(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[105] = a4;
  v4[99] = a3;
  v4[93] = a2;
  v4[87] = a1;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v4[106] = v5;
  v4[107] = *(v5 + 64);
  v4[108] = swift_task_alloc();
  v6 = sub_1E65E1B28();
  v4[109] = v6;
  v4[110] = *(v6 - 8);
  v4[111] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6340754, 0, 0);
}

uint64_t sub_1E6340754()
{
  v1 = v0[108];
  v2 = v0[106];
  v3 = v0[93];
  sub_1E5E1D894(v0[99], v1, type metadata accessor for AppComposer);
  v4 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v5 = swift_allocObject();
  v0[112] = v5;
  *(v5 + 16) = v3;
  sub_1E5E1E048(v1, v5 + v4, type metadata accessor for AppComposer);

  swift_asyncLet_begin();
  v6 = swift_task_alloc();
  v0[113] = v6;
  *v6 = v0;
  v6[1] = sub_1E63408B8;
  v7 = v0[105];
  v8 = v0[99];

  return sub_1E6341ACC(v8, v7);
}

uint64_t sub_1E63408B8()
{
  v2 = *v1;
  *(*v1 + 912) = v0;

  if (v0)
  {
    v3 = *(v2 + 888);

    return MEMORY[0x1EEE6DEB0](v2 + 16, v3, sub_1E6340B5C, v2 + 656);
  }

  else
  {
    v4 = *(v2 + 888);

    return MEMORY[0x1EEE6DEC0](v2 + 16, v4, sub_1E63409FC, v2 + 704);
  }
}

uint64_t sub_1E63409FC()
{
  *(v1 + 920) = v0;
  if (v0)
  {
    return MEMORY[0x1EEE6DEB0](v1 + 16, *(v1 + 888), sub_1E6340BFC, v1 + 752);
  }

  else
  {
    return MEMORY[0x1EEE6DFA0](sub_1E6340A40, 0, 0);
  }
}

uint64_t sub_1E6340A40()
{
  (*(v0[110] + 16))(v0[87], v0[111], v0[109]);
  v1 = v0[111];

  return MEMORY[0x1EEE6DEB0](v0 + 2, v1, sub_1E6340AC4, v0 + 100);
}

uint64_t sub_1E6340AE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6340B78()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6340C18()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6340C9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6340D4C(a1, a3);
}

uint64_t sub_1E6340D4C(uint64_t a1, uint64_t a2)
{
  v3[8] = a2;
  v3[9] = v2;
  v3[7] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787E0, &qword_1E65FD880);
  v3[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787E8, &qword_1E65FD888);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073528, &unk_1E65FD890);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755C8, &qword_1E65F1B88);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073568, &qword_1E65FD8A0);
  v3[19] = v5;
  v3[20] = *(v5 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v6 = sub_1E65E1B28();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6340FB0, v2, 0);
}

uint64_t sub_1E6340FB0()
{
  v1 = *(v0 + 176);
  v2 = *(v0 + 152);
  v3 = *(v0 + 160);
  *(v0 + 208) = **(v0 + 64);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  v4 = *(v3 + 8);
  *(v0 + 216) = v4;
  *(v0 + 224) = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v4(v1, v2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        sub_1E5DFE50C(*(v0 + 144), &qword_1ED0755C8, &qword_1E65F1B88);
        sub_1E6344DE4();
        swift_allocError();
        *v17 = 8;
        swift_willThrow();

        v16 = *(v0 + 8);
        goto LABEL_11;
      }

      v7 = *(v0 + 192);
      v6 = *(v0 + 200);
      v8 = *(v0 + 184);
      v9 = *(v0 + 144);
      v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0755D0, &qword_1E65FD8D0) + 48);
      v11 = *(v7 + 32);
      v11(v6, v9, v8);
      v12 = sub_1E65D76A8();
      (*(*(v12 - 8) + 8))(v9 + v10, v12);
    }

    else
    {
      v11 = *(*(v0 + 192) + 32);
      v11(*(v0 + 200), *(v0 + 144), *(v0 + 184));
    }

    v11(*(v0 + 56), *(v0 + 200), *(v0 + 184));

    v16 = *(v0 + 8);
LABEL_11:

    return v16();
  }

  v13 = *(v0 + 64);
  *(v0 + 232) = *(v13 + *(type metadata accessor for AppComposer(0) + 24));
  *(v0 + 240) = sub_1E65E6058();
  *(v0 + 248) = sub_1E65E6048();
  v15 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6341318, v15, v14);
}

uint64_t sub_1E6341318()
{
  v1 = v0[14];

  sub_1E5E20198(11, (v0 + 2));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  v2 = swift_dynamicCast();
  v3 = *(v1 + 56);
  if (v2)
  {
    v4 = v0[13];
    v5 = v0[14];
    v7 = v0[11];
    v6 = v0[12];
    v3(v7, 0, 1, v4);
    (*(v5 + 32))(v6, v7, v4);
    v8 = 0;
  }

  else
  {
    v9 = v0[11];
    v8 = 1;
    v3(v9, 1, 1, v0[13]);
    sub_1E5DFE50C(v9, &qword_1ED0787E8, &qword_1E65FD888);
  }

  v10 = v0[9];
  v3(v0[12], v8, 1, v0[13]);

  return MEMORY[0x1EEE6DFA0](sub_1E634147C, v10, 0);
}

uint64_t sub_1E634147C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[12];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1E5DFE50C(v3, &qword_1ED0787E8, &qword_1E65FD888);
    sub_1E6344DE4();
    swift_allocError();
    *v4 = 9;
    swift_willThrow();

    v5 = v0[1];

    return v5();
  }

  else
  {
    (*(v2 + 32))(v0[15], v3, v1);
    v0[32] = sub_1E65E6048();
    v8 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6341658, v8, v7);
  }
}

uint64_t sub_1E6341658()
{

  sub_1E65E4E28();
  v1 = swift_task_alloc();
  *(v0 + 264) = v1;
  *v1 = v0;
  v1[1] = sub_1E6341708;
  v2.n128_u64[0] = 0x3FB999999999999ALL;

  return MEMORY[0x1EEE34840](v2);
}

uint64_t sub_1E6341708()
{
  v2 = *v1;

  v3 = *(v2 + 72);
  if (v0)
  {

    v4 = sub_1E6347CEC;
  }

  else
  {
    v4 = sub_1E6341840;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6341840()
{
  v1 = v0[27];
  v2 = v0[24];
  v17 = v0[23];
  v3 = v0[21];
  v4 = v0[19];
  v5 = v0[17];
  v6 = v0[10];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60F00A8(v6);
  sub_1E5DFE50C(v5, &qword_1ED0755C8, &qword_1E65F1B88);
  v1(v3, v4);
  if ((*(v2 + 48))(v6, 1, v17) == 1)
  {
    v8 = v0[14];
    v7 = v0[15];
    v9 = v0[13];
    sub_1E5DFE50C(v0[10], &qword_1ED0787E0, &qword_1E65FD880);
    sub_1E6344DE4();
    swift_allocError();
    *v10 = 10;
    swift_willThrow();
    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v12 = v0[23];
    v13 = v0[24];
    v14 = v0[10];
    v15 = v0[7];
    (*(v0[14] + 8))(v0[15], v0[13]);
    (*(v13 + 32))(v15, v14, v12);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1E6341ACC(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752D8, &qword_1E660CC30);
  v3[5] = swift_task_alloc();
  v4 = sub_1E65D76A8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  v5 = sub_1E65D92D8();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();
  v3[13] = type metadata accessor for RouteSource(0);
  v3[14] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071E18, &qword_1E65FD850);
  v3[15] = v6;
  v3[16] = *(v6 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6341CC8, v2, 0);
}

uint64_t sub_1E6341CC8()
{
  if (qword_1EE2DA2E0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 120);
  v4 = __swift_project_value_buffer(v3, qword_1EE2DA2E8);
  v5 = *(v2 + 16);
  v5(v1, v4, v3);
  sub_1E65DDC48();
  v6 = *(v2 + 8);
  v6(v1, v3);
  if (*(v0 + 280) != 1)
  {
    v7 = 1;
    goto LABEL_7;
  }

  if (*(*(v0 + 32) + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch))
  {
    v7 = 2;
LABEL_7:
    sub_1E6344DE4();
    swift_allocError();
    *v8 = v7;
    swift_willThrow();

    v9 = *(v0 + 8);
LABEL_8:

    return v9();
  }

  sub_1E6347AE8(*(v0 + 24));
  if (qword_1EE2DA2B8 != -1)
  {
    swift_once();
  }

  v11 = *(v0 + 136);
  v12 = *(v0 + 120);
  v13 = __swift_project_value_buffer(v12, qword_1EE2DA2C0);
  v5(v11, v13, v12);
  sub_1E65DDC48();
  v6(v11, v12);
  if (*(v0 + 281))
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v14 = sub_1E65E3B68();
    __swift_project_value_buffer(v14, qword_1EE2EA2A0);
    v15 = sub_1E65E3B48();
    v16 = sub_1E65E6338();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1E5DE9000, v15, v16, "[Onboarding] ForceOnboardingPresentation enabled", v17, 2u);
      MEMORY[0x1E694F1C0](v17, -1, -1);
    }

    v9 = *(v0 + 8);
    goto LABEL_8;
  }

  v18 = *(v0 + 16);
  v19 = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 272) = v19;
  v20 = swift_task_alloc();
  *(v0 + 144) = v20;
  *v20 = v0;
  v20[1] = sub_1E634208C;

  return sub_1E6346124(v18 + v19);
}

uint64_t sub_1E634208C()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 272);
    v7 = *(v2 + 16);
    v8 = swift_task_alloc();
    *(v2 + 152) = v8;
    *v8 = v3;
    v8[1] = sub_1E6342254;

    return sub_1E6346740(v7 + v6);
  }
}

uint64_t sub_1E6342254()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {
    v6 = *(v2 + 32);

    return MEMORY[0x1EEE6DFA0](sub_1E63423DC, v6, 0);
  }
}

uint64_t sub_1E63423DC()
{
  v0[20] = type metadata accessor for AppEnvironment(0);
  v1 = ArchivedSessionService.requireNoArchivedSessions.getter();
  v0[21] = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[22] = v3;
  *v3 = v0;
  v3[1] = sub_1E63424EC;

  return v5();
}

uint64_t sub_1E63424EC()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1E63428C8;
  }

  else
  {
    v4 = sub_1E6342618;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6342618()
{
  v1 = v0[14];
  v2 = v0[3];

  v3 = *(type metadata accessor for RouteDestination(0) + 20);
  swift_storeEnumTagMultiPayload();
  v4 = _s10Blackbeard11RouteSourceO2eeoiySbAC_ACtFZ_0(v2 + v3, v1);
  sub_1E6344CC8(v1, type metadata accessor for RouteSource);
  if (v4)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v5 = sub_1E65E3B68();
    __swift_project_value_buffer(v5, qword_1EE2EA2A0);
    v6 = sub_1E65E3B48();
    v7 = sub_1E65E6338();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1E5DE9000, v6, v7, "[Onboarding] User subscribed in app and has empty db", v8, 2u);
      MEMORY[0x1E694F1C0](v8, -1, -1);
    }

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = ServiceSubscriptionService.fetchServiceSubscription.getter();
    v0[24] = v12;
    v15 = (v11 + *v11);
    v13 = swift_task_alloc();
    v0[25] = v13;
    *v13 = v0;
    v13[1] = sub_1E63429C0;
    v14 = v0[12];

    return (v15)(v14, 0);
  }
}

uint64_t sub_1E63428C8()
{
  v1 = *(v0 + 184);

  sub_1E6344DE4();
  swift_allocError();
  *v2 = 6;
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E63429C0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {
    v4 = sub_1E63436B0;
  }

  else
  {
    v4 = sub_1E6342AEC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6342AEC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_1E65D7698();
  v4 = sub_1E65D92A8();
  v5 = *(v3 + 8);
  v5(v1, v2);
  v6 = *(v0 + 96);
  if (v4)
  {
    v7 = *(v0 + 48);
    v8 = *(v0 + 56);
    v9 = *(v0 + 40);
    sub_1E65D92B8();
    if ((*(v8 + 48))(v9, 1, v7) == 1)
    {
      sub_1E5DFE50C(*(v0 + 40), &qword_1ED0752D8, &qword_1E660CC30);
LABEL_15:
      *(v0 + 276) = *(*(v0 + 160) + 124);
      v31 = SyncService.queryAccountSyncStatus.getter();
      *(v0 + 216) = v32;
      v35 = (v31 + *v31);
      v33 = swift_task_alloc();
      *(v0 + 224) = v33;
      *v33 = v0;
      v33[1] = sub_1E6342F40;

      return v35();
    }

    v15 = *(v0 + 72);
    v16 = *(v0 + 48);
    (*(*(v0 + 56) + 32))(*(v0 + 64), *(v0 + 40), v16);
    sub_1E65D7688();
    sub_1E65D7628();
    v18 = v17;
    v5(v15, v16);
    sub_1E65E1BC8();
    if (v18 >= v19)
    {
      v5(*(v0 + 64), *(v0 + 48));
      goto LABEL_15;
    }

    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v20 = sub_1E65E3B68();
    __swift_project_value_buffer(v20, qword_1EE2EA2A0);
    v21 = sub_1E65E3B48();
    v22 = sub_1E65E6338();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 88);
    v25 = *(v0 + 96);
    v26 = *(v0 + 80);
    v27 = *(v0 + 64);
    v28 = *(v0 + 48);
    if (v23)
    {
      v34 = *(v0 + 96);
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_1E5DE9000, v21, v22, "[Onboarding] User initially subscribed recently", v29, 2u);
      v30 = v29;
      v25 = v34;
      MEMORY[0x1E694F1C0](v30, -1, -1);
    }

    v5(v27, v28);
    (*(v24 + 8))(v25, v26);

    v13 = *(v0 + 8);
  }

  else
  {
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    sub_1E6344DE4();
    swift_allocError();
    *v12 = 4;
    swift_willThrow();
    (*(v11 + 8))(v6, v10);

    v13 = *(v0 + 8);
  }

  return v13();
}

uint64_t sub_1E6342F40(char a1)
{
  v3 = *v2;
  *(v3 + 282) = a1;
  *(v3 + 232) = v1;

  if (v1)
  {
    v4 = *(v3 + 32);

    v5 = sub_1E6343764;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 32);
    v5 = sub_1E634306C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v6, 0);
}

uint64_t sub_1E634306C()
{
  v24 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v23 = v5;
    *v4 = 136315138;
    v6 = sub_1E65D8B98();
    v8 = sub_1E5DFD4B0(v6, v7, &v23);

    *(v4 + 4) = v8;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "[Onboarding] Account sync status = %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v5);
    MEMORY[0x1E694F1C0](v5, -1, -1);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  if (*(v0 + 282) > 2u)
  {
    (*(*(v0 + 88) + 8))(*(v0 + 96), *(v0 + 80));

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v9 = SyncService.requireChangeWindows.getter();
    *(v0 + 240) = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787D8, &qword_1E65FD868);
    v11 = sub_1E65DAEC8();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_1E65EB9E0;
    v16 = v15 + v14;
    v17 = *(v12 + 104);
    v17(v16, *MEMORY[0x1E69CD398], v11);
    v17(v16 + v13, *MEMORY[0x1E69CD3A0], v11);
    v18 = sub_1E5F9BDEC(v15);
    *(v0 + 248) = v18;
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v22 = (v9 + *v9);
    v19 = swift_task_alloc();
    *(v0 + 256) = v19;
    *v19 = v0;
    v19[1] = sub_1E634346C;

    return v22(v18);
  }
}

uint64_t sub_1E634346C()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 32);
  if (v0)
  {

    v4 = sub_1E6343828;
  }

  else
  {

    v4 = sub_1E63435EC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E63435EC()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63436B0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6343764()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6343828()
{
  (*(v0[11] + 8))(v0[12], v0[10]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63438EC(char a1, uint64_t a2)
{
  *(v3 + 64) = a2;
  *(v3 + 72) = v2;
  *(v3 + 256) = a1;
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  *(v3 + 80) = v4;
  *(v3 + 88) = *(v4 + 64);
  *(v3 + 96) = swift_task_alloc();
  *(v3 + 104) = type metadata accessor for AppAction(0);
  *(v3 + 112) = swift_task_alloc();
  v5 = sub_1E65E1B08();
  *(v3 + 120) = v5;
  *(v3 + 128) = *(v5 - 8);
  *(v3 + 136) = swift_task_alloc();
  type metadata accessor for OnboardingDetour.State(0);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  *(v3 + 160) = type metadata accessor for RouteDestination(0);
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  *(v3 + 184) = v6;
  *(v3 + 192) = *(v6 - 8);
  *(v3 + 200) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6343B1C, v2, 0);
}

uint64_t sub_1E6343B1C()
{
  v1 = *(v0 + 152);
  v2 = *(v0 + 72);
  v3 = OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state;
  swift_beginAccess();
  sub_1E5E1D894(v2 + v3, v1, type metadata accessor for OnboardingDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E6344CC8(*(v0 + 152), type metadata accessor for OnboardingDetour.State);
LABEL_8:

    v28 = *(v0 + 8);

    return v28();
  }

  v7 = *(v0 + 192);
  v6 = *(v0 + 200);
  v9 = *(v0 + 176);
  v8 = *(v0 + 184);
  v11 = *(v0 + 144);
  v10 = *(v0 + 152);
  v12 = *(v0 + 256);
  v13 = (v10 + *(v4 + 48));
  *(v0 + 208) = *v13;
  *(v0 + 216) = v13[1];
  v14 = *(v4 + 64);
  (*(v7 + 32))(v6, v10, v8);
  sub_1E5E1E048(v10 + v14, v9, type metadata accessor for RouteDestination);
  (*(v5 + 56))(v11, 1, 1, v4);
  swift_beginAccess();
  sub_1E6344D28(v11, v2 + v3);
  swift_endAccess();
  if (v12 != 1)
  {
    v24 = *(v0 + 192);
    v25 = *(v0 + 200);
    v27 = *(v0 + 176);
    v26 = *(v0 + 184);
    sub_1E5E1D894(v27, *(v0 + 168), type metadata accessor for RouteDestination);
    sub_1E65E5FF8();
    swift_unknownObjectRelease();
    sub_1E6344CC8(v27, type metadata accessor for RouteDestination);
    (*(v24 + 8))(v25, v26);
    goto LABEL_8;
  }

  v16 = *(v0 + 128);
  v15 = *(v0 + 136);
  v18 = *(v0 + 112);
  v17 = *(v0 + 120);
  v19 = *(v0 + 64);
  *(*(v0 + 72) + OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_hasPresentedOnboardingThisLaunch) = 1;
  *(v0 + 224) = *v19;
  swift_getKeyPath();
  sub_1E65E4EC8();

  v20 = sub_1E65E1AC8();
  (*(v16 + 8))(v15, v17);
  v21 = *(v20 + 16);

  *v18 = 0;
  v18[1] = v21 != 0;
  swift_storeEnumTagMultiPayload();
  sub_1E65E6058();
  *(v0 + 232) = sub_1E65E6048();
  v23 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6343EEC, v23, v22);
}

uint64_t sub_1E6343EEC()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 72);

  sub_1E65E4EE8();
  sub_1E6344CC8(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6343F88, v2, 0);
}

uint64_t sub_1E6343F88()
{
  v13 = v0[27];
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  v4 = v0[8];
  ObjectType = swift_getObjectType();
  sub_1E5E1D894(v4, v1, type metadata accessor for AppComposer);
  v6 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v7 = swift_allocObject();
  v0[30] = v7;
  *(v7 + 16) = v2;
  sub_1E5E1E048(v1, v7 + v6, type metadata accessor for AppComposer);
  v8 = *(v13 + 24);

  v12 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[31] = v9;
  *v9 = v0;
  v9[1] = sub_1E6344154;
  v10 = v0[27];

  return v12(sub_1E6347964, v7, ObjectType, v10);
}

uint64_t sub_1E6344154()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1E6344280, v1, 0);
}

uint64_t sub_1E6344280()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[24];
  v5 = v0[21];
  v4 = v0[22];
  v6 = v0[20];
  sub_1E5E1D894(v4, v5, type metadata accessor for RouteResource);
  sub_1E5E1D894(v4 + *(v6 + 20), v5 + *(v6 + 20), type metadata accessor for RouteSource);
  v7 = *(v4 + *(v6 + 24));

  *(v5 + *(v6 + 24)) = sub_1E602A670(&unk_1F5FA8C18, v7);
  sub_1E65E5FF8();
  swift_unknownObjectRelease();
  sub_1E6344CC8(v4, type metadata accessor for RouteDestination);
  (*(v3 + 8))(v1, v2);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1E6344408(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppComposer(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v14 - v8;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  sub_1E5E1D894(a2, &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v11 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = a1;
  sub_1E5E1E048(&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v12 + v11, type metadata accessor for AppComposer);

  sub_1E64B80F8(0, 0, v9, &unk_1E65FD768, v12);
}

uint64_t sub_1E63445DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a4;
  type metadata accessor for OnboardingDetour.State(0);
  v4[10] = swift_task_alloc();
  v4[11] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0722F0, &unk_1E65EA1F0);
  v4[12] = v6;
  v4[13] = *(v6 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63446E4, a4, 0);
}

uint64_t sub_1E63446E4()
{
  v1 = v0[11];
  v2 = v0[9];
  v3 = OBJC_IVAR____TtC10Blackbeard16OnboardingDetour_state;
  swift_beginAccess();
  sub_1E5E1D894(v2 + v3, v1, type metadata accessor for OnboardingDetour.State);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EE0, &qword_1E65EA1E0);
  v5 = *(v4 - 8);
  if ((*(v5 + 48))(v1, 1, v4) == 1)
  {
    sub_1E6344CC8(v0[11], type metadata accessor for OnboardingDetour.State);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = v0[11];
    v9 = v0[12];
    v14 = v0[10];
    swift_unknownObjectRelease();
    v10 = *(v4 + 64);
    (*(v7 + 32))(v6, v8, v9);
    sub_1E6344CC8(v8 + v10, type metadata accessor for RouteDestination);
    (*(v5 + 56))(v14, 1, 1, v4);
    swift_beginAccess();
    sub_1E6344D28(v14, v2 + v3);
    swift_endAccess();
    sub_1E65E6018();
    sub_1E6344D8C(&qword_1ED071E30, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v11 = swift_allocError();
    sub_1E65E5AE8();
    v0[8] = v11;
    sub_1E65E5FE8();
    (*(v7 + 8))(v6, v9);
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6344978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  return MEMORY[0x1EEE6DFA0](sub_1E63449A0, v7, 0);
}

uint64_t sub_1E63449A0()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  v5 = *(v0 + 40);
  *(v4 + 16) = v1;
  *(v4 + 24) = v5;
  *(v4 + 40) = v2;
  *(v4 + 48) = v3;
  v6 = swift_task_alloc();
  *(v0 + 72) = v6;
  *(v6 + 16) = v1;
  *(v6 + 24) = v3;
  v7 = sub_1E6344D8C(&qword_1EE2DA208, type metadata accessor for OnboardingDetour, &unk_1E65FD720);
  v8 = swift_task_alloc();
  *(v0 + 80) = v8;
  v9 = type metadata accessor for RouteDestination(0);
  *v8 = v0;
  v8[1] = sub_1E5F94914;
  v10 = *(v0 + 16);

  return MEMORY[0x1EEE6DE18](v10, &unk_1E65FD750, v4, sub_1E6344BC8, v6, v1, v7, v9);
}

uint64_t sub_1E6344B00(uint64_t a1)
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

  return sub_1E633F3D8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1E6344BD0(uint64_t a1)
{
  type metadata accessor for AppComposer(0);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E63445DC(a1, v4, v5, v6);
}

uint64_t sub_1E6344CC8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6344D28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnboardingDetour.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6344D8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6344DE4()
{
  result = qword_1EE2D8FB8[0];
  if (!qword_1EE2D8FB8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2D8FB8);
  }

  return result;
}

uint64_t sub_1E6344E38(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = (v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  *(v3 + 16) = v16;
  *v16 = v3;
  v16[1] = sub_1E5DFE6BC;

  return sub_1E633FAC8(a1, v10, v11, v12, v1 + v6, v1 + v9, v14, v15);
}

uint64_t sub_1E6344FD8(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E6340628(a1, v10, v1 + v6, v1 + v9);
}

void sub_1E6345124(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v5 = sub_1E65E3B68();
  __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6338();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "[Onboarding] Presenting onboarding", v8, 2u);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  v10 = sub_1E63452E8(a1, a3);
  v9 = *(a3 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v9 >= 2)
  {
    if (v9 != 3)
    {
      sub_1E65E69D8();
      __break(1u);
      return;
    }

    [a1 pushViewController:v10 animated:0];
  }

  else
  {
    [a1 presentViewController:v10 animated:1 completion:0];
  }
}

id sub_1E63452E8(void *a1, uint64_t a2)
{
  v74 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077730, &unk_1E65EA310);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v71 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071EF8, &unk_1E65FA470);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v71 - v6;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078550, &qword_1E65FD1C8);
  MEMORY[0x1EEE9AC00](v77);
  v9 = &v71 - v8;
  v10 = type metadata accessor for AppComposer(0);
  v11 = v10 - 8;
  v75 = *(v10 - 8);
  v12 = *(v75 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A8, &unk_1E65FD7A0);
  v14 = MEMORY[0x1EEE9AC00](v79);
  v80 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v81 = &v71 - v16;
  v17 = type metadata accessor for RouteDetourNavigationControllerRoutingContext(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_allocObject();
  *(v20 + 24) = *(a2 + *(v11 + 40) + 8);
  swift_unknownObjectWeakInit();
  v21 = type metadata accessor for PresentationPublisher();
  v22 = objc_allocWithZone(v21);
  v23 = &v22[OBJC_IVAR____TtC10Blackbeard21PresentationPublisher_publishPresentationAction];
  *v23 = sub_1E6347630;
  v23[1] = v20;
  v86.receiver = v22;
  v86.super_class = v21;
  v24 = objc_msgSendSuper2(&v86, sel_init);
  v25 = *(a2 + *(v11 + 28) + 8);
  v82 = v19;
  if (v25 < 2)
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E69DCCD8]) init];
    sub_1E5E1D894(a2, &v19[*(v17 + 20)], type metadata accessor for AppComposer);
    swift_unknownObjectWeakInit();
    v74 = v26;
    swift_unknownObjectWeakAssign();
    *&v19[*(v17 + 24)] = v24;
    v84 = v17;
    v85 = &off_1F5FB76B8;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v83);
    sub_1E5E1D894(v19, boxed_opaque_existential_1, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    sub_1E5E1D894(a2, &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v28 = (*(v75 + 80) + 24) & ~*(v75 + 80);
    v29 = swift_allocObject();
    *(v29 + 16) = v76;
    sub_1E5E1E048(v13, v29 + v28, type metadata accessor for AppComposer);

    sub_1E64DB20C(&v87);
    sub_1E6331084(a2, v83, &v87, sub_1E63476DC, v29, v9);
    v30 = sub_1E65E4FD8();
    (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v31 = sub_1E65E5018();
    __swift_project_value_buffer(v31, qword_1EE2D49E8);
    v32 = sub_1E65E2E78();
    v33 = v78;
    (*(*(v32 - 8) + 56))(v78, 1, 1, v32);
    sub_1E6347658();
    v34 = v81;
    sub_1E65E4728();
    sub_1E5DFE50C(v33, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v7, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v9, &qword_1ED078550, &qword_1E65FD1C8);
    v35 = swift_allocObject();
    v36 = v90;
    v35[3] = v89;
    v35[4] = v36;
    v35[5] = v91;
    v37 = v88;
    v35[1] = v87;
    v35[2] = v37;
    v38 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A0, &qword_1E65FD1E0) + 36));
    *v38 = 0;
    v38[1] = 0;
    v38[2] = sub_1E5F9C42C;
    v38[3] = v35;
    v39 = swift_allocObject();
    v40 = v90;
    *(v39 + 3) = v89;
    *(v39 + 4) = v40;
    *(v39 + 5) = v91;
    v41 = v88;
    *(v39 + 1) = v87;
    *(v39 + 2) = v41;
    v42 = (v34 + *(v79 + 36));
    *v42 = sub_1E6347CE8;
    v42[1] = v39;
    v42[2] = 0;
    v42[3] = 0;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1E5F0E9C4(v34, v80);
    v43 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787D0, &unk_1E65FD7D0));
    v44 = sub_1E65E18F8();
    [v44 setModalInPresentation_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077A60, &qword_1E65F0870);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_1E65EA660;
    *(v45 + 32) = v44;
    sub_1E5DEF094();
    v46 = v44;
    v47 = sub_1E65E5EF8();

    v48 = v74;
    [v74 setViewControllers:v47 animated:0];

LABEL_9:
    sub_1E5DFE50C(v34, &qword_1ED0785A8, &unk_1E65FD7A0);
    sub_1E6344CC8(v82, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    return v48;
  }

  v72 = v9;
  v73 = v7;
  v49 = v75;
  v50 = v76;
  if (v25 == 3)
  {
    v51 = v82;
    sub_1E5E1D894(a2, &v82[*(v17 + 20)], type metadata accessor for AppComposer);
    swift_unknownObjectWeakInit();
    swift_unknownObjectWeakAssign();
    *(v51 + *(v17 + 24)) = v24;
    v84 = v17;
    v85 = &off_1F5FB76B8;
    v52 = __swift_allocate_boxed_opaque_existential_1(v83);
    sub_1E5E1D894(v51, v52, type metadata accessor for RouteDetourNavigationControllerRoutingContext);
    sub_1E5E1D894(a2, &v71 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
    v53 = (*(v49 + 80) + 24) & ~*(v49 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = v50;
    sub_1E5E1E048(v13, v54 + v53, type metadata accessor for AppComposer);

    sub_1E64DB20C(&v87);
    v55 = v72;
    sub_1E6331084(a2, v83, &v87, sub_1E6347638, v54, v72);
    v56 = sub_1E65E4FD8();
    v57 = v73;
    (*(*(v56 - 8) + 56))(v73, 1, 1, v56);
    if (qword_1EE2D49E0 != -1)
    {
      swift_once();
    }

    v58 = sub_1E65E5018();
    __swift_project_value_buffer(v58, qword_1EE2D49E8);
    v59 = sub_1E65E2E78();
    v60 = v78;
    (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
    sub_1E6347658();
    v34 = v81;
    sub_1E65E4728();
    sub_1E5DFE50C(v60, &unk_1ED077730, &unk_1E65EA310);
    sub_1E5DFE50C(v57, &qword_1ED071EF8, &unk_1E65FA470);
    sub_1E5DFE50C(v55, &qword_1ED078550, &qword_1E65FD1C8);
    v61 = swift_allocObject();
    v62 = v90;
    v61[3] = v89;
    v61[4] = v62;
    v61[5] = v91;
    v63 = v88;
    v61[1] = v87;
    v61[2] = v63;
    v64 = (v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0785A0, &qword_1E65FD1E0) + 36));
    *v64 = 0;
    v64[1] = 0;
    v64[2] = sub_1E5F99E38;
    v64[3] = v61;
    v65 = swift_allocObject();
    v66 = v90;
    *(v65 + 3) = v89;
    *(v65 + 4) = v66;
    *(v65 + 5) = v91;
    v67 = v88;
    *(v65 + 1) = v87;
    *(v65 + 2) = v67;
    v68 = (v34 + *(v79 + 36));
    *v68 = sub_1E6332608;
    v68[1] = v65;
    v68[2] = 0;
    v68[3] = 0;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1(v83);
    sub_1E5F0E9C4(v34, v80);
    v69 = objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787D0, &unk_1E65FD7D0));
    v48 = sub_1E65E18F8();
    goto LABEL_9;
  }

  result = sub_1E65E69D8();
  __break(1u);
  return result;
}

uint64_t sub_1E6345EF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for AppState(0) + 216);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v5 = sub_1E65E1B08();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v3 + v4, v5);
}

uint64_t sub_1E6345F8C(uint64_t a1, uint64_t a2)
{
  v3 = a2 + *(type metadata accessor for AppState(0) + 216);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CF0, &qword_1E65F10D8) + 28);
  v5 = sub_1E65E1B08();
  v6 = *(*(v5 - 8) + 24);

  return v6(v3 + v4, a1, v5);
}

void sub_1E6346028(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  if (v4 >= 2)
  {
    if (v4 == 3)
    {
      v5 = [a1 popViewControllerAnimated_];
    }

    else
    {
      sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {

    [a1 dismissViewControllerAnimated:1 completion:0];
  }
}

uint64_t sub_1E6346124(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = sub_1E65D9FF8();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v4 = sub_1E65DA2A8();
  v2[7] = v4;
  v2[8] = *(v4 - 8);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E634624C, v1, 0);
}

uint64_t sub_1E634624C()
{
  if (*(v0[2] + 8) == 3)
  {
    type metadata accessor for AppEnvironment(0);
    active = RemoteBrowsingService.requireActiveEnvironment.getter();
    v0[11] = v2;
    v7 = (active + *active);
    v3 = swift_task_alloc();
    v0[12] = v3;
    *v3 = v0;
    v3[1] = sub_1E63463BC;
    v4 = v0[6];

    return v7(v4);
  }

  else
  {

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1E63463BC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_1E63466C0;
  }

  else
  {
    v4 = sub_1E6346504;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6346504(uint64_t a1)
{
  v2 = v1[9];
  v3 = v1[7];
  v4 = v1[8];
  v6 = v1[5];
  v5 = v1[6];
  v7 = v1[4];
  sub_1E65D9F98();
  (*(v6 + 8))(v5, v7);
  sub_1E65DA288();
  sub_1E6344D8C(&qword_1ED071E28, MEMORY[0x1E69CCBE8], MEMORY[0x1E69CCC10]);
  LOBYTE(v7) = sub_1E65E6718();
  v8 = *(v4 + 8);
  v8(v2, v3);
  v9 = v1[10];
  v10 = v1[7];
  if (v7)
  {
    v8(v1[10], v1[7]);
  }

  else
  {
    sub_1E6344DE4();
    swift_allocError();
    *v12 = 3;
    swift_willThrow();
    v8(v9, v10);
  }

  v11 = v1[1];

  return v11();
}

uint64_t sub_1E63466C0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6346740(uint64_t a1)
{
  v2[11] = a1;
  v2[12] = v1;
  v3 = sub_1E65D9958();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6346800, v1, 0);
}

uint64_t sub_1E6346800()
{
  type metadata accessor for AppEnvironment(0);
  v1 = RecommendationService.queryOnboardingSurveyResult.getter();
  v0[16] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[17] = v3;
  *v3 = v0;
  v3[1] = sub_1E634690C;
  v4 = v0[15];

  return v6(v4);
}

uint64_t sub_1E634690C()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = v2[12];

    v4 = sub_1E6346BF8;
  }

  else
  {
    v3 = v2[12];
    (*(v2[14] + 8))(v2[15], v2[13]);

    v4 = sub_1E6346A68;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1E6346A68()
{
  sub_1E6344DE4();
  v1 = swift_allocError();
  *v2 = 5;
  swift_willThrow();
  swift_getErrorValue();
  v3 = sub_1E65D9288();
  v0[5] = v3;
  v0[6] = sub_1E6344D8C(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v3 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF68], v3);
  v5 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v5)
  {
  }

  else
  {
    swift_willThrow();
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6346BF8()
{
  v1 = v0[18];
  swift_getErrorValue();
  v2 = sub_1E65D9288();
  v0[5] = v2;
  v0[6] = sub_1E6344D8C(&qword_1EE2D70A0, MEMORY[0x1E69CBF78], MEMORY[0x1E69CBF70]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 2);
  (*(*(v2 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CBF68], v2);
  v4 = sub_1E65E6CA8();
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (v4)
  {
  }

  else
  {
    swift_willThrow();
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E6346D5C(uint64_t a1, uint64_t a2)
{
  v4 = 0x746C7561666564;
  v5 = type metadata accessor for RouteSource(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v27 - v9;
  sub_1E5E1D894(a1, v27 - v9, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v12 = 0x55676E6972616873;
        sub_1E6344CC8(v10, type metadata accessor for RouteSource);
        v13 = 0xEA00000000004C52;
      }

      else if (EnumCaseMultiPayload == 3)
      {
        v12 = 0x4C52556E65706FLL;
        sub_1E6344CC8(v10, type metadata accessor for RouteSource);
        v13 = 0xE700000000000000;
      }

      else
      {
        v12 = 0x616C506572616873;
        v15 = sub_1E65D8D48();
        (*(*(v15 - 8) + 8))(v10, v15);
        v13 = 0xE900000000000079;
      }

      goto LABEL_25;
    }

    if (!EnumCaseMultiPayload)
    {
      v12 = 0x636E75614C707061;
      sub_1E6344CC8(v10, type metadata accessor for RouteSource);
      goto LABEL_12;
    }

    v12 = 0x6974634172657375;
    sub_1E6344CC8(v10, type metadata accessor for RouteSource);
    v14 = 2037672310;
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload > 6)
  {
    if (EnumCaseMultiPayload != 7)
    {
      if (EnumCaseMultiPayload != 8)
      {
        v12 = 0x746977536B736174;
        v13 = 0xEA00000000006863;
        goto LABEL_25;
      }

      v12 = 0x6374697753626174;
LABEL_12:
      v13 = 0xE900000000000068;
      goto LABEL_25;
    }

    v12 = 0x7069726373627573;
    v14 = 1852795252;
LABEL_24:
    v13 = v14 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v12 = 0x746C7561666564;
  }

  else
  {
    v12 = 1769105779;
  }

  if (EnumCaseMultiPayload == 5)
  {
    v13 = 0xE700000000000000;
  }

  else
  {
    v13 = 0xE400000000000000;
  }

LABEL_25:
  v16 = type metadata accessor for RouteDestination(0);
  sub_1E5E1D894(a2 + *(v16 + 20), v8, type metadata accessor for RouteSource);
  v17 = swift_getEnumCaseMultiPayload();
  if (v17 <= 4)
  {
    if (v17 > 1)
    {
      if (v17 != 2)
      {
        if (v17 != 3)
        {
          v24 = sub_1E65D8D48();
          (*(*(v24 - 8) + 8))(v8, v24);
          v19 = 0xE900000000000079;
          if (v12 != 0x616C506572616873)
          {
            goto LABEL_54;
          }

          goto LABEL_52;
        }

        v4 = 0x4C52556E65706FLL;
        sub_1E6344CC8(v8, type metadata accessor for RouteSource);
        goto LABEL_39;
      }

      v20 = 0x55676E6972616873;
      sub_1E6344CC8(v8, type metadata accessor for RouteSource);
      v21 = 19538;
LABEL_46:
      v19 = v21 & 0xFFFFFFFFFFFFLL | 0xEA00000000000000;
      if (v12 != v20)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    if (!v17)
    {
      v18 = 0x636E75614C707061;
      sub_1E6344CC8(v8, type metadata accessor for RouteSource);
LABEL_36:
      v19 = 0xE900000000000068;
      if (v12 != v18)
      {
        goto LABEL_54;
      }

      goto LABEL_52;
    }

    v22 = 0x6974634172657375;
    sub_1E6344CC8(v8, type metadata accessor for RouteSource);
    v23 = 2037672310;
    goto LABEL_49;
  }

  if (v17 > 6)
  {
    if (v17 != 7)
    {
      if (v17 != 8)
      {
        v20 = 0x746977536B736174;
        v21 = 26723;
        goto LABEL_46;
      }

      v18 = 0x6374697753626174;
      goto LABEL_36;
    }

    v22 = 0x7069726373627573;
    v23 = 1852795252;
LABEL_49:
    v19 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
    if (v12 != v22)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  if (v17 == 5)
  {
LABEL_39:
    v19 = 0xE700000000000000;
    if (v12 != v4)
    {
      goto LABEL_54;
    }

    goto LABEL_52;
  }

  v19 = 0xE400000000000000;
  if (v12 != 1769105779)
  {
LABEL_54:
    v25 = sub_1E65E6C18();
    goto LABEL_55;
  }

LABEL_52:
  if (v13 != v19)
  {
    goto LABEL_54;
  }

  v25 = 1;
LABEL_55:

  return v25 & 1;
}

uint64_t sub_1E63472AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F96500;

  return sub_1E63438EC(1, a5);
}

uint64_t sub_1E634736C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  v13 = sub_1E65E60A8();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  sub_1E5E1D894(a2, &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  sub_1E65E6058();

  v14 = sub_1E65E6048();
  v15 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v16 = swift_allocObject();
  v17 = MEMORY[0x1E69E85E0];
  v16[2] = v14;
  v16[3] = v17;
  v16[4] = a1;
  sub_1E5E1E048(&v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for AppComposer);
  sub_1E64B80F8(0, 0, v12, a4, v16);
}

uint64_t sub_1E6347558(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = sub_1E65E6058();
  v5[3] = sub_1E65E6048();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_1E5F960B8;

  return sub_1E63438EC(1, a5);
}

unint64_t sub_1E6347658()
{
  result = qword_1ED078558;
  if (!qword_1ED078558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED078550, &qword_1E65FD1C8);
    sub_1E6331A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078558);
  }

  return result;
}

uint64_t sub_1E6347774(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E6347558(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E634786C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E63472AC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1E634797C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1E6347A04(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E6340C9C(a1, v6, v1 + v5);
}

uint64_t sub_1E6347AE8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F90, &qword_1E65FD870);
  type metadata accessor for RouteSource(0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1E65EA190;
  type metadata accessor for AppLaunchScope(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  v3 = sub_1E5F96654(v2);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v6[2] = a1;
  LOBYTE(a1) = sub_1E5F95D7C(sub_1E6347CC8, v6, v3);

  if ((a1 & 1) == 0)
  {
    sub_1E6344DE4();
    swift_allocError();
    *v5 = 7;
    return swift_willThrow();
  }

  return result;
}

uint64_t PlaylistType.hash(into:)(uint64_t a1)
{
  v2 = sub_1E65DAEB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaylistType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E634859C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6348648(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    sub_1E65E5B48();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }
}

uint64_t PlaylistType.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1E65DAEB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PlaylistType(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E634859C(v1, v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v8, v2);
    MEMORY[0x1E694E740](1);
    sub_1E6348648(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    sub_1E65E5B48();
    (*(v3 + 8))(v5, v2);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t sub_1E63480B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E65DAEB8();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E6D28();
  sub_1E634859C(v3, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v5 + 32))(v8, v10, v4);
    MEMORY[0x1E694E740](1);
    sub_1E6348648(&qword_1ED076258, MEMORY[0x1E69CD370], MEMORY[0x1E69CD380]);
    sub_1E65E5B48();
    (*(v5 + 8))(v8, v4);
  }

  else
  {
    MEMORY[0x1E694E740](0);
    sub_1E65E5D78();
  }

  return sub_1E65E6D78();
}

uint64_t _s10Blackbeard12PlaylistTypeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E65DAEB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PlaylistType(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = (&v26 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787F8, &unk_1E65FD960);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v26 - v16;
  v18 = (&v26 + *(v15 + 56) - v16);
  sub_1E634859C(a1, &v26 - v16);
  sub_1E634859C(a2, v18);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    sub_1E634859C(v17, v13);
    v22 = *v13;
    v21 = v13[1];
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      if (v22 == *v18 && v21 == v18[1])
      {
      }

      else
      {
        v24 = sub_1E65E6C18();

        if ((v24 & 1) == 0)
        {
          sub_1E63486F8(v17);
          goto LABEL_8;
        }
      }

      sub_1E63486F8(v17);
      v19 = 1;
      return v19 & 1;
    }

LABEL_7:
    sub_1E6348690(v17);
LABEL_8:
    v19 = 0;
    return v19 & 1;
  }

  sub_1E634859C(v17, v11);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v5 + 8))(v11, v4);
    goto LABEL_7;
  }

  (*(v5 + 32))(v7, v18, v4);
  v19 = MEMORY[0x1E6942870](v11, v7);
  v20 = *(v5 + 8);
  v20(v7, v4);
  v20(v11, v4);
  sub_1E63486F8(v17);
  return v19 & 1;
}

uint64_t sub_1E634859C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaylistType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E6348648(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6348690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0787F8, &unk_1E65FD960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E63486F8(uint64_t a1)
{
  v2 = type metadata accessor for PlaylistType(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1E6348778(uint64_t *a1, int a2)
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

uint64_t sub_1E63487C0(uint64_t result, int a2, int a3)
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

uint64_t sub_1E6348824(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 24) = a6;
  *(v7 + 32) = a7;
  *(v7 + 16) = a5;
  *(v7 + 72) = a4;
  *(v7 + 40) = type metadata accessor for PageMetricsClick(0);
  *(v7 + 48) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63488C0, 0, 0);
}

uint64_t sub_1E63488C0()
{
  if (*(v0 + 72) == 1)
  {
    v2 = *(v0 + 40);
    v1 = *(v0 + 48);
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = *(v0 + 16);
    v6 = sub_1E65D9D78();
    (*(*(v6 - 8) + 56))(v1, 1, 1, v6);
    v7 = v2[5];
    v8 = *MEMORY[0x1E69CBA40];
    v9 = sub_1E65D8C68();
    (*(*(v9 - 8) + 104))(v1 + v7, v8, v9);
    v10 = v2[6];
    v11 = sub_1E65D74E8();
    (*(*(v11 - 8) + 56))(v1 + v10, 1, 1, v11);
    v12 = v2[8];
    v13 = sub_1E65DA208();
    (*(*(v13 - 8) + 56))(v1 + v12, 1, 1, v13);
    v14 = v2[14];
    v15 = *MEMORY[0x1E69CBCC8];
    v16 = sub_1E65D8F28();
    (*(*(v16 - 8) + 104))(v1 + v14, v15, v16);
    v17 = v2[15];
    v18 = *MEMORY[0x1E69CC498];
    v19 = sub_1E65D9908();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v1 + v17, v18, v19);
    (*(v20 + 56))(v1 + v17, 0, 1, v19);
    v21 = MEMORY[0x1E69E7CC0];
    v22 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
    *(v1 + v2[7]) = v21;
    v23 = (v1 + v2[9]);
    *v23 = 0;
    v23[1] = 0;
    v24 = (v1 + v2[10]);
    *v24 = 0;
    v24[1] = 0;
    *(v1 + v2[11]) = v22;
    v25 = (v1 + v2[12]);
    *v25 = 0;
    v25[1] = 0;
    v26 = (v1 + v2[13]);
    *v26 = v5;
    v26[1] = v4;
    v27 = *(v3 + 48);

    v32 = (v27 + *v27);
    v28 = swift_task_alloc();
    *(v0 + 56) = v28;
    *v28 = v0;
    v28[1] = sub_1E6348C70;
    v29 = *(v0 + 48);

    return v32(v29);
  }

  else
  {

    v31 = *(v0 + 8);

    return v31();
  }
}

uint64_t sub_1E6348C70()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1E6348DF0;
  }

  else
  {
    v2 = sub_1E6348D84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6348D84()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6348DF0()
{
  sub_1E5FC0990(*(v0 + 48));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6348E60(uint64_t a1)
{
  v1[8] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075858, &qword_1E65F1E30);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = sub_1E65E1518();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6348F88, 0, 0);
}

uint64_t sub_1E6348F88()
{
  v1 = v0[8];
  sub_1E65E14F8();
  v0[15] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[16] = sub_1E65E6058();
  v0[17] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E634905C, v3, v2);
}

uint64_t sub_1E634905C()
{

  sub_1E5E20198(13, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075860, &qword_1E65F1E38);
  if (swift_dynamicCast())
  {
    *(v0 + 144) = *(v0 + 56);
    v1 = sub_1E63491B8;
  }

  else
  {
    v1 = sub_1E6349134;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6349134()
{
  (*(v0[13] + 8))(v0[14], v0[12]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E63491B8(uint64_t a1)
{
  *(v1 + 152) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349244, v3, v2);
}

uint64_t sub_1E6349244()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E63492D0, 0, 0);
}

uint64_t sub_1E63492D0(uint64_t a1)
{
  *(v1 + 160) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E634935C, v3, v2);
}

uint64_t sub_1E634935C()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E634B138, 0, 0);
}

uint64_t sub_1E63493F4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, double a7)
{
  *(v7 + 80) = a5;
  *(v7 + 88) = a6;
  *(v7 + 72) = a7;
  *(v7 + 26) = a4;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  *(v7 + 96) = type metadata accessor for RouteDestination(0);
  *(v7 + 104) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6349498, 0, 0);
}

uint64_t sub_1E6349498()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 26);
  v4 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v4);
  v5 = 8 * v2;
  v7 = *(v0 + 96);
  v6 = *(v0 + 104);
  v8 = *(v0 + 80);
  v9 = *(v0 + 72);
  v11 = *(v0 + 56);
  v10 = *(v0 + 64);
  v12 = *(v0 + 48);
  *v6 = 0;
  *(v6 + 8) = 0;
  *(v6 + 16) = v12;
  *(v6 + 24) = v11;
  *(v6 + 32) = v10;
  *(v6 + 40) = 0x2010003u >> v5;
  *(v6 + 48) = v9;
  *(v6 + 56) = v8;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E611D1C0(v0 + 16);
  v13 = *(v0 + 24);
  *(v0 + 32) = *(v0 + 16);
  *(v0 + 40) = v13;
  sub_1E600F5B0((v0 + 25));

  v14 = v8;
  v15 = swift_task_alloc();
  *(v0 + 112) = v15;
  *v15 = v0;
  v15[1] = sub_1E6349638;
  v16 = *(v0 + 104);

  return RoutingContext.presentDestination(_:style:priority:)(v16, (v0 + 32), (v0 + 25), v4, v3);
}

uint64_t sub_1E6349638()
{
  v2 = *(*v1 + 104);
  v3 = *v1;
  *(v3 + 120) = v0;

  sub_1E5F94E00(*(v3 + 32), *(v3 + 40));
  sub_1E60111F8(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E63497AC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63497AC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6349810(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078810, &qword_1E65FD9F8);
  v3[13] = v4;
  v3[14] = *(v4 - 8);
  v3[15] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63498E0, 0, 0);
}

uint64_t sub_1E63498E0()
{
  v1 = v0[12];
  v0[16] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  v0[17] = sub_1E65E6058();
  v0[18] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349990, v3, v2);
}

uint64_t sub_1E6349990()
{

  sub_1E5E20198(27, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073D18, &qword_1E65EECF8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078038, &qword_1E65FB420);
  if (swift_dynamicCast())
  {
    *(v0 + 152) = *(v0 + 72);
    v1 = sub_1E6349AC8;
  }

  else
  {
    v1 = sub_1E6349A68;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1E6349A68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6349AC8(uint64_t a1)
{
  v2 = v1[11];
  v1[7] = v1[10];
  v1[8] = v2;
  v1[20] = sub_1E65E6048();
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349B5C, v4, v3);
}

uint64_t sub_1E6349B5C()
{

  sub_1E65E4E98();

  return MEMORY[0x1EEE6DFA0](sub_1E6349BDC, 0, 0);
}

uint64_t sub_1E6349BDC(uint64_t a1)
{
  *(v1 + 168) = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6349C68, v3, v2);
}

uint64_t sub_1E6349C68()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];

  sub_1E65E4E28();
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6349D00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v88 = a6;
  v84 = a5;
  v95 = a4;
  v102 = a3;
  v77 = a1;
  v93 = a7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v91 = *(v8 - 8);
  v92 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v72 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v90 = &v70 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v71 = &v70 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v89 = &v70 - v15;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753A8, &qword_1E65F1A30);
  MEMORY[0x1EEE9AC00](v85);
  v83 = &v70 - v16;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075850, &qword_1E65F1E18);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v80 = &v70 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078800, &qword_1E65FD9E8);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v101 = &v70 - v19;
  v79 = sub_1E65D76F8();
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v100 = &v70 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v76 = &v70 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v74 = &v70 - v24;
  v75 = sub_1E65D7848();
  v73 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v99 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1E65E1518();
  v86 = *(v26 - 8);
  v87 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0753C0, &unk_1E6606290);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v70 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076DE0, &qword_1E65F84B0);
  v33 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v35 = &v70 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  v37 = MEMORY[0x1EEE9AC00](v36 - 8);
  v96 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37);
  v40 = &v70 - v39;
  v41 = type metadata accessor for AppState(0);
  v94 = a2;
  v103 = a2;
  v104 = v102;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0777C0, &unk_1E65F84E0);
  v42 = v77;
  sub_1E65E4D78();
  sub_1E65E4C98();
  v43 = v32;
  v44 = v73;
  (*(v33 + 8))(v35, v43);
  v45 = v74;
  sub_1E65DE788();
  sub_1E634B00C();
  v97 = v40;
  v46 = v75;
  sub_1E65E4DA8();
  sub_1E5DFE50C(v31, &qword_1ED0753C0, &unk_1E6606290);
  v98 = v28;
  sub_1E65E14F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  v47 = v76;
  sub_1E65E4C98();
  sub_1E5E1F544(v45);
  sub_1E5DFE50C(v47, &qword_1ED071F78, &unk_1E65EA3F0);
  v48 = *(v44 + 48);
  if (v48(v45, 1, v46) == 1)
  {
    sub_1E65D77C8();
    if (v48(v45, 1, v46) != 1)
    {
      sub_1E5DFE50C(v45, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v44 + 32))(v99, v45, v46);
  }

  (*(v78 + 16))(v100, v84, v79);
  sub_1E634B064(v97, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074BF8, &qword_1E65F10B8);
  v49 = v80;
  sub_1E65E4D78();
  v50 = v83;
  v51 = v82;
  sub_1E65E4C98();
  (*(v81 + 8))(v49, v51);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075830, &qword_1E65F1DE8);
  sub_1E634B0D4();
  sub_1E65E4DA8();
  sub_1E5DFE50C(v50, &qword_1ED0753A8, &qword_1E65F1A30);
  v52 = v42 + *(v41 + 192);
  v53 = *(v52 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  sub_1E65DE488();
  v54 = MEMORY[0x1E699CB70];
  v55 = v91;
  v56 = v89;
  if (*(v53 + 16))
  {
    v57 = sub_1E6215038(v103, v104);
    v59 = v58;

    if (v59)
    {
      v60 = *(v53 + 56) + *(v55 + 72) * v57;
      v61 = v71;
      v62 = v92;
      (*(v55 + 16))(v71, v60, v92);
      (*(v55 + 32))(v56, v61, v62);
      goto LABEL_10;
    }
  }

  else
  {
  }

  v62 = v92;
  (*(v55 + 104))(v56, *v54, v92);
LABEL_10:
  v63 = *(v52 + 104);
  sub_1E65DE488();
  if (!*(v63 + 16))
  {

    goto LABEL_14;
  }

  v64 = sub_1E6215038(v103, v104);
  v66 = v65;

  if ((v66 & 1) == 0)
  {
LABEL_14:
    (*(v55 + 104))(v90, *v54, v62);
    goto LABEL_15;
  }

  v67 = *(v63 + 56) + *(v55 + 72) * v64;
  v68 = v72;
  (*(v55 + 16))(v72, v67, v62);
  (*(v55 + 32))(v90, v68, v62);
LABEL_15:

  sub_1E65DEAE8();
  (*(v86 + 8))(v98, v87);
  return sub_1E5DFE50C(v97, &qword_1ED0737C8, &unk_1E6605140);
}

uint64_t sub_1E634A874(uint64_t a1, uint64_t a2)
{
  v12[1] = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v12 - v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073858, &unk_1E65F84A0);
  sub_1E65DE488();
  v5 = v13;
  v6 = v14;
  sub_1E65DEB18();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  v8 = *(*(v7 - 8) + 56);
  v8(v4, 0, 1, v7);
  type metadata accessor for AppState(0);
  sub_1E6408074(v4, v5, v6);
  sub_1E65DE488();
  v9 = v13;
  v10 = v14;
  sub_1E65DEB08();
  v8(v4, 0, 1, v7);
  return sub_1E6408074(v4, v9, v10);
}

uint64_t sub_1E634AA0C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v41 = a5;
  v42 = a3;
  v39 = a2;
  v7 = type metadata accessor for AppComposer(0);
  v44 = *(v7 - 8);
  v43 = *(v44 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1E65DEC18();
  v33 = v9;
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9);
  v37 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65DEB28();
  v32 = v12;
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v32 - v17;
  v40 = &v32 - v17;
  v36 = *a1;
  v35 = *(a1 + 8);
  v19 = sub_1E65E60A8();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  (*(v13 + 16))(v15, v39, v12);
  v20 = v37;
  (*(v10 + 16))(v37, v41, v9);
  sub_1E5E1DEAC(v42, v45);
  v34 = *a4;
  v21 = a4[5];
  v38 = a4[3];
  v39 = v21;
  v22 = a4[9];
  v41 = a4[7];
  v42 = v22;
  v23 = (*(v13 + 80) + 41) & ~*(v13 + 80);
  v24 = (v14 + *(v10 + 80) + v23) & ~*(v10 + 80);
  v25 = (v11 + *(v44 + 80) + v24) & ~*(v44 + 80);
  v26 = (v43 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  *(v27 + 24) = 0;
  *(v27 + 32) = v36;
  *(v27 + 40) = v35;
  (*(v13 + 32))(v27 + v23, v15, v32);
  (*(v10 + 32))(v27 + v24, v20, v33);
  sub_1E5E1FA80(v45, v27 + v25);
  v28 = (v27 + v26);
  v29 = *(a4 + 3);
  v28[2] = *(a4 + 2);
  v28[3] = v29;
  v28[4] = *(a4 + 4);
  v30 = *(a4 + 1);
  *v28 = *a4;
  v28[1] = v30;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v40, &unk_1E65FD9E0, v27);
}

uint64_t sub_1E634AE0C(uint64_t a1)
{
  v3 = *(sub_1E65DEB28() - 8);
  v4 = (*(v3 + 80) + 41) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1E65DEC18() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(type metadata accessor for AppComposer(0) - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = *(v1 + 40);
  v15 = swift_task_alloc();
  *(v2 + 16) = v15;
  *v15 = v2;
  v15[1] = sub_1E5DFA78C;

  return sub_1E618AABC(a1, v11, v12, v13, v14, v1 + v4, v1 + v7, v1 + v10);
}

unint64_t sub_1E634B00C()
{
  result = qword_1EE2D6880;
  if (!qword_1EE2D6880)
  {
    sub_1E65DE788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6880);
  }

  return result;
}

uint64_t sub_1E634B064(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0737C8, &unk_1E6605140);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E634B0D4()
{
  result = qword_1ED078808;
  if (!qword_1ED078808)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED075830, &qword_1E65F1DE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED078808);
  }

  return result;
}

uint64_t sub_1E634B13C@<X0>(uint64_t a1@<X8>)
{
  v41 = sub_1E65D9CC8();
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v40 = v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_1E65E0DB8();
  v5 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D9108();
  v8 = sub_1E65D90D8();
  v9 = sub_1E65D9118();
  v10 = sub_1E65D90E8();
  v11 = sub_1E65D9128();
  v12 = sub_1E65D90A8();
  v13 = *(v12 + 16);
  if (v13)
  {
    v33[1] = v11;
    v33[2] = v10;
    v33[3] = v9;
    v33[4] = v8;
    v33[5] = v7;
    v33[6] = v1;
    v33[7] = a1;
    v47 = MEMORY[0x1E69E7CC0];
    v14 = v12;
    v43 = v13;
    sub_1E601CF04(0, v13, 0);
    v16 = *(v3 + 16);
    v15 = v3 + 16;
    v36 = v16;
    v17 = v47;
    v18 = (*(v15 + 64) + 32) & ~*(v15 + 64);
    v33[0] = v14;
    v19 = v14 + v18;
    v20 = *(v15 + 56);
    v34 = (v15 - 8);
    v35 = v20;
    v33[8] = v5 + 32;
    v21 = v42;
    v37 = v5;
    v38 = v15;
    do
    {
      v22 = v40;
      v23 = v41;
      v36(v40, v19, v41);
      sub_1E65D9C98();
      v42 = v24;
      v25 = sub_1E65D9CA8();
      v27 = v26;
      v44 = v25;
      v45 = v26;
      v29 = v28 & 1;
      v46 = v28 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0752A8, &unk_1E660CC10);
      sub_1E65D7F98();
      sub_1E5FEE4CC(v25, v27, v29);
      sub_1E65E0D98();
      (*v34)(v22, v23);
      v47 = v17;
      v31 = *(v17 + 16);
      v30 = *(v17 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_1E601CF04((v30 > 1), v31 + 1, 1);
        v17 = v47;
      }

      *(v17 + 16) = v31 + 1;
      (*(v37 + 32))(v17 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31, v21, v39);
      v19 += v35;
      --v43;
    }

    while (v43);
  }

  sub_1E65D9138();
  sub_1E65D90B8();
  sub_1E65D90C8();
  return sub_1E65E0CA8();
}

uint64_t CatalogFilterPropertyType.filterKind()(char a1)
{
  return byte_1E65FDA10[a1];
}

{
  return byte_1E65FDA1E[a1];
}

void sub_1E634B514(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6989900]) init];
  v5 = sub_1E65D79A8();
  v7 = v6;
  v8 = objc_allocWithZone(MEMORY[0x1E6989928]);
  v9 = sub_1E65D7508();
  sub_1E600A068(v5, v7);
  v10 = [v8 initWithData_];

  if (v10)
  {
    v11 = [objc_allocWithZone(MEMORY[0x1E69898F8]) initWithCodable_];
    sub_1E5FFF690(a1, v4, a2);
    v12 = [v4 titleForAchievement_];
    if (v12)
    {
      v13 = v12;
      sub_1E65E5C78();
    }

    sub_1E5FFF598();
    sub_1E65DBAA8();
  }

  else
  {
    v14 = sub_1E65DB938();
    sub_1E634B6F8();
    swift_allocError();
    (*(*(v14 - 8) + 104))(v15, *MEMORY[0x1E699D148], v14);
    swift_willThrow();
  }
}

unint64_t sub_1E634B6F8()
{
  result = qword_1ED076CD8;
  if (!qword_1ED076CD8)
  {
    sub_1E65DB938();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED076CD8);
  }

  return result;
}

uint64_t sub_1E634B750(uint64_t a1)
{
  v2 = sub_1E65E3B68();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1E65D79A8();
  v8 = v7;
  v9 = objc_allocWithZone(MEMORY[0x1E6989928]);
  v10 = sub_1E65D7508();
  sub_1E600A068(v6, v8);
  v11 = [v9 initWithData_];

  if (!v11)
  {
    v22 = sub_1E65DB938();
    sub_1E634B6F8();
    swift_allocError();
    (*(*(v22 - 8) + 104))(v23, *MEMORY[0x1E699D148], v22);
    return swift_willThrow();
  }

  v12 = [objc_allocWithZone(MEMORY[0x1E69898F8]) initWithCodable_];
  v13 = [v12 template];
  v14 = [v13 uniqueName];

  if (!v14)
  {
    sub_1E65DB998();
    goto LABEL_12;
  }

  v43 = v3;
  v15 = sub_1E65E5C78();
  v17 = v16;

  v18 = sub_1E65DB998();
  if (!v17)
  {
LABEL_12:

    goto LABEL_13;
  }

  if (v15 == v18 && v17 == v19)
  {

    goto LABEL_16;
  }

  v21 = sub_1E65E6C18();

  if ((v21 & 1) == 0)
  {
LABEL_13:
    v25 = [v12 unearned];
    goto LABEL_14;
  }

LABEL_16:
  v26 = *(a1 + 32);
  if (v26 == 255 || (v26 & 1) == 0)
  {
    sub_1E65DB958();
    sub_1E634BB84(a1, v44);
    v27 = sub_1E65E3B48();
    v28 = sub_1E65E6338();
    sub_1E634BBF4(a1);
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v46 = v42;
      *v29 = 136315394;
      v30 = sub_1E65DB998();
      v41 = v27;
      v32 = sub_1E5DFD4B0(v30, v31, &v46);
      HIDWORD(v40) = v28;
      v33 = v32;

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      v34 = *(a1 + 16);
      v44[0] = *a1;
      v44[1] = v34;
      v45 = *(a1 + 32);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078818, &qword_1E65FDA30);
      v35 = sub_1E65E6648();
      v37 = sub_1E5DFD4B0(v35, v36, &v46);

      *(v29 + 14) = v37;
      v38 = v41;
      _os_log_impl(&dword_1E5DE9000, v41, BYTE4(v40), "Award progress provided for %s was %s, returning .unearned state", v29, 0x16u);
      v39 = v42;
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v39, -1, -1);
      MEMORY[0x1E694F1C0](v29, -1, -1);
    }

    else
    {
    }

    (*(v43 + 8))(v5, v2);
    v25 = 1;
    return v25 & 1;
  }

  v25 = *(a1 + 8);
LABEL_14:

  return v25 & 1;
}

uint64_t sub_1E634BB84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078818, &qword_1E65FDA30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E634BBF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078818, &qword_1E65FDA30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E634BC5C@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v20[1] = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v20 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = v20 - v12;
  v14 = sub_1E65DA4D8();
  sub_1E63C4134(a1, a2, v14, v13);

  v15 = sub_1E65D72D8();
  v16 = *(*(v15 - 8) + 56);
  v16(v13, 0, 1, v15);
  v17 = sub_1E65DA508();
  sub_1E63C4134(a1, a2, v17, v11);

  v16(v11, 0, 1, v15);
  v18 = sub_1E65DA4E8();
  sub_1E63C4134(a1, a2, v18, v8);

  v16(v8, 0, 1, v15);
  return sub_1E65E1608();
}

uint64_t AppSceneCoordinator.selectRootItem(_:)(uint64_t *a1)
{
  v2 = type metadata accessor for AppAction(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *a1;
  v5 = a1[1];
  *v4 = v6;
  v4[1] = v5;
  swift_storeEnumTagMultiPayload();

  sub_1E5E05374(v6, v5);
  sub_1E65E4EE8();

  return sub_1E634C070(v4, type metadata accessor for AppAction);
}

id AppSceneCoordinator.navigationController(for:)(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (v11 - v4);
  v7 = *a1;
  v6 = a1[1];
  __swift_project_boxed_opaque_existential_1((*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(*(v1 + 56) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  v11[0] = v7;
  v11[1] = v6;
  sub_1E6335B2C(v11, v5);
  v8 = type metadata accessor for NavigationControllerRoutingContext(0);
  if ((*(*(v8 - 8) + 48))(v5, 1, v8) == 1)
  {
    sub_1E6135780(v5);
    return 0;
  }

  else
  {
    v10 = *v5;
    sub_1E634C070(v5, type metadata accessor for NavigationControllerRoutingContext);
    return v10;
  }
}

uint64_t sub_1E634C070(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E634C0F4(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E61A6724, *v2, 0);
}

uint64_t sub_1E634C114@<X0>(uint64_t a1@<X8>)
{
  v11 = a1;
  v1 = sub_1E65E07B8();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1E65E18E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0708();
  sub_1E65E0668();
  sub_1E65E0758();
  sub_1E65E0798();
  sub_1E65E0788();
  sub_1E65E07A8();
  sub_1E65E18D8();
  (*(v2 + 8))(v4, v1);
  sub_1E65E18C8();
  (*(v6 + 8))(v9, v5);
  return sub_1E65E19A8();
}

uint64_t sub_1E634C394@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v107 = a3;
  v108 = a1;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DC0, &qword_1E65EEE10);
  v96 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v95 = &v85 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078820, &qword_1E65FDAE8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v85 - v7;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078828, &qword_1E65FDAF0);
  MEMORY[0x1EEE9AC00](v99);
  v101 = &v85 - v9;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB0, &qword_1E65EEE00);
  MEMORY[0x1EEE9AC00](v102);
  v11 = &v85 - v10;
  v12 = type metadata accessor for AppComposer(0);
  v13 = v12 - 8;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v98 = &v85 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v97 = &v85 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v85 - v20;
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v85 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073DB8, &qword_1E65EEE08);
  v25 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v85 - v27;
  v29 = *(v3 + *(v13 + 28) + 8);
  v104 = v6;
  v105 = v8;
  v103 = v11;
  v100 = v25;
  if (v29 >= 2)
  {
    v58 = v14;
    v93 = v21;
    v59 = v108;
    if (v29 == 3)
    {
      v94 = type metadata accessor for AppComposer;
      v60 = v3;
      sub_1E5E1D8FC(v3, v23, type metadata accessor for AppComposer);
      sub_1E5DF650C(v59, &v111);
      v86 = *a2;
      v88 = *(a2 + 24);
      v89 = *(a2 + 40);
      v90 = *(a2 + 56);
      v91 = *(a2 + 72);
      v61 = (*(v58 + 80) + 16) & ~*(v58 + 80);
      v62 = (v61 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
      v63 = (v62 + 47) & 0xFFFFFFFFFFFFFFF8;
      v64 = swift_allocObject();
      v92 = v64;
      sub_1E5E1E730(v23, v64 + v61, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v111, v64 + v62);
      v65 = (v64 + v63);
      v66 = *(a2 + 48);
      v65[2] = *(a2 + 32);
      v65[3] = v66;
      v65[4] = *(a2 + 64);
      v67 = *(a2 + 16);
      *v65 = *a2;
      v65[1] = v67;
      v68 = v93;
      v69 = v94;
      sub_1E5E1D8FC(v60, v93, v94);
      v87 = swift_allocObject();
      sub_1E5E1E730(v68, v87 + v61, type metadata accessor for AppComposer);
      v70 = v97;
      sub_1E5E1D8FC(v60, v97, v69);
      v71 = v108;
      sub_1E5DF650C(v108, &v110);
      v72 = swift_allocObject();
      sub_1E5E1E730(v70, v72 + v61, type metadata accessor for AppComposer);
      sub_1E5DF599C(&v110, v72 + v62);
      v73 = (v72 + v63);
      v74 = *(a2 + 48);
      v73[2] = *(a2 + 32);
      v73[3] = v74;
      v73[4] = *(a2 + 64);
      v75 = *(a2 + 16);
      *v73 = *a2;
      v73[1] = v75;
      v76 = v98;
      sub_1E5E1D8FC(v60, v98, v94);
      sub_1E5DF650C(v71, v109);
      v77 = swift_allocObject();
      sub_1E5E1E730(v76, v77 + v61, type metadata accessor for AppComposer);
      sub_1E5DF599C(v109, v77 + v62);
      v78 = (v77 + v63);
      v79 = *(a2 + 48);
      v78[2] = *(a2 + 32);
      v78[3] = v79;
      v78[4] = *(a2 + 64);
      v80 = *(a2 + 16);
      *v78 = *a2;
      v78[1] = v80;
      swift_unknownObjectRetain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      swift_retain_n();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
      sub_1E5FEB2FC();
      sub_1E60731B0();
      v81 = v95;
      sub_1E65E2528();
      v82 = v96;
      v83 = v106;
      (*(v96 + 16))(v101, v81, v106);
      swift_storeEnumTagMultiPayload();
      sub_1E5FED46C(&unk_1EE2D6270, &qword_1ED073DB8, &qword_1E65EEE08, MEMORY[0x1E699F230]);
      sub_1E5FED46C(&unk_1EE2D6230, &qword_1ED073DC0, &qword_1E65EEE10, MEMORY[0x1E699F328]);
      v84 = v103;
      sub_1E65E4138();
      sub_1E5F0F880(v84, v105);
      swift_storeEnumTagMultiPayload();
      sub_1E6071B80();
      sub_1E65E4138();
      sub_1E5F0F8F0(v84);
      return (*(v82 + 8))(v81, v83);
    }

    else
    {
      result = sub_1E65E69D8();
      __break(1u);
    }
  }

  else
  {
    v86 = type metadata accessor for AppComposer;
    v95 = v28;
    v96 = v26;
    sub_1E5E1D8FC(v3, v23, type metadata accessor for AppComposer);
    sub_1E5DF650C(v108, &v111);
    v89 = *a2;
    v90 = *(a2 + 24);
    v91 = *(a2 + 40);
    v92 = *(a2 + 56);
    v93 = *(a2 + 72);
    v85 = v3;
    v30 = (*(v14 + 80) + 16) & ~*(v14 + 80);
    v87 = (v30 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
    v31 = (v87 + 47) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    v94 = v32;
    sub_1E5E1E730(v23, v32 + v30, type metadata accessor for AppComposer);
    sub_1E5DF599C(&v111, v32 + ((v30 + v15 + 7) & 0xFFFFFFFFFFFFFFF8));
    v33 = (v32 + v31);
    v34 = *(a2 + 48);
    v33[2] = *(a2 + 32);
    v33[3] = v34;
    v33[4] = *(a2 + 64);
    v35 = *(a2 + 16);
    *v33 = *a2;
    v33[1] = v35;
    v36 = v85;
    v37 = v86;
    sub_1E5E1D8FC(v85, v21, v86);
    v88 = swift_allocObject();
    sub_1E5E1E730(v21, v88 + v30, type metadata accessor for AppComposer);
    v38 = v36;
    v39 = v36;
    v40 = v97;
    sub_1E5E1D8FC(v38, v97, v37);
    v41 = v108;
    sub_1E5DF650C(v108, &v110);
    v42 = swift_allocObject();
    sub_1E5E1E730(v40, v42 + v30, type metadata accessor for AppComposer);
    v43 = v87;
    sub_1E5DF599C(&v110, v42 + v87);
    v44 = (v42 + v31);
    v45 = *(a2 + 48);
    v44[2] = *(a2 + 32);
    v44[3] = v45;
    v44[4] = *(a2 + 64);
    v46 = *(a2 + 16);
    *v44 = *a2;
    v44[1] = v46;
    v47 = v39;
    v48 = v98;
    sub_1E5E1D8FC(v47, v98, v37);
    sub_1E5DF650C(v41, v109);
    v49 = swift_allocObject();
    sub_1E5E1E730(v48, v49 + v30, type metadata accessor for AppComposer);
    sub_1E5DF599C(v109, v49 + v43);
    v50 = (v49 + v31);
    v51 = *(a2 + 48);
    v50[2] = *(a2 + 32);
    v50[3] = v51;
    v50[4] = *(a2 + 64);
    v52 = *(a2 + 16);
    *v50 = *a2;
    v50[1] = v52;
    swift_unknownObjectRetain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    swift_retain_n();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
    sub_1E5FEB2FC();
    sub_1E60731B0();
    v53 = v95;
    sub_1E65E2228();
    v54 = v96;
    v55 = v100;
    (*(v96 + 16))(v101, v53, v100);
    swift_storeEnumTagMultiPayload();
    sub_1E5FED46C(&unk_1EE2D6270, &qword_1ED073DB8, &qword_1E65EEE08, MEMORY[0x1E699F230]);
    sub_1E5FED46C(&unk_1EE2D6230, &qword_1ED073DC0, &qword_1E65EEE10, MEMORY[0x1E699F328]);
    v56 = v103;
    sub_1E65E4138();
    sub_1E5F0F880(v56, v105);
    swift_storeEnumTagMultiPayload();
    sub_1E6071B80();
    sub_1E65E4138();
    sub_1E5F0F8F0(v56);
    return (*(v54 + 8))(v53, v55);
  }

  return result;
}

uint64_t sub_1E634D0BC(uint64_t a1, uint64_t *a2)
{
  v5 = type metadata accessor for AppComposer(0);
  v33 = *(v5 - 8);
  v6 = *(v33 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078830, &qword_1E65FDB40);
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v30 = v28 - v9;
  v10 = sub_1E65E21F8();
  v35 = *(v10 - 8);
  v36 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v31 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E2218();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E65E2278();
  v34 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v16 = v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = *v2;
  sub_1E634F62C(a1, v14);
  sub_1E65E2268();
  sub_1E65E21E8();
  type metadata accessor for AppFeature(0);
  sub_1E6355990(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v28[1] = sub_1E6355990(&qword_1ED078838, MEMORY[0x1E699F248], MEMORY[0x1E699F240]);
  sub_1E65E4DE8();
  sub_1E5E1D8FC(v2, v7, type metadata accessor for AppComposer);
  v28[0] = a2[9];
  v17 = (*(v33 + 80) + 16) & ~*(v33 + 80);
  v18 = (v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  sub_1E5E1E730(v7, v19 + v17, type metadata accessor for AppComposer);
  v20 = (v19 + v18);
  v21 = *(a2 + 3);
  v20[2] = *(a2 + 2);
  v20[3] = v21;
  v20[4] = *(a2 + 4);
  v22 = *(a2 + 1);
  *v20 = *a2;
  v20[1] = v22;
  swift_unknownObjectRetain();

  v23 = v30;
  v24 = v31;
  v25 = v29;
  v26 = sub_1E65E4F08();

  (*(v37 + 8))(v23, v38);
  (*(v35 + 8))(v24, v36);
  (*(v34 + 8))(v16, v25);
  return v26;
}

uint64_t sub_1E634D5A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8F28();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1E65D7848();
  v3[8] = swift_task_alloc();
  sub_1E65E5C28();
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for PageMetricsClick(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E634D6EC, 0, 0);
}

uint64_t sub_1E634D6EC()
{
  v2 = v0[10];
  v1 = v0[11];
  v30 = v0[7];
  v32 = v0[6];
  v33 = v0[5];
  v3 = v0[2];
  v31 = *(v0[3] + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E65EA670;
  sub_1E65E28A8();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  (*(v32 + 104))(v30, *MEMORY[0x1E69CBCB0], v33);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v3, v1, &qword_1ED073578, &qword_1E65F0E60);
  v6 = v2[5];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 16))(v1 + v6, v3 + v6, v7);
  sub_1E5DFD1CC(v3 + v2[6], v1 + v2[6], &qword_1ED072340, &qword_1E65EA410);
  v35 = *(v3 + v2[7]);

  sub_1E5FAA0F0(v28);
  sub_1E5DFD1CC(v3 + v2[8], v1 + v2[8], &qword_1ED073570, &unk_1E65F4570);
  v8 = (v3 + v2[9]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (v3 + v2[10]);
  v12 = v11[1];
  v27 = v9;
  v29 = *v11;
  v13 = *(v3 + v2[11]);
  v14 = (v3 + v2[12]);
  v15 = v14[1];
  v26 = *v14;
  v16 = (v3 + v2[13]);
  v18 = *v16;
  v17 = v16[1];
  (*(v32 + 16))(v1 + v2[14], v3 + v2[14], v33);
  sub_1E5DFD1CC(v3 + v2[15], v1 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v35;
  v19 = (v1 + v2[9]);
  *v19 = v27;
  v19[1] = v10;
  v20 = (v1 + v2[10]);
  *v20 = v29;
  v20[1] = v12;
  *(v1 + v2[11]) = v13;
  v21 = (v1 + v2[12]);
  *v21 = v26;
  v21[1] = v15;
  v22 = (v1 + v2[13]);
  *v22 = v18;
  v22[1] = v17;

  v34 = (v31 + *v31);
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_1E634DB84;
  v24 = v0[11];

  return v34(v24);
}

uint64_t sub_1E634DB84()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 104) = v0;

  sub_1E6355930(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6356888, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E634DD20@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, __int128 *a3@<X3>, uint64_t a4@<X8>)
{
  v26 = a4;
  v27 = a2;
  v25 = a1;
  v6 = type metadata accessor for AppComposer(0);
  *&v28 = *(v6 - 8);
  v7 = *(v28 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v23 - v9;
  v11 = type metadata accessor for ActionButtonDescriptor(0);
  v10[*(v11 + 20)] = 0;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = *(a3 + 2);
  v13 = *(a3 + 5);
  v14 = *(a3 + 8);
  v24 = *(a3 + 7);
  v15 = *(a3 + 9);
  sub_1E5E1D8FC(a1, &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v16 = (*(v28 + 80) + 96) & ~*(v28 + 80);
  v17 = swift_allocObject();
  v23 = *a3;
  v28 = *(a3 + 24);
  v18 = a3[3];
  v17[3] = a3[2];
  v17[4] = v18;
  v17[5] = a3[4];
  v19 = a3[1];
  v17[1] = *a3;
  v17[2] = v19;
  sub_1E5E1E730(&v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppComposer);
  v29 = v23;
  v30 = v12;
  v31 = v28;
  v32 = v13;
  v33 = &unk_1E65FDC00;
  v34 = v17;
  v35 = v14;
  v36 = v15;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v20 = v26;
  sub_1E6034CCC(v10, v27, &v29, v26);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v10, &qword_1ED072638, &qword_1E65EB950);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  return (*(*(v21 - 8) + 56))(v20, 0, 1, v21);
}

uint64_t sub_1E634E058@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E634DD20(v1 + v4, v1 + v5, (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E634E110(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1E65D8F28();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1E65D7848();
  v3[8] = swift_task_alloc();
  sub_1E65E5C28();
  v3[9] = swift_task_alloc();
  v3[10] = type metadata accessor for PageMetricsClick(0);
  v3[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E634E25C, 0, 0);
}

uint64_t sub_1E634E25C()
{
  v2 = v0[10];
  v1 = v0[11];
  v30 = v0[7];
  v32 = v0[6];
  v33 = v0[5];
  v3 = v0[2];
  v31 = *(v0[3] + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E58, &qword_1E65F0E90);
  sub_1E65D86A8();
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1E65EA670;
  sub_1E65E28A8();
  _s10Blackbeard20MetricIdentifierTypeO8rawValueSSvg_0();
  sub_1E65E5BA8();
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E5D48();
  (*(v32 + 104))(v30, *MEMORY[0x1E69CBCB0], v33);
  sub_1E6427498(MEMORY[0x1E69E7CC0]);
  sub_1E65D8678();
  sub_1E5DFD1CC(v3, v1, &qword_1ED073578, &qword_1E65F0E60);
  v6 = v2[5];
  v7 = sub_1E65D8C68();
  (*(*(v7 - 8) + 16))(v1 + v6, v3 + v6, v7);
  sub_1E5DFD1CC(v3 + v2[6], v1 + v2[6], &qword_1ED072340, &qword_1E65EA410);
  v35 = *(v3 + v2[7]);

  sub_1E5FAA0F0(v28);
  sub_1E5DFD1CC(v3 + v2[8], v1 + v2[8], &qword_1ED073570, &unk_1E65F4570);
  v8 = (v3 + v2[9]);
  v9 = *v8;
  v10 = v8[1];
  v11 = (v3 + v2[10]);
  v12 = v11[1];
  v27 = v9;
  v29 = *v11;
  v13 = *(v3 + v2[11]);
  v14 = (v3 + v2[12]);
  v15 = v14[1];
  v26 = *v14;
  v16 = (v3 + v2[13]);
  v18 = *v16;
  v17 = v16[1];
  (*(v32 + 16))(v1 + v2[14], v3 + v2[14], v33);
  sub_1E5DFD1CC(v3 + v2[15], v1 + v2[15], &qword_1ED072330, &qword_1E65EAB70);
  *(v1 + v2[7]) = v35;
  v19 = (v1 + v2[9]);
  *v19 = v27;
  v19[1] = v10;
  v20 = (v1 + v2[10]);
  *v20 = v29;
  v20[1] = v12;
  *(v1 + v2[11]) = v13;
  v21 = (v1 + v2[12]);
  *v21 = v26;
  v21[1] = v15;
  v22 = (v1 + v2[13]);
  *v22 = v18;
  v22[1] = v17;

  v34 = (v31 + *v31);
  v23 = swift_task_alloc();
  v0[12] = v23;
  *v23 = v0;
  v23[1] = sub_1E634E6F4;
  v24 = v0[11];

  return v34(v24);
}

uint64_t sub_1E634E6F4()
{
  v2 = *(*v1 + 88);
  v3 = *v1;
  *(v3 + 104) = v0;

  sub_1E6355930(v2, type metadata accessor for PageMetricsClick);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E634E890, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E634E890()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E634E91C()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 64) + ((*(v1 + 80) + 16) & ~*(v1 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E634D0BC(v0 + v2, (v0 + ((v2 + 47) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1E634E9B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v39 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v38 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v38 - v12;
  v14 = type metadata accessor for ArtworkContent(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for ArtworkDescriptor(0);
  v18 = (v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED075DC8, &qword_1E65F3948) + 48);
  sub_1E5DFD1CC(a1, v13, &qword_1ED0734E8, &qword_1E65ED470);
  sub_1E5DFD1CC(a3, v10, &qword_1ED072340, &qword_1E65EA410);
  sub_1E65DB248();
  sub_1E5DFD1CC(v38, &v16[v21], &qword_1ED073548, &qword_1E65ED508);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for AppComposer(0);
  v22 = sub_1E65DAE38();
  v23 = sub_1E65DAE38();
  v24 = sub_1E65E4B48();
  v25 = 4.0;
  if (v24)
  {
    v25 = 8.0;
  }

  v26 = 16.0;
  if (v24)
  {
    v26 = 18.0;
  }

  if (v22 == v23)
  {
    v27 = v26;
  }

  else
  {
    v27 = v25;
  }

  if (v22 == v23)
  {
    v28 = 12.0;
  }

  else
  {
    v28 = 8.0;
  }

  sub_1E5E1E730(v16, v20, type metadata accessor for ArtworkContent);
  *(v20 + v18[7]) = MEMORY[0x1E69E7CD0];
  v29 = (v20 + v18[8]);
  *v29 = 0.0;
  v29[1] = v27;
  v29[2] = v27;
  v29[3] = v28;
  *(v20 + v18[9]) = 1;
  v30 = (v20 + v18[10]);
  *v30 = 0;
  v30[1] = 0;
  v31 = v39;
  sub_1E64D2DD0(v20, a4, v39);
  v32 = sub_1E65E4B98();
  v34 = v33;
  v35 = v31 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560) + 36);
  sub_1E64D54B4(v20, a4, v35);
  sub_1E6355930(v20, type metadata accessor for ArtworkDescriptor);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727A8, &qword_1E65EBC28);
  v37 = (v35 + *(result + 36));
  *v37 = v32;
  v37[1] = v34;
  return result;
}

uint64_t sub_1E634ED90@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a7;
  v34 = a8;
  v35 = a4;
  *&v36 = a6;
  v31[1] = a3;
  v12 = type metadata accessor for AppComposer(0);
  *&v32 = *(v12 - 8);
  v13 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v31 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v31 - v16;
  v18 = type metadata accessor for ActionButtonDescriptor(0);
  v19 = &v17[*(v18 + 20)];
  *v19 = a1;
  *(v19 + 1) = a2;
  v19[16] = 12;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();

  sub_1E65D76E8();
  (*(*(v18 - 8) + 56))(v17, 0, 1, v18);
  v20 = *(a5 + 2);
  v21 = *(a5 + 5);
  v22 = *(a5 + 8);
  v23 = *(a5 + 9);
  sub_1E5E1D8FC(a3, v14, type metadata accessor for AppComposer);
  v24 = (*(v32 + 80) + 96) & ~*(v32 + 80);
  v25 = swift_allocObject();
  v32 = *a5;
  v36 = *(a5 + 24);
  v26 = a5[3];
  v25[3] = a5[2];
  v25[4] = v26;
  v25[5] = a5[4];
  v27 = a5[1];
  v25[1] = *a5;
  v25[2] = v27;
  sub_1E5E1E730(v14, v25 + v24, type metadata accessor for AppComposer);
  v37 = v32;
  v38 = v20;
  v39 = v36;
  v40 = v21;
  v41 = v33;
  v42 = v25;
  v43 = v22;
  v44 = v23;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  v28 = v34;
  sub_1E6034CCC(v17, v35, &v37, v34);

  swift_unknownObjectRelease();
  sub_1E5DFE50C(v17, &qword_1ED072638, &qword_1E65EB950);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  return (*(*(v29 - 8) + 56))(v28, 0, 1, v29);
}

uint64_t sub_1E634F0F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v11 = *(type metadata accessor for AppComposer(0) - 8);
  v12 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_1E634ED90(a1, a2, v5 + v12, v5 + v13, (v5 + ((v13 + 47) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_1E634F1C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v25 = a2;
  v23 = a1;
  v6 = type metadata accessor for AppComposer(0);
  *&v26 = *(v6 - 8);
  v7 = *(v26 + 64);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for ActionButtonDescriptor(0);
  v10[*(v11 + 20)] = 0;
  type metadata accessor for ActionButtonDescriptor.Kind(0);
  swift_storeEnumTagMultiPayload();
  sub_1E65D76E8();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = *(a3 + 2);
  v13 = *(a3 + 5);
  v14 = *(a3 + 8);
  v22 = *(a3 + 7);
  v15 = *(a3 + 9);
  sub_1E5E1D8FC(a1, &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for AppComposer);
  v16 = (*(v26 + 80) + 96) & ~*(v26 + 80);
  v17 = swift_allocObject();
  v21 = *a3;
  v26 = *(a3 + 24);
  v18 = a3[3];
  v17[3] = a3[2];
  v17[4] = v18;
  v17[5] = a3[4];
  v19 = a3[1];
  v17[1] = *a3;
  v17[2] = v19;
  sub_1E5E1E730(&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for AppComposer);
  v27 = v21;
  v28 = v12;
  v29 = v26;
  v30 = v13;
  v31 = &unk_1E65FDB00;
  v32 = v17;
  v33 = v14;
  v34 = v15;
  swift_unknownObjectRetain_n();
  swift_retain_n();
  swift_retain_n();
  swift_retain_n();

  sub_1E6034CCC(v10, v25, &v27, v24);

  swift_unknownObjectRelease();
  return sub_1E5DFE50C(v10, &qword_1ED072638, &qword_1E65EB950);
}

uint64_t sub_1E634F4A8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  return sub_1E634F1C0(v1 + v4, v1 + v5, (v1 + ((v5 + 47) & 0xFFFFFFFFFFFFFFF8)), a1);
}

uint64_t sub_1E634F550(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E634D5A0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E634F62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v21[0] = a1;
  v21[1] = a2;
  v3 = type metadata accessor for AppComposer(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = MEMORY[0x1EEE9AC00](v3 - 8);
  v7 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = v21 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = v21 - v11;
  sub_1E5E1D8FC(v2, v21 - v11, type metadata accessor for AppComposer);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_1E5E1E730(v12, v14 + v13, type metadata accessor for AppComposer);
  sub_1E5E1D8FC(v2, v10, type metadata accessor for AppComposer);
  v15 = swift_allocObject();
  sub_1E5E1E730(v10, v15 + v13, type metadata accessor for AppComposer);
  sub_1E5E1D8FC(v2, v7, type metadata accessor for AppComposer);
  v16 = swift_allocObject();
  sub_1E5E1E730(v7, v16 + v13, type metadata accessor for AppComposer);
  v17 = v21[0];
  sub_1E5DF650C(v21[0], v23);
  v18 = swift_allocObject();
  sub_1E5DF599C(v23, v18 + 16);
  sub_1E5DF650C(v17, v22);
  v19 = swift_allocObject();
  sub_1E5DF599C(v22, v19 + 16);
  return sub_1E65E2208();
}

uint64_t sub_1E634F8E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = sub_1E65D7848();
  v17 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  v14 = v17;
  sub_1E65E0708();
  v18 = *(a1 + *(v13 + 36) + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v8);
  sub_1E5DFE50C(v5, &qword_1ED071F78, &unk_1E65EA3F0);
  v15 = *(v14 + 48);
  if (v15(v8, 1, v9) == 1)
  {
    sub_1E65D77C8();
    if (v15(v8, 1, v9) != 1)
    {
      sub_1E5DFE50C(v8, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v14 + 32))(v11, v8, v9);
  }

  return sub_1E65E2248();
}

uint64_t sub_1E634FBD0(uint64_t a1)
{
  v2 = sub_1E65E2238();
  result = type metadata accessor for AppState(0);
  *(a1 + *(result + 36) + 1) = v2;
  return result;
}

uint64_t sub_1E634FC10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v51 = a5;
  v54 = a1;
  v5 = sub_1E65E2258();
  v56 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v55 = v6;
  v57 = v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v59 = v47 - v8;
  v50 = sub_1E65D76F8();
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v48 = v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072958, &qword_1E65EC0F0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v47 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072960, &qword_1E65EC0F8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v47 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072968, &unk_1E6609800);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v47 - v18;
  v20 = sub_1E65D7848();
  v52 = *(v20 - 8);
  v53 = v20;
  v21 = *(v52 + 64);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v23 = v47 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v47 - v24;
  swift_getKeyPath();
  v58 = v25;
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  sub_1E60EEC44(v19);
  sub_1E5DFE50C(v12, &qword_1ED072958, &qword_1E65EC0F0);
  (*(v14 + 8))(v16, v13);
  v26 = sub_1E65D7EB8();
  v27 = *(v26 - 8);
  if ((*(v27 + 48))(v19, 1, v26) == 1)
  {
    sub_1E5DFE50C(v19, &qword_1ED072968, &unk_1E6609800);
    v28 = 0;
    v29 = 0;
  }

  else
  {
    v30 = v48;
    sub_1E65D7DC8();
    (*(v27 + 8))(v19, v26);
    v28 = sub_1E65D76C8();
    v29 = v31;
    (*(v49 + 8))(v30, v50);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072970, &qword_1E65EC120);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = 9;
  v60 = v28;
  v61 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072978, &unk_1E65F0E80);
  sub_1E5FEE0FC();
  sub_1E65E6848();
  v50 = sub_1E6427784(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072988, &qword_1E65EC128);
  v33 = sub_1E65E60A8();
  (*(*(v33 - 8) + 56))(v59, 1, 1, v33);
  v34 = v57;
  sub_1E5E1D8FC(v54, v57, MEMORY[0x1E699F238]);
  v35 = v51;
  v47[1] = *v51;
  v47[2] = v51[3];
  v48 = v51[5];
  v49 = v51[7];
  v54 = v51[9];
  v37 = v52;
  v36 = v53;
  (*(v52 + 16))(v23, v58, v53);
  v38 = (*(v56 + 80) + 32) & ~*(v56 + 80);
  v39 = (v55 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (*(v37 + 80) + v40 + 80) & ~*(v37 + 80);
  v42 = swift_allocObject();
  *(v42 + 16) = 0;
  *(v42 + 24) = 0;
  sub_1E5E1E730(v34, v42 + v38, MEMORY[0x1E699F238]);
  *(v42 + v39) = v50;
  v43 = (v42 + v40);
  v44 = v35[4];
  v43[3] = v35[3];
  v43[4] = v44;
  v45 = v35[2];
  v43[1] = v35[1];
  v43[2] = v45;
  *v43 = *v35;
  (*(v37 + 32))(v42 + v41, v23, v36);
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v59, &unk_1E65FDB68, v42);

  return (*(v37 + 8))(v58, v36);
}

uint64_t sub_1E6350370(uint64_t a1, uint64_t a2)
{
  v2[181] = a2;
  v2[175] = a1;
  sub_1E65D76F8();
  v2[187] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v2[193] = swift_task_alloc();
  v3 = sub_1E65D7848();
  v2[199] = v3;
  v2[205] = *(v3 - 8);
  v2[211] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v2[217] = swift_task_alloc();
  v4 = sub_1E65DAC98();
  v2[223] = v4;
  v2[224] = *(v4 - 8);
  v2[225] = swift_task_alloc();
  v5 = sub_1E65DA0B8();
  v2[226] = v5;
  v2[227] = *(v5 - 8);
  v2[228] = swift_task_alloc();
  sub_1E65D8BB8();
  v2[229] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  v2[230] = swift_task_alloc();
  v6 = sub_1E65E21B8();
  v2[231] = v6;
  v2[232] = *(v6 - 8);
  v2[233] = swift_task_alloc();
  v7 = sub_1E65D72D8();
  v2[234] = v7;
  v2[235] = *(v7 - 8);
  v2[236] = swift_task_alloc();
  v2[237] = swift_task_alloc();
  v2[238] = swift_task_alloc();
  v2[239] = swift_task_alloc();
  v8 = sub_1E65D8258();
  v2[240] = v8;
  v2[241] = *(v8 - 8);
  v2[242] = swift_task_alloc();
  v9 = type metadata accessor for AppComposer(0);
  v2[243] = v9;
  v10 = *(v9 - 8);
  v2[244] = v10;
  v2[245] = *(v10 + 64);
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v11 = sub_1E65D9658();
  v2[248] = v11;
  v2[249] = *(v11 - 8);
  v2[250] = swift_task_alloc();
  v2[251] = swift_task_alloc();
  v12 = sub_1E65D71A8();
  v2[252] = v12;
  v2[253] = *(v12 - 8);
  v2[254] = swift_task_alloc();
  v13 = sub_1E65D8EF8();
  v2[255] = v13;
  v2[256] = *(v13 - 8);
  v2[257] = swift_task_alloc();
  v14 = sub_1E65D7BC8();
  v2[258] = v14;
  v2[259] = *(v14 - 8);
  v2[260] = swift_task_alloc();
  v15 = sub_1E65D7908();
  v2[261] = v15;
  v2[262] = *(v15 - 8);
  v2[263] = swift_task_alloc();
  v16 = sub_1E65D76A8();
  v2[264] = v16;
  v2[265] = *(v16 - 8);
  v2[266] = swift_task_alloc();
  v2[267] = swift_task_alloc();
  v2[268] = swift_task_alloc();
  v2[269] = swift_task_alloc();
  v17 = sub_1E65D96F8();
  v2[270] = v17;
  v2[271] = *(v17 - 8);
  v2[272] = swift_task_alloc();
  v18 = sub_1E65D7EB8();
  v2[273] = v18;
  v2[274] = *(v18 - 8);
  v2[275] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6350AA4, 0, 0);
}

uint64_t sub_1E6350AA4()
{
  *(v0 + 2400) = *(*(v0 + 1944) + 20);
  v1 = type metadata accessor for AppEnvironment(0);
  *(v0 + 2208) = v1;
  *(v0 + 2404) = *(v1 + 144);
  active = WorkoutPlanService.queryActiveWorkoutPlan.getter();
  *(v0 + 2216) = v3;
  v7 = (active + *active);
  v4 = swift_task_alloc();
  *(v0 + 2224) = v4;
  *v4 = v0;
  v4[1] = sub_1E6350BCC;
  v5 = *(v0 + 2200);

  return v7(v5);
}

uint64_t sub_1E6350BCC()
{
  *(*v1 + 2232) = v0;

  if (v0)
  {
    v2 = sub_1E63526EC;
  }

  else
  {
    v2 = sub_1E6350CE0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6350CE0()
{
  v1 = v0[268];
  v2 = v0[265];
  v14 = v0[264];
  v3 = v0[263];
  v4 = v0[262];
  v5 = v0[261];

  IncompleteWorkout = WorkoutPlanService.queryNextIncompleteWorkoutReference.getter();
  v0[280] = v7;
  sub_1E65D7698();
  sub_1E65D7858();
  sub_1E65D75F8();
  v8 = *(v4 + 8);
  v0[281] = v8;
  v0[282] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v8(v3, v5);
  v9 = *(v2 + 8);
  v0[283] = v9;
  v0[284] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v9(v1, v14);
  v15 = (IncompleteWorkout + *IncompleteWorkout);
  v10 = swift_task_alloc();
  v0[285] = v10;
  *v10 = v0;
  v10[1] = sub_1E6350EB0;
  v11 = v0[272];
  v12 = v0[269];

  return v15(v11, v12);
}

uint64_t sub_1E6350EB0()
{
  v2 = *v1;
  *(*v1 + 2288) = v0;

  (*(v2 + 2264))(*(v2 + 2152), *(v2 + 2112));

  if (v0)
  {
    v3 = sub_1E63528EC;
  }

  else
  {
    v3 = sub_1E635103C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E635103C()
{
  v1 = sub_1E65D7DD8();
  if (*(v1 + 16) && (v2 = sub_1E64175A0(*(v0 + 2176)), (v3 & 1) != 0))
  {
    v54 = *(v0 + 2248);
    v4 = *(v0 + 2104);
    v5 = *(v0 + 2088);
    v6 = *(v0 + 2080);
    v7 = *(v0 + 2072);
    v52 = *(v0 + 2064);
    v8 = *(v0 + 2056);
    v9 = *(v0 + 2048);
    v59 = *(v0 + 2040);
    v10 = (*(v1 + 56) + 16 * v2);
    v50 = v10[1];
    v51 = *v10;

    sub_1E65D7E98();
    sub_1E65D7858();
    sub_1E65D7B88();
    v54(v4, v5);
    (*(v7 + 8))(v6, v52);
    sub_1E65D96B8();
    v11 = sub_1E65D8EB8();
    v12 = (*(v9 + 8))(v8, v59);
    if (v11 < 0)
    {
      __break(1u);
    }

    else
    {
      v16 = *(v0 + 2264);
      v17 = *(v0 + 2248);
      v18 = *(v0 + 2144);
      v19 = *(v0 + 2112);
      v20 = *(v0 + 2104);
      v21 = *(v0 + 2088);
      v55 = *(v0 + 2032);
      v56 = *(v0 + 2024);
      v60 = *(v0 + 1448) + *(v0 + 2400);
      v57 = *(v0 + 2016);
      sub_1E65E61C8();
      sub_1E65D7638();
      v16(v18, v19);
      sub_1E65D7688();
      sub_1E65D7858();
      sub_1E65D75F8();
      v17(v20, v21);
      v16(v18, v19);
      sub_1E65D7858();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078848, &qword_1E65FDBC8);
      v22 = sub_1E65D78F8();
      v23 = *(v22 - 8);
      v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
      v25 = swift_allocObject();
      *(v25 + 16) = xmmword_1E65EA670;
      (*(v23 + 104))(v25 + v24, *MEMORY[0x1E6969A48], v22);
      sub_1E5F9C10C(v25);
      swift_setDeallocating();
      (*(v23 + 8))(v25 + v24, v22);
      swift_deallocClassInstance();
      sub_1E65D7878();

      v17(v20, v21);
      v26 = sub_1E65D7178();
      v28 = v27;
      *(v0 + 2296) = v26;
      *(v0 + 2412) = v27;
      (*(v56 + 8))(v55, v57);
      v29 = 42;
      if (*(v60 + 8) > 1u)
      {
        if (*(v60 + 8) == 2)
        {
          return sub_1E65E69D8();
        }
      }

      else if (!*(v60 + 8))
      {
        if (v28 & 1 | (v26 != 0))
        {
          v29 = 46;
        }

        else
        {
          v29 = 42;
        }
      }

      v61 = v29;
      v40 = *(v0 + 1976);
      v58 = *(v0 + 1968);
      v41 = *(v0 + 1960);
      v42 = *(v0 + 1952);
      v53 = *(v0 + 1448);
      sub_1E5E1D8FC(v53, v40, type metadata accessor for AppComposer);
      v43 = (*(v42 + 80) + 16) & ~*(v42 + 80);
      v44 = v43 + v41;
      v45 = (v43 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
      v46 = swift_allocObject();
      *(v0 + 2304) = v46;
      sub_1E5E1E730(v40, v46 + v43, type metadata accessor for AppComposer);
      v47 = (v46 + v45);
      *v47 = v51;
      v47[1] = v50;

      swift_asyncLet_begin();
      sub_1E5E1D8FC(v53, v58, type metadata accessor for AppComposer);
      v48 = swift_allocObject();
      *(v0 + 2312) = v48;
      sub_1E5E1E730(v58, v48 + v43, type metadata accessor for AppComposer);
      *(v48 + v44) = v61;
      v49 = v48 + (v44 & 0xFFFFFFFFFFFFFFF8);
      *(v49 + 8) = v51;
      *(v49 + 16) = v50;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074CD0, &qword_1E660EF60);
      swift_asyncLet_begin();
      v14 = sub_1E6351888;
      v12 = v0 + 656;
      v13 = v0 + 1352;
      v15 = v0 + 1296;
    }

    return MEMORY[0x1EEE6DEC0](v12, v13, v14, v15);
  }

  else
  {
    v30 = *(v0 + 2200);
    v31 = *(v0 + 2192);
    v32 = *(v0 + 2184);
    v33 = *(v0 + 2176);
    v34 = *(v0 + 2168);
    v35 = *(v0 + 2160);

    v36 = sub_1E65D8B88();
    sub_1E6355990(&qword_1ED078840, MEMORY[0x1E69CB928], MEMORY[0x1E69CB930]);
    swift_allocError();
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x1E69CB8E8], v36);
    swift_willThrow();
    (*(v34 + 8))(v33, v35);
    (*(v31 + 8))(v30, v32);

    v38 = *(v0 + 8);

    return v38();
  }
}

uint64_t sub_1E6351888()
{
  *(v1 + 2320) = v0;
  if (v0)
  {
    v2 = sub_1E6352B00;
  }

  else
  {
    v2 = sub_1E63518BC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E63518BC()
{
  v1 = *(v0 + 1352);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 2412);
    v3 = *(v0 + 2136);
    v20 = *(v0 + 2296);
    v4 = *(v0 + 1912);
    v29 = *(v0 + 2208);
    v30 = v4;
    v28 = *(v0 + 1904);
    v31 = *(v0 + 1896);
    v34 = *(v0 + 1888);
    v32 = *(v0 + 1880);
    v33 = *(v0 + 1872);
    v5 = *(v0 + 1832);
    v6 = *(v0 + 1824);
    v35 = *(v0 + 1816);
    v7 = *(v0 + 1808);
    v8 = *(v0 + 1800);
    v22 = *(v0 + 1792);
    v23 = *(v0 + 1784);
    v25 = *(v0 + 1688);
    v36 = *(v0 + 1640);
    v24 = *(v0 + 1448);
    v26 = v24 + *(v0 + 2400);
    v27 = *(v0 + 1592);
    (*(*(v0 + 1928) + 16))(*(v0 + 1936), v1 + ((*(*(v0 + 1928) + 80) + 32) & ~*(*(v0 + 1928) + 80)), *(v0 + 1920));
    sub_1E6353828(v3, v20, v2 & 1, v4);
    sub_1E65D8128();
    sub_1E65D8BA8();
    v21 = MEMORY[0x1E69CB950];
    sub_1E6355930(v5, MEMORY[0x1E69CB950]);
    sub_1E65DA098();
    v9 = *(v35 + 8);
    v9(v6, v7);
    sub_1E65DAC38();
    v10 = *(v22 + 8);
    v10(v8, v23);
    sub_1E65DC2D8();
    sub_1E65D8128();
    sub_1E65D8BA8();
    sub_1E6355930(v5, v21);
    sub_1E65DA098();
    v9(v6, v7);
    sub_1E65DAC78();
    v10(v8, v23);
    sub_1E65D74C8();

    sub_1E65E21A8();
    *(v0 + 1336) = sub_1E65D8078();
    *(v0 + 1344) = v11;
    *(v0 + 2336) = v11;
    v12 = sub_1E65D8248();
    *(v0 + 2344) = *v24;
    swift_getKeyPath();
    sub_1E65E4EC8();

    v13 = *(v29 + 136);
    *(v0 + 2408) = v13;
    sub_1E63C4134(v25, &v26[v13], v12, v28);

    v14 = *(v36 + 8);
    *(v0 + 2352) = v14;
    *(v0 + 2360) = (v36 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v14(v25, v27);
    v15 = sub_1E65D80A8();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E63C4134(v25, &v26[v13], v15, v31);

    v14(v25, v27);
    (*(v32 + 16))(v34, v30, v33);
    v16 = *(v0 + 2008);

    return MEMORY[0x1EEE6DEC0](v0 + 16, v16, sub_1E635207C, v0 + 1456);
  }

  else
  {
    v17 = sub_1E65D7EC8();
    sub_1E6355990(&qword_1ED078850, MEMORY[0x1E69CB148], MEMORY[0x1E69CB150]);
    *(v0 + 2328) = swift_allocError();
    (*(*(v17 - 8) + 104))(v18, *MEMORY[0x1E69CB138], v17);
    swift_willThrow();

    return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1E6351D9C, v0 + 1696);
  }
}

uint64_t sub_1E6351DF4()
{
  v1 = v0[283];
  v11 = v0[275];
  v2 = v0[274];
  v3 = v0[273];
  v4 = v0[272];
  v5 = v0[271];
  v6 = v0[270];
  v7 = v0[267];
  v8 = v0[264];
  v1(v0[266], v8);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E635207C()
{
  v1[296] = v0;
  if (v0)
  {
    v2 = v1[238];
    v3 = v1[237];
    v4 = v1[236];
    v5 = v1[235];
    v6 = v1[234];
    v7 = v1[233];
    v8 = v1[232];
    v9 = v1[231];

    v10 = *(v5 + 8);
    v1[298] = v10;
    v1[299] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v4, v6);
    v10(v3, v6);
    v10(v2, v6);
    (*(v8 + 8))(v7, v9);
    v11 = sub_1E6352E00;
  }

  else
  {
    v1[297] = v1[167];
    v11 = sub_1E63521AC;
  }

  return MEMORY[0x1EEE6DFA0](v11, 0, 0);
}

uint64_t sub_1E63521AC()
{
  v14 = *(v0 + 2352);
  v12 = *(v0 + 2408);
  v1 = *(v0 + 2000);
  v2 = *(v0 + 1992);
  v3 = *(v0 + 1984);
  v4 = *(v0 + 1928);
  v16 = *(v0 + 1920);
  v17 = *(v0 + 1936);
  v15 = *(v0 + 1912);
  v5 = *(v0 + 1880);
  v6 = *(v0 + 1688);
  v11 = *(v0 + 1592);
  v7 = *(v0 + 1544);
  v13 = *(v0 + 1872);
  v8 = *(v0 + 1448) + *(v0 + 2400);
  (*(v2 + 16))(v1, *(v0 + 2008), v3);
  v9 = sub_1E65D9558();
  (*(v2 + 8))(v1, v3);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E63C4134(v6, (v8 + v12), v9, v7);

  v14(v6, v11);
  (*(v5 + 56))(v7, 0, 1, v13);
  sub_1E65D7DC8();
  sub_1E65E21C8();
  (*(v5 + 8))(v15, v13);
  (*(v4 + 8))(v17, v16);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1E6352414, v0 + 1600);
}

uint64_t sub_1E635246C()
{
  v1 = v0[283];
  v2 = v0[275];
  v3 = v0[274];
  v4 = v0[272];
  v5 = v0[271];
  v6 = v0[270];
  v7 = v0[267];
  v11 = v0[273];
  v8 = v0[264];
  v1();
  (v1)(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v3 + 8))(v2, v11);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E63526EC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63528EC()
{
  (*(v0[274] + 8))(v0[275], v0[273]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E6352B78()
{
  v1 = v0[283];
  v11 = v0[275];
  v2 = v0[274];
  v3 = v0[273];
  v4 = v0[272];
  v5 = v0[271];
  v6 = v0[270];
  v7 = v0[267];
  v8 = v0[264];
  v1(v0[266], v8);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6352E00()
{
  v1 = *(v0 + 1936);
  v2 = *(v0 + 1928);
  v3 = *(v0 + 1920);
  (*(v0 + 2384))(*(v0 + 1912), *(v0 + 1872));
  (*(v2 + 8))(v1, v3);

  return MEMORY[0x1EEE6DEB0](v0 + 656, v0 + 1352, sub_1E6352EA4, v0 + 1504);
}

uint64_t sub_1E6352EFC()
{
  v1 = v0[283];
  v11 = v0[275];
  v2 = v0[274];
  v3 = v0[273];
  v4 = v0[272];
  v5 = v0[271];
  v6 = v0[270];
  v7 = v0[267];
  v8 = v0[264];
  v1(v0[266], v8);
  v1(v7, v8);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v11, v3);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1E6353184(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63531A8, 0, 0);
}

uint64_t sub_1E63531A8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.fetchRemoteCatalogWorkoutDetail.getter();
  v0[6] = v2;
  v3 = sub_1E65D9EE8();
  v5 = v4;
  v0[7] = v4;
  v9 = (v1 + *v1);
  v6 = swift_task_alloc();
  v0[8] = v6;
  *v6 = v0;
  v6[1] = sub_1E63532FC;
  v7 = v0[2];

  return v9(v7, v3, v5);
}

uint64_t sub_1E63532FC()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6353444, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1E6353444()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E63534B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63534D8, 0, 0);
}

uint64_t sub_1E63534D8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = CatalogService.fetchRemoteCatalogLockups.getter();
  *(v0 + 48) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078860, &qword_1E65FDBF0);
  sub_1E65D9CC8();
  v3 = swift_allocObject();
  *(v0 + 56) = v3;
  *(v3 + 16) = xmmword_1E65EA670;
  sub_1E65D9EE8();
  sub_1E65D9C88();
  v7 = (v1 + *v1);
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1E63536CC;
  v5 = *(v0 + 88);

  return v7(v5, v3);
}

uint64_t sub_1E63536CC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = sub_1E6353444;
  }

  else
  {

    *(v4 + 80) = a1;
    v5 = sub_1E6353804;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E6353828@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v58 = a4;
  LODWORD(v55) = a3;
  v54 = a1;
  v5 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v50 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E65D7578();
  v52 = *(v7 - 8);
  v53 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v47 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1E65D7598();
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1E65D75B8();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65D75D8();
  v59 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v47 - v21;
  v23 = MEMORY[0x1EEE9AC00](v20);
  v25 = &v47 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v60 = &v47 - v26;
  v27 = sub_1E65D7348();
  MEMORY[0x1EEE9AC00](v27 - 8);
  v57 = &v47 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_1E65D7848();
  MEMORY[0x1EEE9AC00](v29 - 8);
  v56 = &v47 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1E65E5C28();
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  if (v55)
  {
    goto LABEL_2;
  }

  v48 = v13;
  v39 = v59;
  if (a2 == 7)
  {
    v55 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
    MEMORY[0x1E693ED80](v32);
    sub_1E65D75A8();
    v47 = v25;
    sub_1E65D75C8();
    (*(v48 + 8))(v15, v12);
    v41 = *(v39 + 8);
    v42 = v41(v25, v16);
    MEMORY[0x1E693ED80](v42);
    sub_1E65D7588();
    sub_1E65D7558();
    (*(v49 + 8))(v11, v51);
    v41(v19, v16);
    sub_1E65D7568();
    v43 = v47;
    sub_1E65D7548();
    (*(v52 + 8))(v9, v53);
    v41(v22, v16);
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    sub_1E65D76A8();
    sub_1E6355990(&qword_1ED078858, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
    sub_1E5F9AEA8();
    v44 = v60;
    sub_1E65E5BB8();
    sub_1E65E5BE8();
    sub_1E65E5BB8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v46 = [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    sub_1E65D7338();
    sub_1E65D72E8();
    v41(v43, v16);
    return v41(v44, v16);
  }

  else
  {
    if (a2 != 1)
    {
      v13 = v48;
      if (a2)
      {
LABEL_2:
        v55 = &v47 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
        MEMORY[0x1E693ED80](v32);
        sub_1E65D75A8();
        sub_1E65D75C8();
        (*(v13 + 8))(v15, v12);
        v34 = *(v59 + 8);
        v34(v19, v16);
        sub_1E65D7588();
        sub_1E65D7558();
        (*(v49 + 8))(v11, v51);
        v34(v22, v16);
        sub_1E65D7568();
        v35 = v60;
        sub_1E65D7548();
        (*(v52 + 8))(v9, v53);
        v34(v25, v16);
        sub_1E65E5BF8();
        sub_1E65E5BE8();
        sub_1E65D76A8();
        sub_1E6355990(&qword_1ED078858, MEMORY[0x1E6969328], MEMORY[0x1E6969320]);
        sub_1E5F9AEA8();
        sub_1E65E5BB8();
        sub_1E65E5BE8();
        sub_1E65E5C18();
        type metadata accessor for LocalizationBundle();
        v36 = swift_getObjCClassFromMetadata();
        v37 = [objc_opt_self() bundleForClass_];
        swift_getKeyPath();
        sub_1E65E4EC8();

        sub_1E65E5D48();
        sub_1E65D7338();
        sub_1E65D72E8();
        return (v34)(v35, v16);
      }
    }

    sub_1E65E5BA8();
    type metadata accessor for LocalizationBundle();
    v40 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E65E5D48();
    sub_1E65D7338();
    return sub_1E65D72E8();
  }
}

uint64_t sub_1E6354294(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E63542B4, 0, 0);
}

uint64_t sub_1E63542B4()
{
  v1 = v0[2];
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  active = WorkoutPlanService.makeActiveWorkoutPlanUpdatedStream.getter();
  v0[4] = v3;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072840, &qword_1E65EBE88);
  v1[4] = sub_1E5FED46C(&qword_1EE2D4738, &qword_1ED072840, &qword_1E65EBE88, MEMORY[0x1E69E86A0]);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v1);
  v7 = (active + *active);
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1E628AFA8;

  return v7(boxed_opaque_existential_1);
}

uint64_t sub_1E635443C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C18, &qword_1E65F7A00);
  v2[5] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E63544DC, 0, 0);
}

uint64_t sub_1E63544DC()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = WorkoutPlanService.makeWorkoutPlansUpdatedStream.getter();
  v0[6] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[7] = v3;
  *v3 = v0;
  v3[1] = sub_1E63545F8;
  v4 = v0[5];

  return v6(v4);
}

uint64_t sub_1E63545F8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6354710, 0, 0);
}

uint64_t sub_1E6354710()
{
  v1 = *(v0 + 16);
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076C20, &qword_1E65F7A10);
  v1[4] = sub_1E5FED46C(&qword_1ED076C28, &qword_1ED076C20, &qword_1E65F7A10, MEMORY[0x1E69E8878]);
  __swift_allocate_boxed_opaque_existential_1(v1);
  sub_1E5FED46C(&qword_1ED076C30, &qword_1ED076C18, &qword_1E65F7A00, MEMORY[0x1E69E86A0]);
  sub_1E65E69C8();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6354848(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = type metadata accessor for RouteSource(0);
  v1[4] = swift_task_alloc();
  v1[5] = type metadata accessor for RouteDestination(0);
  v1[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635490C, 0, 0);
}

uint64_t sub_1E635490C()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  v6 = v4[3];
  v5 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v6);
  swift_storeEnumTagMultiPayload();
  *v1 = 0;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1E730(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 72));
  v7 = swift_task_alloc();
  *(v0 + 56) = v7;
  *v7 = v0;
  v7[1] = sub_1E6354A58;
  v8 = *(v0 + 48);

  return RoutingContext.appendDestination(_:priority:)(v8, (v0 + 72), v6, v5);
}

uint64_t sub_1E6354A58()
{
  v2 = *(*v1 + 48);
  v3 = *v1;
  *(v3 + 64) = v0;

  sub_1E6355930(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E613A218, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6354BE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = type metadata accessor for RouteSource(0);
  v3[6] = swift_task_alloc();
  v3[7] = type metadata accessor for RouteDestination(0);
  v3[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6354CA8, 0, 0);
}

uint64_t sub_1E6354CA8()
{
  v2 = *(v0 + 56);
  v1 = *(v0 + 64);
  v3 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 16);
  v8 = v4[3];
  v7 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v8);
  swift_storeEnumTagMultiPayload();
  *v1 = v6;
  v1[1] = v5;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5E1D8FC(v3, v1 + *(v2 + 20), type metadata accessor for RouteSource);

  sub_1E6355930(v3, type metadata accessor for RouteSource);
  *(v1 + *(v2 + 24)) = MEMORY[0x1E69E7CD0];
  sub_1E600F5B0((v0 + 88));
  v9 = swift_task_alloc();
  *(v0 + 72) = v9;
  *v9 = v0;
  v9[1] = sub_1E6354E24;
  v10 = *(v0 + 64);

  return RoutingContext.appendDestination(_:priority:)(v10, (v0 + 88), v8, v7);
}

uint64_t sub_1E6354E24()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 80) = v0;

  sub_1E6355930(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6354FAC, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6354FAC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E635501C(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E634D5A0(a1, v1 + 16, v1 + v5);
}

uint64_t sub_1E63550F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(type metadata accessor for AppComposer(0) - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E634FC10(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1E63551AC(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E2258() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(sub_1E65D7848() - 8);
  v10 = (v8 + *(v9 + 80) + 80) & ~*(v9 + 80);
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + v7);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E5DFE6BC;

  return sub_1E6056CB8(a1, v11, v12, v1 + v6, v13, v1 + v8, v1 + v10);
}

uint64_t sub_1E6355324(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6350370(a1, v1 + v5);
}

uint64_t sub_1E6355400(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E6354294(a1, v1 + v5);
}

uint64_t sub_1E63554DC(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E635443C(a1, v1 + v5);
}

uint64_t sub_1E63555B8()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E6354848(v0 + 16);
}

uint64_t sub_1E635564C(uint64_t a1, uint64_t a2)
{
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6354BE0(a1, a2, v2 + 16);
}

uint64_t sub_1E63556F4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6353184(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E6355810(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = v5 + *(v4 + 64);
  v7 = v1 + (v6 & 0xFFFFFFFFFFFFFFF8);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16);
  v10 = *(v1 + v6);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1E5DFE6BC;

  return sub_1E63534B0(a1, v1 + v5, v10, v8, v9);
}

uint64_t sub_1E6355930(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6355990(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E63559D8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFA78C;

  return sub_1E634E110(a1, v1 + 16, v1 + v5);
}

uint64_t objectdestroy_28Tm_2()
{
  v89 = type metadata accessor for AppComposer(0);
  v92 = *(*(v89 - 1) + 80);
  swift_unknownObjectRelease();

  v93 = v0 + ((v92 + 96) & ~v92);

  v1 = v93 + v89[5];
  swift_unknownObjectRelease();
  v2 = type metadata accessor for AppEnvironment(0);
  v3 = v2[6];
  v91 = type metadata accessor for AccountService();
  v90 = *(v91[-1].Description + 1);
  v90(v1 + v3, v91);
  v4 = v2[7];
  v88 = type metadata accessor for AppStateService();
  v87 = *(v88[-1].Description + 1);
  v87(v1 + v4, v88);
  v5 = v2[8];
  v86 = type metadata accessor for ArchivedSessionService();
  v85 = *(v86[-1].Description + 1);
  v85(v1 + v5, v86);
  v6 = v2[9];
  v84 = type metadata accessor for AssetService();
  v83 = *(v84[-1].Description + 1);
  v83(v1 + v6, v84);
  v7 = v2[10];
  v82 = type metadata accessor for AwardsService();
  v81 = *(v82[-1].Description + 1);
  v81(v1 + v7, v82);
  v8 = v2[11];
  v80 = type metadata accessor for BookmarkService();
  v79 = *(v80[-1].Description + 1);
  v79(v1 + v8, v80);
  v9 = v2[12];
  v78 = type metadata accessor for CatalogService();
  v77 = *(v78[-1].Description + 1);
  v77(v1 + v9, v78);
  v10 = v2[13];
  v76 = type metadata accessor for ConfigurationService();
  v75 = *(v76[-1].Description + 1);
  v75(v1 + v10, v76);
  v11 = v2[14];
  v74 = type metadata accessor for ContentAvailabilityService();
  v73 = *(v74[-1].Description + 1);
  v73(v1 + v11, v74);
  v12 = v2[15];
  v72 = type metadata accessor for EngagementService();
  v71 = *(v72[-1].Description + 1);
  v71(v1 + v12, v72);
  v13 = v2[16];
  v70 = type metadata accessor for HealthDataService();
  v69 = *(v70[-1].Description + 1);
  v69(v1 + v13, v70);
  v14 = v2[17];
  v68 = type metadata accessor for InteropService();
  v67 = *(v68[-1].Description + 1);
  v67(v1 + v14, v68);
  v15 = v2[18];
  v66 = type metadata accessor for LocalizationService();
  v65 = *(v66[-1].Description + 1);
  v65(v1 + v15, v66);
  v16 = v2[19];
  v64 = type metadata accessor for MarketingService();
  v63 = *(v64[-1].Description + 1);
  v63(v1 + v16, v64);
  v17 = v2[20];
  v62 = type metadata accessor for MetricService();
  v61 = *(v62[-1].Description + 1);
  v61(v1 + v17, v62);
  v18 = v2[21];
  v60 = type metadata accessor for PersonalizationService();
  v59 = *(v60[-1].Description + 1);
  v59(v1 + v18, v60);
  v19 = v2[22];
  v58 = type metadata accessor for PlayerService();
  v57 = *(v58[-1].Description + 1);
  v57(v1 + v19, v58);
  v20 = v2[23];
  v56 = type metadata accessor for PrivacyPreferenceService();
  v55 = *(v56[-1].Description + 1);
  v55(v1 + v20, v56);
  v21 = v2[24];
  v54 = type metadata accessor for RecommendationService();
  v53 = *(v54[-1].Description + 1);
  v53(v1 + v21, v54);
  v22 = v2[25];
  v52 = type metadata accessor for RemoteBrowsingService();
  v51 = *(v52[-1].Description + 1);
  v51(v1 + v22, v52);
  v23 = v2[26];
  v50 = type metadata accessor for SearchService();
  v49 = *(v50[-1].Description + 1);
  v49(v1 + v23, v50);
  v24 = v2[27];
  v48 = type metadata accessor for ServiceSubscriptionService();
  v47 = *(v48[-1].Description + 1);
  v47(v1 + v24, v48);
  v25 = v2[28];
  v41 = type metadata accessor for SessionService();
  v46 = *(v41[-1].Description + 1);
  v46(v1 + v25, v41);
  v26 = v2[29];
  v27 = type metadata accessor for SharePlayService();
  v45 = *(v27[-1].Description + 1);
  v45(v1 + v26, v27);
  v28 = v2[30];
  v29 = type metadata accessor for SiriService();
  v44 = *(v29[-1].Description + 1);
  v44(v1 + v28, v29);
  v30 = v2[31];
  v31 = type metadata accessor for SyncService();
  v43 = *(v31[-1].Description + 1);
  v43(v1 + v30, v31);

  v32 = v2[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v42 = *(QueueService[-1].Description + 1);
  v42(v1 + v32, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v1 + v2[34]));

  v34 = v2[36];
  v35 = type metadata accessor for WorkoutPlanService();
  v40 = *(v35[-1].Description + 1);
  v40(v1 + v34, v35);

  v36 = v93 + v89[7];

  v37 = v36 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v90(v37 + v2[6], v91);
  v87(v37 + v2[7], v88);
  v85(v37 + v2[8], v86);
  v83(v37 + v2[9], v84);
  v81(v37 + v2[10], v82);
  v79(v37 + v2[11], v80);
  v77(v37 + v2[12], v78);
  v75(v37 + v2[13], v76);
  v73(v37 + v2[14], v74);
  v71(v37 + v2[15], v72);
  v69(v37 + v2[16], v70);
  v67(v37 + v2[17], v68);
  v65(v37 + v2[18], v66);
  v63(v37 + v2[19], v64);
  v61(v37 + v2[20], v62);
  v59(v37 + v2[21], v60);
  v57(v37 + v2[22], v58);
  v55(v37 + v2[23], v56);
  v53(v37 + v2[24], v54);
  v51(v37 + v2[25], v52);
  v49(v37 + v2[26], v50);
  v47(v37 + v2[27], v48);
  v46(v37 + v2[28], v41);
  v45(v37 + v2[29], v27);
  v44(v37 + v2[30], v29);
  v43(v37 + v2[31], v31);

  v42(v37 + v2[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v37 + v2[34]));

  v40(v37 + v2[36], v35);
  swift_unknownObjectRelease();
  if (*(v93 + v89[9] + 8) >= 0xCuLL)
  {
  }

  v38 = (v93 + v89[10]);
  if (v38[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  return swift_deallocObject();
}

uint64_t sub_1E63567A4(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 96) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E634D5A0(a1, v1 + 16, v1 + v5);
}

uint64_t static FitnessPlusFeatures.SampleContent.evaluate(inputs:)()
{
  v0 = sub_1E65DDF08();
  v3[3] = v0;
  v3[4] = sub_1E5E041A4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF0], v0);
  LOBYTE(v0) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

uint64_t sub_1E6356928()
{
  v0 = sub_1E65DDF08();
  v3[3] = v0;
  v3[4] = sub_1E5E041A4();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v3);
  (*(*(v0 - 8) + 104))(boxed_opaque_existential_1, *MEMORY[0x1E69CABF0], v0);
  LOBYTE(v0) = sub_1E65DAF58();
  __swift_destroy_boxed_opaque_existential_1(v3);
  return v0 & 1;
}

uint64_t sub_1E6356A28@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v92 = a2;
  v100 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v76 - v6;
  v7 = type metadata accessor for AppComposer(0);
  v87 = *(v7 - 8);
  v8 = v87[8];
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v76 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v86 = (&v76 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078868, &qword_1E65FDC60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v76 - v20;
  v22 = type metadata accessor for ContextMenu(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EC0, &qword_1E65FADD8);
  v98 = *(v26 - 8);
  v99 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v76 - v27;
  sub_1E63574B8(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1E5DFE50C(v21, &qword_1ED072670, &qword_1E65EB980);
    v28 = v96;
    (*(v5 + 56))(v96, 1, 1, v4);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v30 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
    *&v103 = v29;
    *(&v103 + 1) = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v103 = v15;
    *(&v103 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v32 = v97;
    sub_1E65E0898();
    sub_1E5F122D8(v28);
  }

  else
  {
    v90 = v25;
    sub_1E6359BF0(v21, v25, type metadata accessor for ContextMenu);
    sub_1E65E5148();
    v33 = sub_1E65E5138();
    v85 = v4;
    v34 = v33;
    v35 = a1;
    v36 = v86;
    sub_1E5E1DEAC(a1, v86);
    v83 = v5;
    v37 = *(v87 + 80);
    v38 = (v37 + 32) & ~v37;
    v82 = v38;
    v84 = v15;
    v39 = (v38 + v8) & 0xFFFFFFFFFFFFFFF8;
    v81 = v38 + v8;
    v40 = swift_allocObject();
    v80 = v40;
    v87 = &unk_1E65FDC98;
    *(v40 + 16) = &unk_1E65FDC98;
    *(v40 + 24) = 0;
    v79 = type metadata accessor for AppComposer;
    sub_1E6359BF0(v36, v40 + v38, type metadata accessor for AppComposer);
    *(v40 + v38 + v8) = 0;
    v41 = v40 + v39;
    v86 = sub_1E6172524;
    *(v41 + 8) = sub_1E6172524;
    *(v41 + 16) = 0;
    v42 = (v40 + ((v39 + 31) & 0xFFFFFFFFFFFFFFF8));
    v43 = MEMORY[0x1E69AB380];
    *v42 = v34;
    v42[1] = v43;
    v77 = v34;
    v44 = v43;
    v45 = v88;
    sub_1E5E1DEAC(v35, v88);
    v78 = v35;
    v46 = (v37 + 48) & ~v37;
    v47 = v46 + v8;
    v48 = swift_allocObject();
    v49 = v87;
    v48[2] = v87;
    v48[3] = 0;
    v48[4] = v34;
    v48[5] = v44;
    v50 = v45;
    v51 = v79;
    sub_1E6359BF0(v50, v48 + v46, v79);
    *(v48 + v47) = 0;
    v52 = v48 + (v47 & 0xFFFFFFFFFFFFFFF8);
    v53 = v86;
    *(v52 + 1) = v86;
    *(v52 + 2) = 0;
    v54 = v89;
    sub_1E5E1DEAC(v35, v89);
    v55 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v56[2] = v49;
    v56[3] = 0;
    v57 = v77;
    v56[4] = v77;
    v56[5] = MEMORY[0x1E69AB380];
    v58 = v51;
    sub_1E6359BF0(v54, v56 + v46, v51);
    v59 = v56 + v55;
    *v59 = v53;
    *(v59 + 1) = 0;
    v59[16] = 0;
    v60 = v91;
    sub_1E5E1DEAC(v78, v91);
    v61 = swift_allocObject();
    *(v61 + 16) = v87;
    *(v61 + 24) = 0;
    sub_1E6359BF0(v60, v61 + v82, v58);
    *&v103 = v57;
    *(&v103 + 1) = MEMORY[0x1E69AB380];
    v104 = &unk_1E65FDCA0;
    v105 = v80;
    v106 = &unk_1E65FDCA8;
    v107 = v48;
    v108 = &unk_1E65FDCB0;
    v109 = v56;
    v110 = &unk_1E65FDCB8;
    v111 = v61;
    swift_retain_n();
    v62 = v93;
    sub_1E61E66C8(v90, v92, &v103, v93);
    v15 = v84;

    v4 = v85;

    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v64 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
    v101 = v63;
    v102 = v64;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v95;
    MEMORY[0x1E69482C0](v62, v15, v65);
    v67 = v83;
    v68 = v96;
    (*(v83 + 16))(v96, v66, v4);
    (*(v67 + 56))(v68, 0, 1, v4);
    v101 = v15;
    v102 = v65;
    swift_getOpaqueTypeConformance2();
    v32 = v97;
    sub_1E65E0898();
    sub_1E5F122D8(v68);
    (*(v67 + 8))(v66, v4);
    (*(v94 + 8))(v62, v15);
    sub_1E6359C58(v90, type metadata accessor for ContextMenu);
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v70 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v101 = v69;
  v102 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v101 = v15;
  v102 = v71;
  v72 = swift_getOpaqueTypeConformance2();
  v101 = v4;
  v102 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v99;
  MEMORY[0x1E69482C0](v32, v99, v73);
  return (*(v98 + 8))(v32, v74);
}

uint64_t sub_1E63574B8@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v1 = sub_1E65D9CC8();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v24 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  sub_1E65DF6A8();
  v8 = sub_1E65D9CA8();
  v10 = v9;
  v12 = v11;
  v13 = *(v2 + 8);
  v13(v7, v1);
  if (v12)
  {
    v14 = v25;
    if (v8 == 8)
    {
      sub_1E65DF688();
      v15 = type metadata accessor for ContextMenu(0);
      v16 = (v14 + *(v15 + 20));
      sub_1E65DF6A8();
      v17 = sub_1E65D9C98();
      v19 = v18;
      v13(v5, v1);
      *v16 = v17;
      v16[1] = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073B60, &unk_1E65EE020);
      swift_storeEnumTagMultiPayload();
      return (*(*(v15 - 8) + 56))(v14, 0, 1, v15);
    }

    v21 = type metadata accessor for ContextMenu(0);
    v22 = *(*(v21 - 8) + 56);
    v23 = v14;
  }

  else
  {
    sub_1E5FEE4CC(v8, v10, 0);
    v21 = type metadata accessor for ContextMenu(0);
    v22 = *(*(v21 - 8) + 56);
    v23 = v25;
  }

  return v22(v23, 1, 1, v21);
}

uint64_t sub_1E6357748()
{
  v1 = *(v0 + 16);
  v2 = sub_1E65D7A38();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1E6357840(uint64_t *a1, unsigned int a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v40 = a5;
  v41 = a6;
  v39 = a3;
  v37 = a2;
  v45 = a10;
  v38 = a9;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078870, &qword_1E65FDC70);
  v46 = *(v12 - 8);
  v47 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v42 = &v32 - v13;
  v14 = sub_1E65DF748();
  v43 = *(v14 - 8);
  v44 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v33 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078878, &qword_1E65FDC78);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078880, &qword_1E65FDC80);
  v18 = *(v17 - 8);
  v35 = v17;
  v36 = v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v32 - v19;
  v34 = *a1;
  sub_1E5DF650C(a4, v48);
  v21 = swift_allocObject();
  sub_1E5DF599C(v48, v21 + 16);
  sub_1E65D9CC8();
  v22 = MEMORY[0x1E69CC888];
  sub_1E6359BA8(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
  sub_1E6359BA8(&qword_1EE2D7030, v22, MEMORY[0x1E69CC890]);
  sub_1E6359BA8(&qword_1EE2D7028, v22, MEMORY[0x1E69CC898]);
  sub_1E65DF758();
  type metadata accessor for ArtworkDescriptor(0);
  sub_1E6359BA8(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E65DF718();
  v23 = v33;
  sub_1E65DF738();
  v24 = swift_allocObject();
  *(v24 + 16) = v39;
  v25 = v41;
  *(v24 + 24) = v40;
  *(v24 + 32) = v25;
  type metadata accessor for AppFeature(0);
  sub_1E6359BA8(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1ED078888, &qword_1ED078880, &qword_1E65FDC80, MEMORY[0x1E699E730]);

  v26 = v42;
  v27 = v35;
  sub_1E65E4DF8();
  v28 = v23;
  v29 = v27;
  v30 = sub_1E65E4F08();
  (*(v46 + 8))(v26, v47);
  (*(v43 + 8))(v28, v44);
  (*(v36 + 8))(v20, v29);
  return v30;
}

uint64_t sub_1E6357D78@<X0>(uint64_t a1@<X1>, char *a2@<X2>, uint64_t a3@<X8>)
{
  v92 = a2;
  v100 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v95 = &v76 - v6;
  v7 = type metadata accessor for AppComposer(0);
  v87 = *(v7 - 8);
  v8 = v87[8];
  v9 = MEMORY[0x1EEE9AC00](v7 - 8);
  v91 = &v76 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v89 = &v76 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v88 = &v76 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v86 = (&v76 - v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v94 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v93 = &v76 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078868, &qword_1E65FDC60);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v96 = &v76 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v76 - v20;
  v22 = type metadata accessor for ContextMenu(0);
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v76 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077EC0, &qword_1E65FADD8);
  v98 = *(v26 - 8);
  v99 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v97 = &v76 - v27;
  sub_1E63574B8(v21);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_1E5DFE50C(v21, &qword_1ED072670, &qword_1E65EB980);
    v28 = v96;
    (*(v5 + 56))(v96, 1, 1, v4);
    v29 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v30 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
    *&v103 = v29;
    *(&v103 + 1) = v30;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    *&v103 = v15;
    *(&v103 + 1) = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v32 = v97;
    sub_1E65E0898();
    sub_1E5F122D8(v28);
  }

  else
  {
    v90 = v25;
    sub_1E6359BF0(v21, v25, type metadata accessor for ContextMenu);
    sub_1E65E5148();
    v33 = sub_1E65E5138();
    v85 = v4;
    v34 = v33;
    v35 = a1;
    v36 = v86;
    sub_1E5E1DEAC(a1, v86);
    v83 = v5;
    v37 = *(v87 + 80);
    v38 = (v37 + 32) & ~v37;
    v82 = v38;
    v84 = v15;
    v39 = (v38 + v8) & 0xFFFFFFFFFFFFFFF8;
    v81 = v38 + v8;
    v40 = swift_allocObject();
    v80 = v40;
    v87 = &unk_1E65FDC68;
    *(v40 + 16) = &unk_1E65FDC68;
    *(v40 + 24) = 0;
    v79 = type metadata accessor for AppComposer;
    sub_1E6359BF0(v36, v40 + v38, type metadata accessor for AppComposer);
    *(v40 + v38 + v8) = 0;
    v41 = v40 + v39;
    v86 = sub_1E6172524;
    *(v41 + 8) = sub_1E6172524;
    *(v41 + 16) = 0;
    v42 = (v40 + ((v39 + 31) & 0xFFFFFFFFFFFFFFF8));
    v43 = MEMORY[0x1E69AB380];
    *v42 = v34;
    v42[1] = v43;
    v77 = v34;
    v44 = v43;
    v45 = v88;
    sub_1E5E1DEAC(v35, v88);
    v78 = v35;
    v46 = (v37 + 48) & ~v37;
    v47 = v46 + v8;
    v48 = swift_allocObject();
    v49 = v87;
    v48[2] = v87;
    v48[3] = 0;
    v48[4] = v34;
    v48[5] = v44;
    v50 = v45;
    v51 = v79;
    sub_1E6359BF0(v50, v48 + v46, v79);
    *(v48 + v47) = 0;
    v52 = v48 + (v47 & 0xFFFFFFFFFFFFFFF8);
    v53 = v86;
    *(v52 + 1) = v86;
    *(v52 + 2) = 0;
    v54 = v89;
    sub_1E5E1DEAC(v35, v89);
    v55 = (v47 + 7) & 0xFFFFFFFFFFFFFFF8;
    v56 = swift_allocObject();
    v56[2] = v49;
    v56[3] = 0;
    v57 = v77;
    v56[4] = v77;
    v56[5] = MEMORY[0x1E69AB380];
    v58 = v51;
    sub_1E6359BF0(v54, v56 + v46, v51);
    v59 = v56 + v55;
    *v59 = v53;
    *(v59 + 1) = 0;
    v59[16] = 0;
    v60 = v91;
    sub_1E5E1DEAC(v78, v91);
    v61 = swift_allocObject();
    *(v61 + 16) = v87;
    *(v61 + 24) = 0;
    sub_1E6359BF0(v60, v61 + v82, v58);
    *&v103 = v57;
    *(&v103 + 1) = MEMORY[0x1E69AB380];
    v104 = &unk_1E65EB918;
    v105 = v80;
    v106 = &unk_1E65FA770;
    v107 = v48;
    v108 = &unk_1E65EB920;
    v109 = v56;
    v110 = &unk_1E65FA780;
    v111 = v61;
    swift_retain_n();
    v62 = v93;
    sub_1E61E66C8(v90, v92, &v103, v93);
    v15 = v84;

    v4 = v85;

    v63 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
    v64 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
    v101 = v63;
    v102 = v64;
    v65 = swift_getOpaqueTypeConformance2();
    v66 = v95;
    MEMORY[0x1E69482C0](v62, v15, v65);
    v67 = v83;
    v68 = v96;
    (*(v83 + 16))(v96, v66, v4);
    (*(v67 + 56))(v68, 0, 1, v4);
    v101 = v15;
    v102 = v65;
    swift_getOpaqueTypeConformance2();
    v32 = v97;
    sub_1E65E0898();
    sub_1E5F122D8(v68);
    (*(v67 + 8))(v66, v4);
    (*(v94 + 8))(v62, v15);
    sub_1E6359C58(v90, type metadata accessor for ContextMenu);
  }

  v69 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v70 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v101 = v69;
  v102 = v70;
  v71 = swift_getOpaqueTypeConformance2();
  v101 = v15;
  v102 = v71;
  v72 = swift_getOpaqueTypeConformance2();
  v101 = v4;
  v102 = v72;
  v73 = swift_getOpaqueTypeConformance2();
  v74 = v99;
  MEMORY[0x1E69482C0](v32, v99, v73);
  return (*(v98 + 8))(v32, v74);
}

uint64_t sub_1E6358828(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = type metadata accessor for RouteSource(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for RouteDestination(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6358910, 0, 0);
}

uint64_t sub_1E6358910(uint64_t a1)
{
  v2 = sub_1E65D9CA8();
  if (v4)
  {
    if (v2 <= 3u)
    {
      if (v2 > 1u)
      {
        if (v2 != 2)
        {
          v27 = *(v1 + 72);
          v28 = *(v1 + 40);
          v29 = *(v1 + 48);
          v30 = *(v1 + 24);
          v9 = v30[3];
          v10 = v30[4];
          __swift_project_boxed_opaque_existential_1(v30, v9);
          v31 = sub_1E65D9C98();
          v33 = v32;
          swift_storeEnumTagMultiPayload();
          *v27 = v31;
          v27[1] = v33;
          type metadata accessor for PlaylistType(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          sub_1E6359BF0(v28, v27 + *(v29 + 20), type metadata accessor for RouteSource);
          *(v27 + *(v29 + 24)) = MEMORY[0x1E69E7CD0];
          sub_1E600F5B0((v1 + 154));
          v34 = swift_task_alloc();
          *(v1 + 104) = v34;
          *v34 = v1;
          v34[1] = sub_1E6358FAC;
          v15 = *(v1 + 72);
          v16 = (v1 + 154);
          goto LABEL_16;
        }
      }

      else if (v2)
      {
        v19 = *(v1 + 80);
        v20 = *(v1 + 40);
        v21 = *(v1 + 48);
        v22 = *(v1 + 24);
        v9 = v22[3];
        v10 = v22[4];
        __swift_project_boxed_opaque_existential_1(v22, v9);
        v23 = sub_1E65D9C98();
        v25 = v24;
        swift_storeEnumTagMultiPayload();
        *v19 = v23;
        v19[1] = v25;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E6359BF0(v20, v19 + *(v21 + 20), type metadata accessor for RouteSource);
        *(v19 + *(v21 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v1 + 155));
        v26 = swift_task_alloc();
        *(v1 + 88) = v26;
        *v26 = v1;
        v26[1] = sub_1E6358E08;
        v15 = *(v1 + 80);
        v16 = (v1 + 155);
        goto LABEL_16;
      }
    }

    else if (v2 - 5 >= 3)
    {
      if (v2 == 4)
      {
        v5 = *(v1 + 64);
        v6 = *(v1 + 40);
        v7 = *(v1 + 48);
        v8 = *(v1 + 24);
        v9 = v8[3];
        v10 = v8[4];
        __swift_project_boxed_opaque_existential_1(v8, v9);
        v11 = sub_1E65D9C98();
        v13 = v12;
        swift_storeEnumTagMultiPayload();
        *v5 = v11;
        v5[1] = v13;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E6359BF0(v6, v5 + *(v7 + 20), type metadata accessor for RouteSource);
        *(v5 + *(v7 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v1 + 153));
        v14 = swift_task_alloc();
        *(v1 + 120) = v14;
        *v14 = v1;
        v14[1] = sub_1E6359150;
        v15 = *(v1 + 64);
        v16 = (v1 + 153);
      }

      else
      {
        v36 = *(v1 + 48);
        v35 = *(v1 + 56);
        v37 = *(v1 + 40);
        v38 = *(v1 + 24);
        v9 = v38[3];
        v10 = v38[4];
        __swift_project_boxed_opaque_existential_1(v38, v9);
        v39 = sub_1E65D9C98();
        v41 = v40;
        swift_storeEnumTagMultiPayload();
        *v35 = v39;
        v35[1] = v41;
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        sub_1E6359BF0(v37, v35 + *(v36 + 20), type metadata accessor for RouteSource);
        *(v35 + *(v36 + 24)) = MEMORY[0x1E69E7CD0];
        sub_1E600F5B0((v1 + 152));
        v42 = swift_task_alloc();
        *(v1 + 136) = v42;
        *v42 = v1;
        v42[1] = sub_1E63592F4;
        v15 = *(v1 + 56);
        v16 = (v1 + 152);
      }

LABEL_16:

      return RoutingContext.appendDestination(_:priority:)(v15, v16, v9, v10);
    }
  }

  else
  {
    sub_1E5FEE4CC(v2, v3, 0);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1E6358E08()
{
  v2 = *(*v1 + 80);
  v3 = *v1;
  *(v3 + 96) = v0;

  sub_1E6359C58(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6080880, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6358FAC()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 112) = v0;

  sub_1E6359C58(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E608091C, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6359150()
{
  v2 = *(*v1 + 64);
  v3 = *v1;
  *(v3 + 128) = v0;

  sub_1E6359C58(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E60809B8, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E63592F4()
{
  v2 = *(*v1 + 56);
  v3 = *v1;
  *(v3 + 144) = v0;

  sub_1E6359C58(v2, type metadata accessor for RouteDestination);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6080A54, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6359498@<X0>(uint64_t a1@<X0>, unsigned int a2@<W1>, void (*a3)(uint64_t)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v41 = a4;
  v42 = a3;
  v37 = a2;
  v45 = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073FF0, &qword_1E65EF190);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v44 = &v36[-v7];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073F78, &qword_1E65EF0F8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = &v36[-v9];
  v38 = sub_1E65E05C8();
  v10 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v43 = &v36[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_1E65E07B8();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v36[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v36[-v15];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v36[-v18];
  v20 = sub_1E65D7848();
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v36[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v19);
  sub_1E5DFE50C(v16, &qword_1ED071F78, &unk_1E65EA3F0);
  v24 = *(v21 + 48);
  v25 = v24(v19, 1, v20);
  v40 = v23;
  if (v25 == 1)
  {
    sub_1E65D77C8();
    if (v24(v19, 1, v20) != 1)
    {
      sub_1E5DFE50C(v19, &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v21 + 32))(v23, v19, v20);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  sub_1E65E0668();
  v26 = sub_1E65E06A8();
  v27 = v43;
  if (*(v26 + 16) && (v28 = sub_1E64290E4(v37), (v29 & 1) != 0))
  {
    v31 = v38;
    v30 = v39;
    (*(v10 + 16))(v39, *(v26 + 56) + *(v10 + 72) * v28, v38);

    (*(v10 + 56))(v30, 0, 1, v31);
    (*(v10 + 32))(v27, v30, v31);
  }

  else
  {

    v33 = v38;
    v32 = v39;
    (*(v10 + 56))(v39, 1, 1, v38);
    sub_1E65E0598();
    if ((*(v10 + 48))(v32, 1, v33) != 1)
    {
      sub_1E5DFE50C(v32, &qword_1ED073F78, &qword_1E65EF0F8);
    }
  }

  v42(a1);
  type metadata accessor for ArtworkDescriptor(0);
  sub_1E65D9CC8();
  sub_1E6359BA8(&qword_1EE2D9E98, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EB0, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6359BA8(&qword_1EE2D9EA8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v34 = MEMORY[0x1E69CC888];
  sub_1E6359BA8(&qword_1EE2D7018, MEMORY[0x1E69CC888], MEMORY[0x1E69CC8A8]);
  sub_1E6359BA8(&qword_1EE2D7030, v34, MEMORY[0x1E69CC890]);
  sub_1E6359BA8(&qword_1EE2D7028, v34, MEMORY[0x1E69CC898]);
  return sub_1E65DF6E8();
}

uint64_t sub_1E6359B04(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6358828(a1, v1 + 16);
}

uint64_t sub_1E6359BA8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6359BF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E6359C58(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E6359CB8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFA78C;

  return sub_1E6358828(a1, v1 + 16);
}

uint64_t sub_1E6359D5C()
{
  sub_1E635A09C(v0 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment);

  return swift_deallocClassInstance();
}

uint64_t sub_1E6359DE8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1E6359E30(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppStateResolver.ResolverKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE5)
  {
    goto LABEL_17;
  }

  if (a2 + 27 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 27) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 27;
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

      return (*a1 | (v4 << 8)) - 27;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 27;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1C;
  v8 = v6 - 28;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppStateResolver.ResolverKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 27 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 27) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE5)
  {
    v4 = 0;
  }

  if (a2 > 0xE4)
  {
    v5 = ((a2 - 229) >> 8) + 1;
    *result = a2 + 27;
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
    *result = a2 + 27;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1E6359FE0()
{
  result = qword_1EE2DA5D8;
  if (!qword_1EE2DA5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2DA5D8);
  }

  return result;
}

uint64_t sub_1E635A09C(uint64_t a1)
{
  v2 = type metadata accessor for AppEnvironment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t AppComposer.awardDetailViewBuilder(for:currentRoutingContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v132 = a3;
  v126 = a2;
  v127 = a1;
  v120 = a4;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0771F0, &unk_1E65FA7E0);
  v117 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v112 = &v104 - v6;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B40, &qword_1E65F9808);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v104 - v7;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0770C8, &unk_1E65FA420);
  v8 = MEMORY[0x1EEE9AC00](v119);
  v114 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v118 = &v104 - v10;
  v131 = sub_1E65DBE88();
  v130 = *(v131 - 8);
  v111 = *(v130 + 64);
  v11 = MEMORY[0x1EEE9AC00](v131);
  v110 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v129 = &v104 - v13;
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = MEMORY[0x1EEE9AC00](v14 - 8);
  v109 = &v104 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v17);
  v125 = &v104 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = &v104 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v104 - v22;
  v24 = sub_1E65D7048();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v104 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v141 = a1;
  *(&v141 + 1) = a2;
  sub_1E65D7038();
  sub_1E5F9AEA8();
  v28 = sub_1E65E6698();
  (*(v25 + 8))(v27, v24);
  *&v141 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074F18, &qword_1E65F1150);
  sub_1E5FED46C(&qword_1EE2D4838, &qword_1ED074F18, &qword_1E65F1150, MEMORY[0x1E69E6310]);
  v29 = sub_1E65E5B68();
  v31 = v30;

  v32 = swift_allocObject();
  *(v32 + 16) = v29;
  *(v32 + 24) = v31;
  v105 = v32;
  sub_1E65E5148();
  v33 = sub_1E65E5138();
  v137 = type metadata accessor for AppComposer;
  v138 = v33;
  v34 = v134;
  v123 = v23;
  sub_1E5E1D964(v134, v23, type metadata accessor for AppComposer);
  v133 = *(v15 + 80);
  v35 = (v133 + 32) & ~v133;
  v106 = v35;
  v107 = v16;
  v121 = v133 | 7;
  v36 = (v35 + v16) & 0xFFFFFFFFFFFFFFF8;
  v108 = v35 + v16;
  v37 = swift_allocObject();
  *(v37 + 16) = &unk_1E65FDD98;
  *(v37 + 24) = v32;
  v139 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v23, v37 + v35, type metadata accessor for AppComposer);
  *(v37 + v35 + v16) = 0;
  v38 = v37 + v36;
  v136 = v37;
  v122 = sub_1E6172524;
  *(v38 + 8) = sub_1E6172524;
  *(v38 + 16) = 0;
  v39 = (v37 + ((v36 + 31) & 0xFFFFFFFFFFFFFFF8));
  v40 = MEMORY[0x1E69AB380];
  v41 = v138;
  *v39 = v138;
  v39[1] = v40;
  v42 = v34;
  v43 = v34;
  v44 = v124;
  v45 = v137;
  sub_1E5E1D964(v42, v124, v137);
  v46 = (v133 + 48) & ~v133;
  v47 = swift_allocObject();
  v48 = v105;
  v47[2] = &unk_1E65FDD98;
  v47[3] = v48;
  v47[4] = v41;
  v47[5] = MEMORY[0x1E69AB380];
  v49 = v47;
  sub_1E5E1E798(v44, v47 + v46, v139);
  v135 = v49;
  *(v49 + v46 + v16) = 0;
  v50 = v49 + ((v46 + v16) & 0xFFFFFFFFFFFFFFF8);
  *(v50 + 1) = v122;
  *(v50 + 2) = 0;
  v51 = v125;
  sub_1E5E1D964(v43, v125, v45);
  v52 = (v46 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v53 = swift_allocObject();
  v53[2] = &unk_1E65FDD98;
  v53[3] = v48;
  v54 = v48;
  v55 = v138;
  v53[4] = v138;
  v53[5] = MEMORY[0x1E69AB380];
  v56 = v53 + v46;
  v57 = v139;
  sub_1E5E1E798(v51, v56, v139);
  v58 = v53 + v52;
  v128 = v53;
  *v58 = v122;
  *(v58 + 1) = 0;
  v58[16] = 0;
  v59 = v109;
  v60 = v137;
  sub_1E5E1D964(v43, v109, v137);
  v61 = swift_allocObject();
  *(v61 + 16) = &unk_1E65FDD98;
  *(v61 + 24) = v54;
  v62 = v61;
  v108 = v61;
  sub_1E5E1E798(v59, v61 + v106, v57);
  *&v141 = v55;
  *(&v141 + 1) = MEMORY[0x1E69AB380];
  *&v142 = &unk_1E65EB918;
  *(&v142 + 1) = v136;
  *&v143 = &unk_1E65FA770;
  *(&v143 + 1) = v135;
  *&v144 = &unk_1E65EB920;
  *(&v144 + 1) = v53;
  *&v145 = &unk_1E65FA780;
  *(&v145 + 1) = v62;
  swift_retain_n();
  swift_retain_n();
  v63 = sub_1E635B33C(v127, v126, v132, &v141);
  v64 = v43;
  v65 = v123;
  sub_1E5E1D964(v43, v123, v60);
  v66 = ((v133 + 16) & ~v133) + v107;
  v133 = (v133 + 16) & ~v133;
  v67 = v133;
  v68 = swift_allocObject();
  sub_1E5E1E798(v65, v68 + v67, v57);
  v122 = v63;

  v69 = v129;
  sub_1E65DBE78();
  v70 = v65;
  sub_1E5E1D964(v64, v65, v60);
  v71 = v130;
  v72 = v110;
  v73 = v131;
  (*(v130 + 16))(v110, v69, v131);
  v74 = *(v71 + 80);
  v109 = v66;
  v75 = (v66 + v74) & ~v74;
  v76 = (v111 + v75 + 7) & 0xFFFFFFFFFFFFFFF8;
  v77 = swift_allocObject();
  sub_1E5E1E798(v70, v77 + v133, v139);
  (*(v71 + 32))(v77 + v75, v72, v73);
  v111 = v77;
  v78 = (v77 + v76);
  v79 = v127;
  v80 = v126;
  *v78 = v127;
  v78[1] = v80;
  v81 = (v77 + ((v76 + 23) & 0xFFFFFFFFFFFFFFF8));
  v82 = v145;
  v83 = v143;
  v81[3] = v144;
  v81[4] = v82;
  v84 = v142;
  *v81 = v141;
  v81[1] = v84;
  v81[2] = v83;
  v85 = v134;
  v86 = v124;
  v87 = v137;
  sub_1E5E1D964(v134, v124, v137);
  v88 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v89 = swift_allocObject();
  v90 = v133;
  v91 = v139;
  sub_1E5E1E798(v86, v89 + v133, v139);
  v92 = (v89 + v88);
  *v92 = v79;
  v92[1] = v80;
  v93 = v125;
  sub_1E5E1D964(v85, v125, v87);
  sub_1E5DF650C(v132, &v140);
  v94 = swift_allocObject();
  sub_1E5E1E798(v93, v94 + v90, v91);
  *(v94 + v88) = v122;
  sub_1E5DF599C(&v140, v94 + ((v88 + 15) & 0xFFFFFFFFFFFFFFF8));
  swift_bridgeObjectRetain_n();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED076A30, &qword_1E65F7668);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  sub_1E61FDE30();
  v95 = v112;
  sub_1E65DBA08();
  v96 = v123;
  sub_1E5E1D964(v134, v123, v137);
  v97 = swift_allocObject();
  sub_1E5E1E798(v96, v97 + v133, v139);
  sub_1E5FED46C(&unk_1ED077B50, &qword_1ED0771F0, &unk_1E65FA7E0, MEMORY[0x1E699D1A8]);
  v98 = v113;
  v99 = v116;
  sub_1E6259D5C(sub_1E5FF0278, v97, v116);

  (*(v117 + 8))(v95, v99);
  v100 = sub_1E627312C();
  v101 = v114;
  sub_1E630FCD8(&v141, v115, v100, v114);

  sub_1E5DFE50C(v98, &unk_1ED077B40, &qword_1E65F9808);
  (*(v130 + 8))(v129, v131);
  sub_1E6273064();
  v102 = v118;
  sub_1E5FEE4C8();
  sub_1E5DFE50C(v101, &qword_1ED0770C8, &unk_1E65FA420);
  sub_1E5FEE4C8();
  return sub_1E5DFE50C(v102, &qword_1ED0770C8, &unk_1E65FA420);
}

uint64_t sub_1E635AEDC(uint64_t a1, uint64_t a2, uint64_t a3)
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

  return MEMORY[0x1EEE6DFA0](sub_1E635B024, 0, 0);
}

uint64_t sub_1E635B024()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v14 = v0[2];
  v5 = *MEMORY[0x1E69CBD70];
  v6 = sub_1E65D8F38();
  v7 = *(v6 - 8);
  (*(v7 + 104))(v2, v5, v6);
  (*(v7 + 56))(v2, 0, 1, v6);
  v8 = sub_1E65D74E8();
  (*(*(v8 - 8) + 56))(v1, 1, 1, v8);
  v9 = sub_1E65D9908();
  (*(*(v9 - 8) + 56))(v3, 1, 1, v9);
  v10 = sub_1E65D9F88();
  (*(*(v10 - 8) + 56))(v4, 1, 1, v10);
  swift_bridgeObjectRetain_n();
  sub_1E65D7A28();
  v11 = sub_1E65D7A38();
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E635B290(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E635AEDC(a1, v5, v4);
}

uint64_t sub_1E635B33C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v5 = v4;
  v79 = a2;
  v81 = a1;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072710, &qword_1E65EBB90);
  v70 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v68 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077D10, &unk_1E65FAA50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v61 = v55 - v12;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072718, &qword_1E65EBB98);
  v69 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = v55 - v13;
  v14 = type metadata accessor for AppComposer(0);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v14 - 8);
  v65 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v82 = v55 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v55 - v21;
  v24 = v23;
  v60 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v26 = v55 - v25;
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_1E65E68A8();

  *&v88 = 0xD00000000000001ELL;
  *(&v88 + 1) = 0x80000001E6616500;
  MEMORY[0x1E694D7C0](a1, a2);
  v63 = v88;
  sub_1E5DF650C(a3, &v88);
  v84 = swift_allocObject();
  sub_1E5DF599C(&v88, v84 + 16);
  sub_1E5E1D964(v4, v26, type metadata accessor for AppComposer);
  v55[10] = *a4;
  v55[11] = a4[3];
  v55[12] = a4[5];
  v55[13] = a4[7];
  v55[14] = a4[9];
  v27 = *(v15 + 80);
  v28 = (v27 + 16) & ~v27;
  v29 = (v28 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v30 = swift_allocObject();
  v64 = v30;
  sub_1E5E1E798(v26, v30 + v28, type metadata accessor for AppComposer);
  v31 = (v30 + v29);
  v32 = *(a4 + 3);
  v31[2] = *(a4 + 2);
  v31[3] = v32;
  v31[4] = *(a4 + 4);
  v33 = *(a4 + 1);
  *v31 = *a4;
  v31[1] = v33;
  v34 = v5;
  v58 = type metadata accessor for AppComposer;
  sub_1E5E1D964(v5, v22, type metadata accessor for AppComposer);
  v57 = v27;
  v35 = swift_allocObject();
  v83 = v35;
  v59 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v22, v35 + v28, type metadata accessor for AppComposer);
  v36 = (v35 + v29);
  v37 = v79;
  *v36 = v81;
  v36[1] = v37;
  v56 = v34;
  v38 = v82;
  sub_1E5E1D964(v34, v82, type metadata accessor for AppComposer);
  v80 = swift_allocObject();
  sub_1E5E1E798(v38, v80 + v28, type metadata accessor for AppComposer);
  v62 = *v34;
  v82 = type metadata accessor for ActionButtonDescriptor(0);
  v81 = type metadata accessor for ArtworkDescriptor(0);
  v78 = type metadata accessor for ContextMenu(0);
  v77 = type metadata accessor for ItemContext(0);
  v76 = type metadata accessor for ItemMetrics(0);
  v55[9] = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v75 = type metadata accessor for SectionMetrics(0);
  v55[8] = type metadata accessor for ViewDescriptor(0);
  v74 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v73 = sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v72 = sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v55[7] = sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v55[6] = sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v55[5] = sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  v55[4] = sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  v55[3] = sub_1E6364AD4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v55[2] = sub_1E6364AD4(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  v55[1] = sub_1E5DF11E0();
  v55[0] = sub_1E5DF1338();
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  swift_unknownObjectRetain();

  sub_1E65DC178();
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077D20, &qword_1E65FAA70);

  v40 = sub_1E65DC168();
  v86 = v39;
  v87 = sub_1E5FED46C(&qword_1EE2D6BA8, &qword_1ED077D20, &qword_1E65FAA70, MEMORY[0x1E699D718]);
  v85 = v40;
  v41 = v66;
  sub_1E65DC248();
  v42 = v65;
  sub_1E5E1D964(v56, v65, v58);
  v43 = (v57 + 32) & ~v57;
  v44 = (v60 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = swift_allocObject();
  v46 = v63;
  *(v45 + 16) = v63;
  sub_1E5E1E798(v42, v45 + v43, v59);
  v47 = (v45 + v44);
  *v47 = sub_1E5F8AA74;
  v47[1] = 0;
  *(swift_allocObject() + 16) = v46;
  type metadata accessor for AppFeature(0);
  sub_1E6364AD4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  sub_1E5FED46C(&qword_1EE2D6BA0, &qword_1ED072718, &qword_1E65EBB98, MEMORY[0x1E699D758]);

  v48 = v68;
  v49 = v67;
  sub_1E65E4DE8();
  v50 = swift_allocObject();
  v51 = v64;
  *(v50 + 16) = sub_1E63647F4;
  *(v50 + 24) = v51;

  sub_1E65E4CC8();
  v52 = swift_allocObject();
  *(v52 + 16) = sub_1E5FE9CE8;
  *(v52 + 24) = v50;

  v53 = sub_1E65E4F08();

  (*(v70 + 8))(v48, v71);
  (*(v69 + 8))(v41, v49);
  return v53;
}

uint64_t sub_1E635C044(void *a1, uint64_t (*a2)(uint64_t a1), uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v40 = a3;
  v41 = a4;
  v39 = a2;
  v7 = type metadata accessor for AppComposer(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v37 = v9;
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED078890, &qword_1E65FDE10);
  v45 = *(v11 - 8);
  v46 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v48 = &v37 - v12;
  v13 = sub_1E65DBE88();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1E65DBC98();
  v44 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  v19 = *a1;
  v42 = v18;
  v43 = v19;
  (*(v14 + 16))(v16, v39, v13);
  sub_1E65DBC88();
  sub_1E5E1D964(a1, v10, type metadata accessor for AppComposer);
  v20 = *(v8 + 80);
  v21 = swift_allocObject();
  v23 = v40;
  v22 = v41;
  *(v21 + 16) = v40;
  *(v21 + 24) = v22;
  v39 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v10, v21 + ((v20 + 32) & ~v20), type metadata accessor for AppComposer);
  v24 = swift_allocObject();
  *(v24 + 16) = v23;
  *(v24 + 24) = v22;
  type metadata accessor for AppFeature(0);
  sub_1E6364AD4(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v40 = sub_1E6364AD4(&qword_1ED078898, MEMORY[0x1E699D250], MEMORY[0x1E699D248]);
  swift_bridgeObjectRetain_n();
  sub_1E65E4DE8();
  sub_1E5E1D964(v38, v10, type metadata accessor for AppComposer);
  v41 = a5[9];
  v25 = (v20 + 16) & ~v20;
  v26 = (v37 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  sub_1E5E1E798(v10, v27 + v25, v39);
  v28 = (v27 + v26);
  v29 = *(a5 + 3);
  v28[2] = *(a5 + 2);
  v28[3] = v29;
  v28[4] = *(a5 + 4);
  v30 = *(a5 + 1);
  *v28 = *a5;
  v28[1] = v30;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1E6360144;
  *(v31 + 24) = v27;

  v32 = v42;
  v34 = v47;
  v33 = v48;
  v35 = sub_1E65E4F08();

  (*(v45 + 8))(v33, v46);
  (*(v44 + 8))(v32, v34);
  return v35;
}

uint64_t sub_1E635C574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v9 = sub_1E65DBD88();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v26 - v14;
  v16 = sub_1E65DBBC8();
  MEMORY[0x1EEE9AC00](v16 - 8);
  v17 = *(a4 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  v26 = a5;
  if (v17 <= 1 || v17 == 3)
  {
    sub_1E65DBBB8();
    v18 = type metadata accessor for AppState(0);
    v19 = *(a1 + *(v18 + 68) + 8);
    if (*(v19 + 16))
    {
      v20 = sub_1E6215038(v27, a3);
      if (v21)
      {
        sub_1E5E06368(*(*(v19 + 56) + 8 * v20));
      }
    }

    v22 = *(a1 + *(v18 + 56) + 8);
    if (*(v22 + 16) && (v23 = sub_1E6215038(v27, a3), (v24 & 1) != 0))
    {
      sub_1E5E1D964(*(v22 + 56) + *(v10 + 72) * v23, v13, MEMORY[0x1E699D2D0]);
      sub_1E5E1E798(v13, v15, MEMORY[0x1E699D2D0]);
    }

    else
    {
      swift_storeEnumTagMultiPayload();
    }

    return sub_1E65DBAE8();
  }

  else
  {
    result = sub_1E65E69D8();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E635C834(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0788A0, &qword_1E65FDE20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;

  v10 = sub_1E65DBAD8();
  v11 = a1 + *(type metadata accessor for AppState(0) + 68);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v11 + 8);
  sub_1E64208FC(v10, a3, a4, isUniquelyReferenced_nonNull_native);

  *(v11 + 8) = v16;

  sub_1E65DBAC8();
  v13 = sub_1E65DBD88();
  (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  return sub_1E64088F4(v9, a3, a4);
}

uint64_t sub_1E635C9A4(char *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - v7;
  v9 = *a1;
  v10 = sub_1E65E60A8();
  (*(*(v10 - 8) + 56))(v8, 1, 1, v10);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v9;
  v12 = *a4;
  *(v11 + 56) = *(a4 + 1);
  v13 = *(a4 + 3);
  *(v11 + 72) = *(a4 + 2);
  *(v11 + 88) = v13;
  *(v11 + 104) = *(a4 + 4);
  *(v11 + 40) = v12;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E65FDE18, v11);
}

uint64_t sub_1E635CB24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v145 = a3;
  v139 = a2;
  v133 = a4;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074408, &qword_1E65F0B70);
  v125 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v141 = v108 - v5;
  v148 = sub_1E65D76F8();
  v138 = *(v148 - 8);
  v122 = *(v138 + 64);
  v6 = MEMORY[0x1EEE9AC00](v148);
  v147 = v108 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v149 = v108 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074410, &qword_1E65F0B78);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v140 = v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v150 = v108 - v12;
  v13 = type metadata accessor for AppComposer(0);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13 - 8);
  v136 = v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v126 = v108 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v137 = v108 - v20;
  v22 = v21;
  MEMORY[0x1EEE9AC00](v19);
  v24 = v108 - v23;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074380, &qword_1E65F0970);
  v132 = *(v131 - 8);
  v25 = MEMORY[0x1EEE9AC00](v131);
  v127 = v108 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v128 = v108 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v129 = v108 - v30;
  MEMORY[0x1EEE9AC00](v29);
  v130 = v108 - v31;
  sub_1E65E5148();
  v32 = sub_1E65E5138();
  v134 = type metadata accessor for AppComposer;
  v142 = a1;
  v33 = v24;
  v124 = v24;
  sub_1E5E1D964(a1, v24, type metadata accessor for AppComposer);
  v34 = *(v14 + 80);
  v35 = (v34 + 32) & ~v34;
  v36 = v35;
  v123 = v35;
  v37 = v22;
  v120 = v22;
  v109 = v34 | 7;
  v38 = v34;
  v39 = (v35 + v22) & 0xFFFFFFFFFFFFFFF8;
  v40 = v35 + v22;
  v121 = v40;
  v41 = swift_allocObject();
  v118 = &unk_1E65FDDC0;
  *(v41 + 16) = &unk_1E65FDDC0;
  *(v41 + 24) = 0;
  sub_1E5E1E798(v33, v41 + v36, type metadata accessor for AppComposer);
  *(v41 + v40) = 0;
  v42 = v41 + v39;
  v146 = v41;
  v117 = sub_1E6172524;
  *(v42 + 8) = sub_1E6172524;
  *(v42 + 16) = 0;
  v43 = (v41 + ((v39 + 31) & 0xFFFFFFFFFFFFFFF8));
  v44 = MEMORY[0x1E69AB380];
  v151 = v32;
  *v43 = v32;
  v43[1] = v44;
  v45 = a1;
  v46 = v137;
  v47 = v134;
  sub_1E5E1D964(v45, v137, v134);
  v119 = v38;
  v48 = (v38 + 48) & ~v38;
  v49 = swift_allocObject();
  v50 = v118;
  v49[2] = v118;
  v49[3] = 0;
  v49[4] = v32;
  v49[5] = MEMORY[0x1E69AB380];
  v51 = v49;
  sub_1E5E1E798(v46, v49 + v48, type metadata accessor for AppComposer);
  v144 = v51;
  *(v51 + v48 + v37) = 0;
  v52 = v51 + ((v48 + v37) & 0xFFFFFFFFFFFFFFF8);
  v53 = v117;
  *(v52 + 1) = v117;
  *(v52 + 2) = 0;
  v54 = v126;
  sub_1E5E1D964(v142, v126, v47);
  v55 = (v48 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v56[2] = v50;
  v56[3] = 0;
  v57 = v50;
  v56[4] = v151;
  v56[5] = MEMORY[0x1E69AB380];
  v58 = v56 + v48;
  v59 = v56;
  v143 = v56;
  sub_1E5E1E798(v54, v58, type metadata accessor for AppComposer);
  v60 = v59 + v55;
  *v60 = v53;
  *(v60 + 1) = 0;
  v60[16] = 0;
  v61 = v142;
  v62 = v136;
  sub_1E5E1D964(v142, v136, v47);
  v63 = swift_allocObject();
  v121 = v63;
  *(v63 + 16) = v57;
  *(v63 + 24) = 0;
  sub_1E5E1E798(v62, v63 + v123, type metadata accessor for AppComposer);
  v64 = v61;
  v65 = v124;
  sub_1E5E1D964(v61, v124, v47);
  sub_1E5DF650C(v145, &v153);
  v66 = ((v119 + 16) & ~v119) + v120;
  v67 = (v119 + 16) & ~v119;
  v136 = (v66 + 7) & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  v126 = v68;
  sub_1E5E1E798(v65, v68 + v67, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v153, v68 + ((v66 + 7) & 0xFFFFFFFFFFFFFFF8));
  v69 = sub_1E65E3E08();
  (*(*(v69 - 8) + 56))(v150, 1, 1, v69);
  swift_retain_n();
  v70 = v149;
  sub_1E65D76E8();
  (*(v125 + 104))(v141, *MEMORY[0x1E699D720], v135);
  v71 = v137;
  sub_1E5E1D964(v64, v137, v47);
  v125 = swift_allocObject();
  sub_1E5E1E798(v71, v125 + v67, type metadata accessor for AppComposer);
  v72 = v71;
  sub_1E5E1D964(v64, v71, v47);
  v120 = v66;
  v124 = swift_allocObject();
  sub_1E5E1E798(v71, &v124[v67], type metadata accessor for AppComposer);
  sub_1E5E1D964(v64, v71, v47);
  v123 = swift_allocObject();
  v115 = v67;
  v114 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v71, v123 + v67, type metadata accessor for AppComposer);
  sub_1E5E1D964(v64, v71, v47);
  sub_1E5DF650C(v145, &v152);
  v73 = v138;
  v74 = *(v138 + 16);
  v118 = (v138 + 16);
  v119 = v74;
  v75 = v147;
  v74(v147, v70, v148);
  v76 = v136;
  v77 = (v136 + 47) & 0xFFFFFFFFFFFFFFF8;
  v116 = v77;
  v135 = (v77 + 87) & 0xFFFFFFFFFFFFFFF8;
  v117 = v135 + 8;
  v78 = (v135 + 8 + *(v73 + 80)) & ~*(v73 + 80);
  v79 = swift_allocObject();
  sub_1E5E1E798(v72, v79 + v67, type metadata accessor for AppComposer);
  sub_1E5DF599C(&v152, v79 + v76);
  v80 = (v79 + v77);
  v81 = v79;
  *v80 = v151;
  v113 = &unk_1E65FDDC8;
  v80[1] = MEMORY[0x1E69AB380];
  v80[2] = &unk_1E65FDDC8;
  v112 = &unk_1E65FDDD0;
  v80[3] = v146;
  v80[4] = &unk_1E65FDDD0;
  v111 = &unk_1E65FDDD8;
  v80[5] = v144;
  v80[6] = &unk_1E65FDDD8;
  v110 = &unk_1E65FDDE0;
  v80[7] = v143;
  v80[8] = &unk_1E65FDDE0;
  v82 = v121;
  v80[9] = v121;
  v83 = v139;
  v84 = v81;
  v122 = v81;
  *(v81 + v135) = v139;
  v85 = *(v73 + 32);
  v86 = v148;
  v85(v84 + v78, v75, v148);
  v87 = v142;
  v88 = v134;
  sub_1E5E1D964(v142, v72, v134);
  sub_1E5DF650C(v145, &v152);
  v89 = swift_allocObject();
  v90 = v115;
  v91 = v114;
  sub_1E5E1E798(v72, v89 + v115, v114);
  sub_1E5DF599C(&v152, v89 + v136);
  v92 = (v89 + v116);
  v145 = v89;
  *v92 = v151;
  v93 = v113;
  v92[1] = MEMORY[0x1E69AB380];
  v92[2] = v93;
  v94 = v112;
  v92[3] = v146;
  v92[4] = v94;
  v95 = v111;
  v92[5] = v144;
  v92[6] = v95;
  v96 = v110;
  v92[7] = v143;
  v92[8] = v96;
  v92[9] = v82;
  *(v89 + v135) = v83;
  sub_1E5E1D964(v87, v72, v88);
  v142 = swift_allocObject();
  sub_1E5E1E798(v72, v142 + v90, v91);
  sub_1E5DFD1CC(v150, v140, &qword_1ED074410, &qword_1E65F0B78);
  (v119)(v147, v149, v86);
  v137 = type metadata accessor for ActionButtonDescriptor(0);
  swift_retain_n();

  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED073EE0, &qword_1E65EEE98);
  v146 = type metadata accessor for ArtworkDescriptor(0);
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077870, &unk_1E65FA560);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074418, &qword_1E65F0B80);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074420, &qword_1E65F0B88);
  v135 = type metadata accessor for ContextMenu(0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074428, &qword_1E65F0B90);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077B70, &unk_1E65FA820);
  v120 = type metadata accessor for ItemContext(0);
  v119 = type metadata accessor for ItemMetrics(0);
  v118 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074430, &qword_1E65F0B98);
  v116 = type metadata accessor for SectionMetrics(0);
  v115 = type metadata accessor for ViewDescriptor(0);
  v114 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v113 = sub_1E60731B0();
  v112 = sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v111 = sub_1E5FEB2FC();
  v110 = sub_1E60C08DC();
  v109 = sub_1E60C15C0();
  v108[1] = sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  v97 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v98 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v99 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  *&v152 = v98;
  *(&v152 + 1) = v99;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  *&v152 = v97;
  *(&v152 + 1) = OpaqueTypeConformance2;
  v108[0] = swift_getOpaqueTypeConformance2();
  sub_1E60728B0();
  sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6364AD4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  sub_1E60C217C();
  sub_1E6364AD4(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E5DF1338();
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v101 = v127;
  sub_1E65DC198();
  (*(v138 + 8))(v149, v148);
  sub_1E5DFE50C(v150, &qword_1ED074410, &qword_1E65F0B78);
  sub_1E5FED46C(&qword_1ED0743B0, &qword_1ED074380, &qword_1E65F0970, MEMORY[0x1E699D728]);
  v102 = v128;
  v103 = v131;
  sub_1E5FEE4C8();
  v104 = *(v132 + 8);
  v104(v101, v103);
  v105 = v129;
  sub_1E5FEE4C8();
  v104(v102, v103);
  v106 = v130;
  sub_1E5FEE4C8();
  v104(v105, v103);
  sub_1E5FEE4C8();
  return (v104)(v106, v103);
}

uint64_t sub_1E635DEF0@<X0>(char *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v62 = a1;
  v63 = a3;
  v66 = a4;
  v5 = type metadata accessor for AppComposer(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = MEMORY[0x1EEE9AC00](v5 - 8);
  v60 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v51 - v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v51 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727E0, &qword_1E65EBC50);
  v16 = *(v15 - 8);
  v64 = v15;
  v65 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v61 = &v51 - v17;
  sub_1E65E5148();
  v18 = sub_1E65E5138();
  v68 = type metadata accessor for AppComposer;
  sub_1E5E1D964(a2, v14, type metadata accessor for AppComposer);
  v19 = *(v6 + 80);
  v58 = (v19 + 32) & ~v19;
  v20 = (v58 + v7) & 0xFFFFFFFFFFFFFFF8;
  v21 = v58 + v7;
  v56 = v58 + v7;
  v22 = swift_allocObject();
  v67 = &unk_1E65FDDE8;
  *(v22 + 16) = &unk_1E65FDDE8;
  *(v22 + 24) = 0;
  v69 = type metadata accessor for AppComposer;
  sub_1E5E1E798(v14, v22 + ((v19 + 32) & ~v19), type metadata accessor for AppComposer);
  v55 = v22;
  *(v22 + v21) = 0;
  v23 = v22 + v20;
  v54 = sub_1E6172524;
  *(v23 + 8) = sub_1E6172524;
  *(v23 + 16) = 0;
  v24 = (v22 + ((v20 + 31) & 0xFFFFFFFFFFFFFFF8));
  v25 = MEMORY[0x1E69AB380];
  v52 = v18;
  *v24 = v18;
  v24[1] = v25;
  v26 = v25;
  v53 = a2;
  v27 = v57;
  sub_1E5E1D964(a2, v57, v68);
  v28 = (v19 + 48) & ~v19;
  v29 = v28 + v7;
  v30 = (v28 + v7) & 0xFFFFFFFFFFFFFFF8;
  v31 = swift_allocObject();
  v32 = v67;
  v31[2] = v67;
  v31[3] = 0;
  v31[4] = v18;
  v31[5] = v26;
  sub_1E5E1E798(v27, v31 + v28, v69);
  *(v31 + v29) = 0;
  v33 = v31 + v30;
  v34 = v54;
  *(v33 + 1) = v54;
  *(v33 + 2) = 0;
  v35 = v59;
  v36 = v68;
  sub_1E5E1D964(a2, v59, v68);
  v37 = (v29 + 7) & 0xFFFFFFFFFFFFFFF8;
  v38 = swift_allocObject();
  v38[2] = v32;
  v38[3] = 0;
  v39 = v52;
  v38[4] = v52;
  v38[5] = MEMORY[0x1E69AB380];
  v40 = v35;
  v41 = v69;
  sub_1E5E1E798(v40, v38 + v28, v69);
  v42 = v38 + v37;
  *v42 = v34;
  *(v42 + 1) = 0;
  v42[16] = 0;
  v43 = v60;
  sub_1E5E1D964(v53, v60, v36);
  v44 = swift_allocObject();
  *(v44 + 16) = v67;
  *(v44 + 24) = 0;
  sub_1E5E1E798(v43, v44 + v58, v41);
  *&v72 = v39;
  *(&v72 + 1) = MEMORY[0x1E69AB380];
  v73 = &unk_1E65FDDF0;
  v74 = v55;
  v75 = &unk_1E65FDDF8;
  v76 = v31;
  v77 = &unk_1E65FDE00;
  v78 = v38;
  v79 = &unk_1E65FDE08;
  v80 = v44;
  swift_retain_n();
  v45 = v61;
  sub_1E61E66C8(v62, v63, &v72, v61);

  v46 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED0727E8, &qword_1E65F70C0);
  v47 = sub_1E5FED46C(&qword_1EE2D6558, &qword_1ED0727E8, &qword_1E65F70C0, MEMORY[0x1E699DA70]);
  v70 = v46;
  v71 = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v49 = v64;
  MEMORY[0x1E69482C0](v45, v64, OpaqueTypeConformance2);
  return (*(v65 + 8))(v45, v49);
}

uint64_t sub_1E635E458(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  v4 = sub_1E65D79C8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635E51C, 0, 0);
}

uint64_t sub_1E635E51C()
{
  *(v0 + 52) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 92) = *(type metadata accessor for AppEnvironment(0) + 40);
  v1 = AwardsService.fetchSeymourAchievement.getter();
  *(v0 + 144) = v2;
  v8 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *v3 = v0;
  v3[1] = sub_1E635E644;
  v4 = *(v0 + 136);
  v5 = *(v0 + 96);
  v6 = *(v0 + 104);

  return v8(v4, v5, v6);
}

uint64_t sub_1E635E644()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1E635ECBC;
  }

  else
  {
    v2 = sub_1E635E758;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E635E758()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);

  if (sub_1E65DB988() == v2 && v3 == v1)
  {
  }

  else
  {
    v5 = sub_1E65E6C18();

    if ((v5 & 1) == 0)
    {
      v6 = *(v0 + 160);
      v7 = *(v0 + 128);
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
      *(v0 + 48) = -1;
      v8 = sub_1E634B750(v0 + 16);
      (*(v7 + 8))(*(v0 + 136), *(v0 + 120));

      if (v6)
      {
        v9 = *(v0 + 8);

        return v9();
      }

      else
      {
        v16 = *(v0 + 8);

        return v16(v8 & 1);
      }
    }
  }

  v11 = AwardsService.fetchSeymourAchievementProgress.getter();
  *(v0 + 168) = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v13 = swift_allocObject();
  *(v0 + 176) = v13;
  *(v13 + 16) = xmmword_1E65EA670;
  *(v13 + 32) = sub_1E65DB998();
  *(v13 + 40) = v14;
  v17 = (v11 + *v11);
  v15 = swift_task_alloc();
  *(v0 + 184) = v15;
  *v15 = v0;
  v15[1] = sub_1E635E9B0;

  return v17(v13);
}

uint64_t sub_1E635E9B0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 192) = v1;

  if (v1)
  {

    v5 = sub_1E635ED28;
  }

  else
  {

    *(v4 + 200) = a1;
    v5 = sub_1E635EB24;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E635EB24()
{
  sub_1E6059D88(*(v0 + 200), v0 + 56);

  v1 = *(v0 + 192);
  v2 = *(v0 + 128);
  if (*(v0 + 88) == 255)
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    *(v0 + 48) = -1;
    v3 = sub_1E634B750(v0 + 16);
    v7 = (v2 + 8);
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    if (v1)
    {
      (*v7)(v8, v9);
      goto LABEL_6;
    }

    (*v7)(v8, v9);
  }

  else
  {
    v3 = sub_1E634B750(v0 + 56);
    v4 = (v2 + 8);
    v5 = *(v0 + 136);
    v6 = *(v0 + 120);
    if (v1)
    {
      (*v4)(v5, v6);
      sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
LABEL_6:

      v10 = *(v0 + 8);

      return v10();
    }

    (*v4)(v5, v6);
    sub_1E5DFE50C(v0 + 56, &qword_1ED078818, &qword_1E65FDA30);
  }

  v12 = *(v0 + 8);

  return v12(v3 & 1);
}

uint64_t sub_1E635ECBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E635ED28()
{
  (*(v0[16] + 8))(v0[17], v0[15]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E635EDA4(uint64_t a1, uint64_t a2)
{
  v6 = *(type metadata accessor for AppComposer(0) - 8);
  v7 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1E5FE99E8;

  return sub_1E635E458(a1, a2, v2 + v7);
}

uint64_t sub_1E635EE84(uint64_t a1)
{
  v1[2] = a1;
  v1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v1[4] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E635EF24, 0, 0);
}

uint64_t sub_1E635EF24()
{
  sub_1E65E6058();
  *(v0 + 40) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E635EFB8, v2, v1);
}

uint64_t sub_1E635EFB8()
{
  v1 = *(v0 + 32);

  swift_storeEnumTagMultiPayload();
  sub_1E65E4EE8();
  sub_1E5DFE50C(v1, &qword_1ED072828, &qword_1E65EBE20);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E635F060()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E635EE84(v0);
}

uint64_t sub_1E635F0F0()
{
  v1 = *(type metadata accessor for AppComposer(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(sub_1E65DBE88() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 23) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v0 + v6);
  v9 = *v8;
  v10 = v8[1];

  return sub_1E635C044((v0 + v2), (v0 + v5), v9, v10, (v0 + v7));
}

uint64_t sub_1E635F1F8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (v1 + ((*(v3 + 64) + ((*(v3 + 80) + 16) & ~*(v3 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));
  return AppComposer.awardHeaderViewBuilder(awardName:)(*v4, v4[1], a1);
}

uint64_t sub_1E635F28C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AppComposer(0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1E635CB24(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

uint64_t sub_1E635F334@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E635DEF0(a1, v2 + v6, v7, a2);
}

uint64_t objectdestroy_15Tm_0(void (*a1)(void))
{
  v95 = type metadata accessor for AppComposer(0);
  v94 = *(*(v95 - 1) + 80);
  a1(*(v1 + 24));
  v91 = v1 + ((v94 + 32) & ~v94);

  v3 = v91 + v95[5];
  swift_unknownObjectRelease();
  v4 = type metadata accessor for AppEnvironment(0);
  v5 = v4[6];
  v93 = type metadata accessor for AccountService();
  v92 = *(v93[-1].Description + 1);
  v92(v3 + v5, v93);
  v6 = v4[7];
  v90 = type metadata accessor for AppStateService();
  v89 = *(v90[-1].Description + 1);
  v89(v3 + v6, v90);
  v7 = v4[8];
  v88 = type metadata accessor for ArchivedSessionService();
  v87 = *(v88[-1].Description + 1);
  v87(v3 + v7, v88);
  v8 = v4[9];
  v86 = type metadata accessor for AssetService();
  v85 = *(v86[-1].Description + 1);
  v85(v3 + v8, v86);
  v9 = v4[10];
  v84 = type metadata accessor for AwardsService();
  v83 = *(v84[-1].Description + 1);
  v83(v3 + v9, v84);
  v10 = v4[11];
  v82 = type metadata accessor for BookmarkService();
  v81 = *(v82[-1].Description + 1);
  v81(v3 + v10, v82);
  v11 = v4[12];
  v80 = type metadata accessor for CatalogService();
  v79 = *(v80[-1].Description + 1);
  v79(v3 + v11, v80);
  v12 = v4[13];
  v78 = type metadata accessor for ConfigurationService();
  v77 = *(v78[-1].Description + 1);
  v77(v3 + v12, v78);
  v13 = v4[14];
  v76 = type metadata accessor for ContentAvailabilityService();
  v75 = *(v76[-1].Description + 1);
  v75(v3 + v13, v76);
  v14 = v4[15];
  v74 = type metadata accessor for EngagementService();
  v73 = *(v74[-1].Description + 1);
  v73(v3 + v14, v74);
  v15 = v4[16];
  v72 = type metadata accessor for HealthDataService();
  v71 = *(v72[-1].Description + 1);
  v71(v3 + v15, v72);
  v16 = v4[17];
  v70 = type metadata accessor for InteropService();
  v69 = *(v70[-1].Description + 1);
  v69(v3 + v16, v70);
  v17 = v4[18];
  v68 = type metadata accessor for LocalizationService();
  v67 = *(v68[-1].Description + 1);
  v67(v3 + v17, v68);
  v18 = v4[19];
  v66 = type metadata accessor for MarketingService();
  v65 = *(v66[-1].Description + 1);
  v65(v3 + v18, v66);
  v19 = v4[20];
  v64 = type metadata accessor for MetricService();
  v63 = *(v64[-1].Description + 1);
  v63(v3 + v19, v64);
  v20 = v4[21];
  v62 = type metadata accessor for PersonalizationService();
  v61 = *(v62[-1].Description + 1);
  v61(v3 + v20, v62);
  v21 = v4[22];
  v60 = type metadata accessor for PlayerService();
  v59 = *(v60[-1].Description + 1);
  v59(v3 + v21, v60);
  v22 = v4[23];
  v58 = type metadata accessor for PrivacyPreferenceService();
  v57 = *(v58[-1].Description + 1);
  v57(v3 + v22, v58);
  v23 = v4[24];
  v56 = type metadata accessor for RecommendationService();
  v55 = *(v56[-1].Description + 1);
  v55(v3 + v23, v56);
  v24 = v4[25];
  v54 = type metadata accessor for RemoteBrowsingService();
  v53 = *(v54[-1].Description + 1);
  v53(v3 + v24, v54);
  v25 = v4[26];
  v52 = type metadata accessor for SearchService();
  v51 = *(v52[-1].Description + 1);
  v51(v3 + v25, v52);
  v26 = v4[27];
  v50 = type metadata accessor for ServiceSubscriptionService();
  v49 = *(v50[-1].Description + 1);
  v49(v3 + v26, v50);
  v27 = v4[28];
  v43 = type metadata accessor for SessionService();
  v48 = *(v43[-1].Description + 1);
  v48(v3 + v27, v43);
  v28 = v4[29];
  v29 = type metadata accessor for SharePlayService();
  v47 = *(v29[-1].Description + 1);
  v47(v3 + v28, v29);
  v30 = v4[30];
  v31 = type metadata accessor for SiriService();
  v46 = *(v31[-1].Description + 1);
  v46(v3 + v30, v31);
  v32 = v4[31];
  v33 = type metadata accessor for SyncService();
  v45 = *(v33[-1].Description + 1);
  v45(v3 + v32, v33);

  v34 = v4[33];
  QueueService = type metadata accessor for UpNextQueueService();
  v44 = *(QueueService[-1].Description + 1);
  v44(v3 + v34, QueueService);
  __swift_destroy_boxed_opaque_existential_1((v3 + v4[34]));

  v36 = v4[36];
  v37 = type metadata accessor for WorkoutPlanService();
  v42 = *(v37[-1].Description + 1);
  v42(v3 + v36, v37);

  v38 = v91 + v95[7];

  v39 = v38 + *(type metadata accessor for AppDataItemResolver(0) + 24);
  swift_unknownObjectRelease();
  v92(v39 + v4[6], v93);
  v89(v39 + v4[7], v90);
  v87(v39 + v4[8], v88);
  v85(v39 + v4[9], v86);
  v83(v39 + v4[10], v84);
  v81(v39 + v4[11], v82);
  v79(v39 + v4[12], v80);
  v77(v39 + v4[13], v78);
  v75(v39 + v4[14], v76);
  v73(v39 + v4[15], v74);
  v71(v39 + v4[16], v72);
  v69(v39 + v4[17], v70);
  v67(v39 + v4[18], v68);
  v65(v39 + v4[19], v66);
  v63(v39 + v4[20], v64);
  v61(v39 + v4[21], v62);
  v59(v39 + v4[22], v60);
  v57(v39 + v4[23], v58);
  v55(v39 + v4[24], v56);
  v53(v39 + v4[25], v54);
  v51(v39 + v4[26], v52);
  v49(v39 + v4[27], v50);
  v48(v39 + v4[28], v43);
  v47(v39 + v4[29], v29);
  v46(v39 + v4[30], v31);
  v45(v39 + v4[31], v33);

  v44(v39 + v4[33], QueueService);
  __swift_destroy_boxed_opaque_existential_1((v39 + v4[34]));

  v42(v39 + v4[36], v37);
  swift_unknownObjectRelease();
  if (*(v91 + v95[9] + 8) >= 0xCuLL)
  {
  }

  v40 = (v91 + v95[10]);
  if (v40[3])
  {
    __swift_destroy_boxed_opaque_existential_1(v40);
  }

  return swift_deallocObject();
}

uint64_t sub_1E63600B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E635C574(a1, v6, v7, v8, a2);
}

uint64_t sub_1E6360144(char *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E635C9A4(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E63601F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v43 = a2;
  v44 = a3;
  v40 = type metadata accessor for CanvasTaskIdentifier(0);
  v4 = MEMORY[0x1EEE9AC00](v40);
  v6 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v39 - v7;
  v9 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for RouteDestination(0);
  v41 = *(v12 - 8);
  v13 = *(v41 + 64);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v42 = v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v39 - v15);
  v17 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v39 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1E5E1D964(a1, v19, type metadata accessor for ItemContext);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1E6321560(v19, type metadata accessor for ItemContext);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    return (*(*(v20 - 8) + 56))(v44, 1, 1, v20);
  }

  else
  {
    v23 = *v19;
    v22 = v19[1];
    swift_storeEnumTagMultiPayload();
    *v16 = v23;
    v16[1] = v22;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5E1E798(v11, v16 + *(v12 + 20), type metadata accessor for RouteSource);
    *(v16 + *(v12 + 24)) = MEMORY[0x1E69E7CD0];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072948, &qword_1E65EC0D8);
    v39[1] = v24[12];
    v25 = v24[16];
    v26 = v24[20];
    v27 = v44;
    v28 = (v44 + v24[24]);
    sub_1E5E1D964(v16, v8, type metadata accessor for RouteDestination);
    sub_1E5E1D964(v8, v6, type metadata accessor for CanvasTaskIdentifier);
    sub_1E6364AD4(&qword_1ED072950, type metadata accessor for CanvasTaskIdentifier, &unk_1E65F55A8);
    sub_1E65E6848();
    sub_1E6321560(v8, type metadata accessor for CanvasTaskIdentifier);
    v29 = *MEMORY[0x1E6999B50];
    v30 = sub_1E65E4EB8();
    (*(*(v30 - 8) + 104))(v27 + v25, v29, v30);
    v31 = *MEMORY[0x1E6999B48];
    v32 = sub_1E65E4EA8();
    (*(*(v32 - 8) + 104))(v27 + v26, v31, v32);
    sub_1E5DF650C(v43, v45);
    v33 = v42;
    sub_1E5E1D964(v16, v42, type metadata accessor for RouteDestination);
    v34 = (*(v41 + 80) + 56) & ~*(v41 + 80);
    v35 = swift_allocObject();
    sub_1E5DF599C(v45, v35 + 16);
    sub_1E5E1E798(v33, v35 + v34, type metadata accessor for RouteDestination);
    *v28 = &unk_1E65FDF00;
    v28[1] = v35;
    sub_1E65E6068();
    sub_1E6321560(v16, type metadata accessor for RouteDestination);
    v36 = *MEMORY[0x1E6999AD8];
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072940, &qword_1E65EC0D0);
    v38 = *(v37 - 8);
    (*(v38 + 104))(v27, v36, v37);
    return (*(v38 + 56))(v27, 0, 1, v37);
  }
}

uint64_t sub_1E6360780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072810, &qword_1E65EBE08);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v29 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072828, &qword_1E65EBE20);
  v30 = *(v11 - 8);
  v12 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v29 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v29 - v16;
  v32 = v29 - v16;
  v31 = sub_1E6427784(MEMORY[0x1E69E7CC0]);
  v18 = sub_1E65E60A8();
  (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
  sub_1E5DFD1CC(a1, v14, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 16))(v10, v33, v6);
  v19 = a4[3];
  v29[0] = *a4;
  v29[1] = v19;
  v20 = a4[7];
  v29[2] = a4[5];
  v29[3] = v20;
  v33 = a4[9];
  v21 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v22 = (v12 + *(v7 + 80) + v21) & ~*(v7 + 80);
  v23 = (v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  sub_1E5FAB460(v14, v24 + v21, &qword_1ED072828, &qword_1E65EBE20);
  (*(v7 + 32))(v24 + v22, v10, v6);
  *(v24 + v23) = v31;
  v25 = (v24 + ((v23 + 15) & 0xFFFFFFFFFFFFFFF8));
  v26 = *(a4 + 4);
  v25[3] = *(a4 + 3);
  v25[4] = v26;
  v27 = *(a4 + 2);
  v25[1] = *(a4 + 1);
  v25[2] = v27;
  *v25 = *a4;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v32, &unk_1E65EC0C8, v24);
}

uint64_t sub_1E6360AD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[3] = a2;
  sub_1E65D7848();
  v4[6] = swift_task_alloc();
  sub_1E65E5C28();
  v4[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6360B98, 0, 0);
}

uint64_t sub_1E6360B98()
{
  swift_getKeyPath();
  sub_1E65E4EC8();

  v1 = v0[2];
  if (!*(v1 + 16) || (v2 = sub_1E6215038(v0[4], v0[5]), (v3 & 1) == 0))
  {

    goto LABEL_6;
  }

  v4 = *(*(v1 + 56) + 8 * v2);
  sub_1E5E06368(v4);

  if (v4 < 2)
  {
    sub_1E5F87148(v4);
LABEL_6:
    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_7;
  }

  v8 = v0[3];
  sub_1E65E5BA8();
  sub_1E62DDC8C();
  sub_1E65E6578();
  swift_getKeyPath();
  sub_1E65E4EC8();

  v9 = sub_1E65E5D48();
  v11 = v10;
  v12 = swift_task_alloc();
  v12[2] = v8;
  v12[3] = v9;
  v12[4] = v11;
  v5 = sub_1E5F9F864(sub_1E6364AB0, v12, v4);

  sub_1E5F87148(v4);

LABEL_7:

  v6 = v0[1];

  return v6(v5);
}

uint64_t sub_1E6360D8C(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a2 + *(type metadata accessor for AppState(0) + 68);

  *(v3 + 8) = v2;
  return result;
}

uint64_t sub_1E6360DE0@<X0>(void (**a1)(char *, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v76 = a5;
  v94 = a4;
  v92 = a3;
  v82 = a1;
  v89 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v89);
  v88 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for ItemContext(0);
  MEMORY[0x1EEE9AC00](v90);
  v87 = v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = sub_1E65DBE68();
  v91 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v86 = v63 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0720A8, &qword_1E65EA790);
  v84 = *(v9 - 8);
  v85 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v64 = v63 - v10;
  v73 = sub_1E65E0438();
  v72 = *(v73 - 8);
  MEMORY[0x1EEE9AC00](v73);
  v75 = v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072630, &qword_1E65EB948);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v74 = v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v83 = v63 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v81 = v63 - v17;
  v18 = sub_1E65D72D8();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v68 = v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072648, &qword_1E65EB960);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v80 = v63 - v21;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072650, &qword_1E65EB968);
  MEMORY[0x1EEE9AC00](v67);
  v79 = v63 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = v63 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v29 = v63 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072678, &qword_1E65EB988);
  v77 = *(v30 - 8);
  v78 = v30;
  MEMORY[0x1EEE9AC00](v30);
  v32 = (v63 - v31);
  LODWORD(v71) = *(a2 + *(type metadata accessor for AppComposer(0) + 20) + 8);
  swift_getKeyPath();
  sub_1E65E4EC8();

  v33 = sub_1E65E0678();
  v34 = *(v24 + 8);
  v34(v29, v23);
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E0708();
  v34(v27, v23);
  Platform.transformed(with:sizeClass:)(v33, v96, v71, v32);
  v35 = sub_1E65DBF68();
  v69 = v36;
  v37 = *(v77 + 16);
  v71 = v32;
  v37(v79, v32, v78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072680, &qword_1E65EB990);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  if (qword_1EE2D7270 != -1)
  {
    swift_once();
  }

  v38 = sub_1E65D7348();
  __swift_project_value_buffer(v38, qword_1EE2EA268);
  sub_1E65E5D38();
  v39 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  (*(*(v39 - 8) + 56))(v81, 1, 1, v39);
  v40 = type metadata accessor for ActionButtonDescriptor(0);
  (*(*(v40 - 8) + 56))(v83, 1, 1, v40);
  v41 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  v42 = sub_1E6364AD4(&qword_1EE2D7D88, type metadata accessor for SectionHeaderSubtitleDescriptor, &protocol conformance descriptor for SectionHeaderSubtitleDescriptor);
  v43 = v80;
  v67 = v40;
  v68 = v39;
  v66 = v41;
  v65 = v42;
  sub_1E65E0458();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072660, &qword_1E65EB970);
  (*(*(v44 - 8) + 56))(v43, 0, 1, v44);
  v45 = sub_1E65DBF88();
  v46 = *(v45 + 16);
  v70 = v35;
  if (v46)
  {
    v95 = MEMORY[0x1E69E7CC0];
    sub_1E601BE24(0, v46, 0);
    v94 = v95;
    v83 = *(v91 + 16);
    v47 = (*(v91 + 80) + 32) & ~*(v91 + 80);
    v63[1] = v45;
    v48 = v45 + v47;
    v91 += 16;
    v81 = *(v91 + 56);
    v82 = (v91 - 8);
    v49 = v64;
    v50 = v87;
    do
    {
      v92 = v46;
      v51 = v86;
      (v83)(v86, v48, v93);
      *v50 = sub_1E65DBE38();
      *(v50 + 1) = v52;
      v50[16] = 1;
      swift_storeEnumTagMultiPayload();
      sub_1E65E0A68();
      swift_storeEnumTagMultiPayload();
      sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
      sub_1E65E04D8();
      (*v82)(v51, v93);
      swift_storeEnumTagMultiPayload();
      v95 = v94;
      v54 = *(v94 + 16);
      v53 = *(v94 + 24);
      v55 = v94;
      if (v54 >= v53 >> 1)
      {
        sub_1E601BE24((v53 > 1), v54 + 1, 1);
        v49 = v64;
        v55 = v95;
      }

      v94 = v55;
      *(v55 + 16) = v54 + 1;
      sub_1E5FAB460(v49, v55 + ((*(v84 + 80) + 32) & ~*(v84 + 80)) + *(v84 + 72) * v54, &qword_1ED0720A8, &qword_1E65EA790);
      v48 += v81;
      v46 = v92 - 1;
    }

    while (v92 != 1);
  }

  else
  {

    v94 = MEMORY[0x1E69E7CC0];
  }

  v56 = type metadata accessor for SectionMetrics(0);
  v57 = *(v56 + 24);
  v58 = *MEMORY[0x1E69CBCB0];
  v59 = sub_1E65D8F28();
  v60 = v74;
  (*(*(v59 - 8) + 104))(&v74[v57], v58, v59);
  v61 = sub_1E6427498(MEMORY[0x1E69E7CC0]);
  *v60 = 0xD000000000000012;
  v60[1] = 0x80000001E6616520;
  v60[2] = 0xD000000000000012;
  v60[3] = 0x80000001E6616520;
  *(v60 + *(v56 + 32)) = v61;
  (*(*(v56 - 8) + 56))(v60, 0, 1, v56);
  (*(v72 + 104))(v75, *MEMORY[0x1E699D7D8], v73);
  v93 = type metadata accessor for ArtworkDescriptor(0);
  v92 = type metadata accessor for ContextMenu(0);
  v91 = type metadata accessor for ItemMetrics(0);
  v89 = type metadata accessor for ViewDescriptor(0);
  v88 = sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  v87 = sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6364AD4(&qword_1EE2DA950, type metadata accessor for SectionMetrics, &protocol conformance descriptor for SectionMetrics);
  sub_1E5DF11E0();
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  sub_1E65E0418();
  return (*(v77 + 8))(v71, v78);
}

uint64_t sub_1E6361CC4(uint64_t a1, uint64_t a2)
{
  v2[5] = a1;
  v2[6] = a2;
  v2[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072910, &qword_1E65EC030);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072918, &qword_1E65EC038);
  v2[10] = v3;
  v2[11] = *(v3 - 8);
  v2[12] = swift_task_alloc();
  v4 = sub_1E65D9CC8();
  v2[13] = v4;
  v2[14] = *(v4 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for ItemContext(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6361EFC, 0, 0);
}

unint64_t sub_1E6361EFC()
{
  v1 = v0[21];
  v68 = v0[19];
  v2 = v0[5];
  v3 = sub_1E6427DF8(MEMORY[0x1E69E7CC0]);
  v4 = v2 + 56;
  v5 = -1;
  v6 = -1 << *(v2 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v2 + 56);
  v8 = (63 - v6) >> 6;
  v76 = (v1 + 8);
  v65 = (v1 + 40);
  v66 = (v1 + 32);
  v77 = v2;

  v9 = 0;
  v72 = v8;
  v74 = v2 + 56;
  while (2)
  {
    v70 = v3;
    v0[25] = v3;
    v10 = v9;
    if (!v7)
    {
      goto LABEL_6;
    }

    while (1)
    {
      v9 = v10;
LABEL_9:
      v11 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v12 = *(v1 + 72);
      v13 = v1;
      v14 = *(v1 + 16);
      v14(v0[24], *(v77 + 48) + v12 * (v11 | (v9 << 6)), v0[20]);
      sub_1E65E04E8();
      if (!swift_getEnumCaseMultiPayload())
      {
        break;
      }

      v15 = v0[19];
      (*v76)(v0[24], v0[20]);
      sub_1E6321560(v15, type metadata accessor for ItemContext);
      v10 = v9;
      v1 = v13;
      v8 = v72;
      v4 = v74;
      if (!v7)
      {
        while (1)
        {
LABEL_6:
          v9 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v9 >= v8)
          {
            break;
          }

          v7 = *(v4 + 8 * v9);
          ++v10;
          if (v7)
          {
            goto LABEL_9;
          }
        }

        v41 = v0[14];

        v42 = -1;
        v43 = -1 << *(v77 + 32);
        if (-v43 < 64)
        {
          v42 = ~(-1 << -v43);
        }

        v44 = v42 & *(v77 + 56);
        v45 = (63 - v43) >> 6;
        v69 = v41;
        v73 = (v41 + 32);

        v46 = 0;
        v75 = MEMORY[0x1E69E7CC0];
        while (1)
        {
          v0[26] = v75;
          if (!v44)
          {
            break;
          }

          v47 = v46;
LABEL_30:
          v48 = __clz(__rbit64(v44));
          v44 &= v44 - 1;
          (*(v1 + 16))(v0[22], *(v77 + 48) + *(v1 + 72) * (v48 | (v47 << 6)), v0[20]);
          sub_1E65E04E8();
          EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
          v50 = v0[18];
          if (EnumCaseMultiPayload)
          {
            (*v76)(v0[22], v0[20]);
            sub_1E6321560(v50, type metadata accessor for ItemContext);
            v46 = v47;
          }

          else
          {
            v51 = v0[15];
            v67 = v0[16];
            v52 = v0[13];
            v53 = v0[22];
            v54 = v0[20];
            sub_1E65D9C88();
            (*v76)(v53, v54);
            v55 = *v73;
            (*v73)(v67, v51, v52);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v75 = sub_1E64F610C(0, v75[2] + 1, 1, v75);
            }

            v57 = v75[2];
            v56 = v75[3];
            if (v57 >= v56 >> 1)
            {
              v75 = sub_1E64F610C((v56 > 1), v57 + 1, 1, v75);
            }

            v58 = v0[16];
            v59 = v0[13];
            v75[2] = v57 + 1;
            v55(v75 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v57, v58, v59);
            v46 = v47;
          }
        }

        while (1)
        {
          v47 = v46 + 1;
          if (__OFADD__(v46, 1))
          {
            break;
          }

          if (v47 >= v45)
          {

            type metadata accessor for AppComposer(0);
            type metadata accessor for AppEnvironment(0);
            v60 = CatalogService.fetchRemoteCatalogLockups.getter();
            v0[27] = v61;
            v78 = (v60 + *v60);
            v62 = swift_task_alloc();
            v0[28] = v62;
            *v62 = v0;
            v62[1] = sub_1E6362650;

            return (v78)(33, v75);
          }

          v44 = *(v4 + 8 * v47);
          ++v46;
          if (v44)
          {
            goto LABEL_30;
          }
        }

LABEL_41:
        __break(1u);
        goto LABEL_42;
      }
    }

    v63 = v12;
    v16 = *v0[19];
    v17 = *(v68 + 8);
    v14(v0[23], v0[24], v0[20]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v3;
    v64 = v16;
    v19 = v17;
    result = sub_1E6215038(v16, v17);
    v22 = v70[2];
    v23 = (v21 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      __break(1u);
LABEL_46:
      __break(1u);
      return result;
    }

    v26 = v21;
    v1 = v13;
    v4 = v74;
    if (v70[3] >= v25)
    {
      v29 = v63;
      v27 = v19;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = result;
        sub_1E6424B84();
        v29 = v63;
        result = v40;
      }

LABEL_18:
      v30 = v0[23];
      v31 = v0[24];
      v32 = v0[20];
      if (v26)
      {
        v71 = v0[24];
        v33 = result;
        v34 = v0[23];
        v35 = v27;
        v36 = v29;
        sub_1E5E483B8(v64, v35);
        v3 = v79;
        (*v65)(*(v79 + 56) + v33 * v36, v34, v32);
        (*v76)(v71, v32);
        v8 = v72;
        continue;
      }

      v3 = v70;
      v70[(result >> 6) + 8] |= 1 << result;
      v37 = (v70[6] + 16 * result);
      *v37 = v64;
      v37[1] = v27;
      (*v66)(v70[7] + result * v29, v30, v32);
      result = (*v76)(v31, v32);
      v38 = v70[2];
      v24 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (!v24)
      {
        *(v79 + 16) = v39;
        v8 = v72;
        continue;
      }

      goto LABEL_46;
    }

    break;
  }

  sub_1E641BE8C(v25, isUniquelyReferenced_nonNull_native);
  v27 = v19;
  result = sub_1E6215038(v64, v19);
  v29 = v63;
  if ((v26 & 1) == (v28 & 1))
  {
    goto LABEL_18;
  }

LABEL_42:

  return sub_1E65E6C68();
}

uint64_t sub_1E6362650(uint64_t a1)
{
  v3 = *v2;
  v3[2] = v2;
  v3[3] = a1;
  v3[4] = v1;
  v3[29] = v1;

  if (v1)
  {
    v4 = sub_1E6362A08;
  }

  else
  {

    v4 = sub_1E636277C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1E636277C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[9];
  v3 = v0[10];
  v5 = v0[8];
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E4C98();
  (*(v2 + 8))(v1, v3);
  sub_1E5FAB460(v4, v5, &qword_1ED072910, &qword_1E65EC030);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v9 = *v0[8];
      goto LABEL_8;
    }

    if (EnumCaseMultiPayload == 1)
    {
      v7 = v0[8];
      v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072930, &qword_1E65EC070) + 48);
      v9 = *v7;
      v10 = sub_1E65D76A8();
      (*(*(v10 - 8) + 8))(&v7[v8], v10);
      goto LABEL_8;
    }

    sub_1E5DFE50C(v0[8], &qword_1ED072910, &qword_1E65EC030);
  }

  v9 = 0;
LABEL_8:
  v11 = v0[3];
  v12 = v0[25];
  v13 = v0[6];
  v14 = swift_task_alloc();
  v14[2] = v12;
  v14[3] = v9;
  v14[4] = v13;
  v15 = sub_1E6404CB8(sub_1E6364A90, v14, v11);

  v16 = sub_1E600A848(v15);

  v17 = v0[1];

  return v17(v16);
}

uint64_t sub_1E6362A08()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6362B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v190 = a4;
  v204 = a3;
  v224 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072668, &qword_1E65EB978);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v171 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072670, &qword_1E65EB980);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v203 = &v171 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072638, &qword_1E65EB950);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v202 = &v171 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v209 = &v171 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074528, &unk_1E660F4D0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v208 = &v171 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v220 = &v171 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072610, &qword_1E65EB930);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v210 = &v171 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v221 = &v171 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v186 = &v171 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0734E8, &qword_1E65ED470);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v184 = &v171 - v27;
  v183 = sub_1E65DAC98();
  v181 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v178 = &v171 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1E65DB268();
  MEMORY[0x1EEE9AC00](v185);
  v179 = &v171 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1E65DA0B8();
  v180 = *(v182 - 8);
  v30 = MEMORY[0x1EEE9AC00](v182);
  v177 = &v171 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v195 = &v171 - v32;
  v176 = sub_1E65D9D58();
  v175 = *(v176 - 8);
  v33 = MEMORY[0x1EEE9AC00](v176);
  v174 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v173 = &v171 - v35;
  v191 = sub_1E65D8BB8();
  v36 = MEMORY[0x1EEE9AC00](v191);
  v192 = (&v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v36);
  v205 = &v171 - v38;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074530, &qword_1E65F0CA8);
  v39 = MEMORY[0x1EEE9AC00](v194);
  v193 = &v171 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v219 = (&v171 - v41);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v43 = MEMORY[0x1EEE9AC00](v42 - 8);
  v206 = &v171 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = MEMORY[0x1EEE9AC00](v43);
  v213 = (&v171 - v46);
  MEMORY[0x1EEE9AC00](v45);
  v218 = &v171 - v47;
  v227 = sub_1E65D72D8();
  v217 = *(v227 - 8);
  MEMORY[0x1EEE9AC00](v227);
  v226 = &v171 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E78, &qword_1E65ECC50);
  MEMORY[0x1EEE9AC00](v49 - 8);
  v51 = &v171 - v50;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E80, &qword_1E65ECC58);
  v187 = *(v188 - 1);
  MEMORY[0x1EEE9AC00](v188);
  v53 = &v171 - v52;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072198, &unk_1E660C690);
  MEMORY[0x1EEE9AC00](v54 - 8);
  v56 = &v171 - v55;
  v207 = sub_1E65D9AC8();
  v225 = *(v207 - 8);
  v57 = MEMORY[0x1EEE9AC00](v207);
  v189 = &v171 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v211 = &v171 - v59;
  v201 = sub_1E65D7848();
  v200 = *(v201 - 8);
  MEMORY[0x1EEE9AC00](v201);
  v228 = &v171 - ((v60 + 15) & 0xFFFFFFFFFFFFFFF0);
  v197 = type metadata accessor for ItemContext(0);
  v61 = MEMORY[0x1EEE9AC00](v197);
  v196 = &v171 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v216 = &v171 - v63;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072618, qword_1E65FBAF0);
  v198 = *(v199 - 8);
  MEMORY[0x1EEE9AC00](v199);
  v215 = &v171 - v64;
  v65 = sub_1E65E03F8();
  MEMORY[0x1EEE9AC00](v65);
  v214 = &v171 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v223 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072920, &qword_1E65EC040);
  v212 = *(v223 - 8);
  v67 = MEMORY[0x1EEE9AC00](v223);
  v69 = &v171 - ((v68 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v67);
  v222 = &v171 - v70;
  v229 = a1;
  v71 = sub_1E65D8078();
  if (!*(a2 + 16))
  {

    goto LABEL_10;
  }

  v73 = a2;
  v172 = v9;
  v74 = sub_1E6215038(v71, v72);
  v76 = v75;

  if ((v76 & 1) == 0)
  {
LABEL_10:
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
    return (*(*(v90 - 8) + 56))(v224, 1, 1, v90);
  }

  v77 = v212;
  v78 = *(v73 + 56) + *(v212 + 72) * v74;
  v79 = v223;
  (*(v212 + 16))(v69, v78, v223);
  (*(v77 + 32))(v222, v69, v79);
  if (v204)
  {
    v80 = sub_1E65D80B8();
    v82 = v81;
    v230 = v80;
    v231 = v81;
    v84 = v83 & 1;
    v232 = v83 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E65D7FB8();
    sub_1E5F87058(v80, v82, v84);
    if (v234 != 3 && (sub_1E637CE70(v234, v204) & 1) == 0)
    {
      (*(v212 + 8))(v222, v223);
      goto LABEL_10;
    }
  }

  sub_1E65E0A68();
  swift_storeEnumTagMultiPayload();
  v85 = v190;
  swift_getKeyPath();
  sub_1E65E4EC8();

  sub_1E65E04E8();
  v204 = &v85[*(type metadata accessor for AppComposer(0) + 20)];
  v233 = v204[8];
  swift_getKeyPath();
  sub_1E65E4EC8();

  swift_getKeyPath();
  sub_1E65E4EC8();

  v86 = v188;
  sub_1E65E4C98();
  sub_1E60EEE88(v56);
  sub_1E5DFE50C(v51, &qword_1ED072E78, &qword_1E65ECC50);
  (*(v187 + 8))(v53, v86);
  v87 = v225;
  v88 = *(v225 + 48);
  v89 = v207;
  if (v88(v56, 1, v207) == 1)
  {
    MEMORY[0x1E6941490]();
    if (v88(v56, 1, v89) != 1)
    {
      sub_1E5DFE50C(v56, &qword_1ED072198, &unk_1E660C690);
    }
  }

  else
  {
    (*(v87 + 32))(v211, v56, v89);
  }

  v92 = *(type metadata accessor for AppEnvironment(0) + 136);
  v93 = sub_1E5F9B6D0(&unk_1F5FA8C40);
  v94 = sub_1E65D8248();
  sub_1E63C4134(v228, &v204[v92], v94, v226);

  v95 = sub_1E65D80A8();
  v96 = sub_1E65D9AA8();
  v98 = v97;
  v99 = v189;
  MEMORY[0x1E6941490]();
  v100 = sub_1E65D9AA8();
  v102 = v101;
  v103 = *(v225 + 8);
  v225 += 8;
  v190 = v103;
  (v103)(v99, v89);
  if (v96 == v100 && v98 == v102)
  {
  }

  else
  {
    v104 = sub_1E65E6C18();

    if ((v104 & 1) == 0)
    {
      v105 = sub_1E65D8198();
      v106 = sub_1E65D9AA8();
      v108 = sub_1E637CA94(v106, v107, v105);

      if (v108)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E70, &unk_1E65ECC20);
        v109 = *(sub_1E65DADF8() - 8);
        v110 = *(v109 + 72);
        v111 = (*(v109 + 80) + 32) & ~*(v109 + 80);
        v112 = swift_allocObject();
        *(v112 + 16) = xmmword_1E65EB9E0;
        v113 = (v112 + v111);
        *v113 = sub_1E65D9AA8();
        v113[1] = v114;
        swift_storeEnumTagMultiPayload();
        *(v113 + v110) = 1;
        swift_storeEnumTagMultiPayload();
        v115 = sub_1E65D80A8();
        v230 = v112;
        sub_1E5FA9E2C(v115);
        v95 = v230;
      }
    }
  }

  v116 = *(sub_1E65D8068() + 16);

  v117 = v218;
  if (v116)
  {
    v118 = sub_1E65D8068();
    sub_1E63C4134(v228, &v204[v92], v118, v117);

    v119 = 0;
  }

  else
  {
    v119 = 1;
  }

  v189 = v95;
  v120 = v217 + 56;
  v121 = *(v217 + 56);
  v121(v117, v119, 1, v227);
  v188 = sub_1E63B0704(v93);

  v122 = v205;
  sub_1E65D8128();
  v123 = v122;
  v124 = v192;
  sub_1E5E1D964(v123, v192, MEMORY[0x1E69CB950]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v187 = v92;
  if (EnumCaseMultiPayload == 1)
  {
    v191 = v120;
    v126 = v180;
    v127 = v195;
    v128 = v182;
    (*(v180 + 32))(v195, v124, v182);
    v129 = v177;
    (*(v126 + 16))(v177, v127, v128);
    v192 = v121;
    v130 = v178;
    sub_1E65DA098();
    sub_1E65DAC38();
    sub_1E65DC2D8();
    sub_1E65DAC78();
    sub_1E65D74C8();

    sub_1E65DB248();
    v131 = v130;
    v121 = v192;
    (*(v181 + 8))(v131, v183);
    sub_1E65DA0A8();
    sub_1E6364AD4(&qword_1EE2D6D80, MEMORY[0x1E699D120], MEMORY[0x1E699D118]);
    v132 = v193;
    sub_1E65DC438();
    v133 = *(v126 + 8);
    v133(v129, v128);
    v133(v195, v128);
  }

  else
  {
    v134 = v175;
    v135 = v173;
    v136 = v124;
    v137 = v176;
    (*(v175 + 32))(v173, v136, v176);
    v138 = v174;
    (*(v134 + 16))(v174, v135, v137);
    v132 = v193;
    sub_1E6134678(v138, v193);
    (*(v134 + 8))(v135, v137);
  }

  sub_1E6321560(v205, MEMORY[0x1E69CB950]);
  swift_storeEnumTagMultiPayload();
  sub_1E5FAB460(v132, v219, &qword_1ED074530, &qword_1E65F0CA8);
  v139 = sub_1E65D81E8();
  v142 = v189;
  if (v141 == -1)
  {
    v146 = 4;
  }

  else
  {
    v230 = v139;
    v231 = v140;
    v232 = v141 & 1;
    v143 = v139;
    v144 = v140;
    v145 = v141;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED074538, &qword_1E65F0D18);
    sub_1E65D7FB8();
    sub_1E5F87158(v143, v144, v145);
    v146 = v234;
  }

  LODWORD(v195) = v146;
  v147 = v213;
  v148 = v227;
  (*(v217 + 16))(v213, v226, v227);
  v149 = 1;
  v121(v147, 0, 1, v148);
  sub_1E65D8158();
  v150 = v206;
  if (*(v142 + 16))
  {
    sub_1E63C4134(v228, &v204[v187], v142, v206);
    v149 = 0;
  }

  v121(v150, v149, 1, v227);
  sub_1E65D8178();
  v151 = type metadata accessor for ActionButtonDescriptor(0);
  v205 = v151;
  v152 = *(*(v151 - 8) + 56);
  v153 = v209;
  v152();
  v154 = v202;
  (v152)(v202, 1, 1, v151);
  v155 = sub_1E65D8088();
  v157 = v156;
  v204 = v156;
  v158 = sub_1E65D80C8();
  v160 = v159;
  v162 = v161;
  v163 = sub_1E65D81B8();
  v162 &= 1u;
  v170 = v155;
  v169 = v153;
  v164 = v206;
  v165 = v208;
  sub_1E63A0574(v215, v219, v188, v195, v213, v220, v206, v208, v221, v218, v233, v169, v154, v170, v157, v158, v160, v162, v163, v166, 7u);

  sub_1E5F87058(v158, v160, v162);

  sub_1E5DFE50C(v154, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v209, &qword_1ED072638, &qword_1E65EB950);
  sub_1E5DFE50C(v165, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v164, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5DFE50C(v220, &qword_1ED074528, &unk_1E660F4D0);
  sub_1E5DFE50C(v213, &qword_1ED072D90, &qword_1E66040F0);
  sub_1E5E1D964(v216, v196, type metadata accessor for ItemContext);
  sub_1E5DFD1CC(v221, v210, &qword_1ED072610, &qword_1E65EB930);
  sub_1E62E2980(v203);
  sub_1E622BB88(v226, v172);
  v229 = type metadata accessor for ArtworkDescriptor(0);
  v220 = type metadata accessor for ContextMenu(0);
  v213 = type metadata accessor for ItemMetrics(0);
  v209 = type metadata accessor for ViewDescriptor(0);
  v208 = sub_1E6364AD4(qword_1EE2D8E10, type metadata accessor for ActionButtonDescriptor, &unk_1E6607920);
  sub_1E6364AD4(&qword_1EE2D9EB8, type metadata accessor for ArtworkDescriptor, &protocol conformance descriptor for ArtworkDescriptor);
  sub_1E6364AD4(&qword_1EE2DB8B0, type metadata accessor for ContextMenu, &unk_1E65EE1B8);
  sub_1E6364AD4(&qword_1EE2DB720, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB738, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  sub_1E6364AD4(&qword_1EE2DB650, type metadata accessor for ItemMetrics, &protocol conformance descriptor for ItemMetrics);
  sub_1E6364AD4(&qword_1EE2DA6C0, type metadata accessor for ViewDescriptor, &protocol conformance descriptor for ViewDescriptor);
  v167 = v224;
  sub_1E65E0488();
  sub_1E5DFE50C(v221, &qword_1ED072610, &qword_1E65EB930);
  sub_1E5DFE50C(v219, &qword_1ED074530, &qword_1E65F0CA8);
  sub_1E5DFE50C(v218, &qword_1ED072D90, &qword_1E66040F0);
  (*(v217 + 8))(v226, v227);
  (v190)(v211, v207);
  (*(v200 + 8))(v228, v201);
  sub_1E6321560(v216, type metadata accessor for ItemContext);
  (*(v198 + 8))(v215, v199);
  sub_1E6321560(v214, MEMORY[0x1E699D780]);
  (*(v212 + 8))(v222, v223);
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072098, &qword_1E65EA780);
  return (*(*(v168 - 8) + 56))(v167, 0, 1, v168);
}

uint64_t sub_1E636472C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1E5DFE6BC;

  return sub_1E639E238(a1, v4, v5, v6, v1 + 40);
}

uint64_t sub_1E63647F4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6360780(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E63648A0(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5FE99E8;

  return sub_1E6360AD8(a1, v1 + v5, v7, v8);
}

uint64_t sub_1E63649B8(uint64_t a1)
{
  v4 = *(type metadata accessor for AppComposer(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5FEE4D4;

  return sub_1E6361CC4(a1, v1 + v5);
}

uint64_t sub_1E6364AD4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6364B1C(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E5FD0850(a1, v1 + 16, v1 + v5);
}

uint64_t ToastError.hashValue.getter()
{
  v1 = *v0;
  sub_1E65E6D28();
  MEMORY[0x1E694E740](v1);
  return sub_1E65E6D78();
}

unint64_t sub_1E6364C84()
{
  result = qword_1ED0788A8;
  if (!qword_1ED0788A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED0788A8);
  }

  return result;
}

uint64_t sub_1E6364CE8()
{
  if (*(sub_1E65D9CF8() + 16))
  {

    sub_1E65E6468();
  }

  else
  {
  }

  sub_1E65D9CF8();
  sub_1E65D9CD8();
  sub_1E65D9D18();
  v0 = sub_1E65D9CE8();
  v1 = v0 + 56;
  v2 = 1 << *(v0 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v0 + 56);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  while (2)
  {
    v8 = v6;
    if (v4)
    {
LABEL_11:
      v4 &= v4 - 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED077030, &qword_1E65F92F8);
      sub_1E65D7FB8();
      switch(v16)
      {
        case 0:
        case 2:
        case 9:
        case 12:
        case 13:
          continue;
        case 1:
          v15 = 0;
          goto LABEL_22;
        case 3:
          v9 = 2;
          goto LABEL_21;
        case 4:
          v9 = 1;
          goto LABEL_21;
        case 5:
          v9 = 3;
          goto LABEL_21;
        case 6:
          v9 = 4;
          goto LABEL_21;
        case 7:
          v9 = 5;
          goto LABEL_21;
        case 8:
          v9 = 6;
          goto LABEL_21;
        case 10:
          v9 = 7;
          goto LABEL_21;
        case 11:
          v9 = 8;
LABEL_21:
          v15 = v9;
LABEL_22:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v7 = sub_1E64F6D5C(0, *(v7 + 2) + 1, 1, v7);
          }

          v11 = *(v7 + 2);
          v10 = *(v7 + 3);
          v12 = v11 + 1;
          if (v11 >= v10 >> 1)
          {
            v13 = sub_1E64F6D5C((v10 > 1), v11 + 1, 1, v7);
            v12 = v11 + 1;
            v7 = v13;
          }

          *(v7 + 2) = v12;
          v7[v11 + 32] = v15;
          continue;
        default:
          goto LABEL_29;
      }
    }

    break;
  }

  while (1)
  {
    v6 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_29:
      JUMPOUT(0);
    }

    if (v6 >= v5)
    {
      break;
    }

    v4 = *(v1 + 8 * v6);
    ++v8;
    if (v4)
    {
      goto LABEL_11;
    }
  }

  sub_1E600A0BC(v7);

  return sub_1E65E1008();
}