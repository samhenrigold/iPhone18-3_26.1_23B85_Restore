uint64_t sub_1E5FF20F4()
{
  *(*v1 + 200) = v0;

  if (v0)
  {
    v2 = sub_1E5FF299C;
  }

  else
  {
    v2 = sub_1E5FF2208;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FF2208()
{
  v31 = v0;
  v2 = v0[7];
  v1 = v0[8];
  v3 = v0[6];

  sub_1E65D7698();
  v4 = sub_1E65D92A8();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v5 = v0[18];
    v6 = v0[17];
    v7 = v0[13];
    v8 = v0[2];
    (*(v0[10] + 8))(v0[11], v0[9]);
    v5(v8, v6, v7);

    v9 = v0[1];

    return v9();
  }

  else
  {
    (*(v0[14] + 16))(v0[16], v0[17], v0[13]);
    v11 = sub_1E65E3B48();
    v12 = sub_1E65E6338();
    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[16];
    v16 = v0[13];
    v15 = v0[14];
    if (v13)
    {
      v17 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v17 = 141558274;
      *(v17 + 4) = 1752392040;
      *(v17 + 12) = 2080;
      sub_1E5FFE9E4();
      v18 = sub_1E65E6BC8();
      v20 = v19;
      v21 = *(v15 + 8);
      v21(v14, v16);
      v22 = sub_1E5DFD4B0(v18, v20, &v30);

      *(v17 + 14) = v22;
      _os_log_impl(&dword_1E5DE9000, v11, v12, "Fetching redirectURL for %{mask.hash}s", v17, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v28);
      MEMORY[0x1E694F1C0](v28, -1, -1);
      MEMORY[0x1E694F1C0](v17, -1, -1);
    }

    else
    {

      v21 = *(v15 + 8);
      v21(v14, v16);
    }

    v0[26] = v21;
    v23 = EngagementService.fetchEngagementRedirectURL.getter();
    v0[27] = v24;
    v29 = (v23 + *v23);
    v25 = swift_task_alloc();
    v0[28] = v25;
    *v25 = v0;
    v25[1] = sub_1E5FF2588;
    v26 = v0[17];
    v27 = v0[2];

    return v29(v27, v26);
  }
}

uint64_t sub_1E5FF2588()
{
  *(*v1 + 232) = v0;

  if (v0)
  {
    v2 = sub_1E5FF2CF8;
  }

  else
  {
    v2 = sub_1E5FF26B8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FF26B8()
{
  v1 = v0[26];
  v2 = v0[17];
  v3 = v0[13];
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FF279C()
{
  *(*v1 + 272) = v0;

  if (v0)
  {
    v2 = sub_1E5FF3064;
  }

  else
  {
    v2 = sub_1E5FF28CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FF28CC()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5FF299C()
{
  v24 = v0;

  v1 = *(v0 + 200);
  *(v0 + 240) = v1;
  *(v0 + 284) = 4;
  sub_1E5FFF464();
  if (sub_1E65D97C8())
  {
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 136), *(v0 + 104));
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v8 = 141558274;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2080;
      sub_1E5FFE9E4();
      v9 = sub_1E65E6BC8();
      v11 = v10;
      v12 = *(v6 + 8);
      v12(v5, v7);
      v13 = sub_1E5DFD4B0(v9, v11, &v23);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Fetching redirectURL for %{mask.hash}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E694F1C0](v21, -1, -1);
      MEMORY[0x1E694F1C0](v8, -1, -1);
    }

    else
    {

      v12 = *(v6 + 8);
      v12(v5, v7);
    }

    *(v0 + 248) = v12;
    v16 = EngagementService.fetchEngagementRedirectURL.getter();
    *(v0 + 256) = v17;
    v22 = (v16 + *v16);
    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_1E5FF279C;
    v19 = *(v0 + 136);
    v20 = *(v0 + 16);

    return v22(v20, v19);
  }

  else
  {
    (*(v0 + 144))(*(v0 + 16), *(v0 + 136), *(v0 + 104));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1E5FF2CF8()
{
  v24 = v0;
  (*(*(v0 + 80) + 8))(*(v0 + 88), *(v0 + 72));
  v1 = *(v0 + 232);
  *(v0 + 240) = v1;
  *(v0 + 284) = 4;
  sub_1E5FFF464();
  if (sub_1E65D97C8())
  {
    (*(*(v0 + 112) + 16))(*(v0 + 120), *(v0 + 136), *(v0 + 104));
    v2 = sub_1E65E3B48();
    v3 = sub_1E65E6338();
    v4 = os_log_type_enabled(v2, v3);
    v6 = *(v0 + 112);
    v5 = *(v0 + 120);
    v7 = *(v0 + 104);
    if (v4)
    {
      v8 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v23 = v21;
      *v8 = 141558274;
      *(v8 + 4) = 1752392040;
      *(v8 + 12) = 2080;
      sub_1E5FFE9E4();
      v9 = sub_1E65E6BC8();
      v11 = v10;
      v12 = *(v6 + 8);
      v12(v5, v7);
      v13 = sub_1E5DFD4B0(v9, v11, &v23);

      *(v8 + 14) = v13;
      _os_log_impl(&dword_1E5DE9000, v2, v3, "Fetching redirectURL for %{mask.hash}s", v8, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x1E694F1C0](v21, -1, -1);
      MEMORY[0x1E694F1C0](v8, -1, -1);
    }

    else
    {

      v12 = *(v6 + 8);
      v12(v5, v7);
    }

    *(v0 + 248) = v12;
    v16 = EngagementService.fetchEngagementRedirectURL.getter();
    *(v0 + 256) = v17;
    v22 = (v16 + *v16);
    v18 = swift_task_alloc();
    *(v0 + 264) = v18;
    *v18 = v0;
    v18[1] = sub_1E5FF279C;
    v19 = *(v0 + 136);
    v20 = *(v0 + 16);

    return v22(v20, v19);
  }

  else
  {
    (*(v0 + 144))(*(v0 + 16), *(v0 + 136), *(v0 + 104));

    v14 = *(v0 + 8);

    return v14();
  }
}

uint64_t sub_1E5FF3064()
{
  v1 = *(v0 + 248);
  v2 = *(v0 + 136);
  v3 = *(v0 + 104);

  v1(v2, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5FF3144@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AppLaunchScope(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for RouteSource(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URLContext(0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  sub_1E5FFEEF0(v2, v9, type metadata accessor for RouteSource);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if ((EnumCaseMultiPayload - 5) >= 5)
    {
      v21 = sub_1E65D8D48();
      (*(*(v21 - 8) + 8))(v9, v21);
    }
  }

  else
  {
    if ((EnumCaseMultiPayload - 1) < 2)
    {
      sub_1E5FFF518(v9, v15, type metadata accessor for URLContext);
      v17 = sub_1E65D74E8();
      v18 = *(v17 - 8);
      (*(v18 + 16))(a1, v15, v17);
      v19 = v15;
LABEL_4:
      sub_1E5FFF4B8(v19, type metadata accessor for URLContext);
      return (*(v18 + 56))(a1, 0, 1, v17);
    }

    if (EnumCaseMultiPayload)
    {
      sub_1E5FFF4B8(v9, type metadata accessor for RouteSource);
    }

    else
    {
      sub_1E5FFF518(v9, v6, type metadata accessor for AppLaunchScope);
      if (swift_getEnumCaseMultiPayload() <= 1)
      {
        sub_1E5FFF518(v6, v13, type metadata accessor for URLContext);
        v17 = sub_1E65D74E8();
        v18 = *(v17 - 8);
        (*(v18 + 16))(a1, v13, v17);
        v19 = v13;
        goto LABEL_4;
      }
    }
  }

  v22 = sub_1E65D74E8();
  return (*(*(v22 - 8) + 56))(a1, 1, 1, v22);
}

uint64_t sub_1E5FF34E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[117] = a5;
  v5[111] = a4;
  v5[105] = a3;
  v5[99] = a2;
  v5[93] = a1;
  v5[118] = type metadata accessor for RouteResource(0);
  v5[119] = swift_task_alloc();
  v6 = sub_1E65DB848();
  v5[120] = v6;
  v5[121] = *(v6 - 8);
  v5[122] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v5[123] = swift_task_alloc();
  v7 = sub_1E65DB438();
  v5[124] = v7;
  v5[125] = *(v7 - 8);
  v5[126] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v5[127] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v5[128] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5[129] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v5[130] = swift_task_alloc();
  v8 = sub_1E65D7A38();
  v5[131] = v8;
  v5[132] = *(v8 - 8);
  v5[133] = swift_task_alloc();
  v5[134] = swift_task_alloc();
  v9 = sub_1E65D74E8();
  v5[135] = v9;
  v5[136] = *(v9 - 8);
  v5[137] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF3818, 0, 0);
}

uint64_t sub_1E5FF3818()
{
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1088);
  v3 = *(v0 + 1080);
  v4 = *(v0 + 792);
  v5 = *(v2 + 16);
  *(v0 + 1104) = v5;
  *(v0 + 1112) = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v5(v1, v4, v3);
  *(v0 + 1120) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  *(v0 + 1216) = *(type metadata accessor for AppComposer(0) + 20);
  *(v0 + 1220) = *(type metadata accessor for AppEnvironment(0) + 76);
  v6 = MarketingService.parseMarketingURLType.getter();
  *(v0 + 1128) = v7;
  v11 = (v6 + *v6);
  v8 = swift_task_alloc();
  *(v0 + 1136) = v8;
  *v8 = v0;
  v8[1] = sub_1E5FF3984;
  v9 = *(v0 + 792);

  return v11(v9);
}

uint64_t sub_1E5FF3984(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1144) = v1;

  if (v1)
  {
    v5 = sub_1E5FF4D20;
  }

  else
  {

    *(v4 + 1152) = a1;
    v5 = sub_1E5FF3AB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5FF3AB4()
{
  v20 = v0[138];
  v1 = v0[136];
  v2 = v0[135];
  v23 = v0[134];
  v25 = v0[133];
  v3 = v0[132];
  v26 = v0[131];
  v4 = v0[130];
  v5 = v0[129];
  v21 = v0[128];
  v22 = v0[127];
  v24 = v0[123];
  v6 = v0[99];
  (*(v1 + 8))(v0[137], v2);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A38, &qword_1E65EC320);
  swift_asyncLet_begin();
  v7 = *MEMORY[0x1E69CBDA8];
  v8 = sub_1E65D8F38();
  v9 = *(v8 - 8);
  (*(v9 + 104))(v4, v7, v8);
  (*(v9 + 56))(v4, 0, 1, v8);
  v20(v5, v6, v2);
  (*(v1 + 56))(v5, 0, 1, v2);
  v10 = sub_1E65D9908();
  (*(*(v10 - 8) + 56))(v21, 1, 1, v10);
  v11 = sub_1E65D9F88();
  (*(*(v11 - 8) + 56))(v22, 1, 1, v11);
  sub_1E65D7A28();
  (*(v3 + 16))(v25, v23, v26);
  sub_1E65D8CA8();
  v12 = sub_1E65D8CB8();
  (*(*(v12 - 8) + 56))(v24, 0, 1, v12);
  v13 = MEMORY[0x1E69E7CC0];
  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E5FB8458(v13);
  sub_1E65DB428();
  v14 = MarketingService.makeMarketingMetricConfiguration.getter();
  v0[145] = v15;
  v27 = (v14 + *v14);
  v16 = swift_task_alloc();
  v0[146] = v16;
  *v16 = v0;
  v16[1] = sub_1E5FF3EDC;
  v17 = v0[126];
  v18 = v0[122];

  return (v27)(v18, v17, 0);
}

uint64_t sub_1E5FF3EDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FF3FF4, 0, 0);
}

uint64_t sub_1E5FF3FF4()
{
  v1 = *(v0 + 1152);
  if (v1)
  {
    if (v1 != 2)
    {
      if (v1 == 1)
      {
        v39 = *(v0 + 1104);
        v45 = *(v0 + 1048);
        v46 = *(v0 + 1072);
        v44 = *(v0 + 1008);
        v2 = *(v0 + 1000);
        v42 = *(v0 + 1056);
        v43 = *(v0 + 992);
        v3 = *(v0 + 976);
        v4 = *(v0 + 968);
        v5 = *(v0 + 960);
        v38 = *(v0 + 1080);
        v40 = *(v0 + 840);
        v41 = *(v0 + 888);
        v37 = *(v0 + 792);
        v6 = *(v0 + 744);
        v47 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
        v7 = (type metadata accessor for RouteDestination(0) - 8);
        v8 = (*(*v7 + 80) + 32) & ~*(*v7 + 80);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1E65EA670;
        v10 = v9 + v8;
        v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720D0, &unk_1E65EA290) + 48);
        (*(v4 + 16))(v10, v3, v5);
        v39(v10 + v11, v37, v38);
        swift_storeEnumTagMultiPayload();
        sub_1E5FFEEF0(v40, v10 + v7[7], type metadata accessor for RouteSource);
        *(v10 + v7[8]) = v41;
        v12 = *(v4 + 8);

        v12(v3, v5);
        (*(v2 + 8))(v44, v43);
        (*(v42 + 8))(v46, v45);
        *v6 = v9;
        *(v6 + 8) = 0;
        *(v6 + 16) = -64;
        *(v6 + 24) = xmmword_1E65EC1C0;
        *(v6 + 40) = 1;
        type metadata accessor for ResolvedURLRoute.Action(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ResolvedURLRoute(0);
        *v47 = 0;
        v47[1] = 0;
        swift_storeEnumTagMultiPayload();
        v13 = sub_1E5FF45AC;
        v14 = v0 + 16;
        v15 = v0 + 696;
        v16 = v0 + 896;
      }

      else
      {
        v48 = *(v0 + 1072);
        v27 = *(v0 + 1056);
        v28 = *(v0 + 1048);
        v29 = *(v0 + 1008);
        v30 = *(v0 + 1000);
        v31 = *(v0 + 992);
        v32 = *(v0 + 976);
        v33 = *(v0 + 968);
        v34 = *(v0 + 960);
        sub_1E5FFEE9C();
        *(v0 + 1208) = swift_allocError();
        *v35 = 1;
        swift_willThrow();
        (*(v33 + 8))(v32, v34);
        (*(v30 + 8))(v29, v31);
        (*(v27 + 8))(v48, v28);
        v13 = sub_1E5FF4BF8;
        v14 = v0 + 16;
        v15 = v0 + 696;
        v16 = v0 + 656;
      }

      return MEMORY[0x1EEE6DEB0](v14, v15, v13, v16);
    }

    *(v0 + 1240) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v17 = type metadata accessor for RouteDestination(0);
    *(v0 + 1192) = v17;
    *(v0 + 1244) = *(*(v17 - 8) + 80);
    v18 = swift_allocObject();
    *(v0 + 1200) = v18;
    *(v18 + 16) = xmmword_1E65EA670;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
    *(v0 + 1248) = *(v19 + 48);
    *(v0 + 1252) = *(v19 + 64);
    v20 = sub_1E5FF4974;
    v21 = v0 + 16;
    v22 = v0 + 696;
    v23 = v0 + 704;
  }

  else
  {
    *(v0 + 1224) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072128, &qword_1E65EA828);
    v24 = type metadata accessor for RouteDestination(0);
    *(v0 + 1176) = v24;
    *(v0 + 1228) = *(*(v24 - 8) + 80);
    v25 = swift_allocObject();
    *(v0 + 1184) = v25;
    *(v25 + 16) = xmmword_1E65EA670;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
    *(v0 + 1232) = *(v26 + 48);
    *(v0 + 1236) = *(v26 + 64);
    v20 = sub_1E5FF45C8;
    v21 = v0 + 16;
    v22 = v0 + 696;
    v23 = v0 + 800;
  }

  return MEMORY[0x1EEE6DEB8](v21, v22, v20, v23);
}

uint64_t sub_1E5FF45E4()
{
  v1 = *(v0 + 1232);
  v20 = *(v0 + 1184);
  v16 = *(v0 + 1236);
  v17 = *(v0 + 1176);
  v14 = *(v0 + 1104);
  v13 = *(v0 + 1080);
  v25 = *(v0 + 1072);
  v23 = *(v0 + 1056);
  v24 = *(v0 + 1048);
  v22 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v21 = *(v0 + 992);
  v3 = *(v0 + 968);
  v18 = *(v0 + 960);
  v19 = *(v0 + 976);
  v4 = *(v0 + 952);
  v5 = *(v0 + 888);
  v15 = *(v0 + 840);
  v6 = *(v0 + 792);
  v7 = *(v0 + 744);
  v8 = v20 + ((*(v0 + 1228) + 32) & ~*(v0 + 1228));
  v26 = (v7 + *(v0 + 1224));
  v9 = *(v0 + 696);
  *v4 = v9;
  (*(v3 + 16))(&v4[v1]);
  v14(&v4[v16], v6, v13);
  swift_storeEnumTagMultiPayload();
  sub_1E5FFEEF0(v15, v8 + *(v17 + 20), type metadata accessor for RouteSource);
  sub_1E5FFF518(v4, v8, type metadata accessor for RouteResource);
  *(v8 + *(v17 + 24)) = v5;
  v10 = *(v3 + 8);

  v11 = v9;
  v10(v19, v18);
  (*(v2 + 8))(v22, v21);
  (*(v23 + 8))(v25, v24);
  *v7 = v20;
  *(v7 + 8) = 0;
  *(v7 + 16) = -64;
  *(v7 + 24) = xmmword_1E65EC1C0;
  *(v7 + 40) = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ResolvedURLRoute(0);
  *v26 = 0;
  v26[1] = 0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1E5FF484C, v0 + 848);
}

uint64_t sub_1E5FF4868()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF4990()
{
  v1 = *(v0 + 1248);
  v20 = *(v0 + 1200);
  v16 = *(v0 + 1252);
  v17 = *(v0 + 1192);
  v14 = *(v0 + 1104);
  v13 = *(v0 + 1080);
  v25 = *(v0 + 1072);
  v23 = *(v0 + 1056);
  v24 = *(v0 + 1048);
  v22 = *(v0 + 1008);
  v2 = *(v0 + 1000);
  v21 = *(v0 + 992);
  v3 = *(v0 + 968);
  v18 = *(v0 + 960);
  v19 = *(v0 + 976);
  v4 = *(v0 + 952);
  v5 = *(v0 + 888);
  v15 = *(v0 + 840);
  v6 = *(v0 + 792);
  v7 = *(v0 + 744);
  v8 = v20 + ((*(v0 + 1244) + 32) & ~*(v0 + 1244));
  v26 = (v7 + *(v0 + 1240));
  v9 = *(v0 + 696);
  *v4 = v9;
  (*(v3 + 16))(&v4[v1]);
  v14(&v4[v16], v6, v13);
  swift_storeEnumTagMultiPayload();
  sub_1E5FFEEF0(v15, v8 + *(v17 + 20), type metadata accessor for RouteSource);
  sub_1E5FFF518(v4, v8, type metadata accessor for RouteResource);
  *(v8 + *(v17 + 24)) = v5;
  v10 = *(v3 + 8);

  v11 = v9;
  v10(v19, v18);
  (*(v2 + 8))(v22, v21);
  (*(v23 + 8))(v25, v24);
  *v7 = v20;
  *(v7 + 8) = 0;
  *(v7 + 16) = -64;
  *(v7 + 24) = xmmword_1E65EC1C0;
  *(v7 + 40) = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ResolvedURLRoute(0);
  *v26 = 0;
  v26[1] = 0;
  swift_storeEnumTagMultiPayload();

  return MEMORY[0x1EEE6DEB0](v0 + 16, v0 + 696, sub_1E5FF45AC, v0 + 752);
}

uint64_t sub_1E5FF4C14()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF4D20()
{
  v1 = v0[143];
  v2 = v0[137];
  v3 = v0[136];
  v4 = v0[135];

  sub_1E5FFE72C(v1, v2, "Failed to parse Marketing URL Type %s: %{public}s");

  (*(v3 + 8))(v2, v4);
  sub_1E5FFEE9C();
  swift_allocError();
  *v5 = 1;
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E5FF4E98(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E5FF4EB8, 0, 0);
}

uint64_t sub_1E5FF4EB8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 40) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FF4FE0;

  return v5();
}

uint64_t sub_1E5FF4FE0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 56) = v1;

  if (v1)
  {
    v5 = sub_1E5FF5134;
  }

  else
  {

    *(v4 + 64) = a1;
    v5 = sub_1E5FF5110;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5FF5134()
{
  v17 = v0;

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 56);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 56);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136446210;
    *(v0 + 16) = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v11 = sub_1E65E5CE8();
    v13 = sub_1E5DFD4B0(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  **(v0 + 24) = 0;
  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1E5FF5308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a4;
  v5[25] = a5;
  v5[22] = a2;
  v5[23] = a3;
  v5[21] = a1;
  v5[26] = type metadata accessor for URLRoute(0);
  v5[27] = swift_task_alloc();
  v6 = sub_1E65DB848();
  v5[28] = v6;
  v5[29] = *(v6 - 8);
  v5[30] = swift_task_alloc();
  v5[31] = type metadata accessor for AppEnvironment(0);
  v5[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072320, &unk_1E65EAB60);
  v5[33] = swift_task_alloc();
  v7 = sub_1E65DB438();
  v5[34] = v7;
  v5[35] = *(v7 - 8);
  v5[36] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735D0, &unk_1E65ED670);
  v5[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072330, &qword_1E65EAB70);
  v5[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v5[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072338, qword_1E65EAB78);
  v5[40] = swift_task_alloc();
  v8 = sub_1E65D7A38();
  v5[41] = v8;
  v5[42] = *(v8 - 8);
  v5[43] = swift_task_alloc();
  v5[44] = swift_task_alloc();
  v9 = sub_1E65D72D8();
  v5[45] = v9;
  v5[46] = *(v9 - 8);
  v5[47] = swift_task_alloc();
  v10 = sub_1E65D9898();
  v5[48] = v10;
  v5[49] = *(v10 - 8);
  v5[50] = swift_task_alloc();
  v5[51] = swift_task_alloc();
  v11 = type metadata accessor for RouteSource(0);
  v5[52] = v11;
  v12 = *(v11 - 8);
  v5[53] = v12;
  v5[54] = *(v12 + 64);
  v5[55] = swift_task_alloc();
  v13 = sub_1E65D7848();
  v5[56] = v13;
  v5[57] = *(v13 - 8);
  v5[58] = swift_task_alloc();
  v5[59] = swift_task_alloc();
  v14 = sub_1E65D74E8();
  v5[60] = v14;
  v15 = *(v14 - 8);
  v5[61] = v15;
  v5[62] = *(v15 + 64);
  v5[63] = swift_task_alloc();
  v5[64] = swift_task_alloc();
  v5[65] = swift_task_alloc();
  v5[66] = swift_task_alloc();
  v5[67] = _s8ResourceOMa(0);
  v5[68] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FF5854, 0, 0);
}

