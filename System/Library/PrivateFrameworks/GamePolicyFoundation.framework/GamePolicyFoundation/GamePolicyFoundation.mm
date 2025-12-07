id gpf_gameCategories(uint64_t a1)
{
  if (gpf_gameCategories_onceToken != -1)
  {
    gpf_gameCategories_cold_1();
  }

  v2 = gpf_gameCategories__gameCategories;

  return v2;
}

void __gpf_gameCategories_block_invoke()
{
  v12[20] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDB9418];
  v12[0] = *MEMORY[0x29EDB9460];
  v12[1] = v0;
  v1 = *MEMORY[0x29EDB9428];
  v12[2] = *MEMORY[0x29EDB9420];
  v12[3] = v1;
  v2 = *MEMORY[0x29EDB9438];
  v12[4] = *MEMORY[0x29EDB9430];
  v12[5] = v2;
  v3 = *MEMORY[0x29EDB9448];
  v12[6] = *MEMORY[0x29EDB9440];
  v12[7] = v3;
  v4 = *MEMORY[0x29EDB9458];
  v12[8] = *MEMORY[0x29EDB9450];
  v12[9] = v4;
  v5 = *MEMORY[0x29EDB9470];
  v12[10] = *MEMORY[0x29EDB9468];
  v12[11] = v5;
  v6 = *MEMORY[0x29EDB9480];
  v12[12] = *MEMORY[0x29EDB9478];
  v12[13] = v6;
  v7 = *MEMORY[0x29EDB9490];
  v12[14] = *MEMORY[0x29EDB9488];
  v12[15] = v7;
  v8 = *MEMORY[0x29EDB94A0];
  v12[16] = *MEMORY[0x29EDB9498];
  v12[17] = v8;
  v9 = *MEMORY[0x29EDB94B0];
  v12[18] = *MEMORY[0x29EDB94A8];
  v12[19] = v9;
  v10 = [MEMORY[0x29EDB8D80] arrayWithObjects:v12 count:20];
  v11 = gpf_gameCategories__gameCategories;
  gpf_gameCategories__gameCategories = v10;
}

id gpf_gameModeOptInCategories(uint64_t a1)
{
  if (gpf_gameModeOptInCategories_onceToken != -1)
  {
    gpf_gameModeOptInCategories_cold_1();
  }

  v2 = gpf_gameModeOptInCategories__gameCategories;

  return v2;
}

void __gpf_gameModeOptInCategories_block_invoke()
{
  v6[8] = *MEMORY[0x29EDCA608];
  v0 = *MEMORY[0x29EDB9420];
  v6[0] = *MEMORY[0x29EDB9418];
  v6[1] = v0;
  v1 = *MEMORY[0x29EDB9480];
  v6[2] = *MEMORY[0x29EDB9428];
  v6[3] = v1;
  v2 = *MEMORY[0x29EDB9490];
  v6[4] = *MEMORY[0x29EDB9488];
  v6[5] = v2;
  v3 = *MEMORY[0x29EDB94A0];
  v6[6] = *MEMORY[0x29EDB9498];
  v6[7] = v3;
  v4 = [MEMORY[0x29EDB8D80] arrayWithObjects:v6 count:8];
  v5 = gpf_gameModeOptInCategories__gameCategories;
  gpf_gameModeOptInCategories__gameCategories = v4;
}

uint64_t EmbeddedGameProcess.bundleIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_29EB3C850@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 66);
  return result;
}

uint64_t sub_29EB3C898(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 66) = v2;
  return result;
}

uint64_t sub_29EB3C910(char a1)
{
  result = swift_beginAccess();
  *(v1 + 66) = a1;
  return result;
}

uint64_t sub_29EB3C9B8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 70);
  return result;
}

uint64_t sub_29EB3CA00(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 70) = v2;
  return result;
}

uint64_t sub_29EB3CA78(char a1)
{
  result = swift_beginAccess();
  *(v1 + 70) = a1;
  return result;
}

uint64_t sub_29EB3CB08@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 71);
  return result;
}

uint64_t sub_29EB3CB50(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 71) = v2;
  return result;
}

uint64_t sub_29EB3CBC8(char a1)
{
  result = swift_beginAccess();
  *(v1 + 71) = a1;
  return result;
}

uint64_t sub_29EB3CC58@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = swift_beginAccess();
  *a2 = *(v3 + 72);
  return result;
}

uint64_t sub_29EB3CCA0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  result = swift_beginAccess();
  *(v3 + 72) = v2;
  return result;
}

uint64_t sub_29EB3CD18(char a1)
{
  result = swift_beginAccess();
  *(v1 + 72) = a1;
  return result;
}

uint64_t sub_29EB3CDA8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_lastFocused;
  swift_beginAccess();
  v5 = sub_29EB5244C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_29EB3CE34(uint64_t a1, uint64_t *a2)
{
  v4 = sub_29EB5244C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = *a2;
  v9 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_lastFocused;
  swift_beginAccess();
  (*(v5 + 40))(v8 + v9, v7, v4);
  return swift_endAccess();
}

uint64_t sub_29EB3CF4C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_lastFocused;
  swift_beginAccess();
  v4 = sub_29EB5244C();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_29EB3CFD4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_lastFocused;
  swift_beginAccess();
  v4 = sub_29EB5244C();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t sub_29EB3D0C4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringGameMode;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_29EB3D11C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringGameMode;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_29EB3D170()
{
  v1 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringGameMode;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_29EB3D1B4(char a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringGameMode;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_29EB3D268@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringModelManagerAssertion;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_29EB3D2C0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringModelManagerAssertion;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_29EB3D314()
{
  v1 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringModelManagerAssertion;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_29EB3D358(char a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringModelManagerAssertion;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_29EB3D408@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_isGame;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_29EB3D460(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_isGame;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t sub_29EB3D4B4()
{
  v1 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_isGame;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_29EB3D4F8(char a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_isGame;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t EmbeddedGameProcess.init(process:)(void *a1)
{
  v2 = v1;
  v4 = sub_29EB5249C();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + 70) = 0;
  *(v2 + 72) = 0;
  v8 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_lastFocused;
  sub_29EB5242C();
  *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringGameMode) = 0;
  *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_triggeringModelManagerAssertion) = 0;
  v9 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_gameModeBundleIdentifierAllowList;
  v10 = sub_29EB3E278(&unk_2A253B7C8);
  swift_arrayDestroy();
  *(v2 + v9) = v10;
  *(v2 + 16) = a1;
  sub_29EB3E3E0(0, &qword_2A1881F88, 0x29EDB9408);
  v11 = a1;
  [v11 auditToken];
  v14 = sub_29EB3DBA0(v54, *(&v54 + 1), v55, v56);
  objc_opt_self();
  v15 = swift_dynamicCastObjCClass();
  if (!v15)
  {

    goto LABEL_3;
  }

  v16 = v15;
  v17 = [v15 bundleIdentifier];
  if (!v17)
  {

    goto LABEL_2;
  }

  v41 = v5;
  v18 = v17;
  v40 = sub_29EB5252C();
  v20 = v19;

  v21 = v14;
  sub_29EB3F744(v16, &v43);
  if (!v45 || (v54 = v43, v55 = v44, v56 = v45, v57[0] = v46[0], *(v57 + 12) = *(v46 + 12), sub_29EB40400(&v54, &v47), sub_29EB3E598(&v43), (v22 = v48) == 0))
  {

LABEL_2:

LABEL_3:
    v12 = sub_29EB5244C();
    (*(*(v12 - 8) + 8))(v2 + v8, v12);

    type metadata accessor for EmbeddedGameProcess(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v23 = v53;
  v24 = v52;
  v25 = v49;
  *(v2 + 24) = v47;
  *(v2 + 32) = v22;
  *(v2 + 40) = v25;
  *(v2 + 42) = BYTE2(v25);
  *(v2 + 48) = v50;
  *(v2 + 64) = v51;
  *(v2 + 68) = v24;
  *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_isGame) = v23;
  v26 = sub_29EB525DC();
  if (qword_2A1881F70 != -1)
  {
    swift_once();
  }

  v27 = qword_2A1882428;
  if (([*(v2 + 16) pid] & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_29EB524AC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881F98, &qword_29EB52DF8);
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_29EB52DE0;
    *(v29 + 56) = MEMORY[0x29EDC99B0];
    v30 = sub_29EB3E648();
    *(v29 + 32) = v40;
    *(v29 + 40) = v20;
    v31 = MEMORY[0x29EDCA0F8];
    *(v29 + 96) = MEMORY[0x29EDCA0D0];
    *(v29 + 104) = v31;
    v32 = *(v2 + 48);
    v28 = *(v2 + 56);
    *(v29 + 64) = v30;
    *(v29 + 72) = v32;
    v33 = MEMORY[0x29EDC9A98];
    v34 = MEMORY[0x29EDC9AD0];
    *(v29 + 112) = *(v2 + 42);
    *(v29 + 152) = *(v2 + 41);
    *(v29 + 192) = *(v2 + 40);
    *(v29 + 232) = *(v2 + 67);
    *(v29 + 272) = *(v2 + 68);
    *(v29 + 136) = v33;
    *(v29 + 144) = v34;
    *(v29 + 176) = v33;
    *(v29 + 184) = v34;
    *(v29 + 216) = v33;
    *(v29 + 224) = v34;
    *(v29 + 256) = v33;
    *(v29 + 264) = v34;
    *(v29 + 296) = v33;
    *(v29 + 304) = v34;
    if (v28 > 1)
    {
      if (v28 == 2)
      {
        v35 = 0xE600000000000000;
        v36 = 0x6E492D74704FLL;
        goto LABEL_24;
      }

      if (v28 == 3)
      {
        v35 = 0xE700000000000000;
        v36 = 0x74754F2D74704FLL;
        goto LABEL_24;
      }
    }

    else
    {
      if (!v28)
      {
        v35 = 0xEB00000000646574;
        v36 = 0x726F707075736E55;
LABEL_24:
        *(v29 + 336) = MEMORY[0x29EDC99B0];
        *(v29 + 344) = v30;
        *(v29 + 312) = v36;
        *(v29 + 320) = v35;
        v37 = *(v2 + 64);
        *(v29 + 376) = v33;
        *(v29 + 384) = v34;
        *(v29 + 352) = v37;
        v38 = *(v2 + 65);
        *(v29 + 416) = v33;
        *(v29 + 424) = v34;
        *(v29 + 392) = v38;
        swift_beginAccess();
        v39 = *(v2 + 66);
        *(v29 + 456) = v33;
        *(v29 + 464) = v34;
        *(v29 + 432) = v39;
        sub_29EB5247C(v26, &dword_29EB3B000, v27, "TrackedProcessLifetime", 22, 2, v7, "Signpost ID is process ID\nBundle ID = %{public, name=bundleIdentifier}s\nGenre ID = %{public, name=genreIdentifier}lld\nHas Game Genre ID = %{public, name=hasGameGenre}d\nSupports Game mode = %{public, name=supportsGameMode}d\nRequires Performance Gaming Tier = %{public, name=requiresPerformanceGamingTier}d\nRequires Increased Memory Limit = %{public, name=requiresIncreasedMemoryLimit}d\nRequires Increased Debug Memory Limit = %{public, name=requiresIncreasedDebugMemoryLimit}d\nSEM Preference = %{public, name=semPreference}d\nSupports Model Manager Assertion = %{public, name=supportsModelManagerAssertion}d\nRequires Model Manager Assertion = %{public, name=requiresModelManagerAssertion}d\nSupports Camera Jettison S2R = %{public, name=supportsCameraJettisonS2R}d", 761, 2, v29);

        (*(v41 + 8))(v7, v4);
        return v2;
      }

      if (v28 == 1)
      {
        v35 = 0xE400000000000000;
        v36 = 1869903169;
        goto LABEL_24;
      }
    }
  }

  v42[0] = v28;
  result = sub_29EB5275C();
  __break(1u);
  return result;
}

id sub_29EB3DBA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9[1] = *MEMORY[0x29EDCA608];
  v9[0] = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:v9];
  if (v4)
  {
    v5 = v9[0];
  }

  else
  {
    v6 = v9[0];
    sub_29EB523FC();

    swift_willThrow();
  }

  return v4;
}

id EmbeddedGameProcess.deinit()
{
  v1 = sub_29EB5249C();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB525CC();
  if (qword_2A1881F70 != -1)
  {
    swift_once();
  }

  result = [*(v0 + 16) pid];
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    sub_29EB524AC();
    sub_29EB5248C();
    (*(v2 + 8))(v4, v1);

    v6 = OBJC_IVAR____TtC20GamePolicyFoundation19EmbeddedGameProcess_lastFocused;
    v7 = sub_29EB5244C();
    (*(*(v7 - 8) + 8))(v0 + v6, v7);

    return v0;
  }

  return result;
}

uint64_t EmbeddedGameProcess.__deallocating_deinit()
{
  EmbeddedGameProcess.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2A1C73398](v0, v1, v2);
}

uint64_t sub_29EB3DEB0()
{
  sub_29EB5269C();
  v1 = *(v0 + 24);

  v12 = v1;
  v2 = 0xE400000000000000;
  MEMORY[0x29EDA8D00](978143008, 0xE400000000000000);
  if (*(v0 + 41))
  {
    v3 = 1702195828;
  }

  else
  {
    v3 = 0x65736C6166;
  }

  if (*(v0 + 41))
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  MEMORY[0x29EDA8D00](v3, v4);

  MEMORY[0x29EDA8D00](0x3A53504420, 0xE500000000000000);
  if (*(v0 + 69))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 69))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x29EDA8D00](v5, v6);

  MEMORY[0x29EDA8D00](0x3A4D455320, 0xE500000000000000);
  v7 = *(v0 + 56);
  if (v7 > 1)
  {
    if (v7 == 2)
    {
      v2 = 0xE600000000000000;
      v8 = 0x6E492D74704FLL;
      goto LABEL_22;
    }

    if (v7 == 3)
    {
      v2 = 0xE700000000000000;
      v8 = 0x74754F2D74704FLL;
      goto LABEL_22;
    }

LABEL_29:
    result = sub_29EB5275C();
    __break(1u);
    return result;
  }

  if (v7)
  {
    if (v7 == 1)
    {
      v8 = 1869903169;
      goto LABEL_22;
    }

    goto LABEL_29;
  }

  v2 = 0xEB00000000646574;
  v8 = 0x726F707075736E55;
LABEL_22:
  MEMORY[0x29EDA8D00](v8, v2);

  MEMORY[0x29EDA8D00](0x3A414D4D20, 0xE500000000000000);
  if (*(v0 + 65))
  {
    v9 = 1702195828;
  }

  else
  {
    v9 = 0x65736C6166;
  }

  if (*(v0 + 65))
  {
    v10 = 0xE400000000000000;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  MEMORY[0x29EDA8D00](v9, v10);

  return v12;
}

uint64_t sub_29EB3E0C4()
{
  sub_29EB5278C();
  sub_29EB5263C();
  return sub_29EB527AC();
}

uint64_t sub_29EB3E108()
{
  sub_29EB5278C();
  sub_29EB5263C();
  return sub_29EB527AC();
}

void sub_29EB3E150(uint64_t a1)
{
  v2 = *(*v1 + 16);
  sub_29EB5263C();
}

uint64_t sub_29EB3E1AC(uint64_t a1)
{
  sub_29EB5278C();
  v2 = *(*v1 + 16);
  sub_29EB5263C();

  return sub_29EB527AC();
}

