uint64_t StoreTab.Identifier.performDeepLinkAction(background:player:commonOnboardingStatus:bundleID:destination:objectGraph:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 288) = a6;
  *(v8 + 296) = a7;
  *(v8 + 272) = a4;
  *(v8 + 280) = a5;
  *(v8 + 256) = a1;
  *(v8 + 264) = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F24E8D0, &qword_24F951650);
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 - 8);
  *(v8 + 320) = swift_task_alloc();
  v11 = sub_24F928AE8();
  *(v8 + 328) = v11;
  *(v8 + 336) = *(v11 - 8);
  *(v8 + 344) = swift_task_alloc();
  *(v8 + 352) = type metadata accessor for DashboardDeepLinkIntent(0);
  *(v8 + 360) = swift_task_alloc();
  v12 = type metadata accessor for Game(0);
  *(v8 + 368) = v12;
  *(v8 + 376) = *(v12 - 8);
  *(v8 + 384) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B580, &unk_24F965710);
  *(v8 + 392) = v13;
  *(v8 + 400) = *(v13 - 8);
  *(v8 + 408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242318, &qword_24F9F1340);
  *(v8 + 416) = swift_task_alloc();
  v14 = type metadata accessor for GameDashboardDestination(0);
  *(v8 + 424) = v14;
  *(v8 + 432) = *(v14 - 8);
  v15 = swift_task_alloc();
  v16 = *a3;
  *(v8 + 440) = v15;
  *(v8 + 448) = v16;
  *(v8 + 456) = *v7;

  return MEMORY[0x2822009F8](sub_24F3E35F0, 0, 0);
}

uint64_t sub_24F3E35F0()
{
  if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000018 && 0x800000024FA74B40 == v1)
  {
    goto LABEL_3;
  }

  v2 = sub_24F92CE08();

  if ((v2 & 1) == 0)
  {
    if (StoreTab.Identifier.rawValue.getter() == 0xD000000000000013 && 0x800000024FA74B60 == v13)
    {
LABEL_3:

      goto LABEL_5;
    }

    v14 = sub_24F92CE08();

    if ((v14 & 1) == 0)
    {
LABEL_24:

      v21 = v0[1];

      return v21();
    }
  }

LABEL_5:
  v3 = v0[53];
  v4 = v0[54];
  v5 = v0[52];
  sub_24E60169C(v0[36], v5, &qword_27F242318, &qword_24F9F1340);
  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    sub_24E601704(v0[52], &qword_27F242318, &qword_24F9F1340);
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v6 = sub_24F9220D8();
    __swift_project_value_buffer(v6, qword_27F39E850);
    v7 = sub_24F9220B8();
    v8 = sub_24F92BD98();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_24E5DD000, v7, v8, "No destination provided for overlayNowPlayingPage deep link", v9, 2u);
      MEMORY[0x2530542D0](v9, -1, -1);
    }

    goto LABEL_24;
  }

  v10 = v0[35];
  sub_24F3E5540(v0[52], v0[55], type metadata accessor for GameDashboardDestination);
  if (!v10)
  {
    if (qword_27F211400 != -1)
    {
      swift_once();
    }

    v15 = sub_24F9220D8();
    __swift_project_value_buffer(v15, qword_27F39E850);
    v16 = sub_24F9220B8();
    v17 = sub_24F92BD98();
    v18 = os_log_type_enabled(v16, v17);
    v19 = v0[55];
    if (v18)
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_24E5DD000, v16, v17, "No bundleID provided for overlayNowPlayingPage deep link", v20, 2u);
      MEMORY[0x2530542D0](v20, -1, -1);
    }

    sub_24F3E5658(v19, type metadata accessor for GameDashboardDestination);
    goto LABEL_24;
  }

  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255030, &qword_24F93B050);

  v12 = swift_task_alloc();
  v0[59] = v12;
  *v12 = v0;
  v12[1] = sub_24F3E3A48;

  return MEMORY[0x28217F228](v0 + 2, v11, v11);
}

uint64_t sub_24F3E3A48()
{
  v2 = *v1;
  v2[60] = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_24F3E4724, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[61] = v3;
    *v3 = v2;
    v3[1] = sub_24F3E3BD0;
    v4 = v2[51];
    v5 = v2[49];

    return MEMORY[0x28217F228](v4, v5, v5);
  }
}

