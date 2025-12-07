void static Searchfoundation_RequestUserReportCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_UserReportRequest(v2);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_106_8();
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A0, &unk_1B96B9900);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RequestUserReportCommand(v9);
  OUTLINED_FUNCTION_429_1();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_75_9();
  if (v10)
  {
    OUTLINED_FUNCTION_37_0(v0 + v1);
    if (v10)
    {
      sub_1B8D9207C(v0, &qword_1EBACC1D0, &unk_1B96B94E0);
LABEL_15:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v20, v21, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_294();
      v13 = sub_1B964C850();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_273_1();
    sub_1B944B0D4();
LABEL_9:
    v11 = &qword_1EBACC5A0;
    v12 = &unk_1B96B9900;
LABEL_10:
    sub_1B8D9207C(v0, v11, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_1276();
  OUTLINED_FUNCTION_450_1();
  if (!v14)
  {

    v15 = OUTLINED_FUNCTION_176_1();
    sub_1B9633DD0(v15, v16);
    OUTLINED_FUNCTION_1167();

    if ((&unk_1B96B94E0 & 1) == 0)
    {
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v11 = &qword_1EBACC1D0;
      v12 = &unk_1B96B94E0;
      goto LABEL_10;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v17, v18, MEMORY[0x1E69AAC10]);
  v19 = OUTLINED_FUNCTION_654_0();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_491();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC1D0, &unk_1B96B94E0);
  if (v19)
  {
    goto LABEL_15;
  }

LABEL_11:
  v13 = 0;
LABEL_16:
  OUTLINED_FUNCTION_264(v13);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B932F594(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 16) != *(v3 + 16))
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_84();
  v12 = sub_1B8CD3068(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t static Searchfoundation_PerformIntentCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if ((MEMORY[0x1BFADC060](*(v2 + 32), *(v2 + 40), *(v1 + 32), *(v1 + 40)) & 1) == 0 || *(v2 + 48) != *(v1 + 48))
  {
    return 0;
  }

  v10 = *(v2 + 56) == *(v1 + 56) && *(v2 + 64) == *(v1 + 64);
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_PerformIntentCommand(0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v13 = sub_1B8CD3068(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}

uint64_t static Searchfoundation_SearchInAppCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v9 = *(v2 + 32);
  v10 = *(v1 + 32);
  if (*(v2 + 40))
  {
    v9 = v9 != 0;
  }

  if (*(v1 + 40) == 1)
  {
    if (v10)
    {
      if (v9 != 1)
      {
        return 0;
      }
    }

    else if (v9)
    {
      return 0;
    }
  }

  else if (v9 != v10)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_SearchInAppCommand(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v14 = sub_1B8CD3068(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

uint64_t static Searchfoundation_UpdateSearchQueryCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if (v7)
    {
      if (v7 == 1)
      {
        if (v6 != 1)
        {
          return 0;
        }
      }

      else if (v6 != 2)
      {
        return 0;
      }

LABEL_12:
      type metadata accessor for Searchfoundation_UpdateSearchQueryCommand(0);
      OUTLINED_FUNCTION_188_1();
      OUTLINED_FUNCTION_0_84();
      v10 = sub_1B8CD3068(v8, v9, MEMORY[0x1E69AAC10]);
      return OUTLINED_FUNCTION_634(v10) & 1;
    }

    if (!v6)
    {
      goto LABEL_12;
    }
  }

  else if (v6 == v7)
  {
    goto LABEL_12;
  }

  return 0;
}

uint64_t static Searchfoundation_InvokeSiriCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  v6 = *(v2 + 16);
  v7 = *(v1 + 16);
  if (*(v2 + 24))
  {
    v6 = v6 != 0;
  }

  if (*(v1 + 24) == 1)
  {
    if (v7)
    {
      if (v6 != 1)
      {
        return 0;
      }
    }

    else if (v6)
    {
      return 0;
    }
  }

  else if (v6 != v7)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_InvokeSiriCommand(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_84();
  v11 = sub_1B8CD3068(v9, v10, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v11) & 1;
}

uint64_t sub_1B932FA00(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v8 = v8 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v11 = v8 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0 || *(v4 + 32) != *(v3 + 32))
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v15 = sub_1B8CD3068(v13, v14, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v15) & 1;
}

void static Searchfoundation_BeginMapsRoutingCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_LatLng(v6);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_126_3();
  v8 = OUTLINED_FUNCTION_190_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(0);
  v13 = *(v5 + 56);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v21)
  {
    OUTLINED_FUNCTION_37_0(v2 + v13);
    if (v21)
    {
      goto LABEL_5;
    }

    goto LABEL_17;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v13);
  if (v21)
  {
    OUTLINED_FUNCTION_35_14();
    sub_1B944B0D4();
LABEL_17:
    v22 = &qword_1EBACB018;
    v23 = &unk_1B96B9910;
LABEL_24:
    sub_1B8D9207C(v2, v22, v23);
LABEL_25:
    v20 = 0;
    goto LABEL_26;
  }

  OUTLINED_FUNCTION_41_19();
  sub_1B944B02C();
  if (*v3 != *v4 || v3[1] != v4[1])
  {
    OUTLINED_FUNCTION_35_14();
    sub_1B944B0D4();
    goto LABEL_23;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v24, v25, MEMORY[0x1E69AAC10]);
  v26 = sub_1B964C850();
  OUTLINED_FUNCTION_35_14();
  sub_1B944B0D4();
  if ((v26 & 1) == 0)
  {
LABEL_23:
    OUTLINED_FUNCTION_35_14();
    sub_1B944B0D4();
    v22 = &qword_1EBACAFA0;
    v23 = &unk_1B96CB440;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_35_14();
  sub_1B944B0D4();
LABEL_5:
  sub_1B8D9207C(v2, &qword_1EBACAFA0, &unk_1B96CB440);
  if ((MEMORY[0x1BFADC060](*v1, *(v1 + 8), *v0, *(v0 + 8)) & 1) == 0 || *(v1 + 16) != *(v0 + 16))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_822_0();
  v16 = v21 && v14 == v15;
  if (!v16 && (sub_1B964C9F0() & 1) == 0 || !sub_1B8D92198(*(v1 + 40), *(v1 + 48), *(v0 + 40)))
  {
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_1309();
  OUTLINED_FUNCTION_0_84();
  v19 = sub_1B8CD3068(v17, v18, MEMORY[0x1E69AAC10]);
  v20 = OUTLINED_FUNCTION_199_0(v19);
LABEL_26:
  OUTLINED_FUNCTION_264(v20);
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_ToggleAudioCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v8 = v5 && v6 == v7;
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1B8D92198(*(v2 + 32), *(v2 + 40), *(v1 + 32)))
  {
    return 0;
  }

  OUTLINED_FUNCTION_850();
  v11 = v5 && v9 == v10;
  if (!v11 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ToggleAudioCommand(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_84();
  v14 = sub_1B8CD3068(v12, v13, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v14) & 1;
}

void static Searchfoundation_PerformPersonEntityQueryCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_Person(v2);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_PerformPersonEntityQueryCommand(v9);
  OUTLINED_FUNCTION_941();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_50(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_50(v0 + v1);
    if (v10)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v15, v16, MEMORY[0x1E69AAC10]);
      v17 = OUTLINED_FUNCTION_288();
      v11 = OUTLINED_FUNCTION_656_0(v17, v18);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_45_15();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_10_33();
  OUTLINED_FUNCTION_1252();
  v12 = OUTLINED_FUNCTION_246();
  v14 = static Searchfoundation_Person.== infix(_:_:)(v12, v13);
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
  if (v14)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v11);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_ShareCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1121();
  type metadata accessor for Searchfoundation_ShareItem(v5);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_8();
  v7 = OUTLINED_FUNCTION_190_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5C0, &qword_1B96B9930);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Searchfoundation_ShareCommand(0);
  OUTLINED_FUNCTION_1138();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v1);
  if (v12)
  {
    OUTLINED_FUNCTION_99_0(v1 + v2);
    if (v12)
    {
      sub_1B8D9207C(v1, &qword_1EBACC5B8, &qword_1B96B9928);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBACC5C0, &qword_1B96B9930);
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v1 + v2);
  if (v12)
  {
    OUTLINED_FUNCTION_498_0();
    sub_1B944B0D4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_97_6();
  sub_1B944B02C();
  OUTLINED_FUNCTION_196();
  static Searchfoundation_ShareItem.== infix(_:_:)();
  v14 = v13;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_531_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v1, &qword_1EBACC5B8, &qword_1B96B9928);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1B8D78B24(*v0, *v4);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1154();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v16, v17, MEMORY[0x1E69AAC10]);
  v18 = OUTLINED_FUNCTION_695_1();
LABEL_14:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_CopyCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_1121();
  type metadata accessor for Searchfoundation_CopyItem(v5);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_31_8();
  v7 = OUTLINED_FUNCTION_190_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D0, &qword_1B96B9940);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Searchfoundation_CopyCommand(0);
  OUTLINED_FUNCTION_1138();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v1);
  if (v12)
  {
    OUTLINED_FUNCTION_99_0(v1 + v2);
    if (v12)
    {
      sub_1B8D9207C(v1, &qword_1EBACC5C8, &qword_1B96B9938);
      goto LABEL_11;
    }

LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBACC5D0, &qword_1B96B9940);
LABEL_13:
    v18 = 0;
    goto LABEL_14;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v1 + v2);
  if (v12)
  {
    OUTLINED_FUNCTION_497_1();
    sub_1B944B0D4();
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_96_5();
  sub_1B944B02C();
  OUTLINED_FUNCTION_196();
  static Searchfoundation_CopyItem.== infix(_:_:)();
  v14 = v13;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_531_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v1, &qword_1EBACC5C8, &qword_1B96B9938);
  if ((v14 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  sub_1B8D7A8D4(*v0, *v4);
  if ((v15 & 1) == 0)
  {
    goto LABEL_13;
  }

  OUTLINED_FUNCTION_1154();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v16, v17, MEMORY[0x1E69AAC10]);
  v18 = OUTLINED_FUNCTION_695_1();
LABEL_14:
  OUTLINED_FUNCTION_264(v18);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_ToggleWatchListStatusCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_WatchListItem(v2);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_190_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E0, &qword_1B96B9950);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(v9);
  OUTLINED_FUNCTION_1138();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0);
  if (!v10)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v0 + v1);
    if (!v10)
    {
      OUTLINED_FUNCTION_22_22();
      OUTLINED_FUNCTION_1233();
      OUTLINED_FUNCTION_196();
      v11 = static Searchfoundation_WatchListItem.== infix(_:_:)();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_531_0();
      sub_1B944B0D4();
      sub_1B8D9207C(v0, &qword_1EBACC5D8, &qword_1B96B9948);
      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_185_7();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACC5E0, &qword_1B96B9950);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_99_0(v0 + v1);
  if (!v10)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBACC5D8, &qword_1B96B9948);
LABEL_11:
  OUTLINED_FUNCTION_1061();
  if (v10)
  {
    OUTLINED_FUNCTION_1154();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v13, v14, MEMORY[0x1E69AAC10]);
    v12 = OUTLINED_FUNCTION_695_1();
    goto LABEL_13;
  }

LABEL_12:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B93307DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v7 = OUTLINED_FUNCTION_280();
  v9 = v8(v7);
  if (*(v5 + *(v9 + 20)) != *(v4 + *(v9 + 20)))
  {

    v10 = OUTLINED_FUNCTION_177_1();
    v11 = a4(v10);

    if ((v11 & 1) == 0)
    {
      return 0;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v12, v13, MEMORY[0x1E69AAC10]);
  v14 = OUTLINED_FUNCTION_288();
  return OUTLINED_FUNCTION_656_0(v14, v15) & 1;
}

void static Searchfoundation_OpenMediaCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = v3;
  v5 = OUTLINED_FUNCTION_797();
  type metadata accessor for Searchfoundation_MediaMetadata(v5);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  v7 = OUTLINED_FUNCTION_190_0();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(v7, v8);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F0, &unk_1B96B9960);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  type metadata accessor for Searchfoundation_OpenMediaCommand(0);
  OUTLINED_FUNCTION_1138();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v1);
  if (!v12)
  {
    OUTLINED_FUNCTION_690();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v1 + v2);
    if (!v12)
    {
      OUTLINED_FUNCTION_26_21();
      sub_1B944B02C();
      v14 = OUTLINED_FUNCTION_541_0();
      v15 = static Searchfoundation_MediaMetadata.== infix(_:_:)(v14);
      sub_1B944B0D4();
      OUTLINED_FUNCTION_531_0();
      sub_1B944B0D4();
      sub_1B8D9207C(v1, &qword_1EBACC5E8, &qword_1B96B9958);
      if ((v15 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_12;
    }

    OUTLINED_FUNCTION_496_0();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v1, &qword_1EBACC5F0, &unk_1B96B9960);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_99_0(v1 + v2);
  if (!v12)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v1, &qword_1EBACC5E8, &qword_1B96B9958);
LABEL_12:
  v16 = *v0 == *v4 && v0[1] == v4[1];
  if (v16 || (sub_1B964C9F0() & 1) != 0)
  {
    OUTLINED_FUNCTION_1310();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v17, v18, MEMORY[0x1E69AAC10]);
    v13 = OUTLINED_FUNCTION_695_1();
    goto LABEL_18;
  }

LABEL_10:
  v13 = 0;