uint64_t sub_1E5FF5854()
{
  v171 = v0;
  sub_1E5FFEEF0(*(v0 + 176), *(v0 + 544), _s8ResourceOMa);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v2 = *(v0 + 544);
        v3 = *(v0 + 176);
        v4 = *v2;
        v5 = *(v2 + 8);
        v6 = *(v2 + 16);
        v7 = *(v2 + 24);
        v8 = *(*(v0 + 208) + 24);
        if (qword_1EE2D7790 != -1)
        {
          swift_once();
        }

        v9 = sub_1E65E3B68();
        __swift_project_value_buffer(v9, qword_1EE2EA2A0);
        sub_1E65E3B18();
        if (v7 <= 1)
        {
          if (!v7)
          {
            v119 = *(v0 + 184);
            v120 = *(v0 + 192);
            v121 = *(v0 + 168);
            LOBYTE(v170[0]) = v4;
            sub_1E6162540(v5, v6, v3 + v8, v119, v120, v121);
            sub_1E5FFF204(v4, v5, v6, 0);
            goto LABEL_51;
          }

          v140 = *(v0 + 440);
          v141 = *(v0 + 424);
          v142 = *(v0 + 168);
          sub_1E5FFEEF0(*(v0 + 184), v140, type metadata accessor for RouteSource);
          v143 = (*(v141 + 80) + 32) & ~*(v141 + 80);
          v144 = swift_allocObject();
          *(v144 + 16) = v4;
          *(v144 + 24) = v5;
          sub_1E5FFF518(v140, v144 + v143, type metadata accessor for RouteSource);
          *v142 = &unk_1E65EC2F8;
          v142[1] = v144;
          type metadata accessor for ResolvedURLRoute(0);
          goto LABEL_17;
        }

        if (v7 == 2)
        {
          v137 = *(v0 + 168);
          v138 = swift_allocObject();
          *(v138 + 16) = v4;
          *(v138 + 24) = v5;
          *v137 = &unk_1E65EC2F0;
          v137[1] = v138;
          goto LABEL_16;
        }

        if (v7 == 3)
        {
          v11 = *(v0 + 432);
          v10 = *(v0 + 440);
          v12 = *(v0 + 424);
          v13 = *(v0 + 192);
          v14 = *(v0 + 168);
          sub_1E5FFEEF0(*(v0 + 184), v10, type metadata accessor for RouteSource);
          v15 = (*(v12 + 80) + 24) & ~*(v12 + 80);
          v16 = (v11 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
          v17 = swift_allocObject();
          *(v17 + 16) = v4;
          sub_1E5FFF518(v10, v17 + v15, type metadata accessor for RouteSource);
          *(v17 + v16) = v13;
          *v14 = &unk_1E65EC2E8;
          v14[1] = v17;
          type metadata accessor for ResolvedURLRoute(0);
          swift_storeEnumTagMultiPayload();

LABEL_51:

          v118 = *(v0 + 8);
          goto LABEL_52;
        }

        v139 = v6 | v5;
        if (v6 | v5 | v4)
        {
          if (v4 != 1 || v139)
          {
            if (v4 != 2 || v139)
            {
              if (v4 != 3 || v139)
              {
                v27 = *(v0 + 168);
                if (v4 != 4 || v139)
                {
                  v28 = &unk_1E65F36D0;
                }

                else
                {
                  v28 = &unk_1E65F36C8;
                }
              }

              else
              {
                v27 = *(v0 + 168);
                v28 = &unk_1E65F36C0;
              }
            }

            else
            {
              v27 = *(v0 + 168);
              v28 = &unk_1E65F36B8;
            }
          }

          else
          {
            v27 = *(v0 + 168);
            v28 = &unk_1E65F36B0;
          }
        }

        else
        {
          v27 = *(v0 + 168);
          v28 = &unk_1E65F36A8;
        }

LABEL_15:
        *v27 = v28;
        v27[1] = 0;
LABEL_16:
        type metadata accessor for ResolvedURLRoute(0);
LABEL_17:
        swift_storeEnumTagMultiPayload();
        goto LABEL_51;
      }

      if (qword_1EE2D7790 != -1)
      {
        swift_once();
      }

      v67 = *(v0 + 216);
      v68 = *(v0 + 176);
      v69 = sub_1E65E3B68();
      __swift_project_value_buffer(v69, qword_1EE2EA2A0);
      sub_1E5FFEEF0(v68, v67, type metadata accessor for URLRoute);
      v70 = sub_1E65E3B48();
      v71 = sub_1E65E6328();
      if (os_log_type_enabled(v70, v71))
      {
        v72 = *(v0 + 216);
        v73 = swift_slowAlloc();
        v74 = swift_slowAlloc();
        v170[0] = v74;
        *v73 = 141558274;
        *(v73 + 4) = 1752392040;
        *(v73 + 12) = 2080;
        sub_1E5FFE9E4();
        v75 = sub_1E65E6BC8();
        v77 = v76;
        sub_1E5FFF4B8(v72, type metadata accessor for URLRoute);
        v78 = sub_1E5DFD4B0(v75, v77, v170);

        *(v73 + 14) = v78;
        _os_log_impl(&dword_1E5DE9000, v70, v71, "Unrecognized URL: %{mask.hash}s", v73, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v74);
        MEMORY[0x1E694F1C0](v74, -1, -1);
        MEMORY[0x1E694F1C0](v73, -1, -1);
      }

      else
      {
        v115 = *(v0 + 216);

        sub_1E5FFF4B8(v115, type metadata accessor for URLRoute);
      }

      v116 = *(v0 + 544);
      sub_1E5FFEE9C();
      swift_allocError();
      *v117 = 0;
      swift_willThrow();
      sub_1E5FFF4B8(v116, _s8ResourceOMa);
LABEL_45:

      v118 = *(v0 + 8);
LABEL_52:

      return v118();
    }

    if (EnumCaseMultiPayload == 5)
    {
      v27 = *(v0 + 168);
      v28 = &unk_1E65EC2E0;
      goto LABEL_15;
    }

    *(v0 + 656) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    *(v0 + 708) = *(type metadata accessor for AppComposer(0) + 20);
    v79 = CatalogService.fetchRemoteExploreTrainerTipShelfLockupDescriptor.getter();
    *(v0 + 664) = v80;
    v168 = (v79 + *v79);
    v81 = swift_task_alloc();
    *(v0 + 672) = v81;
    *v81 = v0;
    v81[1] = sub_1E5FF80D8;
    v82 = *(v0 + 400);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v18 = *(v0 + 544);
      v19 = *(v0 + 208);
      v21 = *(v0 + 184);
      v20 = *(v0 + 192);
      v22 = *(v0 + 168);
      v23 = *(v0 + 176);
      v24 = *(v18 + 16);
      v25 = *(v18 + 40);
      v26 = *(v18 + 48);

      LOBYTE(v170[0]) = v24;
      sub_1E6162540(v25, v26, v23 + *(v19 + 24), v21, v20, v22);

      goto LABEL_51;
    }

    v49 = *(v0 + 544);
    v50 = *(v0 + 528);
    v51 = *(v0 + 480);
    v52 = *(v0 + 488);
    v53 = *v49;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420);
    v55 = *(v52 + 32);
    v55(v50, &v49[*(v54 + 48)], v51);
    *(v0 + 552) = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
    swift_getKeyPath();
    sub_1E65E4EC8();

    *(v0 + 688) = *(type metadata accessor for AppComposer(0) + 20);
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v56 = sub_1E65E3B68();
    __swift_project_value_buffer(v56, qword_1EE2EA2A0);
    sub_1E65E3B18();
    if (v53 <= 1)
    {
      if (v53)
      {
        v122 = *(v0 + 528);
        v123 = *(v0 + 480);
        v124 = *(v0 + 488);
        v126 = *(v0 + 184);
        v125 = *(v0 + 192);
        v127 = *(v0 + 168);
        v128 = (v127 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
        v129 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48);
        (*(v124 + 16))(v127, v122, v123);
        type metadata accessor for RouteResource(0);
        swift_storeEnumTagMultiPayload();
        v130 = type metadata accessor for RouteDestination(0);
        sub_1E5FFEEF0(v126, v127 + *(v130 + 20), type metadata accessor for RouteSource);
        *(v127 + *(v130 + 24)) = v125;
        *(v127 + v129) = 2;
        type metadata accessor for ResolvedURLRoute.Action(0);
        swift_storeEnumTagMultiPayload();
        type metadata accessor for ResolvedURLRoute(0);
        *v128 = 0;
        v128[1] = 0;
      }

      else
      {
        v57 = *(v0 + 520);
        v58 = *(v0 + 488);
        v59 = *(v0 + 480);
        v60 = *(v0 + 440);
        v162 = *(v0 + 496);
        v61 = *(v0 + 424);
        v161 = *(v0 + 432);
        v62 = *(v0 + 184);
        v167 = *(v0 + 192);
        v63 = *(v0 + 168);
        (*(v58 + 16))(v57, *(v0 + 528), v59);
        sub_1E5FFEEF0(v62, v60, type metadata accessor for RouteSource);
        v64 = (*(v58 + 80) + 16) & ~*(v58 + 80);
        v65 = (v162 + *(v61 + 80) + v64) & ~*(v61 + 80);
        v66 = swift_allocObject();
        v55(v66 + v64, v57, v59);
        sub_1E5FFF518(v60, v66 + v65, type metadata accessor for RouteSource);
        *(v66 + ((v161 + v65 + 7) & 0xFFFFFFFFFFFFFFF8)) = v167;
        *v63 = &unk_1E65EC300;
        v63[1] = v66;
        type metadata accessor for ResolvedURLRoute(0);
      }

      swift_storeEnumTagMultiPayload();

      goto LABEL_50;
    }

    if (v53 != 2)
    {
      v134 = CatalogService.fetchRemoteExploreTrainerTipShelfLockupDescriptor.getter();
      *(v0 + 560) = v135;
      v168 = (v134 + *v134);
      v136 = swift_task_alloc();
      *(v0 + 568) = v136;
      *v136 = v0;
      v136[1] = sub_1E5FF6ED4;
      v82 = *(v0 + 408);
LABEL_31:

      return v168(v82);
    }

    v97 = sub_1E65D7408();
    if (v98)
    {
      v99 = v97;
      v100 = v98;
      v101 = sub_1E65D7418();
      if ((v102 & 1) == 0)
      {
        v103 = v101;
        v104 = sub_1E65D73F8();
        if (v105)
        {
          v106 = v104;
          v107 = v105;
          v108 = *(v0 + 168);
          v109 = (v108 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
          v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
          v111 = v108 + v110[12];
          v163 = v110[20];
          v166 = v110[16];
          v112 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077900, &unk_1E65EA7E0) + 112);
          *v108 = v106;
          *(v108 + 8) = v107;
          *(v108 + 16) = v99;
          *(v108 + 24) = v100;
          *(v108 + 32) = v103;
          *(v108 + 40) = 3;
          v113 = sub_1E65D96F8();
          (*(*(v113 - 8) + 56))(v108 + v112, 1, 1, v113);
          *(v108 + 48) = 0;
          type metadata accessor for RouteResource(0);
          swift_storeEnumTagMultiPayload();
          v114 = type metadata accessor for RouteDestination(0);
          swift_storeEnumTagMultiPayload();
          *(v108 + *(v114 + 24)) = MEMORY[0x1E69E7CD0];
          *v111 = 0;
          *(v111 + 8) = -64;
          *(v108 + v166) = xmmword_1E65EC1C0;
          *(v108 + v163) = 1;
          type metadata accessor for ResolvedURLRoute.Action(0);
          swift_storeEnumTagMultiPayload();
          type metadata accessor for ResolvedURLRoute(0);
          *v109 = 0;
          v109[1] = 0;
          swift_storeEnumTagMultiPayload();
LABEL_50:
          v131 = *(v0 + 528);
          v132 = *(v0 + 480);
          v133 = *(v0 + 488);
          (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
          (*(v133 + 8))(v131, v132);
          goto LABEL_51;
        }
      }
    }

    (*(*(v0 + 488) + 16))(*(v0 + 512), *(v0 + 528), *(v0 + 480));
    v145 = sub_1E65E3B48();
    v146 = sub_1E65E6328();
    v147 = os_log_type_enabled(v145, v146);
    v148 = *(v0 + 512);
    v149 = *(v0 + 480);
    v150 = *(v0 + 488);
    if (v147)
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v170[0] = v152;
      *v151 = 141558274;
      *(v151 + 4) = 1752392040;
      *(v151 + 12) = 2080;
      sub_1E5FFE9E4();
      v153 = sub_1E65E6BC8();
      v155 = v154;
      (*(v150 + 8))(v148, v149);
      v156 = sub_1E5DFD4B0(v153, v155, v170);

      *(v151 + 14) = v156;
      _os_log_impl(&dword_1E5DE9000, v145, v146, "Bad MultiUser URL: %{mask.hash}s", v151, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v152);
      MEMORY[0x1E694F1C0](v152, -1, -1);
      MEMORY[0x1E694F1C0](v151, -1, -1);
    }

    else
    {

      (*(v150 + 8))(v148, v149);
    }

    sub_1E5FAA54C();
    swift_allocError();
    *v157 = 4;
    swift_willThrow();
    v158 = *(v0 + 528);
    v159 = *(v0 + 480);
    v160 = *(v0 + 488);
    (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
    (*(v160 + 8))(v158, v159);
    goto LABEL_45;
  }

  v29 = *(v0 + 504);
  v31 = *(v0 + 480);
  v30 = *(v0 + 488);
  v32 = *(v0 + 312);
  v33 = *(v0 + 320);
  v34 = *(v0 + 296);
  v164 = *(v0 + 304);
  (*(v30 + 32))(v29, *(v0 + 544), v31);
  v35 = *MEMORY[0x1E69CBDD8];
  v36 = sub_1E65D8F38();
  v37 = *(v36 - 8);
  (*(v37 + 104))(v33, v35, v36);
  (*(v37 + 56))(v33, 0, 1, v36);
  v38 = *(v30 + 16);
  *(v0 + 584) = v38;
  *(v0 + 592) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v38(v32, v29, v31);
  (*(v30 + 56))(v32, 0, 1, v31);
  v39 = sub_1E65D9908();
  (*(*(v39 - 8) + 56))(v164, 1, 1, v39);
  v40 = sub_1E65D9F88();
  (*(*(v40 - 8) + 56))(v34, 1, 1, v40);
  sub_1E65D7A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A18, &qword_1E65EC2D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E65EA670;
  *(inited + 32) = sub_1E65D8868();
  *(inited + 40) = v42;
  v43 = sub_1E65D74A8();
  if (v44 && (*(v0 + 136) = v43, *(v0 + 144) = v44, strcpy((v0 + 152), "sharedActivity"), *(v0 + 167) = -18, sub_1E5F9AEA8(), v45 = sub_1E65E66D8(), , (v45 & 1) != 0))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072370, &qword_1E65EABA0);
    v46 = swift_initStackObject();
    *(v46 + 16) = xmmword_1E65EA670;
    *(v46 + 32) = sub_1E65D8878();
    *(v46 + 40) = v47;
    *(v46 + 48) = 0xD000000000000014;
    *(v46 + 56) = 0x80000001E6610A70;
    v48 = sub_1E6427498(v46);
    swift_setDeallocating();
    sub_1E5DFE50C(v46 + 32, &qword_1ED072378, &qword_1E65EABA8);
  }

  else
  {
    v48 = 0;
  }

  v84 = *(v0 + 344);
  v85 = *(v0 + 352);
  v87 = *(v0 + 328);
  v86 = *(v0 + 336);
  v88 = *(v0 + 256);
  v89 = *(v0 + 264);
  v165 = *(v0 + 200);
  *(inited + 48) = v48;
  v90 = sub_1E6427B08(inited);
  swift_setDeallocating();
  sub_1E5DFE50C(inited + 32, &qword_1ED072A20, &qword_1E65EC2D8);
  (*(v86 + 16))(v84, v85, v87);
  sub_1E65D8CA8();
  v91 = sub_1E65D8CB8();
  (*(*(v91 - 8) + 56))(v89, 0, 1, v91);
  sub_1E5FF8D10(v90);

  sub_1E5FB8458(MEMORY[0x1E69E7CC0]);
  sub_1E65DB428();
  v92 = OBJC_IVAR____TtC10Blackbeard9AppRouter_composer;
  v93 = type metadata accessor for AppComposer(0);
  sub_1E5FFEEF0(v165 + *(v93 + 20) + v92, v88, type metadata accessor for AppEnvironment);
  v94 = AccountService.fetchCurrentAccount.getter();
  *(v0 + 600) = v95;
  v169 = (v94 + *v94);
  v96 = swift_task_alloc();
  *(v0 + 608) = v96;
  *v96 = v0;
  v96[1] = sub_1E5FF7700;

  return v169();
}

uint64_t sub_1E5FF6ED4()
{
  *(*v1 + 576) = v0;

  if (v0)
  {
    v2 = sub_1E5FF753C;
  }

  else
  {
    v2 = sub_1E5FF6FE8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FF6FE8()
{

  v1 = sub_1E65D9848();
  v2 = sub_1E634BE38(v1);
  if (v2 == 36)
  {
    v3 = *(v0 + 408);
    v4 = *(v0 + 384);
    v5 = *(v0 + 392);
    sub_1E5FFEE9C();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    (*(v5 + 8))(v3, v4);
  }

  else
  {
    v11 = v2;
    v12 = *(v0 + 408);
    v31 = *(v0 + 392);
    v32 = *(v0 + 384);
    v13 = *(v0 + 368);
    v25 = *(v0 + 376);
    v26 = *(v0 + 472);
    v27 = *(v0 + 360);
    v14 = *(v0 + 248);
    v30 = *(v0 + 184);
    v15 = *(v0 + 200) + *(v0 + 552) + *(v0 + 688);
    v16 = *(v0 + 168);
    v33 = (v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
    v28 = *(v17 + 64);
    v29 = *(v17 + 48);
    v18 = sub_1E65D97F8();
    v20 = v19;
    v21 = sub_1E65D9888();
    sub_1E63C4134(v26, (v15 + *(v14 + 136)), v21, v25);

    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    *v16 = v18;
    *(v16 + 8) = v20;
    *(v16 + 16) = 1;
    *(v16 + 17) = v11;
    (*(v13 + 16))(v16 + v22, v25, v27);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    v23 = type metadata accessor for RouteDestination(0);
    sub_1E5FFEEF0(v30, v16 + *(v23 + 20), type metadata accessor for RouteSource);
    (*(v13 + 8))(v25, v27);
    (*(v31 + 8))(v12, v32);
    *(v16 + *(v23 + 24)) = MEMORY[0x1E69E7CD0];
    *(v16 + v29) = xmmword_1E65EAE00;
    *(v16 + v28) = 1;
    type metadata accessor for ResolvedURLRoute.Action(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResolvedURLRoute(0);
    *v33 = 0;
    v33[1] = 0;
    swift_storeEnumTagMultiPayload();
  }

  v7 = *(v0 + 528);
  v8 = *(v0 + 480);
  v9 = *(v0 + 488);
  (*(*(v0 + 456) + 8))(*(v0 + 472), *(v0 + 448));
  (*(v9 + 8))(v7, v8);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1E5FF753C()
{

  v1 = v0[66];
  v2 = v0[60];
  v3 = v0[61];
  (*(v0[57] + 8))(v0[59], v0[56]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FF7700(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 616) = v1;

  if (v1)
  {
    v5 = sub_1E5FF7994;
  }

  else
  {

    *(v4 + 624) = a1;
    v5 = sub_1E5FF7830;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E5FF7830()
{
  v1 = *(v0 + 624);
  *(v0 + 632) = v1;
  v2 = v1;
  *(v0 + 692) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  *(v0 + 696) = v3[12];
  *(v0 + 700) = v3[16];
  *(v0 + 704) = v3[20];
  v4 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 640) = v5;
  v10 = (v4 + *v4);
  v6 = swift_task_alloc();
  *(v0 + 648) = v6;
  *v6 = v0;
  v6[1] = sub_1E5FF7C40;
  v7 = *(v0 + 288);
  v8 = *(v0 + 240);

  return (v10)(v8, v7, 0);
}

uint64_t sub_1E5FF7994()
{

  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 616);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6328();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 616);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Failed to fetch current account with error: %{public}@", v8, 0xCu);
    sub_1E5DFE50C(v9, &unk_1ED072130, &qword_1E65EA840);
    MEMORY[0x1E694F1C0](v9, -1, -1);
    MEMORY[0x1E694F1C0](v8, -1, -1);
  }

  else
  {
  }

  *(v0 + 632) = 0;
  *(v0 + 692) = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  *(v0 + 696) = v12[12];
  *(v0 + 700) = v12[16];
  *(v0 + 704) = v12[20];
  v13 = MarketingService.makeMarketingMetricConfiguration.getter();
  *(v0 + 640) = v14;
  v19 = (v13 + *v13);
  v15 = swift_task_alloc();
  *(v0 + 648) = v15;
  *v15 = v0;
  v15[1] = sub_1E5FF7C40;
  v16 = *(v0 + 288);
  v17 = *(v0 + 240);

  return (v19)(v17, v16, 0);
}

uint64_t sub_1E5FF7C40()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FF7D58, 0, 0);
}

uint64_t sub_1E5FF7D58()
{
  v26 = *(v0 + 700);
  v27 = *(v0 + 704);
  v1 = *(v0 + 632);
  v15 = *(v0 + 584);
  v2 = *(v0 + 504);
  v3 = *(v0 + 480);
  v23 = *(v0 + 352);
  v24 = *(v0 + 488);
  v17 = *(v0 + 336);
  v22 = *(v0 + 328);
  v4 = *(v0 + 280);
  v19 = *(v0 + 272);
  v20 = *(v0 + 288);
  v18 = *(v0 + 256);
  v5 = *(v0 + 232);
  v6 = *(v0 + 240);
  v7 = *(v0 + 224);
  v8 = *(v0 + 168);
  v21 = &v8[*(v0 + 696)];
  v25 = &v8[*(v0 + 692)];
  v16 = *(v0 + 184);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED078600, &unk_1E65EA7D0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 64);
  *v8 = v1;
  (*(v5 + 16))(&v8[v10], v6, v7);
  v15(&v8[v11], v2, v3);
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  v12 = type metadata accessor for RouteDestination(0);
  sub_1E5FFEEF0(v16, &v8[*(v12 + 20)], type metadata accessor for RouteSource);

  (*(v5 + 8))(v6, v7);
  sub_1E5FFF4B8(v18, type metadata accessor for AppEnvironment);
  *&v8[*(v12 + 24)] = MEMORY[0x1E69E7CD0];
  (*(v4 + 8))(v20, v19);
  (*(v17 + 8))(v23, v22);
  (*(v24 + 8))(v2, v3);
  *v21 = 0;
  v21[8] = -64;
  *&v8[v26] = xmmword_1E65EC1C0;
  v8[v27] = 1;
  type metadata accessor for ResolvedURLRoute.Action(0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ResolvedURLRoute(0);
  *v25 = 0;
  *(v25 + 1) = 0;
  swift_storeEnumTagMultiPayload();

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E5FF80D8()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1E5FF8728;
  }

  else
  {
    v2 = sub_1E5FF81EC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FF81EC()
{

  v1 = sub_1E65D9848();
  v2 = sub_1E634BE38(v1);
  if (v2 == 36)
  {
    v4 = *(v0 + 392);
    v3 = *(v0 + 400);
    v5 = *(v0 + 384);
    sub_1E5FFEE9C();
    swift_allocError();
    *v6 = 2;
    swift_willThrow();
    (*(v4 + 8))(v3, v5);
  }

  else
  {
    v8 = v2;
    v9 = *(v0 + 456);
    v10 = *(v0 + 464);
    v11 = *(v0 + 400);
    v31 = *(v0 + 392);
    v32 = *(v0 + 384);
    v12 = *(v0 + 368);
    v24 = *(v0 + 376);
    v25 = *(v0 + 448);
    v26 = *(v0 + 360);
    v23 = *(v0 + 248);
    v30 = *(v0 + 184);
    v22 = *(v0 + 200) + *(v0 + 656) + *(v0 + 708);
    v13 = *(v0 + 168);
    v33 = (v13 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
    v28 = *(v14 + 64);
    v29 = *(v14 + 48);
    v27 = v11;
    v15 = sub_1E65D97F8();
    v21 = v16;
    v17 = sub_1E65D9888();
    swift_getKeyPath();
    sub_1E65E4EC8();

    sub_1E63C4134(v10, (v22 + *(v23 + 136)), v17, v24);

    (*(v9 + 8))(v10, v25);
    v18 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077AE0, &unk_1E65EA7B0) + 80);
    *v13 = v15;
    *(v13 + 8) = v21;
    *(v13 + 16) = 1;
    *(v13 + 17) = v8;
    (*(v12 + 16))(v13 + v18, v24, v26);
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    v19 = type metadata accessor for RouteDestination(0);
    sub_1E5FFEEF0(v30, v13 + *(v19 + 20), type metadata accessor for RouteSource);
    (*(v12 + 8))(v24, v26);
    (*(v31 + 8))(v27, v32);
    *(v13 + *(v19 + 24)) = MEMORY[0x1E69E7CD0];
    *(v13 + v29) = xmmword_1E65EAE00;
    *(v13 + v28) = 1;
    type metadata accessor for ResolvedURLRoute.Action(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for ResolvedURLRoute(0);
    *v33 = 0;
    v33[1] = 0;
    swift_storeEnumTagMultiPayload();
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E5FF8728()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF88D4()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  swift_beginAccess();
  v2 = qword_1ED075948;
  v3 = qword_1ED075950;
  *(v0 + 40) = qword_1ED075948;
  *(v0 + 48) = v3;
  v4 = *v1;
  sub_1E5E05374(v2, v3);
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FF89B0;

  return sub_1E5FF8FEC((v0 + 40), 0, v4);
}

uint64_t sub_1E5FF89B0()
{
  v1 = *v0;

  sub_1E5FFF3B4(*(v1 + 40), *(v1 + 48));

  return MEMORY[0x1EEE6DFA0](sub_1E5FF8ADC, 0, 0);
}

uint64_t sub_1E5FF8ADC()
{
  v1 = __swift_project_boxed_opaque_existential_1(*(v0 + 72), *(*(v0 + 72) + 24));
  v3 = qword_1ED075948;
  v2 = qword_1ED075950;
  *(v0 + 88) = qword_1ED075948;
  *(v0 + 96) = v2;
  v4 = *v1;
  sub_1E5E05374(v3, v2);
  *(v0 + 56) = v3;
  *(v0 + 64) = v2;
  v5 = swift_task_alloc();
  *(v0 + 104) = v5;
  *v5 = v0;
  v5[1] = sub_1E5FF8BB0;

  return sub_1E5FF075C((v0 + 56), v4);
}

uint64_t sub_1E5FF8BB0()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FF8CAC, 0, 0);
}

uint64_t sub_1E5FF8CAC()
{
  sub_1E5E0476C(v0[11], v0[12]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FF8D10(uint64_t a1)
{
  v29 = MEMORY[0x1E69E7CC8];
  v36 = MEMORY[0x1E69E7CC8];
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (!v5)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    while (1)
    {
      v10 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v11 = v10 | (v8 << 6);
      v12 = *(a1 + 56);
      v13 = (*(a1 + 48) + 16 * v11);
      v14 = v13[1];
      if (*(v12 + 8 * v11))
      {
        break;
      }

      v32 = 0;
      v30 = 0u;
      v31 = 0u;

LABEL_7:

      result = sub_1E5DFE50C(&v30, &unk_1ED0735E0, &qword_1E65ED680);
      if (!v5)
      {
        goto LABEL_8;
      }
    }

    v15 = *v13;
    *&v33 = *(v12 + 8 * v11);
    swift_bridgeObjectRetain_n();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072380, &qword_1E65EABB0);
    sub_1E5FB9504();
    sub_1E65E6848();

    if (!*(&v31 + 1))
    {
      goto LABEL_7;
    }

    v33 = v30;
    v34 = v31;
    v35 = v32;
    v16 = v29;
    v17 = *(v29 + 16);
    if (*(v29 + 24) <= v17)
    {
      sub_1E6419814(v17 + 1, 1);
      v16 = v36;
    }

    v29 = v16;
    sub_1E65E6D28();
    sub_1E65E5D78();
    result = sub_1E65E6D78();
    v18 = v29 + 64;
    v19 = -1 << *(v29 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v29 + 64 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v18 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v29 + 64 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v18 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v29 + 48) + 16 * v22);
    *v27 = v15;
    v27[1] = v14;
    v28 = *(v29 + 56) + 40 * v22;
    *v28 = v33;
    *(v28 + 16) = v34;
    *(v28 + 32) = v35;
    ++*(v29 + 16);
  }

  while (v5);
LABEL_8:
  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      return v29;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v8 = v9;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1E5FF8FEC(_OWORD *a1, char a2, uint64_t a3)
{
  *(v3 + 136) = a3;
  *(v3 + 330) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED072040, &qword_1E65F0860);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = swift_task_alloc();
  *(v3 + 176) = *a1;

  return MEMORY[0x1EEE6DFA0](sub_1E5FF90E8, 0, 0);
}

uint64_t sub_1E5FF90E8()
{
  v1 = v0[23];
  if (v1 == 7)
  {
    sub_1E65E6058();
    v0[31] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v8;
    v7 = sub_1E5FF99F4;
  }

  else if (v1 == 6)
  {
    swift_beginAccess();
    v2 = qword_1ED075958;
    v3 = qword_1ED075960;
    v0[14] = qword_1ED075958;
    v0[15] = v3;
    v0[24] = sub_1E65E6058();
    sub_1E5E05374(v2, v3);
    v0[25] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v5;
    v7 = sub_1E5FF9260;
  }

  else
  {
    v0[10] = v0[22];
    v0[11] = v1;
    v0[34] = sub_1E65E6058();
    v0[35] = sub_1E65E6048();
    v4 = sub_1E65E5FC8();
    v6 = v9;
    v7 = sub_1E5FF9D44;
  }

  return MEMORY[0x1EEE6DFA0](v7, v4, v6);
}

uint64_t sub_1E5FF9260()
{
  v1 = v0[21];

  sub_1E63350F4(v0 + 14, v1);
  sub_1E5E0476C(v0[14], v0[15]);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF92E4, 0, 0);
}