uint64_t sub_24F3E3BD0()
{
  *(*v1 + 496) = v0;

  if (v0)
  {

    v2 = sub_24F3E492C;
  }

  else
  {
    v2 = sub_24F3E3CEC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3E3CEC()
{
  v2 = *(v0 + 272);
  v1 = *(v0 + 280);
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 216) = v2;
  *(v0 + 232) = 0;
  *(v0 + 240) = 0;
  *(v0 + 224) = v1;
  *(v0 + 248) = 1;
  v5 = swift_task_alloc();
  *(v0 + 504) = v5;
  v6 = sub_24E653FF8();
  *v5 = v0;
  v5[1] = sub_24F3E3DE4;
  v7 = *(v0 + 384);
  v8 = *(v0 + 296);

  return MEMORY[0x28217F4B0](v7, v0 + 216, v8, &type metadata for GameDataIntent, v6, v3, v4);
}

uint64_t sub_24F3E3DE4()
{
  *(*v1 + 512) = v0;

  if (v0)
  {
    v2 = sub_24F3E4B3C;
  }

  else
  {

    v2 = sub_24F3E3F0C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3E3F0C()
{
  v1 = v0[55];
  v2 = v0[56];
  v4 = v0[47];
  v3 = v0[48];
  v5 = v0[45];
  v6 = v0[46];
  v7 = v0[44];
  v8 = v0[33];
  sub_24E60169C(v0[32], v5, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24F3E55A8(v8, v5 + v7[5], type metadata accessor for Player);
  v9 = v7[7];
  sub_24F3E55A8(v3, v5 + v9, type metadata accessor for Game);
  (*(v4 + 56))(v5 + v9, 0, 1, v6);
  sub_24F3E55A8(v1, v5 + v7[8], type metadata accessor for GameDashboardDestination);
  v0[10] = &_s14descr2861AC041O5GamesON;
  v0[11] = sub_24EDA569C();
  *(v0 + 56) = 0;
  LOBYTE(v3) = sub_24F91FE68();
  __swift_destroy_boxed_opaque_existential_1(v0 + 7);
  *(v5 + v7[6]) = v2;
  *(v5 + v7[9]) = v3 & 1;
  v10 = v0[5];
  v11 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v12 = swift_task_alloc();
  v0[65] = v12;
  v13 = sub_24F3E5610(&qword_27F242320, type metadata accessor for DashboardDeepLinkIntent, &unk_24F9B6E7C);
  *v12 = v0;
  v12[1] = sub_24F3E4114;
  v15 = v0[44];
  v14 = v0[45];
  v16 = v0[37];

  return MEMORY[0x28217F4B0](v0 + 17, v14, v16, v15, v13, v10, v11);
}

uint64_t sub_24F3E4114()
{
  *(*v1 + 528) = v0;

  if (v0)
  {
    v2 = sub_24F3E4D7C;
  }

  else
  {
    v2 = sub_24F3E4228;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3E4228()
{
  v1 = *(v0 + 152);
  *(v0 + 176) = *(v0 + 136);
  *(v0 + 192) = v1;
  *(v0 + 208) = *(v0 + 168);
  if (*(v0 + 200))
  {
    v3 = *(v0 + 312);
    v2 = *(v0 + 320);
    v4 = *(v0 + 304);
    sub_24E612C80((v0 + 176), v0 + 96);
    (*(v3 + 104))(v2, *MEMORY[0x277D21E18], v4);
    v5 = swift_task_alloc();
    *(v0 + 536) = v5;
    *v5 = v0;
    v5[1] = sub_24F3E4454;
    v6 = *(v0 + 392);
    v7 = *(v0 + 344);
    v8 = *(v0 + 320);
    v9 = *(v0 + 296);

    return MEMORY[0x28217F468](v7, v0 + 96, v8, v9, v6);
  }

  else
  {
    v10 = *(v0 + 440);
    v12 = *(v0 + 400);
    v11 = *(v0 + 408);
    v14 = *(v0 + 384);
    v13 = *(v0 + 392);
    sub_24F3E5658(*(v0 + 360), type metadata accessor for DashboardDeepLinkIntent);
    sub_24F3E5658(v14, type metadata accessor for Game);
    (*(v12 + 8))(v11, v13);
    sub_24F3E5658(v10, type metadata accessor for GameDashboardDestination);
    sub_24E601704(v0 + 176, qword_27F21B590, &unk_24F93BE30);
    __swift_destroy_boxed_opaque_existential_1((v0 + 16));

    v15 = *(v0 + 8);

    return v15();
  }
}

uint64_t sub_24F3E4454()
{
  v2 = *v1;
  v3 = *(*v1 + 320);
  v4 = *(*v1 + 312);
  v5 = *(*v1 + 304);
  *(*v1 + 544) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_24F3E4FE8;
  }

  else
  {
    (*(v2[42] + 8))(v2[43], v2[41]);
    v6 = sub_24F3E45E4;
  }

  return MEMORY[0x2822009F8](v6, 0, 0);
}

uint64_t sub_24F3E45E4()
{
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24F3E5658(v6, type metadata accessor for DashboardDeepLinkIntent);
  sub_24F3E5658(v5, type metadata accessor for Game);
  (*(v3 + 8))(v2, v4);
  sub_24F3E5658(v1, type metadata accessor for GameDashboardDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24F3E4724()
{
  sub_24F3E5658(v0[55], type metadata accessor for GameDashboardDestination);
  v1 = v0[60];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error encountered performing deep link action: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F3E492C()
{
  sub_24F3E5658(v0[55], type metadata accessor for GameDashboardDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v1 = v0[62];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v2 = sub_24F9220D8();
  __swift_project_value_buffer(v2, qword_27F39E850);
  v3 = v1;
  v4 = sub_24F9220B8();
  v5 = sub_24F92BDB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    v8 = v1;
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v9;
    *v7 = v9;
    _os_log_impl(&dword_24E5DD000, v4, v5, "Error encountered performing deep link action: %@", v6, 0xCu);
    sub_24E601704(v7, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v7, -1, -1);
    MEMORY[0x2530542D0](v6, -1, -1);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_24F3E4B3C()
{
  v1 = v0[55];
  (*(v0[50] + 8))(v0[51], v0[49]);
  sub_24F3E5658(v1, type metadata accessor for GameDashboardDestination);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v2 = v0[64];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v3 = sub_24F9220D8();
  __swift_project_value_buffer(v3, qword_27F39E850);
  v4 = v2;
  v5 = sub_24F9220B8();
  v6 = sub_24F92BDB8();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v2;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_24E5DD000, v5, v6, "Error encountered performing deep link action: %@", v7, 0xCu);
    sub_24E601704(v8, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v8, -1, -1);
    MEMORY[0x2530542D0](v7, -1, -1);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_24F3E4D7C()
{
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  sub_24F3E5658(v0[45], type metadata accessor for DashboardDeepLinkIntent);
  sub_24F3E5658(v5, type metadata accessor for Game);
  (*(v3 + 8))(v2, v4);
  sub_24F3E5658(v1, type metadata accessor for GameDashboardDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = v0[66];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v7 = sub_24F9220D8();
  __swift_project_value_buffer(v7, qword_27F39E850);
  v8 = v6;
  v9 = sub_24F9220B8();
  v10 = sub_24F92BDB8();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v6;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_24E5DD000, v9, v10, "Error encountered performing deep link action: %@", v11, 0xCu);
    sub_24E601704(v12, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v12, -1, -1);
    MEMORY[0x2530542D0](v11, -1, -1);
  }

  else
  {
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_24F3E4FE8()
{
  v1 = v0[55];
  v3 = v0[50];
  v2 = v0[51];
  v5 = v0[48];
  v4 = v0[49];
  v6 = v0[45];
  __swift_destroy_boxed_opaque_existential_1(v0 + 12);
  sub_24F3E5658(v6, type metadata accessor for DashboardDeepLinkIntent);
  sub_24F3E5658(v5, type metadata accessor for Game);
  (*(v3 + 8))(v2, v4);
  sub_24F3E5658(v1, type metadata accessor for GameDashboardDestination);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v7 = v0[68];
  if (qword_27F211400 != -1)
  {
    swift_once();
  }

  v8 = sub_24F9220D8();
  __swift_project_value_buffer(v8, qword_27F39E850);
  v9 = v7;
  v10 = sub_24F9220B8();
  v11 = sub_24F92BDB8();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    *v12 = 138412290;
    v14 = v7;
    v15 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 4) = v15;
    *v13 = v15;
    _os_log_impl(&dword_24E5DD000, v10, v11, "Error encountered performing deep link action: %@", v12, 0xCu);
    sub_24E601704(v13, &qword_27F227B20, &qword_24F944D30);
    MEMORY[0x2530542D0](v13, -1, -1);
    MEMORY[0x2530542D0](v12, -1, -1);
  }

  else
  {
  }

  v16 = v0[1];

  return v16();
}

uint64_t sub_24F3E5260()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

id sub_24F3E5298(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = sub_24F92B098();

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    sub_24F91F278();

    swift_willThrow();
  }

  return v6;
}

uint64_t sub_24F3E5374()
{

  return swift_deallocObject();
}

unint64_t sub_24F3E53B4(uint64_t a1)
{
  sub_24F92B0D8();
  sub_24F92D068();
  sub_24F92B218();
  v2 = sub_24F92D0B8();

  return sub_24E772154(a1, v2);
}

unint64_t sub_24F3E5448(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213070, &unk_24F93A820);
    v3 = sub_24F92CB58();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_24F3E53B4(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

uint64_t sub_24F3E5540(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3E55A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3E5610(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3E5658(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t ChallengesAllLeaderboardsShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ChallengesAllLeaderboardsShelfIntent.initiatorID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t ChallengesAllLeaderboardsShelfIntent.gameBundleID.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_24F3E57A4()
{
  v1 = 0x6F74616974696E69;
  if (*v0 != 1)
  {
    v1 = 0x646E7542656D6167;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444965676170;
  }
}

uint64_t sub_24F3E580C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3E5EB4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3E5834(uint64_t a1)
{
  v2 = sub_24F3E5A70();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3E5870(uint64_t a1)
{
  v2 = sub_24F3E5A70();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesAllLeaderboardsShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242328, &qword_24F9F1398);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3E5A70();
  sub_24F92D128();
  v14 = 0;
  v9 = v11[5];
  sub_24F92CD08();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_24F92CD08();
  v12 = 2;
  sub_24F92CD08();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_24F3E5A70()
{
  result = qword_27F242330;
  if (!qword_27F242330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242330);
  }

  return result;
}

uint64_t ChallengesAllLeaderboardsShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242338, &qword_24F9F13A0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3E5A70();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_24F92CC28();
  v21 = v12;
  v23 = 2;
  v13 = sub_24F92CC28();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F3E5DB0()
{
  result = qword_27F242340;
  if (!qword_27F242340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242340);
  }

  return result;
}

unint64_t sub_24F3E5E08()
{
  result = qword_27F242348;
  if (!qword_27F242348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242348);
  }

  return result;
}

unint64_t sub_24F3E5E60()
{
  result = qword_27F242350;
  if (!qword_27F242350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242350);
  }

  return result;
}

uint64_t sub_24F3E5EB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F74616974696E69 && a2 == 0xEB00000000444972 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646E7542656D6167 && a2 == 0xEC0000004449656CLL)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F3E5FE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GSKShelf(0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_24F3E611C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Player(0);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for GSKShelf(0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t type metadata accessor for GameLibraryShelfIntent(uint64_t a1)
{
  result = qword_27F242358;
  if (!qword_27F242358)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3E628C(uint64_t a1)
{
  type metadata accessor for Player(319);
  if (v1 <= 0x3F)
  {
    sub_24F3E6338();
    if (v2 <= 0x3F)
    {
      type metadata accessor for GSKShelf(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24F3E6338()
{
  if (!qword_27F242368)
  {
    v0 = sub_24F92B6E8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F242368);
    }
  }
}

uint64_t sub_24F3E6388(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242380, &qword_24F9F1678);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3E6CA8();
  sub_24F92D128();
  v14 = 0;
  sub_24F92CD08();
  if (!v2)
  {
    v9 = type metadata accessor for GameLibraryShelfIntent(0);
    v13 = 1;
    type metadata accessor for Player(0);
    sub_24F3E6E8C(&qword_27F213E28, type metadata accessor for Player, &protocol conformance descriptor for Player);
    sub_24F92CD48();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E48, &qword_24F9F1670);
    sub_24F3E6DC0(&qword_27F242388, sub_24F3E6E38, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v11[14] = 3;
    type metadata accessor for GSKShelf(0);
    sub_24F3E6E8C(&qword_27F216618, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
    sub_24F92CD48();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_24F3E6640@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for GSKShelf(0);
  MEMORY[0x28223BE20](v22);
  v21 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v4);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242370, &qword_24F9F1668);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v19 - v8;
  v10 = type metadata accessor for GameLibraryShelfIntent(0);
  MEMORY[0x28223BE20](v10);
  v12 = (v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3E6CA8();
  v25 = v9;
  v13 = v26;
  sub_24F92D108();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v14 = v23;
  v26 = a1;
  v31 = 0;
  *v12 = sub_24F92CC28();
  v12[1] = v15;
  v19[1] = v15;
  v30 = 1;
  sub_24F3E6E8C(&qword_27F213E38, type metadata accessor for Player, &protocol conformance descriptor for Player);
  sub_24F92CC68();
  sub_24E6EDCA0(v6, v12 + v10[5], type metadata accessor for Player);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F234E48, &qword_24F9F1670);
  v29 = 2;
  sub_24F3E6DC0(&qword_27F234E50, sub_24EF6DBB0, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v16 = v26;
  *(v12 + v10[6]) = v27;
  v28 = 3;
  sub_24F3E6E8C(&qword_27F2165F8, type metadata accessor for GSKShelf, &protocol conformance descriptor for GSKShelf);
  v17 = v21;
  sub_24F92CC68();
  (*(v14 + 8))(v25, v24);
  sub_24E6EDCA0(v17, v12 + v10[7], type metadata accessor for GSKShelf);
  sub_24F3E6CFC(v12, v20);
  __swift_destroy_boxed_opaque_existential_1(v16);
  return sub_24F3E6D60(v12, type metadata accessor for GameLibraryShelfIntent);
}

uint64_t sub_24F3E6B3C()
{
  v1 = 0x444965676170;
  if (*v0)
  {
    v1 = 0x726579616C70;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_24F3E6BB8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3E6FEC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3E6BE0(uint64_t a1)
{
  v2 = sub_24F3E6CA8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3E6C1C(uint64_t a1)
{
  v2 = sub_24F3E6CA8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F3E6CA8()
{
  result = qword_27F242378;
  if (!qword_27F242378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242378);
  }

  return result;
}

uint64_t sub_24F3E6CFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameLibraryShelfIntent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3E6D60(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_24F3E6DC0(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F234E48, &qword_24F9F1670);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F3E6E38()
{
  result = qword_27F242390;
  if (!qword_27F242390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242390);
  }

  return result;
}

uint64_t sub_24F3E6E8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24F3E6EE8()
{
  result = qword_27F242398;
  if (!qword_27F242398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242398);
  }

  return result;
}

unint64_t sub_24F3E6F40()
{
  result = qword_27F2423A0;
  if (!qword_27F2423A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2423A0);
  }

  return result;
}

unint64_t sub_24F3E6F98()
{
  result = qword_27F2423A8;
  if (!qword_27F2423A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2423A8);
  }

  return result;
}

uint64_t sub_24F3E6FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726579616C70 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA650F0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA74CA0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void sub_24F3E716C(uint64_t a1)
{
  v2 = type metadata accessor for ActiveCall(0);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v38 - v6;
  v45 = objc_opt_self();
  v8 = [v45 sharedInstance];
  v9 = [v8 currentAudioAndVideoCalls];
  sub_24E69A5C4(0, &qword_27F2376C0, 0x277D6EDE0);
  v10 = sub_24F92B5A8();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v39 = v8;
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_23:

    v14 = MEMORY[0x277D84F90];
LABEL_24:
    v49 = v14;
    sub_24F92A9C8();

    return;
  }

  v11 = sub_24F92C738();
  v39 = v8;
  if (!v11)
  {
    goto LABEL_23;
  }

LABEL_3:
  v38 = a1;
  v49 = MEMORY[0x277D84F90];
  sub_24F458E48(0, v11 & ~(v11 >> 63), 0);
  if ((v11 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    v13 = v10;
    v41 = v10 & 0xC000000000000001;
    v42 = v11;
    v14 = v49;
    v15 = &selRef_lockedAppBundleIdentifiers;
    v43 = v13;
    v44 = v7;
    v40 = v4;
    do
    {
      if (v41)
      {
        v16 = MEMORY[0x253052270](v12);
      }

      else
      {
        v16 = *(v13 + 8 * v12 + 32);
      }

      v17 = v16;
      v18 = [v45 sharedInstance];
      v48 = [v17 provider];
      v19 = [v17 v15[76]];
      v20 = sub_24F92B0D8();
      v22 = v21;

      *v4 = v20;
      *(v4 + 1) = v22;
      v23 = [v18 frontmostCall];
      if (v23)
      {
        v24 = v23;
        v25 = [v23 v15[76]];

        v26 = sub_24F92B0D8();
        v28 = v27;
      }

      else
      {
        v26 = 0;
        v28 = 0;
      }

      v29 = v15;
      v30 = [v17 v15[76]];
      v31 = sub_24F92B0D8();
      v33 = v32;

      if (v28)
      {
        if (v26 == v31 && v28 == v33)
        {
          v34 = 1;
        }

        else
        {
          v34 = sub_24F92CE08();
        }

        v35 = v44;
        v15 = v29;
      }

      else
      {
        v34 = 0;
        v35 = v44;
        v15 = v29;
      }

      v4 = v40;

      v4[16] = v34 & 1;
      v4[17] = [v17 isVideo];
      sub_24F042070(v48, &v4[*(v47 + 28)]);

      sub_24F3E7C28(v4, v35);
      v49 = v14;
      v37 = *(v14 + 16);
      v36 = *(v14 + 24);
      if (v37 >= v36 >> 1)
      {
        sub_24F458E48((v36 > 1), v37 + 1, 1);
        v14 = v49;
      }

      ++v12;
      *(v14 + 16) = v37 + 1;
      sub_24F3E7C28(v35, v14 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v37);
      v13 = v43;
    }

    while (v42 != v12);

    goto LABEL_24;
  }

  __break(1u);
}

uint64_t sub_24F3E7590(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_24E67D244;

  return sub_24F3E7634();
}

uint64_t sub_24F3E7634()
{
  v1 = sub_24F927D88();
  v0[10] = v1;
  v0[11] = *(v1 - 8);
  v0[12] = swift_task_alloc();
  v2 = sub_24F927DC8();
  v0[13] = v2;
  v0[14] = *(v2 - 8);
  v0[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3E774C, 0, 0);
}

uint64_t sub_24F3E774C()
{
  v1 = v0[15];
  v2 = v0[12];
  v11 = v0[14];
  v12 = v0[13];
  v3 = v0[10];
  v10 = v0[11];
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423B0, &qword_24F9F1818);
  v4 = sub_24F92A9E8();
  v0[16] = v4;
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v9 = sub_24F92BEF8();
  v0[6] = sub_24F3E7C08;
  v0[7] = v4;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_24EAF8248;
  v0[5] = &block_descriptor_147;
  v5 = _Block_copy(v0 + 2);

  sub_24F927DA8();
  v0[8] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v1, v2, v5);
  _Block_release(v5);

  (*(v10 + 8))(v2, v3);
  (*(v11 + 8))(v1, v12);

  v6 = sub_24E602068(&qword_27F2423B8, &qword_27F2423B0, &qword_24F9F1818, MEMORY[0x277D224B8]);
  v7 = swift_task_alloc();
  v0[17] = v7;
  *v7 = v0;
  v7[1] = sub_24F3E79F8;

  return MEMORY[0x282180360](v0 + 9, v13, v6);
}

uint64_t sub_24F3E79F8()
{
  v2 = *v1;
  *(*v1 + 144) = v0;

  if (v0)
  {
    v3 = sub_24F3E7B90;
  }

  else
  {
    *(v2 + 152) = *(v2 + 72);
    v3 = sub_24F3E7B14;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_24F3E7B14()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 152);

  return v1(v2);
}

uint64_t sub_24F3E7B90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t block_copy_helper_147(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F3E7C28(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ActiveCall(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

char *sub_24F3E7C8C(unint64_t isUniquelyReferenced_nonNull_native, uint64_t *a2)
{
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10); i; isUniquelyReferenced_nonNull_native = v24)
  {
    v3 = 0;
    v28 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_native;
    v27 = isUniquelyReferenced_nonNull_native + 32;
    v31 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_native = MEMORY[0x253052270](v3, v26);
      }

      else
      {
        if (v3 >= *(v28 + 16))
        {
          goto LABEL_26;
        }

        isUniquelyReferenced_nonNull_native = *(v27 + 8 * v3);
      }

      v4 = isUniquelyReferenced_nonNull_native;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v6 = *a2;

      v7 = [v4 identifier];
      v8 = sub_24F92B0D8();
      v10 = v9;

      if (*(v6 + 16) && (sub_24F92D068(), sub_24F92B218(), v11 = sub_24F92D0B8(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (1)
        {
          v15 = (*(v6 + 48) + 16 * v13);
          v16 = *v15 == v8 && v15[1] == v10;
          if (v16 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        if (v3 == i)
        {
          return v31;
        }
      }

      else
      {
LABEL_18:

        v17 = [v4 identifier];
        v18 = sub_24F92B0D8();
        v20 = v19;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          isUniquelyReferenced_nonNull_native = sub_24E615CF4(0, *(v31 + 16) + 1, 1, v31);
          v31 = isUniquelyReferenced_nonNull_native;
        }

        v22 = *(v31 + 16);
        v21 = *(v31 + 24);
        if (v22 >= v21 >> 1)
        {
          isUniquelyReferenced_nonNull_native = sub_24E615CF4((v21 > 1), v22 + 1, 1, v31);
          v31 = isUniquelyReferenced_nonNull_native;
        }

        *(v31 + 16) = v22 + 1;
        v23 = v31 + 16 * v22;
        *(v23 + 32) = v18;
        *(v23 + 40) = v20;
        if (v3 == i)
        {
          return v31;
        }
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    v24 = isUniquelyReferenced_nonNull_native;
    i = sub_24F92C738();
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_24F3E7F48()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423C0, &unk_24F9F1820);
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  result = sub_24E6104D0(MEMORY[0x277D84F90]);
  *(v0 + 112) = result;
  *(v0 + 120) = 0x4072C00000000000;
  qword_27F39E518 = v0;
  return result;
}

uint64_t sub_24F3E7FAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_24E67D244;

  return sub_24F3E82B0(a3);
}

uint64_t sub_24F3E806C(unint64_t a1, uint64_t *a2)
{
  v24 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; a1 = v18)
  {
    v19 = a1;
    v3 = 0;
    v21 = a1 & 0xFFFFFFFFFFFFFF8;
    v22 = a1 & 0xC000000000000001;
    v20 = a1 + 32;
    while (1)
    {
      if (v22)
      {
        a1 = MEMORY[0x253052270](v3, v19);
      }

      else
      {
        if (v3 >= *(v21 + 16))
        {
          goto LABEL_24;
        }

        a1 = *(v20 + 8 * v3);
      }

      v4 = a1;
      if (__OFADD__(v3++, 1))
      {
        break;
      }

      v6 = *a2;

      v7 = [v4 identifier];
      v8 = sub_24F92B0D8();
      v10 = v9;

      if (*(v6 + 16) && (sub_24F92D068(), sub_24F92B218(), v11 = sub_24F92D0B8(), v12 = -1 << *(v6 + 32), v13 = v11 & ~v12, ((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0))
      {
        v14 = ~v12;
        while (1)
        {
          v15 = (*(v6 + 48) + 16 * v13);
          v16 = *v15 == v8 && v15[1] == v10;
          if (v16 || (sub_24F92CE08() & 1) != 0)
          {
            break;
          }

          v13 = (v13 + 1) & v14;
          if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
          {
            goto LABEL_4;
          }
        }
      }

      else
      {
LABEL_4:

        sub_24F92C948();
        sub_24F92C988();
        sub_24F92C998();
        a1 = sub_24F92C958();
      }

      if (v3 == i)
      {
        return v24;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v18 = a1;
    i = sub_24F92C738();
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_24F3E82B0(uint64_t a1)
{
  v1[46] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  v2 = type metadata accessor for SocialIntegration(0);
  v1[49] = v2;
  v1[50] = *(v2 - 8);
  v1[51] = swift_task_alloc();
  v1[52] = swift_task_alloc();
  v3 = sub_24F91EAA8();
  v1[53] = v3;
  v1[54] = *(v3 - 8);
  v1[55] = swift_task_alloc();
  v4 = sub_24F9289E8();
  v1[56] = v4;
  v1[57] = *(v4 - 8);
  v1[58] = swift_task_alloc();
  v1[59] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24F3E84B0, 0, 0);
}

uint64_t sub_24F3E84B0()
{
  if (qword_27F211230 != -1)
  {
    swift_once();
  }

  v1 = qword_27F39E518;
  v0[60] = qword_27F39E518;
  v0[32] = 0xD000000000000016;
  v0[33] = 0x800000024FA74CC0;
  sub_24F92C7F8();

  return MEMORY[0x2822009F8](sub_24F3E85B0, v1, 0);
}

uint64_t sub_24F3E85B0()
{
  v1 = sub_24E80B820(v0 + 16);
  sub_24E6585F8(v0 + 16);
  if (v1)
  {

    v2 = *(v0 + 8);

    return v2(v1);
  }

  else
  {
    v4 = sub_24E69A5C4(0, &qword_27F22D170, 0x277CBDAB8);
    v5 = swift_task_alloc();
    *(v0 + 488) = v5;
    *v5 = v0;
    v5[1] = sub_24F3E8770;

    return MEMORY[0x28217F228](v0 + 320, v4, v4);
  }
}

uint64_t sub_24F3E8770()
{
  *(*v1 + 496) = v0;

  if (v0)
  {
    v2 = sub_24F3EA228;
  }

  else
  {
    v2 = sub_24F3E88B0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24F3E88B0()
{
  v221 = v0;
  v1 = v0;
  v220 = *MEMORY[0x277D85DE8];
  v2 = v0[40];
  v0[63] = v2;
  v0[41] = 0;
  v187 = v2;
  v3 = [v2 containersMatchingPredicate:0 error:v0 + 41];
  v4 = v0[41];
  if (!v3)
  {
    v8 = v4;
    v9 = sub_24F91F278();

    swift_willThrow();
    if (qword_27F211400 == -1)
    {
      goto LABEL_4;
    }

    goto LABEL_146;
  }

  v5 = v3;
  sub_24E69A5C4(0, &qword_27F2423C8, 0x277CBDAD8);
  v215 = sub_24F92B5A8();
  v6 = v4;

  for (i = v0[62]; ; i = 0)
  {
    v18 = [objc_opt_self() sharedInstance];
    v19 = [v18 providerManager];
    v1[64] = v19;

    v199 = v19;
    v20 = [v19 providers];
    sub_24E69A5C4(0, &qword_27F225FA8, 0x277D6EE20);
    v21 = sub_24F92B5A8();

    v22 = MEMORY[0x277D84FA0];
    v1[42] = MEMORY[0x277D84FA0];
    v1[43] = v22;
    v207 = v21;
    if (v21 >> 62)
    {
      goto LABEL_144;
    }

    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_9:
    v24 = MEMORY[0x277D84F90];
    v217 = v1;
    if (!v23)
    {
      v200 = MEMORY[0x277D84F90];
LABEL_102:
      v126 = v1[54];
      v127 = v1[55];
      v128 = v1[53];
      v1[44] = v24;
      v129 = 0x800000024FA74CE0;
      v1[34] = 0xD00000000000001BLL;
      v1[35] = 0x800000024FA74CE0;
      sub_24F91EA28();
      sub_24E600AEC();
      v130 = sub_24F92C578();
      v131 = v1;
      v133 = v132;
      (*(v126 + 8))(v127, v128);
      if (v133)
      {
        v134 = v130;
      }

      else
      {
        v134 = 0xD00000000000001BLL;
      }

      v135 = MEMORY[0x277D84F90];
      if (v133)
      {
        v129 = v133;
      }

      *&v218 = 0x3A6E6F6369707061;
      *(&v218 + 1) = 0xEA00000000002F2FLL;
      MEMORY[0x253050C20](v134, v129);

      sub_24F3E5448(v135);
      sub_24F928948();
      v136 = objc_allocWithZone(MEMORY[0x277CC1E70]);
      v137 = sub_24F3E5298(0xD00000000000001BLL, 0x800000024FA74CE0, 1);
      if (i)
      {
        (*(v131[57] + 8))(v131[58], v131[56]);

        v138 = v131;
        if (qword_27F211400 != -1)
        {
          swift_once();
        }

        v139 = sub_24F9220D8();
        __swift_project_value_buffer(v139, qword_27F39E850);
        v140 = i;
        v141 = sub_24F9220B8();
        v142 = sub_24F92BDB8();

        if (os_log_type_enabled(v141, v142))
        {
          v143 = swift_slowAlloc();
          v144 = swift_slowAlloc();
          *v143 = 138412290;
          v145 = i;
          v146 = _swift_stdlib_bridgeErrorToNSError();
          *(v143 + 4) = v146;
          *v144 = v146;
          _os_log_impl(&dword_24E5DD000, v141, v142, "Unable to add contacts: %@", v143, 0xCu);
          sub_24E601704(v144, &qword_27F227B20, &qword_24F944D30);
          MEMORY[0x2530542D0](v144, -1, -1);
          MEMORY[0x2530542D0](v143, -1, -1);
        }

        else
        {
        }

        goto LABEL_136;
      }

      v147 = v137;
      v214 = sub_24F3E7C8C(v207, v131 + 42);

      v148 = sub_24F3E806C(v215, v131 + 43);

      v138 = v131;
      if (v148 >> 62)
      {
        v149 = sub_24F92C738();
      }

      else
      {
        v149 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v150 = v131[57];
      v151 = v131[58];
      v152 = v131[56];
      if (!v149)
      {
        (*(v150 + 8))(v131[58], v131[56]);

LABEL_136:
        v185 = v138[60];
        sub_24EA0C2CC(v200);
        v138[65] = v138[44];
        v138[36] = 0xD000000000000016;
        v138[37] = 0x800000024FA74CC0;
        sub_24F92C7F8();

        return MEMORY[0x2822009F8](sub_24F3EA07C, v185, 0);
      }

      v153 = v131[47];
      v216 = v147;
      v154 = [v147 localizedName];
      v155 = sub_24F92B0D8();
      v212 = v156;
      v213 = v155;

      (*(v150 + 16))(v153, v151, v152);
      (*(v150 + 56))(v153, 0, 1, v152);
      if (v148 >> 62)
      {
        v157 = sub_24F92C738();
        v158 = v217;
        if (v157)
        {
          goto LABEL_117;
        }
      }

      else
      {
        v157 = *((v148 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v158 = v217;
        if (v157)
        {
LABEL_117:
          *&v218 = v135;
          sub_24F4578E0(0, v157 & ~(v157 >> 63), 0);
          if (v157 < 0)
          {
            __break(1u);
          }

          v159 = 0;
          v160 = v218;
          do
          {
            if ((v148 & 0xC000000000000001) != 0)
            {
              v161 = MEMORY[0x253052270](v159, v148);
            }

            else
            {
              v161 = *(v148 + 8 * v159 + 32);
            }

            v162 = v161;
            v163 = [v161 identifier];
            v164 = sub_24F92B0D8();
            v166 = v165;

            *&v218 = v160;
            v168 = *(v160 + 16);
            v167 = *(v160 + 24);
            if (v168 >= v167 >> 1)
            {
              sub_24F4578E0((v167 > 1), v168 + 1, 1);
              v160 = v218;
            }

            ++v159;
            *(v160 + 16) = v168 + 1;
            v169 = v160 + 16 * v168;
            *(v169 + 32) = v164;
            *(v169 + 40) = v166;
            v158 = v217;
          }

          while (v157 != v159);

          goto LABEL_133;
        }
      }

      v160 = MEMORY[0x277D84F90];
LABEL_133:
      v172 = v158[51];
      v173 = v158[49];
      v174 = v158[47];
      *v172 = v213;
      v172[1] = v212;
      v172[2] = 0;
      v172[3] = 0;
      sub_24E94B678(v174, v172 + v173[6]);
      v175 = (v172 + v173[7]);
      *v175 = 0;
      v175[1] = 0;
      *(v172 + v173[8]) = 0;
      v176 = v172 + v173[9];
      *v176 = v214;
      *(v176 + 8) = 0u;
      *(v176 + 24) = 0u;
      *(v176 + 5) = 0xD00000000000001BLL;
      *(v176 + 6) = 0x800000024FA74CE0;
      *(v176 + 7) = v160;
      v177 = sub_24E61A338(0, 1, 1, MEMORY[0x277D84F90]);
      v179 = v177[2];
      v178 = v177[3];
      if (v179 >= v178 >> 1)
      {
        v177 = sub_24E61A338((v178 > 1), v179 + 1, 1, v177);
      }

      v180 = v158[58];
      v181 = v217[57];
      v182 = v217[56];
      v183 = v217[51];
      v184 = v217[50];

      (*(v181 + 8))(v180, v182);
      v138 = v217;
      v177[2] = v179 + 1;
      sub_24F3EA30C(v183, v177 + ((*(v184 + 80) + 32) & ~*(v184 + 80)) + *(v184 + 72) * v179);
      v217[44] = v177;
      goto LABEL_136;
    }

    v25 = 0;
    v26 = v1[57];
    v27 = v215 & 0xFFFFFFFFFFFFFF8;
    v191 = v1[52];
    if (v215 < 0)
    {
      v27 = v215;
    }

    v186 = v27;
    v190 = v1[50];
    v189 = v1[49];
    v193 = (v26 + 16);
    v194 = (v1[54] + 8);
    v192 = (v26 + 56);
    v188 = (v26 + 8);
    v200 = MEMORY[0x277D84F90];
    v206 = v23;
    while (1)
    {
      if ((v207 & 0xC000000000000001) != 0)
      {
        v28 = MEMORY[0x253052270](v25, v207);
      }

      else
      {
        if (v25 >= *((v207 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_143;
        }

        v28 = *(v207 + 32 + 8 * v25);
      }

      v209 = v28;
      v29 = __OFADD__(v25, 1);
      v30 = v25 + 1;
      if (v29)
      {
        goto LABEL_141;
      }

      v208 = v30;
      v31 = [v28 bundleIdentifier];
      if (v31)
      {
        break;
      }

LABEL_14:
      v25 = v208;
      if (v208 == v23)
      {
        goto LABEL_102;
      }
    }

    v32 = v31;
    v210 = sub_24F92B0D8();
    v211 = v33;

    *&v218 = v24;
    if (v215 >> 62)
    {
      v34 = sub_24F92C738();
      if (!v34)
      {
        goto LABEL_41;
      }

LABEL_23:
      v35 = 0;
      while (1)
      {
        if ((v215 & 0xC000000000000001) != 0)
        {
          v36 = MEMORY[0x253052270](v35, v215);
        }

        else
        {
          if (v35 >= *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_140;
          }

          v36 = *(v215 + 8 * v35 + 32);
        }

        v37 = v36;
        v38 = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          v23 = sub_24F92C738();
          goto LABEL_9;
        }

        v39 = [v36 providerIdentifier];
        if (v39)
        {
          v40 = v39;
          v41 = sub_24F92B0D8();
          v43 = v42;

          if (v41 == v210 && v43 == v211)
          {

LABEL_38:
            sub_24F92C948();
            sub_24F92C988();
            sub_24F92C998();
            sub_24F92C958();
            goto LABEL_25;
          }

          v45 = sub_24F92CE08();

          if (v45)
          {
            goto LABEL_38;
          }
        }

LABEL_25:
        ++v35;
        if (v38 == v34)
        {
          v24 = v218;
          goto LABEL_41;
        }
      }
    }

    v34 = *((v215 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
      goto LABEL_23;
    }

LABEL_41:
    v46 = v24 < 0 || (v24 & 0x4000000000000000) != 0;
    if (v46)
    {
      v47 = sub_24F92C738();
      if (!v47)
      {
LABEL_100:

        v24 = MEMORY[0x277D84F90];
        v23 = v206;
        goto LABEL_14;
      }
    }

    else
    {
      v47 = *(v24 + 16);
      if (!v47)
      {
        goto LABEL_100;
      }
    }

    v48 = [v209 identifier];
    v49 = sub_24F92B0D8();
    v51 = v50;

    sub_24ED7C5F0(&v218, v49, v51);

    if (v47 < 1)
    {
      goto LABEL_142;
    }

    v202 = v46;
    v52 = 0;
    v9 = (v24 & 0xC000000000000001);
    do
    {
      if (v9)
      {
        v53 = MEMORY[0x253052270](v52, v24);
      }

      else
      {
        v53 = *(v24 + 8 * v52 + 32);
      }

      v54 = v53;
      ++v52;
      v55 = [v53 identifier];
      v56 = sub_24F92B0D8();
      v58 = v57;

      sub_24ED7C5F0(&v218, v56, v58);
    }

    while (v47 != v52);
    v59 = [v209 localizedName];
    v60 = sub_24F92B0D8();
    v62 = v61;

    v63 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v64 = sub_24F3E5298(v210, v211, 1);
    if (i)
    {
      break;
    }

    v201 = v60;
    v203 = v62;
    v205 = v64;
    v65 = [v64 infoDictionary];
    v66 = sub_24F92B098();
    sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v68 = [v65 objectForKey:v66 ofClass:ObjCClassFromMetadata];

    v204 = v65;
    if (v68)
    {
      sub_24F92C648();
      swift_unknownObjectRelease();
      sub_24E612B0C(v217 + 14, v217 + 10);
      sub_24E612B0C(v217 + 10, v217 + 8);
      v23 = v206;
      v1 = v217;
    }

    else
    {
      *(v217 + 10) = 0u;
      *(v217 + 11) = 0u;
      v69 = sub_24F92B098();
      v70 = [v65 objectForKey:v69 ofClass:ObjCClassFromMetadata];

      v23 = v206;
      if (v70)
      {
        sub_24F92C648();
        swift_unknownObjectRelease();
      }

      else
      {
        v218 = 0u;
        v219 = 0u;
      }

      v71 = v219;
      v1 = v217;
      *(v217 + 8) = v218;
      *(v217 + 9) = v71;
      if (v217[23])
      {
        sub_24E601704((v217 + 20), &qword_27F2129B0, &unk_24F945320);
      }
    }

    if (!v1[19])
    {

      sub_24E601704((v1 + 16), &qword_27F2129B0, &unk_24F945320);
      if (qword_27F211400 != -1)
      {
        swift_once();
      }

      v91 = sub_24F9220D8();
      __swift_project_value_buffer(v91, qword_27F39E850);

      v92 = sub_24F9220B8();
      v93 = sub_24F92BDB8();

      v94 = os_log_type_enabled(v92, v93);
      v24 = MEMORY[0x277D84F90];
      if (v94)
      {
        v95 = swift_slowAlloc();
        v96 = swift_slowAlloc();
        *&v218 = v96;
        *v95 = 136315138;
        v97 = v1;
        v98 = sub_24E7620D4(v210, v211, &v218);

        *(v95 + 4) = v98;
        v1 = v97;
        _os_log_impl(&dword_24E5DD000, v92, v93, "%s doesn't have the GameOverlaySupportsSocial key", v95, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v96);
        MEMORY[0x2530542D0](v96, -1, -1);
        MEMORY[0x2530542D0](v95, -1, -1);
      }

      else
      {
      }

      goto LABEL_96;
    }

    sub_24E612B0C(v1 + 8, v1 + 6);
    sub_24E643A9C((v1 + 12), (v1 + 24));
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_74;
    }

    v72 = v1[45];
    if (![v72 BOOLValue])
    {

LABEL_74:
      v24 = MEMORY[0x277D84F90];
      if (qword_27F211400 != -1)
      {
        swift_once();
      }

      v99 = sub_24F9220D8();
      __swift_project_value_buffer(v99, qword_27F39E850);

      v100 = sub_24F9220B8();
      v101 = sub_24F92BDB8();

      if (os_log_type_enabled(v100, v101))
      {
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        *&v218 = v103;
        *v102 = 136315138;
        v104 = v1;
        v105 = sub_24E7620D4(v210, v211, &v218);

        *(v102 + 4) = v105;
        v1 = v104;
        _os_log_impl(&dword_24E5DD000, v100, v101, "%s doesn't support the gaming overlay", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x2530542D0](v103, -1, -1);
        MEMORY[0x2530542D0](v102, -1, -1);

        __swift_destroy_boxed_opaque_existential_1(v104 + 12);
      }

      else
      {

        __swift_destroy_boxed_opaque_existential_1(v1 + 12);
      }

LABEL_96:
      i = 0;
      goto LABEL_14;
    }

    v198 = v72;
    v73 = v1[55];
    v74 = v1;
    v75 = v1[53];
    v74[38] = v210;
    v74[39] = v211;
    sub_24F91EA28();
    sub_24E600AEC();
    v76 = sub_24F92C578();
    v78 = v77;
    (*v194)(v73, v75);
    if (!v78)
    {

      v76 = v210;
      v78 = v211;
    }

    v79 = v217[59];
    v80 = v217[56];
    v81 = v217[48];
    *&v218 = 0x3A6E6F6369707061;
    *(&v218 + 1) = 0xEA00000000002F2FLL;
    MEMORY[0x253050C20](v76, v78);

    sub_24F3E5448(MEMORY[0x277D84F90]);
    sub_24F928948();
    v82 = [v199 faceTimeProvider];
    v83 = [v82 identifier];

    v196 = sub_24F92B0D8();
    v1 = v84;

    (*v193)(v81, v79, v80);
    (*v192)(v81, 0, 1, v80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2357E0, &qword_24F93B8F0);
    v85 = swift_allocObject();
    *(v85 + 16) = xmmword_24F93DE60;

    v86 = [v209 identifier];
    v87 = sub_24F92B0D8();
    v89 = v88;

    *(v85 + 32) = v87;
    *(v85 + 40) = v89;
    v195 = v85;
    if (v202)
    {
      v90 = sub_24F92C738();
    }

    else
    {
      v90 = *(v24 + 16);
    }

    v23 = v206;
    v197 = v1;
    if (!v90)
    {

      v24 = MEMORY[0x277D84F90];
      v107 = MEMORY[0x277D84F90];
LABEL_91:
      v117 = v217[52];
      v118 = v217[48];
      *v117 = v201;
      v191[2] = 0;
      v191[3] = 0;
      v191[1] = v203;
      sub_24E94B678(v118, v117 + v189[6]);
      v119 = (v117 + v189[7]);
      *v119 = v210;
      v119[1] = v211;
      *(v117 + v189[8]) = 1;
      v120 = (v117 + v189[9]);
      *v120 = v195;
      v120[1] = v196;
      v120[2] = v197;
      v120[3] = v196;
      v120[4] = v197;
      v120[5] = v210;
      v120[6] = v211;
      v120[7] = v107;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v200 = sub_24E61A338(0, v200[2] + 1, 1, v200);
      }

      v122 = v200[2];
      v121 = v200[3];
      v1 = v217;
      if (v122 >= v121 >> 1)
      {
        v200 = sub_24E61A338((v121 > 1), v122 + 1, 1, v200);
      }

      v123 = v217[59];
      v124 = v217[56];
      v125 = v217[52];

      (*v188)(v123, v124);
      __swift_destroy_boxed_opaque_existential_1(v217 + 12);
      v200[2] = v122 + 1;
      sub_24F3EA30C(v125, v200 + ((*(v190 + 80) + 32) & ~*(v190 + 80)) + *(v190 + 72) * v122);
      goto LABEL_96;
    }

    *&v218 = MEMORY[0x277D84F90];
    sub_24F4578E0(0, v90 & ~(v90 >> 63), 0);
    if ((v90 & 0x8000000000000000) == 0)
    {
      v106 = 0;
      v107 = v218;
      do
      {
        if (v9)
        {
          v108 = MEMORY[0x253052270](v106, v24);
        }

        else
        {
          v108 = *(v24 + 8 * v106 + 32);
        }

        v109 = v108;
        v110 = [v108 identifier];
        v111 = sub_24F92B0D8();
        v113 = v112;

        *&v218 = v107;
        v115 = *(v107 + 16);
        v114 = *(v107 + 24);
        if (v115 >= v114 >> 1)
        {
          sub_24F4578E0((v114 > 1), v115 + 1, 1);
          v107 = v218;
        }

        ++v106;
        *(v107 + 16) = v115 + 1;
        v116 = v107 + 16 * v115;
        *(v116 + 32) = v111;
        *(v116 + 40) = v113;
      }

      while (v90 != v106);

      v24 = MEMORY[0x277D84F90];
      v23 = v206;
      goto LABEL_91;
    }

    __break(1u);
LABEL_146:
    swift_once();
LABEL_4:
    v10 = sub_24F9220D8();
    __swift_project_value_buffer(v10, qword_27F39E850);
    v11 = v9;
    v12 = sub_24F9220B8();
    v13 = sub_24F92BDB8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      v16 = v9;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_24E5DD000, v12, v13, "Unable to query contact containers: %@", v14, 0xCu);
      sub_24E601704(v15, &qword_27F227B20, &qword_24F944D30);
      MEMORY[0x2530542D0](v15, -1, -1);
      MEMORY[0x2530542D0](v14, -1, -1);
    }

    v215 = MEMORY[0x277D84F90];
  }

  v170 = v217[1];

  return v170();
}

uint64_t sub_24F3EA07C()
{
  sub_24E80AE80(*(v0 + 520), v0 + 56);
  sub_24E6585F8(v0 + 56);

  return MEMORY[0x2822009F8](sub_24F3EA120, 0, 0);
}

uint64_t sub_24F3EA120()
{
  v1 = *(v0 + 520);
  v2 = *(v0 + 504);

  v3 = *(v0 + 8);

  return v3(v1);
}

uint64_t sub_24F3EA228()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24F3EA30C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SocialIntegration(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3EA3E4@<X0>(void (*a1)(char *, uint64_t, uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v173 = a4;
  v174 = a5;
  v198 = a2;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221418, &unk_24F9F1930);
  MEMORY[0x28223BE20](v148);
  v151 = (&v143 - v9);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A10, &unk_24F94BD90);
  MEMORY[0x28223BE20](v150);
  v145 = (&v143 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v11 - 8);
  v143 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v146 = &v143 - v14;
  v161 = sub_24F9289E8();
  v147 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v144 = &v143 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F221420, &qword_24F966258);
  MEMORY[0x28223BE20](v166);
  v149 = &v143 - v16;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423D8, &unk_24F9F1940);
  MEMORY[0x28223BE20](v164);
  v165 = &v143 - v17;
  v197 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214A20, &unk_24F94D670);
  MEMORY[0x28223BE20](v197);
  v172 = &v143 - v18;
  v181 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423E0, &qword_24F9F1950);
  MEMORY[0x28223BE20](v181);
  v180 = &v143 - v19;
  v176 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423E8, &qword_24F9F1958);
  MEMORY[0x28223BE20](v176);
  v177 = &v143 - v20;
  v190 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423F0, &unk_24F9F1960);
  MEMORY[0x28223BE20](v190);
  v178 = &v143 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v22 - 8);
  v152 = &v143 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2423F8, &qword_24F9F1970);
  v154 = *(v24 - 8);
  v155 = v24;
  MEMORY[0x28223BE20](v24);
  v153 = &v143 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242400, &qword_24F9F1978);
  v159 = *(v26 - 8);
  v160 = v26;
  MEMORY[0x28223BE20](v26);
  v158 = &v143 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242408, &qword_24F9F1980);
  v162 = *(v28 - 8);
  v163 = v28;
  MEMORY[0x28223BE20](v28);
  v157 = &v143 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v156 = &v143 - v31;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242410, &qword_24F9F1988);
  MEMORY[0x28223BE20](v175);
  v179 = &v143 - v32;
  v33 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v33 - 8);
  v168 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222118, &qword_24F9F1990);
  MEMORY[0x28223BE20](v167);
  v169 = &v143 - v35;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242418, &qword_24F9F1998);
  MEMORY[0x28223BE20](v186);
  v170 = &v143 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v171 = &v143 - v38;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242420, &qword_24F9F19A0);
  MEMORY[0x28223BE20](v192);
  v195 = &v143 - v39;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242428, &qword_24F9F19A8);
  MEMORY[0x28223BE20](v191);
  v188 = &v143 - v40;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242430, &qword_24F9F19B0);
  MEMORY[0x28223BE20](v183);
  v184 = &v143 - v41;
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242438, &qword_24F9F19B8);
  MEMORY[0x28223BE20](v187);
  v185 = &v143 - v42;
  v194 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242440, &qword_24F9F19C0);
  MEMORY[0x28223BE20](v194);
  v189 = &v143 - v43;
  v44 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v44 - 8);
  v46 = (&v143 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v47);
  v49 = &v143 - v48;
  v182 = _s12GameStoreKit10VisualViewVMa_0(0);
  MEMORY[0x28223BE20](v182);
  v51 = &v143 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v52);
  v54 = &v143 - v53;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242448, &qword_24F9F19C8);
  v56 = *(v55 - 8);
  v199 = v55;
  v200 = v56;
  MEMORY[0x28223BE20](v55);
  v193 = &v143 - v57;
  switch(a1)
  {
    case 1u:
      goto LABEL_7;
    case 4u:
      if (a3 > 2u)
      {
        goto LABEL_7;
      }

      break;
    case 3u:
      v196 = a6;
      if (!a3)
      {

        goto LABEL_31;
      }

      v133 = sub_24F92CE08();

      a6 = v196;
      if ((v133 & 1) == 0)
      {
        break;
      }

LABEL_7:
      v196 = a6;
      v58 = qword_24F9F1C70[a3];
      if (a1 <= 2u)
      {
        if (a1 != 1)
        {
          if (a1 == 2)
          {
            v59 = type metadata accessor for FriendSuggestionCard(0);
            v60 = v198;
            sub_24F3EE2FC(v198 + *(v59 + 36), v49, type metadata accessor for PlayerAvatar);
            LOBYTE(v59) = *(v60 + *(v59 + 44));
            sub_24F3EE294(v49, v51, type metadata accessor for PlayerAvatar);
            v61 = v182;
            *&v51[*(v182 + 20)] = v58;
            v51[*(v61 + 24)] = v59 & 1;
            v62 = &v51[*(v61 + 28)];
            type metadata accessor for CardSafeArea(0);
            sub_24F3EE24C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
            *v62 = sub_24F923598();
            v62[8] = v63 & 1;
            sub_24F3EE294(v51, v54, _s12GameStoreKit10VisualViewVMa_0);
            sub_24F3EE2FC(v54, v184, _s12GameStoreKit10VisualViewVMa_0);
            swift_storeEnumTagMultiPayload();
            sub_24F3EE24C(&qword_27F242460, _s12GameStoreKit10VisualViewVMa_0, &unk_24F9F1A30);
            sub_24F3EDDCC();
            v64 = v185;
            sub_24F924E28();
            sub_24E60169C(v64, v188, &qword_27F242438, &qword_24F9F19B8);
            swift_storeEnumTagMultiPayload();
            sub_24F3EDD10();
            sub_24F3EDF14();
            v65 = v189;
            sub_24F924E28();
            sub_24E601704(v64, &qword_27F242438, &qword_24F9F19B8);
            sub_24E60169C(v65, v195, &qword_27F242440, &qword_24F9F19C0);
            swift_storeEnumTagMultiPayload();
            sub_24F3EDC84();
            sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
            v66 = v193;
            sub_24F924E28();
            sub_24E601704(v65, &qword_27F242440, &qword_24F9F19C0);
            sub_24F3EE364(v54);
LABEL_32:
            v69 = v196;
LABEL_39:
            v142 = v199;
            sub_24E6009C8(v66, v69, &qword_27F242448, &qword_24F9F19C8);
            return (*(v200 + 56))(v69, 0, 1, v142);
          }

LABEL_19:
          v74 = v172;
          sub_24E9239D8(a1, v198, a3, v173, v174, v172);
          sub_24E60169C(v74, v195, &qword_27F214A20, &unk_24F94D670);
          swift_storeEnumTagMultiPayload();
          sub_24F3EDC84();
          sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          v66 = v193;
          sub_24F924E28();
          sub_24E601704(v74, &qword_27F214A20, &unk_24F94D670);
          goto LABEL_32;
        }

        v75 = type metadata accessor for FriendSuggestionCard(0);
        sub_24E60169C(v198 + *(v75 + 40), &v201, &qword_27F213EA8, &unk_24F93D030);
        if (*(&v202 + 1))
        {
          sub_24E612C80(&v201, v208);
          v76 = sub_24F9232F8();
          (*(*(v76 - 8) + 56))(v152, 1, 1, v76);
          sub_24E615E00(v208, &v201);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2424A0, &unk_24F9F19D0);
          sub_24F3EE194();
          v77 = v153;
          sub_24F921788();
          sub_24E602068(&qword_27F242490, &qword_27F2423F8, &qword_24F9F1970, MEMORY[0x277D7EB00]);
          sub_24E7AA708();
          v78 = v158;
          v79 = v155;
          sub_24F926178();
          (*(v154 + 8))(v77, v79);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217E08, &qword_24F9476F0);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_24F93A400;
          v81 = sub_24F925818();
          *(inited + 32) = v81;
          v82 = sub_24F925858();
          *(inited + 33) = v82;
          v83 = sub_24F925848();
          sub_24F925848();
          v84 = sub_24F925848();
          v85 = v195;
          v69 = v196;
          v86 = v179;
          if (v84 != v81)
          {
            v83 = sub_24F925848();
          }

          sub_24F925848();
          if (sub_24F925848() != v82)
          {
            v83 = sub_24F925848();
          }

          sub_24F923318();
          v88 = v87;
          v90 = v89;
          v92 = v91;
          v94 = v93;
          __swift_destroy_boxed_opaque_existential_1(v208);
          v95 = v157;
          (*(v159 + 32))(v157, v78, v160);
          v96 = v163;
          v97 = &v95[*(v163 + 36)];
          *v97 = v83;
          *(v97 + 1) = v88;
          *(v97 + 2) = v90;
          *(v97 + 3) = v92;
          *(v97 + 4) = v94;
          v97[40] = 0;
          v98 = v95;
          v99 = v156;
          sub_24E6009C8(v98, v156, &qword_27F242408, &qword_24F9F1980);
          sub_24E6009C8(v99, v86, &qword_27F242408, &qword_24F9F1980);
          (*(v162 + 56))(v86, 0, 1, v96);
        }

        else
        {
          sub_24E601704(&v201, qword_27F21B590, &unk_24F93BE30);
          v86 = v179;
          (*(v162 + 56))(v179, 1, 1, v163);
          v69 = v196;
          v85 = v195;
        }

        sub_24E60169C(v86, v177, &qword_27F242410, &qword_24F9F1988);
        swift_storeEnumTagMultiPayload();
        sub_24F3EE788(&qword_27F242480, &qword_27F242410, &qword_24F9F1988, sub_24F3EDFCC);
        sub_24F3EE0DC();
        v111 = v178;
        sub_24F924E28();
        sub_24E60169C(v111, v188, &qword_27F2423F0, &unk_24F9F1960);
        swift_storeEnumTagMultiPayload();
        sub_24F3EDD10();
        sub_24F3EDF14();
        v112 = v189;
        sub_24F924E28();
        sub_24E601704(v111, &qword_27F2423F0, &unk_24F9F1960);
        sub_24E60169C(v112, v85, &qword_27F242440, &qword_24F9F19C0);
        swift_storeEnumTagMultiPayload();
        sub_24F3EDC84();
        sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v66 = v193;
        sub_24F924E28();
        sub_24E601704(v112, &qword_27F242440, &qword_24F9F19C0);
        v113 = v179;
        v114 = &qword_27F242410;
        v115 = &qword_24F9F1988;