LABEL_18:
  OUTLINED_FUNCTION_264(v13);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_AddToPhotosLibraryCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_Image(v2);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_106_8();
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EB0, &qword_1B964D6B0);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand(v9);
  OUTLINED_FUNCTION_429_1();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_75_9();
  if (v10)
  {
    OUTLINED_FUNCTION_37_0(v0 + v1);
    if (v10)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
LABEL_15:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v18, v19, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_294();
      v13 = sub_1B964C850();
      goto LABEL_16;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_24_24();
    sub_1B944B0D4();
LABEL_9:
    v11 = &qword_1EBAB8EB0;
    v12 = &qword_1B964D6B0;
LABEL_10:
    sub_1B8D9207C(v0, v11, v12);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_1276();
  OUTLINED_FUNCTION_450_1();
  if (!v14)
  {

    OUTLINED_FUNCTION_176_1();
    sub_1B94C6890();
    OUTLINED_FUNCTION_1167();

    if ((&unk_1B96B77D0 & 1) == 0)
    {
      OUTLINED_FUNCTION_95_7();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_1165();
      v11 = &qword_1EBAB8EA8;
      v12 = &unk_1B96B77D0;
      goto LABEL_10;
    }
  }

  v15 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v16, v17, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_654_0();
  OUTLINED_FUNCTION_137_5();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_491();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBAB8EA8, &unk_1B96B77D0);
  if (v15)
  {
    goto LABEL_15;
  }

LABEL_11:
  v13 = 0;
LABEL_16:
  OUTLINED_FUNCTION_264(v13);
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_PerformContactActionCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v3 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      case 7:
        if (v3 != 7)
        {
          return 0;
        }

        goto LABEL_6;
      case 8:
        if (v3 != 8)
        {
          return 0;
        }

        goto LABEL_6;
      case 9:
        if (v3 != 9)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  if (*(v1 + 9) != *(v0 + 9) || *(v1 + 10) != *(v0 + 10))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_PerformContactActionCommand(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v9 = sub_1B8CD3068(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

void static Searchfoundation_SubscribeForUpdatesCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_797();
  type metadata accessor for Searchfoundation_DomainSubscriptionRequestItem(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_251(v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5F8, &qword_1B96B9970);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_136(v9);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC600, &qword_1B96B9978);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v12 = OUTLINED_FUNCTION_466_1(v11, v40);
  type metadata accessor for Searchfoundation_CloudChannelsRequestItem(v12);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_95_4();
  v14 = OUTLINED_FUNCTION_1_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_183(v16);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_139();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC610, &qword_1B96B9988);
  OUTLINED_FUNCTION_1231();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v18);
  v19 = OUTLINED_FUNCTION_156();
  type metadata accessor for Searchfoundation_SubscribeForUpdatesCommand(v19);
  v20 = *(v1 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (!v24)
  {
    OUTLINED_FUNCTION_427();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v2 + v20);
    if (!v24)
    {
      OUTLINED_FUNCTION_94_11();
      sub_1B944B02C();
      v27 = *v0 == *v3 && v0[1] == v3[1];
      if (v27 || (sub_1B964C9F0() & 1) != 0)
      {
        v28 = v0[2] == v3[2] && v0[3] == v3[3];
        if (v28 || (sub_1B964C9F0() & 1) != 0)
        {
          v29 = v0[4] == v3[4] && v0[5] == v3[5];
          if (v29 || (sub_1B964C9F0() & 1) != 0)
          {
            sub_1B964C2B0();
            OUTLINED_FUNCTION_0_84();
            sub_1B8CD3068(v30, v31, MEMORY[0x1E69AAC10]);
            v32 = sub_1B964C850();
            sub_1B944B0D4();
            OUTLINED_FUNCTION_472();
            sub_1B944B0D4();
            sub_1B8D9207C(v2, &qword_1EBACC608, &qword_1B96B9980);
            if ((v32 & 1) == 0)
            {
              goto LABEL_39;
            }

            goto LABEL_6;
          }
        }
      }

      sub_1B944B0D4();
      OUTLINED_FUNCTION_432();
      sub_1B944B0D4();
      v25 = &qword_1EBACC608;
      v26 = &qword_1B96B9980;
LABEL_37:
      v34 = v2;
      goto LABEL_38;
    }

    OUTLINED_FUNCTION_495_0();
    sub_1B944B0D4();
LABEL_14:
    v25 = &qword_1EBACC610;
    v26 = &qword_1B96B9988;
    goto LABEL_37;
  }

  OUTLINED_FUNCTION_37_0(v2 + v20);
  if (!v24)
  {
    goto LABEL_14;
  }

  sub_1B8D9207C(v2, &qword_1EBACC608, &qword_1B96B9980);
LABEL_6:
  v21 = *(v41 + 48);
  OUTLINED_FUNCTION_493_0();
  OUTLINED_FUNCTION_865();
  v22 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_44(v22, v23);
  if (v24)
  {
    OUTLINED_FUNCTION_48(v42 + v21);
    if (v24)
    {
      sub_1B8D9207C(v42, &qword_1EBACC5F8, &qword_1B96B9970);
      goto LABEL_42;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1256();
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v42 + v21);
    if (!v33)
    {
      OUTLINED_FUNCTION_93_8();
      sub_1B944B02C();
      OUTLINED_FUNCTION_461();
      static Searchfoundation_DomainSubscriptionRequestItem.== infix(_:_:)();
      v37 = v36;
      sub_1B944B0D4();
      OUTLINED_FUNCTION_128();
      sub_1B944B0D4();
      sub_1B8D9207C(v42, &qword_1EBACC5F8, &qword_1B96B9970);
      if ((v37 & 1) == 0)
      {
        goto LABEL_39;
      }

LABEL_42:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v38, v39, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_257_0();
      OUTLINED_FUNCTION_89_10();
      v35 = sub_1B964C850();
      goto LABEL_40;
    }

    OUTLINED_FUNCTION_494_1();
    sub_1B944B0D4();
  }

  v25 = &qword_1EBACC600;
  v26 = &qword_1B96B9978;
  v34 = v42;
LABEL_38:
  sub_1B8D9207C(v34, v25, v26);
LABEL_39:
  v35 = 0;
LABEL_40:
  OUTLINED_FUNCTION_264(v35);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_RejectPeopleInPhotoCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(v4);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC620, &unk_1B96D4760);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  sub_1B8D68234(*v1, *v0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_11;
  }

  v10 = type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(0);
  OUTLINED_FUNCTION_1232(v10);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_50(v2);
  if (v11)
  {
    OUTLINED_FUNCTION_50(v2 + v3);
    if (v11)
    {
      sub_1B8D9207C(v2, &qword_1EBACC618, &unk_1B96B9990);
LABEL_14:
      OUTLINED_FUNCTION_1308();
      OUTLINED_FUNCTION_0_84();
      v17 = sub_1B8CD3068(v15, v16, MEMORY[0x1E69AAC10]);
      v12 = OUTLINED_FUNCTION_634(v17);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v3);
  if (v11)
  {
    OUTLINED_FUNCTION_493_1();
    sub_1B944B0D4();
LABEL_10:
    sub_1B8D9207C(v2, &unk_1EBACC620, &unk_1B96D4760);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_1233();
  v13 = OUTLINED_FUNCTION_246();
  v14 = static Searchfoundation_PhotosLibraryImage.== infix(_:_:)(v13);
  sub_1B944B0D4();
  OUTLINED_FUNCTION_253();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &qword_1EBACC618, &unk_1B96B9990);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_11:
  v12 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_ShowWrapperResponseViewCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_CATModel(v4);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_106_8();
  v6 = OUTLINED_FUNCTION_686();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC630, &qword_1B96B99A8);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowWrapperResponseViewCommand(v11);
  OUTLINED_FUNCTION_429_1();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_75_9();
  if (v15)
  {
    OUTLINED_FUNCTION_37_0(v0 + v3);
    if (v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC628, &qword_1B96B99A0);
      goto LABEL_6;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v0 + v3);
  if (v15)
  {
    OUTLINED_FUNCTION_492_2();
    sub_1B944B0D4();
LABEL_10:
    v16 = &qword_1EBACC630;
    v17 = &qword_1B96B99A8;
LABEL_25:
    sub_1B8D9207C(v0, v16, v17);
LABEL_26:
    v14 = 0;
    goto LABEL_27;
  }

  OUTLINED_FUNCTION_92_12();
  OUTLINED_FUNCTION_1276();
  OUTLINED_FUNCTION_131_0();
  if (v18)
  {
    v21 = v19 == v20;
  }

  else
  {
    v21 = 0;
  }

  if (!v21 && (sub_1B964C9F0() & 1) == 0 || (v2[2] == v1[2] ? (v22 = v2[3] == v1[3]) : (v22 = 0), !v22 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](v2[4], v2[5], v1[4], v1[5]) & 1) == 0))
  {
    sub_1B944B0D4();
    OUTLINED_FUNCTION_1165();
    v16 = &qword_1EBACC628;
    v17 = &qword_1B96B99A0;
    goto LABEL_25;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v23, v24, MEMORY[0x1E69AAC10]);
  v25 = OUTLINED_FUNCTION_198_0();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_491();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC628, &qword_1B96B99A0);
  if ((v25 & 1) == 0)
  {
    goto LABEL_26;
  }

LABEL_6:
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v12, v13, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_294();
  v14 = sub_1B964C850();
LABEL_27:
  OUTLINED_FUNCTION_264(v14);
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_ClearProactiveCategoryCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v3 = *v2;
  v5 = *v4;
  if (*(v4 + 8) == 1)
  {
    switch(v5)
    {
      case 1:
        if (v3 != 1)
        {
          return 0;
        }

        goto LABEL_6;
      case 2:
        if (v3 != 2)
        {
          return 0;
        }

        goto LABEL_6;
      case 3:
        if (v3 != 3)
        {
          return 0;
        }

        goto LABEL_6;
      case 4:
        if (v3 != 4)
        {
          return 0;
        }

        goto LABEL_6;
      case 5:
        if (v3 != 5)
        {
          return 0;
        }

        goto LABEL_6;
      case 6:
        if (v3 != 6)
        {
          return 0;
        }

        goto LABEL_6;
      default:
        if (!v3)
        {
          goto LABEL_6;
        }

        return 0;
    }
  }

  if (v3 != v5)
  {
    return 0;
  }

LABEL_6:
  if (*(v1 + 9) != *(v0 + 9))
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v9 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ClearProactiveCategoryCommand(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v12 = sub_1B8CD3068(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

void static Searchfoundation_CreateContactCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_Person(v2);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_190_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CreateContactCommand(v9);
  OUTLINED_FUNCTION_1138();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0);
  if (!v10)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v0 + v1);
    if (!v10)
    {
      OUTLINED_FUNCTION_10_33();
      OUTLINED_FUNCTION_1233();
      v11 = OUTLINED_FUNCTION_196();
      v13 = static Searchfoundation_Person.== infix(_:_:)(v11, v12);
      OUTLINED_FUNCTION_499_0();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_531_0();
      sub_1B944B0D4();
      sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
      if ((v13 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_45_15();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_99_0(v0 + v1);
  if (!v10)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_11:
  OUTLINED_FUNCTION_1061();
  if (v10)
  {
    OUTLINED_FUNCTION_1154();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v15, v16, MEMORY[0x1E69AAC10]);
    v14 = OUTLINED_FUNCTION_695_1();
    goto LABEL_13;
  }

LABEL_12:
  v14 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v14);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_CreateCalendarEventCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_CalendarEvent(v2);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC640, &qword_1B96B99B8);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CreateCalendarEventCommand(v9);
  OUTLINED_FUNCTION_941();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_50(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_50(v0 + v1);
    if (v10)
    {
      sub_1B8D9207C(v0, &qword_1EBACC638, &qword_1B96B99B0);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v14, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_288();
      v11 = OUTLINED_FUNCTION_656_0(v16, v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_491_1();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &unk_1EBACC640, &qword_1B96B99B8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_1252();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_CalendarEvent.== infix(_:_:)();
  v13 = v12;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC638, &qword_1B96B99B0);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v11);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_CreateReminderCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_Reminder(v2);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC650, &qword_1B96B99C8);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CreateReminderCommand(v9);
  OUTLINED_FUNCTION_941();
  OUTLINED_FUNCTION_92_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_50(v0);
  if (v10)
  {
    OUTLINED_FUNCTION_50(v0 + v1);
    if (v10)
    {
      sub_1B8D9207C(v0, &qword_1EBACC648, &qword_1B96B99C0);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_84();
      sub_1B8CD3068(v14, v15, MEMORY[0x1E69AAC10]);
      v16 = OUTLINED_FUNCTION_288();
      v11 = OUTLINED_FUNCTION_656_0(v16, v17);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v0 + v1);
  if (v10)
  {
    OUTLINED_FUNCTION_490_2();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACC650, &qword_1B96B99C8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_1252();
  OUTLINED_FUNCTION_246();
  static Searchfoundation_Reminder.== infix(_:_:)();
  v13 = v12;
  sub_1B944B0D4();
  OUTLINED_FUNCTION_467();
  sub_1B944B0D4();
  sub_1B8D9207C(v0, &qword_1EBACC648, &qword_1B96B99C0);
  if (v13)
  {
    goto LABEL_12;
  }

LABEL_10:
  v11 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v11);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_UpdateSportsFollowingStatusCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_64();
  type metadata accessor for Searchfoundation_SportsItem(v2);
  OUTLINED_FUNCTION_205_4();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_31_8();
  v4 = OUTLINED_FUNCTION_190_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC660, &qword_1B96B99D8);
  OUTLINED_FUNCTION_120_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_UpdateSportsFollowingStatusCommand(v9);
  OUTLINED_FUNCTION_1138();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_99_0(v0);
  if (!v10)
  {
    OUTLINED_FUNCTION_1_0();
    sub_1B8D92024();
    OUTLINED_FUNCTION_99_0(v0 + v1);
    if (!v10)
    {
      OUTLINED_FUNCTION_40_13();
      OUTLINED_FUNCTION_1233();
      OUTLINED_FUNCTION_196();
      v11 = static Searchfoundation_SportsItem.== infix(_:_:)();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_531_0();
      sub_1B944B0D4();
      sub_1B8D9207C(v0, &qword_1EBACC658, &qword_1B96B99D0);
      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      goto LABEL_11;
    }

    OUTLINED_FUNCTION_184_6();
    sub_1B944B0D4();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBACC660, &qword_1B96B99D8);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_99_0(v0 + v1);
  if (!v10)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v0, &qword_1EBACC658, &qword_1B96B99D0);