uint64_t sub_29EB3E278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881FC8, &qword_29EB52FD0);
    v3 = sub_29EB5267C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_29EB5278C();

      sub_29EB5253C();
      result = sub_29EB527AC();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_29EB5274C();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x29EDCA1A0];
  }

  return result;
}

uint64_t sub_29EB3E3E0(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t type metadata accessor for EmbeddedGameProcess(uint64_t a1)
{
  result = qword_2A1881FB0;
  if (!qword_2A1881FB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EB3E474(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881FC0, &qword_29EB52FC8);
    v3 = sub_29EB5267C();
    v4 = 0;
    v5 = v3 + 56;
    v6 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v10 = *(a1 + 32 + 8 * v4);
      result = sub_29EB5277C();
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

  return MEMORY[0x29EDCA1A0];
}

uint64_t sub_29EB3E598(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881F90, &qword_29EB52DF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_29EB3E648()
{
  result = qword_2A1881FA0;
  if (!qword_2A1881FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1881FA0);
  }

  return result;
}

unint64_t sub_29EB3E6A0()
{
  result = qword_2A1881FA8;
  if (!qword_2A1881FA8)
  {
    type metadata accessor for EmbeddedGameProcess(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1881FA8);
  }

  return result;
}

uint64_t sub_29EB3E700(uint64_t a1)
{
  result = sub_29EB5244C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_29EB3ECE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
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

uint64_t sub_29EB3ED28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 60) = 1;
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

    *(result + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29EB3ED88()
{
  v1 = sub_29EB5250C();
  sub_29EB41318();
  v2 = [v0 objectForKey:v1 ofClass:swift_getObjCClassFromMetadata()];

  if (v2)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      v3 = [v5 BOOLValue];

      return v3;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  return 2;
}

BOOL sub_29EB3EE7C(uint64_t (*a1)(void), uint64_t (*a2)(void *))
{
  v4 = a1();
  v5 = sub_29EB5257C();

  v7 = *(v2 + 48);
  v8 = *(v7 + 16);
  v9 = (v7 + 40);
  v10 = v8 + 1;
  do
  {
    if (!--v10)
    {
      break;
    }

    v11 = v9 + 2;
    v12 = *v9;
    v16[0] = *(v9 - 1);
    v16[1] = v12;
    MEMORY[0x2A1C7C4A8](v6);
    v15[2] = v16;

    v13 = sub_29EB3F698(a2, v15, v5);

    v9 = v11;
  }

  while ((v13 & 1) == 0);

  return v10 != 0;
}

uint64_t sub_29EB3EF84()
{
  v0 = sub_29EB3E278(&unk_2A253B6F0);
  result = swift_arrayDestroy();
  qword_2A1881FD0 = v0;
  return result;
}

uint64_t sub_29EB3EFD0()
{
  result = sub_29EB3E474(&unk_2A253B768);
  qword_2A1882E80 = result;
  return result;
}

uint64_t sub_29EB3EFF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_29EB5278C();
  sub_29EB5253C();
  v6 = sub_29EB527AC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_29EB5274C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t sub_29EB3F0F0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_29EB3F1BC(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x29EDC9D78];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_29EB41260(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_29EB3F1BC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_29EB3F2C8(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_29EB526AC();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_29EB3F2C8(uint64_t a1, unint64_t a2)
{
  v3 = sub_29EB3F314(a1, a2);
  sub_29EB3F444(&unk_2A253B740);
  return v3;
}

void *sub_29EB3F314(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x29EDCA190];
  }

  v6 = sub_29EB3F530(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_29EB526AC();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_29EB5255C();
        if (!v10)
        {
          return MEMORY[0x29EDCA190];
        }

        v11 = v10;
        v7 = sub_29EB3F530(v10, 0);
        result = sub_29EB5268C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_29EB3F444(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_29EB3F5A4(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_29EB3F530(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x29EDCA190];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881FD8, &qword_29EB53050);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_29EB3F5A4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881FD8, &qword_29EB53050);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
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

uint64_t sub_29EB3F698(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

void sub_29EB3F744(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63[1] = *MEMORY[0x29EDCA608];
  v62 = sub_29EB5246C();
  v4 = *(v62 - 8);
  MEMORY[0x2A1C7C4A8](v62);
  v61 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1;
  v7 = [v6 bundleIdentifier];
  if (v7)
  {
    v8 = v7;
    v9 = sub_29EB5252C();
    v58 = v10;
  }

  else
  {
    v9 = 0;
    v58 = 0;
  }

  v11 = [v6 iTunesMetadata];
  v57 = [v11 genreIdentifier];

  v12 = [v6 iTunesMetadata];
  v13 = [v12 subgenres];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1881FE0, &qword_29EB53058);
  v56 = sub_29EB5257C();

  v14 = [v6 requiredDeviceCapabilities];
  sub_29EB41318();
  v55 = sub_29EB524FC();

  v15 = [v6 supportsGameMode];
  if (v15)
  {
    v16 = v15;
    v54 = [v15 BOOLValue];
  }

  else
  {
    v54 = 2;
  }

  v63[0] = 0;
  v17 = [v6 categoryTypesWithError_];
  v18 = v63[0];
  if (!v17)
  {
    v35 = v63[0];
    v36 = sub_29EB523FC();

    swift_willThrow();
LABEL_16:
    v23 = MEMORY[0x29EDCA190];
    goto LABEL_17;
  }

  v19 = v17;
  v20 = sub_29EB5257C();
  v21 = v18;

  v22 = *(v20 + 16);
  if (!v22)
  {

    goto LABEL_16;
  }

  v51 = v9;
  v52 = v6;
  v53 = a2;
  v63[0] = MEMORY[0x29EDCA190];
  sub_29EB4BD38(0, v22, 0);
  v23 = v63[0];
  v24 = *(v4 + 16);
  v25 = *(v4 + 80);
  v50 = v20;
  v26 = v20 + ((v25 + 32) & ~v25);
  v59 = *(v4 + 72);
  v60 = v24;
  do
  {
    v28 = v61;
    v27 = v62;
    v60(v61, v26, v62);
    v29 = sub_29EB5245C();
    v31 = v30;
    (*(v4 + 8))(v28, v27);
    v63[0] = v23;
    v33 = v23[2];
    v32 = v23[3];
    if (v33 >= v32 >> 1)
    {
      sub_29EB4BD38((v32 > 1), v33 + 1, 1);
      v23 = v63[0];
    }

    v23[2] = v33 + 1;
    v34 = &v23[2 * v33];
    v34[4] = v29;
    v34[5] = v31;
    v26 += v59;
    --v22;
  }

  while (v22);

  v6 = v52;
  a2 = v53;
  v9 = v51;
LABEL_17:
  v37 = [v6 infoDictionary];
  v38 = sub_29EB3ED88();

  v39 = v38 & 1;
  v40 = [v6 entitlements];
  v41 = sub_29EB3ED88();

  v42 = [v6 entitlements];
  v43 = sub_29EB3ED88();

  v44 = [v6 entitlements];
  v45 = sub_29EB3ED88();

  v47 = v57;
  v46 = v58;
  *a2 = v9;
  *(a2 + 8) = v46;
  v48 = v55;
  v49 = v56;
  *(a2 + 16) = v47;
  *(a2 + 24) = v49;
  *(a2 + 32) = v48;
  *(a2 + 40) = v54;
  *(a2 + 48) = v23;
  *(a2 + 56) = v39;
  *(a2 + 57) = v41;
  *(a2 + 58) = v43;
  *(a2 + 59) = v45;
}

unint64_t sub_29EB3FC44(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v4 = *(a1 + 8);
  if (!v4)
  {
    goto LABEL_41;
  }

  v5 = *a1;
  LODWORD(v6) = *(a1 + 40);
  if (v6 != 2)
  {
    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v13 = sub_29EB524DC();
    __swift_project_value_buffer(v13, qword_2A1882398);

    v14 = sub_29EB524BC();
    v15 = sub_29EB5259C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v45[0] = v17;
      *v16 = 136446466;
      *(v16 + 4) = sub_29EB3F0F0(v5, v4, v45);
      *(v16 + 12) = 1024;
      *(v16 + 14) = v6 & 1;
      _os_log_impl(&dword_29EB3B000, v14, v15, "Setting game mode support for %{public}s to %{BOOL}d based on game mode plist key.", v16, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x29EDA9360](v17, -1, -1);
      MEMORY[0x29EDA9360](v16, -1, -1);
    }

    return v6 & 1;
  }

  if (a2)
  {
    if (qword_2A1881F40 != -1)
    {
      goto LABEL_66;
    }

    goto LABEL_5;
  }

  if (!a3)
  {
    if ((a4 & 1) != 0 && sub_29EB3EE7C(gpf_gameModeOptInCategories, sub_29EB413CC))
    {
      if (qword_2A1881F40 != -1)
      {
        swift_once();
      }

      v31 = sub_29EB524DC();
      __swift_project_value_buffer(v31, qword_2A1882398);

      v8 = sub_29EB524BC();
      v9 = sub_29EB5259C();

      if (!os_log_type_enabled(v8, v9))
      {
        goto LABEL_60;
      }

      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_29EB3F0F0(v5, v4, v45);
      v12 = "Opting %{public}s into game mode based on plist key.";
LABEL_59:
      _os_log_impl(&dword_29EB3B000, v8, v9, v12, v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
      MEMORY[0x29EDA9360](v11, -1, -1);
      MEMORY[0x29EDA9360](v10, -1, -1);
      goto LABEL_60;
    }

LABEL_41:
    LOBYTE(v6) = 0;
    return v6 & 1;
  }

  v18 = *(a1 + 56);
  if (v18 != 2 && (v18 & 1) != 0)
  {
    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v19 = sub_29EB524DC();
    __swift_project_value_buffer(v19, qword_2A1882398);

    v8 = sub_29EB524BC();
    v9 = sub_29EB5259C();

    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_60;
    }

    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v45[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_29EB3F0F0(v5, v4, v45);
    v12 = "Opting %{public}s into game mode based on game controller support.";
    goto LABEL_59;
  }

  v20 = *(a1 + 24);
  v21 = *(v20 + 16);
  v22 = MEMORY[0x29EDCA190];
  if (v21)
  {
    v43 = *a1;
    v46 = MEMORY[0x29EDCA190];
    sub_29EB4BD58(0, v21, 0);
    v22 = v46;
    v23 = (v20 + 32);
    while (1)
    {
      v24 = *v23;
      if (*(*v23 + 16) && (v25 = sub_29EB50188(0x644965726E6567, 0xE700000000000000), (v26 & 1) != 0) && (sub_29EB41260(*(v24 + 56) + 32 * v25, v45), swift_dynamicCast()))
      {
        v5 = v44;
      }

      else if (*(v24 + 16) && (v27 = sub_29EB50188(0x644965726E6567, 0xE700000000000000), (v28 & 1) != 0) && (sub_29EB41260(*(v24 + 56) + 32 * v27, v45), swift_dynamicCast()))
      {
        v5 = v44;
        if (v44 < 0)
        {
LABEL_65:
          __break(1u);
LABEL_66:
          swift_once();
LABEL_5:
          v7 = sub_29EB524DC();
          __swift_project_value_buffer(v7, qword_2A1882398);

          v8 = sub_29EB524BC();
          v9 = sub_29EB5259C();

          if (os_log_type_enabled(v8, v9))
          {
            v10 = swift_slowAlloc();
            v11 = swift_slowAlloc();
            v45[0] = v11;
            *v10 = 136446210;
            *(v10 + 4) = sub_29EB3F0F0(v5, v4, v45);
            v12 = "Opting %{public}s into game mode based on iPhone performance gaming tier capability.";
            goto LABEL_59;
          }

LABEL_60:

          LOBYTE(v6) = 1;
          return v6 & 1;
        }
      }

      else
      {
        v5 = 0;
      }

      v46 = v22;
      v30 = *(v22 + 16);
      v29 = *(v22 + 24);
      v6 = v30 + 1;
      if (v30 >= v29 >> 1)
      {
        sub_29EB4BD58((v29 > 1), v30 + 1, 1);
        v22 = v46;
      }

      *(v22 + 16) = v6;
      *(v22 + 8 * v30 + 32) = v5;
      ++v23;
      if (!--v21)
      {
        goto LABEL_44;
      }
    }
  }

  v6 = *(MEMORY[0x29EDCA190] + 16);
  if (v6)
  {
    v43 = *a1;
LABEL_44:
    v32 = v6;
    if (qword_2A1881EF8 != -1)
    {
      swift_once();
      v32 = *(v22 + 16);
    }

    v33 = 0;
    v5 = qword_2A1882E80;
    v34 = *(qword_2A1882E80 + 16);
    v35 = qword_2A1882E80 + 56;
    while (1)
    {
      if (v33 == v32)
      {
        __break(1u);
        goto LABEL_65;
      }

      if (v34)
      {
        v36 = *(v22 + 32 + 8 * v33);
        v37 = sub_29EB5277C();
        v38 = -1 << *(v5 + 32);
        v39 = v37 & ~v38;
        if ((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39))
        {
          break;
        }
      }

LABEL_47:
      if (++v33 == v6)
      {

        LOBYTE(v6) = 0;
        return v6 & 1;
      }
    }

    v40 = ~v38;
    while (*(*(v5 + 48) + 8 * v39) != v36)
    {
      v39 = (v39 + 1) & v40;
      if (((*(v35 + ((v39 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v39) & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v41 = sub_29EB524DC();
    __swift_project_value_buffer(v41, qword_2A1882398);

    v8 = sub_29EB524BC();
    v9 = sub_29EB5259C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v45[0] = v11;
      *v10 = 136446210;
      *(v10 + 4) = sub_29EB3F0F0(v43, v4, v45);
      v12 = "Opting %{public}s into game mode based on App Store subgenre identifiers.";
      goto LABEL_59;
    }

    goto LABEL_60;
  }

  return v6 & 1;
}

void sub_29EB40400(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(a1 + 8);
  if (!v3)
  {
    v5 = 0;
LABEL_13:
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    goto LABEL_14;
  }

  v5 = *a1;
  v6 = *a1 == 0x6C7070612E6D6F63 && v3 == 0xEF73656D61672E65;
  if (v6 || (sub_29EB5274C() & 1) != 0)
  {
    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v7 = sub_29EB524DC();
    __swift_project_value_buffer(v7, qword_2A1882398);
    v8 = sub_29EB524BC();
    v9 = sub_29EB525AC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_29EB3B000, v8, v9, "Ignoring Games app.", v10, 2u);
      MEMORY[0x29EDA9360](v10, -1, -1);
    }

    v5 = 0;
    v3 = 0;
    goto LABEL_13;
  }

  v15 = *(a1 + 32);
  if (!*(v15 + 16))
  {

LABEL_25:
    v91 = 0;
    v18 = *(a1 + 16);
    if (!v18)
    {
      goto LABEL_19;
    }

    goto LABEL_26;
  }

  v16 = sub_29EB50188(0xD00000000000001ELL, 0x800000029EB53E30);
  if ((v17 & 1) == 0 || ([*(*(v15 + 56) + 8 * v16) BOOLValue] & 1) == 0)
  {
    if (*(v15 + 16))
    {
      v20 = sub_29EB50188(0xD00000000000001FLL, 0x800000029EB53E50);
      if (v21)
      {
        v91 = [*(*(v15 + 56) + 8 * v20) BOOLValue];
        v18 = *(a1 + 16);
        if (!v18)
        {
          goto LABEL_19;
        }

        goto LABEL_26;
      }
    }

    goto LABEL_25;
  }

  v91 = 1;
  v18 = *(a1 + 16);
  if (!v18)
  {
LABEL_19:
    v19 = sub_29EB3EE7C(gpf_gameCategories, sub_29EB413CC);
    v90 = *(a1 + 58);
    v89 = *(a1 + 59);
LABEL_30:
    v92 = 0;
    v25 = v18 == 0 || v19;
    v88 = 1;
    goto LABEL_31;
  }

LABEL_26:
  v22 = *(a1 + 58);
  v23 = *(a1 + 59);
  v90 = v22;
  v89 = v23;
  v19 = 0;
  if (v18 != 6014)
  {
    goto LABEL_30;
  }

  v24 = 257;
  if (((v22 | v23) & 1) == 0)
  {
    v24 = 1;
  }

  v88 = v24;
  v92 = 1;
  v25 = 1;
LABEL_31:
  if (qword_2A1881EF0 != -1)
  {
    swift_once();
  }

  LODWORD(v87) = v19;
  if (sub_29EB3EFF8(v5, v3, qword_2A1881FD0))
  {
    goto LABEL_37;
  }

  if (qword_2A1881F10 != -1)
  {
    swift_once();
  }

  v26 = sub_29EB4DF58();

  v93 = v5;
  v94 = v3;
  MEMORY[0x2A1C7C4A8](v27);
  v84 = &v93;
  v28 = sub_29EB3F698(sub_29EB411C0, v83, v26);

  if (v28)
  {
LABEL_37:
    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v29 = sub_29EB524DC();
    __swift_project_value_buffer(v29, qword_2A1882398);

    v30 = sub_29EB524BC();
    v31 = sub_29EB5259C();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v93 = v33;
      *v32 = 136446210;
      *(v32 + 4) = sub_29EB3F0F0(v5, v3, &v93);
      _os_log_impl(&dword_29EB3B000, v30, v31, "Opting %{public}s into game mode based on allow list.", v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v33);
      MEMORY[0x29EDA9360](v33, -1, -1);
      MEMORY[0x29EDA9360](v32, -1, -1);
    }

    v34 = 1;
    if (v92)
    {
      goto LABEL_42;
    }

    goto LABEL_49;
  }

  if (v25)
  {
    v34 = sub_29EB3FC44(a1, v91, v18, v87 & 1);
    if ((v92 & 1) == 0)
    {
LABEL_49:
      if (v34)
      {
        if (qword_2A1881F40 != -1)
        {
          swift_once();
        }

        v40 = sub_29EB524DC();
        __swift_project_value_buffer(v40, qword_2A1882398);

        v41 = sub_29EB524BC();
        v42 = sub_29EB5259C();

        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          v44 = swift_slowAlloc();
          v93 = v44;
          *v43 = 136446210;
          *(v43 + 4) = sub_29EB3F0F0(v5, v3, &v93);
          _os_log_impl(&dword_29EB3B000, v41, v42, "Identifying %{public}s as a game based on game mode support.", v43, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v44);
          MEMORY[0x29EDA9360](v44, -1, -1);
          MEMORY[0x29EDA9360](v43, -1, -1);
        }

        v86 = 1;
        goto LABEL_63;
      }

      goto LABEL_57;
    }

LABEL_42:
    v86 = v34;
    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v35 = sub_29EB524DC();
    __swift_project_value_buffer(v35, qword_2A1882398);

    v36 = sub_29EB524BC();
    v37 = sub_29EB5259C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v93 = v39;
      *v38 = 136446210;
      *(v38 + 4) = sub_29EB3F0F0(v5, v3, &v93);
      _os_log_impl(&dword_29EB3B000, v36, v37, "Identifying %{public}s as a game based on App Store genre identifier.", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x29EDA9360](v39, -1, -1);
      MEMORY[0x29EDA9360](v38, -1, -1);
    }

    goto LABEL_63;
  }

  if (v92)
  {
    v34 = 0;
    goto LABEL_42;
  }

LABEL_57:
  if ((v87 & 1) == 0)
  {
    v86 = 0;
    v50 = 0;
    goto LABEL_64;
  }

  if (qword_2A1881F40 != -1)
  {
    swift_once();
  }

  v45 = sub_29EB524DC();
  __swift_project_value_buffer(v45, qword_2A1882398);

  v46 = sub_29EB524BC();
  v47 = sub_29EB5259C();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v93 = v49;
    *v48 = 136446210;
    *(v48 + 4) = sub_29EB3F0F0(v5, v3, &v93);
    _os_log_impl(&dword_29EB3B000, v46, v47, "Identifying %{public}s as a game based on app category plist key.", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v49);
    MEMORY[0x29EDA9360](v49, -1, -1);
    MEMORY[0x29EDA9360](v48, -1, -1);
  }

  v86 = 0;
LABEL_63:
  v50 = 1;
LABEL_64:
  v85 = v50;
  v87 = v18;
  if (qword_2A1881F10 != -1)
  {
    swift_once();
  }

  v51 = sub_29EB4E314();

  v93 = v5;
  v94 = v3;
  MEMORY[0x2A1C7C4A8](v52);
  v84 = &v93;
  v53 = sub_29EB3F698(sub_29EB413CC, v83, v51);

  if (v53)
  {
    v12 = v87;
    if (qword_2A1881F40 != -1)
    {
      swift_once();
    }

    v54 = sub_29EB524DC();
    __swift_project_value_buffer(v54, qword_2A1882398);

    v55 = sub_29EB524BC();
    v56 = sub_29EB5259C();

    v57 = os_log_type_enabled(v55, v56);
    v58 = v85;
    if (v57)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v93 = v60;
      *v59 = 136446210;
      *(v59 + 4) = sub_29EB3F0F0(v5, v3, &v93);
      _os_log_impl(&dword_29EB3B000, v55, v56, "Opting %{public}s into SEM.", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      MEMORY[0x29EDA9360](v60, -1, -1);
      MEMORY[0x29EDA9360](v59, -1, -1);
    }

    v13 = 2;
    v61 = v90;
  }

  else
  {

    v62 = sub_29EB4DF58();

    v93 = v5;
    v94 = v3;
    MEMORY[0x2A1C7C4A8](v63);
    v84 = &v93;
    v64 = sub_29EB3F698(sub_29EB413CC, v83, v62);

    if (v64)
    {
      v12 = v87;
      v58 = v85;
      if (qword_2A1881F40 != -1)
      {
        swift_once();
      }

      v65 = sub_29EB524DC();
      __swift_project_value_buffer(v65, qword_2A1882398);

      v66 = sub_29EB524BC();
      v67 = sub_29EB5259C();

      if (os_log_type_enabled(v66, v67))
      {
        v68 = swift_slowAlloc();
        v69 = swift_slowAlloc();
        v93 = v69;
        *v68 = 136446210;
        *(v68 + 4) = sub_29EB3F0F0(v5, v3, &v93);
        _os_log_impl(&dword_29EB3B000, v66, v67, "Opting %{public}s into automatic SEM enablement and game mode.", v68, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v69);
        MEMORY[0x29EDA9360](v69, -1, -1);
        MEMORY[0x29EDA9360](v68, -1, -1);
      }

      v13 = 1;
      v61 = v90;
    }

    else
    {
      v70 = *(a1 + 57);
      v61 = v90;
      v12 = v87;
      v58 = v85;
      if (v70 == 2)
      {
        v13 = v85;
      }

      else
      {
        v6 = (v70 & 1) == 0;
        v13 = 2;
        if (v6)
        {
          v13 = 3;
        }

        if ((v85 & 1) == 0)
        {
          if (qword_2A1881F40 != -1)
          {
            swift_once();
          }

          v71 = sub_29EB524DC();
          __swift_project_value_buffer(v71, qword_2A1882398);

          v72 = sub_29EB524BC();
          v73 = sub_29EB525BC();

          if (os_log_type_enabled(v72, v73))
          {
            v74 = swift_slowAlloc();
            v75 = swift_slowAlloc();
            v93 = v75;
            *v74 = 136446210;
            *(v74 + 4) = sub_29EB3F0F0(v5, v3, &v93);
            _os_log_impl(&dword_29EB3B000, v72, v73, "Warning - %{public}s has SEM entitlement but is not a game. Entitlement is ignored.", v74, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v75);
            MEMORY[0x29EDA9360](v75, -1, -1);
            v76 = v74;
            v61 = v90;
            MEMORY[0x29EDA9360](v76, -1, -1);
          }

          v13 = 0;
        }
      }
    }
  }

  v77 = 256;
  if ((v86 & 1) == 0)
  {
    v77 = 0;
  }

  if (v92)
  {
    v78 = 0x10000;
  }

  else
  {
    v78 = 0;
  }

  v11 = v78 | v91 | v77;
  if ((v86 & 1 & (v61 | v89)) != 0)
  {
    v79 = 0x10000;
  }

  else
  {
    v79 = 0;
  }

  v80 = (v88 | v79) & 0xFFFFFFFFFEFFFFFFLL | ((v61 & 1) << 24) | ((v89 & 1) << 32);
  v81 = 0x10000000000;
  if (!v58)
  {
    v81 = 0;
  }

  v82 = 0x1000000000000;
  if (!v58)
  {
    v82 = 0;
  }

  v14 = v80 | v81 | v82;
LABEL_14:
  *a2 = v5;
  *(a2 + 8) = v3;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 46) = BYTE6(v14);
  *(a2 + 44) = WORD2(v14);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_29EB41260(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_29EB412BC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_29EB5274C() & 1;
  }
}

unint64_t sub_29EB41318()
{
  result = qword_2A1881FE8;
  if (!qword_2A1881FE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1881FE8);
  }

  return result;
}

uint64_t sub_29EB41364(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820E0, &unk_29EB53060);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t ModeEnablementStrategy.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t sub_29EB41414()
{
  result = qword_2A1881FF0;
  if (!qword_2A1881FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1881FF0);
  }

  return result;
}

uint64_t sub_29EB41468()
{
  v1 = *v0;
  sub_29EB5278C();
  MEMORY[0x29EDA8F50](v1);
  return sub_29EB527AC();
}

uint64_t sub_29EB414DC(uint64_t a1)
{
  v2 = *v1;
  sub_29EB5278C();
  MEMORY[0x29EDA8F50](v2);
  return sub_29EB527AC();
}

unint64_t *sub_29EB41520@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

uint64_t SustainedExecutionStatus.Config.deviceSupported.setter(char a1)
{
  result = type metadata accessor for SustainedExecutionStatus.Config(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t SustainedExecutionStatus.Config.impactedBundleIdentifiers.getter()
{
  type metadata accessor for SustainedExecutionStatus.Config(0);
}

uint64_t SustainedExecutionStatus.Config.impactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SustainedExecutionStatus.Config(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SustainedExecutionStatus.Config.previouslyImpactedBundleIdentifiers.getter()
{
  type metadata accessor for SustainedExecutionStatus.Config(0);
}

uint64_t SustainedExecutionStatus.Config.previouslyImpactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SustainedExecutionStatus.Config(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t SustainedExecutionStatus.Config.enablementStrategy.setter(uint64_t a1)
{
  result = type metadata accessor for SustainedExecutionStatus.Config(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SustainedExecutionStatus.Config.init(activePolicy:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X8>)
{
  v12 = type metadata accessor for SustainedExecutionStatus.Config(0);
  v13 = v12[5];
  v14 = sub_29EB5244C();
  v15 = *(*(v14 - 8) + 56);
  v15(&a8[v13], 1, 1, v14);
  v16 = v12[6];
  v15(&a8[v16], 1, 1, v14);
  *a8 = a1;
  sub_29EB430F4(a2, &a8[v13], &qword_2A1882000, &qword_29EB53150);
  result = sub_29EB430F4(a3, &a8[v16], &qword_2A1882000, &qword_29EB53150);
  a8[v12[7]] = a4;
  *&a8[v12[8]] = a5;
  *&a8[v12[9]] = a6;
  *&a8[v12[10]] = a7;
  return result;
}

void *SustainedExecutionStatus.init(config:)(void *a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
  v4 = type metadata accessor for SustainedExecutionStatus.Config(0);
  (*(*(v4 - 1) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_activePolicy] = *a1;
  sub_29EB43028(a1 + v4[5], &v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate], &qword_2A1882000, &qword_29EB53150);
  sub_29EB43028(a1 + v4[6], &v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_disablementDate], &qword_2A1882000, &qword_29EB53150);
  v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_deviceSupported] = *(a1 + v4[7]);
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_impactedBundleIdentifiers] = *(a1 + v4[8]);
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_previouslyImpactedBundleIdentifiers] = *(a1 + v4[9]);
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementStrategy] = *(a1 + v4[10]);
  v7.receiver = v1;
  v7.super_class = type metadata accessor for SustainedExecutionStatus(0);

  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_29EB42FCC(a1);
  return v5;
}

uint64_t sub_29EB41DE0(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882018, &qword_29EB53158);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for SustainedExecutionStatus.Config(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB43090(a1, v10);
  v11 = *a2;
  sub_29EB4315C(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v6, v11 + v12, &qword_2A1882018, &qword_29EB53158);
  return swift_endAccess();
}

uint64_t sub_29EB41F64@<X0>(char *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882018, &qword_29EB53158);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB43028(v1 + v9, v8, &qword_2A1882018, &qword_29EB53158);
  v10 = type metadata accessor for SustainedExecutionStatus.Config(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_29EB4315C(v8, a1);
  }

  sub_29EB43FCC(v8, &qword_2A1882018, &qword_29EB53158);
  sub_29EB42148(v1, a1);
  sub_29EB43090(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_29EB430F4(v6, v1 + v9, &qword_2A1882018, &qword_29EB53158);
  return swift_endAccess();
}

uint64_t sub_29EB42148@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v20 - v8;
  v10 = sub_29EB5244C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v11(v7, 1, 1, v10);
  v12 = type metadata accessor for SustainedExecutionStatus.Config(0);
  v13 = v12[5];
  v11(&a2[v13], 1, 1, v10);
  v14 = v12[6];
  v11(&a2[v14], 1, 1, v10);
  sub_29EB430F4(v9, &a2[v13], &qword_2A1882000, &qword_29EB53150);
  sub_29EB430F4(v7, &a2[v14], &qword_2A1882000, &qword_29EB53150);
  v15 = v12[7];
  v16 = v12[8];
  v17 = v12[9];
  v18 = v12[10];
  *a2 = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_activePolicy);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate, &a2[v13]);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_disablementDate, &a2[v14]);
  a2[v15] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_deviceSupported);
  *&a2[v16] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_impactedBundleIdentifiers);
  *&a2[v17] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_previouslyImpactedBundleIdentifiers);
  *&a2[v18] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementStrategy);
}