LABEL_38:
        sub_24E601704(v113, v114, v115);
        goto LABEL_39;
      }

      if (a1 != 3)
      {
        if (a1 != 12)
        {
          goto LABEL_19;
        }

        if (a3 > 1u)
        {
          v100 = a3;
          v101 = v198 + *(type metadata accessor for FriendSuggestionCard(0) + 32);
          v102 = type metadata accessor for CommonCardAttributes(0);
          v103 = v146;
          sub_24E60169C(v101 + *(v102 + 40), v146, &qword_27F213FB0, &qword_24F93E6B0);
          v104 = v147;
          v105 = v161;
          v106 = (*(v147 + 48))(v103, 1, v161);
          v68 = v180;
          if (v106 == 1)
          {
            sub_24E601704(v103, &qword_27F213FB0, &qword_24F93E6B0);
            v107 = sub_24F926C98();
            v108 = sub_24F925808();
            v109 = v151;
            *v151 = v107;
            *(v109 + 8) = v108;
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E63D150();
            sub_24E63D098();
            v110 = v149;
            sub_24F924E28();
          }

          else
          {
            v134 = v144;
            (*(v104 + 32))(v144, v103, v105);
            v135 = v104;
            v136 = sub_24F926C98();
            v137 = v143;
            (*(v135 + 16))(v143, v134, v105);
            (*(v135 + 56))(v137, 0, 1, v105);
            v138 = v145;
            sub_24F6C4E24(v137, v100 != 5, v136, v145);

            sub_24E601704(v137, &qword_27F213FB0, &qword_24F93E6B0);
            sub_24E60169C(v138, v151, &qword_27F214A10, &unk_24F94BD90);
            swift_storeEnumTagMultiPayload();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F214CB8, &unk_24F93E7C0);
            sub_24E63D150();
            sub_24E63D098();
            v110 = v149;
            sub_24F924E28();
            sub_24E601704(v138, &qword_27F214A10, &unk_24F94BD90);
            (*(v135 + 8))(v134, v161);
          }

          v139 = v195;
          v69 = v196;
          sub_24E60169C(v110, v165, &qword_27F221420, &qword_24F966258);
          swift_storeEnumTagMultiPayload();
          sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24E8F61F8();
          sub_24F924E28();
          sub_24E601704(v110, &qword_27F221420, &qword_24F966258);
          v70 = v139;
        }

        else
        {
          v67 = v172;
          sub_24E9239D8(0xC, v198, a3, v173, v174, v172);
          sub_24E60169C(v67, v165, &qword_27F214A20, &unk_24F94D670);
          swift_storeEnumTagMultiPayload();
          sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
          sub_24E8F61F8();
          v68 = v180;
          sub_24F924E28();
          sub_24E601704(v67, &qword_27F214A20, &unk_24F94D670);
          v70 = v195;
          v69 = v196;
        }

        sub_24E60169C(v68, v177, &qword_27F2423E0, &qword_24F9F1950);
        swift_storeEnumTagMultiPayload();
        sub_24F3EE788(&qword_27F242480, &qword_27F242410, &qword_24F9F1988, sub_24F3EDFCC);
        sub_24F3EE0DC();
        v140 = v178;
        sub_24F924E28();
        sub_24E60169C(v140, v188, &qword_27F2423F0, &unk_24F9F1960);
        swift_storeEnumTagMultiPayload();
        sub_24F3EDD10();
        sub_24F3EDF14();
        v141 = v189;
        sub_24F924E28();
        sub_24E601704(v140, &qword_27F2423F0, &unk_24F9F1960);
        sub_24E60169C(v141, v70, &qword_27F242440, &qword_24F9F19C0);
        swift_storeEnumTagMultiPayload();
        sub_24F3EDC84();
        sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
        v66 = v193;
        sub_24F924E28();
        sub_24E601704(v141, &qword_27F242440, &qword_24F9F19C0);
        v113 = v180;
        v114 = &qword_27F2423E0;
        v115 = &qword_24F9F1950;
        goto LABEL_38;
      }

LABEL_31:
      v116 = type metadata accessor for FriendSuggestionCard(0);
      sub_24F3EE2FC(v198 + *(v116 + 36), v46, type metadata accessor for PlayerAvatar);
      LOBYTE(v208[0]) = 7;
      v117 = v168;
      sub_24F8319B8(v46, v208, v168);
      sub_24F927618();
      sub_24F9242E8();
      v118 = v117;
      v119 = v169;
      sub_24F3EE294(v118, v169, type metadata accessor for PlayerAvatarView);
      v120 = (v119 + *(v167 + 36));
      v121 = v206;
      v120[4] = v205;
      v120[5] = v121;
      v120[6] = v207;
      v122 = v202;
      *v120 = v201;
      v120[1] = v122;
      v123 = v204;
      v120[2] = v203;
      v120[3] = v123;
      sub_24F927618();
      sub_24F9242E8();
      v124 = v119;
      v125 = v170;
      sub_24E6009C8(v124, v170, &qword_27F222118, &qword_24F9F1990);
      v126 = (v125 + *(v186 + 36));
      v127 = v208[5];
      v126[4] = v208[4];
      v126[5] = v127;
      v126[6] = v208[6];
      v128 = v208[1];
      *v126 = v208[0];
      v126[1] = v128;
      v129 = v208[3];
      v126[2] = v208[2];
      v126[3] = v129;
      v130 = v171;
      sub_24E6009C8(v125, v171, &qword_27F242418, &qword_24F9F1998);
      sub_24E60169C(v130, v184, &qword_27F242418, &qword_24F9F1998);
      swift_storeEnumTagMultiPayload();
      sub_24F3EE24C(&qword_27F242460, _s12GameStoreKit10VisualViewVMa_0, &unk_24F9F1A30);
      sub_24F3EDDCC();
      v131 = v185;
      sub_24F924E28();
      sub_24E60169C(v131, v188, &qword_27F242438, &qword_24F9F19B8);
      swift_storeEnumTagMultiPayload();
      sub_24F3EDD10();
      sub_24F3EDF14();
      v132 = v189;
      sub_24F924E28();
      sub_24E601704(v131, &qword_27F242438, &qword_24F9F19B8);
      sub_24E60169C(v132, v195, &qword_27F242440, &qword_24F9F19C0);
      swift_storeEnumTagMultiPayload();
      sub_24F3EDC84();
      sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
      v66 = v193;
      sub_24F924E28();
      sub_24E601704(v132, &qword_27F242440, &qword_24F9F19C0);
      sub_24E601704(v130, &qword_27F242418, &qword_24F9F1998);
      goto LABEL_32;
    default:
      if (sub_24E92D030(a1, v198, a3))
      {
        goto LABEL_7;
      }

      break;
  }

  v71 = v199;
  v72 = *(v200 + 56);

  return v72(a6, 1, 1, v71);
}

uint64_t sub_24F3EC188@<X0>(uint64_t *a1@<X8>)
{
  v2 = sub_24F926DF8();
  v3 = sub_24F9259E8();
  KeyPath = swift_getKeyPath();
  v5 = sub_24F9251C8();
  v6 = a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216C00, &qword_24F943E20) + 36);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v8 = *MEMORY[0x277CE13B8];
  v9 = sub_24F927748();
  result = (*(*(v9 - 8) + 104))(&v6[v7], v8, v9);
  *v6 = v5;
  *a1 = v2;
  a1[1] = KeyPath;
  a1[2] = v3;
  return result;
}

uint64_t sub_24F3EC28C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v178 = a1;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2424D8, &qword_24F9F1A80);
  MEMORY[0x28223BE20](v150);
  v151 = &v147 - v3;
  v177 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2424E0, &qword_24F9F1A88);
  MEMORY[0x28223BE20](v177);
  v152 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  *&v153 = &v147 - v6;
  v175 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2424E8, &qword_24F9F1A90);
  MEMORY[0x28223BE20](v175);
  v176 = &v147 - v7;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2424F0, &qword_24F9F1A98);
  MEMORY[0x28223BE20](v154);
  v156 = &v147 - v8;
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2424F8, &qword_24F9F1AA0);
  MEMORY[0x28223BE20](v155);
  v160 = &v147 - v9;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242500, &qword_24F9F1AA8);
  MEMORY[0x28223BE20](v159);
  v158 = &v147 - v10;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242508, &qword_24F9F1AB0);
  MEMORY[0x28223BE20](v157);
  v164 = &v147 - v11;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242510, &qword_24F9F1AB8);
  MEMORY[0x28223BE20](v163);
  v166 = &v147 - v12;
  v165 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242518, &qword_24F9F1AC0);
  MEMORY[0x28223BE20](v165);
  v167 = &v147 - v13;
  *&v173 = sub_24F924848();
  *&v172 = *(v173 - 8);
  MEMORY[0x28223BE20](v173);
  v171 = &v147 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PlayerAvatar(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = (&v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = type metadata accessor for PlayerAvatarView(0);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = &v147 - v22;
  *&v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222118, &qword_24F9F1990);
  MEMORY[0x28223BE20](v168);
  v25 = &v147 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v147 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242520, &qword_24F9F1AC8);
  MEMORY[0x28223BE20](v29);
  *&v169 = &v147 - v30;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242528, &qword_24F9F1AD0);
  MEMORY[0x28223BE20](v147);
  v149 = &v147 - v31;
  v148 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242530, &qword_24F9F1AD8);
  MEMORY[0x28223BE20](v148);
  v170 = &v147 - v32;
  v174 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242538, &qword_24F9F1AE0);
  MEMORY[0x28223BE20](v174);
  v161 = &v147 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v162 = &v147 - v35;
  v36 = _s12GameStoreKit10VisualViewVMa_0(0);
  v37 = *(v2 + v36[6]);
  sub_24F3EE2FC(v2, v17, type metadata accessor for PlayerAvatar);
  if (v37 == 1)
  {
    LOBYTE(v212) = 7;
    sub_24F8319B8(v17, &v212, v23);
    v38 = *(v2 + v36[5]);
    sub_24F927618();
    sub_24F9242E8();
    sub_24F3EE294(v23, v28, type metadata accessor for PlayerAvatarView);
    v39 = &v28[*(v168 + 36)];
    v40 = v200;
    *(v39 + 4) = v199;
    *(v39 + 5) = v40;
    *(v39 + 6) = v201;
    v41 = v196;
    *v39 = v195;
    *(v39 + 1) = v41;
    v42 = v198;
    *(v39 + 2) = v197;
    *(v39 + 3) = v42;
    v43 = sub_24F926C88();
    sub_24F9278A8();
    v45 = v44;
    v47 = v46;
    v48 = sub_24F927618();
    v50 = v49;
    *&v180[0] = v43;
    v168 = xmmword_24F9F18B0;
    *(v180 + 8) = xmmword_24F9F18B0;
    BYTE8(v180[1]) = 0;
    v153 = xmmword_24F9F18C0;
    v181 = xmmword_24F9F18C0;
    *&v182 = v45;
    *(&v182 + 1) = v47;
    *&v183 = 0;
    *(&v183 + 1) = v38 * 0.5 + 16.0;
    *&v184 = v48;
    *(&v184 + 1) = v49;
    v51 = v28;
    v52 = v169;
    sub_24E6009C8(v51, v169, &qword_27F222118, &qword_24F9F1990);
    v53 = (v52 + *(v29 + 36));
    v54 = v182;
    v53[2] = v181;
    v53[3] = v54;
    v55 = v184;
    v53[4] = v183;
    v53[5] = v55;
    v56 = v180[1];
    *v53 = v180[0];
    v53[1] = v56;
    v185 = v43;
    v186 = v168;
    v187 = 0;
    v188 = v153;
    v189 = v45;
    v190 = v47;
    v191 = 0;
    v192 = v38 * 0.5 + 16.0;
    v193 = v48;
    v194 = v50;
    sub_24E60169C(v180, &v212, &qword_27F242568, &qword_24F9F1B10);
    sub_24E601704(&v185, &qword_27F242568, &qword_24F9F1B10);
    v57 = v2 + v36[7];
    v58 = *v57;
    v59 = *(v57 + 8);

    v60 = v58;
    if ((v59 & 1) == 0)
    {
      sub_24F92BDC8();
      v61 = sub_24F9257A8();
      sub_24F921FD8();

      v62 = v171;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v172 + 8))(v62, v173);
      v60 = v212;
    }

    swift_getKeyPath();
    *&v212 = v60;
    sub_24F3EE24C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v63 = *(v60 + 32);
    v168 = *(v60 + 16);
    v153 = v63;

    v64 = sub_24F925808();
    v65 = v149;
    sub_24E6009C8(v169, v149, &qword_27F242520, &qword_24F9F1AC8);
    v66 = v65 + *(v147 + 36);
    *v66 = v64;
    *(v66 + 24) = v153;
    *(v66 + 8) = v168;
    *(v66 + 40) = 0;
    sub_24F927618();
    sub_24F9242E8();
    v67 = v170;
    sub_24E6009C8(v65, v170, &qword_27F242528, &qword_24F9F1AD0);
    v68 = (v67 + *(v148 + 36));
    v69 = v210;
    v68[4] = v209;
    v68[5] = v69;
    v68[6] = v211;
    v70 = v206;
    *v68 = v205;
    v68[1] = v70;
    v71 = v208;
    v68[2] = v207;
    v68[3] = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217860, &qword_24F947370);
    v72 = swift_allocObject();
    *(v72 + 16) = xmmword_24F93A400;
    *(v72 + 32) = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
    *(v72 + 40) = sub_24F926C98();
    sub_24F927878();
    sub_24F927898();
    MEMORY[0x25304CD70](v72);
    sub_24F923BD8();
    v73 = v202;
    v74 = *(v154 + 36);
    v75 = *MEMORY[0x277CE13B8];
    v76 = sub_24F927748();
    v77 = *(*(v76 - 8) + 104);
    v168 = v204;
    v169 = v203;
    v78 = v156;
    v77(&v156[v74], v75, v76);
    *v78 = v73;
    v79 = v169;
    *(v78 + 24) = v168;
    *(v78 + 8) = v79;
    *(v78 + 40) = 0x3FC5C28F5C28F5C3;
    sub_24F927618();
    sub_24F9242E8();
    v80 = v160;
    sub_24E6009C8(v78, v160, &qword_27F2424F0, &qword_24F9F1A98);
    v81 = (v80 + *(v155 + 36));
    v82 = v217;
    v81[4] = v216;
    v81[5] = v82;
    v81[6] = v218;
    v83 = v213;
    *v81 = v212;
    v81[1] = v83;
    v84 = v215;
    v81[2] = v214;
    v81[3] = v84;
    v85 = v80;
    v86 = v158;
    sub_24E6009C8(v85, v158, &qword_27F2424F8, &qword_24F9F1AA0);
    v87 = v86 + *(v159 + 36);
    *v87 = v38 + 4.0;
    *(v87 + 8) = 256;
    v88 = v164;
    sub_24E6009C8(v86, v164, &qword_27F242500, &qword_24F9F1AA8);
    v89 = v88 + *(v157 + 36);
    *v89 = 0x4000000000000000;
    *(v89 + 8) = 0;
    v90 = sub_24F925838();

    v91 = v58;
    if ((v59 & 1) == 0)
    {
      sub_24F92BDC8();
      v92 = sub_24F9257A8();
      sub_24F921FD8();

      v93 = v171;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v172 + 8))(v93, v173);
      v91 = v179;
    }

    swift_getKeyPath();
    v179 = v91;
    sub_24F91FD88();

    sub_24F923318();
    v95 = v94;
    v97 = v96;
    v99 = v98;
    v101 = v100;
    v102 = v166;
    sub_24E6009C8(v88, v166, &qword_27F242508, &qword_24F9F1AB0);
    v103 = v102 + *(v163 + 36);
    *v103 = v90;
    *(v103 + 8) = v95;
    *(v103 + 16) = v97;
    *(v103 + 24) = v99;
    *(v103 + 32) = v101;
    *(v103 + 40) = 0;
    v104 = sub_24F925858();

    if ((v59 & 1) == 0)
    {
      sub_24F92BDC8();
      v105 = sub_24F9257A8();
      sub_24F921FD8();

      v106 = v171;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v172 + 8))(v106, v173);
      v58 = v179;
    }

    swift_getKeyPath();
    v179 = v58;
    sub_24F91FD88();

    sub_24F923318();
    v108 = v107;
    v110 = v109;
    v112 = v111;
    v114 = v113;
    v115 = v167;
    sub_24E6009C8(v102, v167, &qword_27F242510, &qword_24F9F1AB8);
    v116 = v115 + *(v165 + 36);
    *v116 = v104;
    *(v116 + 8) = v108;
    *(v116 + 16) = v110;
    *(v116 + 24) = v112;
    *(v116 + 32) = v114;
    *(v116 + 40) = 0;
    v117 = sub_24F927618();
    v119 = v118;
    v120 = v161;
    v121 = &v161[*(v174 + 36)];
    sub_24E6009C8(v115, v121, &qword_27F242518, &qword_24F9F1AC0);
    v122 = (v121 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242578, &unk_24F9F1B18) + 36));
    *v122 = v117;
    v122[1] = v119;
    sub_24E6009C8(v170, v120, &qword_27F242530, &qword_24F9F1AD8);
    v123 = &qword_27F242538;
    v124 = &qword_24F9F1AE0;
    v125 = v120;
    v126 = v162;
    sub_24E6009C8(v125, v162, &qword_27F242538, &qword_24F9F1AE0);
    sub_24E60169C(v126, v176, &qword_27F242538, &qword_24F9F1AE0);
    swift_storeEnumTagMultiPayload();
    sub_24F3EE8E0();
    sub_24F3EEB68();
  }

  else
  {
    LOBYTE(v212) = 7;
    sub_24F8319B8(v17, &v212, v20);
    sub_24F927618();
    sub_24F9242E8();
    sub_24F3EE294(v20, v25, type metadata accessor for PlayerAvatarView);
    v127 = &v25[*(v168 + 36)];
    v128 = v210;
    *(v127 + 4) = v209;
    *(v127 + 5) = v128;
    *(v127 + 6) = v211;
    v129 = v206;
    *v127 = v205;
    *(v127 + 1) = v129;
    v130 = v208;
    *(v127 + 2) = v207;
    *(v127 + 3) = v130;
    v131 = v2 + v36[7];
    v132 = *v131;
    v133 = *(v131 + 8);

    if ((v133 & 1) == 0)
    {
      sub_24F92BDC8();
      v134 = sub_24F9257A8();
      sub_24F921FD8();

      v135 = v171;
      sub_24F924838();
      swift_getAtKeyPath();

      (*(v172 + 8))(v135, v173);
      v132 = v212;
    }

    swift_getKeyPath();
    *&v212 = v132;
    sub_24F3EE24C(&qword_27F214D10, type metadata accessor for CardSafeArea, &unk_24F95FFC8);
    sub_24F91FD88();

    v136 = *(v132 + 16);
    v172 = *(v132 + 32);
    v173 = v136;

    v137 = sub_24F925808();
    v138 = v151;
    sub_24E6009C8(v25, v151, &qword_27F222118, &qword_24F9F1990);
    v139 = v138 + *(v150 + 36);
    *v139 = v137;
    v140 = v173;
    *(v139 + 24) = v172;
    *(v139 + 8) = v140;
    *(v139 + 40) = 0;
    sub_24F927618();
    sub_24F9242E8();
    v141 = v152;
    sub_24E6009C8(v138, v152, &qword_27F2424D8, &qword_24F9F1A80);
    v142 = (v141 + *(v177 + 36));
    v143 = v217;
    v142[4] = v216;
    v142[5] = v143;
    v142[6] = v218;
    v144 = v213;
    *v142 = v212;
    v142[1] = v144;
    v145 = v215;
    v142[2] = v214;
    v142[3] = v145;
    v123 = &qword_27F2424E0;
    v124 = &qword_24F9F1A88;
    v126 = v153;
    sub_24E6009C8(v141, v153, &qword_27F2424E0, &qword_24F9F1A88);
    sub_24E60169C(v126, v176, &qword_27F2424E0, &qword_24F9F1A88);
    swift_storeEnumTagMultiPayload();
    sub_24F3EE8E0();
    sub_24F3EEB68();
  }

  sub_24F924E28();
  return sub_24E601704(v126, v123, v124);
}