uint64_t sub_1E5FF92E4()
{
  v1 = v0[21];
  v2 = type metadata accessor for NavigationControllerRoutingContext(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v1, &qword_1ED072A30, &qword_1E65EEA70);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[26] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();
    v0[27] = v6;
    v0[28] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1E5FF9430, v6, v5);
  }
}

uint64_t sub_1E5FF9430()
{
  v1 = *(v0 + 152);
  v2 = type metadata accessor for RouteDestination(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 329) = 0;
  v3 = swift_task_alloc();
  *(v0 + 232) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FF9518;
  v4 = *(v0 + 152);
  v5 = *(v0 + 330);

  return sub_1E5FA1E18(v4, v5, (v0 + 329));
}

uint64_t sub_1E5FF9518()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  *(*v1 + 240) = v0;

  sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
  v4 = *(v2 + 216);
  v5 = *(v2 + 224);
  if (v0)
  {
    v6 = sub_1E5FF970C;
  }

  else
  {
    v6 = sub_1E5FF9660;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5FF9660()
{
  v1 = *(v0 + 168);

  sub_1E5FFF4B8(v1, type metadata accessor for NavigationControllerRoutingContext);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FF970C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FF9774, 0, 0);
}

uint64_t sub_1E5FF9774()
{
  v22 = v0;
  sub_1E5FFF4B8(v0[21], type metadata accessor for NavigationControllerRoutingContext);
  v1 = v0[30];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E5FFF3A0(v3, v2);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5FFF3B4(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446466;
    v0[12] = v9;
    v0[13] = v8;
    sub_1E5FFF3A0(v9, v8);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[16] = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Unable to reset %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FF99F4()
{

  sub_1E5FF0694(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF9A6C, 0, 0);
}

uint64_t sub_1E5FF9A6C()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v3 = swift_task_alloc();
    *(v0 + 256) = v3;
    *v3 = v0;
    v3[1] = sub_1E5FF9BA4;
    v4 = *(v0 + 330);

    return RoutingContext.reset(animated:)(v4, v1, v2);
  }

  else
  {
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);

    v6 = *(v0 + 8);

    return v6();
  }
}

uint64_t sub_1E5FF9BA4()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1E5FFA4D0;
  }

  else
  {
    v2 = sub_1E5FF9CB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FF9CB8()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E5FF9D44()
{
  v1 = *(v0 + 160);

  sub_1E63350F4((v0 + 80), v1);

  return MEMORY[0x1EEE6DFA0](sub_1E5FF9DC0, 0, 0);
}

uint64_t sub_1E5FF9DC0()
{
  v1 = v0[20];
  v2 = type metadata accessor for NavigationControllerRoutingContext(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1E5DFE50C(v1, &qword_1ED072A30, &qword_1E65EEA70);

    v3 = v0[1];

    return v3();
  }

  else
  {
    v0[36] = sub_1E65E6048();
    v6 = sub_1E65E5FC8();
    v0[37] = v6;
    v0[38] = v5;

    return MEMORY[0x1EEE6DFA0](sub_1E5FF9F0C, v6, v5);
  }
}

uint64_t sub_1E5FF9F0C()
{
  v1 = *(v0 + 144);
  v2 = type metadata accessor for RouteDestination(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  *(v0 + 328) = 0;
  v3 = swift_task_alloc();
  *(v0 + 312) = v3;
  *v3 = v0;
  v3[1] = sub_1E5FF9FF4;
  v4 = *(v0 + 144);
  v5 = *(v0 + 330);

  return sub_1E5FA1E18(v4, v5, (v0 + 328));
}

uint64_t sub_1E5FF9FF4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  *(*v1 + 320) = v0;

  sub_1E5DFE50C(v3, &unk_1ED072040, &qword_1E65F0860);
  v4 = *(v2 + 296);
  v5 = *(v2 + 304);
  if (v0)
  {
    v6 = sub_1E5FFA1E8;
  }

  else
  {
    v6 = sub_1E5FFA13C;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

uint64_t sub_1E5FFA13C()
{
  v1 = *(v0 + 160);

  sub_1E5FFF4B8(v1, type metadata accessor for NavigationControllerRoutingContext);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E5FFA1E8()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FFA250, 0, 0);
}

uint64_t sub_1E5FFA250()
{
  v22 = v0;
  sub_1E5FFF4B8(v0[20], type metadata accessor for NavigationControllerRoutingContext);
  v1 = v0[40];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E5FFF3A0(v3, v2);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5FFF3B4(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446466;
    v0[12] = v9;
    v0[13] = v8;
    sub_1E5FFF3A0(v9, v8);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[16] = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Unable to reset %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FFA4D0()
{
  v22 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[33];
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v3 = v0[22];
  v2 = v0[23];
  v4 = sub_1E65E3B68();
  __swift_project_value_buffer(v4, qword_1EE2EA2A0);
  sub_1E5FFF3A0(v3, v2);
  v5 = v1;
  v6 = sub_1E65E3B48();
  v7 = sub_1E65E6328();
  sub_1E5FFF3B4(v3, v2);

  if (os_log_type_enabled(v6, v7))
  {
    v9 = v0[22];
    v8 = v0[23];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v21 = v11;
    *v10 = 136446466;
    v0[12] = v9;
    v0[13] = v8;
    sub_1E5FFF3A0(v9, v8);
    v12 = sub_1E65E5CE8();
    v14 = sub_1E5DFD4B0(v12, v13, &v21);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2082;
    v0[16] = v1;
    v15 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v16 = sub_1E65E5CE8();
    v18 = sub_1E5DFD4B0(v16, v17, &v21);

    *(v10 + 14) = v18;
    _os_log_impl(&dword_1E5DE9000, v6, v7, "Unable to reset %{public}s: %{public}s", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v11, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {
  }

  v19 = v0[1];

  return v19();
}

uint64_t sub_1E5FFA73C(uint64_t a1, uint64_t a2)
{
  v2[43] = a1;
  v2[44] = a2;
  v3 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v2[45] = v3;
  v2[46] = *(v3 + 64);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = *(type metadata accessor for RouteDestination(0) - 8);
  v2[51] = v4;
  v2[52] = *(v4 + 64);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = type metadata accessor for ResolvedURLRoute.Action(0);
  v2[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FFA8D8, 0, 0);
}

uint64_t sub_1E5FFA8D8()
{
  sub_1E5FFEEF0(*(v0 + 344), *(v0 + 464), type metadata accessor for ResolvedURLRoute.Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      v18 = *(v0 + 464);
      v19 = *(v0 + 424);
      *(v0 + 718) = *(v18 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F0, &qword_1E65EC238) + 48));
      sub_1E5FFF518(v18, v19, type metadata accessor for RouteDestination);
      sub_1E65E6058();
      *(v0 + 688) = sub_1E65E6048();
      v20 = sub_1E65E5FC8();
      v22 = v21;
      v23 = sub_1E5FFC32C;
      goto LABEL_26;
    }

    v8 = *(v0 + 464);
    *(v0 + 608) = *v8;
    *(v0 + 616) = *(v8 + 8);
    *(v0 + 716) = *(v8 + 16);
    v10 = *(v8 + 24);
    v9 = *(v8 + 32);
    *(v0 + 717) = *(v8 + 40);
    if (v9 != 6)
    {
      if (v9 != 7)
      {
LABEL_23:
        *(v0 + 632) = v9;
        *(v0 + 624) = v10;
        *(v0 + 200) = v10;
        *(v0 + 208) = v9;
        sub_1E65E6058();
        *(v0 + 640) = sub_1E65E6048();
        v20 = sub_1E65E5FC8();
        v22 = v25;
        v23 = sub_1E5FFBC30;
        goto LABEL_26;
      }

      swift_getKeyPath();
      sub_1E65E4EC8();

      v9 = *(v0 + 240);
      if (v9 != 6)
      {
        v10 = *(v0 + 232);
        goto LABEL_23;
      }
    }

    swift_beginAccess();
    v10 = qword_1ED075958;
    v9 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_23;
  }

  if (!EnumCaseMultiPayload)
  {
    v2 = *(v0 + 464);
    v3 = *(v0 + 448);
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A00, &qword_1E65EC288);
    v5 = (v2 + *(v4 + 48));
    v7 = *v5;
    v6 = v5[1];
    *(v0 + 713) = *(v2 + *(v4 + 64));
    sub_1E5FFF518(v2, v3, type metadata accessor for RouteDestination);
    if (v6 != 6)
    {
      if (v6 != 7)
      {
LABEL_21:
        *(v0 + 472) = v7;
        *(v0 + 480) = v6;
        *(v0 + 296) = v7;
        *(v0 + 304) = v6;
        sub_1E65E6058();
        *(v0 + 488) = sub_1E65E6048();
        v20 = sub_1E65E5FC8();
        v22 = v24;
        v23 = sub_1E5FFAD90;
        goto LABEL_26;
      }

      swift_getKeyPath();
      sub_1E65E4EC8();

      v6 = *(v0 + 336);
      if (v6 != 6)
      {
        v7 = *(v0 + 328);
        goto LABEL_21;
      }
    }

    swift_beginAccess();
    v7 = qword_1ED075958;
    v6 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_21;
  }

  v11 = *(v0 + 464);
  v12 = *(v0 + 432);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729F8, &unk_1E6602A80);
  v14 = v11 + v13[12];
  *(v0 + 536) = *v14;
  *(v0 + 714) = *(v14 + 8);
  v15 = (v11 + v13[16]);
  v17 = *v15;
  v16 = v15[1];
  *(v0 + 715) = *(v11 + v13[20]);
  sub_1E5FFF518(v11, v12, type metadata accessor for RouteDestination);
  if (v16 == 6)
  {
LABEL_19:
    swift_beginAccess();
    v17 = qword_1ED075958;
    v16 = qword_1ED075960;
    sub_1E5E05374(qword_1ED075958, qword_1ED075960);
    goto LABEL_25;
  }

  if (v16 == 7)
  {
    swift_getKeyPath();
    sub_1E65E4EC8();

    v16 = *(v0 + 288);
    if (v16 != 6)
    {
      v17 = *(v0 + 280);
      goto LABEL_25;
    }

    goto LABEL_19;
  }

LABEL_25:
  *(v0 + 552) = v16;
  *(v0 + 544) = v17;
  *(v0 + 248) = v17;
  *(v0 + 256) = v16;
  sub_1E65E6058();
  *(v0 + 560) = sub_1E65E6048();
  v20 = sub_1E65E5FC8();
  v22 = v26;
  v23 = sub_1E5FFB4A8;
LABEL_26:

  return MEMORY[0x1EEE6DFA0](v23, v20, v22);
}

uint64_t sub_1E5FFAD90()
{
  v1 = *(v0 + 480);
  v2 = *(v0 + 472);
  v3 = *(v0 + 400);

  sub_1E5E24114((v0 + 296), v3);
  *(v0 + 312) = v2;
  *(v0 + 320) = v1;
  v4 = swift_task_alloc();
  *(v0 + 496) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FFAE54;
  v5 = *(v0 + 352);

  return sub_1E5FF075C((v0 + 312), v5);
}

uint64_t sub_1E5FFAE54()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FFAF50, 0, 0);
}

uint64_t sub_1E5FFAF50()
{
  v1 = *(v0 + 713);
  v3 = *(v0 + 440);
  v2 = *(v0 + 448);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 392);
  v8 = *(v0 + 360);
  v7 = *(v0 + 368);
  sub_1E5FFEEF0(*(v0 + 400), v6, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFEEF0(v2, v3, type metadata accessor for RouteDestination);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v7 + *(v5 + 80) + v9) & ~*(v5 + 80);
  v11 = swift_allocObject();
  *(v0 + 504) = v11;
  sub_1E5FFF518(v6, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF518(v3, v11 + v10, type metadata accessor for RouteDestination);
  v12 = (v11 + v10 + v4);
  *v12 = v1;
  v12[1] = 0;
  v13 = swift_task_alloc();
  *(v0 + 512) = v13;
  *(v13 + 16) = &unk_1E65EC298;
  *(v13 + 24) = v11;
  v14 = swift_task_alloc();
  *(v0 + 520) = v14;
  *v14 = v0;
  v14[1] = sub_1E5FFB13C;
  v15 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v14, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFF594, v13, v15);
}