uint64_t sub_29EB42370(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882018, &qword_29EB53158);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v9 - v4;
  sub_29EB4315C(a1, &v9 - v4);
  v6 = type metadata accessor for SustainedExecutionStatus.Config(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v5, v1 + v7, &qword_2A1882018, &qword_29EB53158);
  return swift_endAccess();
}

void (*sub_29EB42480(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882018, &qword_29EB53158) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for SustainedExecutionStatus.Config(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_29EB41F64(v10);
  return sub_29EB425A0;
}

void sub_29EB425A0(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_29EB43090(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v8, &qword_2A1882018, &qword_29EB53158);
    swift_endAccess();
    sub_29EB42FCC(v4);
  }

  else
  {
    sub_29EB4315C(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v9, &qword_2A1882018, &qword_29EB53158);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_29EB4270C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - v7;
  v9 = sub_29EB5244C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v34 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_activePolicy);
  v16 = sub_29EB5250C();
  v37 = a1;
  [a1 encodeInteger:v15 forKey:v16];

  v36 = v1;
  sub_29EB43028(v1 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate, v8, &qword_2A1882000, &qword_29EB53150);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_29EB43FCC(v8, &qword_2A1882000, &qword_29EB53150);
    v18 = v37;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v19 = sub_29EB5243C();
    v20 = sub_29EB5250C();
    v18 = v37;
    [v37 encodeObject:v19 forKey:v20];

    (*(v10 + 8))(v14, v9);
  }

  v21 = v36;
  sub_29EB43028(v36 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_disablementDate, v6, &qword_2A1882000, &qword_29EB53150);
  if (v17(v6, 1, v9) == 1)
  {
    sub_29EB43FCC(v6, &qword_2A1882000, &qword_29EB53150);
    v22 = 0x29F380000;
  }

  else
  {
    v23 = v35;
    (*(v10 + 32))(v35, v6, v9);
    v24 = sub_29EB5243C();
    v25 = sub_29EB5250C();
    v22 = 0x29F380000uLL;
    [v18 encodeObject:v24 forKey:v25];

    (*(v10 + 8))(v23, v9);
  }

  v26 = *(v21 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_deviceSupported);
  v27 = sub_29EB5250C();
  [v18 encodeBool:v26 forKey:v27];

  sub_29EB42C2C(*(v21 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_impactedBundleIdentifiers));
  sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  v28 = sub_29EB5256C();

  v29 = sub_29EB5250C();
  [v18 *(v22 + 2312)];

  sub_29EB42C2C(*(v21 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_previouslyImpactedBundleIdentifiers));
  v30 = sub_29EB5256C();

  v31 = sub_29EB5250C();
  [v18 *(v22 + 2312)];

  v32 = *(v21 + OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementStrategy);
  v33 = sub_29EB5250C();
  [v18 encodeInteger:v32 forKey:v33];
}