uint64_t sub_24F3ED71C(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, double a5)
{
  CGRectGetWidth(*&a1);
  v10.origin.x = a1;
  v10.origin.y = a2;
  v10.size.width = a3;
  v10.size.height = a4;
  CGRectGetWidth(v10);
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectGetHeight(v11);
  v12.origin.x = a1;
  v12.origin.y = a2;
  v12.size.width = a3;
  v12.size.height = a4;
  CGRectGetHeight(v12);
  v13.origin.x = a1;
  v13.origin.y = a2;
  v13.size.width = a3;
  v13.size.height = a4;
  CGRectGetWidth(v13);
  v14.origin.x = a1;
  v14.origin.y = a2;
  v14.size.width = a3;
  v14.size.height = a4;
  CGRectGetWidth(v14);
  v15.origin.x = a1;
  v15.origin.y = a2;
  v15.size.width = a3;
  v15.size.height = a4;
  CGRectGetMaxY(v15);
  v16.origin.x = a1;
  v16.origin.y = a2;
  v16.size.width = a3;
  v16.size.height = a4;
  CGRectGetMinX(v16);
  v17.origin.x = a1;
  v17.origin.y = a2;
  v17.size.width = a3;
  v17.size.height = a4;
  CGRectGetMaxY(v17);
  v18.origin.x = a1;
  v18.origin.y = a2;
  v18.size.width = a3;
  v18.size.height = a4;
  CGRectGetMinX(v18);
  v19.origin.x = a1;
  v19.origin.y = a2;
  v19.size.width = a3;
  v19.size.height = a4;
  CGRectGetMinX(v19);
  v20.origin.x = a1;
  v20.origin.y = a2;
  v20.size.width = a3;
  v20.size.height = a4;
  CGRectGetMinY(v20);
  v21.origin.x = a1;
  v21.origin.y = a2;
  v21.size.width = a3;
  v21.size.height = a4;
  CGRectGetMaxY(v21);
  v22.origin.x = a1;
  v22.origin.y = a2;
  v22.size.width = a3;
  v22.size.height = a4;
  CGRectGetMinX(v22);
  v23.origin.x = a1;
  v23.origin.y = a2;
  v23.size.width = a3;
  v23.size.height = a4;
  CGRectGetMinY(v23);
  v24.origin.x = a1;
  v24.origin.y = a2;
  v24.size.width = a3;
  v24.size.height = a4;
  CGRectGetMaxY(v24);
  v25.origin.x = a1;
  v25.origin.y = a2;
  v25.size.width = a3;
  v25.size.height = a4;
  CGRectGetMinX(v25);
  v26.origin.x = a1;
  v26.origin.y = a2;
  v26.size.width = a3;
  v26.size.height = a4;
  CGRectGetMaxY(v26);
  sub_24F925AF8();
  v27.origin.x = a1;
  v27.origin.y = a2;
  v27.size.width = a3;
  v27.size.height = a4;
  CGRectGetMinX(v27);
  v28.origin.x = a1;
  v28.origin.y = a2;
  v28.size.width = a3;
  v28.size.height = a4;
  CGRectGetMaxY(v28);
  sub_24F925B18();
  v29.origin.x = a1;
  v29.origin.y = a2;
  v29.size.width = a3;
  v29.size.height = a4;
  CGRectGetMinY(v29);
  sub_24F925B18();
  v30.origin.x = a1;
  v30.origin.y = a2;
  v30.size.width = a3;
  v30.size.height = a4;
  CGRectGetMinY(v30);
  sub_24F925B18();
  return sub_24F925AE8();
}

double sub_24F3EDA30@<D0>(uint64_t a1@<X8>)
{
  sub_24F925B58();
  result = *&v7;
  *a1 = v7;
  *(a1 + 16) = v8;
  *(a1 + 32) = v9;
  return result;
}

void (*sub_24F3EDA9C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_24F923238();
  return sub_24E622878;
}

uint64_t sub_24F3EDB24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F3EEE24();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_24F3EDB88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_24F3EEE24();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_24F3EDBEC(uint64_t a1)
{
  v2 = sub_24F3EEE24();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t _s12GameStoreKit10VisualViewVMa_0(uint64_t a1)
{
  result = qword_27F2424B0;
  if (!qword_27F2424B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F3EDC84()
{
  result = qword_27F242450;
  if (!qword_27F242450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242440, &qword_24F9F19C0);
    sub_24F3EDD10();
    sub_24F3EDF14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242450);
  }

  return result;
}

unint64_t sub_24F3EDD10()
{
  result = qword_27F242458;
  if (!qword_27F242458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242438, &qword_24F9F19B8);
    sub_24F3EE24C(&qword_27F242460, _s12GameStoreKit10VisualViewVMa_0, &unk_24F9F1A30);
    sub_24F3EDDCC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242458);
  }

  return result;
}

unint64_t sub_24F3EDDCC()
{
  result = qword_27F242468;
  if (!qword_27F242468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242418, &qword_24F9F1998);
    sub_24F3EDE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242468);
  }

  return result;
}

unint64_t sub_24F3EDE58()
{
  result = qword_27F242470;
  if (!qword_27F242470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F222118, &qword_24F9F1990);
    sub_24F3EE24C(&qword_27F214AD0, type metadata accessor for PlayerAvatarView, &unk_24FA31B24);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242470);
  }

  return result;
}

unint64_t sub_24F3EDF14()
{
  result = qword_27F242478;
  if (!qword_27F242478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2423F0, &unk_24F9F1960);
    sub_24F3EE788(&qword_27F242480, &qword_27F242410, &qword_24F9F1988, sub_24F3EDFCC);
    sub_24F3EE0DC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242478);
  }

  return result;
}

unint64_t sub_24F3EDFCC()
{
  result = qword_27F242488;
  if (!qword_27F242488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242408, &qword_24F9F1980);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2423F8, &qword_24F9F1970);
    sub_24E602068(&qword_27F242490, &qword_27F2423F8, &qword_24F9F1970, MEMORY[0x277D7EB00]);
    sub_24E7AA708();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242488);
  }

  return result;
}

unint64_t sub_24F3EE0DC()
{
  result = qword_27F242498;
  if (!qword_27F242498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2423E0, &qword_24F9F1950);
    sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    sub_24E8F61F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242498);
  }

  return result;
}

unint64_t sub_24F3EE194()
{
  result = qword_27F2424A8;
  if (!qword_27F2424A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2424A0, &unk_24F9F19D0);
    sub_24E6C06F8();
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2424A8);
  }

  return result;
}

uint64_t sub_24F3EE24C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3EE294(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3EE2FC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3EE364(uint64_t a1)
{
  v2 = _s12GameStoreKit10VisualViewVMa_0(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3EE3C8(uint64_t a1, unsigned int a2)
{
  v4 = type metadata accessor for FriendSuggestionCard(0);
  if (*(a1 + *(v4 + 44)) == 2)
  {
    if (a2 < 4u || a2 == 4)
    {
      v6 = sub_24F92CE08();

      if (v6)
      {
        return a2;
      }

      else
      {
        return 2;
      }
    }

    else
    {

      return 5;
    }
  }

  else if (*(a1 + *(v4 + 32)) == 6)
  {
    return a2;
  }

  else
  {
    return *(a1 + *(v4 + 32));
  }
}

uint64_t sub_24F3EE510(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for PlayerAvatar(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_24F3EE5F0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for PlayerAvatar(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = a2 + 1;
  }

  return result;
}

void sub_24F3EE6A8(uint64_t a1)
{
  type metadata accessor for PlayerAvatar(319);
  if (v1 <= 0x3F)
  {
    sub_24E7268F0(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F3EE788(unint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F3EE804()
{
  result = qword_27F2424D0;
  if (!qword_27F2424D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242448, &qword_24F9F19C8);
    sub_24F3EDC84();
    sub_24F3EE788(&qword_27F214AF0, &qword_27F214A20, &unk_24F94D670, sub_24E63C290);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2424D0);
  }

  return result;
}

unint64_t sub_24F3EE8E0()
{
  result = qword_27F242540;
  if (!qword_27F242540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242538, &qword_24F9F1AE0);
    sub_24F3EE998();
    sub_24E602068(&qword_27F242570, &qword_27F242578, &unk_24F9F1B18, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242540);
  }

  return result;
}

unint64_t sub_24F3EE998()
{
  result = qword_27F242548;
  if (!qword_27F242548)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242530, &qword_24F9F1AD8);
    sub_24F3EEA24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242548);
  }

  return result;
}

unint64_t sub_24F3EEA24()
{
  result = qword_27F242550;
  if (!qword_27F242550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242528, &qword_24F9F1AD0);
    sub_24F3EEAB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242550);
  }

  return result;
}

unint64_t sub_24F3EEAB0()
{
  result = qword_27F242558;
  if (!qword_27F242558)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242520, &qword_24F9F1AC8);
    sub_24F3EDE58();
    sub_24E602068(&qword_27F242560, &qword_27F242568, &qword_24F9F1B10, MEMORY[0x277CE0328]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242558);
  }

  return result;
}

unint64_t sub_24F3EEB68()
{
  result = qword_27F242580;
  if (!qword_27F242580)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2424E0, &qword_24F9F1A88);
    sub_24F3EEBF4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242580);
  }

  return result;
}

unint64_t sub_24F3EEBF4()
{
  result = qword_27F242588;
  if (!qword_27F242588)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2424D8, &qword_24F9F1A80);
    sub_24F3EDE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242588);
  }

  return result;
}

unint64_t sub_24F3EEC94()
{
  result = qword_27F242590;
  if (!qword_27F242590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242598, &qword_24F9F1B68);
    sub_24F3EE8E0();
    sub_24F3EEB68();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242590);
  }

  return result;
}

unint64_t sub_24F3EED68()
{
  result = qword_27F2425B0;
  if (!qword_27F2425B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2425B0);
  }

  return result;
}

unint64_t sub_24F3EEDC0()
{
  result = qword_27F2425B8;
  if (!qword_27F2425B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2425B8);
  }

  return result;
}

unint64_t sub_24F3EEE24()
{
  result = qword_27F2425C0;
  if (!qword_27F2425C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2425C0);
  }

  return result;
}

uint64_t ExtendedMarkdownText.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_24F3EEFB4(a1, a2);
  v3 = sub_24F91F008();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

uint64_t ExtendedMarkdownText.body.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F008();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v4);
  result = sub_24F925DF8();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24F3EEFB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v29[0] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22D330, &unk_24F93FBE0);
  MEMORY[0x28223BE20](v29[0]);
  v36 = v29 - v4;
  v35 = sub_24F91EF38();
  v5 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_24F91EF18();
  v7 = *(v32 - 8);
  MEMORY[0x28223BE20](v32);
  v9 = v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_24F91EF48();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215348, &unk_24F93FBF0);
  MEMORY[0x28223BE20](v14);
  v16 = v29 - v15;
  v17 = sub_24F91F008();
  (*(*(v17 - 8) + 16))(a2, a1, v17);
  v29[1] = a2;
  sub_24F91EF68();
  (*(v11 + 16))(v16, v13, v10);
  sub_24E6584F8(&qword_27F215360, MEMORY[0x277CC8C08], MEMORY[0x277CC8C18]);
  sub_24F92BB88();
  (*(v11 + 8))(v13, v10);
  v33 = (v5 + 8);
  v30 = (v7 + 8);
  v31 = (v7 + 16);
  while (1)
  {
    v19 = v34;
    sub_24F92BC08();
    sub_24E6584F8(&unk_27F237EA0, MEMORY[0x277CC8BF8], MEMORY[0x277CC8C00]);
    v20 = v35;
    v21 = sub_24F92AFF8();
    (*v33)(v19, v20);
    if (v21)
    {
      break;
    }

    v22 = sub_24F92BC88();
    v23 = v32;
    (*v31)(v9);
    v22(v38, 0);
    v24 = v10;
    sub_24F92BC18();
    sub_24F91EF08();
    sub_24F3EF730();
    sub_24F91EF28();
    (*v30)(v9, v23);
    if (v38[0] == 1)
    {
      v18 = v36;
    }

    else
    {
      v25 = _s7SwiftUI5ColorV12GameStoreKitE05focusC0ACvgZ_0();
      sub_24E658594();
      v26 = v36;
      v27 = sub_24F91F048();
      v37 = v25;
      sub_24E876600();
      sub_24F91F148();
      v27(v38, 0);
      v18 = v26;
    }

    sub_24E601704(v18, &qword_27F22D330, &unk_24F93FBE0);
    v10 = v24;
  }

  return sub_24E601704(v16, &qword_27F215348, &unk_24F93FBF0);
}

uint64_t sub_24F3EF50C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_24F91F008();
  v4 = MEMORY[0x28223BE20](v3);
  (*(v6 + 16))(&v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v4);
  result = sub_24F925DF8();
  *a1 = result;
  *(a1 + 8) = v8;
  *(a1 + 16) = v9 & 1;
  *(a1 + 24) = v10;
  return result;
}

uint64_t sub_24F3EF5F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24F3EF674(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F008();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for ExtendedMarkdownText(uint64_t a1)
{
  result = qword_27F2425C8;
  if (!qword_27F2425C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_24F3EF730()
{
  result = qword_27F2425D8;
  if (!qword_27F2425D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2425D8);
  }

  return result;
}

uint64_t sub_24F3EF7A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_24F3EF894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = a2;
  }

  return result;
}

void sub_24F3EF97C(uint64_t a1)
{
  sub_24F3F01B4(319, &qword_27F21A4A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24F3EFA54(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_15:
    v16 = *(v10 + 48);

    return v16(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_15;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a2)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a3[8];
    goto LABEL_15;
  }

  v14 = sub_24F91F648();
  if (*(*(v14 - 8) + 84) == a2)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a3[9];
    goto LABEL_15;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  if (*(*(v15 - 8) + 84) == a2)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a3[10];
    goto LABEL_15;
  }

  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 48);
  v19 = a1 + a3[17];

  return v18(v19, a2, v17);
}