uint64_t sub_1E5FFB13C()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_1E5FFB374;
  }

  else
  {

    v2 = sub_1E5FFB260;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFB260()
{
  v1 = v0[56];
  v2 = v0[50];
  sub_1E5E0476C(v0[59], v0[60]);
  sub_1E5FFF4B8(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF4B8(v1, type metadata accessor for RouteDestination);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FFB374()
{
  v2 = v0[59];
  v1 = v0[60];
  v3 = v0[56];
  v4 = v0[50];

  sub_1E5E0476C(v2, v1);
  sub_1E5FFF4B8(v4, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF4B8(v3, type metadata accessor for RouteDestination);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E5FFB4A8()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 384);

  sub_1E5E24114((v0 + 248), v3);
  *(v0 + 264) = v2;
  *(v0 + 272) = v1;
  v4 = swift_task_alloc();
  *(v0 + 568) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FFB570;
  v5 = *(v0 + 352);

  return sub_1E5FF075C((v0 + 264), v5);
}

uint64_t sub_1E5FFB570()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FFB66C, 0, 0);
}

uint64_t sub_1E5FFB66C()
{
  v18 = *(v0 + 715);
  v1 = *(v0 + 536);
  v3 = *(v0 + 432);
  v2 = *(v0 + 440);
  v5 = *(v0 + 408);
  v4 = *(v0 + 416);
  v6 = *(v0 + 392);
  v7 = *(v0 + 360);
  v8 = *(v0 + 368);
  v9 = *(v0 + 714);
  sub_1E5FFEEF0(*(v0 + 384), v6, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFEEF0(v3, v2, type metadata accessor for RouteDestination);
  v10 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v11 = (v8 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 576) = v12;
  sub_1E5FFF518(v6, v12 + v10, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5FFF518(v2, v12 + v11, type metadata accessor for RouteDestination);
  v13 = v12 + ((v4 + v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  *v13 = v1;
  *(v13 + 8) = v9;
  *(v13 + 9) = v18;
  *(v13 + 10) = 0;
  sub_1E5FA9D20(v1, v9);
  v14 = swift_task_alloc();
  *(v0 + 584) = v14;
  *(v14 + 16) = &unk_1E65EC280;
  *(v14 + 24) = v12;
  v15 = swift_task_alloc();
  *(v0 + 592) = v15;
  *v15 = v0;
  v15[1] = sub_1E5FFB88C;
  v16 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v15, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFF594, v14, v16);
}

uint64_t sub_1E5FFB88C()
{
  *(*v1 + 600) = v0;

  if (v0)
  {
    v2 = sub_1E5FFBAE0;
  }

  else
  {

    v2 = sub_1E5FFB9B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFB9B4()
{
  v1 = *(v0 + 536);
  v2 = *(v0 + 432);
  v3 = *(v0 + 384);
  v4 = *(v0 + 714);
  sub_1E5E0476C(*(v0 + 544), *(v0 + 552));
  sub_1E5FFF4B8(v3, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v1, v4);
  sub_1E5FFF4B8(v2, type metadata accessor for RouteDestination);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1E5FFBAE0()
{
  v1 = *(v0 + 552);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 432);
  v5 = *(v0 + 384);
  v6 = *(v0 + 714);

  sub_1E5E0476C(v2, v1);
  sub_1E5FFF4B8(v5, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v3, v6);
  sub_1E5FFF4B8(v4, type metadata accessor for RouteDestination);

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_1E5FFBC30()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 376);

  sub_1E5E24114((v0 + 200), v3);
  *(v0 + 216) = v2;
  *(v0 + 224) = v1;
  v4 = swift_task_alloc();
  *(v0 + 648) = v4;
  *v4 = v0;
  v4[1] = sub_1E5FFBCFC;
  v5 = *(v0 + 352);

  return sub_1E5FF075C((v0 + 216), v5);
}

uint64_t sub_1E5FFBCFC()
{

  return MEMORY[0x1EEE6DFA0](sub_1E5FFBDF8, 0, 0);
}

uint64_t sub_1E5FFBDF8()
{
  v1 = *(v0 + 717);
  v2 = *(v0 + 616);
  v3 = *(v0 + 608);
  v4 = *(v0 + 392);
  v5 = *(v0 + 368);
  v6 = *(v0 + 360);
  v7 = *(v0 + 716);
  sub_1E5FFEEF0(*(v0 + 376), v4, type metadata accessor for NavigationControllerRoutingContext);
  v8 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v9 = (v5 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  *(v0 + 656) = v10;
  sub_1E5FFF518(v4, v10 + v8, type metadata accessor for NavigationControllerRoutingContext);
  *(v10 + v9) = v3;
  v11 = v10 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8);
  *v11 = v2;
  *(v11 + 8) = v7;
  *(v11 + 9) = v1;
  *(v11 + 10) = 0;
  sub_1E5FA9D20(v2, v7);
  v12 = swift_task_alloc();
  *(v0 + 664) = v12;
  *(v12 + 16) = &unk_1E65EC250;
  *(v12 + 24) = v10;
  v13 = swift_task_alloc();
  *(v0 + 672) = v13;
  *v13 = v0;
  v13[1] = sub_1E5FFBFC8;
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v13, 0, 0, 0xD000000000000011, 0x80000001E6610F30, sub_1E5FFEB84, v12, v14);
}

uint64_t sub_1E5FFBFC8()
{
  *(*v1 + 680) = v0;

  if (v0)
  {
    v2 = sub_1E5FFC1FC;
  }

  else
  {

    v2 = sub_1E5FFC0F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFC0F0()
{
  v1 = *(v0 + 616);
  v2 = *(v0 + 376);
  v3 = *(v0 + 716);
  sub_1E5E0476C(*(v0 + 624), *(v0 + 632));
  sub_1E5FFF4B8(v2, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5FFC1FC()
{
  v1 = *(v0 + 632);
  v2 = *(v0 + 624);
  v3 = *(v0 + 616);
  v4 = *(v0 + 376);
  v5 = *(v0 + 716);

  sub_1E5E0476C(v2, v1);
  sub_1E5FFF4B8(v4, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E5F94E00(v3, v5);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1E5FFC32C()
{

  sub_1E5FF0694(v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1E5FFC3A4, 0, 0);
}

uint64_t sub_1E5FFC3A4()
{
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = *(v0 + 718);
    v3 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    *(v0 + 712) = v2;
    v4 = swift_task_alloc();
    *(v0 + 696) = v4;
    *v4 = v0;
    v4[1] = sub_1E5FFC554;
    v5 = *(v0 + 424);

    return RoutingContext.resolveDetours(_:priority:)(v5, (v0 + 712), v1, v3);
  }

  else
  {
    sub_1E5FFF4B8(*(v0 + 424), type metadata accessor for RouteDestination);
    sub_1E5DFE50C(v0 + 16, &unk_1ED074320, &unk_1E65EA730);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1E5FFC554()
{
  *(*v1 + 704) = v0;

  if (v0)
  {
    v2 = sub_1E5FFC758;
  }

  else
  {
    v2 = sub_1E5FFC668;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFC668()
{
  sub_1E5FFF4B8(v0[53], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FFC758()
{
  sub_1E5FFF4B8(v0[53], type metadata accessor for RouteDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1E5FFC850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  type metadata accessor for ResolvedURLRoute.Action(0);
  v4[17] = swift_task_alloc();
  type metadata accessor for URLRoute(0);
  v4[18] = swift_task_alloc();
  v4[19] = type metadata accessor for ResolvedURLRoute(0);
  v4[20] = swift_task_alloc();
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();
  v4[23] = swift_task_alloc();
  v5 = sub_1E65D74E8();
  v4[24] = v5;
  v4[25] = *(v5 - 8);
  v4[26] = swift_task_alloc();
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v4[29] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v4[30] = swift_task_alloc();
  v4[31] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E5FFCA28, 0, 0);
}

uint64_t sub_1E5FFCA28()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = v0[29];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[13];
  v5 = sub_1E65E3B68();
  v0[32] = __swift_project_value_buffer(v5, qword_1EE2EA2A0);
  sub_1E65E3B18();
  v6 = *(v3 + 16);
  v0[33] = v6;
  v0[34] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = swift_task_alloc();
  v0[35] = v7;
  *v7 = v0;
  v7[1] = sub_1E5FFCB8C;
  v8 = v0[31];
  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];

  return sub_1E5FF1C44(v8, v10, v11, v9);
}

uint64_t sub_1E5FFCB8C()
{
  *(*v1 + 288) = v0;

  if (v0)
  {
    v2 = sub_1E5FFCE4C;
  }

  else
  {
    v2 = sub_1E5FFCCA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFCCA0()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);
  v3 = *(v0 + 232);
  v4 = *(v0 + 192);
  v5 = *(v0 + 200);
  (*(v5 + 56))(v2, 0, 1, v4);
  v6 = *(v5 + 8);
  *(v0 + 296) = v6;
  *(v0 + 304) = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v4);
  sub_1E5F9AF1C(v2, v1);
  v7 = *(v5 + 48);
  if (v7(v1, 1, v4) == 1)
  {
    v8 = *(v0 + 240);
    v9 = *(v0 + 192);
    (*(v0 + 264))(*(v0 + 224), *(v0 + 104), v9);
    if (v7(v8, 1, v9) != 1)
    {
      sub_1E5DFE50C(*(v0 + 240), &qword_1ED072340, &qword_1E65EA410);
    }
  }

  else
  {
    (*(*(v0 + 200) + 32))(*(v0 + 224), *(v0 + 240), *(v0 + 192));
  }

  v10 = swift_task_alloc();
  *(v0 + 312) = v10;
  *v10 = v0;
  v10[1] = sub_1E5FFD018;
  v11 = *(v0 + 224);
  v12 = *(v0 + 184);
  v13 = *(v0 + 120);
  v14 = *(v0 + 128);
  v15 = *(v0 + 112);

  return sub_1E5FF34E0(v12, v11, v15, v13, v14);
}

uint64_t sub_1E5FFCE4C()
{
  v1 = *(v0 + 288);
  sub_1E5FFE72C(v1, *(v0 + 232), "Failed to process redirect URL %s: %{public}s");

  v2 = *(v0 + 240);
  v3 = *(v0 + 248);
  v4 = *(v0 + 232);
  v5 = *(v0 + 192);
  v6 = *(v0 + 200);
  (*(v6 + 56))(v3, 1, 1, v5);
  v7 = *(v6 + 8);
  *(v0 + 296) = v7;
  *(v0 + 304) = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v5);
  sub_1E5F9AF1C(v3, v2);
  v8 = *(v6 + 48);
  if (v8(v2, 1, v5) == 1)
  {
    v9 = *(v0 + 240);
    v10 = *(v0 + 192);
    (*(v0 + 264))(*(v0 + 224), *(v0 + 104), v10);
    if (v8(v9, 1, v10) != 1)
    {
      sub_1E5DFE50C(*(v0 + 240), &qword_1ED072340, &qword_1E65EA410);
    }
  }

  else
  {
    (*(*(v0 + 200) + 32))(*(v0 + 224), *(v0 + 240), *(v0 + 192));
  }

  v11 = swift_task_alloc();
  *(v0 + 312) = v11;
  *v11 = v0;
  v11[1] = sub_1E5FFD018;
  v12 = *(v0 + 224);
  v13 = *(v0 + 184);
  v14 = *(v0 + 120);
  v15 = *(v0 + 128);
  v16 = *(v0 + 112);

  return sub_1E5FF34E0(v13, v12, v16, v14, v15);
}

uint64_t sub_1E5FFD018()
{
  v2 = *v1;
  *(*v1 + 320) = v0;

  if (v0)
  {
    v3 = sub_1E5FFD13C;
  }

  else
  {
    (*(v2 + 296))(*(v2 + 224), *(v2 + 192));
    v3 = sub_1E5FFD384;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFD13C()
{
  v1 = *(v0 + 320);
  *(v0 + 96) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 224);
  if (v3)
  {
    v5 = *(v0 + 416) == 1;
  }

  else
  {
    v5 = 0;
  }

  if (v5)
  {
    v10 = *(v0 + 264);
    v11 = *(v0 + 208);
    v12 = *(v0 + 192);
    v13 = *(v0 + 144);

    v10(v11, v4, v12);
    sub_1E6077428(v11, v13);
    v14 = swift_task_alloc();
    *(v0 + 328) = v14;
    *v14 = v0;
    v14[1] = sub_1E5FFD7EC;
    v15 = *(v0 + 184);
    v16 = *(v0 + 144);
    v17 = *(v0 + 120);
    v18 = *(v0 + 128);
    v19 = *(v0 + 112);

    return sub_1E5FF5308(v15, v16, v19, v17, v18);
  }

  else
  {
    v6 = *(v0 + 296);
    v7 = *(v0 + 192);

    swift_willThrow();
    v6(v4, v7);
    sub_1E5DFE50C(*(v0 + 248), &qword_1ED072340, &qword_1E65EA410);

    v8 = *(v0 + 8);

    return v8();
  }
}

uint64_t sub_1E5FFD384()
{
  v35 = v0;
  v1 = *(v0 + 184);
  v2 = *(v0 + 176);
  (*(v0 + 264))(*(v0 + 216), *(v0 + 104), *(v0 + 192));
  sub_1E5FFEEF0(v1, v2, type metadata accessor for ResolvedURLRoute);
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6338();
  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 296);
  v7 = *(v0 + 216);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  if (v5)
  {
    v30 = *(v0 + 168);
    v31 = v4;
    v10 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    v34 = v32;
    *v10 = 141558786;
    *(v10 + 4) = 1752392040;
    *(v10 + 12) = 2080;
    sub_1E5FFE9E4();
    v11 = sub_1E65E6BC8();
    v13 = v12;
    v6(v7, v8);
    v14 = sub_1E5DFD4B0(v11, v13, &v34);

    *(v10 + 14) = v14;
    *(v10 + 22) = 2160;
    *(v10 + 24) = 1752392040;
    *(v10 + 32) = 2080;
    sub_1E5FFEEF0(v9, v30, type metadata accessor for ResolvedURLRoute);
    v15 = sub_1E65E5CE8();
    v17 = v16;
    sub_1E5FFF4B8(v9, type metadata accessor for ResolvedURLRoute);
    v18 = sub_1E5DFD4B0(v15, v17, &v34);

    *(v10 + 34) = v18;
    _os_log_impl(&dword_1E5DE9000, v3, v31, "Resolved URL %{mask.hash}s to %{mask.hash}s", v10, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v32, -1, -1);
    MEMORY[0x1E694F1C0](v10, -1, -1);
  }

  else
  {

    sub_1E5FFF4B8(v9, type metadata accessor for ResolvedURLRoute);
    v6(v7, v8);
  }

  sub_1E5FFEEF0(*(v0 + 184), *(v0 + 160), type metadata accessor for ResolvedURLRoute);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v0 + 160);
    v20 = *(v0 + 128);
    v21 = *v19;
    *(v0 + 344) = v19[1];
    *(v0 + 80) = &type metadata for AppURLResolver;
    *(v0 + 88) = &off_1F5FAB510;
    *(v0 + 56) = v20;

    v33 = (v21 + *v21);
    v22 = swift_task_alloc();
    *(v0 + 352) = v22;
    *v22 = v0;
    v22[1] = sub_1E5FFDAF4;

    return v33(v0 + 56);
  }

  else
  {
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = (v24 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0729E8, &qword_1E65EC228) + 48));
    *(v0 + 368) = *v26;
    *(v0 + 376) = v26[1];
    sub_1E5FFF518(v24, v25, type metadata accessor for ResolvedURLRoute.Action);
    v27 = swift_task_alloc();
    *(v0 + 384) = v27;
    *v27 = v0;
    v27[1] = sub_1E5FFDD48;
    v28 = *(v0 + 128);
    v29 = *(v0 + 136);

    return sub_1E5FFA73C(v29, v28);
  }
}

uint64_t sub_1E5FFD7EC()
{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = sub_1E5FFD9A4;
  }

  else
  {
    v2 = sub_1E5FFD900;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFD900()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  sub_1E5FFF4B8(*(v0 + 144), type metadata accessor for URLRoute);
  v1(v2, v3);

  return MEMORY[0x1EEE6DFA0](sub_1E5FFD384, 0, 0);
}

uint64_t sub_1E5FFD9A4()
{
  v1 = *(v0 + 296);
  v2 = *(v0 + 224);
  v3 = *(v0 + 192);
  sub_1E5FFF4B8(*(v0 + 144), type metadata accessor for URLRoute);
  v1(v2, v3);

  sub_1E5DFE50C(*(v0 + 248), &qword_1ED072340, &qword_1E65EA410);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E5FFDAF4()
{
  v2 = *v1;
  *(*v1 + 360) = v0;

  if (v0)
  {
    v3 = sub_1E5FFE31C;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 56));
    v3 = sub_1E5FFDC10;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFDC10()
{

  v1 = v0[31];
  sub_1E5FFF4B8(v0[23], type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v1, &qword_1ED072340, &qword_1E65EA410);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1E5FFDD48()
{
  *(*v1 + 392) = v0;

  if (v0)
  {
    v2 = sub_1E5FFE464;
  }

  else
  {
    v2 = sub_1E5FFDE5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E5FFDE5C()
{
  v1 = v0[46];
  if (v1)
  {
    v2 = v0[16];
    v0[5] = &type metadata for AppURLResolver;
    v0[6] = &off_1F5FAB510;
    v0[2] = v2;

    v7 = (v1 + *v1);
    v3 = swift_task_alloc();
    v0[50] = v3;
    *v3 = v0;
    v3[1] = sub_1E5FFE0A8;

    return v7(v0 + 2);
  }

  else
  {
    sub_1E5FFF4B8(v0[17], type metadata accessor for ResolvedURLRoute.Action);
    v5 = v0[31];
    sub_1E5FFF4B8(v0[23], type metadata accessor for ResolvedURLRoute);
    sub_1E5DFE50C(v5, &qword_1ED072340, &qword_1E65EA410);

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1E5FFE0A8()
{
  v2 = *v1;
  *(*v1 + 408) = v0;

  if (v0)
  {
    v3 = sub_1E5FFE5C4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    v3 = sub_1E5FFE1C4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E5FFE1C4()
{
  v1 = v0[17];
  sub_1E5E29474(v0[46], v0[47]);
  sub_1E5FFF4B8(v1, type metadata accessor for ResolvedURLRoute.Action);
  v2 = v0[31];
  sub_1E5FFF4B8(v0[23], type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v2, &qword_1ED072340, &qword_1E65EA410);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FFE31C()
{
  v1 = v0[31];
  v2 = v0[23];

  sub_1E5FFF4B8(v2, type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v1, &qword_1ED072340, &qword_1E65EA410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);

  v3 = v0[1];

  return v3();
}

uint64_t sub_1E5FFE464()
{
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[17];
  sub_1E5E29474(v0[46], v0[47]);
  sub_1E5FFF4B8(v3, type metadata accessor for ResolvedURLRoute.Action);
  sub_1E5FFF4B8(v2, type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v1, &qword_1ED072340, &qword_1E65EA410);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E5FFE5C4()
{
  v1 = v0[31];
  v2 = v0[23];
  v3 = v0[17];
  sub_1E5E29474(v0[46], v0[47]);
  sub_1E5FFF4B8(v3, type metadata accessor for ResolvedURLRoute.Action);
  sub_1E5FFF4B8(v2, type metadata accessor for ResolvedURLRoute);
  sub_1E5DFE50C(v1, &qword_1ED072340, &qword_1E65EA410);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v4 = v0[1];

  return v4();
}

void sub_1E5FFE72C(void *a1, uint64_t a2, const char *a3, ...)
{
  v6 = sub_1E65D74E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v10 = sub_1E65E3B68();
  __swift_project_value_buffer(v10, qword_1EE2EA2A0);
  (*(v7 + 16))(v9, a2, v6);
  v11 = a1;
  v12 = sub_1E65E3B48();
  v13 = sub_1E65E6328();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v26 = a3;
    v15 = v14;
    v16 = swift_slowAlloc();
    v28 = v16;
    *v15 = 136315394;
    sub_1E5FFE9E4();
    v17 = sub_1E65E6BC8();
    v19 = v18;
    (*(v7 + 8))(v9, v6);
    v20 = sub_1E5DFD4B0(v17, v19, &v28);

    *(v15 + 4) = v20;
    *(v15 + 12) = 2082;
    v27 = a1;
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED07B740, &qword_1E65ED600);
    v22 = sub_1E65E5CE8();
    v24 = sub_1E5DFD4B0(v22, v23, &v28);

    *(v15 + 14) = v24;
    _os_log_impl(&dword_1E5DE9000, v12, v13, v26, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v16, -1, -1);
    MEMORY[0x1E694F1C0](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }
}

unint64_t sub_1E5FFE9E4()
{
  result = qword_1EE2D71E0;
  if (!qword_1EE2D71E0)
  {
    sub_1E65D74E8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D71E0);
  }

  return result;
}

uint64_t sub_1E5FFEA3C(uint64_t a1)
{
  v4 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + v6);
  v8 = v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8);
  v9 = *v8;
  v10 = *(v8 + 9);
  v11 = *(v8 + 10);
  v12 = *(v8 + 8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E5FF1120(a1, v1 + v5, v7, v9, v12, v10, v11);
}

uint64_t sub_1E5FFEB8C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8);
  v11 = *v10;
  v12 = *(v10 + 9);
  v13 = *(v10 + 10);
  v14 = *(v10 + 8);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1E5DFE6BC;

  return sub_1E5FF1648(a1, v1 + v6, v1 + v9, v11, v14, v12, v13);
}

uint64_t sub_1E5FFED24(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for NavigationControllerRoutingContext(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for RouteDestination(0) - 8);
  v9 = v1 + ((v6 + v7 + *(v8 + 80)) & ~*(v8 + 80));
  v10 = (v9 + *(v8 + 64));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFA78C;

  return sub_1E5FF0F1C(a1, v1 + v6, v9, v11, v12);
}

unint64_t sub_1E5FFEE9C()
{
  result = qword_1ED072A10;
  if (!qword_1ED072A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A10);
  }

  return result;
}

uint64_t sub_1E5FFEEF0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FFEF58(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteSource(0) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E616614C(a1, v6, v1 + v5, v7);
}

uint64_t sub_1E5FFF070(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1E5DFE6BC;

  return sub_1E6165A1C(a1, v5, v4);
}

uint64_t sub_1E5FFF118(uint64_t a1)
{
  v4 = *(type metadata accessor for RouteSource(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1E5DFE6BC;

  return sub_1E61652B0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1E5FFF204(uint64_t result, unint64_t a2, uint64_t a3, char a4)
{
  if (a4 == 2)
  {
  }

  if (a4 != 1)
  {
    if (a4)
    {
      return result;
    }
  }

  return sub_1E5E0476C(result, a2);
}

uint64_t sub_1E5FFF234(uint64_t a1)
{
  v4 = *(sub_1E65D74E8() - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = *(v4 + 64);
  v7 = *(type metadata accessor for RouteSource(0) - 8);
  v8 = (v5 + v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFE6BC;

  return sub_1E6163B34(a1, v1 + v5, v1 + v8);
}

uint64_t sub_1E5FFF3A0(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return sub_1E5E05374(a1, a2);
  }

  return a1;
}

uint64_t sub_1E5FFF3B4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0xFFFFFFFFFFFFFFFELL) != 6)
  {
    return sub_1E5E0476C(a1, a2);
  }

  return a1;
}

uint64_t sub_1E5FFF3C8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E5FF4E98(a1, v1);
}

unint64_t sub_1E5FFF464()
{
  result = qword_1EE2D7000;
  if (!qword_1EE2D7000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7000);
  }

  return result;
}

uint64_t sub_1E5FFF4B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E5FFF518(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E5FFF598()
{
  v1 = [v0 template];
  v2 = [v1 uniqueName];

  if (!v2)
  {
    sub_1E65DB998();
    goto LABEL_10;
  }

  v3 = sub_1E65E5C78();
  v5 = v4;

  v6 = sub_1E65DB998();
  if (!v5)
  {
LABEL_10:

    return [v0 unearned];
  }

  if (v3 != v6 || v5 != v7)
  {
    v9 = sub_1E65E6C18();

    if (v9)
    {
      return 1;
    }

    return [v0 unearned];
  }

  return 1;
}

id sub_1E5FFF690(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = [v3 template];
  v8 = [v7 uniqueName];

  if (!v8)
  {
    sub_1E65DB998();
    goto LABEL_10;
  }

  v9 = sub_1E65E5C78();
  v11 = v10;

  v12 = sub_1E65DB998();
  if (!v11)
  {
LABEL_10:

    goto LABEL_11;
  }

  if (v9 == v12 && v11 == v13)
  {

    goto LABEL_17;
  }

  v15 = sub_1E65E6C18();

  if ((v15 & 1) == 0)
  {
LABEL_11:
    if ([v3 unearned])
    {
      result = [a2 unachievedDescriptionForAchievement_];
      if (!result)
      {
        return result;
      }
    }

    else
    {
      result = [a2 achievedDescriptionForAchievement_];
      if (!result)
      {
        return result;
      }
    }

    v17 = result;
    v18 = sub_1E65E5C78();

    return v18;
  }

LABEL_17:
  v19 = *(a1 + 32);
  if (v19 == 255)
  {
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v21 = sub_1E65E3B68();
    __swift_project_value_buffer(v21, qword_1EE2EA2A0);
    v22 = sub_1E65E3B48();
    v23 = sub_1E65E6338();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v29[0] = v25;
      *v24 = 136315138;
      v26 = sub_1E65DB998();
      v28 = sub_1E5DFD4B0(v26, v27, v29);

      *(v24 + 4) = v28;
      _os_log_impl(&dword_1E5DE9000, v22, v23, "No award progress provided for %s, returning empty description string", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x1E694F1C0](v25, -1, -1);
      MEMORY[0x1E694F1C0](v24, -1, -1);
    }

    return 0;
  }

  else
  {
    v20 = *(a1 + 16);
    v29[0] = *a1;
    v29[1] = v20;
    v30 = v19;
    return sub_1E5FFF944(v29, a3);
  }
}

uint64_t sub_1E5FFF944(uint64_t a1, uint64_t a2)
{
  v5 = sub_1E65E5C08();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1E65D7848();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E5C28();
  MEMORY[0x1EEE9AC00](v10 - 8);
  if ((*(a1 + 32) & 1) == 0)
  {
    return 0;
  }

  v11 = *(a1 + 16);
  if (*(a1 + 8))
  {
    if ([v2 unearned])
    {
      sub_1E65E5BA8();
    }

    else
    {
      sub_1E65E5BF8();
      sub_1E65E5BE8();
      v16 = v11;
      sub_1E65E5BC8();
      sub_1E65E5BE8();
      sub_1E65E5C18();
    }

    type metadata accessor for LocalizationBundle();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v7 + 16))(v9, a2, v6);
  }

  else
  {
    sub_1E65E5BF8();
    sub_1E65E5BE8();
    v16 = v11;
    sub_1E65E5BC8();
    sub_1E65E5BE8();
    sub_1E65E5C18();
    type metadata accessor for LocalizationBundle();
    v14 = swift_getObjCClassFromMetadata();
    [objc_opt_self() bundleForClass_];
    (*(v7 + 16))(v9, a2, v6);
  }

  return sub_1E65E5D48();
}

uint64_t sub_1E5FFFD70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v40 = sub_1E65E42E8();
  v41 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v37 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1E65E43E8();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A40, &qword_1E65EC3C8);
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v33 - v8;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A48, &qword_1E65EC3D0);
  MEMORY[0x1EEE9AC00](v33);
  v11 = &v33 - v10;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A50, &qword_1E65EC3D8);
  v38 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v34 = &v33 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A58, &qword_1E65EC3E0);
  v14 = v13 - 8;
  MEMORY[0x1EEE9AC00](v13);
  v35 = &v33 - v15;
  (*(v5 + 16))(&v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v4);
  v16 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v17 = swift_allocObject();
  (*(v5 + 32))(v17 + v16, &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v43 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A60, &qword_1E65EC3E8);
  sub_1E6000688();
  sub_1E65E4AA8();
  sub_1E65E4BA8();
  sub_1E65E3E38();
  (*(v7 + 32))(v11, v9, v36);
  v18 = &v11[*(v33 + 36)];
  v19 = v50;
  *(v18 + 4) = v49;
  *(v18 + 5) = v19;
  *(v18 + 6) = v51;
  v20 = v46;
  *v18 = v45;
  *(v18 + 1) = v20;
  v21 = v48;
  *(v18 + 2) = v47;
  *(v18 + 3) = v21;
  v22 = v37;
  sub_1E65E42D8();
  sub_1E6000898();
  sub_1E6000950(&qword_1EE2D4C10, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
  v23 = v34;
  v24 = v40;
  sub_1E65E47E8();
  (*(v41 + 8))(v22, v24);
  sub_1E5E536BC(v11);
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:0.0784313725 alpha:1.0];
  v25 = sub_1E65E4968();
  KeyPath = swift_getKeyPath();
  v44 = v25;
  v27 = sub_1E65E3D08();
  v28 = v35;
  (*(v38 + 32))(v35, v23, v39);
  v29 = (v28 + *(v14 + 44));
  *v29 = KeyPath;
  v29[1] = v27;
  [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:1.0 blue:0.0 alpha:1.0];
  v30 = sub_1E65E4968();
  v31 = v42;
  sub_1E5E5372C(v28, v42);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A88, &qword_1E65EC438);
  *(v31 + *(result + 36)) = v30;
  return result;
}

uint64_t sub_1E6000374@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0776B0, &unk_1E65EDE50);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v24 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A70, &unk_1E65EC3F0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  sub_1E65E43C8();
  sub_1E65E44A8();
  sub_1E65E4508();
  v8 = sub_1E65E4538();

  KeyPath = swift_getKeyPath();
  v10 = &v7[*(v5 + 36)];
  *v10 = KeyPath;
  v10[1] = v8;
  v11 = *MEMORY[0x1E697E728];
  v12 = sub_1E65E3DD8();
  (*(*(v12 - 8) + 104))(v4, v11, v12);
  sub_1E6000950(&qword_1EE2D4EF0, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1E65E5B98();
  if (result)
  {
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    sub_1E65E4848();
    sub_1E5DFE50C(v4, &unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E5DFE50C(v7, &qword_1ED072A70, &unk_1E65EC3F0);
    v14 = sub_1E65E4488();
    sub_1E65E3BF8();
    v16 = v15;
    v18 = v17;
    v20 = v19;
    v22 = v21;
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A60, &qword_1E65EC3E8);
    v23 = a1 + *(result + 36);
    *v23 = v14;
    *(v23 + 8) = v16;
    *(v23 + 16) = v18;
    *(v23 + 24) = v20;
    *(v23 + 32) = v22;
    *(v23 + 40) = 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1E6000688()
{
  result = qword_1ED072A68;
  if (!qword_1ED072A68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A60, &qword_1E65EC3E8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A70, &unk_1E65EC3F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1ED0776B0, &unk_1E65EDE50);
    sub_1E60007B0();
    sub_1E5FED46C(&qword_1EE2D4460, &unk_1ED0776B0, &unk_1E65EDE50, MEMORY[0x1E69E6ED8]);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A68);
  }

  return result;
}

unint64_t sub_1E60007B0()
{
  result = qword_1EE2D4ED0;
  if (!qword_1EE2D4ED0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A70, &unk_1E65EC3F0);
    sub_1E6000950(&qword_1EE2D4BB8, MEMORY[0x1E697CC80], MEMORY[0x1E697CC78]);
    sub_1E5FED46C(&qword_1EE2D4BE8, &unk_1ED0779E0, &qword_1E65EC400, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D4ED0);
  }

  return result;
}

unint64_t sub_1E6000898()
{
  result = qword_1ED072A78;
  if (!qword_1ED072A78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A48, &qword_1E65EC3D0);
    sub_1E5FED46C(&qword_1ED072A80, &qword_1ED072A40, &qword_1E65EC3C8, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A78);
  }

  return result;
}

uint64_t sub_1E6000950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E6000998()
{
  result = qword_1ED072A90;
  if (!qword_1ED072A90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A88, &qword_1E65EC438);
    sub_1E6000A50();
    sub_1E5FED46C(&qword_1EE2D4C18, &qword_1ED072AA0, &qword_1E65EDF10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A90);
  }

  return result;
}

unint64_t sub_1E6000A50()
{
  result = qword_1ED072A98;
  if (!qword_1ED072A98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A58, &qword_1E65EC3E0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072A48, &qword_1E65EC3D0);
    sub_1E65E42E8();
    sub_1E6000898();
    sub_1E6000950(&qword_1EE2D4C10, MEMORY[0x1E697CB70], MEMORY[0x1E697CB68]);
    swift_getOpaqueTypeConformance2();
    sub_1E5FED46C(&qword_1EE2D4C00, &unk_1ED07A430, &qword_1E65EC470, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072A98);
  }

  return result;
}

uint64_t sub_1E6000B94(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 56) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6000BC4, 0, 0);
}

uint64_t sub_1E6000BC4()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6000C70, v3, v2);
}

uint64_t sub_1E6000C70()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 56);

  sub_1E608521C(v2, v1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6000CF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 56) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6000D24, 0, 0);
}

uint64_t sub_1E6000D24()
{
  v1 = v0[2];
  v0[5] = *(v1 + *(type metadata accessor for AppComposer(0) + 24));
  sub_1E65E6058();
  v0[6] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6000DD0, v3, v2);
}

uint64_t sub_1E6000DD0()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  v3 = *(v0 + 56);

  sub_1E6060BC8(v2, v1, v3);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1E6000E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1E5DFA78C;

  return sub_1E6491DA8(a1, a2, v4);
}

uint64_t sub_1E6000F00(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 24) = *a1;
  *(v2 + 64) = *(a1 + 16);
  return MEMORY[0x1EEE6DFA0](sub_1E6000F30, 0, 0);
}

uint64_t sub_1E6000F30()
{
  if (*(v0 + 64))
  {
    v1 = sub_1E65DE4C8();
    sub_1E6001C44();
    swift_allocError();
    (*(*(v1 - 8) + 104))(v2, *MEMORY[0x1E699CAA0], v1);
    swift_willThrow();
    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    v5 = *(v0 + 32);
    type metadata accessor for AppComposer(0);
    type metadata accessor for AppEnvironment(0);
    v6 = AssetService.cancelAssetBundleOnCurrentDevice.getter();
    *(v0 + 40) = v7;
    v10 = (v6 + *v6);
    v8 = swift_task_alloc();
    *(v0 + 48) = v8;
    *v8 = v0;
    v8[1] = sub_1E6001108;
    v9 = *(v0 + 24);

    return v10(v9, v5);
  }
}

uint64_t sub_1E6001108()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1E600121C;
  }

  else
  {
    v2 = sub_1E5F9E40C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E600121C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60012AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB0, &qword_1E65EC480);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v51 = v38 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CD0, &unk_1E65F42F0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v47 = v38 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AB8, &unk_1E65F84D0);
  v50 = *(v48 - 8);
  v11 = MEMORY[0x1EEE9AC00](v48);
  v45 = v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v46 = v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077CC0, &unk_1E65F2610);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v39 = v38 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v38 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC0, &unk_1E65F4300);
  v44 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v40 = v38 - v23;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  v53 = a3;
  sub_1E65DE488();
  v43 = v63;
  v42 = v64;
  LODWORD(v41) = v65;
  sub_1E65DE488();
  v25 = v60;
  v24 = v61;
  v26 = v62;
  v56 = type metadata accessor for AppState(0);
  v57 = v25;
  v38[1] = *(v56 + 88);
  v58 = v24;
  v59 = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AC8, &qword_1E65EC488);
  sub_1E65E4D78();
  sub_1E6001C2C(v25, v24, v26);
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD0, &qword_1E65EC490);
  sub_1E65DE928();
  sub_1E5DFD1CC(v18, v39, &unk_1ED077CC0, &unk_1E65F2610);
  sub_1E65E4C78();
  sub_1E65E4C88();
  sub_1E5DFE50C(v18, &unk_1ED077CC0, &unk_1E65F2610);
  (*(v44 + 8))(v22, v19);
  v60 = v43;
  v61 = v42;
  v62 = v41;
  v38[0] = a1;
  sub_1E65E4D88();
  sub_1E65DE488();
  v44 = v63;
  v43 = v64;
  LODWORD(v42) = v65;
  sub_1E65DE488();
  v27 = v60;
  v28 = v61;
  v41 = *(v56 + 116);
  LOBYTE(v19) = v62;
  v57 = v60;
  v58 = v61;
  v59 = v62;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AD8, &unk_1E65F84F0);
  v29 = v45;
  sub_1E65E4D78();
  sub_1E6001C2C(v27, v28, v19);
  v30 = v47;
  sub_1E65DE938();
  sub_1E5DFD1CC(v30, v49, &unk_1ED077CD0, &unk_1E65F42F0);
  v31 = v48;
  sub_1E65E4C78();
  sub_1E5DF23E0();
  sub_1E65E4C88();
  sub_1E5DFE50C(v30, &unk_1ED077CD0, &unk_1E65F42F0);
  (*(v50 + 8))(v29, v31);
  v60 = v44;
  v61 = v43;
  v62 = v42;
  sub_1E65E4D88();
  sub_1E65DE488();
  v32 = v63;
  v33 = v64;
  v34 = v65;
  v35 = v51;
  sub_1E65DE958();
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AE0, &qword_1E65F9E00);
  (*(*(v36 - 8) + 56))(v35, 0, 1, v36);
  return sub_1E64076CC(v35, v32, v33, v34);
}