uint64_t sub_29EB42C2C(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x29EDCA190];
  if (v2)
  {
    v5 = MEMORY[0x29EDCA190];
    sub_29EB526DC();
    v4 = a1 + 40;
    do
    {

      sub_29EB5250C();

      sub_29EB526BC();
      sub_29EB526EC();
      sub_29EB526FC();
      sub_29EB526CC();
      v4 += 16;
      --v2;
    }

    while (v2);
    return v5;
  }

  return result;
}

id SustainedExecutionStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_29EB431C0(a1);

  return v4;
}

id SustainedExecutionStatus.init(coder:)(void *a1)
{
  v2 = sub_29EB431C0(a1);

  return v2;
}

id SustainedExecutionStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SustainedExecutionStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SustainedExecutionStatus(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29EB42F94(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29EB42FCC(uint64_t a1)
{
  v2 = type metadata accessor for SustainedExecutionStatus.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EB43028(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EB43090(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SustainedExecutionStatus.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB430F4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_29EB4315C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SustainedExecutionStatus.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29EB431C0(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v56 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v55 - v7;
  v9 = sub_29EB5244C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v55 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v55 - v13;
  v15 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus____lazy_storage___config;
  v16 = type metadata accessor for SustainedExecutionStatus.Config(0);
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = sub_29EB5250C();
  v18 = [a1 decodeIntegerForKey_];

  v19 = sub_29EB4BF88(v18);
  if (v20)
  {
    v21 = 0;
  }

  else
  {
    v21 = v19;
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_activePolicy] = v21;
  v22 = sub_29EB5250C();
  v23 = 0x29F380000uLL;
  v24 = [a1 containsValueForKey_];

  *&v57 = v10;
  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_29EB53140;
    *(v25 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
    sub_29EB525FC();

    if (v59)
    {
      v26 = swift_dynamicCast();
      v27 = *(v10 + 56);
      v27(v8, v26 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v28 = *(v10 + 32);
        v28(v14, v8, v9);
        v29 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate;
        v28(&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate], v14, v9);
        v23 = 0x29F380000;
        v27(&v2[v29], 0, 1, v9);
        goto LABEL_11;
      }
    }

    else
    {
      sub_29EB43FCC(v58, &unk_2A18820E0, &unk_29EB53060);
      v27 = *(v10 + 56);
      v27(v8, 1, 1, v9);
    }

    sub_29EB43FCC(v8, &qword_2A1882000, &qword_29EB53150);
    v27(&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate], 1, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementDate], 1, 1, v9);
  }

LABEL_11:
  v30 = sub_29EB5250C();
  v31 = [a1 *(v23 + 2336)];

  if (!v31)
  {
LABEL_17:
    v27(&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_disablementDate], 1, 1, v9);
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29EB53140;
  *(v32 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
  sub_29EB525FC();

  if (!v59)
  {
    sub_29EB43FCC(v58, &unk_2A18820E0, &unk_29EB53060);
    v33 = v56;
    v27(v56, 1, 1, v9);
    goto LABEL_16;
  }

  v33 = v56;
  v34 = swift_dynamicCast();
  v35 = v57;
  v27(v33, v34 ^ 1u, 1, v9);
  if ((*(v35 + 48))(v33, 1, v9) == 1)
  {
LABEL_16:
    sub_29EB43FCC(v33, &qword_2A1882000, &qword_29EB53150);
    goto LABEL_17;
  }

  v36 = *(v57 + 32);
  v37 = v55;
  v36(v55, v33, v9);
  v38 = OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_disablementDate;
  v36(&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_disablementDate], v37, v9);
  v27(&v2[v38], 0, 1, v9);
LABEL_18:
  v39 = sub_29EB5250C();
  v40 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_deviceSupported] = v40;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v41 = swift_allocObject();
  v57 = xmmword_29EB53140;
  *(v41 + 16) = xmmword_29EB53140;
  v42 = sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  *(v41 + 32) = v42;
  v43 = sub_29EB5261C();

  v44 = MEMORY[0x29EDCA190];
  if (v43)
  {
    v45 = sub_29EB49B98(v43);

    if (v45)
    {
      v44 = v45;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_impactedBundleIdentifiers] = v44;
  v46 = swift_allocObject();
  *(v46 + 16) = v57;
  *(v46 + 32) = v42;
  v47 = sub_29EB5261C();

  v48 = MEMORY[0x29EDCA190];
  if (v47)
  {
    v49 = sub_29EB49B98(v47);

    if (v49)
    {
      v48 = v49;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_previouslyImpactedBundleIdentifiers] = v48;
  v50 = sub_29EB5250C();
  v51 = [a1 decodeIntegerForKey_];

  v52 = v51 == 1;
  if (v51 == 2)
  {
    v52 = 2;
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation24SustainedExecutionStatus_enablementStrategy] = v52;
  v53 = type metadata accessor for SustainedExecutionStatus(0);
  v60.receiver = v2;
  v60.super_class = v53;
  return objc_msgSendSuper2(&v60, sel_init);
}

void sub_29EB43A2C(uint64_t a1)
{
  sub_29EB43C9C(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB43C9C(319, &unk_2A18820A8, type metadata accessor for SustainedExecutionStatus.Config);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29EB43C9C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29EB5265C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29EB43D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29EB43DE4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_29EB43EAC(uint64_t a1)
{
  sub_29EB43C9C(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB43F7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29EB43F7C()
{
  if (!qword_2A1882290)
  {
    v0 = sub_29EB5258C();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1882290);
    }
  }
}

uint64_t sub_29EB43FCC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29EB4402C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t DynamicSplitterStatus.Config.deviceSupported.setter(char a1)
{
  result = type metadata accessor for DynamicSplitterStatus.Config(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t DynamicSplitterStatus.Config.impactedBundleIdentifiers.getter()
{
  type metadata accessor for DynamicSplitterStatus.Config(0);
}

uint64_t DynamicSplitterStatus.Config.impactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DynamicSplitterStatus.Config(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DynamicSplitterStatus.Config.previouslyImpactedBundleIdentifiers.getter()
{
  type metadata accessor for DynamicSplitterStatus.Config(0);
}

uint64_t DynamicSplitterStatus.Config.previouslyImpactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for DynamicSplitterStatus.Config(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t DynamicSplitterStatus.Config.enablementStrategy.setter(uint64_t a1)
{
  result = type metadata accessor for DynamicSplitterStatus.Config(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t DynamicSplitterStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:enablementStrategy:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X8>)
{
  v12 = type metadata accessor for DynamicSplitterStatus.Config(0);
  v13 = v12[5];
  v14 = sub_29EB5244C();
  v15 = *(*(v14 - 8) + 56);
  v15(&a8[v13], 1, 1, v14);
  v16 = v12[6];
  v15(&a8[v16], 1, 1, v14);
  *a8 = a1;
  sub_29EB430F4(a2, &a8[v13], &qword_2A1882000, &qword_29EB53150);
  result = sub_29EB430F4(a3, &a8[v16], &qword_2A1882000, &qword_29EB53150);
  a8[v12[7]] = a4;
  *&a8[v12[8]] = a5;
  *&a8[v12[9]] = a6;
  *&a8[v12[10]] = a7;
  return result;
}

_BYTE *DynamicSplitterStatus.init(config:)(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
  v4 = type metadata accessor for DynamicSplitterStatus.Config(0);
  (*(*(v4 - 1) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enabled] = *a1;
  sub_29EB43028(&a1[v4[5]], &v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate], &qword_2A1882000, &qword_29EB53150);
  sub_29EB43028(&a1[v4[6]], &v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_disablementDate], &qword_2A1882000, &qword_29EB53150);
  v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_deviceSupported] = a1[v4[7]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_impactedBundleIdentifiers] = *&a1[v4[8]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_previouslyImpactedBundleIdentifiers] = *&a1[v4[9]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementStrategy] = *&a1[v4[10]];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for DynamicSplitterStatus(0);

  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_29EB44910(a1);
  return v5;
}

uint64_t sub_29EB44910(uint64_t a1)
{
  v2 = type metadata accessor for DynamicSplitterStatus.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EB4496C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882168, &qword_29EB53208);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for DynamicSplitterStatus.Config(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB44EFC(a1, v10);
  v11 = *a2;
  sub_29EB44F60(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v6, v11 + v12, &qword_2A1882168, &qword_29EB53208);
  return swift_endAccess();
}

uint64_t sub_29EB44AF0@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882168, &qword_29EB53208);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB43028(v1 + v9, v8, &qword_2A1882168, &qword_29EB53208);
  v10 = type metadata accessor for DynamicSplitterStatus.Config(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_29EB44F60(v8, a1);
  }

  sub_29EB43FCC(v8, &qword_2A1882168, &qword_29EB53208);
  sub_29EB44CD4(v1, a1);
  sub_29EB44EFC(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_29EB430F4(v6, v1 + v9, &qword_2A1882168, &qword_29EB53208);
  return swift_endAccess();
}

uint64_t sub_29EB44CD4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v20 - v8;
  v10 = sub_29EB5244C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v11(v7, 1, 1, v10);
  v12 = type metadata accessor for DynamicSplitterStatus.Config(0);
  v13 = v12[5];
  v11(&a2[v13], 1, 1, v10);
  v14 = v12[6];
  v11(&a2[v14], 1, 1, v10);
  sub_29EB430F4(v9, &a2[v13], &qword_2A1882000, &qword_29EB53150);
  sub_29EB430F4(v7, &a2[v14], &qword_2A1882000, &qword_29EB53150);
  v15 = v12[7];
  v16 = v12[8];
  v17 = v12[9];
  v18 = v12[10];
  *a2 = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enabled);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate, &a2[v13]);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_disablementDate, &a2[v14]);
  a2[v15] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_deviceSupported);
  *&a2[v16] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_impactedBundleIdentifiers);
  *&a2[v17] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_previouslyImpactedBundleIdentifiers);
  *&a2[v18] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementStrategy);
}

uint64_t sub_29EB44EFC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicSplitterStatus.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB44F60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DynamicSplitterStatus.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB44FC4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882168, &qword_29EB53208);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v9 - v4;
  sub_29EB44F60(a1, &v9 - v4);
  v6 = type metadata accessor for DynamicSplitterStatus.Config(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v5, v1 + v7, &qword_2A1882168, &qword_29EB53208);
  return swift_endAccess();
}

void (*sub_29EB450D4(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882168, &qword_29EB53208) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for DynamicSplitterStatus.Config(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_29EB44AF0(v10);
  return sub_29EB451F4;
}

void sub_29EB451F4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_29EB44EFC(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v8, &qword_2A1882168, &qword_29EB53208);
    swift_endAccess();
    sub_29EB44910(v4);
  }

  else
  {
    sub_29EB44F60(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v9, &qword_2A1882168, &qword_29EB53208);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_29EB45360(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v34 - v7;
  v9 = sub_29EB5244C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v35 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v34 - v13;
  v15 = *(v1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enabled);
  v16 = sub_29EB5250C();
  v37 = a1;
  [a1 encodeBool:v15 forKey:v16];

  v36 = v1;
  sub_29EB43028(v1 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate, v8, &qword_2A1882000, &qword_29EB53150);
  v17 = *(v10 + 48);
  if (v17(v8, 1, v9) == 1)
  {
    sub_29EB43FCC(v8, &qword_2A1882000, &qword_29EB53150);
    v18 = v37;
  }

  else
  {
    (*(v10 + 32))(v14, v8, v9);
    v19 = sub_29EB5243C();
    v20 = sub_29EB5250C();
    v18 = v37;
    [v37 encodeObject:v19 forKey:v20];

    (*(v10 + 8))(v14, v9);
  }

  v21 = v36;
  sub_29EB43028(v36 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_disablementDate, v6, &qword_2A1882000, &qword_29EB53150);
  if (v17(v6, 1, v9) == 1)
  {
    sub_29EB43FCC(v6, &qword_2A1882000, &qword_29EB53150);
    v22 = 0x29F380000;
  }

  else
  {
    v23 = v35;
    (*(v10 + 32))(v35, v6, v9);
    v24 = sub_29EB5243C();
    v25 = sub_29EB5250C();
    v22 = 0x29F380000uLL;
    [v18 encodeObject:v24 forKey:v25];

    (*(v10 + 8))(v23, v9);
  }

  v26 = *(v21 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_deviceSupported);
  v27 = sub_29EB5250C();
  [v18 encodeBool:v26 forKey:v27];

  sub_29EB42C2C(*(v21 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_impactedBundleIdentifiers));
  sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  v28 = sub_29EB5256C();

  v29 = sub_29EB5250C();
  [v18 *(v22 + 2312)];

  sub_29EB42C2C(*(v21 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_previouslyImpactedBundleIdentifiers));
  v30 = sub_29EB5256C();

  v31 = sub_29EB5250C();
  [v18 *(v22 + 2312)];

  v32 = *(v21 + OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementStrategy);
  v33 = sub_29EB5250C();
  [v18 encodeInteger:v32 forKey:v33];
}

id DynamicSplitterStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_29EB45AFC(a1);

  return v4;
}

id DynamicSplitterStatus.init(coder:)(void *a1)
{
  v2 = sub_29EB45AFC(a1);

  return v2;
}

id DynamicSplitterStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DynamicSplitterStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DynamicSplitterStatus(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29EB45AFC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v51 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v50 - v7;
  v9 = sub_29EB5244C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v50 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v50 - v13;
  v15 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus____lazy_storage___config;
  v16 = type metadata accessor for DynamicSplitterStatus.Config(0);
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = sub_29EB5250C();
  LOBYTE(v15) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enabled] = v15;
  v18 = sub_29EB5250C();
  v19 = 0x29F380000uLL;
  LOBYTE(v17) = [a1 containsValueForKey_];

  *&v52 = v10;
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29EB53140;
    *(v20 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
    sub_29EB525FC();

    if (v54)
    {
      v21 = swift_dynamicCast();
      v22 = *(v10 + 56);
      v22(v8, v21 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v23 = *(v10 + 32);
        v23(v14, v8, v9);
        v24 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate;
        v23(&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate], v14, v9);
        v19 = 0x29F380000;
        v22(&v2[v24], 0, 1, v9);
        goto LABEL_8;
      }
    }

    else
    {
      sub_29EB43FCC(v53, &unk_2A18820E0, &unk_29EB53060);
      v22 = *(v10 + 56);
      v22(v8, 1, 1, v9);
    }

    sub_29EB43FCC(v8, &qword_2A1882000, &qword_29EB53150);
    v22(&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate], 1, 1, v9);
  }

  else
  {
    v22 = *(v10 + 56);
    v22(&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementDate], 1, 1, v9);
  }

LABEL_8:
  v25 = sub_29EB5250C();
  v26 = [a1 *(v19 + 2336)];

  if (!v26)
  {
LABEL_14:
    v22(&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_disablementDate], 1, 1, v9);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_29EB53140;
  *(v27 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
  sub_29EB525FC();

  if (!v54)
  {
    sub_29EB43FCC(v53, &unk_2A18820E0, &unk_29EB53060);
    v22(v51, 1, 1, v9);
    goto LABEL_13;
  }

  v28 = v51;
  v29 = swift_dynamicCast();
  v30 = v52;
  v22(v28, v29 ^ 1u, 1, v9);
  if ((*(v30 + 48))(v28, 1, v9) == 1)
  {
LABEL_13:
    sub_29EB43FCC(v51, &qword_2A1882000, &qword_29EB53150);
    goto LABEL_14;
  }

  v31 = *(v52 + 32);
  v32 = v50;
  v31(v50, v51, v9);
  v33 = OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_disablementDate;
  v31(&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_disablementDate], v32, v9);
  v22(&v2[v33], 0, 1, v9);
LABEL_15:
  v34 = sub_29EB5250C();
  v35 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_deviceSupported] = v35;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v36 = swift_allocObject();
  v52 = xmmword_29EB53140;
  *(v36 + 16) = xmmword_29EB53140;
  v37 = sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  *(v36 + 32) = v37;
  v38 = sub_29EB5261C();

  v39 = MEMORY[0x29EDCA190];
  if (v38)
  {
    v40 = sub_29EB49B98(v38);

    if (v40)
    {
      v39 = v40;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_impactedBundleIdentifiers] = v39;
  v41 = swift_allocObject();
  *(v41 + 16) = v52;
  *(v41 + 32) = v37;
  v42 = sub_29EB5261C();

  v43 = MEMORY[0x29EDCA190];
  if (v42)
  {
    v44 = sub_29EB49B98(v42);

    if (v44)
    {
      v43 = v44;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_previouslyImpactedBundleIdentifiers] = v43;
  v45 = sub_29EB5250C();
  v46 = [a1 decodeIntegerForKey_];

  v47 = v46 == 1;
  if (v46 == 2)
  {
    v47 = 2;
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation21DynamicSplitterStatus_enablementStrategy] = v47;
  v48 = type metadata accessor for DynamicSplitterStatus(0);
  v55.receiver = v2;
  v55.super_class = v48;
  return objc_msgSendSuper2(&v55, sel_init);
}

void sub_29EB46348(uint64_t a1)
{
  sub_29EB46584(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB46584(319, &unk_2A1882188, type metadata accessor for DynamicSplitterStatus.Config);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29EB46584(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29EB5265C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29EB465EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29EB466CC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_29EB46794(uint64_t a1)
{
  sub_29EB46584(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB43F7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t GameModeStatus.Config.deviceSupported.setter(char a1)
{
  result = type metadata accessor for GameModeStatus.Config(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t GameModeStatus.Config.jettisonCameraS2R.setter(char a1)
{
  result = type metadata accessor for GameModeStatus.Config(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t GameModeStatus.Config.gameBundleIdentifiers.getter()
{
  type metadata accessor for GameModeStatus.Config(0);
}

uint64_t GameModeStatus.Config.gameBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameModeStatus.Config(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GameModeStatus.Config.previousGameBundleIdentifiers.getter()
{
  type metadata accessor for GameModeStatus.Config(0);
}

uint64_t GameModeStatus.Config.previousGameBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameModeStatus.Config(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GameModeStatus.Config.impactedBundleIdentifiers.getter()
{
  type metadata accessor for GameModeStatus.Config(0);
}

uint64_t GameModeStatus.Config.impactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameModeStatus.Config(0) + 44);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GameModeStatus.Config.previouslyImpactedBundleIdentifiers.getter()
{
  type metadata accessor for GameModeStatus.Config(0);
}

uint64_t GameModeStatus.Config.previouslyImpactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameModeStatus.Config(0) + 48);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GameModeStatus.Config.allGameBundleIdentifiers.getter()
{
  type metadata accessor for GameModeStatus.Config(0);
}

uint64_t GameModeStatus.Config.allGameBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameModeStatus.Config(0) + 52);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GameModeStatus.Config.previousAllGameBundleIdentifiers.getter()
{
  type metadata accessor for GameModeStatus.Config(0);
}

uint64_t GameModeStatus.Config.previousAllGameBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for GameModeStatus.Config(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t GameModeStatus.Config.enablementStrategy.setter(uint64_t a1)
{
  result = type metadata accessor for GameModeStatus.Config(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t GameModeStatus.Config.perfomanceGamingModeEnabled.setter(char a1)
{
  result = type metadata accessor for GameModeStatus.Config(0);
  *(v1 + *(result + 64)) = a1;
  return result;
}

uint64_t GameModeStatus.Config.init(enabled:enablementDate:disablementDate:deviceSupported:jettisonCameraS2R:gameBundleIdentifiers:previousGameBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:allGameBundleIdentifiers:previousAllGameBundleIdentifiers:enablementStrategy:perfomanceGamingModeEnabled:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14)
{
  v18 = type metadata accessor for GameModeStatus.Config(0);
  v19 = v18[5];
  v20 = sub_29EB5244C();
  v21 = *(*(v20 - 8) + 56);
  v21(&a9[v19], 1, 1, v20);
  v22 = v18[6];
  v21(&a9[v22], 1, 1, v20);
  *a9 = a1;
  sub_29EB430F4(a2, &a9[v19], &qword_2A1882000, &qword_29EB53150);
  result = sub_29EB430F4(a3, &a9[v22], &qword_2A1882000, &qword_29EB53150);
  a9[v18[7]] = a4;
  a9[v18[8]] = a5;
  *&a9[v18[9]] = a6;
  *&a9[v18[10]] = a7;
  *&a9[v18[11]] = a8;
  *&a9[v18[12]] = a10;
  *&a9[v18[13]] = a11;
  *&a9[v18[14]] = a12;
  *&a9[v18[15]] = a13;
  a9[v18[16]] = a14;
  return result;
}

_BYTE *GameModeStatus.init(config:)(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
  v4 = type metadata accessor for GameModeStatus.Config(0);
  (*(*(v4 - 1) + 56))(&v1[v3], 1, 1, v4);
  v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enabled] = *a1;
  sub_29EB43028(&a1[v4[5]], &v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate], &qword_2A1882000, &qword_29EB53150);
  sub_29EB43028(&a1[v4[6]], &v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_disablementDate], &qword_2A1882000, &qword_29EB53150);
  v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_deviceSupported] = a1[v4[7]];
  v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_jettisonCameraS2R] = a1[v4[8]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_gameBundleIdentifiers] = *&a1[v4[9]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousGameBundleIdentifiers] = *&a1[v4[10]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_impactedBundleIdentifiers] = *&a1[v4[11]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previouslyImpactedBundleIdentifiers] = *&a1[v4[12]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_allGameBundleIdentifiers] = *&a1[v4[13]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousAllGameBundleIdentifiers] = *&a1[v4[14]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementStrategy] = *&a1[v4[15]];
  v1[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_perfomanceGamingModeEnabled] = a1[v4[16]];
  v7.receiver = v1;
  v7.super_class = type metadata accessor for GameModeStatus(0);

  v5 = objc_msgSendSuper2(&v7, sel_init);
  sub_29EB4767C(a1);
  return v5;
}

uint64_t sub_29EB4767C(uint64_t a1)
{
  v2 = type metadata accessor for GameModeStatus.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EB476D8(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18821B8, &qword_29EB53298);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for GameModeStatus.Config(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB47D10(a1, v10);
  v11 = *a2;
  sub_29EB47D74(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v6, v11 + v12, &qword_2A18821B8, &qword_29EB53298);
  return swift_endAccess();
}

uint64_t sub_29EB4785C@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18821B8, &qword_29EB53298);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB43028(v1 + v9, v8, &qword_2A18821B8, &qword_29EB53298);
  v10 = type metadata accessor for GameModeStatus.Config(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_29EB47D74(v8, a1);
  }

  sub_29EB43FCC(v8, &qword_2A18821B8, &qword_29EB53298);
  sub_29EB47A40(v1, a1);
  sub_29EB47D10(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_29EB430F4(v6, v1 + v9, &qword_2A18821B8, &qword_29EB53298);
  return swift_endAccess();
}

uint64_t sub_29EB47A40@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v26 - v8;
  v10 = sub_29EB5244C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v11(v7, 1, 1, v10);
  v12 = type metadata accessor for GameModeStatus.Config(0);
  v13 = v12[5];
  v11(&a2[v13], 1, 1, v10);
  v14 = v12[6];
  v11(&a2[v14], 1, 1, v10);
  sub_29EB430F4(v9, &a2[v13], &qword_2A1882000, &qword_29EB53150);
  sub_29EB430F4(v7, &a2[v14], &qword_2A1882000, &qword_29EB53150);
  v15 = v12[7];
  v16 = v12[8];
  v17 = v12[9];
  v18 = v12[10];
  v19 = v12[11];
  v21 = v12[13];
  v20 = v12[14];
  v26 = v12[12];
  v27 = v21;
  v28 = v20;
  v22 = v12[15];
  v23 = v12[16];
  v29 = v22;
  *a2 = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enabled);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate, &a2[v13]);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_disablementDate, &a2[v14]);
  a2[v15] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_deviceSupported);
  a2[v16] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_jettisonCameraS2R);
  *&a2[v17] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_gameBundleIdentifiers);
  *&a2[v18] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousGameBundleIdentifiers);
  *&a2[v19] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_impactedBundleIdentifiers);
  *&a2[v26] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previouslyImpactedBundleIdentifiers);
  *&a2[v27] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_allGameBundleIdentifiers);
  v24 = v29;
  *&a2[v28] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousAllGameBundleIdentifiers);
  *&a2[v24] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementStrategy);
  a2[v23] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_perfomanceGamingModeEnabled);
}

uint64_t sub_29EB47D10(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameModeStatus.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB47D74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameModeStatus.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB47DD8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18821B8, &qword_29EB53298);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v9 - v4;
  sub_29EB47D74(a1, &v9 - v4);
  v6 = type metadata accessor for GameModeStatus.Config(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v5, v1 + v7, &qword_2A18821B8, &qword_29EB53298);
  return swift_endAccess();
}

void (*sub_29EB47EE8(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18821B8, &qword_29EB53298) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for GameModeStatus.Config(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_29EB4785C(v10);
  return sub_29EB48008;
}

void sub_29EB48008(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_29EB47D10(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v8, &qword_2A18821B8, &qword_29EB53298);
    swift_endAccess();
    sub_29EB4767C(v4);
  }

  else
  {
    sub_29EB47D74(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v9, &qword_2A18821B8, &qword_29EB53298);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_29EB48174(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v45 - v8;
  v10 = sub_29EB5244C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v46 = &v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v45 - v14;
  v16 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enabled);
  v17 = sub_29EB5250C();
  [a1 encodeBool:v16 forKey:v17];

  sub_29EB43028(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate, v9, &qword_2A1882000, &qword_29EB53150);
  v18 = *(v11 + 48);
  if (v18(v9, 1, v10) == 1)
  {
    sub_29EB43FCC(v9, &qword_2A1882000, &qword_29EB53150);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v19 = sub_29EB5243C();
    v20 = sub_29EB5250C();
    [a1 0x1FA948F02];

    (*(v11 + 8))(v15, v10);
  }

  sub_29EB43028(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_disablementDate, v7, &qword_2A1882000, &qword_29EB53150);
  if (v18(v7, 1, v10) == 1)
  {
    sub_29EB43FCC(v7, &qword_2A1882000, &qword_29EB53150);
    v21 = 0x29F380000;
  }

  else
  {
    v22 = v46;
    (*(v11 + 32))(v46, v7, v10);
    v23 = sub_29EB5243C();
    v24 = sub_29EB5250C();
    v21 = 0x29F380000uLL;
    [a1 encodeObject:v23 forKey:v24];

    (*(v11 + 8))(v22, v10);
  }

  v25 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_deviceSupported);
  v26 = sub_29EB5250C();
  [a1 encodeBool:v25 forKey:v26];

  v27 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_jettisonCameraS2R);
  v28 = sub_29EB5250C();
  [a1 encodeBool:v27 forKey:v28];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_gameBundleIdentifiers));
  sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  v29 = sub_29EB5256C();

  v30 = sub_29EB5250C();
  [a1 *(v21 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousGameBundleIdentifiers));
  v31 = sub_29EB5256C();

  v32 = sub_29EB5250C();
  [a1 *(v21 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_impactedBundleIdentifiers));
  v33 = sub_29EB5256C();

  v34 = sub_29EB5250C();
  [a1 *(v21 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previouslyImpactedBundleIdentifiers));
  v35 = sub_29EB5256C();

  v36 = sub_29EB5250C();
  [a1 *(v21 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_allGameBundleIdentifiers));
  v37 = sub_29EB5256C();

  v38 = sub_29EB5250C();
  [a1 *(v21 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousAllGameBundleIdentifiers));
  v39 = sub_29EB5256C();

  v40 = sub_29EB5250C();
  [a1 *(v21 + 2312)];

  v41 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementStrategy);
  v42 = sub_29EB5250C();
  [a1 encodeInteger:v41 forKey:v42];

  v43 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_perfomanceGamingModeEnabled);
  v44 = sub_29EB5250C();
  [a1 encodeBool:v43 forKey:v44];
}

id GameModeStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_29EB48B48(a1);

  return v4;
}

id GameModeStatus.init(coder:)(void *a1)
{
  v2 = sub_29EB48B48(a1);

  return v2;
}

id GameModeStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id GameModeStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GameModeStatus(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_29EB48B48(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  *&v74 = &v72 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v72 - v7;
  v9 = sub_29EB5244C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v73 = &v72 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v72 - v13;
  v15 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus____lazy_storage___config;
  v16 = type metadata accessor for GameModeStatus.Config(0);
  (*(*(v16 - 8) + 56))(&v2[v15], 1, 1, v16);
  v17 = sub_29EB5250C();
  LOBYTE(v15) = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enabled] = v15;
  v18 = sub_29EB5250C();
  LOBYTE(v17) = [a1 containsValueForKey_];

  v19 = "essEvaluator";
  if (v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_29EB53140;
    *(v20 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
    sub_29EB525FC();

    if (v76)
    {
      v21 = swift_dynamicCast();
      v22 = *(v10 + 56);
      v22(v8, v21 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v23 = *(v10 + 32);
        v23(v14, v8, v9);
        v24 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate;
        v23(&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate], v14, v9);
        v19 = "EmbeddedGameProcessEvaluator" + 16;
        v22(&v2[v24], 0, 1, v9);
        goto LABEL_8;
      }
    }

    else
    {
      sub_29EB43FCC(v75, &unk_2A18820E0, &unk_29EB53060);
      v22 = *(v10 + 56);
      v22(v8, 1, 1, v9);
    }

    sub_29EB43FCC(v8, &qword_2A1882000, &qword_29EB53150);
    v22(&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate], 1, 1, v9);
  }

  else
  {
    v22 = *(v10 + 56);
    v22(&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementDate], 1, 1, v9);
  }

LABEL_8:
  v25 = sub_29EB5250C();
  v26 = [a1 containsValueForKey_];

  if (v26)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
    v27 = swift_allocObject();
    *(v27 + 16) = *(v19 + 20);
    *(v27 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
    sub_29EB525FC();

    if (v76)
    {
      v28 = v74;
      v29 = swift_dynamicCast();
      v22(v28, v29 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v28, 1, v9) != 1)
      {
        v30 = v19;
        v31 = *(v10 + 32);
        v32 = v73;
        v31(v73, v28, v9);
        v33 = OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_disablementDate;
        v31(&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_disablementDate], v32, v9);
        v22(&v2[v33], 0, 1, v9);
        goto LABEL_15;
      }
    }

    else
    {
      sub_29EB43FCC(v75, &unk_2A18820E0, &unk_29EB53060);
      v28 = v74;
      v22(v74, 1, 1, v9);
    }

    sub_29EB43FCC(v28, &qword_2A1882000, &qword_29EB53150);
  }

  v30 = v19;
  v22(&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_disablementDate], 1, 1, v9);
LABEL_15:
  v34 = sub_29EB5250C();
  v35 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_deviceSupported] = v35;
  v36 = sub_29EB5250C();
  v37 = [a1 containsValueForKey_];

  if (v37)
  {
    v38 = sub_29EB5250C();
    v39 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_jettisonCameraS2R] = v39;
  }

  else
  {
    v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_jettisonCameraS2R] = 0;
  }

  v40 = sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  v41 = sub_29EB5260C();
  if (v41 && (v75[0] = v41, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882200, &qword_29EB53360), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882208, &unk_29EB53368), (swift_dynamicCast() & 1) != 0))
  {
    v42 = v77;
  }

  else
  {
    v42 = MEMORY[0x29EDCA190];
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_gameBundleIdentifiers] = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v43 = swift_allocObject();
  v74 = *(v30 + 20);
  *(v43 + 16) = v74;
  *(v43 + 32) = v40;
  v44 = sub_29EB5261C();

  v45 = MEMORY[0x29EDCA190];
  if (v44)
  {
    v46 = sub_29EB49B98(v44);

    if (v46)
    {
      v45 = v46;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousGameBundleIdentifiers] = v45;
  v47 = swift_allocObject();
  *(v47 + 16) = v74;
  *(v47 + 32) = v40;
  v48 = sub_29EB5261C();

  v49 = MEMORY[0x29EDCA190];
  if (v48)
  {
    v50 = sub_29EB49B98(v48);

    if (v50)
    {
      v49 = v50;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_impactedBundleIdentifiers] = v49;
  v51 = swift_allocObject();
  *(v51 + 16) = v74;
  *(v51 + 32) = v40;
  v52 = sub_29EB5261C();

  v53 = MEMORY[0x29EDCA190];
  if (v52)
  {
    v54 = sub_29EB49B98(v52);

    if (v54)
    {
      v53 = v54;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previouslyImpactedBundleIdentifiers] = v53;
  v55 = swift_allocObject();
  *(v55 + 16) = v74;
  *(v55 + 32) = v40;
  v56 = sub_29EB5261C();

  v57 = MEMORY[0x29EDCA190];
  if (v56)
  {
    v58 = sub_29EB49B98(v56);

    if (v58)
    {
      v57 = v58;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_allGameBundleIdentifiers] = v57;
  v59 = swift_allocObject();
  *(v59 + 16) = v74;
  *(v59 + 32) = v40;
  v60 = sub_29EB5261C();

  v61 = MEMORY[0x29EDCA190];
  if (v60)
  {
    v62 = sub_29EB49B98(v60);

    if (v62)
    {
      v61 = v62;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_previousAllGameBundleIdentifiers] = v61;
  v63 = sub_29EB5250C();
  v64 = [a1 decodeIntegerForKey_];

  v65 = v64 == 1;
  if (v64 == 2)
  {
    v65 = 2;
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_enablementStrategy] = v65;
  v66 = sub_29EB5250C();
  v67 = [a1 containsValueForKey_];

  if (v67)
  {
    v68 = sub_29EB5250C();
    v69 = [a1 decodeBoolForKey_];

    v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_perfomanceGamingModeEnabled] = v69;
  }

  else
  {
    v2[OBJC_IVAR____TtC20GamePolicyFoundation14GameModeStatus_perfomanceGamingModeEnabled] = 0;
  }

  v70 = type metadata accessor for GameModeStatus(0);
  v78.receiver = v2;
  v78.super_class = v70;
  return objc_msgSendSuper2(&v78, sel_init);
}

void sub_29EB49674(uint64_t a1)
{
  sub_29EB498BC(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB498BC(319, &unk_2A18821D8, type metadata accessor for GameModeStatus.Config);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29EB498BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29EB5265C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29EB49924(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29EB49A04(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_29EB49ACC(uint64_t a1)
{
  sub_29EB498BC(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB43F7C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_29EB49B98(uint64_t a1)
{
  v2 = *(a1 + 16);
  v12 = MEMORY[0x29EDCA190];
  sub_29EB4BD38(0, v2, 0);
  v3 = v12;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_29EB41260(i, v11);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v12 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_29EB4BD38((v5 > 1), v6 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v6 + 1;
      v7 = v3 + 16 * v6;
      *(v7 + 32) = v9;
      *(v7 + 40) = v10;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

GamePolicyFoundation::ModelManagerGameAssertionPolicy_optional __swiftcall ModelManagerGameAssertionPolicy.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_29EB5273C();

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

  *v2 = v5;
  return result;
}

uint64_t ModelManagerGameAssertionPolicy.rawValue.getter()
{
  if (*v0)
  {
    return 0x4D656D6147414141;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_29EB49D6C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4D656D6147414141;
  }

  else
  {
    v3 = 0xD000000000000010;
  }

  if (v2)
  {
    v4 = 0x800000029EB53890;
  }

  else
  {
    v4 = 0xEB0000000065646FLL;
  }

  if (*a2)
  {
    v5 = 0x4D656D6147414141;
  }

  else
  {
    v5 = 0xD000000000000010;
  }

  if (*a2)
  {
    v6 = 0xEB0000000065646FLL;
  }

  else
  {
    v6 = 0x800000029EB53890;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_29EB5274C();
  }

  return v8 & 1;
}

uint64_t sub_29EB49E20()
{
  sub_29EB5278C();
  sub_29EB5253C();

  return sub_29EB527AC();
}

uint64_t sub_29EB49EB0(uint64_t a1)
{
  sub_29EB5253C();
}

uint64_t sub_29EB49F2C(uint64_t a1)
{
  sub_29EB5278C();
  sub_29EB5253C();

  return sub_29EB527AC();
}

uint64_t sub_29EB49FB8@<X0>(char *a2@<X8>)
{
  v3 = sub_29EB5273C();

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

void sub_29EB4A018(unint64_t *a1@<X8>)
{
  v2 = 0x800000029EB53890;
  v3 = 0xD000000000000010;
  if (*v1)
  {
    v3 = 0x4D656D6147414141;
    v2 = 0xEB0000000065646FLL;
  }

  *a1 = v3;
  a1[1] = v2;
}

unint64_t sub_29EB4A0D4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_29EB4BF88(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

uint64_t ModelManagerGameAssertionStatus.Config.deviceSupported.setter(char a1)
{
  result = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  *(v1 + *(result + 28)) = a1;
  return result;
}

uint64_t ModelManagerGameAssertionStatus.Config.aaaBundleIdentifiers.getter()
{
  type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
}

uint64_t ModelManagerGameAssertionStatus.Config.aaaBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModelManagerGameAssertionStatus.Config(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ModelManagerGameAssertionStatus.Config.impactedBundleIdentifiers.getter()
{
  type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
}

uint64_t ModelManagerGameAssertionStatus.Config.impactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModelManagerGameAssertionStatus.Config(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ModelManagerGameAssertionStatus.Config.previouslyImpactedBundleIdentifiers.getter()
{
  type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
}

uint64_t ModelManagerGameAssertionStatus.Config.previouslyImpactedBundleIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for ModelManagerGameAssertionStatus.Config(0) + 40);

  *(v1 + v3) = a1;
  return result;
}

uint64_t ModelManagerGameAssertionStatus.Config.policyStrategy.setter(uint64_t a1)
{
  result = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t ModelManagerGameAssertionStatus.Config.init(policy:enablementDate:disablementDate:deviceSupported:aaaBundleIdentifiers:impactedBundleIdentifiers:previouslyImpactedBundleIdentifiers:policyStrategy:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>)
{
  v12 = *a1;
  *a9 = 2;
  v13 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  v14 = v13[5];
  v15 = sub_29EB5244C();
  v16 = *(*(v15 - 8) + 56);
  v16(&a9[v14], 1, 1, v15);
  v17 = v13[6];
  v16(&a9[v17], 1, 1, v15);
  *a9 = v12;
  sub_29EB430F4(a2, &a9[v14], &qword_2A1882000, &qword_29EB53150);
  result = sub_29EB430F4(a3, &a9[v17], &qword_2A1882000, &qword_29EB53150);
  a9[v13[7]] = a4;
  *&a9[v13[8]] = a5;
  *&a9[v13[9]] = a6;
  *&a9[v13[10]] = a7;
  *&a9[v13[11]] = a8;
  return result;
}

uint64_t sub_29EB4A7A8@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t sub_29EB4A7FC(char *a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  result = swift_beginAccess();
  *(v1 + v3) = v2;
  return result;
}

_BYTE *ModelManagerGameAssertionStatus.init(config:)(_BYTE *a1)
{
  v3 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy] = 2;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
  v5 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  (*(*(v5 - 1) + 56))(&v1[v4], 1, 1, v5);
  LOBYTE(v4) = *a1;
  swift_beginAccess();
  v1[v3] = v4;
  sub_29EB43028(&a1[v5[5]], &v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate], &qword_2A1882000, &qword_29EB53150);
  sub_29EB43028(&a1[v5[6]], &v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_disablementDate], &qword_2A1882000, &qword_29EB53150);
  v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_deviceSupported] = a1[v5[7]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_aaaBundleIdentifiers] = *&a1[v5[8]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_impactedBundleIdentifiers] = *&a1[v5[9]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_previouslyImpactedBundleIdentifiers] = *&a1[v5[10]];
  *&v1[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policyStrategy] = *&a1[v5[11]];
  v8.receiver = v1;
  v8.super_class = type metadata accessor for ModelManagerGameAssertionStatus(0);

  v6 = objc_msgSendSuper2(&v8, sel_init);
  sub_29EB4BFD8(a1);
  return v6;
}

uint64_t sub_29EB4AB4C(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1882228, &qword_29EB53378);
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29EB4C034(a1, v10);
  v11 = *a2;
  sub_29EB4C098(v10, v6);
  (*(v8 + 56))(v6, 0, 1, v7);
  v12 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v6, v11 + v12, &unk_2A1882228, &qword_29EB53378);
  return swift_endAccess();
}

uint64_t sub_29EB4ACD0@<X0>(_BYTE *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1882228, &qword_29EB53378);
  v4 = MEMORY[0x2A1C7C4A8](v3 - 8);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v13[-v7];
  v9 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB43028(v1 + v9, v8, &unk_2A1882228, &qword_29EB53378);
  v10 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_29EB4C098(v8, a1);
  }

  sub_29EB43FCC(v8, &unk_2A1882228, &qword_29EB53378);
  sub_29EB4AEB4(v1, a1);
  sub_29EB4C034(a1, v6);
  (*(v11 + 56))(v6, 0, 1, v10);
  swift_beginAccess();
  sub_29EB430F4(v6, v1 + v9, &unk_2A1882228, &qword_29EB53378);
  return swift_endAccess();
}

uint64_t sub_29EB4AEB4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v22 - v8;
  v10 = sub_29EB5244C();
  v11 = *(*(v10 - 8) + 56);
  v11(v9, 1, 1, v10);
  v11(v7, 1, 1, v10);
  *a2 = 2;
  v12 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  v13 = v12[5];
  v11(&a2[v13], 1, 1, v10);
  v14 = v12[6];
  v11(&a2[v14], 1, 1, v10);
  *a2 = 2;
  sub_29EB430F4(v9, &a2[v13], &qword_2A1882000, &qword_29EB53150);
  sub_29EB430F4(v7, &a2[v14], &qword_2A1882000, &qword_29EB53150);
  v15 = v12[7];
  v16 = v12[8];
  v17 = v12[9];
  v18 = v12[10];
  v19 = v12[11];
  v20 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  swift_beginAccess();
  *a2 = *(a1 + v20);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate, &a2[v13]);
  sub_29EB4402C(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_disablementDate, &a2[v14]);
  a2[v15] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_deviceSupported);
  *&a2[v16] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_aaaBundleIdentifiers);
  *&a2[v17] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_impactedBundleIdentifiers);
  *&a2[v18] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_previouslyImpactedBundleIdentifiers);
  *&a2[v19] = *(a1 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policyStrategy);
}

uint64_t sub_29EB4B120(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1882228, &qword_29EB53378);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v9 - v4;
  sub_29EB4C098(a1, &v9 - v4);
  v6 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
  swift_beginAccess();
  sub_29EB430F4(v5, v1 + v7, &unk_2A1882228, &qword_29EB53378);
  return swift_endAccess();
}

void (*sub_29EB4B230(uint64_t *a1))(uint64_t **a1, char a2)
{
  v3 = MEMORY[0x29EDCA1B0];
  if (MEMORY[0x29EDCA1B0])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A1882228, &qword_29EB53378) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[7] = v7;
  v8 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  if (v3)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v5[10] = v10;
  sub_29EB4ACD0(v10);
  return sub_29EB4B350;
}

void sub_29EB4B350(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = ((*a1)[9] + 56);
  v4 = (*a1)[10];
  v5 = (*a1)[7];
  v6 = (*a1)[8];
  v7 = (*a1)[6];
  if (a2)
  {
    sub_29EB4C034(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v8 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v8, &unk_2A1882228, &qword_29EB53378);
    swift_endAccess();
    sub_29EB4BFD8(v4);
  }

  else
  {
    sub_29EB4C098(v2[10], v2[7]);
    (*v3)(v5, 0, 1, v6);
    v9 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
    swift_beginAccess();
    sub_29EB430F4(v5, v7 + v9, &unk_2A1882228, &qword_29EB53378);
    swift_endAccess();
  }

  free(v4);
  free(v5);

  free(v2);
}