uint64_t sub_24F3EFCD0(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_13:
    v16 = *(v10 + 56);

    return v16(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_13;
  }

  v13 = type metadata accessor for CommonCardAttributes(0);
  if (*(*(v13 - 8) + 84) == a3)
  {
    v9 = v13;
    v10 = *(v13 - 8);
    v11 = a4[8];
    goto LABEL_13;
  }

  v14 = sub_24F91F648();
  if (*(*(v14 - 8) + 84) == a3)
  {
    v9 = v14;
    v10 = *(v14 - 8);
    v11 = a4[9];
    goto LABEL_13;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  if (*(*(v15 - 8) + 84) == a3)
  {
    v9 = v15;
    v10 = *(v15 - 8);
    v11 = a4[10];
    goto LABEL_13;
  }

  v17 = sub_24F9289E8();
  v18 = *(*(v17 - 8) + 56);
  v19 = v5 + a4[17];

  return v18(v19, a2, a2, v17);
}

void sub_24F3EFF58(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24F3F01B4(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F91F648();
            if (v6 <= 0x3F)
            {
              sub_24F3F01B4(319, &qword_27F21A4A0, MEMORY[0x277CC9578], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                sub_24F3F01B4(319, &qword_27F21F060, type metadata accessor for GSKAppEventFormattedDate, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  sub_24F9289E8();
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initStructMetadataWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

uint64_t sub_24F3F016C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_24F3F01B4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_24F3F0224()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24F3F0320(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24F3F0408()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

unint64_t sub_24F3F0500@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_24F3F37FC(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_24F3F0530(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65676150656D6167;
  v5 = 0xEB00000000646565;
  v6 = 0x46776F4E79616C70;
  v7 = 0xED000073746C7573;
  v8 = 0x6552686372616573;
  if (v2 != 3)
  {
    v8 = 0x79616C7265766FLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000024FA40280;
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

void sub_24F3F0698(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x65676150656D6167;
  v5 = 0xEB00000000646565;
  v6 = 0x46776F4E79616C70;
  v7 = 0xED000073746C7573;
  v8 = 0x6552686372616573;
  if (v2 != 3)
  {
    v8 = 0x79616C7265766FLL;
    v7 = 0xE700000000000000;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0xD000000000000013;
    v3 = 0x800000024FA40280;
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

  v10 = MEMORY[0x277D22580];
  a1[3] = MEMORY[0x277D837D0];
  a1[4] = v10;
  *a1 = v9;
  a1[1] = v3;
}

unint64_t sub_24F3F0764(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6575676573;
      break;
    case 2:
      result = 0x4D747865746E6F63;
      break;
    case 3:
      result = 0xD000000000000011;
      break;
    case 4:
      result = 0xD000000000000014;
      break;
    case 5:
      result = 0x7461447472617473;
      break;
    case 6:
      result = 0x65746144646E65;
      break;
    case 7:
      result = 0x6E694B6567646162;
      break;
    case 8:
      result = 0x6D79536567646162;
      break;
    case 9:
      result = 0x65676150656D6167;
      break;
    case 10:
      result = 0x657474616D726F66;
      break;
    case 11:
      result = 0x4379616C70736964;
      break;
    case 12:
      result = 0x656D614E656D6167;
      break;
    case 13:
      result = 0x6E6F6349656D6167;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_24F3F0950@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v64 = sub_24F9289E8();
  v62 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v65 = v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v66 = v61 - v5;
  v6 = sub_24F91F648();
  v73 = *(v6 - 8);
  v74 = v6;
  MEMORY[0x28223BE20](v6);
  v67 = v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v69);
  v68 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v9 - 8);
  v70 = v61 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v11);
  v13 = v61 - v12;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242630, &qword_24F9F2008);
  v75 = *(v72 - 8);
  MEMORY[0x28223BE20](v72);
  v15 = v61 - v14;
  v16 = type metadata accessor for AppEventCard(0);
  MEMORY[0x28223BE20](v16);
  v18 = v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v18 + 40) = 0u;
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  *(v18 + 56) = 0u;
  *(v18 + 9) = 0;
  v82 = v18 + 40;
  sub_24E61DA68(&v83, (v18 + 40), qword_27F21B590, &unk_24F93BE30);
  v19 = *(v16 + 24);
  v20 = sub_24F92A6D8();
  v21 = *(*(v20 - 8) + 56);
  v81 = v19;
  v21(&v18[v19], 1, 1, v20);
  v78 = v18;
  v79 = v16;
  v22 = &v18[*(v16 + 52)];
  v85 = 0;
  v83 = 0u;
  v84 = 0u;
  *v22 = 0u;
  *(v22 + 16) = 0u;
  *(v22 + 32) = 0;
  v77 = v22;
  sub_24E61DA68(&v83, v22, qword_27F21B590, &unk_24F93BE30);
  v23 = a1[3];
  v76 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  sub_24F3F3958();
  v71 = v15;
  v24 = v80;
  sub_24F92D108();
  if (v24)
  {
    v80 = v24;
    v27 = v78;
    v28 = v79;
    __swift_destroy_boxed_opaque_existential_1(v76);
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    LODWORD(v75) = 0;
  }

  else
  {
    v80 = v11;
    v25 = v13;
    v26 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v86 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v37 = v84;
    v38 = v78;
    *v78 = v83;
    v38[1] = v37;
    *(v38 + 4) = v85;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v86 = 1;
    v40 = sub_24E61D970();
    sub_24F92CC68();
    v41 = v79;
    v61[1] = v40;
    v61[2] = v39;
    sub_24E61DA68(&v83, v82, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v83) = 2;
    sub_24E65CAA0();
    sub_24F92CC68();
    sub_24E61DA68(v25, v38 + v81, &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v83) = 3;
    sub_24F3F016C(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v42 = v70;
    sub_24F92CC18();
    sub_24E6009C8(v42, v38 + v41[7], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v83) = 4;
    sub_24F3F016C(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v43 = v68;
    sub_24F92CC68();
    sub_24E706B90(v43, v38 + v41[8]);
    LOBYTE(v83) = 5;
    sub_24F3F016C(&qword_27F21B778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v44 = v67;
    sub_24F92CC68();
    (*(v73 + 32))(v38 + v41[9], v44, v26);
    LOBYTE(v83) = 6;
    v45 = v66;
    sub_24F92CC18();
    sub_24E6009C8(v45, v38 + v41[10], &unk_27F22EC30, &qword_24F939880);
    LOBYTE(v83) = 7;
    v46 = sub_24F92CC28();
    v47 = (v38 + v41[11]);
    *v47 = v46;
    v47[1] = v48;
    LOBYTE(v83) = 8;
    v49 = sub_24F92CC28();
    v80 = 0;
    v51 = (v38 + v41[12]);
    *v51 = v49;
    v51[1] = v50;
    v86 = 9;
    v52 = v80;
    sub_24F92CC68();
    v80 = v52;
    if (v52 || (sub_24E61DA68(&v83, v77, qword_27F24EC90, &unk_24F93C1D0), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F0D0, &qword_24F95F2D8), v86 = 10, sub_24E852A50(), v53 = v80, sub_24F92CC68(), (v80 = v53) != 0))
    {
      (*(v75 + 8))(v71, v72);
      v35 = 0;
      LODWORD(v75) = 0;
      v29 = 1;
      v30 = 1;
      v31 = 1;
      v32 = 1;
      v33 = 1;
      v34 = 1;
    }

    else
    {
      *(v78 + v79[14]) = v83;
      v86 = 11;
      sub_24E852B04();
      v54 = v80;
      sub_24F92CC68();
      v80 = v54;
      if (v54 || (*(v78 + v79[15]) = v83, LOBYTE(v83) = 12, v55 = v80, v56 = sub_24F92CC28(), (v80 = v55) != 0))
      {
        (*(v75 + 8))(v71, v72);
        LODWORD(v75) = 0;
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v32 = 1;
        v33 = 1;
        v34 = 1;
        v35 = 1;
      }

      else
      {
        v58 = (v78 + v79[16]);
        *v58 = v56;
        v58[1] = v57;
        LOBYTE(v83) = 13;
        sub_24F3F016C(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
        v59 = v80;
        sub_24F92CC68();
        v80 = v59;
        if (!v59)
        {
          (*(v75 + 8))(v71, v72);
          v60 = v78;
          (*(v62 + 32))(v78 + v79[17], v65, v64);
          sub_24F3F38F0(v60, v63, type metadata accessor for AppEventCard);
          __swift_destroy_boxed_opaque_existential_1(v76);
          return sub_24F3F39AC(v60, type metadata accessor for AppEventCard);
        }

        (*(v75 + 8))(v71, v72);
        v29 = 1;
        v30 = 1;
        v31 = 1;
        v32 = 1;
        v33 = 1;
        v34 = 1;
        v35 = 1;
        LODWORD(v75) = 1;
      }
    }

    v27 = v78;
    v28 = v79;
    __swift_destroy_boxed_opaque_existential_1(v76);
    sub_24E601704(v27, &qword_27F213F18, &qword_24F93BE20);
  }

  sub_24E601704(v82, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v27 + v81, &qword_27F215440, &unk_24F942BD0);
  if (v29)
  {
    sub_24E601704(v27 + v28[7], &qword_27F213E68, &unk_24F93BC80);
    if (!v30)
    {
LABEL_6:
      if (!v31)
      {
        goto LABEL_7;
      }

      goto LABEL_18;
    }
  }

  else if (!v30)
  {
    goto LABEL_6;
  }

  sub_24F3F39AC(v27 + v28[8], type metadata accessor for CommonCardAttributes);
  if (!v31)
  {
LABEL_7:
    if (!v32)
    {
      goto LABEL_8;
    }

    goto LABEL_19;
  }

LABEL_18:
  (*(v73 + 8))(v27 + v28[9], v74);
  if (!v32)
  {
LABEL_8:
    if (!v33)
    {
      goto LABEL_9;
    }

LABEL_20:

    if (!v34)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_19:
  sub_24E601704(v27 + v28[10], &unk_27F22EC30, &qword_24F939880);
  if (v33)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v34)
  {
LABEL_10:
  }

LABEL_11:
  result = sub_24E601704(v77, qword_27F24EC90, &unk_24F93C1D0);
  if (v35)
  {
  }

  if (v75)
  {
  }

  return result;
}

uint64_t sub_24F3F17AC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3F3C3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3F17D4(uint64_t a1)
{
  v2 = sub_24F3F3958();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F1810(uint64_t a1)
{
  v2 = sub_24F3F3958();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3F1884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F3F195C(uint64_t a1)
{
  *(a1 + 8) = sub_24F3F016C(&qword_27F21AA80, type metadata accessor for AppEventCard, &unk_24F9F1FA4);
  result = sub_24F3F016C(&qword_27F22BC48, type metadata accessor for AppEventCard, &unk_24F9F1D88);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F3F19E0@<X0>(void *a1@<X8>)
{
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F942000;
  *(inited + 32) = 0x4679616C70736964;
  *(inited + 40) = 0xEF657461446D6F72;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  *(inited + 72) = v22;
  v4 = sub_24E7594F8(&qword_27F21B760, &unk_27F22EC30, &qword_24F939880);
  *(inited + 80) = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 48));
  sub_24E60169C(v1, boxed_opaque_existential_1, &unk_27F22EC30, &qword_24F939880);
  *(inited + 88) = 0x5479616C70736964;
  *(inited + 96) = 0xEB00000000747865;
  v6 = type metadata accessor for GSKAppEventFormattedDate(0);
  v7 = (v2 + v6[5]);
  v8 = *v7;
  v9 = v7[1];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 128) = v10;
  v11 = sub_24E7594F8(&qword_27F212F10, &unk_27F23B740, &qword_24F93EC10);
  *(inited + 104) = v8;
  *(inited + 112) = v9;
  *(inited + 136) = v11;
  *(inited + 144) = 0xD000000000000011;
  *(inited + 152) = 0x800000024FA53670;
  v12 = *(v2 + v6[6]);
  v13 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v13;
  *(inited + 160) = v12;
  *(inited + 200) = 0x776F64746E756F63;
  *(inited + 208) = 0xEF657461446F546ELL;
  v14 = v6[7];
  *(inited + 240) = v22;
  *(inited + 248) = v4;
  v15 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24E60169C(v2 + v14, v15, &unk_27F22EC30, &qword_24F939880);
  *(inited + 256) = 0xD000000000000012;
  *(inited + 264) = 0x800000024FA53690;
  v16 = (v2 + v6[8]);
  v18 = *v16;
  v17 = v16[1];
  *(inited + 296) = v10;
  *(inited + 304) = v11;
  *(inited + 272) = v18;
  *(inited + 280) = v17;

  v19 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v20 = sub_24E80FFAC(v19);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v20;
  return result;
}

uint64_t sub_24F3F1CB4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242628, &unk_24F9F1FF0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F389C();
  sub_24F92D128();
  v13 = 0;
  sub_24F91F648();
  sub_24F3F016C(&qword_27F21BB08, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_24F92CCF8();
  if (!v1)
  {
    type metadata accessor for GSKAppEventFormattedDate(0);
    v12 = 1;
    sub_24F92CCA8();
    v11 = 2;
    sub_24F92CD18();
    v10 = 3;
    sub_24F92CCF8();
    v9 = 4;
    sub_24F92CCA8();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24F3F1F0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v33 = v30 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242618, &qword_24F9F1FE8);
  v34 = *(v9 - 8);
  v35 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = v30 - v10;
  v12 = type metadata accessor for GSKAppEventFormattedDate(0);
  MEMORY[0x28223BE20](v12);
  v14 = v30 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F389C();
  v36 = v11;
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v31 = v6;
  v15 = v14;
  sub_24F91F648();
  v41 = 0;
  v16 = sub_24F3F016C(&qword_27F21B778, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  v17 = v33;
  v18 = v35;
  sub_24F92CC18();
  v30[1] = v16;
  sub_24E6009C8(v17, v15, &unk_27F22EC30, &qword_24F939880);
  v40 = 1;
  v19 = sub_24F92CBC8();
  v20 = v12;
  v21 = (v15 + *(v12 + 20));
  *v21 = v19;
  v21[1] = v22;
  v39 = 2;
  v33 = 0;
  *(v15 + *(v12 + 24)) = sub_24F92CC38() & 1;
  v38 = 3;
  v23 = v31;
  sub_24F92CC18();
  v24 = v34;
  sub_24E6009C8(v23, v15 + *(v20 + 28), &unk_27F22EC30, &qword_24F939880);
  v37 = 4;
  v25 = sub_24F92CBC8();
  v27 = v26;
  (*(v24 + 8))(v36, v18);
  v28 = (v15 + *(v20 + 32));
  *v28 = v25;
  v28[1] = v27;
  sub_24F3F38F0(v15, v32, type metadata accessor for GSKAppEventFormattedDate);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F3F39AC(v15, type metadata accessor for GSKAppEventFormattedDate);
}

unint64_t sub_24F3F23CC()
{
  v1 = *v0;
  v2 = 0x4679616C70736964;
  v3 = 0xD000000000000011;
  v4 = 0x776F64746E756F63;
  if (v1 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x5479616C70736964;
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

uint64_t sub_24F3F2488@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3F40C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3F24B0(uint64_t a1)
{
  v2 = sub_24F3F389C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F24EC(uint64_t a1)
{
  v2 = sub_24F3F389C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24F3F2578()
{
  result = qword_27F242600;
  if (!qword_27F242600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242600);
  }

  return result;
}

uint64_t sub_24F3F2614(__n128 a1)
{
  v2 = sub_24F91F8A8();
  v3 = *(v2 - 8);
  v116 = v2;
  v117 = v3;
  MEMORY[0x28223BE20](v2);
  v118 = &v84 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F91ED78();
  v113 = *(v5 - 8);
  v114 = v5;
  MEMORY[0x28223BE20](v5);
  v109 = &v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v115 = &v84 - v8;
  MEMORY[0x28223BE20](v9);
  v119 = &v84 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = &v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v111 = &v84 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v84 - v16;
  v18 = sub_24F91F648();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v108 = &v84 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v112 = &v84 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = &v84 - v24;
  MEMORY[0x28223BE20](v26);
  v28 = &v84 - v27;
  v29 = type metadata accessor for GSKAppEventFormattedDate(0);
  sub_24E60169C(v1 + *(v29 + 28), v17, &unk_27F22EC30, &qword_24F939880);
  v30 = v19[6];
  if (v30(v17, 1, v18) == 1)
  {
    v31 = v17;
LABEL_10:
    sub_24E601704(v31, &unk_27F22EC30, &qword_24F939880);
    return 0;
  }

  v103 = v30;
  v32 = v17;
  v33 = v19[4];
  v33(v28, v32, v18);
  v34 = (v1 + *(v29 + 32));
  v35 = v34[1];
  if (v35)
  {
    v87 = v33;
    v88 = v19 + 4;
    v85 = v35;
    v84 = *v34;
    v106 = v28;
    sub_24F91F888();
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22E080, &qword_24F9F2000);
    v36 = sub_24F91F898();
    v37 = *(v36 - 8);
    v38 = *(v37 + 72);
    v100 = *(v37 + 80);
    v39 = (v100 + 32) & ~v100;
    v102 = v39;
    v105 = (4 * v38);
    v96 = 5 * v38;
    v40 = swift_allocObject();
    v95 = xmmword_24F942000;
    *(v40 + 16) = xmmword_24F942000;
    v107 = v18;
    v94 = *MEMORY[0x277CC9988];
    v86 = v37;
    v41 = *(v37 + 104);
    v41(v40 + v39);
    v93 = *MEMORY[0x277CC9998];
    v41(v40 + v39 + v38);
    v92 = *MEMORY[0x277CC9968];
    v89 = 2 * v38;
    v41(v40 + v39 + 2 * v38);
    v91 = 3 * v38;
    v90 = *MEMORY[0x277CC9980];
    v41(v40 + v39 + 3 * v38);
    v99 = *MEMORY[0x277CC99A0];
    v41(v105 + v40 + v39);
    sub_24E8026A0(v40);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_24F91F638();
    v42 = v118;
    sub_24F91F818();

    v43 = v19[1];
    v98 = v19 + 1;
    v97 = v43;
    v43(v25, v107);
    v44 = v116;
    v45 = v117 + 8;
    v104 = *(v117 + 8);
    v104(v42, v116);
    sub_24F91F888();
    v46 = v102;
    v47 = swift_allocObject();
    *(v47 + 16) = v95;
    v48 = v47 + v46;
    (v41)(v48, v94, v36);
    v96 = v38;
    (v41)(v48 + v38, v93, v36);
    (v41)(v48 + v89, v92, v36);
    (v41)(v48 + v91, v90, v36);
    v49 = v105 + v48;
    v105 = v41;
    (v41)(v49, v99, v36);
    sub_24E8026A0(v47);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v50 = v115;
    v51 = v118;
    sub_24F91F818();
    v52 = v45;
    v53 = v51;

    v54 = v104;
    v104(v51, v44);
    sub_24F91F888();
    v55 = v111;
    sub_24F91F848();
    v56 = v54;
    v57 = v107;
    v117 = v52;
    v56(v51, v44);
    v58 = v103;
    if (v103(v55, 1, v57) == 1)
    {
      v59 = v114;
      v60 = v50;
      v61 = *(v113 + 8);
      v61(v60, v114);
      v61(v119, v59);
      v97(v106, v57);
LABEL_9:
      v31 = v55;
      goto LABEL_10;
    }

    v62 = v87;
    v87(v112, v55, v57);
    sub_24F91F888();
    v55 = v110;
    sub_24F91F848();
    v104(v51, v116);
    if (v58(v55, 1, v57) == 1)
    {
      v63 = v50;
      v64 = v97;
      v97(v112, v57);
      v65 = *(v113 + 8);
      v66 = v63;
      v67 = v114;
      v65(v66, v114);
      v65(v119, v67);
      v64(v106, v57);
      goto LABEL_9;
    }

    v69 = v108;
    v62(v108, v55, v57);
    sub_24F91F888();
    v70 = v102;
    v71 = swift_allocObject();
    *(v71 + 16) = xmmword_24F93DE60;
    (v105)(v71 + v70, v99, v36);
    v72 = v69;
    sub_24E8026A0(v71);
    swift_setDeallocating();
    (*(v86 + 8))(v71 + v70, v36);
    swift_deallocClassInstance();
    v73 = v109;
    v74 = v112;
    sub_24F91F808();

    v104(v53, v116);
    v75 = sub_24F91ED28();
    LOBYTE(v69) = v76;
    v77 = v114;
    v78 = *(v113 + 8);
    v78(v73, v114);
    if ((v69 & 1) == 0)
    {
      v81 = _s12GameStoreKit24localizedStringWithCount_5count7commentS2S_SiSStF_0(v84, v85, v75);
      v82 = v107;
      v83 = v97;
      v97(v72, v107);
      v83(v74, v82);
      v78(v115, v77);
      v78(v119, v77);
      v83(v106, v82);
      return v81;
    }

    v79 = v107;
    v80 = v97;
    v97(v72, v107);
    v80(v74, v79);
    v78(v115, v77);
    v78(v119, v77);
    v80(v106, v79);
  }

  else
  {
    (v19[1])(v28, v18);
  }

  return 0;
}

uint64_t sub_24F3F31B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_24F91F648();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v59 = &v54[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v7 - 8);
  v57 = &v54[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v11 = &v54[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2347D0, &qword_24F9B38F8);
  MEMORY[0x28223BE20](v12);
  v58 = &v54[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v14);
  v16 = &v54[-v15];
  v18 = *(v17 + 48);
  sub_24E60169C(a1, &v54[-v15], &unk_27F22EC30, &qword_24F939880);
  sub_24E60169C(a2, &v16[v18], &unk_27F22EC30, &qword_24F939880);
  v60 = v5;
  v19 = *(v5 + 48);
  if (v19(v16, 1, v4) == 1)
  {
    if (v19(&v16[v18], 1, v4) == 1)
    {
      v56 = v19;
      sub_24E601704(v16, &unk_27F22EC30, &qword_24F939880);
      goto LABEL_11;
    }

LABEL_6:
    v20 = v16;
LABEL_7:
    sub_24E601704(v20, &qword_27F2347D0, &qword_24F9B38F8);
    return 0;
  }

  sub_24E60169C(v16, v11, &unk_27F22EC30, &qword_24F939880);
  if (v19(&v16[v18], 1, v4) == 1)
  {
    (*(v60 + 8))(v11, v4);
    goto LABEL_6;
  }

  v56 = v19;
  v22 = v59;
  v23 = v60;
  (*(v60 + 32))(v59, &v16[v18], v4);
  sub_24F3F016C(&qword_27F2347D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
  v55 = sub_24F92AFF8();
  v24 = *(v23 + 8);
  v24(v22, v4);
  v24(v11, v4);
  sub_24E601704(v16, &unk_27F22EC30, &qword_24F939880);
  if ((v55 & 1) == 0)
  {
    return 0;
  }

LABEL_11:
  v25 = type metadata accessor for GSKAppEventFormattedDate(0);
  v26 = v25[5];
  v27 = (a1 + v26);
  v28 = *(a1 + v26 + 8);
  v29 = (a2 + v26);
  v30 = v29[1];
  if (v28)
  {
    if (!v30)
    {
      return 0;
    }

    if (*v27 != *v29 || v28 != v30)
    {
      v31 = v25;
      v32 = sub_24F92CE08();
      v25 = v31;
      if ((v32 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v30)
  {
    return 0;
  }

  if (*(a1 + v25[6]) != *(a2 + v25[6]))
  {
    return 0;
  }

  v33 = v25;
  v34 = a2;
  v35 = v25[7];
  v36 = *(v12 + 48);
  v37 = v58;
  sub_24E60169C(a1 + v35, v58, &unk_27F22EC30, &qword_24F939880);
  v38 = v34 + v35;
  v39 = v34;
  v40 = v37;
  sub_24E60169C(v38, &v37[v36], &unk_27F22EC30, &qword_24F939880);
  v41 = v56;
  if (v56(v37, 1, v4) != 1)
  {
    v42 = v37;
    v43 = v57;
    sub_24E60169C(v42, v57, &unk_27F22EC30, &qword_24F939880);
    if (v41(v40 + v36, 1, v4) != 1)
    {
      v44 = v60;
      v45 = v40 + v36;
      v46 = v59;
      (*(v60 + 32))(v59, v45, v4);
      sub_24F3F016C(&qword_27F2347D8, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
      v47 = sub_24F92AFF8();
      v48 = *(v44 + 8);
      v48(v46, v4);
      v48(v43, v4);
      sub_24E601704(v40, &unk_27F22EC30, &qword_24F939880);
      if ((v47 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_26;
    }

    (*(v60 + 8))(v43, v4);
    goto LABEL_24;
  }

  if (v41(&v37[v36], 1, v4) != 1)
  {
LABEL_24:
    v20 = v40;
    goto LABEL_7;
  }

  sub_24E601704(v37, &unk_27F22EC30, &qword_24F939880);
LABEL_26:
  v49 = v33[8];
  v50 = (a1 + v49);
  v51 = *(a1 + v49 + 8);
  v52 = (v39 + v49);
  v53 = v52[1];
  if (v51)
  {
    if (v53 && (*v50 == *v52 && v51 == v53 || (sub_24F92CE08() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v53)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24F3F37FC(uint64_t a1, uint64_t a2)
{
  v2 = sub_24F92CB88();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_24F3F3848()
{
  result = qword_27F242610;
  if (!qword_27F242610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242610);
  }

  return result;
}

unint64_t sub_24F3F389C()
{
  result = qword_27F242620;
  if (!qword_27F242620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242620);
  }

  return result;
}

uint64_t sub_24F3F38F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_24F3F3958()
{
  result = qword_27F242638;
  if (!qword_27F242638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242638);
  }

  return result;
}

uint64_t sub_24F3F39AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F3F3A30()
{
  result = qword_27F242640;
  if (!qword_27F242640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242640);
  }

  return result;
}

unint64_t sub_24F3F3A88()
{
  result = qword_27F242648;
  if (!qword_27F242648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242648);
  }

  return result;
}

unint64_t sub_24F3F3AE0()
{
  result = qword_27F242650;
  if (!qword_27F242650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242650);
  }

  return result;
}

unint64_t sub_24F3F3B38()
{
  result = qword_27F242658;
  if (!qword_27F242658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242658);
  }

  return result;
}

unint64_t sub_24F3F3B90()
{
  result = qword_27F242660;
  if (!qword_27F242660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242660);
  }

  return result;
}

unint64_t sub_24F3F3BE8()
{
  result = qword_27F242668;
  if (!qword_27F242668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242668);
  }

  return result;
}

uint64_t sub_24F3F3C3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7461447472617473 && a2 == 0xE900000000000065 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E694B6567646162 && a2 == 0xE900000000000064 || (sub_24F92CE08() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6D79536567646162 && a2 == 0xEF656D614E6C6F62 || (sub_24F92CE08() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x65676150656D6167 && a2 == 0xED00006575676553 || (sub_24F92CE08() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x657474616D726F66 && a2 == 0xEE00736574614464 || (sub_24F92CE08() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x4379616C70736964 && a2 == 0xEE00747865746E6FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x656D614E656D6167 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x6E6F6349656D6167 && a2 == 0xE800000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F3F40C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4679616C70736964 && a2 == 0xEF657461446D6F72;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000747865 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA53670 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x776F64746E756F63 && a2 == 0xEF657461446F546ELL || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA53690 == a2)
  {

    return 4;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_24F3F42AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242670, &unk_24F9F2370);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  memset(v12, 0, sizeof(v12));
  v13 = 0;
  sub_24E61DA68(v10, v12, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F46FC();
  sub_24F92D108();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E6419D0(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v6 + 8))(v8, v5);
    sub_24E61DA68(v10, v12, qword_27F24EC90, &unk_24F93C1D0);
    sub_24F3F4780(v12, a2);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24F3F4750(v12);
}

uint64_t sub_24F3F44C0(uint64_t a1)
{
  v2 = sub_24F3F46FC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F44FC(uint64_t a1)
{
  v2 = sub_24F3F46FC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3F4570(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242680, &qword_24F9F2380);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F46FC();
  sub_24F92D128();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
  sub_24E6419D0(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
  sub_24F92CD48();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_24F3F46FC()
{
  result = qword_27F242678;
  if (!qword_27F242678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242678);
  }

  return result;
}

unint64_t sub_24F3F47CC()
{
  result = qword_27F242688;
  if (!qword_27F242688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242688);
  }

  return result;
}

unint64_t sub_24F3F4824()
{
  result = qword_27F242690;
  if (!qword_27F242690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242690);
  }

  return result;
}

unint64_t sub_24F3F487C()
{
  result = qword_27F242698[0];
  if (!qword_27F242698[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F242698);
  }

  return result;
}

uint64_t GSKTabChangeActionImplementation.perform(_:asPartOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for GSKTabChangeAction(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v21 - v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v13 = sub_24F92A9E8();
  v14 = sub_24F92B858();
  (*(*(v14 - 8) + 56))(v12, 1, 1, v14);
  sub_24F3F631C(a1, v9, type metadata accessor for GSKTabChangeAction);
  sub_24F92B7F8();

  v15 = sub_24F92B7E8();
  v16 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v17 = (v8 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  v19 = MEMORY[0x277D85700];
  v18[2] = v15;
  v18[3] = v19;
  v18[4] = *(a3 + 16);
  sub_24F3F4DEC(v9, v18 + v16);
  *(v18 + v17) = a2;
  *(v18 + ((v17 + 15) & 0xFFFFFFFFFFFFFFF8)) = v13;
  sub_24EA998B8(0, 0, v12, &unk_24F9F24A8, v18);

  return v13;
}

uint64_t sub_24F3F4B10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[9] = a6;
  v7[10] = a7;
  v7[7] = a4;
  v7[8] = a5;
  sub_24F92B7F8();
  v7[11] = sub_24F92B7E8();
  v9 = sub_24F92B778();

  return MEMORY[0x2822009F8](sub_24F3F4BAC, v9, v8);
}

uint64_t sub_24F3F4BAC()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[7];

  v6 = type metadata accessor for GSKTabChangeActionImplementation(0, v1, v4, v5);
  sub_24F3F4FDC(v3, v2, v6);
  v7 = sub_24E74EC40();
  swift_retain_n();
  v8 = sub_24F92BEF8();
  v9 = MEMORY[0x277D225C0];
  v0[5] = v7;
  v0[6] = v9;
  v0[2] = v8;
  sub_24F92A958();

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v10 = v0[1];

  return v10();
}

uint64_t sub_24F3F4CC4()
{
  v1 = type metadata accessor for GSKTabChangeAction(0);
  v2 = (*(*(v1 - 8) + 80) + 40) & ~*(*(v1 - 8) + 80);
  swift_unknownObjectRelease();
  if (*(v0 + v2 + 8) >= 0xCuLL)
  {
  }

  v3 = *(v1 + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F3F4DEC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GSKTabChangeAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24F3F4E50(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v6 = *(type metadata accessor for GSKTabChangeAction(0) - 8);
  v7 = (*(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = v1[2];
  v10 = v1[3];
  v11 = *(v1 + v8);
  v12 = *(v1 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_24E614970;

  return sub_24F3F4B10(a1, v9, v10, v1 + v7, v11, v12, v5);
}

uint64_t sub_24F3F4FDC(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v119 = a3;
  v5 = sub_24F928DD8();
  v114 = *(v5 - 8);
  v115 = v5;
  MEMORY[0x28223BE20](v5);
  v113 = &v90 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F927D88();
  v108 = *(v7 - 8);
  v109 = v7;
  MEMORY[0x28223BE20](v7);
  v106 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v107 = sub_24F927DC8();
  v105 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v104 = &v90 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GSKTabChangeAction(0);
  v99 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v100 = v11;
  v101 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_24F927DE8();
  v103 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v102 = &v90 - v14;
  v15 = sub_24F91F6B8();
  v93 = *(v15 - 8);
  v94 = v15;
  MEMORY[0x28223BE20](v15);
  v92 = &v90 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v95 = &v90 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v90 - v20;
  v22 = type metadata accessor for Player(0);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v90 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_24F928AD8();
  v25 = *(v111 - 1);
  MEMORY[0x28223BE20](v111);
  v110 = &v90 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v29 = &v90 - v28;
  MEMORY[0x28223BE20](v30);
  v32 = &v90 - v31;
  sub_24F928A98();
  sub_24F92A678();
  v96 = sub_24F92A6B8();
  v142[3] = v96;
  v142[4] = MEMORY[0x277D223D8];
  __swift_allocate_boxed_opaque_existential_1(v142);
  v118 = v32;
  sub_24F92A668();
  type metadata accessor for LocalPlayerProvider(0);
  sub_24F928F28();
  v33 = v126;
  swift_getKeyPath();
  *&v126 = v33;
  sub_24F3F6548(&qword_27F247200, type metadata accessor for LocalPlayerProvider, &protocol conformance descriptor for LocalPlayerProvider);
  sub_24F91FD88();

  v34 = OBJC_IVAR____TtC12GameStoreKit19LocalPlayerProvider__current;
  swift_beginAccess();
  sub_24F3F631C(v33 + v34, v24, type metadata accessor for Player);

  v35 = a1[1];
  v116 = a2;
  v112 = v24;
  if (v35 == 11)
  {
    v141 = 0;
    memset(v140, 0, sizeof(v140));
  }

  else
  {
    v91 = a1;
    v138 = *a1;
    v36 = v138;
    v139 = v35;
    *&v140[0] = StoreTab.Identifier.rawValue.getter();
    *(&v140[0] + 1) = v37;
    sub_24F92C7F8();
    v38 = sub_24F91F4A8();
    v39 = *(*(v38 - 8) + 56);
    v97 = v21;
    v39(v21, 1, 1, v38);
    *&v140[0] = v36;
    *(&v140[0] + 1) = v35;
    StoreTab.Identifier.gamesTabDestination(player:asPartOf:)(v24, a2, &v135);
    v40 = v135;
    if ((~v135 & 0xF000000000000007) != 0)
    {
      v41 = &type metadata for FlowDestination;
    }

    else
    {
      v40 = 0;
      v41 = 0;
      *(&v120 + 1) = 0;
      *&v121 = 0;
    }

    v42 = v95;
    *&v120 = v40;
    *(&v121 + 1) = v41;
    sub_24F928A98();
    v43 = sub_24F929D28();
    v45 = v44;
    v46 = type metadata accessor for FlowAction(0);
    v47 = swift_allocObject();
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageDataPageRenderMetrics) = 0;
    v48 = v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageData;
    *v48 = 0u;
    *(v48 + 16) = 0u;
    *(v48 + 32) = 0;
    v49 = (v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_appStateController);
    *v49 = 0;
    v49[1] = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_page) = 54;
    sub_24E60169C(v97, v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_pageUrl, &qword_27F228530, &unk_24F93C6E0);
    v50 = (v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerUrl);
    *v50 = 0;
    v50[1] = 0;
    v51 = v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_referrerData;
    *v51 = xmmword_24F9406F0;
    *(v51 + 24) = 0;
    *(v51 + 32) = 0;
    *(v51 + 16) = 0;
    *(v51 + 40) = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentationContext) = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_animationBehavior) = 0;
    *(v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_origin) = 0;
    v52 = (v47 + OBJC_IVAR____TtC12GameStoreKit10FlowAction_presentation);
    *v52 = v43;
    v52[1] = v45;
    sub_24E60169C(&v126, v140, &qword_27F235830, &qword_24F93B8C0);
    (*(v25 + 16))(v110, v29, v111);
    v53 = sub_24F929608();
    (*(*(v53 - 8) + 56))(v42, 1, 1, v53);
    v54 = (v47 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
    *v54 = 0u;
    v54[1] = 0u;
    sub_24E60169C(v140, &v132, &qword_27F235830, &qword_24F93B8C0);
    if (*(&v133 + 1))
    {
      v135 = v132;
      v136 = v133;
      v137 = v134;
    }

    else
    {
      v55 = v92;
      sub_24F91F6A8();
      v56 = sub_24F91F668();
      v58 = v57;
      (*(v93 + 8))(v55, v94);
      v130 = v56;
      v131 = v58;
      sub_24F92C7F8();
      sub_24E601704(&v132, &qword_27F235830, &qword_24F93B8C0);
    }

    sub_24E601704(v140, &qword_27F235830, &qword_24F93B8C0);
    v59 = v47 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
    v60 = v136;
    *v59 = v135;
    *(v59 + 16) = v60;
    *(v59 + 32) = v137;
    sub_24E65E0D4(v42, v47 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
    *(v47 + 16) = 0u;
    *(v47 + 32) = 0u;
    v61 = v111;
    (*(v25 + 32))(v47 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v110, v111);

    FlowAction.setPageData(_:)(&v120);

    (*(v25 + 8))(v29, v61);
    sub_24E601704(v97, &qword_27F228530, &unk_24F93C6E0);
    sub_24E601704(&v126, &qword_27F235830, &qword_24F93B8C0);
    sub_24E601704(&v120, &qword_27F2129B0, &unk_24F945320);
    v62 = sub_24F3F6548(&qword_27F216400, type metadata accessor for FlowAction, &protocol conformance descriptor for Action);
    *(v140 + 8) = v126;
    *&v140[0] = v47;
    *(&v140[1] + 1) = v46;
    v141 = v62;
    a1 = v91;
  }

  v63 = v116;
  if (*(a1 + 24) == 1)
  {
    sub_24F928A98();
    sub_24F92A688();
    *(&v136 + 1) = v96;
    v137 = MEMORY[0x277D223D8];
    __swift_allocate_boxed_opaque_existential_1(&v135);
    sub_24F92A668();
  }

  else
  {
    v137 = 0;
    v135 = 0u;
    v136 = 0u;
  }

  if (*(a1[2] + 16))
  {
    sub_24E74EC40();
    v110 = sub_24F92BEF8();
    v64 = v98;
    sub_24F927DD8();
    v65 = v102;
    sub_24F927E58();
    v111 = *(v103 + 8);
    (v111)(v64, v117);
    v66 = v101;
    sub_24F3F631C(a1, v101, type metadata accessor for GSKTabChangeAction);
    v67 = (*(v99 + 80) + 24) & ~*(v99 + 80);
    v68 = (v100 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
    v69 = swift_allocObject();
    *(v69 + 16) = *(v119 + 16);
    sub_24F3F4DEC(v66, v69 + v67);
    *(v69 + v68) = v63;
    v128 = sub_24F3F6494;
    v129 = v69;
    *&v126 = MEMORY[0x277D85DD0];
    *(&v126 + 1) = 1107296256;
    *&v127 = sub_24EAF8248;
    *(&v127 + 1) = &block_descriptor_148;
    v70 = _Block_copy(&v126);

    v71 = v104;
    sub_24F927DA8();
    *&v132 = MEMORY[0x277D84F90];
    sub_24F3F6548(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E8582A8();
    v72 = v63;
    v73 = v106;
    v74 = v109;
    sub_24F92C6A8();
    v75 = v110;
    MEMORY[0x253051820](v65, v71, v73, v70);
    _Block_release(v70);

    v76 = v73;
    v63 = v72;
    (*(v108 + 8))(v76, v74);
    (*(v105 + 8))(v71, v107);
    (v111)(v65, v117);
  }

  sub_24E60169C(v142, v123, qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(v140, v124, qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(&v135, v125, qword_27F21B590, &unk_24F93BE30);
  sub_24E60169C(v123, &v126, qword_27F21B590, &unk_24F93BE30);
  v120 = v126;
  v121 = v127;
  v122 = v128;
  if (*(&v127 + 1))
  {
    sub_24E612C80(&v120, &v132);
    v77 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_24E61950C(0, v77[2] + 1, 1, v77);
    }

    v79 = v77[2];
    v78 = v77[3];
    if (v79 >= v78 >> 1)
    {
      v77 = sub_24E61950C((v78 > 1), v79 + 1, 1, v77);
    }

    v77[2] = v79 + 1;
    sub_24E612C80(&v132, &v77[5 * v79 + 4]);
  }

  else
  {
    sub_24E601704(&v120, qword_27F21B590, &unk_24F93BE30);
    v77 = MEMORY[0x277D84F90];
  }

  sub_24E60169C(v124, &v126, qword_27F21B590, &unk_24F93BE30);
  v120 = v126;
  v121 = v127;
  v122 = v128;
  if (*(&v127 + 1))
  {
    sub_24E612C80(&v120, &v132);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_24E61950C(0, v77[2] + 1, 1, v77);
    }

    v81 = v77[2];
    v80 = v77[3];
    if (v81 >= v80 >> 1)
    {
      v77 = sub_24E61950C((v80 > 1), v81 + 1, 1, v77);
    }

    v77[2] = v81 + 1;
    sub_24E612C80(&v132, &v77[5 * v81 + 4]);
  }

  else
  {
    sub_24E601704(&v120, qword_27F21B590, &unk_24F93BE30);
  }

  sub_24E60169C(v125, &v126, qword_27F21B590, &unk_24F93BE30);
  v120 = v126;
  v121 = v127;
  v122 = v128;
  if (*(&v127 + 1))
  {
    sub_24E612C80(&v120, &v132);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v77 = sub_24E61950C(0, v77[2] + 1, 1, v77);
    }

    v83 = v77[2];
    v82 = v77[3];
    if (v83 >= v82 >> 1)
    {
      v77 = sub_24E61950C((v82 > 1), v83 + 1, 1, v77);
    }

    v77[2] = v83 + 1;
    sub_24E612C80(&v132, &v77[5 * v83 + 4]);
  }

  else
  {
    sub_24E601704(&v120, qword_27F21B590, &unk_24F93BE30);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590, &unk_24F93BE30);
  swift_arrayDestroy();
  sub_24F928A98();
  v84 = v113;
  sub_24F928DC8();
  v85 = v115;
  *(&v127 + 1) = v115;
  v128 = MEMORY[0x277D21D10];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v126);
  v87 = v114;
  (*(v114 + 16))(boxed_opaque_existential_1, v84, v85);
  swift_getWitnessTable();
  v88 = sub_24F1489C4(&v126, v63);
  (*(v87 + 8))(v84, v85);
  sub_24E71BF38(v112);
  sub_24E601704(v140, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(&v135, qword_27F21B590, &unk_24F93BE30);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  sub_24E601704(v142, qword_27F21B590, &unk_24F93BE30);
  return v88;
}

uint64_t sub_24F3F6128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_24F928AD8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F928DD8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928A98();

  sub_24F928DC8();
  v15[3] = v6;
  v15[4] = MEMORY[0x277D21D10];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v15);
  (*(v7 + 16))(boxed_opaque_existential_1, v9, v6);
  type metadata accessor for GSKTabChangeActionImplementation(0, a3, v11, v12);
  swift_getWitnessTable();
  sub_24F1489C4(v15, a2);

  (*(v7 + 8))(v9, v6);
  return __swift_destroy_boxed_opaque_existential_1(v15);
}

uint64_t sub_24F3F631C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3F6384()
{
  v1 = type metadata accessor for GSKTabChangeAction(0);
  v2 = (*(*(v1 - 8) + 80) + 24) & ~*(*(v1 - 8) + 80);
  if (*(v0 + v2 + 8) >= 0xCuLL)
  {
  }

  v3 = *(v1 + 28);
  v4 = sub_24F928AD8();
  (*(*(v4 - 8) + 8))(v0 + v2 + v3, v4);

  return swift_deallocObject();
}

uint64_t sub_24F3F6494()
{
  v1 = *(v0 + 16);
  v2 = *(type metadata accessor for GSKTabChangeAction(0) - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_24F3F6128(v0 + v3, v4, v1);
}

uint64_t block_copy_helper_148(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24F3F6548(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3F65A4(uint64_t a1, uint64_t a2, int *a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[6];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[7];
    goto LABEL_9;
  }

  v14 = type metadata accessor for CommonCardAttributes(0);
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[8];

  return v15(v16, a2, v14);
}

uint64_t sub_24F3F673C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
    return result;
  }

  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[6];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[7];
    goto LABEL_7;
  }

  v14 = type metadata accessor for CommonCardAttributes(0);
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[8];

  return v15(v16, a2, a2, v14);
}

uint64_t type metadata accessor for MediaCard(uint64_t a1)
{
  result = qword_27F242720;
  if (!qword_27F242720)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24F3F690C(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E65B038(319, &qword_27F213EA0, &qword_27F213EA8, &unk_24F93D030);
    if (v2 <= 0x3F)
    {
      sub_24E65B038(319, &qword_27F215458, &qword_27F215460, &qword_24F942C00);
      if (v3 <= 0x3F)
      {
        sub_24F3F6A98(319, &qword_27F213EB0, MEMORY[0x277D21F70], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for CommonCardAttributes(319);
          if (v5 <= 0x3F)
          {
            sub_24F3F6A98(319, &qword_27F2191D8, MEMORY[0x277D21C48], MEMORY[0x277D83940]);
            if (v6 <= 0x3F)
            {
              sub_24F3F6AFC();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_24F3F6A98(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_24F3F6AFC()
{
  if (!qword_27F2189E8)
  {
    v0 = sub_24F92C4A8();
    if (!v1)
    {
      atomic_store(v0, &qword_27F2189E8);
    }
  }
}

uint64_t sub_24F3F6B4C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for CommonCardAttributes(0);
  MEMORY[0x28223BE20](v34);
  v35 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v7);
  v9 = v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242740, &qword_24F9F2610);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = v32 - v11;
  v13 = type metadata accessor for MediaCard(0);
  MEMORY[0x28223BE20](v13);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v15 + 40) = 0u;
  *&v45 = 0;
  v43 = 0u;
  v44 = 0u;
  *(v15 + 56) = 0u;
  *(v15 + 9) = 0;
  v39 = v15 + 40;
  sub_24E61DA68(&v43, (v15 + 40), qword_27F21B590, &unk_24F93BE30);
  v41 = v13;
  v16 = *(v13 + 24);
  v17 = sub_24F92A6D8();
  v18 = *(*(v17 - 8) + 56);
  v42 = v16;
  v18(&v15[v16], 1, 1, v17);
  v19 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_24F3F76A4();
  v20 = v38;
  sub_24F92D108();
  if (v20)
  {
    v22 = v39;
    __swift_destroy_boxed_opaque_existential_1(v40);
    sub_24E601704(v22, qword_27F24EC90, &unk_24F93C1D0);
    return sub_24E601704(&v15[v42], &qword_27F215440, &unk_24F942BD0);
  }

  else
  {
    v32[0] = v6;
    v32[1] = v7;
    v38 = v9;
    v21 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v46 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v23 = v44;
    *v15 = v43;
    *(v15 + 1) = v23;
    *(v15 + 4) = v45;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v46 = 1;
    sub_24E61D970();
    sub_24F92CC68();
    v24 = v21;
    sub_24E61DA68(&v43, v39, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v43) = 2;
    sub_24E65CAA0();
    v25 = v38;
    sub_24F92CC68();
    sub_24E61DA68(v25, &v15[v42], &qword_27F215440, &unk_24F942BD0);
    sub_24F929608();
    LOBYTE(v43) = 3;
    sub_24F3F8188(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v26 = v32[0];
    sub_24F92CC18();
    v27 = v41;
    sub_24E6009C8(v26, &v15[v41[7]], &qword_27F213E68, &unk_24F93BC80);
    LOBYTE(v43) = 4;
    sub_24F3F8188(&qword_27F219690, type metadata accessor for CommonCardAttributes, &unk_24F9600E0);
    v28 = v35;
    sub_24F92CC68();
    sub_24E706B90(v28, &v15[v27[8]]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219538, &qword_24F950560);
    v46 = 5;
    sub_24F3F76F8();
    sub_24F92CC68();
    *&v15[v27[9]] = v43;
    v46 = 6;
    sub_24E6E8474();
    sub_24F92CC18();
    (*(v24 + 8))(v12, v37);
    v29 = &v15[v27[10]];
    v30 = v44;
    *v29 = v43;
    *(v29 + 1) = v30;
    *(v29 + 2) = v45;
    sub_24F3F77AC(v15, v33, type metadata accessor for MediaCard);
    __swift_destroy_boxed_opaque_existential_1(v40);
    return sub_24F3F7814(v15, type metadata accessor for MediaCard);
  }
}

uint64_t sub_24F3F7340()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x6575676573;
    if (v1 != 1)
    {
      v5 = 0x4D747865746E6F63;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0x777472416E6F6369;
    if (v1 != 5)
    {
      v2 = 0xD000000000000023;
    }

    v3 = 0xD000000000000011;
    if (v1 != 3)
    {
      v3 = 0xD000000000000014;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_24F3F7428@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3F7F3C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3F7450(uint64_t a1)
{
  v2 = sub_24F3F76A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F748C(uint64_t a1)
{
  v2 = sub_24F3F76A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24F3F7500@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215440, &unk_24F942BD0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v9 - v6;
  sub_24E60169C(v2 + *(a1 + 24), &v9 - v6, &qword_27F215440, &unk_24F942BD0);
  return sub_24E6009C8(v7, a2, &qword_27F215460, &qword_24F942C00);
}

uint64_t sub_24F3F75D8(uint64_t a1)
{
  *(a1 + 8) = sub_24F3F8188(&qword_27F21ACE0, type metadata accessor for MediaCard, &unk_24F9F25CC);
  result = sub_24F3F8188(&qword_27F242730, type metadata accessor for MediaCard, &unk_24F9F2588);
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_24F3F76A4()
{
  result = qword_27F242748;
  if (!qword_27F242748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242748);
  }

  return result;
}

unint64_t sub_24F3F76F8()
{
  result = qword_27F227788;
  if (!qword_27F227788)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F219538, &qword_24F950560);
    sub_24F3F8188(&qword_27F214018, MEMORY[0x277D21C48], MEMORY[0x277D21C60]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F227788);
  }

  return result;
}

uint64_t sub_24F3F77AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24F3F7814(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24F3F7888()
{
  result = qword_27F242750;
  if (!qword_27F242750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242750);
  }

  return result;
}

unint64_t sub_24F3F78E0()
{
  result = qword_27F242758;
  if (!qword_27F242758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242758);
  }

  return result;
}

unint64_t sub_24F3F7938()
{
  result = qword_27F242760;
  if (!qword_27F242760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F242760);
  }

  return result;
}

double sub_24F3F798C()
{
  v0 = type metadata accessor for CommonCardAttributes(0);
  v1 = (v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v42 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v42 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215460, &qword_24F942C00);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v42 - v8;
  v10 = sub_24F91F6B8();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = v42 - v15;
  v17 = type metadata accessor for MediaCard(0);
  __swift_allocate_value_buffer(v17, qword_27F39E520);
  v18 = __swift_project_value_buffer(v17, qword_27F39E520);
  sub_24F91F6A8();
  (*(v11 + 16))(v13, v16, v10);
  sub_24F3F8188(&qword_27F2551B0, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_24F92C7F8();
  (*(v11 + 8))(v16, v10);
  v19 = sub_24F92A6D8();
  memset(v44, 0, sizeof(v44));
  v45 = 0;
  (*(*(v19 - 8) + 56))(v9, 1, 1, v19);
  v20 = sub_24F929608();
  (*(*(v20 - 8) + 56))(v6, 1, 1, v20);
  *v3 = 6;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  v21 = v1[8];
  v22 = sub_24F9289E8();
  v23 = *(*(v22 - 8) + 56);
  v23(&v3[v21], 1, 1, v22);
  v23(&v3[v1[9]], 1, 1, v22);
  v24 = v1[10];
  v25 = type metadata accessor for GSKVideo(0);
  (*(*(v25 - 8) + 56))(&v3[v24], 1, 1, v25);
  v26 = &v3[v1[11]];
  *v26 = 0;
  *(v26 + 1) = 0;
  v23(&v3[v1[12]], 1, 1, v22);
  v27 = &v3[v1[13]];
  *v27 = 0;
  *(v27 + 1) = 0;
  v28 = &v3[v1[14]];
  *v28 = 0;
  *(v28 + 1) = 0;
  v29 = &v3[v1[15]];
  *v29 = 0;
  *(v29 + 1) = 0;
  v30 = &v3[v1[16]];
  *v30 = 0;
  *(v30 + 1) = 0;
  v31 = &v3[v1[17]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &v3[v1[18]];
  *v32 = 0;
  *(v32 + 1) = 0;
  v33 = v1[19];
  v34 = type metadata accessor for CommonCardAttributes.CardBackgroundColor(0);
  (*(*(v34 - 8) + 56))(&v3[v33], 1, 1, v34);
  v35 = &v3[v1[20]];
  *v35 = 0;
  *(v35 + 1) = 0;
  v36 = &v3[v1[21]];
  v43 = 0;
  memset(v42, 0, sizeof(v42));
  *v36 = 0u;
  *(v36 + 16) = 0u;
  *(v36 + 32) = 0;
  sub_24E61DA68(v42, v36, qword_27F21B590, &unk_24F93BE30);
  v37 = v1[22];
  v38 = type metadata accessor for CardPrimaryActionType(0);
  (*(*(v38 - 8) + 56))(&v3[v37], 1, 1, v38);
  v3[v1[23]] = 2;
  v39 = v47;
  *v18 = v46;
  *(v18 + 16) = v39;
  *(v18 + 32) = v48;
  *(v18 + 56) = 0u;
  *(v18 + 72) = 0;
  *(v18 + 40) = 0u;
  sub_24E61DA68(v44, v18 + 40, qword_27F21B590, &unk_24F93BE30);
  sub_24E6009C8(v9, v18 + v17[6], &qword_27F215460, &qword_24F942C00);
  sub_24E6009C8(v6, v18 + v17[7], &qword_27F213E68, &unk_24F93BC80);
  sub_24E706B90(v3, v18 + v17[8]);
  *(v18 + v17[9]) = MEMORY[0x277D84F90];
  v40 = (v18 + v17[10]);
  result = 0.0;
  v40[1] = 0u;
  v40[2] = 0u;
  *v40 = 0u;
  return result;
}

uint64_t sub_24F3F7F3C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4D747865746E6F63 && a2 == 0xEB00000000756E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x800000024FA46110 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x777472416E6F6369 && a2 == 0xEC000000736B726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000023 && 0x800000024FA45EC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24F3F8188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3F81FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v27 = a2;
  v3 = sub_24F925688();
  MEMORY[0x28223BE20](v3 - 8);
  v21[1] = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9256A8();
  v26 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242768, &qword_24F9F27B8);
  v22 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242770, &qword_24F9F27C0);
  v12 = *(v11 - 8);
  v23 = v11;
  v24 = v12;
  MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  sub_24F9257B8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242778, &qword_24F9F27C8);
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242780, &qword_24F9F27D0);
  v16 = sub_24E602068(&qword_27F242788, &qword_27F242780, &qword_24F9F27D0, MEMORY[0x277CE1138]);
  v28 = v15;
  v29 = v16;
  swift_getOpaqueTypeConformance2();
  sub_24F923438();
  sub_24F925678();
  sub_24F925698();
  v17 = sub_24E602068(&qword_27F242790, &qword_27F242768, &qword_24F9F27B8, MEMORY[0x277CDD6E0]);
  v18 = MEMORY[0x277CDE478];
  sub_24F926698();
  (*(v26 + 8))(v7, v5);
  (*(v22 + 8))(v10, v8);
  v28 = v8;
  v29 = v5;
  v30 = v17;
  v31 = v18;
  swift_getOpaqueTypeConformance2();
  v19 = v23;
  sub_24F9265A8();
  return (*(v24 + 8))(v14, v19);
}

uint64_t sub_24F3F85CC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242780, &qword_24F9F27D0);
  MEMORY[0x28223BE20](v2);
  v4 = v7 - v3;
  *v4 = sub_24F9249A8();
  *(v4 + 1) = 0x4020000000000000;
  v4[16] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242798, &qword_24F9F27D8);
  v7[3] = *(a1 + 16);
  swift_getKeyPath();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22B618, &qword_24F98BE00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F220208, &qword_24F9629D0);
  sub_24E602068(&qword_27F2427A0, &qword_27F22B618, &qword_24F98BE00, MEMORY[0x277D83980]);
  v5 = sub_24E66C1E0();
  v7[1] = &type metadata for GSKComponentView;
  v7[2] = v5;
  swift_getOpaqueTypeConformance2();
  sub_24F927228();
  sub_24E602068(&qword_27F242788, &qword_27F242780, &qword_24F9F27D0, MEMORY[0x277CE1138]);
  sub_24F9265C8();
  return sub_24F3F8A24(v4);
}

uint64_t sub_24F3F87DC(uint64_t *a1)
{
  v2 = sub_24F929888();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  v15 = type metadata accessor for RibbonBarItem(0);
  v16 = sub_24F3F8A8C(&qword_27F2427A8, type metadata accessor for RibbonBarItem, &protocol conformance descriptor for RibbonBarItem);
  v14 = v6;
  type metadata accessor for GSKComponentContentBuilder(0);
  sub_24F3F8A8C(&qword_27F21C648, type metadata accessor for GSKComponentContentBuilder, &unk_24F9FB114);

  v12 = sub_24F923598();
  v13 = v7 & 1;
  v8 = OBJC_IVAR____TtC12GameStoreKit13RibbonBarItem_id;
  v11[3] = MEMORY[0x277D84030];
  v11[0] = swift_allocObject();
  sub_24E65864C(v6 + v8, v11[0] + 16);
  memset(v10, 0, sizeof(v10));
  sub_24F929828();
  sub_24E857CC8(v10);
  sub_24E857CC8(v11);
  sub_24E66C1E0();
  sub_24F925EE8();
  (*(v3 + 8))(v5, v2);
  return sub_24E88F154(&v12);
}

uint64_t sub_24F3F8A24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242780, &qword_24F9F27D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24F3F8A8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24F3F8AD4()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_24F3F8B0C()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242770, &qword_24F9F27C0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F242768, &qword_24F9F27B8);
  sub_24F9256A8();
  sub_24E602068(&qword_27F242790, &qword_27F242768, &qword_24F9F27B8, MEMORY[0x277CDD6E0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t ChallengesHistoryGamesShelfIntent.pageID.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t ChallengesHistoryGamesShelfIntent.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v6 = *(v1 + 24);
  v7 = *(v1 + 25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x444965676170;
  v9 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v9;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = v4;
  *(inited + 56) = v3;
  strcpy((inited + 88), "gameHistories");
  *(inited + 102) = -4864;
  *(inited + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998, &qword_24F9F2830);
  v10 = sub_24F3F95E8(&qword_27F2179A0, &qword_27F2179A8, &protocol conformance descriptor for ChallengesHistoryData.GameHistory, MEMORY[0x277D22590]);
  *(inited + 104) = v5;
  *(inited + 136) = v10;
  *(inited + 144) = 0x796C6E4F6E6977;
  *(inited + 152) = 0xE700000000000000;
  v11 = MEMORY[0x277D22598];
  *(inited + 184) = MEMORY[0x277D839B0];
  *(inited + 192) = v11;
  *(inited + 160) = v6;
  *(inited + 200) = 0x5479616C70736964;
  *(inited + 208) = 0xEB00000000657079;
  *(inited + 240) = &type metadata for ChallengesShelfDisplayType;
  *(inited + 248) = sub_24E7C96C0();
  *(inited + 216) = v7;

  v12 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v12;
  return result;
}

uint64_t sub_24F3F8E7C()
{
  v1 = 0x444965676170;
  v2 = 0x796C6E4F6E6977;
  if (*v0 != 2)
  {
    v2 = 0x5479616C70736964;
  }

  if (*v0)
  {
    v1 = 0x74736948656D6167;
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

uint64_t sub_24F3F8F08@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3F98BC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3F8F30(uint64_t a1)
{
  v2 = sub_24F3F9594();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3F8F6C(uint64_t a1)
{
  v2 = sub_24F3F9594();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ChallengesHistoryGamesShelfIntent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427B0, &qword_24F9F2838);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v12 = *(v1 + 16);
  v7 = *(v1 + 24);
  v11[0] = *(v1 + 25);
  v11[1] = v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F9594();
  sub_24F92D128();
  v19 = 0;
  v8 = v13;
  sub_24F92CD08();
  if (!v8)
  {
    v9 = v11[0];
    v14 = v12;
    v18 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998, &qword_24F9F2830);
    sub_24F3F95E8(&qword_27F2179D0, &qword_27F2179D8, &protocol conformance descriptor for ChallengesHistoryData.GameHistory, MEMORY[0x277D83948]);
    sub_24F92CD48();
    v17 = 2;
    sub_24F92CD18();
    v16 = v9;
    v15 = 3;
    sub_24F3F9670();
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ChallengesHistoryGamesShelfIntent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427C8, &qword_24F9F2840);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3F9594();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v24 = 0;
  v9 = sub_24F92CC28();
  v11 = v10;
  v18 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F217998, &qword_24F9F2830);
  v23 = 1;
  sub_24F3F95E8(&qword_27F2179F8, &qword_27F217A00, &protocol conformance descriptor for ChallengesHistoryData.GameHistory, MEMORY[0x277D83978]);
  sub_24F92CC68();
  v17 = v19;
  v22 = 2;
  HIDWORD(v16) = sub_24F92CC38();
  v20 = 3;
  sub_24F368F98();
  sub_24F92CC68();
  v13 = BYTE4(v16) & 1;
  (*(v6 + 8))(v8, v5);
  v14 = v21;
  v15 = v17;
  *a2 = v18;
  *(a2 + 8) = v11;
  *(a2 + 16) = v15;
  *(a2 + 24) = v13;
  *(a2 + 25) = v14;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_24F3F9594()
{
  result = qword_27F2427B8;
  if (!qword_27F2427B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427B8);
  }

  return result;
}

uint64_t sub_24F3F95E8(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F217998, &qword_24F9F2830);
    sub_24F3F96C4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_24F3F9670()
{
  result = qword_27F2427C0;
  if (!qword_27F2427C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427C0);
  }

  return result;
}

uint64_t sub_24F3F96C4(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ChallengesHistoryData.GameHistory(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24F3F9708(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 26))
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

uint64_t sub_24F3F9750(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 26) = 1;
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

    *(result + 26) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_24F3F97B8()
{
  result = qword_27F2427D0;
  if (!qword_27F2427D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427D0);
  }

  return result;
}

unint64_t sub_24F3F9810()
{
  result = qword_27F2427D8;
  if (!qword_27F2427D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427D8);
  }

  return result;
}

unint64_t sub_24F3F9868()
{
  result = qword_27F2427E0;
  if (!qword_27F2427E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2427E0);
  }

  return result;
}

uint64_t sub_24F3F98BC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444965676170 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74736948656D6167 && a2 == 0xED0000736569726FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x796C6E4F6E6977 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x5479616C70736964 && a2 == 0xEB00000000657079)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_24F3F9A54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v14 = a1;
  v16 = a2;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427E8, &unk_24F9F2B68);
  v17 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = v11 - v3;
  v12 = "GameOverlaySupportsSocial";
  v20 = *v2;
  LOBYTE(v21) = *(v2 + 16);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F2363B0, &unk_24F94C9C0);
  sub_24F927198();
  v11[3] = v25;
  v19 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427F0, &qword_24F9F2B78);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2427F8, &qword_24F9F2B80);
  v7 = sub_24E602068(&qword_27F242800, &qword_27F2427F0, &qword_24F9F2B78, MEMORY[0x277CE04B0]);
  v8 = sub_24E602068(&qword_27F242808, &qword_27F2427F8, &qword_24F9F2B80, MEMORY[0x277CE14C0]);
  sub_24F926568();

  v20 = *(v2 + 24);
  LOBYTE(v21) = *(v2 + 40);
  sub_24F927198();
  v18 = v2;
  *&v20 = v5;
  *(&v20 + 1) = v6;
  v21 = MEMORY[0x277CE0BD8];
  v22 = v7;
  v23 = v8;
  v24 = MEMORY[0x277CE0BC8];
  swift_getOpaqueTypeConformance2();
  v9 = v15;
  sub_24F926568();

  return (*(v17 + 8))(v4, v9);
}

uint64_t sub_24F3F9DF4@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-v11 - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14 - 8];
  MEMORY[0x28223BE20](v16);
  v18 = &v29[-v17 - 8];
  sub_24F9232B8();
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  sub_24F926F78();
  v20 = *a1;
  v30 = a1[3];
  v31 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  *(v21 + 41) = *(a1 + 25);
  sub_24F373C50(&v31, v29);

  sub_24F373C50(&v30, v29);

  sub_24F926F88();
  v23 = *(v7 + 16);
  v23(v12, v18, v6);
  v23(v9, v15, v6);
  v24 = v28;
  v23(v28, v12, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242810, &qword_24F9F2B88);
  v23(&v24[*(v25 + 48)], v9, v6);
  v26 = *(v7 + 8);
  v26(v15, v6);
  v26(v18, v6);
  v26(v9, v6);
  return (v26)(v12, v6);
}

void sub_24F3FA180()
{
  v0 = [objc_opt_self() sharedCoordinator];
  [v0 notify];
}

double sub_24F3FA1E0@<D0>(uint64_t a1@<X8>)
{
  result = 8.91463799e252;
  *a1 = xmmword_24F9F2A80;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_24F3FA200(uint64_t a1@<X8>)
{
  *a1 = 0xD00000000000003DLL;
  *(a1 + 8) = 0x800000024FA74E00;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t sub_24F3FA230@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v29[-v4 - 8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222D08, &unk_24F973580);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v29[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v10);
  v12 = &v29[-v11 - 8];
  MEMORY[0x28223BE20](v13);
  v15 = &v29[-v14 - 8];
  MEMORY[0x28223BE20](v16);
  v18 = &v29[-v17 - 8];
  sub_24F9232B8();
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v5, 0, 1, v19);
  sub_24F926F78();
  v20 = *a1;
  v30 = a1[3];
  v31 = v20;
  v21 = swift_allocObject();
  v22 = *(a1 + 1);
  v21[1] = *a1;
  v21[2] = v22;
  *(v21 + 41) = *(a1 + 25);
  sub_24F373C50(&v31, v29);

  sub_24F373C50(&v30, v29);

  sub_24F926F88();
  v23 = *(v7 + 16);
  v23(v12, v18, v6);
  v23(v9, v15, v6);
  v24 = v28;
  v23(v28, v12, v6);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242810, &qword_24F9F2B88);
  v23(&v24[*(v25 + 48)], v9, v6);
  v26 = *(v7 + 8);
  v26(v15, v6);
  v26(v18, v6);
  v26(v9, v6);
  return (v26)(v12, v6);
}

uint64_t sub_24F3FA5BC()
{
  v18 = sub_24F927D88();
  v21 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v1 = &v16 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_24F927DC8();
  v19 = *(v2 - 8);
  v20 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DE8();
  v17 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - v10;
  sub_24E74EC40();
  v12 = sub_24F92BEF8();
  sub_24F927DD8();
  sub_24F927E58();
  v16 = *(v6 + 8);
  v16(v8, v5);
  aBlock[4] = sub_24F3FA92C;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_149;
  v13 = _Block_copy(aBlock);
  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E858250();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E602068(&qword_27F222940, &qword_27F222310, &unk_24F951080, MEMORY[0x277D83970]);
  v14 = v18;
  sub_24F92C6A8();
  MEMORY[0x253051820](v11, v4, v1, v13);
  _Block_release(v13);

  (*(v21 + 8))(v1, v14);
  (*(v19 + 8))(v4, v20);
  return (v16)(v11, v17);
}

double sub_24F3FA940@<D0>(uint64_t a1@<X8>)
{
  result = 2.43998717e-152;
  *a1 = xmmword_24F9F2A90;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

double sub_24F3FA960@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x726574614CLL;
  *a1 = xmmword_24F9F2AA0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
  return result;
}

void sub_24F3FA980(uint64_t a1@<X8>)
{
  *a1 = 0xD000000000000078;
  *(a1 + 8) = 0x800000024FA74D80;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x277D84F90];
}

uint64_t block_copy_helper_149(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroyTm_68()
{

  return swift_deallocObject();
}

uint64_t sub_24F3FAB20()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2427E8, &unk_24F9F2B68);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2427F8, &qword_24F9F2B80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2427F0, &qword_24F9F2B78);
  sub_24E602068(&qword_27F242800, &qword_27F2427F0, &qword_24F9F2B78, MEMORY[0x277CE04B0]);
  sub_24E602068(&qword_27F242808, &qword_27F2427F8, &qword_24F9F2B80, MEMORY[0x277CE14C0]);
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

void sub_24F3FAC70(id a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  *&v278 = a3;
  *&v277 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213FB0, &qword_24F93E6B0);
  MEMORY[0x28223BE20](v6 - 8);
  v261 = &v251 - v7;
  v274 = sub_24F9289E8();
  v273 = *(v274 - 8);
  MEMORY[0x28223BE20](v274);
  v260 = &v251 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v272 = &v251 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F247220, &unk_24F9DFEB0);
  MEMORY[0x28223BE20](v11 - 8);
  v271 = &v251 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22EC30, &qword_24F939880);
  MEMORY[0x28223BE20](v13 - 8);
  v263 = &v251 - v14;
  v15 = type metadata accessor for Game(0);
  MEMORY[0x28223BE20](v15 - 8);
  v266 = &v251 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v265 = sub_24F91F648();
  v264 = *(v265 - 8);
  MEMORY[0x28223BE20](v265);
  v258 = &v251 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v259 = &v251 - v19;
  MEMORY[0x28223BE20](v20);
  v262 = &v251 - v21;
  MEMORY[0x28223BE20](v22);
  v256 = &v251 - v23;
  MEMORY[0x28223BE20](v24);
  v257 = &v251 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E220, &unk_24F9F2E30);
  MEMORY[0x28223BE20](v26 - 8);
  v270 = &v251 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F228530, &unk_24F93C6E0);
  MEMORY[0x28223BE20](v28 - 8);
  v251 = &v251 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E170, &unk_24F9EBA60);
  *&v31 = MEMORY[0x28223BE20](v30 - 8).n128_u64[0];
  v275 = &v251 - v32;
  v33 = [a1 playerID];
  v34 = sub_24F92B0D8();
  v36 = v35;

  v269 = v34;
  *a4 = v34;
  a4[1] = v36;
  v268 = v36;
  v37 = [a1 displayNameWithOptions_];
  v38 = sub_24F92B0D8();
  v40 = v39;

  v41 = type metadata accessor for Player(0);
  v42 = (a4 + *(v41 + 28));
  v267 = v38;
  *v42 = v38;
  v42[1] = v40;
  v276 = v40;

  v43 = [a1 inboxEntry];
  v279 = a4;
  v280 = a1;
  v281 = v41;
  if (v43)
  {
    v44 = v43;
    v45 = [v43 friendCode];
    v46 = sub_24F92B0D8();
    v48 = v47;

    v49 = [v44 senderHandle];
    v50 = sub_24F92B0D8();
    v52 = v51;

    v53 = [v44 contactID];
    if (v53)
    {
      v54 = v53;
      v55 = sub_24F92B0D8();
      v57 = v56;
    }

    else
    {
      v55 = 0;
      v57 = 0;
    }

    v59 = [v44 contactName];
    if (v59)
    {
      v60 = v59;
      v61 = sub_24F92B0D8();
      v63 = v62;

      a4 = v279;
    }

    else
    {

      v61 = 0;
      v63 = 0;
    }

    v64 = (a4 + v281[15]);
    *v64 = v46;
    v64[1] = v48;
    v64[2] = v50;
    v64[3] = v52;
    v64[4] = v55;
    v64[5] = v57;
    v64[6] = v61;
    v64[7] = v63;
    a1 = v280;
  }

  else
  {
    v58 = (a4 + *(v41 + 60));
    v58[2] = 0u;
    v58[3] = 0u;
    *v58 = 0u;
    v58[1] = 0u;
  }

  v65 = [a1 contact];
  if (v65)
  {
    v66 = v65;
    v67 = [v65 _gkCompositeName];
    v68 = sub_24F92B0D8();
    v70 = v69;

    v71 = v281;
  }

  else
  {
    v68 = 0;
    v71 = v281;
    v72 = (a4 + v281[15]);
    if (v72[1])
    {
      v70 = 0;
      if (v72[7])
      {
        v68 = v72[6];
      }
    }

    else
    {
      v70 = 0;
    }
  }

  v73 = (a4 + v71[8]);
  *v73 = v68;
  v73[1] = v70;
  v74 = [a1 contact];
  if (v74)
  {
    v75 = v74;
    v76 = [v74 namePrefix];
    v255 = sub_24F92B0D8();
    v254 = v77;

    v78 = [v75 givenName];
    v253 = sub_24F92B0D8();
    v252 = v79;

    v80 = [v75 middleName];
    v81 = sub_24F92B0D8();
    v83 = v82;

    v84 = [v75 familyName];
    v85 = sub_24F92B0D8();
    v87 = v86;

    v88 = [v75 nameSuffix];
    v89 = sub_24F92B0D8();
    v91 = v90;

    v92 = [v75 nickname];
    v93 = sub_24F92B0D8();
    v95 = v94;

    v96 = v252;
    v97 = v253;
    v98 = v254;
    v99 = v255;
  }

  else
  {
    v99 = 0;
    v97 = 0;
    v96 = 0;
    v81 = 0;
    v83 = 0;
    v85 = 0;
    v87 = 0;
    v89 = 0;
    v91 = 0;
    v93 = 0;
    v95 = 0;
    v98 = 1;
  }

  v100 = v281;
  v101 = v279;
  v102 = (v279 + v281[9]);
  *v102 = v99;
  v102[1] = v98;
  v102[2] = v97;
  v102[3] = v96;
  v102[4] = v81;
  v102[5] = v83;
  v102[6] = v85;
  v102[7] = v87;
  v102[8] = v89;
  v102[9] = v91;
  v103 = v277;
  v104 = v278;
  v102[10] = v93;
  v102[11] = v95;
  v105 = v280;
  if (!v104)
  {
    v106 = [v280 contact];
    if (v106)
    {
      v107 = v106;
      v103 = sub_24EEA5788();
      v104 = v108;
    }

    else
    {
      v103 = 0;
      v104 = 0;
    }

    v101 = v279;
    v100 = v281;
  }

  v109 = (v101 + v100[10]);
  *v109 = v103;
  v109[1] = v104;

  v110 = [v105 contact];
  if (v110)
  {
    v111 = v110;
    v112 = [v110 phoneNumberStrings];

    v113 = sub_24F92B5A8();
  }

  else
  {
    v113 = 0;
  }

  *(v101 + v100[11]) = v113;
  v114 = [v105 contact];
  if (v114)
  {
    v115 = v114;
    v116 = [v114 emailAddressStrings];

    v117 = sub_24F92B5A8();
  }

  else
  {
    v117 = 0;
  }

  *(v101 + v100[12]) = v117;
  v118 = v278;
  if (!v278)
  {
    v119 = [v105 contact];
    if (v119)
    {
      v120 = v119;
      *&v277 = sub_24EEA5788();
      v118 = v121;
    }

    else
    {
      *&v277 = 0;
      v118 = 0;
    }
  }

  v122 = [objc_opt_self() sharedInstance];
  v123 = [v122 providerManager];

  v124 = [v123 defaultProvider];
  v125 = [v123 providers];
  sub_24E69A5C4(0, &qword_27F225FA8, 0x277D6EE20);
  v126 = sub_24F92B5A8();

  v127 = [v123 faceTimeProvider];
  v128 = [v123 telephonyProvider];

  if (v118)
  {
    v129 = v277;
    *&v286 = v277;
    *(&v286 + 1) = v118;
    *&v284 = 64;
    *(&v284 + 1) = 0xE100000000000000;
    sub_24E600AEC();
    v130 = v124;

    if (sub_24F92C5F8())
    {
      v131 = 2;
    }

    else
    {
      v131 = 1;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213858, &unk_24F9DFE90);
    v132 = swift_allocObject();
    v278 = xmmword_24F93DE60;
    *(v132 + 16) = xmmword_24F93DE60;
    *(v132 + 32) = v131;
    *(v132 + 40) = v129;
    *(v132 + 48) = v118;
    sub_24F26E39C(v132, &v286);
    v277 = v286;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23E1D0, &qword_24F93B780);
    v133 = swift_allocObject();
    v134 = v277;
    *(v133 + 16) = v278;
    *(v133 + 32) = v134;
  }

  else
  {
    v135 = v124;
    v133 = MEMORY[0x277D84F90];
  }

  *&v286 = v123;
  *(&v286 + 1) = v124;
  v287 = v124;
  v288 = v126;
  v289 = v127;
  v290 = v128;
  v136 = v123;
  v137 = v124;

  v138 = v127;
  v139 = v128;
  v140 = v275;
  sub_24F4B6440(&v286, v133, MEMORY[0x277D84F90], v275);

  v141 = type metadata accessor for CallProviderConversationHandleSet(0);
  (*(*(v141 - 8) + 56))(v140, 0, 1, v141);
  v142 = v281;
  v143 = v279;
  sub_24E6009C8(v140, v279 + v281[13], &unk_27F23E170, &unk_24F9EBA60);
  v144 = v280;
  *(v143 + v142[14]) = [v280 isArcadeSubscriber];
  v145 = [v144 photos];
  if (!v145)
  {
    goto LABEL_48;
  }

  v146 = v145;
  v147 = sub_24F92AE38();

  v282 = 0x6574616C706D6574;
  v283 = 0xE800000000000000;
  sub_24F92C7F8();
  if (!*(v147 + 16) || (v148 = sub_24E76D934(&v286), (v149 & 1) == 0))
  {

    sub_24E6585F8(&v286);
LABEL_48:
    v284 = 0u;
    v285 = 0u;
    goto LABEL_49;
  }

  sub_24E643A9C(*(v147 + 56) + 32 * v148, &v284);
  sub_24E6585F8(&v286);

  if (!*(&v285 + 1))
  {
LABEL_49:
    v155 = &qword_27F2129B0;
    v156 = &unk_24F945320;
    v157 = &v284;
    goto LABEL_50;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_51;
  }

  v150 = *(&v286 + 1);
  v151 = v251;
  v152 = v286;
  sub_24F91F488();
  v153 = sub_24F91F4A8();
  v154 = *(v153 - 8);
  if ((*(v154 + 48))(v151, 1, v153) == 1)
  {

    v155 = &qword_27F228530;
    v156 = &unk_24F93C6E0;
    v157 = v151;
LABEL_50:
    sub_24E601704(v157, v155, v156);
    goto LABEL_51;
  }

  sub_24F91F478();
  v249 = v248;
  (*(v154 + 8))(v151, v153);
  if (!v249 || (v250 = sub_24F92B358(), , (v250 & 1) == 0))
  {

LABEL_51:
    [objc_opt_self() sizeForPhotoSize_];
    v158 = GKImageURLKeyForSize();
    if (!v158)
    {
      goto LABEL_62;
    }

    v159 = v158;
    v160 = sub_24F92B0D8();
    v162 = v161;

    v163 = v280;
    v164 = [v280 photos];
    if (v164)
    {
      v165 = v164;
      v166 = sub_24F92AE38();

      v282 = v160;
      v283 = v162;
      sub_24F92C7F8();
      if (*(v166 + 16))
      {
        v167 = sub_24E76D934(&v286);
        if (v168)
        {
          sub_24E643A9C(*(v166 + 56) + 32 * v167, &v284);
          sub_24E6585F8(&v286);

          if (*(&v285 + 1))
          {
            if (swift_dynamicCast())
            {

              v169 = v286;
              *&v286 = 0x2F2F3A656C6966;
              *(&v286 + 1) = 0xE700000000000000;
              MEMORY[0x253050C20](v169, *(&v169 + 1));

              v150 = *(&v286 + 1);
              v170 = v286;
              v143[2] = v286;
              v143[3] = v150;

              v171 = 0;
              v172 = v281;
              goto LABEL_67;
            }

LABEL_62:
            v163 = v280;
            v173 = [v280 playerID];
            v174 = sub_24F92B0D8();
            v176 = v175;

            v170 = sub_24F5E3C58(v174, v176, v267, v276, 85, 0xE100000000000000);
            v150 = v177;

            v143[2] = v170;
            v143[3] = v150;

            v178 = sub_24F5E54A0(v269, v268);
            v179 = [objc_opt_self() availableColors];
            sub_24E69A5C4(0, &qword_27F22C138, 0x277D3A1C0);
            v180 = sub_24F92B5A8();

            v172 = v281;
            if ((v180 & 0xC000000000000001) == 0)
            {
              if ((v178 & 0x8000000000000000) != 0)
              {
                __break(1u);
              }

              else if (v178 < *((v180 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                v181 = *(v180 + 8 * v178 + 32);
LABEL_66:
                v182 = v181;

                v183 = [v182 color];
                v171 = [v183 CGColor];

                v184 = v171;
                goto LABEL_67;
              }

              __break(1u);
              return;
            }

            v181 = MEMORY[0x253052270](v178, v180);
            goto LABEL_66;
          }

LABEL_61:
          sub_24E601704(&v284, &qword_27F2129B0, &unk_24F945320);
          goto LABEL_62;
        }
      }

      sub_24E6585F8(&v286);
    }

    else
    {
    }

    v284 = 0u;
    v285 = 0u;
    goto LABEL_61;
  }

  v170 = v152;
  v143[2] = v152;
  v143[3] = v150;

  v171 = 0;
  v163 = v280;
  v172 = v281;
LABEL_67:
  v185 = [v163 lastPlayedGame];
  if (v185)
  {
    v186 = v185;
    v187 = [v163 lastPlayedDate];
    if (v187)
    {
      *&v278 = v150;
      v188 = v256;
      v189 = v187;
      sub_24F91F608();

      *&v277 = v170;
      v190 = v264;
      v191 = v257;
      v192 = v265;
      (*(v264 + 32))(v257, v188, v265);
      v193 = v263;
      (*(v190 + 56))(v263, 1, 1, v192);
      v194 = v186;
      v195 = v266;
      sub_24E7EDF8C(v194, v193, v266);
      v196 = v262;
      (*(v190 + 16))(v262, v191, v192);
      v197 = v172;
      v198 = v171;
      v199 = v270;
      sub_24E69BF7C(v195, v270);
      sub_24F91F5E8();
      v201 = v200;

      v202 = v190;
      v170 = v277;
      v203 = *(v202 + 8);
      v204 = v196;
      v150 = v278;
      v203(v204, v192);
      sub_24E69BFE0(v195);
      v205 = v191;
      v143 = v279;
      v203(v205, v192);
      v206 = v199;
      v171 = v198;
      v172 = v197;
      v163 = v280;
      PlayedTogetherInfo = type metadata accessor for Player.LastPlayedTogetherInfo(0);
      *(v206 + *(PlayedTogetherInfo + 20)) = v201 * 1000.0;
      (*(*(PlayedTogetherInfo - 8) + 56))(v206, 0, 1, PlayedTogetherInfo);
      goto LABEL_72;
    }
  }

  v208 = type metadata accessor for Player.LastPlayedTogetherInfo(0);
  v206 = v270;
  (*(*(v208 - 8) + 56))(v270, 1, 1, v208);
LABEL_72:
  sub_24E6009C8(v206, v143 + v172[16], &unk_27F23E220, &unk_24F9F2E30);
  v209 = [v163 lastChallengedGame];
  if (!v209)
  {
LABEL_76:
    ChallengeInfo = type metadata accessor for Player.LastChallengeInfo(0);
    v223 = v271;
    (*(*(ChallengeInfo - 8) + 56))(v271, 1, 1, ChallengeInfo);
    goto LABEL_77;
  }

  v210 = v209;
  v211 = [v163 lastChallengedDate];
  if (!v211)
  {

    goto LABEL_76;
  }

  *&v278 = v150;
  v212 = v258;
  v213 = v211;
  sub_24F91F608();

  *&v277 = v170;
  v214 = v264;
  v215 = v171;
  v216 = v259;
  v217 = v212;
  v218 = v265;
  (*(v264 + 32))(v259, v217, v265);
  v219 = v263;
  (*(v214 + 56))(v263, 1, 1, v218);
  v220 = v210;
  v221 = v266;
  sub_24E7EDF8C(v220, v219, v266);
  v222 = v262;
  (*(v214 + 16))(v262, v216, v218);
  v223 = v271;
  sub_24E69BF7C(v221, v271);
  sub_24F91F5E8();
  v225 = v224;

  v226 = *(v214 + 8);
  v226(v222, v218);
  sub_24E69BFE0(v221);
  v227 = v216;
  v171 = v215;
  v172 = v281;
  v226(v227, v218);
  v228 = type metadata accessor for Player.LastChallengeInfo(0);
  *(v223 + *(v228 + 20)) = v225 * 1000.0;
  (*(*(v228 - 8) + 56))(v223, 0, 1, v228);
LABEL_77:
  sub_24E6009C8(v223, v143 + v172[17], &unk_27F247220, &unk_24F9DFEB0);
  *(v143 + v172[18]) = [v163 allowReceivingFriendInvites];
  *(v143 + v172[19]) = sub_24F3FC608(v163);
  GenericRGB = CGColorCreateGenericRGB(0.223, 0.435, 0.6, 1.0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F22C140, &unk_24F9F2E40);
  v231 = swift_allocObject();
  *(v231 + 16) = xmmword_24F93DE60;
  v232 = *MEMORY[0x277CEE210];
  *(v231 + 32) = *MEMORY[0x277CEE210];
  if (v171)
  {
    v233 = v171;
  }

  else
  {
    v233 = GenericRGB;
  }

  v234 = v272;
  *(v231 + 40) = v233;
  v235 = v232;
  sub_24E609AB0(v231);
  swift_setDeallocating();
  sub_24E601704(v231 + 32, &qword_27F22C148, &unk_24F98F860);
  swift_deallocClassInstance();
  sub_24F928948();
  v236 = [v163 avatarArtwork];
  if (v236)
  {
    v237 = v236;
    v238 = [v236 metadata];
    v239 = v261;
    sub_24F3D7378(v238);
    v240 = v274;
    v241 = v273;

    (*(v241 + 56))(v239, 0, 1, v240);
    v242 = *(v241 + 32);
    v243 = v239;
    v244 = v260;
    v242(v260, v243, v240);
    v245 = v244;
    v246 = v281;
    v242(v143 + v281[6], v245, v240);
  }

  else
  {
    v246 = v281;
    v241 = v273;
    v240 = v274;
    (*(v273 + 16))(v143 + v281[6], v234, v274);
  }

  *(v143 + v246[20]) = [v163 isChallengeable];
  *(v143 + v246[21]) = [v163 supportsMultiplayerActivities];
  v247 = [v163 ageCategory];

  (*(v241 + 8))(v234, v240);
  *(v143 + v246[22]) = v247 == 3;
}

uint64_t Player.FriendRequestInboxEntry.init(friendCode:senderHandle:contactID:contactName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t sub_24F3FC608(void *a1)
{
  v2 = 0xEB00000000796C6ELL;
  v3 = [a1 friendsVisibility];
  if (v3 >= 3)
  {
    v4 = 2;
  }

  else
  {
    v4 = v3;
  }

  v5 = [a1 achievementsVisibility];
  if (v5 >= 3)
  {
    v6 = 2;
  }

  else
  {
    v6 = v5;
  }

  v7 = [a1 gamesPlayedVisibility];
  if (v7 >= 3)
  {
    v8 = 2;
  }

  else
  {
    v8 = v7;
  }

  if (v4)
  {
    if (v4 == 1)
    {
      v9 = 0x4F73646E65697266;
      v10 = 0xEB00000000796C6ELL;
      v11 = v6;
      if (!v6)
      {
LABEL_19:
        v12 = 0xE800000000000000;
        if (v9 != 0x656E6F7972657665)
        {
          goto LABEL_24;
        }

        goto LABEL_22;
      }
    }

    else
    {
      v10 = 0xE600000000000000;
      v9 = 0x796C6E4F656DLL;
      v11 = v6;
      if (!v6)
      {
        goto LABEL_19;
      }
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    v9 = 0x656E6F7972657665;
    v11 = v6;
    if (!v6)
    {
      goto LABEL_19;
    }
  }

  if (v11 == 2)
  {
    v12 = 0xE600000000000000;
    if (v9 != 0x796C6E4F656DLL)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v12 = 0xEB00000000796C6ELL;
    if (v9 != 0x4F73646E65697266)
    {
      goto LABEL_24;
    }
  }

LABEL_22:
  if (v10 == v12)
  {

    goto LABEL_25;
  }

LABEL_24:
  v13 = sub_24F92CE08();

  if ((v13 & 1) == 0)
  {
    goto LABEL_41;
  }

LABEL_25:
  if (!v4)
  {
    v14 = 0xE800000000000000;
    v15 = 0x656E6F7972657665;
    v16 = v8;
    if (!v8)
    {
      goto LABEL_34;
    }

    goto LABEL_30;
  }

  if (v4 != 2)
  {
    v15 = 0x4F73646E65697266;
    v14 = 0xEB00000000796C6ELL;
    v16 = v8;
    if (!v8)
    {
      goto LABEL_34;
    }

LABEL_30:
    if (v16 == 2)
    {
      v2 = 0xE600000000000000;
      if (v15 != 0x796C6E4F656DLL)
      {
        goto LABEL_39;
      }
    }

    else if (v15 != 0x4F73646E65697266)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 == v2)
    {

      return v4;
    }

    goto LABEL_39;
  }

  v14 = 0xE600000000000000;
  v15 = 0x796C6E4F656DLL;
  v16 = v8;
  if (v8)
  {
    goto LABEL_30;
  }

LABEL_34:
  v2 = 0xE800000000000000;
  if (v15 == 0x656E6F7972657665)
  {
    goto LABEL_37;
  }

LABEL_39:
  v17 = sub_24F92CE08();

  if (v17)
  {
    return v4;
  }

LABEL_41:
  v19 = MEMORY[0x277D84F90];

  return sub_24F3FC898(v4, v6, v8, v19);
}

uint64_t sub_24F3FC898(unsigned int a1, unsigned int a2, int a3, uint64_t a4)
{
  LODWORD(v5) = a3;
  v6 = a2;
  result = sub_24EB9B4E0(a2, &unk_2861BEA48);
  if (v9)
  {
    __break(1u);
    goto LABEL_129;
  }

  v10 = result;
  result = sub_24EB9B4E0(a1, &unk_2861BEA48);
  if (v11)
  {
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (v10 >= result)
  {
    v6 = a1;
  }

  result = sub_24EB9B4E0(v5, &unk_2861BEA70);
  if (v12)
  {
    goto LABEL_130;
  }

  v13 = result;
  result = sub_24EB9B4E0(v6, &unk_2861BEA70);
  if (v14)
  {
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    return result;
  }

  if (v13 >= result)
  {
    v5 = v6;
  }

  else
  {
    v5 = v5;
  }

  v15 = *(a4 + 16);
  if (v15)
  {
    v16 = (a4 + 32);
    do
    {
      v19 = *v16++;
      v18 = v19;
      if (byte_2861BEAB8 == 1)
      {
        v20 = 0x4F73646E65697266;
      }

      else
      {
        v20 = 0x796C6E4F656DLL;
      }

      if (byte_2861BEAB8 == 1)
      {
        v21 = 0xEB00000000796C6ELL;
      }

      else
      {
        v21 = 0xE600000000000000;
      }

      if (byte_2861BEAB8)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0x656E6F7972657665;
      }

      if (byte_2861BEAB8)
      {
        v23 = v21;
      }

      else
      {
        v23 = 0xE800000000000000;
      }

      if (v18 == 1)
      {
        v24 = 0x4F73646E65697266;
      }

      else
      {
        v24 = 0x796C6E4F656DLL;
      }

      if (v18 == 1)
      {
        v25 = 0xEB00000000796C6ELL;
      }

      else
      {
        v25 = 0xE600000000000000;
      }

      if (v18)
      {
        v26 = v24;
      }

      else
      {
        v26 = 0x656E6F7972657665;
      }

      if (v18)
      {
        v27 = v25;
      }

      else
      {
        v27 = 0xE800000000000000;
      }

      if (v22 == v26 && v23 == v27)
      {
        v28 = 0;
LABEL_44:

        goto LABEL_47;
      }

      v29 = sub_24F92CE08();

      if (v29)
      {
        v28 = 0;
        goto LABEL_47;
      }

      if (byte_2861BEAB9)
      {
        if (byte_2861BEAB9 == 1)
        {
          v38 = 0x4F73646E65697266;
          v39 = 0xEB00000000796C6ELL;
          if (!v18)
          {
            goto LABEL_76;
          }
        }

        else
        {
          v39 = 0xE600000000000000;
          v38 = 0x796C6E4F656DLL;
          if (!v18)
          {
LABEL_76:
            v40 = 0xE800000000000000;
            if (v38 != 0x656E6F7972657665)
            {
              goto LABEL_81;
            }

            goto LABEL_79;
          }
        }
      }

      else
      {
        v39 = 0xE800000000000000;
        v38 = 0x656E6F7972657665;
        if (!v18)
        {
          goto LABEL_76;
        }
      }

      if (v18 == 1)
      {
        v40 = 0xEB00000000796C6ELL;
        if (v38 != 0x4F73646E65697266)
        {
          goto LABEL_81;
        }
      }

      else
      {
        v40 = 0xE600000000000000;
        if (v38 != 0x796C6E4F656DLL)
        {
          goto LABEL_81;
        }
      }

LABEL_79:
      if (v39 == v40)
      {
        v28 = 1;
        goto LABEL_44;
      }

LABEL_81:
      v41 = sub_24F92CE08();

      if (v41)
      {
        v28 = 1;
        goto LABEL_47;
      }

      if (byte_2861BEABA)
      {
        if (byte_2861BEABA == 1)
        {
          v44 = 0x4F73646E65697266;
          v45 = 0xEB00000000796C6ELL;
          if (!v18)
          {
            goto LABEL_108;
          }
        }

        else
        {
          v45 = 0xE600000000000000;
          v44 = 0x796C6E4F656DLL;
          if (!v18)
          {
LABEL_108:
            v49 = 0xE800000000000000;
            if (v44 == 0x656E6F7972657665)
            {
              goto LABEL_111;
            }

            goto LABEL_113;
          }
        }
      }

      else
      {
        v45 = 0xE800000000000000;
        v44 = 0x656E6F7972657665;
        if (!v18)
        {
          goto LABEL_108;
        }
      }

      if (v18 == 1)
      {
        v49 = 0xEB00000000796C6ELL;
        if (v44 == 0x4F73646E65697266)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v49 = 0xE600000000000000;
        if (v44 == 0x796C6E4F656DLL)
        {
LABEL_111:
          if (v45 == v49)
          {
            v28 = 2;
            goto LABEL_44;
          }
        }
      }

LABEL_113:
      v50 = sub_24F92CE08();

      if ((v50 & 1) == 0)
      {
        goto LABEL_132;
      }

      v28 = 2;
LABEL_47:
      if (byte_2861BEAB8)
      {
        if (byte_2861BEAB8 == 1)
        {
          v30 = 0x4F73646E65697266;
          v31 = 0xEB00000000796C6ELL;
          v32 = v5;
          if (!v5)
          {
            goto LABEL_56;
          }
        }

        else
        {
          v31 = 0xE600000000000000;
          v30 = 0x796C6E4F656DLL;
          v32 = v5;
          if (!v5)
          {
LABEL_56:
            v33 = 0xE800000000000000;
            if (v30 != 0x656E6F7972657665)
            {
              goto LABEL_62;
            }

            goto LABEL_59;
          }
        }
      }

      else
      {
        v31 = 0xE800000000000000;
        v30 = 0x656E6F7972657665;
        v32 = v5;
        if (!v5)
        {
          goto LABEL_56;
        }
      }

      if (v32 == 1)
      {
        v33 = 0xEB00000000796C6ELL;
        if (v30 != 0x4F73646E65697266)
        {
          goto LABEL_62;
        }
      }

      else
      {
        v33 = 0xE600000000000000;
        if (v30 != 0x796C6E4F656DLL)
        {
          goto LABEL_62;
        }
      }

LABEL_59:
      if (v31 == v33)
      {
        v17 = 0;
        goto LABEL_61;
      }

LABEL_62:
      v34 = sub_24F92CE08();

      if ((v34 & 1) == 0)
      {
        if (byte_2861BEAB9)
        {
          if (byte_2861BEAB9 == 1)
          {
            v35 = 0x4F73646E65697266;
            v36 = 0xEB00000000796C6ELL;
            v37 = v5;
            if (!v5)
            {
LABEL_88:
              v42 = 0xE800000000000000;
              if (v35 != 0x656E6F7972657665)
              {
LABEL_93:
                v43 = sub_24F92CE08();

                if (v43)
                {
                  v17 = 1;
                  goto LABEL_13;
                }

                if (byte_2861BEABA)
                {
                  if (byte_2861BEABA == 1)
                  {
                    v46 = 0x4F73646E65697266;
                    v47 = 0xEB00000000796C6ELL;
                    v48 = v5;
                    if (!v5)
                    {
                      goto LABEL_120;
                    }

LABEL_116:
                    if (v48 == 1)
                    {
                      v51 = 0xEB00000000796C6ELL;
                      if (v46 != 0x4F73646E65697266)
                      {
                        goto LABEL_125;
                      }
                    }

                    else
                    {
                      v51 = 0xE600000000000000;
                      if (v46 != 0x796C6E4F656DLL)
                      {
                        goto LABEL_125;
                      }
                    }

LABEL_123:
                    if (v47 != v51)
                    {
LABEL_125:
                      v52 = sub_24F92CE08();

                      if ((v52 & 1) == 0)
                      {
                        goto LABEL_133;
                      }

                      v17 = 2;
                      goto LABEL_13;
                    }

                    v17 = 2;
LABEL_61:

                    goto LABEL_13;
                  }

                  v47 = 0xE600000000000000;
                  v46 = 0x796C6E4F656DLL;
                  v48 = v5;
                  if (v5)
                  {
                    goto LABEL_116;
                  }
                }

                else
                {
                  v47 = 0xE800000000000000;
                  v46 = 0x656E6F7972657665;
                  v48 = v5;
                  if (v5)
                  {
                    goto LABEL_116;
                  }
                }

LABEL_120:
                v51 = 0xE800000000000000;
                if (v46 != 0x656E6F7972657665)
                {
                  goto LABEL_125;
                }

                goto LABEL_123;
              }

LABEL_91:
              if (v36 != v42)
              {
                goto LABEL_93;
              }

              v17 = 1;
              goto LABEL_61;
            }
          }

          else
          {
            v36 = 0xE600000000000000;
            v35 = 0x796C6E4F656DLL;
            v37 = v5;
            if (!v5)
            {
              goto LABEL_88;
            }
          }
        }

        else
        {
          v36 = 0xE800000000000000;
          v35 = 0x656E6F7972657665;
          v37 = v5;
          if (!v5)
          {
            goto LABEL_88;
          }
        }

        if (v37 == 1)
        {
          v42 = 0xEB00000000796C6ELL;
          if (v35 != 0x4F73646E65697266)
          {
            goto LABEL_93;
          }
        }

        else
        {
          v42 = 0xE600000000000000;
          if (v35 != 0x796C6E4F656DLL)
          {
            goto LABEL_93;
          }
        }

        goto LABEL_91;
      }

      v17 = 0;
LABEL_13:
      if (v28 >= v17)
      {
        v5 = v5;
      }

      else
      {
        v5 = v18;
      }

      --v15;
    }

    while (v15);
  }

  return v5;
}

void Player.FriendRequestInboxEntry.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_24F92C318();
  v5 = sub_24F92C2F8();
  v7 = v6;

  if (v7)
  {
    v20 = v5;
    v8 = sub_24F92C318();
    v19 = sub_24F92C2F8();
    v10 = v9;

    if (v10)
    {
      v11 = sub_24F92C318();
      v12 = sub_24F92C2F8();
      v14 = v13;

      v15 = sub_24F92C318();
      v16 = sub_24F92C2F8();
      v18 = v17;

      *a2 = v20;
      a2[1] = v7;
      a2[2] = v19;
      a2[3] = v10;
      a2[4] = v12;
      a2[5] = v14;
      a2[6] = v16;
      a2[7] = v18;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

unint64_t Player.FriendRequestInboxEntry.jsRepresentation(in:)@<X0>(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = v1[5];
  v7 = v1[7];
  v15 = v1[4];
  v16 = v1[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F88, &unk_24F93A430);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0x6F43646E65697266;
  v9 = MEMORY[0x277D837D0];
  v10 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v10;
  *(inited + 40) = 0xEA00000000006564;
  *(inited + 48) = v2;
  *(inited + 56) = v3;
  strcpy((inited + 88), "senderHandle");
  *(inited + 101) = 0;
  *(inited + 102) = -5120;
  *(inited + 128) = v9;
  *(inited + 136) = v10;
  *(inited + 104) = v5;
  *(inited + 112) = v4;
  *(inited + 144) = 0x49746361746E6F63;
  *(inited + 152) = 0xE900000000000044;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F23B740, &qword_24F93EC10);
  *(inited + 184) = v11;
  v12 = sub_24E605DB4();
  *(inited + 160) = v15;
  *(inited + 168) = v6;
  *(inited + 192) = v12;
  *(inited + 200) = 0x4E746361746E6F63;
  *(inited + 240) = v11;
  *(inited + 248) = v12;
  *(inited + 208) = 0xEB00000000656D61;
  *(inited + 216) = v16;
  *(inited + 224) = v7;

  v13 = sub_24E607E40(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212FB0, &unk_24F93A440);
  swift_arrayDestroy();
  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v13;
  return result;
}

uint64_t sub_24F3FD254()
{
  v1 = 0x6F43646E65697266;
  v2 = 0x49746361746E6F63;
  if (*v0 != 2)
  {
    v2 = 0x4E746361746E6F63;
  }

  if (*v0)
  {
    v1 = 0x61487265646E6573;
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

uint64_t sub_24F3FD2E8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24F3FE794(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24F3FD310(uint64_t a1)
{
  v2 = sub_24F3FE2C8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24F3FD34C(uint64_t a1)
{
  v2 = sub_24F3FE2C8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Player.FriendRequestInboxEntry.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242818, &qword_24F9F2BA0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v12 - v5;
  v7 = v1[2];
  v12[5] = v1[3];
  v12[6] = v7;
  v8 = v1[4];
  v12[3] = v1[5];
  v12[4] = v8;
  v9 = v1[6];
  v12[1] = v1[7];
  v12[2] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3FE2C8();
  sub_24F92D128();
  v16 = 0;
  v10 = v12[7];
  sub_24F92CD08();
  if (v10)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v15 = 1;
  sub_24F92CD08();
  v14 = 2;
  sub_24F92CCA8();
  v13 = 3;
  sub_24F92CCA8();
  return (*(v4 + 8))(v6, v3);
}

uint64_t Player.FriendRequestInboxEntry.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 56);
  sub_24F92B218();
  sub_24F92B218();
  if (!v2)
  {
    sub_24F92D088();
    if (v3)
    {
      goto LABEL_3;
    }

    return sub_24F92D088();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v3)
  {
    return sub_24F92D088();
  }

LABEL_3:
  sub_24F92D088();

  return sub_24F92B218();
}

uint64_t Player.FriendRequestInboxEntry.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  sub_24F92D068();
  sub_24F92B218();
  sub_24F92B218();
  if (!v1)
  {
    sub_24F92D088();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_5:
    sub_24F92D088();
    return sub_24F92D0B8();
  }

  sub_24F92D088();
  sub_24F92B218();
  if (!v2)
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_24F92D088();
  sub_24F92B218();
  return sub_24F92D0B8();
}

uint64_t Player.FriendRequestInboxEntry.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F242828, &qword_24F9F2BA8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24F3FE2C8();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v32[0]) = 0;
  v9 = sub_24F92CC28();
  v27 = v10;
  LOBYTE(v32[0]) = 1;
  v11 = sub_24F92CC28();
  v26 = v12;
  v24 = v11;
  LOBYTE(v32[0]) = 2;
  v23 = sub_24F92CBC8();
  v25 = v13;
  v33 = 3;
  v14 = sub_24F92CBC8();
  v16 = v15;
  (*(v6 + 8))(v8, v5);
  v17 = v27;
  *&v28 = v9;
  *(&v28 + 1) = v27;
  v19 = v24;
  v18 = v25;
  *&v29 = v24;
  *(&v29 + 1) = v26;
  *&v30 = v23;
  *(&v30 + 1) = v25;
  *&v31 = v14;
  *(&v31 + 1) = v16;
  v20 = v29;
  *a2 = v28;
  a2[1] = v20;
  v21 = v31;
  a2[2] = v30;
  a2[3] = v21;
  sub_24F3FE31C(&v28, v32);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v32[0] = v9;
  v32[1] = v17;
  v32[2] = v19;
  v32[3] = v26;
  v32[4] = v23;
  v32[5] = v18;
  v32[6] = v14;
  v32[7] = v16;
  return sub_24F384DC0(v32);
}