uint64_t sub_1E6001970(unsigned int *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v19 = *a1;
  v18 = *(a1 + 2);
  HIDWORD(v17) = *(a1 + 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AA8, &unk_1E65FA900);
  sub_1E65DE488();
  v9 = v20;
  v10 = v21;
  v11 = sub_1E65E60A8();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v13 = *a4;
  *(v12 + 72) = *(a4 + 1);
  v14 = *(a4 + 3);
  *(v12 + 88) = *(a4 + 2);
  *(v12 + 104) = v14;
  *(v12 + 120) = *(a4 + 4);
  *(v12 + 16) = 0;
  *(v12 + 24) = 0;
  v15 = v19;
  *(v12 + 36) = v18;
  *(v12 + 32) = v15;
  *(v12 + 38) = BYTE4(v17);
  *(v12 + 40) = v9;
  *(v12 + 48) = v10;
  *(v12 + 56) = v13;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v8, &unk_1E65EC478, v12);
}

uint64_t sub_1E6001B40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32) | (*(v1 + 36) << 32) | (*(v1 + 38) << 48);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1E5DFA78C;

  return sub_1E618B668(a1, v4, v5, v6, v7, v8, v1 + 56);
}

uint64_t sub_1E6001C2C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

unint64_t sub_1E6001C44()
{
  result = qword_1ED072AE8;
  if (!qword_1ED072AE8)
  {
    sub_1E65DE4C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072AE8);
  }

  return result;
}

uint64_t sub_1E6001C9C@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v12 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  type metadata accessor for AppState(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
  sub_1E65E4C98();
  sub_1E5E1F544(v7);
  sub_1E5DFE50C(v4, &qword_1ED071F78, &unk_1E65EA3F0);
  v8 = sub_1E65D7848();
  v9 = *(v8 - 8);
  v10 = *(v9 + 48);
  if (v10(v7, 1, v8) != 1)
  {
    return (*(v9 + 32))(a1, v7, v8);
  }

  sub_1E65D77C8();
  result = (v10)(v7, 1, v8);
  if (result != 1)
  {
    return sub_1E5DFE50C(v7, &qword_1ED071F80, &unk_1E65F4310);
  }

  return result;
}

uint64_t sub_1E6001E7C@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v62 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v61 = &v45 - v4;
  v59 = type metadata accessor for LocalizationService();
  Description = v59[-1].Description;
  MEMORY[0x1EEE9AC00](v59);
  v60 = v6;
  v58 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ContentAvailabilityService();
  v8 = v7[-1].Description;
  v9 = v8[8];
  MEMORY[0x1EEE9AC00](v7);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8);
  v56 = *(v10 - 8);
  v57 = v10;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v53 = v12;
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v55 = &v45 - v13;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v14 = sub_1E65E3B68();
  __swift_project_value_buffer(v14, qword_1EE2EA2A0);
  sub_1E65E3B38();
  v15 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v51 = v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_environment;
  v16 = type metadata accessor for AppEnvironment(0);
  v17 = *(v16 + 56);
  v18 = *(v16 + 72);
  v50 = v18;
  v45 = *(v1 + OBJC_IVAR____TtC10Blackbeard16AppStateResolver_store);
  KeyPath = swift_getKeyPath();
  (v8[2])(&v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v15 + v17, v7);
  v19 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = Description[2];
  v49 = (Description + 2);
  v20 = v15 + v18;
  v21 = v58;
  v22 = v59;
  v48(v58, v20, v59);
  v23 = *(v8 + 80);
  v52 = v2;
  v24 = (v23 + 16) & ~v23;
  v25 = *(Description + 80);
  v26 = v22;
  v27 = (v9 + v25 + v24) & ~v25;
  v28 = swift_allocObject();
  (v8[4])(v28 + v24, v19, v7);
  v47 = Description[4];
  v29 = v28 + v27;
  v30 = v26;
  v47(v29, v21, v26);

  v31 = v55;
  sub_1E65E4E08();
  v32 = v62;
  v33 = v57;
  v62[3] = v57;
  v32[4] = &off_1F5FAA7F8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v32);
  v35 = v56;
  v36 = *(v56 + 16);
  v36(boxed_opaque_existential_1, v31, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072178, &qword_1E65EA928);
  KeyPath = swift_allocObject();
  *(KeyPath + 16) = xmmword_1E65EA670;
  v37 = sub_1E65E60A8();
  (*(*(v37 - 8) + 56))(v61, 1, 1, v37);
  v48(v21, v51 + v50, v30);
  v38 = v54;
  v36(v54, v31, v33);
  v39 = (v25 + 40) & ~v25;
  v40 = (v39 + v60 + *(v35 + 80)) & ~*(v35 + 80);
  v41 = swift_allocObject();
  *(v41 + 2) = 0;
  *(v41 + 3) = 0;
  *(v41 + 4) = v52;
  v47(&v41[v39], v58, v59);
  (*(v35 + 32))(&v41[v40], v38, v33);

  v42 = sub_1E6059EAC(0, 0, v61, &unk_1E65EC4F8, v41);
  v43 = KeyPath;
  *(KeyPath + 32) = v42;
  result = (*(v35 + 8))(v31, v33);
  v62[5] = v43;
  return result;
}

uint64_t sub_1E6002440(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[4] = a2;
  v3[5] = a3;
  v3[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v3[6] = swift_task_alloc();
  v4 = sub_1E65D7848();
  v3[7] = v4;
  v3[8] = *(v4 - 8);
  v3[9] = swift_task_alloc();
  v3[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E6002548, 0, 0);
}

uint64_t sub_1E6002548()
{
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = sub_1E65E3B68();
  v0[11] = __swift_project_value_buffer(v1, qword_1EE2EA2A0);
  v2 = sub_1E65E3B48();
  v3 = sub_1E65E6338();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1E5DE9000, v2, v3, "Fetching storefront language code...", v4, 2u);
    MEMORY[0x1E694F1C0](v4, -1, -1);
  }

  v5 = v0[4];

  v6 = swift_task_alloc();
  v0[12] = v6;
  *(v6 + 16) = v5;
  v7 = swift_task_alloc();
  v0[13] = v7;
  *v7 = v0;
  v7[1] = sub_1E60026DC;

  return sub_1E6003010(&unk_1E65EC530, v6, 1);
}

uint64_t sub_1E60026DC(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[14] = a1;
  v4[15] = a2;
  v4[16] = v2;

  if (v2)
  {
    v5 = sub_1E6002BF4;
  }

  else
  {

    v5 = sub_1E60027FC;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1E60027FC()
{
  v39 = v0;

  v1 = sub_1E65E3B48();
  v2 = sub_1E65E6338();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[14];
    v3 = v0[15];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v38 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_1E5DFD4B0(v4, v3, &v38);
    _os_log_impl(&dword_1E5DE9000, v1, v2, "Storefront language code: %{public}s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v6);
    MEMORY[0x1E694F1C0](v6, -1, -1);
    MEMORY[0x1E694F1C0](v5, -1, -1);
  }

  v8 = v0[14];
  v7 = v0[15];
  v9 = v0[7];
  v10 = v0[8];
  v11 = v0[6];
  type metadata accessor for LocalizationBundle();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v13 = [objc_opt_self() bundleForClass_];
  sub_1E6003648(v8, v7, v11);

  v14 = *(v10 + 48);
  if (v14(v11, 1, v9) == 1)
  {
    v15 = v0[6];
    v16 = v0[7];
    sub_1E65D77A8();
    if (v14(v15, 1, v16) != 1)
    {
      sub_1E5DFE50C(v0[6], &qword_1ED071F80, &unk_1E65F4310);
    }
  }

  else
  {
    (*(v0[8] + 32))(v0[10], v0[6], v0[7]);
  }

  v37 = *(v0[8] + 16);
  v37(v0[9], v0[10], v0[7]);
  v17 = sub_1E65E3B48();
  v18 = sub_1E65E6338();
  v19 = os_log_type_enabled(v17, v18);
  v21 = v0[8];
  v20 = v0[9];
  v22 = v0[7];
  if (v19)
  {
    v23 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = v36;
    *v23 = 136446210;
    sub_1E6005188();
    v24 = sub_1E65E6BC8();
    v26 = v25;
    v27 = v22;
    v28 = *(v21 + 8);
    v28(v20, v27);
    v29 = sub_1E5DFD4B0(v24, v26, &v38);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1E5DE9000, v17, v18, "Updating locale to %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E694F1C0](v36, -1, -1);
    MEMORY[0x1E694F1C0](v23, -1, -1);
  }

  else
  {

    v30 = v22;
    v28 = *(v21 + 8);
    v28(v20, v30);
  }

  v31 = v0[10];
  v32 = v0[7];
  v37(v0[3], v31, v32);
  v33 = LocalizationService.updateLocale.getter();
  v33(v31);

  v28(v31, v32);

  v34 = v0[1];

  return v34();
}

uint64_t sub_1E6002BF4()
{
  v15 = v0;
  v1 = v0[16];

  v2 = v1;
  v3 = sub_1E65E3B48();
  v4 = sub_1E65E6328();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[16];
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
    _os_log_impl(&dword_1E5DE9000, v3, v4, "Unable to fetch storefront language code: %{public}s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1E694F1C0](v7, -1, -1);
    MEMORY[0x1E694F1C0](v6, -1, -1);
  }

  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1E6002D9C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6002DBC, 0, 0);
}

uint64_t sub_1E6002DBC()
{
  v1 = ContentAvailabilityService.queryStorefrontLanguageCode.getter();
  *(v0 + 32) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 40) = v3;
  *v3 = v0;
  v3[1] = sub_1E6002EB0;

  return v5();
}

uint64_t sub_1E6002EB0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_1E5FAD050;
  }

  else
  {

    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_1E6002FEC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1E6002FEC()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 16);
  *v2 = *(v0 + 64);
  v2[1] = v1;
  return (*(v0 + 8))();
}

uint64_t sub_1E6003010(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 128) = a3;
  *(v3 + 80) = a1;
  *(v3 + 88) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6003034, 0, 0);
}

uint64_t sub_1E6003034()
{
  v1 = [objc_opt_self() mainBundle];
  v2 = [v1 bundleIdentifier];

  if (v2)
  {
    sub_1E65E5C78();
  }

  sub_1E65E5D18();

  has_internal_content = os_variant_has_internal_content();

  if (has_internal_content)
  {
    v4 = objc_allocWithZone(MEMORY[0x1E695E000]);
    v5 = sub_1E65E5C48();
    v6 = [v4 initWithSuiteName_];

    if (v6)
    {
      v7 = sub_1E65E5C48();

      v8 = [v6 objectForKey_];

      if (v8)
      {
        sub_1E65E6708();
        swift_unknownObjectRelease();
      }

      else
      {
        v16 = 0u;
        v17 = 0u;
      }

      *(v0 + 16) = v16;
      *(v0 + 32) = v17;
    }

    else
    {
      *(v0 + 16) = 0u;
      *(v0 + 32) = 0u;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
    if (swift_dynamicCast())
    {
      v11 = *(v0 + 64);
      v12 = *(v0 + 72);
      v13 = *(v0 + 8);

      return v13(v11, v12);
    }

    v15 = (*(v0 + 80) + **(v0 + 80));
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *v9 = v0;
    v10 = sub_1E60034E8;
  }

  else
  {
    v15 = (*(v0 + 80) + **(v0 + 80));
    v9 = swift_task_alloc();
    *(v0 + 96) = v9;
    *v9 = v0;
    v10 = sub_1E60033D4;
  }

  v9[1] = v10;

  return v15(v0 + 48);
}

uint64_t sub_1E60033D4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1E6003630;
  }

  else
  {
    v2 = sub_1E6005280;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60034E8()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1E6003618;
  }

  else
  {
    v2 = sub_1E60035FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6003648@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v94 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B10, &qword_1E65EC518);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v93 = &v80 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B18, &qword_1E65EC520);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v92 = &v80 - v9;
  v10 = sub_1E65D7828();
  v90 = *(v10 - 8);
  v91 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v89 = &v80 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F58, &qword_1E65EA388);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v88 = &v80 - v13;
  v14 = sub_1E65D77E8();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v87 = &v80 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65D7848();
  v17 = *(v16 - 8);
  v95 = v16;
  v96 = v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v84 = &v80 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v80 - v20;
  v21 = sub_1E65D7728();
  v85 = *(v21 - 8);
  v86 = v21;
  v22 = MEMORY[0x1EEE9AC00](v21);
  v83 = &v80 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v82 = &v80 - v24;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v25 = sub_1E65E3B68();
  __swift_project_value_buffer(v25, qword_1EE2EA2A0);
  v26 = v3;
  v27 = sub_1E65E3B48();
  v28 = sub_1E65E6338();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v80 = a1;
    v31 = v30;
    v97 = v30;
    *v29 = 136446210;
    v32 = [v26 localizations];
    v33 = a2;
    v34 = MEMORY[0x1E69E6158];
    v35 = sub_1E65E5F18();

    v36 = MEMORY[0x1E694D940](v35, v34);
    v38 = v37;

    v39 = v36;
    a2 = v33;
    v40 = sub_1E5DFD4B0(v39, v38, &v97);

    *(v29 + 4) = v40;
    _os_log_impl(&dword_1E5DE9000, v27, v28, "Available Localization: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v31);
    v41 = v31;
    a1 = v80;
    MEMORY[0x1E694F1C0](v41, -1, -1);
    MEMORY[0x1E694F1C0](v29, -1, -1);
  }

  v42 = [v26 localizations];
  if (!v42)
  {
    sub_1E65E5F18();
    v42 = sub_1E65E5EF8();
  }

  v43 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B20, &qword_1E6609840);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_1E65EA670;
  *(v44 + 32) = a1;
  *(v44 + 40) = a2;

  v45 = sub_1E65E5EF8();

  v46 = [v43 preferredLocalizationsFromArray:v42 forPreferences:v45];

  v47 = sub_1E65E5F18();

  v48 = sub_1E65E3B48();
  v49 = sub_1E65E6338();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v97 = v51;
    *v50 = 136446210;
    v52 = MEMORY[0x1E694D940](v47, MEMORY[0x1E69E6158]);
    v54 = a1;
    v55 = sub_1E5DFD4B0(v52, v53, &v97);

    *(v50 + 4) = v55;
    a1 = v54;
    _os_log_impl(&dword_1E5DE9000, v48, v49, "Preferred Localization: %{public}s", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v51);
    MEMORY[0x1E694F1C0](v51, -1, -1);
    MEMORY[0x1E694F1C0](v50, -1, -1);
  }

  if (*(v47 + 16))
  {

    v56 = v81;
    sub_1E65D77C8();
    v57 = v82;
    sub_1E65D7718();
    v58 = v88;
    sub_1E65D7778();
    v59 = sub_1E65D7768();
    (*(*(v59 - 8) + 56))(v58, 0, 1, v59);
    sub_1E65D77C8();
    v60 = v89;
    sub_1E65D7838();
    v61 = *(v96 + 8);
    v62 = v56;
    v63 = v95;
    v61(v62, v95);
    sub_1E65D7818();
    (*(v90 + 8))(v60, v91);
    v64 = v84;
    sub_1E65D77C8();
    sub_1E65D77B8();
    v61(v64, v63);
    sub_1E65D77D8();
    sub_1E65D7708();
    v66 = v85;
    v65 = v86;
    (*(v85 + 16))(v83, v57, v86);
    v67 = v94;
    sub_1E65D7738();
    (*(v66 + 8))(v57, v65);
    return (*(v96 + 56))(v67, 0, 1, v63);
  }

  else
  {

    v69 = sub_1E65E3B48();
    v70 = sub_1E65E6338();

    if (os_log_type_enabled(v69, v70))
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v97 = v72;
      *v71 = 136446466;
      *(v71 + 4) = sub_1E5DFD4B0(a1, a2, &v97);
      *(v71 + 12) = 2080;
      v73 = MEMORY[0x1E694D940](v47, MEMORY[0x1E69E6158]);
      v75 = v74;

      v76 = sub_1E5DFD4B0(v73, v75, &v97);

      *(v71 + 14) = v76;
      _os_log_impl(&dword_1E5DE9000, v69, v70, "Unable to find matching local identifier, using autoupdating current: %{public}s -> %s", v71, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1E694F1C0](v72, -1, -1);
      MEMORY[0x1E694F1C0](v71, -1, -1);
    }

    else
    {
    }

    v77 = v95;
    v78 = *(v96 + 56);
    v79 = v94;

    return v78(v79, 1, 1, v77);
  }
}

uint64_t sub_1E6004028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[5] = a5;
  v6[6] = a6;
  v6[4] = a4;
  v6[7] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF8, &qword_1E65EC500);
  v6[8] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  v6[9] = swift_task_alloc();
  v7 = sub_1E65D7848();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B00, &qword_1E65EC508);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B08, &qword_1E65EC510);
  v6[17] = v9;
  v6[18] = *(v9 - 8);
  v6[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E600423C, 0, 0);
}

uint64_t sub_1E600423C()
{
  type metadata accessor for AppEnvironment(0);
  v1 = ContentAvailabilityService.makeStorefrontLanguageUpdatedStream.getter();
  v0[20] = v2;
  v6 = (v1 + *v1);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_1E600435C;
  v4 = v0[19];

  return v6(v4);
}

uint64_t sub_1E600435C()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6004474, 0, 0);
}

uint64_t sub_1E6004474()
{
  sub_1E65E60F8();
  v1 = swift_task_alloc();
  *(v0 + 176) = v1;
  *v1 = v0;
  v1[1] = sub_1E6004528;
  v2 = *(v0 + 112);

  return MEMORY[0x1EEE6D9C8](v0 + 16, 0, 0, v2);
}

uint64_t sub_1E6004528()
{

  return MEMORY[0x1EEE6DFA0](sub_1E6004624, 0, 0);
}

uint64_t sub_1E6004624()
{
  v43 = v0;
  v1 = v0[3];
  if (v1)
  {
    v2 = v0[2];
    if (qword_1EE2D7790 != -1)
    {
      swift_once();
    }

    v3 = sub_1E65E3B68();
    __swift_project_value_buffer(v3, qword_1EE2EA2A0);

    v4 = sub_1E65E3B48();
    v5 = sub_1E65E6338();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v42 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_1E5DFD4B0(v2, v1, &v42);
      _os_log_impl(&dword_1E5DE9000, v4, v5, "Storefront Language Code Changed: %{public}s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1E694F1C0](v7, -1, -1);
      MEMORY[0x1E694F1C0](v6, -1, -1);
    }

    v8 = v0[10];
    v9 = v0[11];
    v10 = v0[9];
    v11 = sub_1E6004CBC(v2, v1, 1);
    v13 = v12;

    v14 = [objc_opt_self() mainBundle];
    sub_1E6003648(v11, v13, v10);

    v15 = *(v9 + 48);
    if (v15(v10, 1, v8) == 1)
    {
      v17 = v0[9];
      v16 = v0[10];
      sub_1E65D77A8();
      if (v15(v17, 1, v16) != 1)
      {
        sub_1E5DFE50C(v0[9], &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v0[11] + 32))(v0[13], v0[9], v0[10]);
    }

    v23 = *(v0[11] + 16);
    v23(v0[12], v0[13], v0[10]);
    v24 = sub_1E65E3B48();
    v25 = sub_1E65E6338();
    v26 = os_log_type_enabled(v24, v25);
    v28 = v0[11];
    v27 = v0[12];
    v29 = v0[10];
    if (v26)
    {
      v41 = v23;
      v30 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v42 = v40;
      *v30 = 136446210;
      sub_1E6005188();
      v31 = sub_1E65E6BC8();
      v33 = v32;
      v39 = v25;
      v34 = *(v28 + 8);
      v34(v27, v29);
      v35 = sub_1E5DFD4B0(v31, v33, &v42);

      *(v30 + 4) = v35;
      _os_log_impl(&dword_1E5DE9000, v24, v39, "Updating locale to %{public}s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1E694F1C0](v40, -1, -1);
      v36 = v30;
      v23 = v41;
      MEMORY[0x1E694F1C0](v36, -1, -1);
    }

    else
    {

      v34 = *(v28 + 8);
      v34(v27, v29);
    }

    v0[23] = v34;
    v23(v0[8], v0[13], v0[10]);
    swift_storeEnumTagMultiPayload();
    sub_1E65E6058();
    v0[24] = sub_1E65E6048();
    v38 = sub_1E65E5FC8();

    return MEMORY[0x1EEE6DFA0](sub_1E6004B14, v38, v37);
  }

  else
  {
    v19 = v0[18];
    v18 = v0[19];
    v20 = v0[17];
    (*(v0[15] + 8))(v0[16], v0[14]);
    (*(v19 + 8))(v18, v20);

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_1E6004B14()
{
  v1 = *(v0 + 64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8);
  sub_1E65E4E38();
  sub_1E5DFE50C(v1, &qword_1ED072AF8, &qword_1E65EC500);

  return MEMORY[0x1EEE6DFA0](sub_1E6004BBC, 0, 0);
}

uint64_t sub_1E6004BBC(uint64_t a1)
{
  v2 = v1[23];
  v3 = v1[13];
  v4 = v1[10];
  v5 = LocalizationService.updateLocale.getter();
  v5(v3);

  v2(v3, v4);
  v6 = swift_task_alloc();
  v1[22] = v6;
  *v6 = v1;
  v6[1] = sub_1E6004528;
  v7 = v1[14];

  return MEMORY[0x1EEE6D9C8](v1 + 2, 0, 0, v7);
}

uint64_t sub_1E6004CBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = [objc_opt_self() mainBundle];
  v5 = [v4 bundleIdentifier];

  if (v5)
  {
    sub_1E65E5C78();
  }

  sub_1E65E5D18();

  has_internal_content = os_variant_has_internal_content();

  if (!has_internal_content)
  {
    goto LABEL_11;
  }

  v7 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v8 = sub_1E65E5C48();
  v9 = [v7 initWithSuiteName_];

  if (v9)
  {
    v10 = sub_1E65E5C48();

    v11 = [v9 objectForKey_];

    if (v11)
    {
      sub_1E65E6708();
      swift_unknownObjectRelease();
    }

    else
    {
      v13 = 0;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B28, &unk_1E65F06A0);
  if (swift_dynamicCast())
  {
    return v13;
  }

LABEL_11:

  return a1;
}

uint64_t sub_1E6004EE0(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for ContentAvailabilityService()[-1].Description;
  v6 = (*(Description + 80) + 16) & ~*(Description + 80);
  v7 = Description[8];
  v8 = type metadata accessor for LocalizationService()[-1].Description;
  v9 = (v6 + v7 + v8[80]) & ~v8[80];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1E5DFE6BC;

  return sub_1E6002440(a1, v1 + v6, v1 + v9);
}

uint64_t sub_1E600501C(uint64_t a1)
{
  v3 = v2;
  Description = type metadata accessor for LocalizationService()[-1].Description;
  v6 = (*(Description + 80) + 40) & ~*(Description + 80);
  v7 = v6 + Description[8];
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072AF0, &qword_1E65EC4B8) - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1E5DFE6BC;

  return sub_1E6004028(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

unint64_t sub_1E6005188()
{
  result = qword_1EE2D7180;
  if (!qword_1EE2D7180)
  {
    sub_1E65D7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D7180);
  }

  return result;
}

uint64_t sub_1E60051E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1E5DFA78C;

  return sub_1E6002D9C(a1, v4);
}

uint64_t type metadata accessor for PreviewButtonViewMetrics(uint64_t a1)
{
  result = qword_1ED072B30;
  if (!qword_1ED072B30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E60052F8(uint64_t a1)
{
  sub_1E5DF0194();
  if (v1 <= 0x3F)
  {
    sub_1E65D8F28();
    if (v2 <= 0x3F)
    {
      sub_1E65D9F88();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t static ToastService.live()@<X0>(void *a1@<X8>)
{
  type metadata accessor for LiveToastService();
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  *(v2 + 112) = sub_1E65E17A8();
  *a1 = &unk_1E65EC570;
  a1[1] = v2;
  a1[2] = &unk_1E65EC580;
  a1[3] = v2;
  a1[4] = &unk_1E65EC590;
  a1[5] = v2;
  return swift_retain_n();
}

uint64_t sub_1E600544C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E6005468, a2, 0);
}

uint64_t sub_1E6005468()
{
  *(v0 + 32) = *(*(v0 + 24) + 112);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  sub_1E5FED46C(&qword_1EE2D64B0, &qword_1ED072B40, &qword_1E65EC560, MEMORY[0x1E699F0F0]);
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6005538, v2, v1);
}

uint64_t sub_1E6005538()
{
  sub_1E65E1798();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E600559C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E600544C(a1, v1);
}

uint64_t sub_1E6005634()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  v0[7] = *(v0[3] + 112);
  (*(v2 + 104))(v1, *MEMORY[0x1E69E8650], v3);
  v4[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B50, &qword_1E65EC5E8);
  v4[4] = sub_1E5FED46C(&unk_1EE2D47D0, &qword_1ED072B50, &qword_1E65EC5E8, MEMORY[0x1E69E86A0]);
  v0[8] = __swift_allocate_boxed_opaque_existential_1(v4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  sub_1E5FED46C(&qword_1EE2D64B0, &qword_1ED072B40, &qword_1E65EC560, MEMORY[0x1E699F0F0]);
  v6 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E5E275D8, v6, v5);
}

uint64_t sub_1E6005780(char a1, uint64_t a2)
{
  *(v2 + 16) = a2;
  *(v2 + 48) = a1;
  *(v2 + 24) = type metadata accessor for ToastAction(0);
  *(v2 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E600581C, a2, 0);
}

uint64_t sub_1E600581C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 48);
  *(v0 + 40) = *(*(v0 + 16) + 112);
  *v1 = v2;
  swift_storeEnumTagMultiPayload();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B40, &qword_1E65EC560);
  sub_1E5FED46C(&qword_1EE2D64B0, &qword_1ED072B40, &qword_1E65EC560, MEMORY[0x1E699F0F0]);
  v4 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6005900, v4, v3);
}