void sub_29EB4B4BC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v36 - v8;
  v10 = sub_29EB5244C();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v36 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v12);
  v15 = &v36 - v14;
  v16 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  swift_beginAccess();
  if (*(v2 + v16) != 2)
  {
    v17 = sub_29EB5250C();

    v18 = sub_29EB5250C();
    [a1 encodeObject:v17 forKey:v18];
  }

  sub_29EB43028(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate, v9, &qword_2A1882000, &qword_29EB53150);
  v19 = *(v11 + 48);
  if (v19(v9, 1, v10) == 1)
  {
    sub_29EB43FCC(v9, &qword_2A1882000, &qword_29EB53150);
  }

  else
  {
    (*(v11 + 32))(v15, v9, v10);
    v20 = sub_29EB5243C();
    v21 = sub_29EB5250C();
    [a1 encodeObject:v20 forKey:v21];

    (*(v11 + 8))(v15, v10);
  }

  sub_29EB43028(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_disablementDate, v7, &qword_2A1882000, &qword_29EB53150);
  if (v19(v7, 1, v10) == 1)
  {
    sub_29EB43FCC(v7, &qword_2A1882000, &qword_29EB53150);
    v22 = 0x29F380000;
  }

  else
  {
    v23 = v36;
    (*(v11 + 32))(v36, v7, v10);
    v24 = sub_29EB5243C();
    v25 = sub_29EB5250C();
    v22 = 0x29F380000uLL;
    [a1 encodeObject:v24 forKey:v25];

    (*(v11 + 8))(v23, v10);
  }

  v26 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_deviceSupported);
  v27 = sub_29EB5250C();
  [a1 encodeBool:v26 forKey:v27];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_aaaBundleIdentifiers));
  sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  v28 = sub_29EB5256C();

  v29 = sub_29EB5250C();
  [a1 *(v22 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_impactedBundleIdentifiers));
  v30 = sub_29EB5256C();

  v31 = sub_29EB5250C();
  [a1 *(v22 + 2312)];

  sub_29EB42C2C(*(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_previouslyImpactedBundleIdentifiers));
  v32 = sub_29EB5256C();

  v33 = sub_29EB5250C();
  [a1 *(v22 + 2312)];

  v34 = *(v2 + OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policyStrategy);
  v35 = sub_29EB5250C();
  [a1 encodeInteger:v34 forKey:v35];
}

id ModelManagerGameAssertionStatus.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_29EB4C0FC(a1);

  return v4;
}

id ModelManagerGameAssertionStatus.init(coder:)(void *a1)
{
  v2 = sub_29EB4C0FC(a1);

  return v2;
}

id ModelManagerGameAssertionStatus.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ModelManagerGameAssertionStatus.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ModelManagerGameAssertionStatus(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

char *sub_29EB4BD38(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EB4BD78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB4BD58(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_29EB4BE84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_29EB4BD78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18822A0, &qword_29EB53608);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_29EB4BE84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18822A8, &unk_29EB53610);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x29EDCA190];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

unint64_t sub_29EB4BF88(unint64_t result)
{
  if (result > 3)
  {
    return 0;
  }

  return result;
}

uint64_t sub_29EB4BFD8(uint64_t a1)
{
  v2 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29EB4C034(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29EB4C098(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

id sub_29EB4C0FC(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  *&v60 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v58 - v7;
  v9 = sub_29EB5244C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x2A1C7C4A8](v9);
  v58 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v11);
  v14 = &v58 - v13;
  v15 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy] = 2;
  v16 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus____lazy_storage___config;
  v17 = type metadata accessor for ModelManagerGameAssertionStatus.Config(0);
  (*(*(v17 - 8) + 56))(&v2[v16], 1, 1, v17);
  v59 = sub_29EB3E3E0(0, &unk_2A1882020, 0x29EDBA0F8);
  v18 = sub_29EB525EC();
  if (v18 && (v61 = 0, v62 = 0, v19 = v18, sub_29EB5251C(), v19, v62))
  {
    v20 = sub_29EB5273C();

    if (v20 == 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = 2;
    }

    if (v20)
    {
      v22 = v21;
    }

    else
    {
      v22 = 0;
    }
  }

  else
  {
    v22 = 2;
  }

  swift_beginAccess();
  v2[v15] = v22;
  v23 = sub_29EB5250C();
  v24 = [a1 containsValueForKey_];

  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_29EB53140;
    *(v25 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
    sub_29EB525FC();

    if (v63)
    {
      v26 = swift_dynamicCast();
      v27 = *(v10 + 56);
      v27(v8, v26 ^ 1u, 1, v9);
      if ((*(v10 + 48))(v8, 1, v9) != 1)
      {
        v28 = *(v10 + 32);
        v28(v14, v8, v9);
        v29 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate;
        v28(&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate], v14, v9);
        v27(&v2[v29], 0, 1, v9);
        goto LABEL_17;
      }
    }

    else
    {
      sub_29EB43FCC(&v61, &unk_2A18820E0, &unk_29EB53060);
      v27 = *(v10 + 56);
      v27(v8, 1, 1, v9);
    }

    sub_29EB43FCC(v8, &qword_2A1882000, &qword_29EB53150);
    v27(&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate], 1, 1, v9);
  }

  else
  {
    v27 = *(v10 + 56);
    v27(&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_enablementDate], 1, 1, v9);
  }

LABEL_17:
  v30 = sub_29EB5250C();
  v31 = [a1 containsValueForKey_];

  if (!v31)
  {
LABEL_23:
    v27(&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_disablementDate], 1, 1, v9);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_29EB53140;
  *(v32 + 32) = sub_29EB3E3E0(0, &qword_2A1882210, 0x29EDB8DB0);
  sub_29EB525FC();

  if (!v63)
  {
    sub_29EB43FCC(&v61, &unk_2A18820E0, &unk_29EB53060);
    v33 = v60;
    v27(v60, 1, 1, v9);
    goto LABEL_22;
  }

  v33 = v60;
  v34 = swift_dynamicCast();
  v27(v33, v34 ^ 1u, 1, v9);
  if ((*(v10 + 48))(v33, 1, v9) == 1)
  {
LABEL_22:
    sub_29EB43FCC(v33, &qword_2A1882000, &qword_29EB53150);
    goto LABEL_23;
  }

  v35 = *(v10 + 32);
  v36 = v58;
  v35(v58, v33, v9);
  v37 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_disablementDate;
  v35(&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_disablementDate], v36, v9);
  v27(&v2[v37], 0, 1, v9);
LABEL_24:
  v38 = sub_29EB5250C();
  v39 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_deviceSupported] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_2A18820D0, &unk_29EB531F0);
  v40 = swift_allocObject();
  v60 = xmmword_29EB53140;
  *(v40 + 16) = xmmword_29EB53140;
  v41 = v59;
  *(v40 + 32) = v59;
  v42 = sub_29EB5261C();

  v43 = MEMORY[0x29EDCA190];
  if (v42)
  {
    v44 = sub_29EB49B98(v42);

    if (v44)
    {
      v43 = v44;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_aaaBundleIdentifiers] = v43;
  v45 = swift_allocObject();
  *(v45 + 16) = v60;
  *(v45 + 32) = v41;
  v46 = sub_29EB5261C();

  v47 = MEMORY[0x29EDCA190];
  if (v46)
  {
    v48 = sub_29EB49B98(v46);

    if (v48)
    {
      v47 = v48;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_impactedBundleIdentifiers] = v47;
  v49 = swift_allocObject();
  *(v49 + 16) = v60;
  *(v49 + 32) = v41;
  v50 = sub_29EB5261C();

  v51 = MEMORY[0x29EDCA190];
  if (v50)
  {
    v52 = sub_29EB49B98(v50);

    if (v52)
    {
      v51 = v52;
    }
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_previouslyImpactedBundleIdentifiers] = v51;
  v53 = sub_29EB5250C();
  v54 = [a1 decodeIntegerForKey_];

  if (v54 >= 4)
  {
    v55 = 0;
  }

  else
  {
    v55 = v54;
  }

  *&v2[OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policyStrategy] = v55;
  v56 = type metadata accessor for ModelManagerGameAssertionStatus(0);
  v64.receiver = v2;
  v64.super_class = v56;
  return objc_msgSendSuper2(&v64, sel_init);
}

unint64_t sub_29EB4C9CC()
{
  result = qword_2A1882238;
  if (!qword_2A1882238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1882238);
  }

  return result;
}

unint64_t sub_29EB4CA24()
{
  result = qword_2A1882240;
  if (!qword_2A1882240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1882240);
  }

  return result;
}

uint64_t sub_29EB4CA78@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  result = swift_beginAccess();
  *a2 = *(v3 + v4);
  return result;
}

uint64_t sub_29EB4CAD0(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC20GamePolicyFoundation31ModelManagerGameAssertionStatus_policy;
  result = swift_beginAccess();
  *(v3 + v4) = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ModelManagerGameAssertionPolicy(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ModelManagerGameAssertionPolicy(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_29EB4CCD8(uint64_t a1)
{
  sub_29EB4CFBC(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
  if (v1 <= 0x3F)
  {
    sub_29EB4CFBC(319, &unk_2A1882268, type metadata accessor for ModelManagerGameAssertionStatus.Config);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_29EB4CFBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29EB5265C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29EB4D024(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 32));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_29EB4D104(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882000, &qword_29EB53150);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 32)) = (a2 - 1);
  }

  return result;
}

void sub_29EB4D1CC(uint64_t a1)
{
  sub_29EB4D2E8(319, &qword_2A1882288, &type metadata for ModelManagerGameAssertionPolicy, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    sub_29EB4CFBC(319, &qword_2A18820A0, MEMORY[0x29EDB9BC8]);
    if (v2 <= 0x3F)
    {
      sub_29EB4D2E8(319, &qword_2A1882290, MEMORY[0x29EDC99B0], MEMORY[0x29EDC9A40]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_29EB4D2E8(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t static GlobalPreferences.defaultIgnoreDeviceRestrictions.setter(char a1)
{
  result = swift_beginAccess();
  byte_2A18822B0 = a1;
  return result;
}

uint64_t (*static GlobalPreferences.defaultSEMAllowList.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2A1881F00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_29EB4D53C(void *a1, void *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t sub_29EB4D5BC(uint64_t a1, void *a2, uint64_t *a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a3 = a1;
}

uint64_t (*static GlobalPreferences.defaultSEMAutoAllowList.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_2A1881F08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_29EB4D6AC@<X0>(void *a1@<X3>, uint64_t *a2@<X4>, uint64_t *a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a4 = *a2;
}

uint64_t sub_29EB4D714(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = *a1;
  v9 = *a5;

  if (v9 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a6 = v8;
}

uint64_t static GlobalPreferences.defaultGameModeEnablementStrategy.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_2A18822C8 = a1;
  return result;
}

uint64_t static GlobalPreferences.defaultSEMEnablementStrategy.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_2A18822D0 = a1;
  return result;
}

uint64_t static GlobalPreferences.defaultDynamicSplitterEnablementStrategy.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_2A18822D8 = a1;
  return result;
}

uint64_t static GlobalPreferences.defaultModelManagerGameAssertionPolicyStrategy.setter(uint64_t a1)
{
  result = swift_beginAccess();
  qword_2A18822E0 = a1;
  return result;
}

uint64_t sub_29EB4DB2C()
{
  if (qword_2A1881F10 != -1)
  {
    swift_once();
  }
}

id sub_29EB4DB88()
{
  type metadata accessor for GlobalPreferences();
  v0 = swift_allocObject();
  v0[3] = 0xD000000000000013;
  v0[4] = 0x800000029EB54500;
  v0[5] = 0xD000000000000017;
  v0[6] = 0x800000029EB54520;
  result = [objc_allocWithZone(MEMORY[0x29EDB8E78]) init];
  v0[2] = result;
  qword_2A18822E8 = v0;
  return result;
}

void sub_29EB4DC10(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = sub_29EB5250C();
  [v3 setBool:v2 forKey:v4];
}

unint64_t sub_29EB4DC8C()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
    sub_29EB41364(v7);
    v4 = sub_29EB5250C();
    v5 = [v1 BOOLForKey_];
  }

  else
  {
    memset(v7, 0, sizeof(v7));
    sub_29EB41364(v7);
    swift_beginAccess();
    return byte_2A18822B0;
  }

  return v5;
}

void sub_29EB4DD88(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_29EB5250C();
  [v3 setBool:a1 & 1 forKey:v4];
}

void (*sub_29EB4DE00(uint64_t a1))(unsigned __int8 *a1)
{
  *a1 = v1;
  *(a1 + 8) = sub_29EB4DC8C() & 1;
  return sub_29EB4DE4C;
}

void sub_29EB4DE4C(unsigned __int8 *a1)
{
  v1 = a1[8];
  v2 = *(*a1 + 16);
  v3 = sub_29EB5250C();
  [v2 setBool:v1 forKey:v3];
}

void sub_29EB4DEC8(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = sub_29EB5256C();
  v4 = sub_29EB5250C();
  [v2 setObject:v3 forKey:v4];
}

uint64_t sub_29EB4DF58()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882208, &unk_29EB53368);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  if (qword_2A1881F08 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void sub_29EB4E094(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_29EB5256C();

  v4 = sub_29EB5250C();
  [v2 setObject:v3 forKey:v4];
}

uint64_t (*sub_29EB4E130(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_29EB4DF58();
  return sub_29EB4E178;
}

void sub_29EB4E178(void *a1, char a2)
{
  v2 = *(a1[1] + 16);
  if (a2)
  {

    v4 = sub_29EB5256C();

    v3 = sub_29EB5250C();
    [v2 setObject:v4 forKey:v3];
  }

  else
  {
    v4 = sub_29EB5256C();

    v3 = sub_29EB5250C();
    [v2 setObject:v4 forKey:v3];
  }
}

void sub_29EB4E280(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 16);
  v3 = sub_29EB5256C();
  v4 = sub_29EB5250C();
  [v2 setObject:v3 forKey:v4];
}

uint64_t sub_29EB4E314()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 objectForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882208, &unk_29EB53368);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  if (qword_2A1881F00 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

void sub_29EB4E454(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_29EB5256C();

  v4 = sub_29EB5250C();
  [v2 setObject:v3 forKey:v4];
}

uint64_t (*sub_29EB4E4F4(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_29EB4E314();
  return sub_29EB4E53C;
}

void sub_29EB4E53C(void *a1, char a2)
{
  v2 = *(a1[1] + 16);
  if (a2)
  {

    v4 = sub_29EB5256C();

    v3 = sub_29EB5250C();
    [v2 setObject:v4 forKey:v3];
  }

  else
  {
    v4 = sub_29EB5256C();

    v3 = sub_29EB5250C();
    [v2 setObject:v4 forKey:v3];
  }
}

void sub_29EB4E640(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:v2 forKey:v4];
}

unint64_t sub_29EB4E6BC()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (!v3)
  {
    memset(v8, 0, sizeof(v8));
    sub_29EB41364(v8);
    goto LABEL_5;
  }

  sub_29EB5266C();
  swift_unknownObjectRelease();
  sub_29EB41364(v8);
  v4 = sub_29EB5250C();
  v5 = [v1 integerForKey_];

  result = sub_29EB4BF88(v5);
  if (v7)
  {
LABEL_5:
    swift_beginAccess();
    return qword_2A18822E0;
  }

  return result;
}

void sub_29EB4E7C0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:a1 forKey:v4];
}

void (*sub_29EB4E838(unint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_29EB4E6BC();
  return sub_29EB4E880;
}

void sub_29EB4E880(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  v3 = sub_29EB5250C();
  [v2 setInteger:v1 forKey:v3];
}

void sub_29EB4E8F8(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *(*a1 + 16);
  v4 = sub_29EB5250C();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *a2 = v3;
}

void sub_29EB4E968(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = sub_29EB5250C();
  [v3 setBool:v2 forKey:v4];
}

id sub_29EB4E9E4()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 BOOLForKey_];

  return v3;
}

void sub_29EB4EA44(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_29EB5250C();
  [v3 setBool:a1 & 1 forKey:v4];
}

void (*sub_29EB4EABC(uint64_t a1))(uint64_t a1)
{
  v3 = *(v1 + 16);
  *a1 = v3;
  v4 = sub_29EB5250C();
  LOBYTE(v3) = [v3 BOOLForKey_];

  *(a1 + 8) = v3;
  return sub_29EB4EB48;
}

void sub_29EB4EB48(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 8);
  v3 = sub_29EB5250C();
  [v1 setBool:v2 forKey:v3];
}