LABEL_11:
  OUTLINED_FUNCTION_1061();
  if (v10)
  {
    OUTLINED_FUNCTION_1154();
    OUTLINED_FUNCTION_0_84();
    sub_1B8CD3068(v13, v14, MEMORY[0x1E69AAC10]);
    v12 = OUTLINED_FUNCTION_695_1();
    goto LABEL_13;
  }

LABEL_12:
  v12 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v12);
  OUTLINED_FUNCTION_283();
}

uint64_t static Searchfoundation_RequestProductPageCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || *(v2 + 16) != *(v1 + 16) || *(v2 + 24) != *(v1 + 24))
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_RequestProductPageCommand(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v8 = sub_1B8CD3068(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B9332320(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_1319();
  if (!v3)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_280();
  v6(v5);
  OUTLINED_FUNCTION_156_4();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v9 = sub_1B8CD3068(v7, v8, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v9) & 1;
}

uint64_t static Searchfoundation_ExecuteToolCommand.== infix(_:_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_17_1(a1);
  v5 = v5 && v3 == v4;
  if (!v5 && (sub_1B964C9F0() & 1) == 0 || (MEMORY[0x1BFADC060](*(v2 + 16), *(v2 + 24), *(v1 + 16), *(v1 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_ExecuteToolCommand(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_84();
  v8 = sub_1B8CD3068(v6, v7, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v8) & 1;
}

uint64_t sub_1B9332448(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  OUTLINED_FUNCTION_17_1(a1);
  v6 = v6 && v4 == v5;
  if (!v6 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v9 = v6 && v7 == v8;
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  a3(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_84();
  v12 = sub_1B8CD3068(v10, v11, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v12) & 1;
}

uint64_t static Searchfoundation_FillToolParameterCommand.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_78_6(a1);
  if ((MEMORY[0x1BFADC060](v1) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_FillToolParameterCommand(0);
  OUTLINED_FUNCTION_156_4();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v4 = sub_1B8CD3068(v2, v3, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v4) & 1;
}

uint64_t static Searchfoundation_FillToolAppParameterCommand.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_78_6(a1);
  if ((MEMORY[0x1BFADC060](v1) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v4 = v4 && v2 == v3;
  if (!v4 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v7 = v4 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_FillToolAppParameterCommand(0);
  OUTLINED_FUNCTION_736();
  OUTLINED_FUNCTION_0_84();
  v10 = sub_1B8CD3068(v8, v9, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v10) & 1;
}

void static Searchfoundation_FillToolAppEntityParameterCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v6 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_AppEntityAnnotation(v6);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_106_8();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC1D8, &qword_1B96B94F0);
  OUTLINED_FUNCTION_183(v8);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_137();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC668, &qword_1B96B99E0);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_88();
  if ((MEMORY[0x1BFADC060](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_12;
  }

  v11 = type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(0);
  OUTLINED_FUNCTION_1232(v11);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_75_9();
  if (v12)
  {
    OUTLINED_FUNCTION_37_0(v2 + v5);
    if (v12)
    {
      sub_1B8D9207C(v2, &unk_1EBACC1D8, &qword_1B96B94F0);
LABEL_25:
      OUTLINED_FUNCTION_1308();
      OUTLINED_FUNCTION_0_84();
      v26 = sub_1B8CD3068(v24, v25, MEMORY[0x1E69AAC10]);
      v15 = OUTLINED_FUNCTION_199_0(v26);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v5);
  if (v12)
  {
    OUTLINED_FUNCTION_271_2();
    sub_1B944B0D4();
LABEL_10:
    v13 = &qword_1EBACC668;
    v14 = &qword_1B96B99E0;
LABEL_11:
    sub_1B8D9207C(v2, v13, v14);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_1275();
  OUTLINED_FUNCTION_131_0();
  if (v16)
  {
    v19 = v17 == v18;
  }

  else
  {
    v19 = 0;
  }

  if (!v19 && (sub_1B964C9F0() & 1) == 0 || (*(v4 + 16) == *(v3 + 16) ? (v20 = *(v4 + 24) == *(v3 + 24)) : (v20 = 0), !v20 && (sub_1B964C9F0() & 1) == 0))
  {
    sub_1B944B0D4();
    OUTLINED_FUNCTION_1165();
    v13 = &unk_1EBACC1D8;
    v14 = &qword_1B96B94F0;
    goto LABEL_11;
  }

  v21 = sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v22, v23, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_198_0();
  OUTLINED_FUNCTION_992();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_531_0();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &unk_1EBACC1D8, &qword_1B96B94F0);
  if (v21)
  {
    goto LABEL_25;
  }

LABEL_12:
  v15 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v15);
  OUTLINED_FUNCTION_283();
}

void static Searchfoundation_FillToolPersonParameterCommand.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v4 = OUTLINED_FUNCTION_280();
  type metadata accessor for Searchfoundation_Person(v4);
  OUTLINED_FUNCTION_201_5();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_31_8();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5B0, &qword_1B96B9920);
  OUTLINED_FUNCTION_163_4();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  if ((MEMORY[0x1BFADC060](*v1, v1[1], *v0, v0[1]) & 1) == 0)
  {
    goto LABEL_11;
  }

  v9 = type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(0);
  OUTLINED_FUNCTION_1232(v9);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_200_0();
  OUTLINED_FUNCTION_50(v2);
  if (v10)
  {
    OUTLINED_FUNCTION_50(v2 + v3);
    if (v10)
    {
      sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
LABEL_14:
      OUTLINED_FUNCTION_1308();
      OUTLINED_FUNCTION_0_84();
      v17 = sub_1B8CD3068(v15, v16, MEMORY[0x1E69AAC10]);
      v11 = OUTLINED_FUNCTION_634(v17);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_50(v2 + v3);
  if (v10)
  {
    OUTLINED_FUNCTION_45_15();
    sub_1B944B0D4();
LABEL_10:
    sub_1B8D9207C(v2, &qword_1EBACC5B0, &qword_1B96B9920);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_10_33();
  OUTLINED_FUNCTION_1233();
  v12 = OUTLINED_FUNCTION_246();
  v14 = static Searchfoundation_Person.== infix(_:_:)(v12, v13);
  OUTLINED_FUNCTION_499_0();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_253();
  sub_1B944B0D4();
  sub_1B8D9207C(v2, &qword_1EBACC5A8, &unk_1B96CD450);
  if (v14)
  {
    goto LABEL_14;
  }

LABEL_11:
  v11 = 0;
LABEL_12:
  OUTLINED_FUNCTION_264(v11);
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_Topic.type.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 16) = *result;
  *(v1 + 24) = v2;
  return result;
}

uint64_t Searchfoundation_Topic.identifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_Topic.detail.getter()
{
  v0 = OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_1313(v0);
  return sub_1B8D92024();
}

uint64_t Searchfoundation_Topic.detail.setter()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_1313(v0);
  return sub_1B8DAA170();
}

uint64_t Searchfoundation_Topic.detail.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  OUTLINED_FUNCTION_1313(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_Topic.flight.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1313(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    sub_1B8D9207C(v1, &qword_1EBACC670, &qword_1B96B99E8);
LABEL_6:
    *a1 = 0;
    v11 = type metadata accessor for Searchfoundation_FlightDetails(0);
    return OUTLINED_FUNCTION_163_2(v11);
  }

  OUTLINED_FUNCTION_461();
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_44_12();
    sub_1B944B0D4();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_183_7();
  OUTLINED_FUNCTION_182();
  return sub_1B944B02C();
}

uint64_t sub_1B9332D8C()
{
  OUTLINED_FUNCTION_99_4();
  *v0 = 0;
  v2 = v1(0);
  return OUTLINED_FUNCTION_163_2(v2);
}

void Searchfoundation_Topic.flight.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_FlightDetails(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_1176(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_770(v14);
  OUTLINED_FUNCTION_1313(v15);
  OUTLINED_FUNCTION_64_0(v16);
  *(v1 + 32) = type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_75_9();
  if (v17)
  {
    v18 = sub_1B8D9207C(v0, &qword_1EBACC670, &qword_1B96B99E8);
  }

  else
  {
    OUTLINED_FUNCTION_128();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_183_7();
      OUTLINED_FUNCTION_177_1();
      sub_1B944B02C();
      goto LABEL_7;
    }

    OUTLINED_FUNCTION_44_12();
    v18 = sub_1B944B0D4();
  }

  *v11 = 0;
  OUTLINED_FUNCTION_1161(v18);
LABEL_7:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

void sub_1B9332EE4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_905();
  OUTLINED_FUNCTION_1239();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_183_7();
    sub_1B944B02C();
    OUTLINED_FUNCTION_1208();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_134_5();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_183_7();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_1208();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_Topic.weather.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1313(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBACC670, &qword_1B96B99E8);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_182_5();
      OUTLINED_FUNCTION_182();
      return sub_1B944B02C();
    }

    OUTLINED_FUNCTION_44_12();
    sub_1B944B0D4();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_WeatherDetails(0);
  v10 = OUTLINED_FUNCTION_911();
  type metadata accessor for Searchfoundation_LatLng(v10);
  v11 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Searchfoundation_Topic.weather.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_WeatherDetails(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_1176(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_770(v13);
  OUTLINED_FUNCTION_1313(v14);
  OUTLINED_FUNCTION_64_0(v15);
  *(v1 + 32) = type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_75_9();
  if (v16)
  {
    sub_1B8D9207C(v0, &qword_1EBACC670, &qword_1B96B99E8);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v18 = OUTLINED_FUNCTION_861_0();
    v19 = type metadata accessor for Searchfoundation_LatLng(v18);
    OUTLINED_FUNCTION_457_1(v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_44_12();
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_182_5();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

void sub_1B933324C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_905();
  OUTLINED_FUNCTION_1239();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_182_5();
    sub_1B944B02C();
    OUTLINED_FUNCTION_1208();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_182_5();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_1208();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_Topic.sports.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_1313(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    sub_1B8D9207C(v0, &qword_1EBACC670, &qword_1B96B99E8);
  }

  else
  {
    OUTLINED_FUNCTION_461();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_181_8();
      OUTLINED_FUNCTION_182();
      return sub_1B944B02C();
    }

    OUTLINED_FUNCTION_44_12();
    sub_1B944B0D4();
  }

  v10 = OUTLINED_FUNCTION_61_3();
  v11 = type metadata accessor for Searchfoundation_SportsDetail(v10);
  return OUTLINED_FUNCTION_163_2(v11);
}

uint64_t sub_1B933344C()
{
  v2 = OUTLINED_FUNCTION_139_1();
  v3 = type metadata accessor for Searchfoundation_Topic(v2);
  sub_1B8D9207C(v0 + *(v3 + 28), &qword_1EBACC670, &qword_1B96B99E8);
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_1388();
  OUTLINED_FUNCTION_80();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v1);
}

void Searchfoundation_Topic.sports.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_SportsDetail(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_1176(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_770(v13);
  OUTLINED_FUNCTION_1313(v14);
  OUTLINED_FUNCTION_64_0(v15);
  *(v1 + 32) = type metadata accessor for Searchfoundation_Topic.OneOf_Detail(0);
  OUTLINED_FUNCTION_75_9();
  if (v16)
  {
    v17 = sub_1B8D9207C(v0, &qword_1EBACC670, &qword_1B96B99E8);
LABEL_7:
    OUTLINED_FUNCTION_180_5(v17);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_128();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    OUTLINED_FUNCTION_44_12();
    v17 = sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_181_8();
  OUTLINED_FUNCTION_177_1();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_46_1();
  OUTLINED_FUNCTION_242();
}

void sub_1B9333614()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_905();
  OUTLINED_FUNCTION_1239();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_181_8();
    sub_1B944B02C();
    OUTLINED_FUNCTION_1208();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC670, &qword_1B96B99E8);
    OUTLINED_FUNCTION_181_8();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_1208();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v1);
  free(v0);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_Topic.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_Topic(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_Topic.OneOf_Detail.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_1356(v3, v4);
  type metadata accessor for Searchfoundation_SportsDetail(v5);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v28 = v7;
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Searchfoundation_WeatherDetails(v8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  v11 = OUTLINED_FUNCTION_87_6();
  type metadata accessor for Searchfoundation_FlightDetails(v11);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v15 = (v14 - v13);
  v16 = OUTLINED_FUNCTION_1141();
  type metadata accessor for Searchfoundation_Topic.OneOf_Detail(v16);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_839_0();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_211();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC678, &qword_1B96B99F0);
  OUTLINED_FUNCTION_183(v20);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_139();
  sub_1B944B080();
  sub_1B944B080();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    OUTLINED_FUNCTION_470_1();
    sub_1B944B080();
    if (!OUTLINED_FUNCTION_1280())
    {
      OUTLINED_FUNCTION_183_7();
      sub_1B944B02C();
      if (*v2 == *v15)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v26, v27, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_1389();
      }

      OUTLINED_FUNCTION_134_5();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_134_5();
      goto LABEL_21;
    }

    OUTLINED_FUNCTION_134_5();
LABEL_16:
    sub_1B944B0D4();
    sub_1B8D9207C(v0, &qword_1EBACC678, &qword_1B96B99F0);
    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 1)
  {
    OUTLINED_FUNCTION_167_7();
    sub_1B944B080();
    if (OUTLINED_FUNCTION_1280() == 2)
    {
      OUTLINED_FUNCTION_181_8();
      sub_1B944B02C();
      v23 = *v1 == *v28 && v1[1] == v28[1];
      if (v23 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v24, v25, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_604_1();
      }

      OUTLINED_FUNCTION_965();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_128();
LABEL_21:
      sub_1B944B0D4();
      OUTLINED_FUNCTION_44_12();
      sub_1B944B0D4();
      goto LABEL_22;
    }

    goto LABEL_16;
  }

  OUTLINED_FUNCTION_470_1();
  sub_1B944B080();
  if (OUTLINED_FUNCTION_1280() != 1)
  {
    OUTLINED_FUNCTION_931();
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_182_5();
  sub_1B944B02C();
  static Searchfoundation_WeatherDetails.== infix(_:_:)();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_303();
  sub_1B944B0D4();
  OUTLINED_FUNCTION_44_12();
  sub_1B944B0D4();
LABEL_22:
  OUTLINED_FUNCTION_177();
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9333BBC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = OUTLINED_FUNCTION_280();
  v3(v2);
  OUTLINED_FUNCTION_156_4();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  v6 = sub_1B8CD3068(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

void static Searchfoundation_WeatherDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for Searchfoundation_LatLng(v3);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v7 = (v6 - v5);
  v8 = OUTLINED_FUNCTION_686();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB018, &unk_1B96B9910);
  OUTLINED_FUNCTION_471_0();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v12);
  v13 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WeatherDetails(v13);
  OUTLINED_FUNCTION_429_1();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_75_9();
  if (!v17)
  {
    OUTLINED_FUNCTION_177_1();
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v0 + v2);
    if (!v17)
    {
      OUTLINED_FUNCTION_41_19();
      sub_1B944B02C();
      if (*v1 == *v7 && v1[1] == v7[1])
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v20, v21, MEMORY[0x1E69AAC10]);
        v22 = sub_1B964C850();
        OUTLINED_FUNCTION_35_14();
        sub_1B944B0D4();
        if (v22)
        {
          OUTLINED_FUNCTION_35_14();
          sub_1B944B0D4();
          goto LABEL_5;
        }
      }

      else
      {
        OUTLINED_FUNCTION_35_14();
        sub_1B944B0D4();
      }

      OUTLINED_FUNCTION_35_14();
      sub_1B944B0D4();
      v18 = &qword_1EBACAFA0;
      v19 = &unk_1B96CB440;
LABEL_16:
      sub_1B8D9207C(v0, v18, v19);
      v16 = 0;
      goto LABEL_17;
    }

    OUTLINED_FUNCTION_35_14();
    sub_1B944B0D4();
LABEL_9:
    v18 = &qword_1EBACB018;
    v19 = &unk_1B96B9910;
    goto LABEL_16;
  }

  OUTLINED_FUNCTION_37_0(v0 + v2);
  if (!v17)
  {
    goto LABEL_9;
  }

LABEL_5:
  sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_84();
  sub_1B8CD3068(v14, v15, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_294();
  v16 = sub_1B964C850();
LABEL_17:
  OUTLINED_FUNCTION_264(v16);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9333F14()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  OUTLINED_FUNCTION_1341();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9333F94()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  OUTLINED_FUNCTION_1341();
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_FlightDetails.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FlightDetails(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_WeatherDetails.location.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WeatherDetails(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_LatLng(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    OUTLINED_FUNCTION_251_0(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_WeatherDetails.location.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_WeatherDetails(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_41_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_WeatherDetails.location.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_LatLng(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_WeatherDetails(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 20));
  v17 = OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v11 = 0;
    v11[1] = 0;
    OUTLINED_FUNCTION_1190(v17);
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9334278()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_35_14();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACAFA0, &unk_1B96CB440);
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_SportsDetail.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_SportsDetail(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ShowContactCardCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ShowContactCardCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ShowAppStoreSheetCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ShowAppStoreSheetCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ShowPurchaseRequestSheetCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ShowPurchaseRequestSheetCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ShowScreenTimeRequestSheetCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ShowScreenTimeRequestSheetCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_OpenPunchoutCommand.punchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_OpenPunchoutCommand(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_Punchout.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_OpenPunchoutCommand.punchout.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_OpenPunchoutCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Punchout(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_OpenPunchoutCommand.punchout.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_Punchout(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_OpenPunchoutCommand(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_100_7(v17);
    v18 = OUTLINED_FUNCTION_1097();
    v19 = type metadata accessor for Searchfoundation_UserActivityData(v18);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9334930()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACAF90, &unk_1B96B77C0);
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_502_0();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACAF90, &unk_1B96B77C0);
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t sub_1B9334A40()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_103();
  v1(v6);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v7 = v0(0);
  OUTLINED_FUNCTION_220_2(v7);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B9334B04()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1B9334BF4()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B9334C78()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_OpenFileProviderItemCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_OpenFileProviderItemCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_OpenAppClipCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_OpenAppClipCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_OpenWebClipCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_OpenWebClipCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RequestAppClipInstallCommand.url.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RequestAppClipInstallCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_URL(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RequestAppClipInstallCommand.url.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_URL(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_RequestAppClipInstallCommand(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_RequestAppClipInstallCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RequestAppClipInstallCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RequestUserReportCommand.userReportRequest.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RequestUserReportCommand(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_UserReportRequest(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB4DD8 != -1)
    {
      OUTLINED_FUNCTION_433_2(&qword_1EBAB4DD8);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC1D0, &unk_1B96B94E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_14();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RequestUserReportCommand.userReportRequest.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RequestUserReportCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACC1D0, &unk_1B96B94E0);
  OUTLINED_FUNCTION_48_14();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_UserReportRequest(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RequestUserReportCommand.userReportRequest.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_UserReportRequest(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RequestUserReportCommand(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB4DD8 != -1)
    {
      OUTLINED_FUNCTION_433_2(&qword_1EBAB4DD8);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC1D0, &unk_1B96B94E0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_48_14();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9335374()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC1D0, &unk_1B96B94E0);
    OUTLINED_FUNCTION_48_14();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_273_1();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC1D0, &unk_1B96B94E0);
    OUTLINED_FUNCTION_48_14();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_LaunchAppCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_LaunchAppCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RunVoiceShortcutCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RunVoiceShortcutCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_IndexedUserActivityCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_IndexedUserActivityCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_OpenCoreSpotlightItemCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_OpenCoreSpotlightItemCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PerformIntentCommand.intentMessageData.getter()
{
  v0 = OUTLINED_FUNCTION_432();
  sub_1B8D91FCC(v0, v1);
  return OUTLINED_FUNCTION_432();
}

uint64_t Searchfoundation_PerformIntentCommand.intentMessageData.setter()
{
  OUTLINED_FUNCTION_16();
  result = sub_1B8D538A0(*(v1 + 32), *(v1 + 40));
  *(v1 + 32) = v2;
  *(v1 + 40) = v0;
  return result;
}

uint64_t Searchfoundation_PerformIntentCommand.biomeStreamIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 56) = v2;
  *(v1 + 64) = v0;
  return result;
}

uint64_t Searchfoundation_PerformIntentCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_PerformIntentCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_SearchInAppCommand.searchInAppType.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 32) = *result;
  *(v1 + 40) = v2;
  return result;
}

uint64_t Searchfoundation_SearchInAppCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_SearchInAppCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B9335A4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B944C624();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1B9335B2C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = static Searchfoundation_SearchInAppCommand.SearchInAppType.allCases.getter(a1);
  *a2 = result;
  return result;
}

uint64_t Searchfoundation_UpdateSearchQueryCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_UpdateSearchQueryCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_SearchWebCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_SearchWebCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_InvokeSiriCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_InvokeSiriCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PerformContactQueryCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_PerformContactQueryCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PerformPersonEntityQueryCommand.person.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  Command = type metadata accessor for Searchfoundation_PerformPersonEntityQueryCommand(v1);
  sub_1B8D9207C(v0 + *(Command + 20), &qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_10_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Person(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_PerformPersonEntityQueryCommand.person.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_Person(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  Command = type metadata accessor for Searchfoundation_PerformPersonEntityQueryCommand(v14);
  OUTLINED_FUNCTION_116_0(*(Command + 20));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_676_1(v17);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9336008()
{
  v1 = OUTLINED_FUNCTION_178_1();
  v2(v1);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_10_4(v0 + 16, v3);

  return OUTLINED_FUNCTION_432();
}

void sub_1B9336054(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  Searchfoundation_PerformEntityQueryCommand.searchString.setter(v1, v2);
}

void sub_1B93360D4()
{
  OUTLINED_FUNCTION_184_0();
  OUTLINED_FUNCTION_236_2();
  v6 = OUTLINED_FUNCTION_11_13();
  v8 = v7(v6);
  v9 = OUTLINED_FUNCTION_216_1(v8);
  v11 = *(v1 + v5);
  if ((v9 & 1) == 0)
  {
    v4(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v12 = OUTLINED_FUNCTION_40_0();
    v13 = v3(v12);
    OUTLINED_FUNCTION_192_2(v13);
  }

  OUTLINED_FUNCTION_9_3(v11 + 16, v10);
  *(v11 + 16) = v2;
  *(v11 + 24) = v0;

  OUTLINED_FUNCTION_183_2();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.searchString.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v4);
  OUTLINED_FUNCTION_66_1(Command);
  OUTLINED_FUNCTION_344_0();
  v6 = *(v0 + 24);
  *(v1 + 48) = *(v0 + 16);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B93361FC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_58_0();
  if (v6)
  {
    OUTLINED_FUNCTION_207_1();
    v7 = OUTLINED_FUNCTION_461();
    v5(v7);
  }

  else
  {
    v8 = OUTLINED_FUNCTION_151_1();
    v9 = *(v5 + v0);
    if ((v8 & 1) == 0)
    {
      v10 = OUTLINED_FUNCTION_185_1();
      v4(v10);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v11 = OUTLINED_FUNCTION_40_0();
      v12 = v3(v11);
      OUTLINED_FUNCTION_228_1(v12);
    }

    OUTLINED_FUNCTION_59_3(v9 + 16);
    *(v9 + 16) = v2;
    *(v9 + 24) = v1;
  }

  OUTLINED_FUNCTION_242();

  free(v13);
}

uint64_t Searchfoundation_PerformEntityQueryCommand.tokenString.getter()
{
  OUTLINED_FUNCTION_677_0(0);
  OUTLINED_FUNCTION_10_4(v0 + 32, v1);

  return OUTLINED_FUNCTION_432();
}

void Searchfoundation_PerformEntityQueryCommand.tokenString.setter()
{
  OUTLINED_FUNCTION_193_0();
  v4 = OUTLINED_FUNCTION_11_13();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v4);
  v6 = OUTLINED_FUNCTION_47(Command);
  v8 = *(v1 + v3);
  if ((v6 & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v9 = OUTLINED_FUNCTION_40_0();
    v10 = sub_1B93F7158(v9);
    OUTLINED_FUNCTION_135(v10);
  }

  OUTLINED_FUNCTION_9_3(v8 + 32, v7);
  *(v8 + 32) = v2;
  *(v8 + 40) = v0;

  OUTLINED_FUNCTION_192_1();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.tokenString.modify()
{
  v2 = OUTLINED_FUNCTION_126();
  v3 = __swift_coroFrameAllocStub(v2);
  v4 = OUTLINED_FUNCTION_11_10(v3);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v4);
  OUTLINED_FUNCTION_66_1(Command);
  OUTLINED_FUNCTION_62_0(v0 + 32);
  v6 = *(v0 + 40);
  *(v1 + 48) = *(v0 + 32);
  *(v1 + 56) = v6;

  return OUTLINED_FUNCTION_514();
}

void sub_1B9336400()
{
  OUTLINED_FUNCTION_58_0();
  if (v5)
  {
    OUTLINED_FUNCTION_191();
    OUTLINED_FUNCTION_461();
    Searchfoundation_PerformEntityQueryCommand.tokenString.setter();
  }

  else
  {
    v6 = OUTLINED_FUNCTION_163_1();
    v7 = *(v4 + v1);
    if ((v6 & 1) == 0)
    {
      type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
      OUTLINED_FUNCTION_57_0();
      swift_allocObject();
      v8 = OUTLINED_FUNCTION_40_0();
      v9 = sub_1B93F7158(v8);
      OUTLINED_FUNCTION_168(v9);
    }

    OUTLINED_FUNCTION_59_3(v7 + 32);
    *(v7 + 32) = v3;
    *(v7 + 40) = v2;
  }

  free(v0);
}

uint64_t Searchfoundation_PerformEntityQueryCommand.symbolImage.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_236();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v8);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  type metadata accessor for Searchfoundation_SymbolImage(0);
  OUTLINED_FUNCTION_199_2();
  OUTLINED_FUNCTION_9_2();
  if (v9)
  {
    OUTLINED_FUNCTION_666_1();
    *(a1 + 24) = 0;
    *(a1 + 32) = v1;
    *(a1 + 40) = 0;
    *(a1 + 48) = v1;
    *(a1 + 56) = 0;
    *(a1 + 64) = v1;
    *(a1 + 72) = 0;
    *(a1 + 80) = v1;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v2, &qword_1EBACC680, &unk_1B96CF300);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PerformEntityQueryCommand.symbolImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC680, &unk_1B96CF300);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_47(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_489_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_SymbolImage(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PerformEntityQueryCommand.symbolImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_SymbolImage(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_677_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v16)
  {
    OUTLINED_FUNCTION_110_4();
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = v0;
    *(v11 + 40) = 0;
    *(v11 + 48) = v0;
    *(v11 + 56) = 0;
    *(v11 + 64) = v0;
    *(v11 + 72) = 0;
    *(v11 + 80) = v0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBACC680, &unk_1B96CF300);
    }
  }

  else
  {
    OUTLINED_FUNCTION_489_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.hasSymbolImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_SymbolImage(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PerformEntityQueryCommand.clearSymbolImage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC680, &unk_1B96CF300);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_SymbolImage(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.entityType.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  OUTLINED_FUNCTION_264_1(Command);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.entityIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  OUTLINED_FUNCTION_254_1(Command);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.entityBackgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PerformEntityQueryCommand.entityBackgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_47(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PerformEntityQueryCommand.entityBackgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_Color(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_677_0(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.hasEntityBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PerformEntityQueryCommand.clearEntityBackgroundColor()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.metadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_47(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PerformEntityQueryCommand.metadata.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_DrillDownMetadata(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_677_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_1360();
    v17 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v17;
    v11[4] = 0;
    v11[5] = v0;
    v11[6] = 0;
    v11[7] = v0;
    v18 = OUTLINED_FUNCTION_1180();
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(v18);
    v19 = OUTLINED_FUNCTION_267_1();
    v23 = __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_655_1(v23);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_8();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.hasMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PerformEntityQueryCommand.clearMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

void sub_1B93374BC()
{
  OUTLINED_FUNCTION_243();
  v2 = v1;
  v4 = v3;
  v5 = OUTLINED_FUNCTION_491();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_79();
  v9 = v2(0);
  v10 = OUTLINED_FUNCTION_642_0(v9);
  OUTLINED_FUNCTION_521(v10, &v20);
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v11 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_57(v0);
  if (v12)
  {
    *v4 = 0;
    v4[1] = 0xE000000000000000;
    v13 = MEMORY[0x1E69E7CC0];
    v4[2] = MEMORY[0x1E69E7CC0];
    v4[3] = v13;
    v4[4] = 0;
    v4[5] = 0xE000000000000000;
    v4[6] = 0;
    v4[7] = 0xE000000000000000;
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = (v4 + *(v11 + 40));
    *v18 = 0;
    v18[1] = 0xE000000000000000;
    v19 = (v4 + *(v11 + 44));
    *v19 = 0;
    v19[1] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_57(v0);
    if (!v12)
    {
      sub_1B8D9207C(v0, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_202();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.drilldownMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_47(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_63_8();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PerformEntityQueryCommand.drilldownMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_DrillDownMetadata(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_187(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_224_2(v14);
  OUTLINED_FUNCTION_677_0(v15);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_1360();
    v17 = MEMORY[0x1E69E7CC0];
    v11[2] = MEMORY[0x1E69E7CC0];
    v11[3] = v17;
    v11[4] = 0;
    v11[5] = v0;
    v11[6] = 0;
    v11[7] = v0;
    v18 = OUTLINED_FUNCTION_1180();
    type metadata accessor for Searchfoundation_DrillDownMetadata.OneOf_Metadata(v18);
    v19 = OUTLINED_FUNCTION_267_1();
    v23 = __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
    OUTLINED_FUNCTION_655_1(v23);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3480, &unk_1B9685AF8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_63_8();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.hasDrilldownMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PerformEntityQueryCommand.clearDrilldownMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC3480, &unk_1B9685AF8);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_DrillDownMetadata(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.tokenImage.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v7);
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PerformEntityQueryCommand.tokenImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_47(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PerformEntityQueryCommand.tokenImage.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  OUTLINED_FUNCTION_677_0(v14);
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.hasTokenImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  OUTLINED_FUNCTION_677_0(v4);
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PerformEntityQueryCommand.clearTokenImage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(Command) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PerformEntityQueryCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93F7158(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.filterQueries.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  OUTLINED_FUNCTION_53_2(Command);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.enabledDomains.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  OUTLINED_FUNCTION_53_2(Command);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_PerformEntityQueryCommand.bundleIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  Command = type metadata accessor for Searchfoundation_PerformEntityQueryCommand(v2);
  OUTLINED_FUNCTION_254_1(Command);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_OpenCalculationCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_OpenCalculationCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_PlayVideoCommand.url.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_PlayVideoCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_URL(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_PlayVideoCommand.url.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_URL(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_PlayVideoCommand(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_ShowSFCardCommand.card.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowSFCardCommand(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_Card(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D30A0 != -1)
    {
      OUTLINED_FUNCTION_153_3(&qword_1ED9D30A0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAC3D58, &unk_1B9689680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_15();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ShowSFCardCommand.card.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_ShowSFCardCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAC3D58, &unk_1B9689680);
  OUTLINED_FUNCTION_49_15();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Card(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_ShowSFCardCommand.card.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_Card(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_ShowSFCardCommand(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D30A0 != -1)
    {
      OUTLINED_FUNCTION_153_3(&qword_1ED9D30A0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAC3D58, &unk_1B9689680);
    }
  }

  else
  {
    OUTLINED_FUNCTION_49_15();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B9338854()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBAC3D58, &unk_1B9689680);
    OUTLINED_FUNCTION_49_15();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_274_2();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAC3D58, &unk_1B9689680);
    OUTLINED_FUNCTION_49_15();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_ShowWrapperResponseViewCommand.catModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowWrapperResponseViewCommand(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_CATModel(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    *(a1 + 32) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC628, &qword_1B96B99A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ShowWrapperResponseViewCommand.catModel.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_ShowWrapperResponseViewCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBACC628, &qword_1B96B99A0);
  OUTLINED_FUNCTION_92_12();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CATModel(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_ShowWrapperResponseViewCommand.catModel.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_CATModel(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_ShowWrapperResponseViewCommand(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 20));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_114_0();
    *(v11 + 32) = xmmword_1B9652FE0;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBACC628, &qword_1B96B99A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9338C20()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC628, &qword_1B96B99A0);
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_492_2();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC628, &qword_1B96B99A0);
    OUTLINED_FUNCTION_92_12();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_ClearProactiveCategoryCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ClearProactiveCategoryCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CallCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CallCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_EmailCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_EmailCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_BeginMapsRoutingCommand.location.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_LatLng(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    a1[1] = 0;
    OUTLINED_FUNCTION_251_0(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_BeginMapsRoutingCommand.location.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBACAFA0, &unk_1B96CB440);
  OUTLINED_FUNCTION_41_19();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_LatLng(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_BeginMapsRoutingCommand.location.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_LatLng(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 36));
  v17 = OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v11 = 0;
    v11[1] = 0;
    OUTLINED_FUNCTION_1190(v17);
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBACAFA0, &unk_1B96CB440);
    }
  }

  else
  {
    OUTLINED_FUNCTION_41_19();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_BeginMapsRoutingCommand.directionsMode.setter(uint64_t result)
{
  v2 = *(result + 8);
  *(v1 + 40) = *result;
  *(v1 + 48) = v2;
  return result;
}

uint64_t Searchfoundation_BeginMapsRoutingCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_BeginMapsRoutingCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ToggleAudioCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ToggleAudioCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ToggleWatchListStatusCommand.watchListItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_WatchListItem(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_WatchListItem.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5D8, &qword_1B96B9948);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ToggleWatchListStatusCommand.watchListItem.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACC5D8, &qword_1B96B9948);
  OUTLINED_FUNCTION_22_22();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_WatchListItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_ToggleWatchListStatusCommand.watchListItem.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_WatchListItem(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 24));
  OUTLINED_FUNCTION_59_13();
  if (v16)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_411_1(v17);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5D8, &qword_1B96B9948);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B9339668()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_103();
  v1(v6);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v7 = v0(0);
  OUTLINED_FUNCTION_220_2(v7);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B933972C()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Searchfoundation_ToggleWatchListStatusCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ToggleWatchListStatusCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CopyCommand.copyableItem.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CopyCommand(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_CopyItem(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    v8 = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
    v9 = OUTLINED_FUNCTION_274_1(v8);
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC5C8, &qword_1B96B9938);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_5();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CopyCommand.copyableItem.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CopyCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACC5C8, &qword_1B96B9938);
  OUTLINED_FUNCTION_96_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CopyItem(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CopyCommand.copyableItem.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_CopyItem(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_CopyCommand(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
    OUTLINED_FUNCTION_533_0();
    OUTLINED_FUNCTION_83();
    v21 = __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    OUTLINED_FUNCTION_576_1(v21);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5C8, &qword_1B96B9938);
    }
  }

  else
  {
    OUTLINED_FUNCTION_96_5();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B9339AA4()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC5C8, &qword_1B96B9938);
    OUTLINED_FUNCTION_96_5();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_497_1();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC5C8, &qword_1B96B9938);
    OUTLINED_FUNCTION_96_5();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_CopyCommand.copyableItems.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Searchfoundation_CopyCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CopyCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.photosLibraryImage.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_666_1();
    a1[3] = MEMORY[0x1E69E7CC0];
    a1[4] = 0;
    a1[5] = v10;
    OUTLINED_FUNCTION_762(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.photosLibraryImage.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93FE168(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ShowPhotosOneUpViewCommand.photosLibraryImage.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_PhotosLibraryImage(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_110_4();
    *(v10 + 16) = 0;
    *(v10 + 24) = MEMORY[0x1E69E7CC0];
    *(v10 + 32) = 0;
    *(v10 + 40) = v16;
    OUTLINED_FUNCTION_610_1(v17);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.hasPhotosLibraryImage.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ShowPhotosOneUpViewCommand.clearPhotosLibraryImage()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93FE168(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.matchedPerson.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v5);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v6 = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_873_0(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.matchedPerson.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93FE168(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_10_33();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Person(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ShowPhotosOneUpViewCommand.matchedPerson.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_Person(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_676_1(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.hasMatchedPerson.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ShowPhotosOneUpViewCommand.clearMatchedPerson()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93FE168(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.matchedScenes.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.matchedPeople.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  OUTLINED_FUNCTION_53_2(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_195_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.photoFilePunchout.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_Punchout.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.photoFilePunchout.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93FE168(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_27_15();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Punchout(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ShowPhotosOneUpViewCommand.photoFilePunchout.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_Punchout(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v14)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_100_7(v15);
    v16 = OUTLINED_FUNCTION_1097();
    v17 = type metadata accessor for Searchfoundation_UserActivityData(v16);
    OUTLINED_FUNCTION_6_19(v17);
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACAF90, &unk_1B96B77C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27_15();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ShowPhotosOneUpViewCommand.hasPhotoFilePunchout.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ShowPhotosOneUpViewCommand.clearPhotoFilePunchout()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACAF90, &unk_1B96B77C0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ShowPhotosOneUpViewCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B93FE168(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_Punchout(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_AddToPhotosLibraryCommand.image.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_Image(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_AddToPhotosLibraryCommand.image.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 20), &qword_1EBAB8EA8, &unk_1B96B77D0);
  OUTLINED_FUNCTION_4_47();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Image(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_AddToPhotosLibraryCommand.image.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_212();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_26_1(v8);
  v10 = type metadata accessor for Searchfoundation_Image(v9);
  OUTLINED_FUNCTION_140_2(v10);
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_AddToPhotosLibraryCommand(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 20));
  OUTLINED_FUNCTION_17_2();
  if (v17)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1EBAB5600 != -1)
    {
      OUTLINED_FUNCTION_150_5(&qword_1EBAB5600);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8EA8, &unk_1B96B77D0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_47();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_ExpandInlineCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ExpandInlineCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ViewEmailCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ViewEmailCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FlightCheckinCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FlightCheckinCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ManageReservationCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_ManageReservationCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_RejectPeopleInPhotoCommand.photosLibraryImage.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_666_1();
    a1[3] = MEMORY[0x1E69E7CC0];
    a1[4] = 0;
    a1[5] = v10;
    OUTLINED_FUNCTION_762(v11);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_RejectPeopleInPhotoCommand.photosLibraryImage.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACC618, &unk_1B96B9990);
  OUTLINED_FUNCTION_61_9();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_PhotosLibraryImage(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_RejectPeopleInPhotoCommand.photosLibraryImage.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_PhotosLibraryImage(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v17)
  {
    OUTLINED_FUNCTION_110_4();
    *(v11 + 16) = 0;
    *(v11 + 24) = MEMORY[0x1E69E7CC0];
    *(v11 + 32) = 0;
    *(v11 + 40) = v18;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    OUTLINED_FUNCTION_16_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBACC618, &unk_1B96B9990);
    }
  }

  else
  {
    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B933B540()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC618, &unk_1B96B9990);
    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_493_1();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC618, &unk_1B96B9990);
    OUTLINED_FUNCTION_61_9();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_RejectPeopleInPhotoCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_RejectPeopleInPhotoCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CreateContactCommand.person.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  ContactCommand = type metadata accessor for Searchfoundation_CreateContactCommand(v1);
  sub_1B8D9207C(v0 + *(ContactCommand + 24), &qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_10_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Person(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CreateContactCommand.person.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_Person(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  ContactCommand = type metadata accessor for Searchfoundation_CreateContactCommand(v14);
  OUTLINED_FUNCTION_116_0(*(ContactCommand + 24));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_676_1(v17);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_CreateContactCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CreateContactCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FillToolParameterCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FillToolParameterCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FillToolAppParameterCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FillToolAppParameterCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FillToolFileParameterCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FillToolFileParameterCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_FillToolAppEntityParameterCommand.entity.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_AppEntityAnnotation(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_251_0(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &unk_1EBACC1D8, &qword_1B96B94F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_13();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_FillToolAppEntityParameterCommand.entity.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &unk_1EBACC1D8, &qword_1B96B94F0);
  OUTLINED_FUNCTION_47_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AppEntityAnnotation(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_FillToolAppEntityParameterCommand.entity.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_AppEntityAnnotation(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 24));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_1190(v17);
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &unk_1EBACC1D8, &qword_1B96B94F0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_47_13();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B933BDEC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &unk_1EBACC1D8, &qword_1B96B94F0);
    OUTLINED_FUNCTION_47_13();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_271_2();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &unk_1EBACC1D8, &qword_1B96B94F0);
    OUTLINED_FUNCTION_47_13();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_FillToolAppEntityParameterCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FillToolAppEntityParameterCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t sub_1B933BFE0()
{
  OUTLINED_FUNCTION_79_4();
  v2 = OUTLINED_FUNCTION_690();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_22_3();
  v7 = v0(v6);
  OUTLINED_FUNCTION_463_1(v7);
  OUTLINED_FUNCTION_1189();
  v8 = type metadata accessor for Searchfoundation_Person(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_92_0();
    OUTLINED_FUNCTION_873_0(v10);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_FillToolPersonParameterCommand.person.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACC5A8, &unk_1B96CD450);
  OUTLINED_FUNCTION_10_33();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Person(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_FillToolPersonParameterCommand.person.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_Person(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 24));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_676_1(v17);
    OUTLINED_FUNCTION_17_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5A8, &unk_1B96CD450);
    }
  }

  else
  {
    OUTLINED_FUNCTION_10_33();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_FillToolPersonParameterCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_FillToolPersonParameterCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CalendarEvent.startDate.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CalendarEvent(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_Date(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.startDate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 32), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Date(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.startDate.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_Date(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_CalendarEvent(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 32));
  v17 = OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_576_1(v17);
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_CalendarEvent.endDate.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CalendarEvent(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_Date(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.endDate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 36), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Date(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.endDate.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_Date(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_CalendarEvent(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 36));
  v17 = OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_576_1(v17);
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t sub_1B933C874()
{
  OUTLINED_FUNCTION_250_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_103();
  v1(v6);
  OUTLINED_FUNCTION_225_0();
  sub_1B8D92024();
  v7 = v0(0);
  OUTLINED_FUNCTION_220_2(v7);
  return OUTLINED_FUNCTION_681_0();
}

uint64_t sub_1B933C938()
{
  v1 = OUTLINED_FUNCTION_218_0();
  v2(v1);
  OUTLINED_FUNCTION_397();
  sub_1B8D9207C(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_282_1();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Searchfoundation_CalendarEvent.location.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Searchfoundation_CalendarEvent(v7);
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_StructuredLocation(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_295_1();
    *(a1 + 16) = 0;
    OUTLINED_FUNCTION_307_0(v10);
    v11 = OUTLINED_FUNCTION_245_2();
    v12 = type metadata accessor for Searchfoundation_LatLng(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC688, &qword_1B96B99F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_472();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.location.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 40), &qword_1EBACC688, &qword_1B96B99F8);
  OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_StructuredLocation(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.location.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_StructuredLocation(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_CalendarEvent(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 40));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_692_1();
    OUTLINED_FUNCTION_280_0(v17);
    v18 = OUTLINED_FUNCTION_233_0();
    v19 = type metadata accessor for Searchfoundation_LatLng(v18);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC688, &qword_1B96B99F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_CalendarEvent.notes.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 24) = v2;
  *(v1 + 32) = v0;
  return result;
}

uint64_t Searchfoundation_CalendarEvent.startTimeZone.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CalendarEvent(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_520_1(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.startTimeZone.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 44), &qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_TimeZone(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.startTimeZone.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_TimeZone(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_CalendarEvent(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 44));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_CalendarEvent.endTimeZone.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CalendarEvent(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_520_1(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.endTimeZone.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 48), &qword_1EBACC690, &qword_1B96B9A00);
  OUTLINED_FUNCTION_42_13();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_TimeZone(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.endTimeZone.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_TimeZone(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_CalendarEvent(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 48));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC690, &qword_1B96B9A00);
    }
  }

  else
  {
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B933D200()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC690, &qword_1B96B9A00);
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_362_1();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC690, &qword_1B96B9A00);
    OUTLINED_FUNCTION_42_13();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_CalendarEvent.endLocation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Searchfoundation_CalendarEvent(v7);
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_StructuredLocation(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_295_1();
    *(a1 + 16) = 0;
    OUTLINED_FUNCTION_307_0(v10);
    v11 = OUTLINED_FUNCTION_245_2();
    v12 = type metadata accessor for Searchfoundation_LatLng(v11);
    result = OUTLINED_FUNCTION_11_31(v12);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC688, &qword_1B96B99F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_472();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.endLocation.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 52), &qword_1EBACC688, &qword_1B96B99F8);
  OUTLINED_FUNCTION_43_14();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_StructuredLocation(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.endLocation.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_StructuredLocation(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_CalendarEvent(v14);
  OUTLINED_FUNCTION_116_0(*(v15 + 52));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_692_1();
    OUTLINED_FUNCTION_280_0(v17);
    v18 = OUTLINED_FUNCTION_233_0();
    v19 = type metadata accessor for Searchfoundation_LatLng(v18);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC688, &qword_1B96B99F8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B933D5AC()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC688, &qword_1B96B99F8);
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_361_2();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC688, &qword_1B96B99F8);
    OUTLINED_FUNCTION_43_14();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_CalendarEvent.url.getter()
{
  v1 = OUTLINED_FUNCTION_236();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CalendarEvent(v5);
  OUTLINED_FUNCTION_100_0();
  v6 = type metadata accessor for Searchfoundation_URL(0);
  OUTLINED_FUNCTION_29_14(v6);
  if (v7)
  {
    OUTLINED_FUNCTION_132_2();
    OUTLINED_FUNCTION_520_1(v8);
    result = OUTLINED_FUNCTION_9_2();
    if (!v7)
    {
      return sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CalendarEvent.url.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_CalendarEvent(v1);
  sub_1B8D9207C(v0 + *(v2 + 56), &qword_1EBAB8E20, &unk_1B964D620);
  OUTLINED_FUNCTION_9_30();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_URL(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CalendarEvent.url.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_URL(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  v15 = type metadata accessor for Searchfoundation_CalendarEvent(v14);
  OUTLINED_FUNCTION_64_0(*(v15 + 56));
  OUTLINED_FUNCTION_16_2();
  if (v16)
  {
    OUTLINED_FUNCTION_157_6();
    OUTLINED_FUNCTION_16_2();
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E20, &unk_1B964D620);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_30();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

uint64_t Searchfoundation_CalendarEvent.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CalendarEvent(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_CalendarEvent.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = v2;
  v3 = type metadata accessor for Searchfoundation_CalendarEvent(0);
  OUTLINED_FUNCTION_101_2(v3);
  type metadata accessor for Searchfoundation_Date(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  v8 = OUTLINED_FUNCTION_338_1(v3[9]);
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  type metadata accessor for Searchfoundation_StructuredLocation(0);
  OUTLINED_FUNCTION_410_1();
  __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
  v16 = type metadata accessor for Searchfoundation_TimeZone(0);
  OUTLINED_FUNCTION_83();
  __swift_storeEnumTagSinglePayload(v17, v18, v19, v16);
  v20 = OUTLINED_FUNCTION_453_0(v3[12]);
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v16);
  v23 = OUTLINED_FUNCTION_338_1(v3[13]);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  type metadata accessor for Searchfoundation_URL(0);
  v27 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
}

uint64_t Searchfoundation_Reminder.dueDate.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_Reminder(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_Date(0);
  v9 = OUTLINED_FUNCTION_29_14(v8);
  if (v10)
  {
    *a1 = 0;
    OUTLINED_FUNCTION_520_1(v9);
    result = OUTLINED_FUNCTION_9_2();
    if (!v10)
    {
      return sub_1B8D9207C(v1, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_Reminder.dueDate.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_Reminder(v1);
  sub_1B8D9207C(v0 + *(v2 + 28), &qword_1EBAB8E30, &qword_1B964D630);
  OUTLINED_FUNCTION_25_18();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Date(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_Reminder.dueDate.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_85(v7);
  v9 = type metadata accessor for Searchfoundation_Date(v8);
  OUTLINED_FUNCTION_7_17(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_Reminder(v15);
  OUTLINED_FUNCTION_64_0(*(v16 + 28));
  v17 = OUTLINED_FUNCTION_16_2();
  if (v18)
  {
    *v11 = 0;
    OUTLINED_FUNCTION_576_1(v17);
    OUTLINED_FUNCTION_16_2();
    if (!v18)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8E30, &qword_1B964D630);
    }
  }

  else
  {
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_461();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B933DD5C()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8E30, &qword_1B964D630);
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_73_9();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBAB8E30, &qword_1B964D630);
    OUTLINED_FUNCTION_25_18();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_Reminder.notes.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t Searchfoundation_Reminder.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_Reminder(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_Reminder.init()()
{
  OUTLINED_FUNCTION_92_0();
  v0 = type metadata accessor for Searchfoundation_Reminder(0);
  OUTLINED_FUNCTION_191_2(v0);
  type metadata accessor for Searchfoundation_Date(0);
  v1 = OUTLINED_FUNCTION_40_3();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t Searchfoundation_CreateCalendarEventCommand.event.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_CreateCalendarEventCommand(v7);
  OUTLINED_FUNCTION_436_1();
  v8 = type metadata accessor for Searchfoundation_CalendarEvent(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_CalendarEvent.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC638, &qword_1B96B99B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CreateCalendarEventCommand.event.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  CalendarEventCommand = type metadata accessor for Searchfoundation_CreateCalendarEventCommand(v1);
  sub_1B8D9207C(v0 + *(CalendarEventCommand + 20), &qword_1EBACC638, &qword_1B96B99B0);
  OUTLINED_FUNCTION_91_5();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CalendarEvent(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CreateCalendarEventCommand.event.modify()
{
  OUTLINED_FUNCTION_243();
  v3 = OUTLINED_FUNCTION_212();
  v4 = __swift_coroFrameAllocStub(v3);
  OUTLINED_FUNCTION_86(v4);
  v5 = OUTLINED_FUNCTION_686();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_183(v7);
  v9 = __swift_coroFrameAllocStub(*(v8 + 64));
  v10 = OUTLINED_FUNCTION_26_1(v9);
  v11 = type metadata accessor for Searchfoundation_CalendarEvent(v10);
  OUTLINED_FUNCTION_140_2(v11);
  v13 = *(v12 + 64);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_202_0(v14);
  v16 = __swift_coroFrameAllocStub(v15);
  v17 = OUTLINED_FUNCTION_89_0(v16);
  CalendarEventCommand = type metadata accessor for Searchfoundation_CreateCalendarEventCommand(v17);
  OUTLINED_FUNCTION_116_0(*(CalendarEventCommand + 20));
  OUTLINED_FUNCTION_17_2();
  if (v19)
  {
    OUTLINED_FUNCTION_110_4();
    *(v13 + 16) = 0;
    *(v13 + 24) = 0;
    *(v13 + 32) = v20;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    v21 = OUTLINED_FUNCTION_1349();
    v22 = type metadata accessor for Searchfoundation_Date(v21);
    OUTLINED_FUNCTION_127_4(v13 + v2);
    v23 = type metadata accessor for Searchfoundation_StructuredLocation(0);
    OUTLINED_FUNCTION_264_3(v23);
    v24 = type metadata accessor for Searchfoundation_TimeZone(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v25, v26, v27, v24);
    v28 = OUTLINED_FUNCTION_245_4(*(v0 + 48));
    __swift_storeEnumTagSinglePayload(v28, v29, v30, v24);
    v31 = OUTLINED_FUNCTION_245_4(*(v0 + 52));
    __swift_storeEnumTagSinglePayload(v31, v32, v33, v22);
    v34 = OUTLINED_FUNCTION_915();
    v35 = type metadata accessor for Searchfoundation_URL(v34);
    OUTLINED_FUNCTION_6_19(v35);
    if (!v19)
    {
      sub_1B8D9207C(v1, &qword_1EBACC638, &qword_1B96B99B0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B933E298()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC638, &qword_1B96B99B0);
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_491_1();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC638, &qword_1B96B99B0);
    OUTLINED_FUNCTION_91_5();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_CreateReminderCommand.reminder.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_31_2();
  type metadata accessor for Searchfoundation_CreateReminderCommand(v7);
  OUTLINED_FUNCTION_3_0();
  sub_1B8D92024();
  v8 = type metadata accessor for Searchfoundation_Reminder(0);
  OUTLINED_FUNCTION_60_11(v8);
  if (v9)
  {
    OUTLINED_FUNCTION_295_1();
    *(a1 + 16) = 0;
    *(a1 + 24) = v10;
    OUTLINED_FUNCTION_307_0(v11);
    v12 = OUTLINED_FUNCTION_245_2();
    v13 = type metadata accessor for Searchfoundation_Date(v12);
    result = OUTLINED_FUNCTION_11_31(v13);
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC648, &qword_1B96B99C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_90_6();
    OUTLINED_FUNCTION_472();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_CreateReminderCommand.reminder.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  ReminderCommand = type metadata accessor for Searchfoundation_CreateReminderCommand(v1);
  sub_1B8D9207C(v0 + *(ReminderCommand + 20), &qword_1EBACC648, &qword_1B96B99C0);
  OUTLINED_FUNCTION_90_6();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Reminder(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_CreateReminderCommand.reminder.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_Reminder(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_202_0(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_89_0(v13);
  ReminderCommand = type metadata accessor for Searchfoundation_CreateReminderCommand(v14);
  OUTLINED_FUNCTION_116_0(*(ReminderCommand + 20));
  OUTLINED_FUNCTION_17_2();
  if (v16)
  {
    OUTLINED_FUNCTION_114_0();
    OUTLINED_FUNCTION_280_0(v17);
    v18 = OUTLINED_FUNCTION_233_0();
    v19 = type metadata accessor for Searchfoundation_Date(v18);
    OUTLINED_FUNCTION_6_19(v19);
    if (!v16)
    {
      sub_1B8D9207C(v0, &qword_1EBACC648, &qword_1B96B99C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_90_6();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_242();
}

void sub_1B933E664()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC648, &qword_1B96B99C0);
    OUTLINED_FUNCTION_90_6();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_490_2();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC648, &qword_1B96B99C0);
    OUTLINED_FUNCTION_90_6();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_MediaMetadata.mediaPunchouts.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t Searchfoundation_MediaMetadata.bundleIdentifiersToExclude.setter(uint64_t a1)
{

  *(v1 + 72) = a1;
  return result;
}

uint64_t Searchfoundation_MediaMetadata.disambiguationTitle.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 80) = v2;
  *(v1 + 88) = v0;
  return result;
}

uint64_t Searchfoundation_MediaMetadata.mediaIdentifier.setter()
{
  OUTLINED_FUNCTION_16();

  *(v1 + 96) = v2;
  *(v1 + 104) = v0;
  return result;
}

uint64_t sub_1B933E9E0()
{
  v0 = OUTLINED_FUNCTION_338_0();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_18_1();

  return v3(v2);
}

uint64_t sub_1B933EA64()
{
  v0 = OUTLINED_FUNCTION_313();
  v1(v0);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_59_1();
  v2 = OUTLINED_FUNCTION_209();

  return v3(v2);
}

uint64_t Searchfoundation_MediaMetadata.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_MediaMetadata(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_MediaMetadata.init()@<X0>(void *a1@<X8>)
{
  OUTLINED_FUNCTION_118_0(a1);
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = v2;
  *(v1 + 48) = 0;
  *(v1 + 56) = v2;
  v3 = MEMORY[0x1E69E7CC0];
  *(v1 + 64) = MEMORY[0x1E69E7CC0];
  *(v1 + 72) = v3;
  *(v1 + 80) = 0;
  *(v1 + 88) = v2;
  *(v1 + 96) = 0;
  *(v1 + 104) = v2;
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  return _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
}

uint64_t Searchfoundation_PlayMediaCommand.mediaMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_PlayMediaCommand(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MediaMetadata.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PlayMediaCommand.mediaMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_PlayMediaCommand(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PlayMediaCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9407AD4(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PlayMediaCommand.mediaMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_MediaMetadata(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Searchfoundation_PlayMediaCommand(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v15)
  {
    OUTLINED_FUNCTION_126_2();
    *(v10 + 48) = 0;
    *(v10 + 56) = v16;
    OUTLINED_FUNCTION_874(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PlayMediaCommand.hasMediaMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_PlayMediaCommand(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PlayMediaCommand.clearMediaMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_PlayMediaCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PlayMediaCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9407AD4(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_PlayMediaCommand.playbackLocation.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_PlayMediaCommand(v2);
  OUTLINED_FUNCTION_264_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_117_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_PlayMediaCommand.shouldPause.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_PlayMediaCommand(v2);
  OUTLINED_FUNCTION_124_0(v3);
  OUTLINED_FUNCTION_68_0();
  OUTLINED_FUNCTION_51();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_PlayMediaCommand.audioData.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_PlayMediaCommand(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_AudioData(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_AudioData.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC698, &qword_1B96B9A08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_160_4();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_PlayMediaCommand.audioData.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_PlayMediaCommand(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PlayMediaCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9407AD4(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_160_4();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_AudioData(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_PlayMediaCommand.audioData.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_AudioData(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Searchfoundation_PlayMediaCommand(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  v14 = OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    OUTLINED_FUNCTION_1155(v14, xmmword_1B9652FE0);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC698, &qword_1B96B9A08);
    }
  }

  else
  {
    OUTLINED_FUNCTION_160_4();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_PlayMediaCommand.hasAudioData.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_PlayMediaCommand(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_AudioData(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_PlayMediaCommand.clearAudioData()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC698, &qword_1B96B9A08);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_PlayMediaCommand(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_PlayMediaCommand._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9407AD4(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_AudioData(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_OpenMediaCommand.mediaMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_OpenMediaCommand(v7);
  OUTLINED_FUNCTION_100_0();
  v8 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MediaMetadata.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_OpenMediaCommand.mediaMetadata.setter()
{
  v1 = OUTLINED_FUNCTION_313();
  v2 = type metadata accessor for Searchfoundation_OpenMediaCommand(v1);
  sub_1B8D9207C(v0 + *(v2 + 24), &qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_122_0();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  v3 = OUTLINED_FUNCTION_59();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Searchfoundation_OpenMediaCommand.mediaMetadata.modify()
{
  OUTLINED_FUNCTION_243();
  v1 = OUTLINED_FUNCTION_212();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_86(v2);
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_26_1(v7);
  v9 = type metadata accessor for Searchfoundation_MediaMetadata(v8);
  OUTLINED_FUNCTION_140_2(v9);
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_202_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_89_0(v14);
  v16 = type metadata accessor for Searchfoundation_OpenMediaCommand(v15);
  OUTLINED_FUNCTION_116_0(*(v16 + 24));
  OUTLINED_FUNCTION_59_13();
  if (v17)
  {
    OUTLINED_FUNCTION_126_2();
    *(v11 + 48) = 0;
    *(v11 + 56) = v18;
    OUTLINED_FUNCTION_874(v18);
    OUTLINED_FUNCTION_17_2();
    if (!v17)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_242();
}

void sub_1B933F8F0()
{
  OUTLINED_FUNCTION_243();
  OUTLINED_FUNCTION_67();
  if (v5)
  {
    OUTLINED_FUNCTION_128();
    sub_1B944B080();
    sub_1B8D9207C(v4 + v3, &qword_1EBACC5E8, &qword_1B96B9958);
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_1153();
    OUTLINED_FUNCTION_30_2();
    OUTLINED_FUNCTION_496_0();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4 + v3, &qword_1EBACC5E8, &qword_1B96B9958);
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_1151();
    OUTLINED_FUNCTION_30_2();
  }

  free(v2);
  free(v0);
  free(v1);
  OUTLINED_FUNCTION_242();

  free(v6);
}

uint64_t Searchfoundation_OpenMediaCommand.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_OpenMediaCommand(v0);
  return OUTLINED_FUNCTION_25();
}

uint64_t Searchfoundation_ListenToCardSection.punchoutOptions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_231_5(v3);
  OUTLINED_FUNCTION_1031();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ListenToCardSection.punchoutPickerTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_229_2(v3);
  OUTLINED_FUNCTION_1009();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ListenToCardSection.punchoutPickerDismissText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_228_2(v3);
  OUTLINED_FUNCTION_1008();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ListenToCardSection.canBeHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_234_5(v3);
  OUTLINED_FUNCTION_1007();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ListenToCardSection.hasTopPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_232_2(v3);
  OUTLINED_FUNCTION_1006();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ListenToCardSection.hasBottomPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_233_1(v3);
  OUTLINED_FUNCTION_1005();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ListenToCardSection.type.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_230_3(v3);
  OUTLINED_FUNCTION_1004();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_ListenToCardSection.separatorStyle.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  OUTLINED_FUNCTION_227_1(v3);
  OUTLINED_FUNCTION_337_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_ListenToCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ListenToCardSection(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ListenToCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ListenToCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9409BF8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ListenToCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_Color(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Searchfoundation_ListenToCardSection(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ListenToCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ListenToCardSection(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ListenToCardSection.clearBackgroundColor()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ListenToCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9409BF8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_ListenToCardSection.mediaMetadata.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ListenToCardSection(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_MediaMetadata.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ListenToCardSection.mediaMetadata.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ListenToCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9409BF8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_26_21();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_MediaMetadata(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ListenToCardSection.mediaMetadata.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_MediaMetadata(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Searchfoundation_ListenToCardSection(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v15)
  {
    OUTLINED_FUNCTION_126_2();
    *(v10 + 48) = 0;
    *(v10 + 56) = v16;
    OUTLINED_FUNCTION_874(v16);
    OUTLINED_FUNCTION_17_2();
    if (!v15)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5E8, &qword_1B96B9958);
    }
  }

  else
  {
    OUTLINED_FUNCTION_26_21();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ListenToCardSection.hasMediaMetadata.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ListenToCardSection(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ListenToCardSection.clearMediaMetadata()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5E8, &qword_1B96B9958);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ListenToCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9409BF8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_MediaMetadata(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_ListenToCardSection.fallbackCardSection.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ListenToCardSection(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_CardSection(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D2F70 != -1)
    {
      OUTLINED_FUNCTION_1126(&qword_1ED9D2F70);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC6B0, &unk_1B96B9A10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_219_4();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_ListenToCardSection.fallbackCardSection.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6B0, &unk_1B96B9A10);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ListenToCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9409BF8(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_634_0();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CardSection(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_ListenToCardSection.fallbackCardSection.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_CardSection(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Searchfoundation_ListenToCardSection(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9D2F70 != -1)
    {
      OUTLINED_FUNCTION_1126(&qword_1ED9D2F70);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACC6B0, &unk_1B96B9A10);
    }
  }

  else
  {
    OUTLINED_FUNCTION_634_0();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_ListenToCardSection.hasFallbackCardSection.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_ListenToCardSection(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_CardSection(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_ListenToCardSection.clearFallbackCardSection()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC6B0, &unk_1B96B9A10);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_ListenToCardSection(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_ListenToCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B9409BF8(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_CardSection(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_WatchNowCardSection.punchoutOptions.modify()
{
  v0 = OUTLINED_FUNCTION_194_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_30(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_231_5(v3);
  OUTLINED_FUNCTION_1031();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_WatchNowCardSection.punchoutPickerTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_229_2(v3);
  OUTLINED_FUNCTION_1009();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_WatchNowCardSection.punchoutPickerDismissText.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_228_2(v3);
  OUTLINED_FUNCTION_1008();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_WatchNowCardSection.canBeHidden.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_234_5(v3);
  OUTLINED_FUNCTION_1007();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_WatchNowCardSection.hasTopPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_232_2(v3);
  OUTLINED_FUNCTION_1006();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_WatchNowCardSection.hasBottomPadding_p.modify()
{
  v0 = OUTLINED_FUNCTION_18_3();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_6_11(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_233_1(v3);
  OUTLINED_FUNCTION_1005();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_WatchNowCardSection.type.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_230_3(v3);
  OUTLINED_FUNCTION_1004();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_WatchNowCardSection.separatorStyle.modify()
{
  v0 = OUTLINED_FUNCTION_196_1();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_37_3(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_227_1(v3);
  OUTLINED_FUNCTION_337_0();
  return OUTLINED_FUNCTION_105_0();
}

uint64_t Searchfoundation_WatchNowCardSection.backgroundColor.getter@<X0>(int a1@<W8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WatchNowCardSection(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    result = OUTLINED_FUNCTION_59_0();
    if (a1 != 1)
    {
      return sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_WatchNowCardSection.backgroundColor.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_WatchNowCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B940C510(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_5_36();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_Color(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_WatchNowCardSection.backgroundColor.modify()
{
  OUTLINED_FUNCTION_284();
  v2 = OUTLINED_FUNCTION_185_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_66_0(v3);
  v4 = OUTLINED_FUNCTION_491();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_71(v8);
  type metadata accessor for Searchfoundation_Color(v9);
  OUTLINED_FUNCTION_135_0();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_187(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_224_2(v13);
  type metadata accessor for Searchfoundation_WatchNowCardSection(v14);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_17_2();
  if (v15)
  {
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    if (qword_1ED9CD1C0 != -1)
    {
      OUTLINED_FUNCTION_4_45(&qword_1ED9CD1C0);
    }

    OUTLINED_FUNCTION_57_2();
    if (v0 != 1)
    {
      sub_1B8D9207C(v1, &qword_1EBACB050, &unk_1B96B7BD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_36();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_WatchNowCardSection.hasBackgroundColor.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WatchNowCardSection(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_WatchNowCardSection.clearBackgroundColor()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACB050, &unk_1B96B7BD0);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_WatchNowCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B940C510(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_Color(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_WatchNowCardSection.sectionTitle.modify()
{
  v0 = OUTLINED_FUNCTION_126();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_11_10(v1);
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  OUTLINED_FUNCTION_254_1(v3);
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_130_0();

  return OUTLINED_FUNCTION_514();
}

uint64_t Searchfoundation_WatchNowCardSection.watchListItem.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_236();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WatchNowCardSection(v7);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_101_0();
  OUTLINED_FUNCTION_39();
  v8 = type metadata accessor for Searchfoundation_WatchListItem(0);
  OUTLINED_FUNCTION_29_14(v8);
  if (v9)
  {
    Searchfoundation_WatchListItem.init()(a1);
    result = OUTLINED_FUNCTION_9_2();
    if (!v9)
    {
      return sub_1B8D9207C(v1, &qword_1EBACC5D8, &qword_1B96B9948);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_182();
    return sub_1B944B02C();
  }

  return result;
}

uint64_t Searchfoundation_WatchNowCardSection.watchListItem.setter()
{
  OUTLINED_FUNCTION_183_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  if ((OUTLINED_FUNCTION_47(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_WatchNowCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B940C510(v4);
    OUTLINED_FUNCTION_135(v5);
  }

  OUTLINED_FUNCTION_22_22();
  OUTLINED_FUNCTION_294();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_WatchListItem(0);
  v6 = OUTLINED_FUNCTION_53_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  OUTLINED_FUNCTION_73_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  return swift_endAccess();
}

void Searchfoundation_WatchNowCardSection.watchListItem.modify()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_185_0();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_66_0(v2);
  v3 = OUTLINED_FUNCTION_491();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_71(v7);
  type metadata accessor for Searchfoundation_WatchListItem(v8);
  OUTLINED_FUNCTION_135_0();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_187(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_224_2(v12);
  type metadata accessor for Searchfoundation_WatchNowCardSection(v13);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_55_2();
  sub_1B8D92024();
  OUTLINED_FUNCTION_59_13();
  if (v14)
  {
    OUTLINED_FUNCTION_128_7();
    OUTLINED_FUNCTION_411_1(v15);
    OUTLINED_FUNCTION_17_2();
    if (!v14)
    {
      sub_1B8D9207C(v0, &qword_1EBACC5D8, &qword_1B96B9948);
    }
  }

  else
  {
    OUTLINED_FUNCTION_22_22();
    OUTLINED_FUNCTION_246();
    sub_1B944B02C();
  }

  OUTLINED_FUNCTION_105_0();
  OUTLINED_FUNCTION_283();
}

uint64_t Searchfoundation_WatchNowCardSection.hasWatchListItem.getter()
{
  v0 = OUTLINED_FUNCTION_514();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Searchfoundation_WatchNowCardSection(v4);
  OUTLINED_FUNCTION_77_0();
  OUTLINED_FUNCTION_284_0();
  OUTLINED_FUNCTION_238_2();
  v5 = type metadata accessor for Searchfoundation_WatchListItem(0);
  OUTLINED_FUNCTION_11(v5);
  return OUTLINED_FUNCTION_466_0();
}

Swift::Void __swiftcall Searchfoundation_WatchNowCardSection.clearWatchListItem()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACC5D8, &qword_1B96B9948);
  OUTLINED_FUNCTION_183(v0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_31_2();
  v3 = type metadata accessor for Searchfoundation_WatchNowCardSection(v2);
  if ((OUTLINED_FUNCTION_182_0(v3) & 1) == 0)
  {
    type metadata accessor for Searchfoundation_WatchNowCardSection._StorageClass(0);
    OUTLINED_FUNCTION_57_0();
    swift_allocObject();
    v4 = OUTLINED_FUNCTION_40_0();
    v5 = sub_1B940C510(v4);
    OUTLINED_FUNCTION_157_2(v5);
  }

  v6 = type metadata accessor for Searchfoundation_WatchListItem(0);
  OUTLINED_FUNCTION_274_1(v6);
  OUTLINED_FUNCTION_290_0();
  OUTLINED_FUNCTION_122_0();
  sub_1B8DAA170();
  swift_endAccess();
}

uint64_t Searchfoundation_CopyItem.textCopyItem.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
LABEL_6:
    v7 = OUTLINED_FUNCTION_61_3();
    v8 = type metadata accessor for Searchfoundation_TextCopyItem(v7);
    return OUTLINED_FUNCTION_163_2(v8);
  }

  OUTLINED_FUNCTION_543();
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1B944B0D4();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_157_9();
  OUTLINED_FUNCTION_288();
  return sub_1B944B02C();
}

uint64_t Searchfoundation_CopyItem.textCopyItem.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  OUTLINED_FUNCTION_157_9();
  OUTLINED_FUNCTION_432();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Searchfoundation_CopyItem.textCopyItem.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_TextCopyItem(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    OUTLINED_FUNCTION_177_1();
    if (!swift_getEnumCaseMultiPayload())
    {
      OUTLINED_FUNCTION_157_9();
      OUTLINED_FUNCTION_128();
      sub_1B944B02C();
      goto LABEL_7;
    }

    sub_1B944B0D4();
  }

  *v11 = 0;
  v11[1] = 0xE000000000000000;
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
LABEL_7:
  OUTLINED_FUNCTION_242();
}

void sub_1B93427D0()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_157_9();
    OUTLINED_FUNCTION_439_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_157_9();
    OUTLINED_FUNCTION_1_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Searchfoundation_CopyItem.spotlightCopyItem.getter()
{
  OUTLINED_FUNCTION_180_3();
  v2 = OUTLINED_FUNCTION_177_1();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v1);
  if (v6)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 1)
    {
      OUTLINED_FUNCTION_156_8();
      OUTLINED_FUNCTION_288();
      return sub_1B944B02C();
    }

    sub_1B944B0D4();
  }

  v9 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v9;
  v10 = OUTLINED_FUNCTION_769(0xE000000000000000);
  v11 = type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(v10);
  return OUTLINED_FUNCTION_690_0(v11);
}

uint64_t Searchfoundation_CopyItem.spotlightCopyItem.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  OUTLINED_FUNCTION_156_8();
  OUTLINED_FUNCTION_432();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Searchfoundation_CopyItem.spotlightCopyItem.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_175_2(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  OUTLINED_FUNCTION_43_7(v14);
  *(v1 + 32) = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v15)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
LABEL_7:
    v17 = MEMORY[0x1E69E7CC0];
    *v11 = MEMORY[0x1E69E7CC0];
    v11[1] = v17;
    v11[2] = 0;
    v11[3] = 0xE000000000000000;
    v11[4] = 0;
    v11[5] = 0xE000000000000000;
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 1)
  {
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_156_8();
  OUTLINED_FUNCTION_128();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9342BB4()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_156_8();
    OUTLINED_FUNCTION_439_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_156_8();
    OUTLINED_FUNCTION_1_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Searchfoundation_CopyItem.imageCopyItem.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 2)
    {
      OUTLINED_FUNCTION_155_4();
      OUTLINED_FUNCTION_288();
      return sub_1B944B02C();
    }

    sub_1B944B0D4();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_ImageCopyItem(0);
  v8 = OUTLINED_FUNCTION_911();
  type metadata accessor for Searchfoundation_Image(v8);
  v9 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Searchfoundation_CopyItem.imageCopyItem.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  OUTLINED_FUNCTION_155_4();
  OUTLINED_FUNCTION_432();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Searchfoundation_CopyItem.imageCopyItem.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_ImageCopyItem(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  *(v1 + 32) = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_Image(0);
    v16 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 2)
  {
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_155_4();
  OUTLINED_FUNCTION_128();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9342F98()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_155_4();
    OUTLINED_FUNCTION_439_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_155_4();
    OUTLINED_FUNCTION_1_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Searchfoundation_CopyItem.contactCopyItem.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 3)
    {
      OUTLINED_FUNCTION_154_3();
      OUTLINED_FUNCTION_288();
      return sub_1B944B02C();
    }

    sub_1B944B0D4();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_ContactCopyItem(0);
  v8 = OUTLINED_FUNCTION_1341();
  v9 = type metadata accessor for Searchfoundation_Person(v8);
  OUTLINED_FUNCTION_696_0(v9);
  v10 = OUTLINED_FUNCTION_591_0();
  type metadata accessor for Searchfoundation_URL(v10);
  v11 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

uint64_t Searchfoundation_CopyItem.contactCopyItem.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  OUTLINED_FUNCTION_154_3();
  OUTLINED_FUNCTION_432();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1B9343258(uint64_t a1, void (*a2)(void), uint64_t (*a3)(uint64_t))
{
  OUTLINED_FUNCTION_1373();
  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  v3(0);
  a2(0);
  v6 = OUTLINED_FUNCTION_371_0();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_584_0();
  a3(v10);
  v11 = OUTLINED_FUNCTION_162_3();

  return __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
}

void Searchfoundation_CopyItem.contactCopyItem.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_ContactCopyItem(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  *(v1 + 32) = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_Person(0);
    OUTLINED_FUNCTION_83();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = OUTLINED_FUNCTION_1258();
    type metadata accessor for Searchfoundation_URL(v20);
    v21 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 3)
  {
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_154_3();
  OUTLINED_FUNCTION_128();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9343440()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_154_3();
    OUTLINED_FUNCTION_439_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_154_3();
    OUTLINED_FUNCTION_1_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Searchfoundation_CopyItem.urlCopyItem.getter()
{
  OUTLINED_FUNCTION_180_3();
  v1 = OUTLINED_FUNCTION_177_1();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_27_9();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_57(v0);
  if (v5)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  }

  else
  {
    OUTLINED_FUNCTION_543();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      OUTLINED_FUNCTION_153_6();
      OUTLINED_FUNCTION_288();
      return sub_1B944B02C();
    }

    sub_1B944B0D4();
  }

  _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
  type metadata accessor for Searchfoundation_URLCopyItem(0);
  v8 = OUTLINED_FUNCTION_911();
  type metadata accessor for Searchfoundation_URL(v8);
  v9 = OUTLINED_FUNCTION_40_3();
  return __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
}

uint64_t Searchfoundation_CopyItem.urlCopyItem.setter()
{
  sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
  OUTLINED_FUNCTION_153_6();
  OUTLINED_FUNCTION_432();
  sub_1B944B02C();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_199_3();
  swift_storeEnumTagMultiPayload();
  v1 = OUTLINED_FUNCTION_125_2();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

void Searchfoundation_CopyItem.urlCopyItem.modify()
{
  OUTLINED_FUNCTION_243();
  v2 = OUTLINED_FUNCTION_25_4();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_86(v3);
  v4 = OUTLINED_FUNCTION_686();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_183(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  v9 = OUTLINED_FUNCTION_85(v8);
  type metadata accessor for Searchfoundation_URLCopyItem(v9);
  OUTLINED_FUNCTION_126_1();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_175_2(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_43_7(v13);
  *(v1 + 32) = type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(0);
  OUTLINED_FUNCTION_16_2();
  if (v14)
  {
    sub_1B8D9207C(v0, &qword_1EBAB8ED8, &qword_1B964D6D8);
LABEL_7:
    _s10PegasusAPI18Amppb_AvailabilityVACycfC_0();
    type metadata accessor for Searchfoundation_URL(0);
    v16 = OUTLINED_FUNCTION_161_3();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    goto LABEL_8;
  }

  OUTLINED_FUNCTION_177_1();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    sub_1B944B0D4();
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_153_6();
  OUTLINED_FUNCTION_128();
  sub_1B944B02C();
LABEL_8:
  OUTLINED_FUNCTION_242();
}

void sub_1B9343824()
{
  OUTLINED_FUNCTION_128_3();
  if (v5)
  {
    OUTLINED_FUNCTION_461();
    sub_1B944B080();
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_153_6();
    OUTLINED_FUNCTION_439_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
    OUTLINED_FUNCTION_222();
    sub_1B944B0D4();
  }

  else
  {
    sub_1B8D9207C(v4, &qword_1EBAB8ED8, &qword_1B964D6D8);
    OUTLINED_FUNCTION_153_6();
    OUTLINED_FUNCTION_1_0();
    sub_1B944B02C();
    OUTLINED_FUNCTION_257();
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_255_1();
  }

  free(v3);
  free(v2);
  free(v1);

  free(v0);
}

uint64_t Searchfoundation_CopyItem.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_313();
  type metadata accessor for Searchfoundation_CopyItem(v0);
  return OUTLINED_FUNCTION_25();
}

void static Searchfoundation_CopyItem.OneOf_Value.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v5 = OUTLINED_FUNCTION_1356(v3, v4);
  v6 = type metadata accessor for Searchfoundation_URLCopyItem(v5);
  v7 = OUTLINED_FUNCTION_183(v6);
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_21();
  v8 = OUTLINED_FUNCTION_201();
  v9 = type metadata accessor for Searchfoundation_ContactCopyItem(v8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_21();
  v11 = OUTLINED_FUNCTION_201();
  v12 = type metadata accessor for Searchfoundation_ImageCopyItem(v11);
  v13 = OUTLINED_FUNCTION_183(v12);
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_21();
  v14 = OUTLINED_FUNCTION_201();
  v15 = type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(v14);
  v16 = OUTLINED_FUNCTION_183(v15);
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_165_5();
  type metadata accessor for Searchfoundation_TextCopyItem(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_21();
  v18 = OUTLINED_FUNCTION_201();
  type metadata accessor for Searchfoundation_CopyItem.OneOf_Value(v18);
  OUTLINED_FUNCTION_171_4();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_563();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_93_0();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_839_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_512_0();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_87_0();
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBACC6C0, &unk_1B96B9A20);
  OUTLINED_FUNCTION_183(v24);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_139();
  sub_1B944B080();
  sub_1B944B080();
  OUTLINED_FUNCTION_432();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      OUTLINED_FUNCTION_176_7();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1333() != 1)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_156_8();
      sub_1B944B02C();
      v28 = OUTLINED_FUNCTION_492();
      static Searchfoundation_CoreSpotlightCopyItem.== infix(_:_:)(v28);
      sub_1B944B0D4();
      goto LABEL_12;
    case 2u:
      OUTLINED_FUNCTION_176_7();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1333() == 2)
      {
        OUTLINED_FUNCTION_155_4();
        OUTLINED_FUNCTION_1336();
        sub_1B944B02C();
        OUTLINED_FUNCTION_236();
        static Searchfoundation_ImageCopyItem.== infix(_:_:)();
        sub_1B944B0D4();
        OUTLINED_FUNCTION_303();
        goto LABEL_12;
      }

      OUTLINED_FUNCTION_931();
      goto LABEL_15;
    case 3u:
      OUTLINED_FUNCTION_176_7();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1333() != 3)
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_154_3();
      sub_1B944B02C();
      OUTLINED_FUNCTION_275();
      static Searchfoundation_ContactCopyItem.== infix(_:_:)();
      sub_1B944B0D4();
      goto LABEL_12;
    case 4u:
      OUTLINED_FUNCTION_176_7();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1333() == 4)
      {
        OUTLINED_FUNCTION_153_6();
        sub_1B944B02C();
        v26 = OUTLINED_FUNCTION_186();
        static Searchfoundation_URLCopyItem.== infix(_:_:)(v26, v27);
        sub_1B944B0D4();
LABEL_12:
        sub_1B944B0D4();
        OUTLINED_FUNCTION_192_7();
        sub_1B944B0D4();
      }

      else
      {
        OUTLINED_FUNCTION_171_2();
LABEL_15:
        sub_1B944B0D4();
        sub_1B8D9207C(v0, &unk_1EBACC6C0, &unk_1B96B9A20);
      }

LABEL_16:
      OUTLINED_FUNCTION_177();
      OUTLINED_FUNCTION_283();
      return;
    default:
      OUTLINED_FUNCTION_176_7();
      sub_1B944B080();
      if (OUTLINED_FUNCTION_1333())
      {
        goto LABEL_15;
      }

      OUTLINED_FUNCTION_157_9();
      OUTLINED_FUNCTION_1256();
      sub_1B944B02C();
      v29 = *v2 == *v1 && v2[1] == v1[1];
      if (v29 || (sub_1B964C9F0() & 1) != 0)
      {
        sub_1B964C2B0();
        OUTLINED_FUNCTION_0_84();
        sub_1B8CD3068(v30, v31, MEMORY[0x1E69AAC10]);
        sub_1B964C850();
      }

      OUTLINED_FUNCTION_1042();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_444();
      sub_1B944B0D4();
      OUTLINED_FUNCTION_192_7();
      sub_1B944B0D4();
      goto LABEL_16;
  }
}

uint64_t static Searchfoundation_CoreSpotlightCopyItem.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if ((sub_1B8D6123C(v3, *v4) & 1) == 0 || (sub_1B8D6123C(*(v2 + 8), *(v1 + 8)) & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_84_1();
  v7 = v7 && v5 == v6;
  if (!v7 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v10 = v7 && v8 == v9;
  if (!v10 && (sub_1B964C9F0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Searchfoundation_CoreSpotlightCopyItem(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_84();
  v13 = sub_1B8CD3068(v11, v12, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v13) & 1;
}