uint64_t sub_1E6005900()
{
  v1 = *(v0 + 32);
  sub_1E65E1798();
  sub_1E6005A0C(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1E6005974(char a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E6005780(a1, v1);
}

uint64_t sub_1E6005A0C(uint64_t a1)
{
  v2 = type metadata accessor for ToastAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E6005A68(uint64_t a1)
{
  v2 = sub_1E65DA2D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v25 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - v10;
  v12 = *(a1 + 16);
  v13 = sub_1E5DFA4D4(&qword_1ED072C58, MEMORY[0x1E69CCC28], MEMORY[0x1E69CCC30]);
  result = MEMORY[0x1E694DC60](v12, v2, v13);
  v15 = 0;
  v26 = a1;
  v27 = result;
  v18 = *(a1 + 64);
  v17 = a1 + 64;
  v16 = v18;
  v19 = 1 << *(v17 - 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v3 + 32;
  v25[3] = v3 + 16;
  v25[1] = v3 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v3 + 16))(v11, *(v26 + 56) + *(v3 + 72) * (v24 | (v23 << 6)), v2);
      (*(v3 + 32))(v6, v11, v2);
      sub_1E60F11BC(v9, v6);
      result = (*(v3 + 8))(v9, v2);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1E6005CC8(uint64_t a1, uint64_t a2, char a3, char a4)
{
  *(v5 + 24) = a2;
  *(v5 + 32) = v4;
  *(v5 + 178) = a4;
  *(v5 + 177) = a3;
  *(v5 + 16) = a1;
  v6 = *(type metadata accessor for RouteDestination(0) - 8);
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 + 64);
  *(v5 + 56) = swift_task_alloc();
  v7 = type metadata accessor for NavigationControllerRoutingContext(0);
  *(v5 + 64) = v7;
  v8 = *(v7 - 8);
  *(v5 + 72) = v8;
  *(v5 + 80) = *(v8 + 64);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = sub_1E65E6058();
  *(v5 + 104) = sub_1E65E6048();
  v10 = sub_1E65E5FC8();
  *(v5 + 112) = v10;
  *(v5 + 120) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1E6005E34, v10, v9);
}

uint64_t sub_1E6005E34(uint64_t a1)
{
  v1[16] = sub_1E65E6048();
  v3 = sub_1E65E5FC8();
  v1[17] = v3;
  v1[18] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E6005EC0, v3, v2);
}

uint64_t sub_1E6005EC0()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  v3 = *(v0 + 56);
  v15 = *(v0 + 48);
  v16 = *(v0 + 80);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 178);
  v7 = *(v0 + 16);
  v17 = *(v0 + 24);
  v19 = *(v5 + *(*(v0 + 64) + 24) + 8);
  v8 = *(v0 + 177);
  ObjectType = swift_getObjectType();
  *(v0 + 176) = v6;
  sub_1E600E0EC(v5, v1, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E600E0EC(v7, v3, type metadata accessor for RouteDestination);
  v9 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v10 = (v16 + *(v4 + 80) + v9) & ~*(v4 + 80);
  v11 = swift_allocObject();
  *(v0 + 152) = v11;
  sub_1E600E154(v1, v11 + v9, type metadata accessor for NavigationControllerRoutingContext);
  sub_1E600E154(v3, v11 + v10, type metadata accessor for RouteDestination);
  *(v11 + v10 + v15) = 1;
  v12 = v11 + ((v10 + v15) & 0xFFFFFFFFFFFFFFF8);
  *(v12 + 8) = v17;
  *(v12 + 16) = v8;
  sub_1E5FA9D20(v17, v8);
  v13 = swift_task_alloc();
  *(v0 + 160) = v13;
  *v13 = v0;
  v13[1] = sub_1E60060C0;

  return sub_1E61261B8((v0 + 176), &unk_1E65EA820, v11, ObjectType, v19);
}

uint64_t sub_1E60060C0()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  v3 = *(v2 + 136);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1E60062D8;
  }

  else
  {
    v5 = sub_1E60061F8;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1E60061F8()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E600625C, v1, v2);
}

uint64_t sub_1E600625C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E60062D8()
{

  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1E600633C, v1, v2);
}

uint64_t sub_1E600633C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppCoordinator.routeURL(_:referrerURL:sourceApplication:annotation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = _s8ResourceOMa(0);
  v6[9] = swift_task_alloc();
  v6[10] = type metadata accessor for URLContext(0);
  v6[11] = swift_task_alloc();
  type metadata accessor for URLRoute(0);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();
  v7 = sub_1E65D74E8();
  v6[15] = v7;
  v6[16] = *(v7 - 8);
  v6[17] = swift_task_alloc();
  v6[18] = swift_task_alloc();
  v6[19] = swift_task_alloc();
  v6[20] = type metadata accessor for RouteSource(0);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();
  v6[24] = swift_task_alloc();
  v6[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60065C8, 0, 0);
}

uint64_t sub_1E60065C8()
{
  v72 = v0;
  v1 = v0[18];
  v2 = v0[19];
  v3 = v0[15];
  v4 = v0[14];
  v5 = v0[11];
  v6 = v0[12];
  v67 = v0[9];
  v65 = v0[5];
  v63 = v0[10];
  v64 = v0[4];
  v7 = v0[3];
  v8 = *(v0[16] + 16);
  v8(v2, v0[2], v3);
  sub_1E5DFD1CC(v7, v4, &qword_1ED072340, &qword_1E65EA410);
  v8(v1, v2, v3);
  sub_1E6077428(v1, v6);
  v8(v5, v2, v3);
  v9 = *(v63 + 20);
  sub_1E6009E5C(v4, v5 + v9);
  v10 = v5;
  v11 = (v5 + *(v63 + 24));
  *v11 = v64;
  v11[1] = v65;
  sub_1E600E0EC(v6, v67, _s8ResourceOMa);

  sub_1E600DD44(v6, type metadata accessor for URLRoute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v21 = v0[24];
      v22 = v0[19];
      v23 = v0[15];
      v24 = v0[16];
      v25 = v0[9];
      sub_1E600DD44(v0[11], type metadata accessor for URLContext);
      v26 = v8;
      v27 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
      (*(v24 + 32))(v21, v22, v23);
      swift_storeEnumTagMultiPayload();
      v28 = v25 + v27;
      v8 = v26;
      v19 = *(v24 + 8);
      v19(v28, v23);
      goto LABEL_17;
    }

    v18 = v0[9];
    v19 = *(v0[16] + 8);
    v19(v0[19], v0[15]);
    sub_1E600DD44(v18, _s8ResourceOMa);
  }

  else
  {
    if (EnumCaseMultiPayload <= 4)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v68 = v8;
        v13 = v0[15];
        v14 = v0[16];
        v15 = v0[13];
        v16 = v0[9];
        v17 = v0[5];
        v69 = *(v14 + 8);
        v69(v0[19], v13);
        sub_1E600DD44(v16, _s8ResourceOMa);
        sub_1E5DFD1CC(v10 + v9, v15, &qword_1ED072340, &qword_1E65EA410);
        LODWORD(v14) = (*(v14 + 48))(v15, 1, v13);
        sub_1E5DFE50C(v15, &qword_1ED072340, &qword_1E65EA410);
        if (v14 != 1 || v17)
        {
          sub_1E600E154(v0[11], v0[23], type metadata accessor for URLContext);
        }

        else
        {
          sub_1E600DD44(v0[11], type metadata accessor for URLContext);
        }

        v8 = v68;
        v31 = v0[23];
        v32 = v0[24];
        swift_storeEnumTagMultiPayload();
        sub_1E600E154(v31, v32, type metadata accessor for RouteSource);
        v19 = v69;
      }

      else
      {
        v29 = v0[11];
        v30 = v0[9];
        v19 = *(v0[16] + 8);
        v19(v0[19], v0[15]);
        sub_1E600DD44(v29, type metadata accessor for URLContext);
        swift_storeEnumTagMultiPayload();
        sub_1E600DD44(v30, _s8ResourceOMa);
      }

      goto LABEL_17;
    }

    if (EnumCaseMultiPayload == 5)
    {
      v20 = v0[11];
      v19 = *(v0[16] + 8);
      v19(v0[19], v0[15]);
      sub_1E600DD44(v20, type metadata accessor for URLContext);
      swift_storeEnumTagMultiPayload();
      goto LABEL_17;
    }

    v19 = *(v0[16] + 8);
    v19(v0[19], v0[15]);
  }

  sub_1E600E154(v0[11], v0[24], type metadata accessor for URLContext);
  swift_storeEnumTagMultiPayload();
LABEL_17:
  sub_1E600E154(v0[24], v0[25], type metadata accessor for RouteSource);
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v33 = v0[25];
  v34 = v0[22];
  v35 = v0[17];
  v36 = v0[15];
  v37 = v0[2];
  v38 = sub_1E65E3B68();
  __swift_project_value_buffer(v38, qword_1EE2EA2A0);
  v8(v35, v37, v36);
  sub_1E600E0EC(v33, v34, type metadata accessor for RouteSource);
  v39 = sub_1E65E3B48();
  v40 = sub_1E65E6338();
  v41 = os_log_type_enabled(v39, v40);
  v42 = v0[22];
  if (v41)
  {
    v66 = v0[21];
    v43 = v0[17];
    v70 = v19;
    v44 = v0[15];
    v45 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v71 = v46;
    *v45 = 136315394;
    sub_1E5DFA4D4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v47 = sub_1E65E6BC8();
    v49 = v48;
    v70(v43, v44);
    v50 = sub_1E5DFD4B0(v47, v49, &v71);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2080;
    sub_1E600E0EC(v42, v66, type metadata accessor for RouteSource);
    v51 = sub_1E65E5CE8();
    v53 = v52;
    sub_1E600DD44(v42, type metadata accessor for RouteSource);
    v54 = sub_1E5DFD4B0(v51, v53, &v71);

    *(v45 + 14) = v54;
    _os_log_impl(&dword_1E5DE9000, v39, v40, "Incoming URL: %s source %s", v45, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E694F1C0](v46, -1, -1);
    MEMORY[0x1E694F1C0](v45, -1, -1);
  }

  else
  {
    v55 = v0[17];
    v56 = v0[15];

    sub_1E600DD44(v42, type metadata accessor for RouteSource);
    v19(v55, v56);
  }

  v57 = *__swift_project_boxed_opaque_existential_1((v0[7] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver), *(v0[7] + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver + 24));
  v58 = swift_task_alloc();
  v0[26] = v58;
  *v58 = v0;
  v58[1] = sub_1E6006DD0;
  v59 = v0[25];
  v60 = v0[6];
  v61 = v0[2];

  return sub_1E5FFC850(v61, v59, v60, v57);
}