void sub_29EB4EBC0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:v2 forKey:v4];
}

id sub_29EB4EC3C()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (!v3)
  {
    memset(v7, 0, sizeof(v7));
    sub_29EB41364(v7);
    goto LABEL_5;
  }

  sub_29EB5266C();
  swift_unknownObjectRelease();
  sub_29EB41364(v7);
  v4 = sub_29EB5250C();
  v5 = [v1 integerForKey_];

  result = v5;
  if (v5 >= 3)
  {
LABEL_5:
    swift_beginAccess();
    return qword_2A18822C8;
  }

  return result;
}

void sub_29EB4ED40(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:a1 forKey:v4];
}

void (*sub_29EB4EDB8(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_29EB4EC3C();
  return sub_29EB4EE00;
}

void sub_29EB4EE00(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  v3 = sub_29EB5250C();
  [v2 setInteger:v1 forKey:v3];
}

void sub_29EB4EE78(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:v2 forKey:v4];
}

id sub_29EB4EEF4()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (!v3)
  {
    memset(v7, 0, sizeof(v7));
    sub_29EB41364(v7);
    goto LABEL_5;
  }

  sub_29EB5266C();
  swift_unknownObjectRelease();
  sub_29EB41364(v7);
  v4 = sub_29EB5250C();
  v5 = [v1 integerForKey_];

  result = v5;
  if (v5 >= 3)
  {
LABEL_5:
    swift_beginAccess();
    return qword_2A18822D0;
  }

  return result;
}

void sub_29EB4EFF8(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:a1 forKey:v4];
}

void (*sub_29EB4F070(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_29EB4EEF4();
  return sub_29EB4F0B8;
}

void sub_29EB4F0B8(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  v3 = sub_29EB5250C();
  [v2 setInteger:v1 forKey:v3];
}

void sub_29EB4F130(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(*a2 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:v2 forKey:v4];
}

id sub_29EB4F1AC()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (!v3)
  {
    memset(v7, 0, sizeof(v7));
    sub_29EB41364(v7);
    goto LABEL_5;
  }

  sub_29EB5266C();
  swift_unknownObjectRelease();
  sub_29EB41364(v7);
  v4 = sub_29EB5250C();
  v5 = [v1 integerForKey_];

  result = v5;
  if (v5 >= 3)
  {
LABEL_5:
    swift_beginAccess();
    return qword_2A18822D8;
  }

  return result;
}

void sub_29EB4F2B0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = sub_29EB5250C();
  [v3 setInteger:a1 forKey:v4];
}

void (*sub_29EB4F328(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_29EB4F1AC();
  return sub_29EB4F370;
}

void sub_29EB4F370(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(a1[1] + 16);
  v3 = sub_29EB5250C();
  [v2 setInteger:v1 forKey:v3];
}

void sub_29EB4F3E8(void *a1, uint64_t *a2)
{
  v2 = *(*a2 + 16);
  v3 = sub_29EB524EC();
  v4 = sub_29EB5250C();
  [v2 setValue:v3 forKey:v4];
}

unint64_t sub_29EB4F47C()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18822F0, &qword_29EB53620);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  return sub_29EB50D94(MEMORY[0x29EDCA190]);
}

void sub_29EB4F55C(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_29EB524EC();

  v4 = sub_29EB5250C();
  [v2 setValue:v3 forKey:v4];
}

uint64_t (*sub_29EB4F5F4(unint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_29EB4F47C();
  return sub_29EB4F63C;
}

void sub_29EB4F63C(void *a1, char a2)
{
  v2 = *(a1[1] + 16);
  if (a2)
  {

    v4 = sub_29EB524EC();

    v3 = sub_29EB5250C();
    [v2 setValue:v4 forKey:v3];
  }

  else
  {
    v4 = sub_29EB524EC();

    v3 = sub_29EB5250C();
    [v2 setValue:v4 forKey:v3];
  }
}

uint64_t sub_29EB4F73C(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EB4F47C();
  if (*(v4 + 16) && (v5 = sub_29EB50188(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + v5);

    return v7;
  }

  else
  {

    return 2;
  }
}

void sub_29EB4F7AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  sub_29EB4F47C();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_29EB507FC(v6, a2, a3, isUniquelyReferenced_nonNull_native);
  v8 = *(v3 + 16);
  v9 = sub_29EB524EC();

  v10 = sub_29EB5250C();
  [v8 setValue:v9 forKey:v10];
}

void sub_29EB4F888(char a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_29EB4F47C();
  v7 = *(a2 + 16);
  if (!v7)
  {
LABEL_15:
    v26 = *(v3 + 16);
    v27 = sub_29EB524EC();

    v28 = sub_29EB5250C();
    [v26 setValue:v27 forKey:v28];

    return;
  }

  v8 = a1 & 1;
  v9 = (a2 + 40);
  while (1)
  {
    v12 = *(v9 - 1);
    v11 = *v9;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = sub_29EB50188(v12, v11);
    v16 = v6[2];
    v17 = (v15 & 1) == 0;
    v18 = __OFADD__(v16, v17);
    v19 = v16 + v17;
    if (v18)
    {
      break;
    }

    v20 = v15;
    if (v6[3] < v19)
    {
      sub_29EB502B8(v19, isUniquelyReferenced_nonNull_native);
      v14 = sub_29EB50188(v12, v11);
      if ((v20 & 1) != (v21 & 1))
      {
        goto LABEL_20;
      }

LABEL_10:
      if (v20)
      {
        goto LABEL_3;
      }

      goto LABEL_11;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

    v25 = v14;
    sub_29EB50AC4();
    v14 = v25;
    if (v20)
    {
LABEL_3:
      v10 = v14;

      *(v6[7] + v10) = v8;
      goto LABEL_4;
    }

LABEL_11:
    v6[(v14 >> 6) + 8] |= 1 << v14;
    v22 = (v6[6] + 16 * v14);
    *v22 = v12;
    v22[1] = v11;
    *(v6[7] + v14) = v8;
    v23 = v6[2];
    v18 = __OFADD__(v23, 1);
    v24 = v23 + 1;
    if (v18)
    {
      goto LABEL_19;
    }

    v6[2] = v24;
LABEL_4:
    v9 += 2;
    if (!--v7)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  sub_29EB5276C();
  __break(1u);
}

double sub_29EB4FA84()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  return 480.0;
}

double sub_29EB4FB64()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  return 480.0;
}

void sub_29EB4FC44(void *a1, uint64_t *a2)
{
  v2 = *(*a2 + 16);
  v3 = sub_29EB524EC();
  v4 = sub_29EB5250C();
  [v2 setValue:v3 forKey:v4];
}

unint64_t sub_29EB4FCD8()
{
  v1 = *(v0 + 16);
  v2 = sub_29EB5250C();
  v3 = [v1 valueForKey_];

  if (v3)
  {
    sub_29EB5266C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A18822F8, &qword_29EB53628);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  else
  {
    sub_29EB41364(v8);
  }

  return sub_29EB50E90(MEMORY[0x29EDCA190]);
}

void sub_29EB4FDB8(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_29EB524EC();

  v4 = sub_29EB5250C();
  [v2 setValue:v3 forKey:v4];
}

uint64_t (*sub_29EB4FE50(unint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_29EB4FCD8();
  return sub_29EB4FE98;
}

void sub_29EB4FE98(void *a1, char a2)
{
  v2 = *(a1[1] + 16);
  if (a2)
  {

    v4 = sub_29EB524EC();

    v3 = sub_29EB5250C();
    [v2 setValue:v4 forKey:v3];
  }

  else
  {
    v4 = sub_29EB524EC();

    v3 = sub_29EB5250C();
    [v2 setValue:v4 forKey:v3];
  }
}

uint64_t sub_29EB4FF98(uint64_t a1, uint64_t a2)
{
  v4 = sub_29EB4FCD8();
  v5 = 0;
  if (*(v4 + 16))
  {
    v6 = sub_29EB50188(a1, a2);
    if (v7)
    {
      v5 = *(*(v4 + 56) + 8 * v6);
    }
  }

  v9.n128_u64[0] = v5;

  return MEMORY[0x2A1C5AA40](v8, v9);
}

void sub_29EB5001C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29EB4FCD8();
  sub_29EB5241C();
  v7 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_29EB50968(a2, a3, isUniquelyReferenced_nonNull_native, v7);
  v9 = *(v3 + 16);
  v10 = sub_29EB524EC();

  v11 = sub_29EB5250C();
  [v9 setValue:v10 forKey:v11];
}

uint64_t GlobalPreferences.deinit()
{

  return v0;
}

uint64_t GlobalPreferences.__deallocating_deinit()
{

  return MEMORY[0x2A1C73398](v0, 56, 7);
}

unint64_t sub_29EB50188(uint64_t a1, uint64_t a2)
{
  sub_29EB5278C();
  sub_29EB5253C();
  v4 = sub_29EB527AC();

  return sub_29EB50200(a1, a2, v4);
}

unint64_t sub_29EB50200(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_29EB5274C())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_29EB502B8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882308, &unk_29EB53680);
  v34 = v4;
  result = sub_29EB5271C();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      v24 = *(*(v5 + 56) + v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_29EB5278C();
      sub_29EB5253C();
      result = sub_29EB527AC();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

uint64_t sub_29EB50558(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882300, &qword_29EB53678);
  v33 = v4;
  result = sub_29EB5271C();
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_29EB5278C();
      sub_29EB5253C();
      result = sub_29EB527AC();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
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

unint64_t sub_29EB507FC(char a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_29EB50188(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_29EB502B8(v16, a4 & 1);
      result = sub_29EB50188(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_29EB5276C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_29EB50AC4();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + result) = a1 & 1;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + result) = a1 & 1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

unint64_t sub_29EB50968(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_29EB50188(a1, a2);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 < v16 || (a3 & 1) != 0)
    {
      sub_29EB50558(v16, a3 & 1);
      result = sub_29EB50188(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_29EB5276C();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_29EB50C2C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * result) = a4;
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v22 = (v21[6] + 16 * result);
  *v22 = a1;
  v22[1] = a2;
  *(v21[7] + 8 * result) = a4;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

void *sub_29EB50AC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882308, &unk_29EB53680);
  v2 = *v0;
  v3 = sub_29EB5270C();
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
        v20 = *v18;
        v19 = v18[1];
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_29EB50C2C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882300, &qword_29EB53678);
  v2 = *v0;
  v3 = sub_29EB5270C();
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

unint64_t sub_29EB50D94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882308, &unk_29EB53680);
    v3 = sub_29EB5272C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_29EB50188(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

unint64_t sub_29EB50E90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_2A1882300, &qword_29EB53678);
    v3 = sub_29EB5272C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_29EB50188(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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
    return MEMORY[0x29EDCA198];
  }

  return result;
}

uint64_t sub_29EB50F94@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_2A18822B0;
  return result;
}

uint64_t sub_29EB50FE0(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_2A18822B0 = v1;
  return result;
}

uint64_t sub_29EB51108@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2A18822C8;
  return result;
}

uint64_t sub_29EB51154(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2A18822C8 = v1;
  return result;
}

uint64_t sub_29EB5119C@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2A18822D0;
  return result;
}

uint64_t sub_29EB511E8(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2A18822D0 = v1;
  return result;
}

uint64_t sub_29EB51230@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2A18822D8;
  return result;
}

uint64_t sub_29EB5127C(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2A18822D8 = v1;
  return result;
}

uint64_t sub_29EB512C4@<X0>(void *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = qword_2A18822E0;
  return result;
}

uint64_t sub_29EB51310(uint64_t *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  qword_2A18822E0 = v1;
  return result;
}

id sub_29EB51358@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29EB4DC8C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29EB5138C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EB4DF58();
  *a1 = result;
  return result;
}

uint64_t sub_29EB513BC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EB4E314();
  *a1 = result;
  return result;
}

unint64_t sub_29EB513EC@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29EB4E6BC();
  *a1 = result;
  return result;
}

id sub_29EB51424@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EB4EC3C();
  *a1 = result;
  return result;
}

id sub_29EB51454@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EB4EEF4();
  *a1 = result;
  return result;
}

id sub_29EB51484@<X0>(uint64_t *a1@<X8>)
{
  result = sub_29EB4F1AC();
  *a1 = result;
  return result;
}

unint64_t sub_29EB514B4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29EB4F47C();
  *a1 = result;
  return result;
}

unint64_t sub_29EB514E4@<X0>(unint64_t *a1@<X8>)
{
  result = sub_29EB4FCD8();
  *a1 = result;
  return result;
}

unint64_t sub_29EB51B5C()
{
  result = qword_2A1882310;
  if (!qword_2A1882310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1882310);
  }

  return result;
}

uint64_t SEMPolicy.description.getter(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x6E492D74704FLL;
    }

    if (a1 == 3)
    {
      return 0x74754F2D74704FLL;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x726F707075736E55;
    }

    if (a1 == 1)
    {
      return 1869903169;
    }
  }

  result = sub_29EB5275C();
  __break(1u);
  return result;
}

uint64_t sub_29EB51C94(uint64_t a1)
{
  v2 = *v1;
  if (*v1 <= 1)
  {
    if (!v2)
    {
      return 0x726F707075736E55;
    }

    if (v2 == 1)
    {
      return 1869903169;
    }

    goto LABEL_11;
  }

  if (v2 == 2)
  {
    return 0x6E492D74704FLL;
  }

  if (v2 != 3)
  {
LABEL_11:
    result = sub_29EB5275C();
    __break(1u);
    return result;
  }

  return 0x74754F2D74704FLL;
}

unint64_t sub_29EB51D50()
{
  result = qword_2A1882318;
  if (!qword_2A1882318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1882318);
  }

  return result;
}

uint64_t sub_29EB51F14(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_29EB524DC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_29EB524CC();
}

uint64_t sub_29EB51FB0()
{
  v0 = sub_29EB524DC();
  __swift_allocate_value_buffer(v0, qword_2A18823B0);
  __swift_project_value_buffer(v0, qword_2A18823B0);
  return sub_29EB524CC();
}

uint64_t sub_29EB52128(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_29EB524DC();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_29EB524CC();
}

uint64_t sub_29EB521C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_29EB524DC();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_29EB5225C()
{
  sub_29EB52388();
  result = sub_29EB5264C();
  qword_2A1882428 = result;
  return result;
}

id static Logger.stateTracking.getter()
{
  if (qword_2A1881F70 != -1)
  {
    swift_once();
  }

  v1 = qword_2A1882428;

  return v1;
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

unint64_t sub_29EB52388()
{
  result = qword_2A1882430;
  if (!qword_2A1882430)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2A1882430);
  }

  return result;
}