uint64_t sub_1E6006DD0()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1E600700C;
  }

  else
  {
    v2 = sub_1E6006EE4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6006EE4()
{
  sub_1E600DD44(*(v0 + 200), type metadata accessor for RouteSource);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E600700C()
{
  sub_1E600DD44(*(v0 + 200), type metadata accessor for RouteSource);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t AppCoordinator.routeUserActivity(_:annotation:)(uint64_t a1, uint64_t a2)
{
  v3[18] = a2;
  v3[19] = v2;
  v3[17] = a1;
  v3[20] = _s8ResourceOMa(0);
  v3[21] = swift_task_alloc();
  v3[22] = type metadata accessor for URLContext(0);
  v3[23] = swift_task_alloc();
  type metadata accessor for URLRoute(0);
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v3[27] = type metadata accessor for RouteSource(0);
  v3[28] = swift_task_alloc();
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v4 = sub_1E65D74E8();
  v3[33] = v4;
  v3[34] = *(v4 - 8);
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  v3[37] = swift_task_alloc();
  v3[38] = swift_task_alloc();
  v3[39] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B58, &qword_1E65EC600);
  v3[40] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v3[41] = swift_task_alloc();
  v5 = sub_1E65D9388();
  v3[42] = v5;
  v3[43] = *(v5 - 8);
  v3[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v3[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v3[46] = swift_task_alloc();
  v3[47] = type metadata accessor for RouteDestination(0);
  v3[48] = swift_task_alloc();
  v6 = sub_1E65E2A38();
  v3[49] = v6;
  v3[50] = *(v6 - 8);
  v3[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A30, &qword_1E65EEA70);
  v3[52] = swift_task_alloc();
  v3[53] = swift_task_alloc();
  v3[54] = type metadata accessor for AppAction(0);
  v3[55] = swift_task_alloc();
  v7 = sub_1E65DAA88();
  v3[56] = v7;
  v3[57] = *(v7 - 8);
  v3[58] = swift_task_alloc();
  v8 = sub_1E65DA878();
  v3[59] = v8;
  v3[60] = *(v8 - 8);
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B68, &qword_1E65EC608);
  v3[63] = swift_task_alloc();
  v9 = sub_1E65D9C28();
  v3[64] = v9;
  v3[65] = *(v9 - 8);
  v3[66] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E60076EC, 0, 0);
}

uint64_t sub_1E60076EC()
{
  v156 = v0;
  if (qword_1EE2D7790 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1E65E3B68();
  __swift_project_value_buffer(v2, qword_1EE2EA2A0);
  v3 = v1;
  v4 = sub_1E65E3B48();
  v5 = sub_1E65E6338();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 136);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v155[0] = v8;
    *v7 = 136315138;
    v9 = v6;
    v10 = [v9 description];
    v11 = sub_1E65E5C78();
    v13 = v12;

    v14 = sub_1E5DFD4B0(v11, v13, v155);

    *(v7 + 4) = v14;
    _os_log_impl(&dword_1E5DE9000, v4, v5, "Incoming UserActivity: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v8);
    MEMORY[0x1E694F1C0](v8, -1, -1);
    MEMORY[0x1E694F1C0](v7, -1, -1);
  }

  v15 = [*(v0 + 136) activityType];
  v16 = sub_1E65E5C78();
  v18 = v17;

  if (v16 == 0xD000000000000031 && 0x80000001E6611400 == v18)
  {

    goto LABEL_9;
  }

  v19 = sub_1E65E6C18();

  if ((v19 & 1) == 0)
  {
    v29 = [*(v0 + 136) activityType];
    v30 = sub_1E65E5C78();
    v32 = v31;

    if (v30 == sub_1E65E5C78() && v32 == v33)
    {
    }

    else
    {
      v34 = sub_1E65E6C18();

      if ((v34 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    v35 = [*(v0 + 136) webpageURL];
    if (v35)
    {
      v37 = *(v0 + 304);
      v36 = *(v0 + 312);
      v38 = *(v0 + 296);
      v40 = *(v0 + 264);
      v39 = *(v0 + 272);
      v41 = *(v0 + 136);
      v42 = v35;
      sub_1E65D7478();

      v143 = *(v39 + 32);
      v143(v36, v37, v40);
      v151 = *(v39 + 16);
      v151(v38, v36, v40);
      v43 = [v41 referrerURL];
      if (v43)
      {
        v44 = v43;
        sub_1E65D7478();

        v45 = 0;
      }

      else
      {
        v45 = 1;
      }

      v47 = *(v0 + 136);
      (*(*(v0 + 272) + 56))(*(v0 + 208), v45, 1, *(v0 + 264));
      v48 = [v47 smu_sourceApplication];
      if (v48)
      {
        v49 = v48;
        v147 = sub_1E65E5C78();
        v149 = v50;
      }

      else
      {
        v147 = 0;
        v149 = 0;
      }

      v52 = *(v0 + 288);
      v51 = *(v0 + 296);
      v53 = *(v0 + 264);
      v54 = *(v0 + 184);
      v55 = *(v0 + 192);
      v56 = *(v0 + 168);
      v57 = *(v0 + 176);
      v144 = *(v0 + 208);
      v151(v52, v51, v53);
      sub_1E6077428(v52, v55);
      v151(v54, v51, v53);
      v58 = v54;
      v59 = *(v57 + 20);
      sub_1E6009E5C(v144, v54 + v59);
      v60 = (v54 + *(v57 + 24));
      *v60 = v147;
      v60[1] = v149;
      sub_1E600E0EC(v55, v56, _s8ResourceOMa);
      sub_1E600DD44(v55, type metadata accessor for URLRoute);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v62 = *(v0 + 296);
      v63 = *(v0 + 264);
      v64 = *(v0 + 272);
      if (EnumCaseMultiPayload <= 2)
      {
        if (EnumCaseMultiPayload > 1)
        {
          v103 = *(v0 + 248);
          v104 = *(v0 + 168);
          v105 = *(v0 + 296);
          v106 = *(v0 + 264);
          sub_1E600DD44(*(v0 + 184), type metadata accessor for URLContext);
          v107 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072A28, &qword_1E6605420) + 48);
          v143(v103, v105, v106);
          swift_storeEnumTagMultiPayload();
          v67 = *(v64 + 8);
          v67(v104 + v107, v106);
          goto LABEL_63;
        }

        v70 = *(v0 + 168);
        v67 = *(v64 + 8);
        v67(v62, v63);
        sub_1E600DD44(v70, _s8ResourceOMa);
      }

      else
      {
        if (EnumCaseMultiPayload <= 4)
        {
          if (EnumCaseMultiPayload == 3)
          {
            v65 = *(v0 + 200);
            v66 = *(v0 + 168);
            v67 = *(v64 + 8);
            v68 = *(v0 + 264);
            (v67)(v62);
            sub_1E600DD44(v66, _s8ResourceOMa);
            sub_1E5DFD1CC(v58 + v59, v65, &qword_1ED072340, &qword_1E65EA410);
            v69 = (*(v64 + 48))(v65, 1, v68);
            sub_1E5DFE50C(v65, &qword_1ED072340, &qword_1E65EA410);
            if (v69 != 1 || v149)
            {
              sub_1E600E154(*(v0 + 184), *(v0 + 240), type metadata accessor for URLContext);
            }

            else
            {
              sub_1E600DD44(*(v0 + 184), type metadata accessor for URLContext);
            }

            v110 = *(v0 + 240);
            v111 = *(v0 + 248);
            swift_storeEnumTagMultiPayload();
            sub_1E600E154(v110, v111, type metadata accessor for RouteSource);
          }

          else
          {
            v108 = *(v0 + 184);
            v109 = *(v0 + 168);
            v67 = *(v64 + 8);
            v67(v62, v63);
            sub_1E600DD44(v108, type metadata accessor for URLContext);
            swift_storeEnumTagMultiPayload();
            sub_1E600DD44(v109, _s8ResourceOMa);
          }

          goto LABEL_63;
        }

        if (EnumCaseMultiPayload == 5)
        {
          v71 = *(v0 + 184);
          v67 = *(v64 + 8);
          v67(v62, v63);
          sub_1E600DD44(v71, type metadata accessor for URLContext);
          swift_storeEnumTagMultiPayload();
LABEL_63:
          *(v0 + 632) = v67;
          v112 = *(v0 + 312);
          v113 = *(v0 + 280);
          v115 = *(v0 + 256);
          v114 = *(v0 + 264);
          v116 = *(v0 + 232);
          sub_1E600E154(*(v0 + 248), v115, type metadata accessor for RouteSource);
          v151(v113, v112, v114);
          sub_1E600E0EC(v115, v116, type metadata accessor for RouteSource);
          v117 = sub_1E65E3B48();
          v118 = sub_1E65E6338();
          v119 = os_log_type_enabled(v117, v118);
          v120 = *(v0 + 280);
          v121 = *(v0 + 264);
          v122 = *(v0 + 232);
          if (v119)
          {
            v152 = *(v0 + 224);
            v123 = swift_slowAlloc();
            v154 = swift_slowAlloc();
            v155[0] = v154;
            *v123 = 136315394;
            sub_1E5DFA4D4(&qword_1EE2D71E0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
            v124 = sub_1E65E6BC8();
            v125 = v67;
            v126 = v124;
            v128 = v127;
            v125(v120, v121);
            v129 = sub_1E5DFD4B0(v126, v128, v155);

            *(v123 + 4) = v129;
            *(v123 + 12) = 2080;
            sub_1E600E0EC(v122, v152, type metadata accessor for RouteSource);
            v130 = sub_1E65E5CE8();
            v132 = v131;
            sub_1E600DD44(v122, type metadata accessor for RouteSource);
            v133 = sub_1E5DFD4B0(v130, v132, v155);

            *(v123 + 14) = v133;
            _os_log_impl(&dword_1E5DE9000, v117, v118, "Incoming UserActivity with URL: %s source %s", v123, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x1E694F1C0](v154, -1, -1);
            MEMORY[0x1E694F1C0](v123, -1, -1);
          }

          else
          {

            sub_1E600DD44(v122, type metadata accessor for RouteSource);
            v67(v120, v121);
          }

          v134 = *__swift_project_boxed_opaque_existential_1((*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver), *(*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_urlResolver + 24));
          v135 = swift_task_alloc();
          *(v0 + 640) = v135;
          *v135 = v0;
          v135[1] = sub_1E60096AC;
          v136 = *(v0 + 312);
          v137 = *(v0 + 256);
          v138 = *(v0 + 144);

          return sub_1E5FFC850(v136, v137, v138, v134);
        }

        v67 = *(v64 + 8);
        v67(v62, v63);
      }

      sub_1E600E154(*(v0 + 184), *(v0 + 248), type metadata accessor for URLContext);
      swift_storeEnumTagMultiPayload();
      goto LABEL_63;
    }

LABEL_29:
    sub_1E5FAA54C();
    swift_allocError();
    *v46 = 7;
    swift_willThrow();

    v27 = *(v0 + 8);
    goto LABEL_19;
  }

LABEL_9:
  v20 = [*(v0 + 136) userInfo];
  if (!v20)
  {
    *(v0 + 72) = 0u;
    *(v0 + 56) = 0u;
    goto LABEL_17;
  }

  v21 = v20;
  v22 = sub_1E65E5B08();

  *(v0 + 88) = 0xD000000000000017;
  *(v0 + 96) = 0x80000001E6611440;
  sub_1E65E6848();
  if (!*(v22 + 16) || (v23 = sub_1E6417048(v0 + 16), (v24 & 1) == 0))
  {

    sub_1E6009FC0(v0 + 16);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    goto LABEL_17;
  }

  sub_1E5DFA11C(*(v22 + 56) + 32 * v23, v0 + 56);
  sub_1E6009FC0(v0 + 16);

  if (!*(v0 + 80))
  {
LABEL_17:
    sub_1E5DFE50C(v0 + 56, &qword_1ED072B28, &unk_1E65F06A0);
    goto LABEL_18;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_18:

    v27 = *(v0 + 8);
LABEL_19:

    return v27();
  }

  v25 = *(v0 + 104);
  v26 = *(v0 + 112);
  *(v0 + 536) = v25;
  *(v0 + 544) = v26;
  sub_1E600A014(v25, v26);
  sub_1E5DFA4D4(&qword_1ED072B70, MEMORY[0x1E69CC790], MEMORY[0x1E69CC788]);
  sub_1E65DA6A8();
  v72 = *(v0 + 528);
  v73 = *(v0 + 520);
  v75 = *(v0 + 504);
  v74 = *(v0 + 512);
  v76 = *(v0 + 496);
  v77 = *(v0 + 472);
  v78 = *(v0 + 480);
  (*(v73 + 56))(v75, 0, 1, v74);
  (*(v73 + 32))(v72, v75, v74);
  sub_1E65D9BF8();
  v79 = sub_1E65DA858();
  v80 = *(v78 + 8);
  *(v0 + 552) = v80;
  *(v0 + 560) = (v78 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v80(v76, v77);
  v81 = *(v79 + 16);
  if (v81)
  {
    v82 = *(v0 + 456);
    v83 = *(v82 + 16);
    v82 += 16;
    v150 = v83;
    v84 = v79 + ((*(v82 + 64) + 32) & ~*(v82 + 64));
    v148 = *(v82 + 56);
    v145 = *(v0 + 400);
    v146 = (v82 - 8);
    v85 = MEMORY[0x1E69E7CC8];
    while (1)
    {
      v153 = v81;
      v150(*(v0 + 464), v84, *(v0 + 448));
      v86 = sub_1E65DAA58();
      v88 = v87;
      sub_1E65DAA58();
      v89 = sub_1E65DAA78();
      sub_1E600AA08(v89);

      v90 = sub_1E65DAA68();
      sub_1E600AA08(v90);

      sub_1E65E2A08();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v155[0] = v85;
      v92 = sub_1E6215038(v86, v88);
      v95 = v85[2];
      v96 = (v93 & 1) == 0;
      v97 = __OFADD__(v95, v96);
      v98 = v95 + v96;
      if (v97)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v92, v93, v94);
      }

      v99 = v93;
      if (v85[3] < v98)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_53;
      }

      v102 = v92;
      sub_1E64242F0();
      v92 = v102;
      v85 = v155[0];
      v101 = *(v0 + 408);
      if (v99)
      {
LABEL_54:
        (*(v145 + 40))(v85[7] + *(v145 + 72) * v92, v101, *(v0 + 392));

        goto LABEL_47;
      }

LABEL_46:
      sub_1E6422E40(v92, v86, v88, v101, v85);
LABEL_47:
      (*v146)(*(v0 + 464), *(v0 + 448));
      v84 += v148;
      v81 = v153 - 1;
      if (v153 == 1)
      {

        goto LABEL_71;
      }
    }

    sub_1E641B0BC(v98, isUniquelyReferenced_nonNull_native);
    v85 = v155[0];
    v92 = sub_1E6215038(v86, v88);
    if ((v99 & 1) != (v100 & 1))
    {

      return sub_1E65E6C68();
    }

LABEL_53:
    v101 = *(v0 + 408);
    if (v99)
    {
      goto LABEL_54;
    }

    goto LABEL_46;
  }

  v85 = MEMORY[0x1E69E7CC8];
LABEL_71:
  *(v0 + 568) = v85;
  v139 = *(v0 + 440);
  *(v0 + 576) = *(*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_composer);
  *v139 = xmmword_1E65EADB0;
  swift_storeEnumTagMultiPayload();
  *(v0 + 584) = sub_1E65E6058();
  *(v0 + 592) = sub_1E65E6048();
  v140 = sub_1E65E5FC8();
  v142 = v141;
  v92 = sub_1E6008A80;
  v93 = v140;
  v94 = v142;

  return MEMORY[0x1EEE6DFA0](v92, v93, v94);
}

uint64_t sub_1E6008A80()
{
  v1 = *(v0 + 440);

  sub_1E65E4EE8();
  sub_1E600DD44(v1, type metadata accessor for AppAction);

  return MEMORY[0x1EEE6DFA0](sub_1E6008B14, 0, 0);
}

uint64_t sub_1E6008B14()
{
  *(v0 + 600) = __swift_project_boxed_opaque_existential_1((*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router), *(*(v0 + 152) + OBJC_IVAR____TtC10Blackbeard14AppCoordinator_router + 24));
  *(v0 + 120) = xmmword_1E65EADB0;
  *(v0 + 608) = sub_1E65E6048();
  v2 = sub_1E65E5FC8();

  return MEMORY[0x1EEE6DFA0](sub_1E6008BCC, v2, v1);
}

uint64_t sub_1E6008BCC()
{
  v1 = *(v0 + 424);

  sub_1E63350F4((v0 + 120), v1);

  return MEMORY[0x1EEE6DFA0](sub_1E6008C4C, 0, 0);
}

uint64_t sub_1E6008C4C()
{
  v1 = v0[52];
  sub_1E5DFD1CC(v0[53], v1, &qword_1ED072A30, &qword_1E65EEA70);
  v2 = type metadata accessor for NavigationControllerRoutingContext(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    v3 = v0[68];
    v4 = v0[67];
    v5 = v0[66];
    v6 = v0[65];
    v7 = v0[64];
    v9 = v0[52];
    v8 = v0[53];

    sub_1E600A068(v4, v3);
    sub_1E5DFE50C(v8, &qword_1ED072A30, &qword_1E65EEA70);
    (*(v6 + 8))(v5, v7);
    sub_1E5DFE50C(v9, &qword_1ED072A30, &qword_1E65EEA70);

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[45];
    v12 = v0[46];
    v14 = v0[43];
    v15 = v0[44];
    v16 = v0[42];
    v17 = v0[40];
    sub_1E65D9BB8();
    v18 = sub_1E65D76F8();
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);
    v19 = sub_1E65D9BD8();
    v48 = v20;
    v49 = v19;
    sub_1E65D9C08();
    sub_1E61DADA0(v13);
    (*(v14 + 8))(v15, v16);
    v21 = sub_1E65E2CF8();
    (*(*(v21 - 8) + 56))(v13, 0, 1, v21);
    sub_1E65D9BE8();
    v22 = sub_1E65DA7C8();
    v23 = *(v22 - 8);
    if ((*(v23 + 48))(v17, 1, v22) == 1)
    {
      sub_1E5DFE50C(v0[40], &qword_1ED072B58, &qword_1E65EC600);
      v24 = 1;
    }

    else
    {
      v25 = v0[40];
      sub_1E64C6B48(v0[41]);
      (*(v23 + 8))(v25, v22);
      v24 = 0;
    }

    v47 = v0[71];
    v26 = v0[69];
    v27 = v0[61];
    v28 = v0[59];
    v29 = v0[48];
    v46 = v0[47];
    v42 = v0[46];
    v45 = v0[45];
    v30 = v0[41];
    v44 = v30;
    v31 = sub_1E65E1FC8();
    (*(*(v31 - 8) + 56))(v30, v24, 1, v31);
    v43 = sub_1E65D9C18();
    sub_1E65D9BF8();
    v41 = sub_1E65DA868();
    v26(v27, v28);
    swift_storeEnumTagMultiPayload();
    v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
    v33 = (v29 + v32[12]);
    v34 = v32[16];
    v35 = v32[20];
    v36 = v32[24];
    v37 = v32[28];
    v38 = v29 + v32[32];
    sub_1E5DFD1CC(v42, v29, &unk_1ED077760, &unk_1E66011D0);
    *v33 = v49;
    v33[1] = v48;
    sub_1E5DFD1CC(v45, v29 + v34, &qword_1ED072B60, &unk_1E65FA490);
    *(v29 + v35) = v47;
    sub_1E5DFD1CC(v44, v29 + v36, &unk_1ED077750, &unk_1E66011C0);
    *(v29 + v37) = v43;
    *v38 = v41;
    *(v38 + 8) = 0;
    type metadata accessor for RouteResource(0);
    swift_storeEnumTagMultiPayload();
    sub_1E5DFE50C(v44, &unk_1ED077750, &unk_1E66011C0);
    sub_1E5DFE50C(v45, &qword_1ED072B60, &unk_1E65FA490);
    sub_1E5DFE50C(v42, &unk_1ED077760, &unk_1E66011D0);
    *(v29 + *(v46 + 24)) = MEMORY[0x1E69E7CD0];
    v39 = swift_task_alloc();
    v0[77] = v39;
    *v39 = v0;
    v39[1] = sub_1E6009310;
    v40 = v0[48];

    return sub_1E6005CC8(v40, 0, 0, 0);
  }
}

uint64_t sub_1E6009310()
{
  v2 = *v1;
  *(*v1 + 624) = v0;

  if (v0)
  {
    sub_1E600DD44(*(v2 + 384), type metadata accessor for RouteDestination);
    v3 = sub_1E6009C0C;
  }

  else
  {
    v4 = *(v2 + 416);
    sub_1E600DD44(*(v2 + 384), type metadata accessor for RouteDestination);
    sub_1E600DD44(v4, type metadata accessor for NavigationControllerRoutingContext);
    v3 = sub_1E600947C;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1E600947C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v4 = v0[53];
  sub_1E600A068(v0[67], v0[68]);
  sub_1E5DFE50C(v4, &qword_1ED072A30, &qword_1E65EEA70);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E60096AC()
{
  *(*v1 + 648) = v0;

  if (v0)
  {
    v2 = sub_1E60099E4;
  }

  else
  {
    v2 = sub_1E60097C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E60097C0()
{
  v1 = v0[79];
  v2 = v0[39];
  v3 = v0[33];
  sub_1E600DD44(v0[32], type metadata accessor for RouteSource);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E60099E4()
{
  v1 = v0[79];
  v2 = v0[39];
  v3 = v0[33];
  sub_1E600DD44(v0[32], type metadata accessor for RouteSource);
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E6009C0C()
{
  v1 = v0[66];
  v2 = v0[65];
  v3 = v0[64];
  v5 = v0[52];
  v4 = v0[53];
  sub_1E600A068(v0[67], v0[68]);
  sub_1E5DFE50C(v4, &qword_1ED072A30, &qword_1E65EEA70);
  (*(v2 + 8))(v1, v3);
  sub_1E600DD44(v5, type metadata accessor for NavigationControllerRoutingContext);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1E6009E5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072340, &qword_1E65EA410);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_1E6009ECC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED07B280, &unk_1E660AAC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1E600A014(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E600A068(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1E600A0F0(uint64_t a1)
{
  v2 = sub_1E65E1D38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C60, MEMORY[0x1E699EFD8], MEMORY[0x1E699EFE0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F0BE0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600A28C(uint64_t a1)
{
  v2 = sub_1E65DA078();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C68, MEMORY[0x1E69CCB30], MEMORY[0x1E69CCB38]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F0EC0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600A428(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072938, &qword_1E65EC098);
  v4 = sub_1E600DDA4();
  result = MEMORY[0x1E694DC60](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v9 = *(v6 - 2);
      v8 = *(v6 - 1);
      sub_1E5F8710C(v9, v8, *v6);
      sub_1E60F149C(v10, v9, v8, v7);
      sub_1E5FEE4CC(v10[0], v10[1], v11);
      v6 += 24;
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

uint64_t sub_1E600A4E8(uint64_t a1)
{
  v2 = sub_1E65DA2D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C58, MEMORY[0x1E69CCC28], MEMORY[0x1E69CCC30]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F11BC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600A6B8(uint64_t a1)
{
  v2 = sub_1E65D9758();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BF8, MEMORY[0x1E69CC2A8], MEMORY[0x1E69CC2B0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1E600E0EC(v12, v6, MEMORY[0x1E69CC2A8]);
      sub_1E60F16DC(v8, v6);
      sub_1E600DD44(v8, MEMORY[0x1E69CC2A8]);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1E600A878(uint64_t a1)
{
  v2 = type metadata accessor for ItemContext(0);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v14 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1EE2DB730, type metadata accessor for ItemContext, &protocol conformance descriptor for ItemContext);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v15 = result;
  if (v9)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1E600E0EC(v12, v6, type metadata accessor for ItemContext);
      sub_1E60F201C(v8, v6);
      sub_1E600DD44(v8, type metadata accessor for ItemContext);
      v12 += v13;
      --v9;
    }

    while (v9);
    return v15;
  }

  return result;
}

uint64_t sub_1E600AA08(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1E60F225C(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1E600AAA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600DEF8();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CC5A8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v6 = *v5;
      v8 = *(v5 - 2);
      v7 = *(v5 - 1);
      sub_1E600DF4C(v8, v7, *v5);
      sub_1E60F23AC(v9, v8, v7, v6);
      sub_1E600DF5C(v9[0], v9[1], v10);
      v5 += 24;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600AB4C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C78, &qword_1E65EC628);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5FED46C(&qword_1ED072C80, &qword_1ED072C78, &qword_1E65EC628, MEMORY[0x1E699E6D0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_1E60F2570(v8, v6);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600AD24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072C70, &qword_1E65EC620);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5FED46C(&qword_1EE2D65D8, &qword_1ED072C70, &qword_1E65EC620, MEMORY[0x1E699D5B0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v12 = v14;
    v15 = a1 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v16 = *(v13 + 56);
    do
    {
      v12(v6, v15, v2);
      sub_1E60F2854(v8, v6);
      (*(v13 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600AEC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072080, &qword_1E65EA768);
  v4 = sub_1E600AF84();
  result = MEMORY[0x1E694DC60](v2, v3, v4);
  v12 = result;
  if (v2)
  {
    v6 = (a1 + 48);
    do
    {
      v8 = *(v6 - 2);
      v7 = *(v6 - 1);
      v9 = *v6;
      v6 += 24;
      sub_1E600B008(v8, v7, v9);
      sub_1E60F2B38(v10, v8, v7, v9);
      sub_1E600B034(v10[0], v10[1], v11);
      --v2;
    }

    while (v2);
    return v12;
  }

  return result;
}

unint64_t sub_1E600AF84()
{
  result = qword_1ED072B78;
  if (!qword_1ED072B78)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072080, &qword_1E65EA768);
    sub_1E5DF46C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072B78);
  }

  return result;
}

uint64_t sub_1E600B008(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E600B01C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E600B01C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 4u)
  {
  }

  return result;
}

uint64_t sub_1E600B034(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1E6001C2C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1E600B07C(uint64_t a1)
{
  v2 = sub_1E65E2D18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C40, MEMORY[0x1E699F5F0], MEMORY[0x1E699F5F8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F4198(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600B218(uint64_t a1)
{
  v2 = sub_1E65E2C78();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C38, MEMORY[0x1E699F5B0], MEMORY[0x1E699F5B8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F3EB8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600B3B4(uint64_t a1)
{
  v2 = sub_1E65E2D38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C30, MEMORY[0x1E699F608], MEMORY[0x1E699F610]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F3BD8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600B550(uint64_t a1)
{
  v2 = sub_1E65E2A88();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C28, MEMORY[0x1E699F520], MEMORY[0x1E699F528]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F38F8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600B6EC(uint64_t a1)
{
  v2 = sub_1E65E2698();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C20, MEMORY[0x1E699F3C0], MEMORY[0x1E699F3C8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F3618(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600B888(uint64_t a1)
{
  v2 = sub_1E65E26B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C18, MEMORY[0x1E699F3D8], MEMORY[0x1E699F3E0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F3338(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600BA24(uint64_t a1)
{
  v2 = sub_1E65E2B48();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C10, MEMORY[0x1E699F550], MEMORY[0x1E699F558]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F3058(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600BBC0(uint64_t a1)
{
  v2 = sub_1E65E2BF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C08, MEMORY[0x1E699F598], MEMORY[0x1E699F5A0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F2D78(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600BD90(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600E068();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CC3D8], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E600E0BC(v7, v6, v8);
      sub_1E60F4AF8(v9, v7, v6, v8);
      sub_1E600E0D4(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600BE38(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600C604();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CCA30], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E600C658(v7, v6, v8);
      sub_1E60F4928(v9, v7, v6, v8);
      sub_1E600C670(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600BEE0(uint64_t a1)
{
  v2 = sub_1E65D8258();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072CC0, MEMORY[0x1E69CB2E0], MEMORY[0x1E69CB2F0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F4CC8(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600C0B0(uint64_t a1)
{
  v2 = sub_1E65DA6C8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C50, MEMORY[0x1E69CCF28], MEMORY[0x1E69CCF30]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F55F0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600C27C(uint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, void (*a5)(char *, char *))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v25 - v15;
  v17 = *(a1 + 16);
  v18 = sub_1E5FED46C(a4, a2, a3, MEMORY[0x1E699D800]);
  result = MEMORY[0x1E694DC60](v17, v10, v18);
  v26 = result;
  if (v17)
  {
    v20 = v11 + 16;
    v25 = *(v11 + 16);
    v21 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v22 = *(v11 + 72);
    v23 = a5;
    v24 = (v20 - 8);
    do
    {
      v25(v14, v21, v10);
      v23(v16, v14);
      (*v24)(v16, v10);
      v21 += v22;
      --v17;
    }

    while (v17);
    return v26;
  }

  return result;
}

uint64_t sub_1E600C468(uint64_t a1)
{
  v2 = sub_1E65D9B08();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1EE2D7040, MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6C8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F5CD0(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_1E600C604()
{
  result = qword_1EE2D6FF8;
  if (!qword_1EE2D6FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6FF8);
  }

  return result;
}

uint64_t sub_1E600C658(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1E600C670(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_1E600C6BC(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600E1BC();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E699F540], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E5E53D04(v7, v6, v8);
      sub_1E60F5FB0(v9, v7, v6, v8);
      sub_1E5E53D1C(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_1E600C764(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600C80C();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69CD128], v3);
  v11 = result;
  if (v2)
  {
    v5 = (a1 + 48);
    do
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v8 = *v5;
      v5 += 24;
      sub_1E5E53D04(v7, v6, v8);
      sub_1E60F6180(v9, v7, v6, v8);
      sub_1E5E53D1C(v9[0], v9[1], v10);
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

unint64_t sub_1E600C80C()
{
  result = qword_1ED072B80;
  if (!qword_1ED072B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072B80);
  }

  return result;
}

unint64_t sub_1E600C860()
{
  result = qword_1EE2D68A0;
  if (!qword_1EE2D68A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D68A0);
  }

  return result;
}

uint64_t sub_1E600C8B4(uint64_t a1)
{
  v2 = sub_1E65D76F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1EE2D71A8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F1A58(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_1E600CA80()
{
  result = qword_1ED072B98;
  if (!qword_1ED072B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072B98);
  }

  return result;
}

unint64_t sub_1E600CAD4()
{
  result = qword_1EE2D65C8;
  if (!qword_1EE2D65C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D65C8);
  }

  return result;
}

uint64_t sub_1E600CB28(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1E600CB9C();
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E699D6E8], v3);
  v8 = result;
  if (v2)
  {
    v5 = (a1 + 32);
    do
    {
      v6 = *v5++;
      sub_1E60F67BC(&v7, v6);
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

unint64_t sub_1E600CB9C()
{
  result = qword_1ED072BA0;
  if (!qword_1ED072BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072BA0);
  }

  return result;
}

uint64_t sub_1E600CC58(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v7 = *(a1 + 16);
  v8 = a2();
  result = MEMORY[0x1E694DC60](v7, a3, v8);
  v13 = result;
  if (v7)
  {
    v10 = (a1 + 32);
    do
    {
      v11 = *v10++;
      a4(&v12, v11);
      --v7;
    }

    while (v7);
    return v13;
  }

  return result;
}

uint64_t sub_1E600CCD8(uint64_t a1)
{
  v2 = sub_1E65E33F8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072C90, MEMORY[0x1E699EC38], MEMORY[0x1E699EC40]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F694C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600CE74(uint64_t a1)
{
  v2 = sub_1E65E1088();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BF0, MEMORY[0x1E699E030], MEMORY[0x1E699E040]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F832C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D010(uint64_t a1)
{
  v2 = sub_1E65E0D28();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BE8, MEMORY[0x1E699DE78], MEMORY[0x1E699DE80]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F804C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D1AC(uint64_t a1)
{
  v2 = sub_1E65E0FD8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BE0, MEMORY[0x1E699DFB0], MEMORY[0x1E699DFC0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F7D6C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D348(uint64_t a1)
{
  v2 = sub_1E65E10D8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BD8, MEMORY[0x1E699E070], MEMORY[0x1E699E080]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F7A8C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D4E4(uint64_t a1)
{
  v2 = sub_1E65E0E08();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BD0, MEMORY[0x1E699DEE8], MEMORY[0x1E699DEF0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F77AC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D680(uint64_t a1)
{
  v2 = sub_1E65E1038();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BC0, MEMORY[0x1E699DFF0], MEMORY[0x1E699E000]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F74CC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D81C(uint64_t a1)
{
  v2 = sub_1E65E0BC8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BB8, MEMORY[0x1E699DD90], MEMORY[0x1E699DDA0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F71EC(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600D9B8(uint64_t a1)
{
  v2 = sub_1E65E0C18();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BB0, MEMORY[0x1E699DDD0], MEMORY[0x1E699DDE0]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F6F0C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1E600DB54(uint64_t a1)
{
  v2 = sub_1E65E0F68();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1E5DFA4D4(&qword_1ED072BA8, MEMORY[0x1E699DF68], MEMORY[0x1E699DF78]);
  result = MEMORY[0x1E694DC60](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1E60F6C2C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

unint64_t sub_1E600DCF0()
{
  result = qword_1ED072BC8;
  if (!qword_1ED072BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072BC8);
  }

  return result;
}

uint64_t sub_1E600DD44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1E600DDA4()
{
  result = qword_1ED072C00;
  if (!qword_1ED072C00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ED072938, &qword_1E65EC098);
    sub_1E5FC7848();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C00);
  }

  return result;
}

uint64_t sub_1E600DE30(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E694DC60](v2, MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_1E60F892C(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_1E600DEA4()
{
  result = qword_1ED072C48;
  if (!qword_1ED072C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C48);
  }

  return result;
}

unint64_t sub_1E600DEF8()
{
  result = qword_1ED072C88;
  if (!qword_1ED072C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C88);
  }

  return result;
}

uint64_t sub_1E600DF4C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_1E600DF5C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

unint64_t sub_1E600DF6C()
{
  result = qword_1ED072C98;
  if (!qword_1ED072C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072C98);
  }

  return result;
}

unint64_t sub_1E600DFC0()
{
  result = qword_1ED072CB0;
  if (!qword_1ED072CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CB0);
  }

  return result;
}

unint64_t sub_1E600E014()
{
  result = qword_1EE2D6788;
  if (!qword_1EE2D6788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2D6788);
  }

  return result;
}

unint64_t sub_1E600E068()
{
  result = qword_1ED072CB8;
  if (!qword_1ED072CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CB8);
  }

  return result;
}

uint64_t sub_1E600E0BC(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1E600E0D4(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 3)
  {
  }

  return result;
}

uint64_t sub_1E600E0EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E600E154(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1E600E1BC()
{
  result = qword_1ED072CC8;
  if (!qword_1ED072CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CC8);
  }

  return result;
}

uint64_t sub_1E600E214()
{
  v1 = 0x7263736275736E75;
  if (*v0 != 1)
  {
    v1 = 0x6269726373627573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t sub_1E600E27C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E600EA4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E600E2B0(uint64_t a1)
{
  v2 = sub_1E600E88C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E2EC(uint64_t a1)
{
  v2 = sub_1E600E88C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E600E334(uint64_t a1)
{
  v2 = sub_1E600E8E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E370(uint64_t a1)
{
  v2 = sub_1E600E8E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E600E3AC(uint64_t a1)
{
  v2 = sub_1E600E988();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E3E8(uint64_t a1)
{
  v2 = sub_1E600E988();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E600E424(uint64_t a1)
{
  v2 = sub_1E600E934();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E600E460(uint64_t a1)
{
  v2 = sub_1E600E934();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AppSubscriptionState.hashValue.getter(unsigned __int8 a1)
{
  sub_1E65E6D28();
  MEMORY[0x1E694E740](a1);
  return sub_1E65E6D78();
}

uint64_t AppSubscriptionState.encode(to:)(void *a1, int a2)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CD0, &qword_1E65EC640);
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v22 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CD8, &qword_1E65EC648);
  v20 = *(v5 - 8);
  v21 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CE0, &qword_1E65EC650);
  v19 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072CE8, &qword_1E65EC658);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E600E88C();
  sub_1E65E6DA8();
  v15 = (v12 + 8);
  if (v25)
  {
    if (v25 == 1)
    {
      v27 = 1;
      sub_1E600E934();
      sub_1E65E6B18();
      (*(v20 + 8))(v7, v21);
    }

    else
    {
      v28 = 2;
      sub_1E600E8E0();
      v16 = v22;
      sub_1E65E6B18();
      (*(v23 + 8))(v16, v24);
    }
  }

  else
  {
    v26 = 0;
    sub_1E600E988();
    sub_1E65E6B18();
    (*(v19 + 8))(v10, v8);
  }

  return (*v15)(v14, v11);
}

unint64_t sub_1E600E88C()
{
  result = qword_1ED072CF0;
  if (!qword_1ED072CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CF0);
  }

  return result;
}

unint64_t sub_1E600E8E0()
{
  result = qword_1ED072CF8;
  if (!qword_1ED072CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072CF8);
  }

  return result;
}

unint64_t sub_1E600E934()
{
  result = qword_1ED072D00;
  if (!qword_1ED072D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D00);
  }

  return result;
}

unint64_t sub_1E600E988()
{
  result = qword_1ED072D08;
  if (!qword_1ED072D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D08);
  }

  return result;
}

uint64_t sub_1E600E9F4@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E600EB70(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E600EA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (sub_1E65E6C18() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7263736275736E75 && a2 == 0xEC00000064656269 || (sub_1E65E6C18() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6269726373627573 && a2 == 0xEA00000000006465)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E65E6C18();

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

uint64_t sub_1E600EB70(void *a1)
{
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D58, &qword_1E65ECA80);
  v28 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v26 - v2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D60, &qword_1E65ECA88);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D68, &qword_1E65ECA90);
  v29 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D70, &qword_1E65ECA98);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v35 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1E600E88C();
  v13 = v34;
  sub_1E65E6D98();
  if (!v13)
  {
    v27 = v5;
    v14 = v33;
    v34 = v9;
    v15 = v11;
    v16 = sub_1E65E6AF8();
    v17 = (2 * *(v16 + 16)) | 1;
    v36 = v16;
    v37 = v16 + 32;
    v38 = 0;
    v39 = v17;
    v18 = sub_1E5FBE3E4();
    if (v18 != 3 && v38 == v39 >> 1)
    {
      v9 = v18;
      if (v18)
      {
        if (v18 == 1)
        {
          v40 = 1;
          sub_1E600E934();
          sub_1E65E6A68();
          v19 = v34;
          (*(v30 + 8))(v4, v32);
          (*(v19 + 8))(v11, v8);
LABEL_13:
          swift_unknownObjectRelease();
          __swift_destroy_boxed_opaque_existential_1(v35);
          return v9;
        }

        v40 = 2;
        sub_1E600E8E0();
        v24 = v11;
        sub_1E65E6A68();
        v25 = v34;
        (*(v28 + 8))(v14, v31);
      }

      else
      {
        v40 = 0;
        sub_1E600E988();
        v24 = v11;
        sub_1E65E6A68();
        (*(v29 + 8))(v7, v27);
        v25 = v34;
      }

      (*(v25 + 8))(v24, v8);
      goto LABEL_13;
    }

    v20 = sub_1E65E68F8();
    swift_allocError();
    v22 = v21;
    v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071BA8, &qword_1E65E8C80) + 48);
    *v22 = &type metadata for AppSubscriptionState;
    sub_1E65E6A78();
    sub_1E65E68E8();
    (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
    swift_willThrow();
    (*(v34 + 8))(v15, v8);
    swift_unknownObjectRelease();
  }

  __swift_destroy_boxed_opaque_existential_1(v35);
  return v9;
}

uint64_t getEnumTagSinglePayload for ToastActionPriority(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ToastActionPriority(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1E600F278()
{
  result = qword_1ED072D10;
  if (!qword_1ED072D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D10);
  }

  return result;
}

unint64_t sub_1E600F2D0()
{
  result = qword_1ED072D18;
  if (!qword_1ED072D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D18);
  }

  return result;
}

unint64_t sub_1E600F328()
{
  result = qword_1ED072D20;
  if (!qword_1ED072D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D20);
  }

  return result;
}

unint64_t sub_1E600F380()
{
  result = qword_1ED072D28;
  if (!qword_1ED072D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D28);
  }

  return result;
}

unint64_t sub_1E600F3D8()
{
  result = qword_1ED072D30;
  if (!qword_1ED072D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D30);
  }

  return result;
}

unint64_t sub_1E600F430()
{
  result = qword_1ED072D38;
  if (!qword_1ED072D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D38);
  }

  return result;
}

unint64_t sub_1E600F488()
{
  result = qword_1ED072D40;
  if (!qword_1ED072D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D40);
  }

  return result;
}

unint64_t sub_1E600F4E0()
{
  result = qword_1ED072D48;
  if (!qword_1ED072D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D48);
  }

  return result;
}

unint64_t sub_1E600F538()
{
  result = qword_1ED072D50;
  if (!qword_1ED072D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED072D50);
  }

  return result;
}

uint64_t sub_1E600F5B8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v37 = a3;
  v38 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D78, &qword_1E65ECAA0);
  v41 = *(v8 - 8);
  v42 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v34 - v9;
  v10 = type metadata accessor for AppComposer(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1E65E2348();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v43 = sub_1E65E2308();
  v40 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v36 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *a1;
  sub_1E5DF650C(a2, v45);
  v16 = swift_allocObject();
  sub_1E5DF599C(v45, v16 + 16);
  v17 = a1;
  sub_1E5E1DEAC(a1, v13);
  v18 = *(v11 + 80);
  v19 = (v18 + 16) & ~v18;
  v35 = v19 + v12;
  v20 = swift_allocObject();
  sub_1E5E1FA80(v13, v20 + v19);
  sub_1E65E2338();
  sub_1E65E22F8();
  sub_1E5E1DEAC(v17, v13);
  v21 = swift_allocObject();
  v22 = v38;
  *(v21 + 16) = v37;
  *(v21 + 24) = v22;
  sub_1E5E1FA80(v13, v21 + ((v18 + 32) & ~v18));
  type metadata accessor for AppFeature(0);
  sub_1E6010A40(&qword_1EE2DBD90, type metadata accessor for AppFeature, &protocol conformance descriptor for AppFeature);
  v37 = sub_1E6010A40(&qword_1EE2D6260, MEMORY[0x1E699F268], MEMORY[0x1E699F260]);

  sub_1E65E4DE8();
  sub_1E5E1DEAC(v17, v13);
  v23 = (v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v24 = swift_allocObject();
  sub_1E5E1FA80(v13, v24 + v19);
  v25 = (v24 + v23);
  v26 = *(a5 + 3);
  v25[2] = *(a5 + 2);
  v25[3] = v26;
  v25[4] = *(a5 + 4);
  v27 = *(a5 + 1);
  *v25 = *a5;
  v25[1] = v27;
  swift_unknownObjectRetain();

  sub_1E65E4CC8();
  v28 = swift_allocObject();
  *(v28 + 16) = sub_1E6010D94;
  *(v28 + 24) = v24;

  v29 = v36;
  v31 = v43;
  v30 = v44;
  v32 = sub_1E65E4F08();

  (*(v41 + 8))(v30, v42);
  (*(v40 + 8))(v29, v31);
  return v32;
}

uint64_t sub_1E600FAD4(uint64_t a1)
{
  v1[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077750, &unk_1E66011C0);
  v1[5] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072B60, &unk_1E65FA490);
  v1[6] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED077760, &unk_1E66011D0);
  v1[7] = swift_task_alloc();
  v1[8] = type metadata accessor for RouteDestination(0);
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E600FC10, 0, 0);
}

uint64_t sub_1E600FC10()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v21 = v2;
  v22 = *(v0 + 64);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v20 = v5;
  v23 = v4[3];
  v24 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v23);
  v6 = sub_1E65D76F8();
  (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
  v7 = sub_1E65E2CF8();
  (*(*(v7 - 8) + 56))(v2, 1, 1, v7);
  v8 = sub_1E65E1FC8();
  (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  v9 = sub_1E601100C(MEMORY[0x1E69E7CC0]);
  type metadata accessor for RouteSource(0);
  swift_storeEnumTagMultiPayload();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0720B0, &unk_1E65EA270);
  v11 = (v1 + v10[12]);
  v12 = v10[16];
  v13 = v10[20];
  v14 = v10[24];
  v15 = v10[28];
  v16 = v1 + v10[32];
  sub_1E5DFD1CC(v3, v1, &unk_1ED077760, &unk_1E66011D0);
  *v11 = 0;
  v11[1] = 0;
  sub_1E5DFD1CC(v21, v1 + v12, &qword_1ED072B60, &unk_1E65FA490);
  *(v1 + v13) = v9;
  sub_1E5DFD1CC(v20, v1 + v14, &unk_1ED077750, &unk_1E66011C0);
  *(v1 + v15) = 0;
  *v16 = 0;
  *(v16 + 8) = 1;
  type metadata accessor for RouteResource(0);
  swift_storeEnumTagMultiPayload();
  sub_1E5DFE50C(v20, &unk_1ED077750, &unk_1E66011C0);
  sub_1E5DFE50C(v21, &qword_1ED072B60, &unk_1E65FA490);
  sub_1E5DFE50C(v3, &unk_1ED077760, &unk_1E66011D0);
  *(v1 + *(v22 + 24)) = MEMORY[0x1E69E7CD0];
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  v17 = swift_task_alloc();
  *(v0 + 80) = v17;
  *v17 = v0;
  v17[1] = sub_1E600FF10;
  v18 = *(v0 + 72);

  return RoutingContext.presentDestination(_:style:priority:)(v18, (v0 + 16), (v0 + 25), v23, v24);
}

uint64_t sub_1E600FF10()
{
  v2 = *(*v1 + 72);
  v3 = *v1;
  *(v3 + 88) = v0;

  sub_1E60111F8(v2);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E6010098, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1E6010098()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E6010124()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1E5DFE6BC;

  return sub_1E600FAD4(v0 + 16);
}

uint64_t sub_1E60101D8()
{
  type metadata accessor for AppComposer(0);
  type metadata accessor for AppEnvironment(0);
  v1 = RemoteBrowsingService.showWorkoutPlanCreationPrompt.getter();
  *(v0 + 24) = v2;
  v5 = (v1 + *v1);
  v3 = swift_task_alloc();
  *(v0 + 32) = v3;
  *v3 = v0;
  v3[1] = sub_1E60102EC;

  return v5();
}

uint64_t sub_1E60102EC()
{
  *(*v1 + 40) = v0;

  if (v0)
  {
    v2 = sub_1E5F9D2C8;
  }

  else
  {
    v2 = sub_1E5F9D5CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E6010400()
{
  v2 = *(type metadata accessor for AppComposer(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1E5DFE6BC;

  return sub_1E60101B8(v0 + v3);
}

uint64_t sub_1E60104CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30[1] = a2;
  v30[2] = a4;
  v30[3] = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F78, &unk_1E65EA3F0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v30 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F80, &unk_1E65F4310);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v30 - v11;
  v13 = sub_1E65D7848();
  v30[0] = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1E65E23A8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v22 = v30 - v21;
  if (a3)
  {
    v23 = a1 + *(type metadata accessor for AppState(0) + 108);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    (*(v17 + 16))(v20, v23 + *(v24 + 28), v16);
    type metadata accessor for AppComposer(0);

    sub_1E65DAE38();
    sub_1E65DAE38();
    return sub_1E65E22A8();
  }

  else
  {
    v26 = a1 + *(type metadata accessor for AppState(0) + 108);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
    (*(v17 + 16))(v22, v26 + *(v27 + 28), v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED071F88, &unk_1E65EA400);
    sub_1E65E4C98();
    sub_1E5E1F544(v12);
    sub_1E5DFE50C(v9, &qword_1ED071F78, &unk_1E65EA3F0);
    v28 = v30[0];
    v29 = *(v30[0] + 48);
    if (v29(v12, 1, v13) == 1)
    {
      sub_1E65D77C8();
      if (v29(v12, 1, v13) != 1)
      {
        sub_1E5DFE50C(v12, &qword_1ED071F80, &unk_1E65F4310);
      }
    }

    else
    {
      (*(v28 + 32))(v15, v12, v13);
    }

    type metadata accessor for AppComposer(0);
    sub_1E65DAE38();
    sub_1E65DAE38();
    return sub_1E65E22B8();
  }
}

uint64_t sub_1E60108C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = v2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));

  return sub_1E60104CC(a1, v6, v7, v8, a2);
}

uint64_t sub_1E6010944(uint64_t a1)
{
  v2 = sub_1E65E23A8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E65E22C8();
  v6 = a1 + *(type metadata accessor for AppState(0) + 108);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED0727F8, &qword_1E65EBDF0);
  return (*(v3 + 40))(v6 + *(v7 + 28), v5, v2);
}

uint64_t sub_1E6010A40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E6010A88(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v33 = a3;
  v7 = type metadata accessor for AppComposer(0);
  v32 = *(v7 - 8);
  v8 = *(v32 + 64);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1E65E22E8();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ED0735B0, &qword_1E65EA000);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v27 - v15;
  v28 = *a1;
  v17 = sub_1E65E60A8();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);
  (*(v11 + 16))(v13, a2, v10);
  sub_1E5E1DEAC(v33, v9);
  v27[1] = *a4;
  v18 = a4[5];
  v29 = a4[3];
  v30 = v18;
  v31 = a4[7];
  v33 = a4[9];
  v19 = (*(v11 + 80) + 33) & ~*(v11 + 80);
  v20 = (v12 + *(v32 + 80) + v19) & ~*(v32 + 80);
  v21 = (v8 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v22 = swift_allocObject();
  *(v22 + 16) = 0;
  *(v22 + 24) = 0;
  *(v22 + 32) = v28;
  (*(v11 + 32))(v22 + v19, v13, v10);
  sub_1E5E1FA80(v9, v22 + v20);
  v23 = (v22 + v21);
  v24 = *(a4 + 3);
  v23[2] = *(a4 + 2);
  v23[3] = v24;
  v23[4] = *(a4 + 4);
  v25 = *(a4 + 1);
  *v23 = *a4;
  v23[1] = v25;
  swift_unknownObjectRetain();

  sub_1E6059EAC(0, 0, v16, &unk_1E65ECAC8, v22);
}

uint64_t sub_1E6010D94(unsigned __int8 *a1, uint64_t a2)
{
  v5 = *(type metadata accessor for AppComposer(0) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1E6010A88(a1, a2, v2 + v6, v7);
}

uint64_t sub_1E6010E40(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = *a1;
  return v4(&v6, a3);
}

uint64_t sub_1E6010E80(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1E65E22E8() - 8);
  v6 = (*(v5 + 80) + 33) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for AppComposer(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(v1 + 16);
  v12 = *(v1 + 24);
  v13 = *(v1 + 32);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = sub_1E5DFA78C;

  return sub_1E62FC388(a1, v11, v12, v13, v1 + v6, v1 + v9, v1 + v10);
}

unint64_t sub_1E601100C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D80, &qword_1E65ECAD0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v22 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D88, &qword_1E65ECAD8);
    v7 = sub_1E65E6A28();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1E5DFD1CC(v9, v5, &qword_1ED072D80, &qword_1E65ECAD0);
      v11 = *v5;
      v12 = v5[1];
      result = sub_1E6215038(*v5, v12);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v16 = (v7[6] + 16 * result);
      *v16 = v11;
      v16[1] = v12;
      v17 = v7[7];
      v18 = sub_1E65E2A38();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v15, v5 + v8, v18);
      v19 = v7[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v7[2] = v21;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

uint64_t sub_1E60111F8(uint64_t a1)
{
  v2 = type metadata accessor for RouteDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t SeymourAchievementProgress.transformed()@<X0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 32);
  if (v6)
  {
    v7 = 0;
    result = v3 & 1;
  }

  else
  {
    v7 = v1[3];
  }

  *a1 = v4;
  *(a1 + 8) = result;
  *(a1 + 16) = v5;
  *(a1 + 24) = v7;
  *(a1 + 32) = v6 & 1;
  return result;
}

uint64_t sub_1E60112B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v127 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D90, &qword_1E66040F0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = v100 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v118 = v100 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072D98, &qword_1E65ECAE8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v100 - v9;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DA0, &qword_1E65ECAF0);
  MEMORY[0x1EEE9AC00](v122);
  v123 = (v100 - v11);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DA8, &qword_1E65ECAF8);
  MEMORY[0x1EEE9AC00](v12);
  v124 = v100 - v13;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DB0, &qword_1E65ECB00);
  MEMORY[0x1EEE9AC00](v114);
  v116 = v100 - v14;
  v15 = sub_1E65E4188();
  v106 = *(v15 - 8);
  v107 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v105 = v100 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DB8, &qword_1E65ECB08);
  v103 = *(v17 - 8);
  v104 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v102 = v100 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DC0, &qword_1E65ECB10);
  v109 = *(v19 - 8);
  v110 = v19;
  v20 = MEMORY[0x1EEE9AC00](v19);
  v108 = v100 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v112 = v100 - v22;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DC8, &qword_1E65ECB18);
  MEMORY[0x1EEE9AC00](v113);
  v117 = (v100 - v23);
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DD0, &qword_1E65ECB20);
  MEMORY[0x1EEE9AC00](v121);
  v115 = v100 - v24;
  *&v126 = sub_1E65D72D8();
  *&v125 = *(v126 - 8);
  v25 = MEMORY[0x1EEE9AC00](v126);
  v27 = v100 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v25);
  v120 = v100 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v119 = v100 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072640, &qword_1E65EB958);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v33 = v100 - v32;
  sub_1E5DFD1CC(a1, v100 - v32, &qword_1ED072640, &qword_1E65EB958);
  v34 = type metadata accessor for SectionHeaderSubtitleDescriptor(0);
  if ((*(*(v34 - 8) + 48))(v33, 1, v34) == 1)
  {
    swift_storeEnumTagMultiPayload();
    sub_1E60123A0();
    return sub_1E65E4138();
  }

  else
  {
    v100[2] = v12;
    v100[3] = v8;
    v101 = v10;
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v36 = v118;
      sub_1E6012620(v33, v118);
      sub_1E5DFD1CC(v36, v6, &qword_1ED072D90, &qword_1E66040F0);
      v37 = v125;
      v38 = v126;
      if ((*(v125 + 48))(v6, 1, v126) == 1)
      {
        sub_1E5DFE50C(v6, &qword_1ED072D90, &qword_1E66040F0);
        v143 = 0u;
        v144[0] = 0u;
        LOBYTE(v144[1]) = 1;
        sub_1E65E4138();
      }

      else
      {
        (*(v37 + 32))(v27, v6, v38);
        *&v143 = sub_1E65D7238();
        *(&v143 + 1) = v81;
        *&v144[0] = v82 & 1;
        *(&v144[0] + 1) = v83;
        LOBYTE(v144[1]) = 0;
        sub_1E65E4138();
        (*(v37 + 8))(v27, v38);
      }

      v84 = *v146;
      v85 = v146[16];
      v125 = v145;
      v126 = *v146;
      v86 = v123;
      *v123 = v145;
      v86[1] = v84;
      *(v86 + 32) = v85;
      swift_storeEnumTagMultiPayload();
      v87 = v125;
      v88 = v126;
      sub_1E6012690(v125, *(&v125 + 1), v126, *(&v126 + 1), v85);
      sub_1E6012690(v87, *(&v87 + 1), v88, *(&v88 + 1), v85);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE8, &qword_1E65ECB38);
      sub_1E601242C();
      sub_1E601259C();
      v89 = v124;
      sub_1E65E4138();
      sub_1E5DFD1CC(v89, v101, &qword_1ED072DA8, &qword_1E65ECAF8);
      swift_storeEnumTagMultiPayload();
      sub_1E60123A0();
      sub_1E65E4138();
      sub_1E60126E4(v87, *(&v87 + 1), v88, *(&v88 + 1), v85);
      sub_1E60126E4(v87, *(&v87 + 1), v88, *(&v88 + 1), v85);
      sub_1E5DFE50C(v89, &qword_1ED072DA8, &qword_1E65ECAF8);
      return sub_1E5DFE50C(v118, &qword_1ED072D90, &qword_1E66040F0);
    }

    else
    {
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF0, &qword_1E65F0110) + 48);
      v40 = *(v125 + 32);
      v41 = v119;
      v42 = v126;
      v40(v119, v33, v126);
      v43 = v120;
      v40(v120, &v33[v39], v42);
      v44 = type metadata accessor for AppComposer(0);
      v45 = v111;
      if (*(v111 + *(v44 + 20) + 8) > 2u)
      {
        v90 = sub_1E65E3F68();
        LOBYTE(v143) = 0;
        sub_1E60127DC(v41, v43, &v145);
        *(&v148[3] + 7) = *&v146[32];
        *(&v148[2] + 7) = *&v146[16];
        *(&v148[1] + 7) = *v146;
        *(v148 + 7) = v145;
        v91 = v148[0];
        v92 = v116;
        *(v116 + 33) = v148[1];
        v93 = v148[3];
        *(v92 + 49) = v148[2];
        *(v92 + 65) = v93;
        v94 = v143;
        *v92 = v90;
        *(v92 + 1) = 0x4024000000000000;
        v92[16] = v94;
        *(v92 + 10) = *(&v148[3] + 15);
        *(v92 + 17) = v91;
        swift_storeEnumTagMultiPayload();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE0, &qword_1E65ECB30);
        sub_1E60124E4();
        sub_1E5FED46C(&qword_1EE2D4B70, &qword_1ED072DE0, &qword_1E65ECB30, MEMORY[0x1E69817F8]);
        v80 = v115;
        sub_1E65E4138();
      }

      else
      {
        v46 = sub_1E65E4BA8();
        v47 = v117;
        *v117 = v46;
        v47[1] = v48;
        v49 = sub_1E65E43F8();
        MEMORY[0x1EEE9AC00](v49);
        v100[-2] = v41;
        v100[-1] = v43;
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE0, &qword_1E65ECB30);
        v51 = sub_1E5FED46C(&qword_1EE2D4B70, &qword_1ED072DE0, &qword_1E65ECB30, MEMORY[0x1E69817F8]);
        v52 = v102;
        v118 = v50;
        v100[1] = v51;
        sub_1E65E3C18();
        v53 = v105;
        sub_1E65E4168();
        v54 = sub_1E65E4418();
        sub_1E65E4408();
        sub_1E65E4408();
        if (sub_1E65E4408() != v54)
        {
          sub_1E65E4408();
        }

        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DF8, &qword_1E65ECB40);
        v56 = v117 + *(v55 + 44);
        sub_1E5FED46C(&qword_1ED072E00, &qword_1ED072DB8, &qword_1E65ECB08, MEMORY[0x1E697BE60]);
        v57 = v112;
        v58 = v104;
        sub_1E65E48A8();
        (*(v106 + 8))(v53, v107);
        (*(v103 + 8))(v52, v58);
        v107 = sub_1E65E3F68();
        v129 = 1;
        sub_1E6012990(v45, &v145);
        v138 = *&v146[112];
        v139 = *&v146[128];
        v140 = *&v146[144];
        v141 = *&v146[160];
        v134 = *&v146[48];
        v135 = *&v146[64];
        v136 = *&v146[80];
        v137 = *&v146[96];
        v130 = v145;
        v131 = *v146;
        v132 = *&v146[16];
        v133 = *&v146[32];
        v142[8] = *&v146[112];
        v142[9] = *&v146[128];
        v142[10] = *&v146[144];
        v142[11] = *&v146[160];
        v142[4] = *&v146[48];
        v142[5] = *&v146[64];
        v142[6] = *&v146[80];
        v142[7] = *&v146[96];
        v142[0] = v145;
        v142[1] = *v146;
        v142[2] = *&v146[16];
        v142[3] = *&v146[32];
        sub_1E5DFD1CC(&v130, &v143, &qword_1ED072E08, &qword_1E65ECB48);
        sub_1E5DFE50C(v142, &qword_1ED072E08, &qword_1E65ECB48);
        *&v128[135] = v138;
        *&v128[151] = v139;
        *&v128[167] = v140;
        *&v128[183] = v141;
        *&v128[71] = v134;
        *&v128[87] = v135;
        *&v128[103] = v136;
        *&v128[119] = v137;
        *&v128[7] = v130;
        *&v128[23] = v131;
        *&v128[39] = v132;
        *&v128[55] = v133;
        v59 = v129;
        v60 = v108;
        v61 = v109;
        v62 = *(v109 + 16);
        v63 = v57;
        v64 = v110;
        v62(v108, v63, v110);
        v62(v56, v60, v64);
        v65 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072E10, &qword_1E65ECB50) + 48);
        *(&v144[9] + 1) = *&v128[144];
        *(&v144[10] + 1) = *&v128[160];
        *(&v144[11] + 1) = *&v128[176];
        *(&v144[5] + 1) = *&v128[80];
        *(&v144[6] + 1) = *&v128[96];
        *(&v144[7] + 1) = *&v128[112];
        *(&v144[8] + 1) = *&v128[128];
        *(&v144[1] + 1) = *&v128[16];
        *(&v144[2] + 1) = *&v128[32];
        *(&v144[3] + 1) = *&v128[48];
        v66 = &v56[v65];
        v67 = v107;
        v143 = v107;
        LOBYTE(v144[0]) = v59;
        *&v144[12] = *&v128[191];
        *(&v144[4] + 1) = *&v128[64];
        *(v144 + 1) = *v128;
        v68 = v144[10];
        *(v66 + 10) = v144[9];
        *(v66 + 11) = v68;
        *(v66 + 12) = v144[11];
        *(v66 + 26) = *&v144[12];
        v69 = v144[6];
        *(v66 + 6) = v144[5];
        *(v66 + 7) = v69;
        v70 = v144[8];
        *(v66 + 8) = v144[7];
        *(v66 + 9) = v70;
        v71 = v144[2];
        *(v66 + 2) = v144[1];
        *(v66 + 3) = v71;
        v72 = v144[4];
        *(v66 + 4) = v144[3];
        *(v66 + 5) = v72;
        v73 = v144[0];
        *v66 = v143;
        *(v66 + 1) = v73;
        sub_1E5DFD1CC(&v143, &v145, &qword_1ED072E18, &qword_1E65ECB58);
        v74 = *(v61 + 8);
        v74(v112, v64);
        *&v146[145] = *&v128[144];
        *&v146[161] = *&v128[160];
        *v147 = *&v128[176];
        *&v146[81] = *&v128[80];
        *&v146[97] = *&v128[96];
        *&v146[113] = *&v128[112];
        *&v146[129] = *&v128[128];
        *&v146[17] = *&v128[16];
        *&v146[33] = *&v128[32];
        *&v146[49] = *&v128[48];
        *&v146[65] = *&v128[64];
        v145 = v67;
        v146[0] = v59;
        *&v147[15] = *&v128[191];
        *&v146[1] = *v128;
        sub_1E5DFE50C(&v145, &qword_1ED072E18, &qword_1E65ECB58);
        v74(v60, v64);
        v75 = sub_1E65E3DF8();
        v76 = sub_1E65E4428();
        v77 = v116;
        v78 = v117;
        v79 = v117 + *(v113 + 36);
        *v79 = v75;
        v79[8] = v76;
        sub_1E5DFD1CC(v78, v77, &qword_1ED072DC8, &qword_1E65ECB18);
        swift_storeEnumTagMultiPayload();
        sub_1E60124E4();
        v80 = v115;
        sub_1E65E4138();
        sub_1E5DFE50C(v78, &qword_1ED072DC8, &qword_1E65ECB18);
      }

      v95 = v101;
      sub_1E5DFD1CC(v80, v123, &qword_1ED072DD0, &qword_1E65ECB20);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ED072DE8, &qword_1E65ECB38);
      sub_1E601242C();
      sub_1E601259C();
      v96 = v80;
      v97 = v124;
      sub_1E65E4138();
      sub_1E5DFD1CC(v97, v95, &qword_1ED072DA8, &qword_1E65ECAF8);
      swift_storeEnumTagMultiPayload();
      sub_1E60123A0();
      sub_1E65E4138();
      sub_1E5DFE50C(v97, &qword_1ED072DA8, &qword_1E65ECAF8);
      sub_1E5DFE50C(v96, &qword_1ED072DD0, &qword_1E65ECB20);
      v98 = *(v125 + 8);
      v99 = v126;
      v98(v120, v126);
      return v98(v119, v99);
    }
  }
}