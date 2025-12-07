id HDSleepHealthDaemonPluginServerInterface()
{
  v0 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_287A9CF50];
  v1 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_updateCurrentSleepSchedules_sleepDurationGoal_completion_ argumentIndex:0 ofReply:0];
  v2 = [v0 hk_setArrayOfClass:objc_opt_class() forSelector:sel_remote_saveSleepTrackingSamples_replacingSamplesInDateInterval_completion_ argumentIndex:0 ofReply:0];

  return v0;
}

uint64_t sub_269BD0AD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269BD8044(0, &unk_280B61420, MEMORY[0x277CCB6A8]);
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
    v12 = *(a1 + *(a3 + 24));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

void sub_269BD0BAC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269BD8044(0, &unk_280B61420, MEMORY[0x277CCB6A8]);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 20);

    v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }
}

uint64_t sub_269BD0C84()
{
  v1 = (type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*v1 + 64);

  v5 = sub_269BF8508();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  v6 = v1[10];
  v7 = sub_269BF8628();
  (*(*(v7 - 8) + 8))(v0 + v3 + v6, v7);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_269BD0DB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_269BF8508();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = sub_269BF8628();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 32);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_269BD0EDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_269BF8508();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = sub_269BF8628();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 32);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_269BD1004()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_269BD103C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_269BD1188()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269BD1210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_269BD8758(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = sub_269BF8508();
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 24));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t sub_269BD131C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  sub_269BD8758(0);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_269BF8508();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

uint64_t sub_269BD1424(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_269BD14D0(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SleepScoreMetricsDaySummary(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_269BD1578@<X0>(_BYTE *a1@<X8>)
{
  result = SleepHealthNotificationSettingsProvider.sleepingSampleChangeNotificationsEnabled.getter();
  *a1 = result;
  return result;
}

BOOL sub_269BD16D8@<W0>(_BYTE *a1@<X8>)
{
  result = SleepHealthNotificationSettingsProvider.vitalsDaySummaryDemoModeEnabled.getter();
  *a1 = result;
  return result;
}

uint64_t sub_269BD1730()
{
  v1 = sub_269BF8508();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_269BD17B8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_269BD1800()
{

  return MEMORY[0x2821FE8E8](v0, 98, 7);
}

uint64_t sub_269BD188C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = sub_269BF8688();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_8:

    return v9(v10, a2, v8);
  }

  v11 = sub_269BF8508();
  if (*(*(v11 - 8) + 84) == a2)
  {
    v8 = v11;
    v12 = *(v11 - 8);
    v13 = a3[5];
LABEL_7:
    v9 = *(v12 + 48);
    v10 = a1 + v13;
    goto LABEL_8;
  }

  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  if (*(*(started - 8) + 84) == a2)
  {
    v8 = started;
    v12 = *(started - 8);
    v13 = a3[8];
    goto LABEL_7;
  }

  sub_269BD3170(0);
  v17 = v16;
  v18 = *(*(v16 - 8) + 48);
  v19 = a1 + a3[9];

  return v18(v19, a2, v17);
}

uint64_t sub_269BD1A14(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  v8 = sub_269BF8688();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
LABEL_8:

    return v11(v12, a2, a2, v10);
  }

  v13 = sub_269BF8508();
  if (*(*(v13 - 8) + 84) == a3)
  {
    v10 = v13;
    v14 = *(v13 - 8);
    v15 = a4[5];
LABEL_7:
    v11 = *(v14 + 56);
    v12 = a1 + v15;
    goto LABEL_8;
  }

  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  if (*(*(started - 8) + 84) == a3)
  {
    v10 = started;
    v14 = *(started - 8);
    v15 = a4[8];
    goto LABEL_7;
  }

  sub_269BD3170(0);
  v19 = v18;
  v20 = *(*(v18 - 8) + 56);
  v21 = a1 + a4[9];

  return v20(v21, a2, a2, v19);
}

uint64_t sub_269BD1BA8(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BF8458();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 3)
  {
    return v5 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269BD1C14(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 2);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_269BF8458();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_269BD1C98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 28);
  v6 = sub_269BF8458();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_269BD1D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 28);
  v7 = sub_269BF8458();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

void static SleepScoreAlgorithmVersion.current.getter(unsigned __int8 *a1@<X8>)
{
  v2 = [objc_opt_self() sharedBehavior];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 features];

    if (v4)
    {
      v5 = [v4 sleepResultsNotificationsOnWatch];

      *a1 = v5;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

SleepHealth::SleepScoreAlgorithmVersion_optional __swiftcall SleepScoreAlgorithmVersion.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (rawValue == 1)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t SleepScoreAlgorithmVersion.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_269BD1E7C()
{
  v1 = *v0;
  sub_269BF8C18();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BD1ECC()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x26D64C450](v1);
}

uint64_t sub_269BD1F04(uint64_t a1)
{
  v2 = *v1;
  sub_269BF8C18();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x26D64C450](v3);
  return sub_269BF8C58();
}

void *sub_269BD1F50@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void sub_269BD1F70(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

void __swiftcall SleepScore.init(sleepDurationPoints:deepSleepDurationPoints:remSleepDurationPoints:sleepStartPunctualityPoints:awakeInterruptionPoints:awakeDurationPoints:)(SleepHealth::SleepScore *__return_ptr retstr, Swift::Int sleepDurationPoints, Swift::Int deepSleepDurationPoints, Swift::Int remSleepDurationPoints, Swift::Int sleepStartPunctualityPoints, Swift::Int awakeInterruptionPoints, Swift::Int awakeDurationPoints)
{
  retstr->sleepDurationPoints = sleepDurationPoints;
  retstr->deepSleepDurationPoints = deepSleepDurationPoints;
  retstr->remSleepDurationPoints = remSleepDurationPoints;
  retstr->sleepStartPunctualityPoints = sleepStartPunctualityPoints;
  retstr->awakeInterruptionPoints = awakeInterruptionPoints;
  retstr->awakeDurationPoints = awakeDurationPoints;
}

uint64_t SleepScore.awakePoints.getter()
{
  if (*(v0 + 40) >= *(v0 + 32))
  {
    return *(v0 + 32);
  }

  else
  {
    return *(v0 + 40);
  }
}

uint64_t SleepScore.totalPoints.getter()
{
  v1 = v0[1];
  v2 = *v0 + v1;
  if (__OFADD__(*v0, v1))
  {
    __break(1u);
    goto LABEL_9;
  }

  v3 = v0[2];
  v4 = __OFADD__(v2, v3);
  v5 = v2 + v3;
  if (v4)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v6 = v0[3];
  v4 = __OFADD__(v5, v6);
  v7 = v5 + v6;
  if (v4)
  {
LABEL_10:
    __break(1u);
LABEL_11:
    __break(1u);
    return result;
  }

  v8 = v0[4];
  if (v0[5] < v8)
  {
    v8 = v0[5];
  }

  result = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    goto LABEL_11;
  }

  return result;
}

Swift::Int __swiftcall SleepScore.points(for:)(SleepHealth::SleepScoreComponent a1)
{
  if (*a1)
  {
    if (*a1 == 1)
    {
      *&a1 = v1[3];
    }

    else if (v1[5] >= v1[4])
    {
      *&a1 = v1[4];
    }

    else
    {
      *&a1 = v1[5];
    }
  }

  else
  {
    v2 = v1[1];
    v3 = __OFADD__(*v1, v2);
    v4 = *v1 + v2;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = v1[2];
      *&a1 = v4 + v5;
      if (!__OFADD__(v4, v5))
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

LABEL_12:
  LOBYTE(result) = a1;
  return result;
}

uint64_t SleepScore.hash(into:)()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x26D64C450](*v0);
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  return MEMORY[0x26D64C450](v5);
}

uint64_t SleepScore.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v5);
  MEMORY[0x26D64C450](v6);
  return sub_269BF8C58();
}

uint64_t sub_269BD22B0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v5);
  MEMORY[0x26D64C450](v6);
  return sub_269BF8C58();
}

uint64_t sub_269BD2354()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  MEMORY[0x26D64C450](*v0);
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  return MEMORY[0x26D64C450](v5);
}

uint64_t sub_269BD23C8(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  sub_269BF8C18();
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  MEMORY[0x26D64C450](v4);
  MEMORY[0x26D64C450](v5);
  MEMORY[0x26D64C450](v6);
  MEMORY[0x26D64C450](v7);
  return sub_269BF8C58();
}

uint64_t sub_269BD246C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_269BD3170(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  sub_269BD31C8(a1 + *(v11 + 36), v6);
  v12 = (*(v8 + 48))(v6, 1, v7);
  if (v12 == 1)
  {
    sub_269BD3290(a1, type metadata accessor for SleepScoreMetricsDaySummary);
    result = sub_269BD3290(v6, sub_269BD3170);
    v14 = 0;
    v15 = 0;
    v16 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    *a2 = 0;
  }

  else
  {
    sub_269BD322C(v6, v10);
    v17 = sub_269BD2A8C(*(a1 + *(v11 + 28)), *(a1 + *(v11 + 28) + 8), *v10);
    v18 = sub_269BD2C20(*&v10[*(v7 + 32)]);
    v19 = sub_269BD2CA4(*&v10[*(v7 + 36)]);
    started = SleepScoreMetricsDaySummary.sleepStartTimeSinceUsualSleepStartTime.getter();
    v14 = sub_269BD2D28(started, v21 & 1);
    v15 = sub_269BD2F1C(*(v10 + 1));
    v16 = sub_269BD3028(*(v10 + 2));
    sub_269BD3290(a1, type metadata accessor for SleepScoreMetricsDaySummary);
    result = sub_269BD3290(v10, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    *a2 = v17;
    *(a2 + 8) = v18;
    *(a2 + 16) = v19;
  }

  *(a2 + 24) = v14;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  *(a2 + 48) = v12 == 1;
  return result;
}

BOOL _s11SleepHealth0A5ScoreV2eeoiySbAC_ACtFZ_0(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0])
  {
    return a1[2].i64[1] == a2[2].i64[1];
  }

  return result;
}

unint64_t sub_269BD271C()
{
  result = qword_28034A578;
  if (!qword_28034A578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A578);
  }

  return result;
}

unint64_t sub_269BD2774()
{
  result = qword_28034A580;
  if (!qword_28034A580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A580);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreAlgorithmVersion(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreAlgorithmVersion(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_269BD293C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_269BD295C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 48) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScore.Max(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for SleepScore.Max(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_269BD2A8C(uint64_t a1, char a2, double a3)
{
  if (a2)
  {
    v4 = HKSleepDurationGoalAdultRecommendation();
    v5 = [objc_opt_self() secondUnit];
    [v4 doubleValueForUnit_];
    v7 = v6;
  }

  else
  {
    v7 = *&a1;
  }

  result = 0;
  if (v7 > 0.0 && a3 > 0.0)
  {
    if (v7 < a3)
    {
      v9 = (a3 - v7) / 3600.0;
      v10 = 1.0;
      if (v9 <= 1.0)
      {
        v10 = (a3 - v7) / 3600.0;
      }

      v11 = v10 * 4.0 + 36.0;
      if (v9 > 0.0)
      {
        v12 = v11;
      }

      else
      {
        v12 = 36.0;
      }

      v13 = round(v12);
      if ((*&v13 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        __break(1u);
LABEL_22:
        __break(1u);
        goto LABEL_23;
      }

      if (v13 <= -9.22337204e18)
      {
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      if (v13 < 9.22337204e18)
      {
        return v13;
      }

      __break(1u);
    }

    v13 = a3 * a3 * (36.0 / (v7 * v7));
    if (COERCE__INT64(fabs(v13)) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v13 > -9.22337204e18)
      {
        if (v13 < 9.22337204e18)
        {
          return v13;
        }

LABEL_25:
        __break(1u);
        return result;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    goto LABEL_22;
  }

  return result;
}

uint64_t sub_269BD2C20(double a1)
{
  v1 = a1 / 1200.0;
  v2 = 1.0;
  if (v1 <= 1.0)
  {
    v2 = v1;
  }

  v3 = v2 * 5.0 + 0.0;
  if (v1 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = trunc(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BD2CA4(double a1)
{
  v1 = a1 / 1800.0;
  v2 = 1.0;
  if (v1 <= 1.0)
  {
    v2 = v1;
  }

  v3 = v2 * 5.0 + 0.0;
  if (v1 > 0.0)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0.0;
  }

  v5 = trunc(v4);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_11;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_269BD2D28(uint64_t result, char a2)
{
  if (a2)
  {
    return 30;
  }

  v2 = *&result;
  if (*&result <= -3600.0)
  {
    goto LABEL_15;
  }

  if (*&result <= 900.0)
  {
    return 30;
  }

  if (*&result > 1800.0)
  {
    v3 = (*&result + -1800.0) / 7200.0;
    v4 = 1.0;
    if (v3 <= 1.0)
    {
      v4 = (*&result + -1800.0) / 7200.0;
    }

    v5 = 27.0 - v4 * 27.0;
    if (v3 > 0.0)
    {
      v6 = v5;
    }

    else
    {
      v6 = 27.0;
    }

    v2 = round(v6);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_36;
    }

    if (v2 <= -9.22337204e18)
    {
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    __break(1u);
LABEL_15:
    v7 = (v2 + 3600.0) / -3600.0;
    v8 = 1.0;
    if (v7 <= 1.0)
    {
      v8 = v7;
    }

    v9 = v8 * -6.0 + 30.0;
    if (v7 > 0.0)
    {
      v10 = v9;
    }

    else
    {
      v10 = 30.0;
    }

    v2 = round(v10);
    if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v2 > -9.22337204e18)
      {
        if (v2 < 9.22337204e18)
        {
          return v2;
        }

        goto LABEL_35;
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
      goto LABEL_38;
    }

LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v11 = (*&result + -900.0) / 900.0;
  v12 = 1.0;
  if (v11 <= 1.0)
  {
    v12 = (*&result + -900.0) / 900.0;
  }

  v13 = v12 * -3.0 + 30.0;
  if (v11 > 0.0)
  {
    v14 = v13;
  }

  else
  {
    v14 = 30.0;
  }

  v2 = round(v14);
  if ((*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_37;
  }

  if (v2 > -9.22337204e18)
  {
    if (v2 < 9.22337204e18)
    {
      return v2;
    }

    __break(1u);
    goto LABEL_33;
  }

LABEL_39:
  __break(1u);
  return result;
}

unint64_t sub_269BD2F1C(unint64_t result)
{
  if (result < 3)
  {
    return 20;
  }

  if (result > 5)
  {
    v1 = (result - 5) / 10.0;
    v2 = 1.0;
    if (v1 <= 1.0)
    {
      v2 = (result - 5) / 10.0;
    }

    v3 = 18.0 - v2 * 18.0;
    if (v1 > 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 18.0;
    }

    v5 = round(v4);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 >= 9.22337204e18)
        {
          __break(1u);
          return 20;
        }

        return v5;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = (result - 2) / 3.0;
  v7 = 1.0;
  if (v6 <= 1.0)
  {
    v7 = (result - 2) / 3.0;
  }

  v8 = 20.0 - (v7 + v7);
  if (v6 > 0.0)
  {
    v9 = v8;
  }

  else
  {
    v9 = 20.0;
  }

  v5 = round(v9);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_269BD3028(double a1)
{
  if (a1 <= 600.0)
  {
    return 20;
  }

  if (a1 > 1200.0)
  {
    v1 = (a1 + -1200.0) / 4200.0;
    v2 = 1.0;
    if (v1 <= 1.0)
    {
      v2 = v1;
    }

    v3 = 18.0 - v2 * 18.0;
    if (v1 > 0.0)
    {
      v4 = v3;
    }

    else
    {
      v4 = 18.0;
    }

    v5 = round(v4);
    if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v5 > -9.22337204e18)
      {
        if (v5 >= 9.22337204e18)
        {
          __break(1u);
          return 20;
        }

        return v5;
      }

      goto LABEL_24;
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v7 = (a1 + -600.0) / 600.0;
  v8 = 1.0;
  if (v7 <= 1.0)
  {
    v8 = v7;
  }

  v9 = 20.0 - (v8 + v8);
  if (v7 > 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 20.0;
  }

  v5 = round(v10);
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v5 < 9.22337204e18)
  {
    return v5;
  }

LABEL_26:
  __break(1u);
  return result;
}

void sub_269BD3170(uint64_t a1)
{
  if (!qword_280B61698[0])
  {
    type metadata accessor for SleepScoreMetricsDaySummary.Metrics(255);
    v1 = sub_269BF89A8();
    if (!v2)
    {
      atomic_store(v1, qword_280B61698);
    }
  }
}

uint64_t sub_269BD31C8(uint64_t a1, uint64_t a2)
{
  sub_269BD3170(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BD322C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BD3290(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t type metadata accessor for SleepScoreMetricsDaySummaryBuilder(uint64_t a1)
{
  result = qword_280B614C0;
  if (!qword_280B614C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_269BD3364(uint64_t a1)
{
  sub_269BD8044(319, &unk_280B61420, MEMORY[0x277CCB6A8]);
  if (v1 <= 0x3F)
  {
    sub_269BD8168(319, &qword_28034A4B0, &type metadata for SleepScoreMetricsDaySummaryBuilder.SleepStart, MEMORY[0x277D83940]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_269BD3444(uint64_t a1, unsigned int a2)
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

uint64_t sub_269BD34A0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_269BD3504(double a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_269BF8538();
  result = sub_269BF8538();
  v6 = v4 - result;
  if (__OFSUB__(v4, result))
  {
    __break(1u);
  }

  else
  {
    if ((v6 & 0x8000000000000000) == 0)
    {
      return v6 < a1;
    }

    v7 = __OFSUB__(0, v6);
    v6 = result - v4;
    if (!v7)
    {
      return v6 < a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_269BD3590(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v39 = sub_269BF8558();
  v7 = MEMORY[0x28223BE20](v39);
  v36 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x28223BE20](v7);
  v38 = &v28 - v11;
  v35 = *(a3 + 16);
  if (v35)
  {
    v12 = 0;
    v32 = (v10 + 8);
    v33 = (v10 + 32);
    v34 = v10 + 16;
    v37 = MEMORY[0x277D84F90];
    v30 = a2;
    v31 = a3;
    v29 = a1;
    while (v12 < *(a3 + 16))
    {
      v13 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v14 = *(v10 + 72);
      v15 = a3;
      v16 = a3 + v13 + v14 * v12;
      v17 = v10;
      v18 = a1;
      v19 = v38;
      (*(v10 + 16))(v38, v16, v39);
      v20 = v19;
      a1 = v18;
      v21 = v18(v20);
      if (v3)
      {
        (*v32)(v38, v39);
        v27 = v37;

        return v27;
      }

      if (v21)
      {
        v22 = *v33;
        (*v33)(v36, v38, v39);
        v23 = v37;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = v23;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_269BF2AC8(0, *(v23 + 16) + 1, 1);
          v23 = v40;
        }

        v26 = *(v23 + 16);
        v25 = *(v23 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_269BF2AC8((v25 > 1), v26 + 1, 1);
          v23 = v40;
        }

        *(v23 + 16) = v26 + 1;
        v37 = v23;
        result = (v22)(v23 + v13 + v26 * v14, v36, v39);
        a3 = v31;
        a1 = v29;
      }

      else
      {
        result = (*v32)(v38, v39);
        a3 = v15;
      }

      ++v12;
      v10 = v17;
      if (v35 == v12)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
    v37 = MEMORY[0x277D84F90];
LABEL_14:

    return v37;
  }

  return result;
}

uint64_t sub_269BD3860(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_269BF8538();
  result = sub_269BF8538();
  v5 = v3 - result;
  if (__OFSUB__(v3, result))
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v5 < 0)
  {
    v6 = __OFSUB__(0, v5);
    v5 = result - v3;
    if (v6)
    {
      goto LABEL_15;
    }
  }

  v7 = sub_269BF8528();
  v9 = v8;
  v10 = sub_269BF8538();
  result = sub_269BF8538();
  v11 = v10 - result;
  if (__OFSUB__(v10, result))
  {
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  if (v11 < 0)
  {
    v6 = __OFSUB__(0, v11);
    v11 = result - v10;
    if (v6)
    {
      goto LABEL_16;
    }
  }

  v12 = sub_269BF8528();
  if (v5 == v11)
  {
    if (v7 == v12 && v9 == v13)
    {

      return 0;
    }

    else
    {
      v14 = sub_269BF8BB8();

      return v14 & 1;
    }
  }

  else
  {

    return v5 < v11;
  }
}

uint64_t sub_269BD39BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = *(v4 + *(type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0) + 24));
  v10 = sub_269BE5F54(MEMORY[0x277D84F90]);
  v11 = 0;
  v12 = *(v9 + 16);
  v13 = v9 + 24;
LABEL_2:
  v14 = v13 + 32 * v11;
  while (v12 != v11)
  {
    if (v11 >= *(v9 + 16))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      result = sub_269BF8BF8();
      __break(1u);
      return result;
    }

    ++v11;
    v15 = (v14 + 32);
    v16 = *(v14 + 16);
    v14 += 32;
    if ((v16 & 1) == 0)
    {
      v61 = v13;
      v62 = a1;
      v64 = a3;
      v65 = a4;
      v17 = *(v15 - 3);
      v63 = a2;
      if (*v15)
      {
        a1 = *(v15 - 1);
        a2 = *v15;
      }

      else
      {
        if (qword_28034A4D0 != -1)
        {
          swift_once();
        }

        v18 = sub_269BF8588();
        __swift_project_value_buffer(v18, qword_28034CE20);
        v19 = sub_269BF8568();
        v20 = sub_269BF8948();
        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v22 = swift_slowAlloc();
          v66 = v22;
          *v21 = 136446210;
          *(v21 + 4) = sub_269BD5228(0xD000000000000022, 0x8000000269BF9A50, &v66);
          _os_log_impl(&dword_269BCF000, v19, v20, "[%{public}s] Unexpectedly didn't find a time zone. Query may have been incorrectly configured.", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v22);
          MEMORY[0x26D64CB60](v22, -1, -1);
          MEMORY[0x26D64CB60](v21, -1, -1);
        }
      }

      swift_bridgeObjectRetain_n();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = v10;
      v24 = a1;
      v26 = sub_269BE5A70(a1, a2);
      v27 = v10[2];
      v28 = (v25 & 1) == 0;
      v29 = v27 + v28;
      if (__OFADD__(v27, v28))
      {
        goto LABEL_45;
      }

      v30 = v25;
      if (v10[3] >= v29)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v25 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_269BD736C();
          v10 = v66;
          if ((v30 & 1) == 0)
          {
            goto LABEL_22;
          }
        }

LABEL_20:

        goto LABEL_24;
      }

      sub_269BD70D0(v29, isUniquelyReferenced_nonNull_native);
      v10 = v66;
      v31 = sub_269BE5A70(v24, a2);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_47;
      }

      v26 = v31;
      if (v30)
      {
        goto LABEL_20;
      }

LABEL_22:
      v10[(v26 >> 6) + 8] |= 1 << v26;
      v33 = (v10[6] + 16 * v26);
      *v33 = v24;
      v33[1] = a2;
      *(v10[7] + 8 * v26) = MEMORY[0x277D84F90];
      v34 = v10[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_46;
      }

      v10[2] = v36;
LABEL_24:
      v37 = v10[7];
      v38 = *(v37 + 8 * v26);
      v39 = swift_isUniquelyReferenced_nonNull_native();
      *(v37 + 8 * v26) = v38;
      if ((v39 & 1) == 0)
      {
        v38 = sub_269BF245C(0, *(v38 + 2) + 1, 1, v38);
        *(v37 + 8 * v26) = v38;
      }

      v41 = *(v38 + 2);
      v40 = *(v38 + 3);
      if (v41 >= v40 >> 1)
      {
        *(v37 + 8 * v26) = sub_269BF245C((v40 > 1), v41 + 1, 1, v38);
      }

      v42 = *(v37 + 8 * v26);
      *(v42 + 16) = v41 + 1;
      *(v42 + 8 * v41 + 32) = v17;
      a3 = v64;
      a4 = v65;
      a1 = v62;
      a2 = v63;
      v13 = v61;
      goto LABEL_2;
    }
  }

  v43 = sub_269BD74D0(a1, a2, a3, v10, 10800.0);
  v44 = *(v43 + 16);
  if (!v44)
  {

    v49 = v10[2];

    v50 = sub_269BF8458();
    v51 = *(*(v50 - 8) + 56);
    v52 = a4;
    if (v49)
    {
      v53 = 2;
    }

    else
    {
      v53 = 1;
    }

    goto LABEL_40;
  }

  v45 = v43;

  if (v44 > 3)
  {
    v46 = v44 & 0x7FFFFFFFFFFFFFFCLL;
    v48 = v45;
    v54 = (v45 + 48);
    v47 = 0.0;
    v55 = v44 & 0x7FFFFFFFFFFFFFFCLL;
    do
    {
      v47 = v47 + *(v54 - 2) + *(v54 - 1) + *v54 + v54[1];
      v54 += 4;
      v55 -= 4;
    }

    while (v55);
    if (v44 == v46)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v46 = 0;
    v47 = 0.0;
    v48 = v45;
  }

  v56 = v44 - v46;
  v57 = (v48 + 8 * v46 + 32);
  do
  {
    v58 = *v57++;
    v47 = v47 + v58;
    --v56;
  }

  while (v56);
LABEL_39:

  sub_269BF8428();
  v59 = sub_269BF8458();
  v51 = *(*(v59 - 8) + 56);
  v50 = v59;
  v52 = a4;
  v53 = 0;
LABEL_40:

  return v51(v52, v53, 2, v50);
}

uint64_t sub_269BD3ED0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v152 = a2;
  v140 = sub_269BF8508();
  v139 = *(v140 - 8);
  MEMORY[0x28223BE20](v140);
  v148 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v151 = &v130 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v137 = sub_269BF8558();
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v135 = &v130 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = sub_269BF82A8();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v142 = &v130 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BD8044(0, &qword_280B61578, MEMORY[0x277CC9578]);
  MEMORY[0x28223BE20](v9 - 8);
  v156 = &v130 - v10;
  v11 = sub_269BF8458();
  v12 = *(v11 - 8);
  v154 = v11;
  v155 = v12;
  v13 = MEMORY[0x28223BE20](v11);
  v141 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v146 = &v130 - v15;
  sub_269BD8044(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v138 = &v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v159 = (&v130 - v19);
  v20 = MEMORY[0x277CCB6A8];
  sub_269BD8044(0, &unk_280B61420, MEMORY[0x277CCB6A8]);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v150 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v130 - v24;
  v26 = sub_269BF8688();
  v27 = *(v26 - 1);
  v28 = MEMORY[0x28223BE20](v26);
  v147 = &v130 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x28223BE20](v28);
  v32 = &v130 - v31;
  v33 = MEMORY[0x28223BE20](v30);
  v35 = &v130 - v34;
  v36 = MEMORY[0x28223BE20](v33);
  v38 = &v130 - v37;
  MEMORY[0x28223BE20](v36);
  v40 = &v130 - v39;
  v160 = a1;
  [a1 morningIndex];
  sub_269BF8638();
  v41 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  v149 = *(v41 + 20);
  v42 = v20;
  v43 = v27;
  sub_269BD7D80(v161 + v149, v25, &unk_280B61420, v42);
  v44 = (*(v27 + 48))(v25, 1, v26);
  v158 = v26;
  if (v44 == 1)
  {
    sub_269BD51CC(v25, &unk_280B61420, MEMORY[0x277CCB6A8]);
  }

  else
  {
    (*(v27 + 32))(v38, v25, v26);
    sub_269BF8638();
    sub_269BF8648();
    v45 = v27;
    v46 = (v27 + 8);
    v47 = *(v27 + 8);
    v47(v32, v26);
    sub_269BD7F8C();
    v27 = sub_269BF8718();
    v47(v35, v26);
    v47(v38, v26);
    v43 = v45;
    if ((v27 & 1) == 0)
    {
      __break(1u);
      goto LABEL_45;
    }
  }

  v48 = *(v41 + 24);
  v46 = v161;
  v35 = *(v161 + v48);
  v49 = *v161;
  if (*v161 < *(v35 + 2))
  {
    __break(1u);
  }

  else
  {
    v50 = [v160 summaryFilteredWithOptions:5 strategyType:2];
    v157 = v40;
    if (!v50)
    {
      goto LABEL_30;
    }

    v26 = v50;
    v51 = [v50 periods];
    sub_269BD7EBC();
    v38 = sub_269BF8898();

    if (!(v38 >> 62))
    {
      if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_8;
      }

LABEL_29:

LABEL_30:
      v96 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
      v97 = *(*(v96 - 8) + 56);
      LODWORD(v146) = 1;
      v97(v159, 1, 1, v96);
      v153 = 0;
      v95 = 0;
      v2 = 0;
      v94 = v160;
      if (*(v35 + 2) == v49)
      {
        goto LABEL_31;
      }

LABEL_41:
      v156 = v95;
      v41 = v48;
      v125 = type metadata accessor for SleepScoreMetricsDaySummary(0);
      (*(*(v125 - 8) + 56))(v152, 1, 1, v125);
      [v94 morningIndex];
      v126 = v150;
      sub_269BF8638();
      v32 = v158;
      v43[7](v126, 0, 1, v158);
      sub_269BD7E50(v126, v46 + v149, &unk_280B61420, MEMORY[0x277CCB6A8]);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_42;
      }

      goto LABEL_46;
    }
  }

  if (!sub_269BF8AD8())
  {
    goto LABEL_29;
  }

LABEL_8:
  v145 = v43;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v53 = MEMORY[0x26D64C2D0](0, v38);
    v52 = v156;
  }

  else
  {
    v52 = v156;
    if (!*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_49:
      swift_once();
      goto LABEL_16;
    }

    v53 = *(v38 + 32);
  }

  v43 = [v26 durationsForStrategyType_];

  sub_269BEA444(v52);
  v55 = v154;
  v54 = v155;
  if ((*(v155 + 48))(v52, 1, v154) == 1)
  {

    sub_269BD51CC(v52, &qword_280B61578, MEMORY[0x277CC9578]);
    v46 = v161;
    v43 = v145;
    goto LABEL_30;
  }

  (*(v54 + 32))(v146, v52, v55);
  v56 = [v53 timezoneName];
  v27 = v160;
  v133 = v53;
  if (v56)
  {

    goto LABEL_19;
  }

  if (qword_28034A4D0 != -1)
  {
    goto LABEL_49;
  }

LABEL_16:
  v57 = sub_269BF8588();
  __swift_project_value_buffer(v57, qword_28034CE20);
  v58 = sub_269BF8568();
  v59 = sub_269BF8948();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = v27;
    v62 = v48;
    v63 = swift_slowAlloc();
    v162 = v63;
    *v60 = 136446210;
    *(v60 + 4) = sub_269BD5228(0xD000000000000022, 0x8000000269BF9A50, &v162);
    _os_log_impl(&dword_269BCF000, v58, v59, "[%{public}s] Unexpectedly didn't find a time zone. Query may have been incorrectly configured.", v60, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v63);
    v64 = v63;
    v48 = v62;
    v27 = v61;
    MEMORY[0x26D64CB60](v64, -1, -1);
    MEMORY[0x26D64CB60](v60, -1, -1);
  }

  v55 = v154;
LABEL_19:
  v65 = [v27 dateInterval];
  v66 = v142;
  sub_269BF8278();

  v67 = v141;
  sub_269BF8288();
  (*(v143 + 8))(v66, v144);
  sub_269BF8418();
  v2 = v68;
  v132 = *(v155 + 8);
  v132(v67, v55);
  v69 = v133;
  v70 = [v133 timezoneName];
  v134 = v48;
  if (v70)
  {
    v71 = v70;
    v153 = sub_269BF87E8();
    v156 = v72;
  }

  else
  {
    v153 = 0;
    v156 = 0;
  }

  v73 = [v160 durationsForStrategyType_];
  [v73 sleepDuration];
  v75 = v74;

  v131 = sub_269BEA6F4(0.0);
  [v43 awakeDuration];
  v77 = v76;
  v78 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v79 = v159;
  v80 = v69;
  v81 = v146;
  (*(v155 + 16))(v159 + v78[7], v146, v55);
  [v43 deepSleepDuration];
  v83 = v82;
  [v43 remSleepDuration];
  v85 = v84;
  [v43 coreSleepDuration];
  v87 = v86;
  [v43 remSleepDuration];
  v89 = v87 + v88;
  [v43 deepSleepDuration];
  v91 = v90;

  v132(v81, v154);
  *v79 = v75;
  v79[1] = v131;
  v79[2] = v77;
  *(v79 + v78[8]) = v83;
  *(v79 + v78[9]) = v85;
  *(v79 + v78[10]) = v89 + v91;
  (*(*(v78 - 1) + 56))(v79, 0, 1, v78);
  if (*(v35 + 2) != v49)
  {
    LODWORD(v146) = 0;
    v94 = v160;
    v46 = v161;
    v43 = v145;
    v48 = v134;
    v95 = v156;
    goto LABEL_41;
  }

  v46 = v161;
  v43 = v145;
  v48 = v134;
  v92 = v156;
  if (v156)
  {
    LODWORD(v146) = 0;
    v32 = v153;
    v93 = v156;
    v94 = v160;
    goto LABEL_32;
  }

  LODWORD(v146) = 0;
  v94 = v160;
LABEL_31:
  v98 = v135;
  sub_269BF8548();
  v32 = sub_269BF8528();
  v93 = v99;
  (*(v136 + 8))(v98, v137);
  v92 = 0;
LABEL_32:
  v156 = v92;

  v100 = [v94 dateInterval];
  v101 = v142;
  sub_269BF8278();

  v41 = v141;
  sub_269BF8288();
  (*(v143 + 8))(v101, v144);
  sub_269BD39BC(v32, v93, v41, v151);

  (*(v155 + 8))(v41, v154);
  if (!*(v35 + 2))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    v35 = sub_269BF2578(0, *(v35 + 2) + 1, 1, v35);
LABEL_42:
    v124 = v157;
    v122 = *(v35 + 2);
    v121 = *(v35 + 3);
    v123 = v122 + 1;
    v120 = v41;
    if (v122 < v121 >> 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  sub_269BD7CC0(0, 1);
  v145 = v43;
  (v43[2])(v147, v157, v158);
  v102 = [v94 calendar];
  sub_269BF84F8();

  v103 = [v94 sleepDurationGoal];
  v104 = 0;
  v105 = 0;
  if (v103)
  {
    v106 = [objc_opt_self() secondUnit];
    [v103 doubleValueForUnit_];
    v105 = v107;
  }

  v134 = v48;
  v108 = [v94 minimumRecommendedSleepDurationGoal];
  if (v108)
  {
    v109 = [objc_opt_self() secondUnit];
    [v108 doubleValueForUnit_];
    v104 = v110;
  }

  LODWORD(v155) = v108 == 0;
  v111 = v103 == 0;
  v112 = v138;
  sub_269BD7D80(v159, v138, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v113 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v114 = v152;
  v115 = v152 + v113[6];
  v116 = v152 + v113[7];
  v117 = v113[9];
  v118 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  (*(*(v118 - 8) + 56))(v114 + v117, 1, 1, v118);
  v43 = v145;
  v32 = v158;
  (v145[4])(v114, v147, v158);
  (*(v139 + 32))(v114 + v113[5], v148, v140);
  *v115 = v105;
  *(v115 + 8) = v111;
  *v116 = v104;
  *(v116 + 8) = v155;
  sub_269BD7DEC(v151, v114 + v113[8]);
  sub_269BD7E50(v112, v114 + v117, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  (*(*(v113 - 1) + 56))(v114, 0, 1, v113);
  [v160 morningIndex];
  v119 = v150;
  sub_269BF8638();
  v43[7](v119, 0, 1, v32);
  v46 = v161;
  sub_269BD7E50(v119, v161 + v149, &unk_280B61420, MEMORY[0x277CCB6A8]);
  v120 = v134;
  v35 = *(v46 + v134);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_269BF2578(0, *(v35 + 2) + 1, 1, v35);
  }

  v122 = *(v35 + 2);
  v121 = *(v35 + 3);
  v123 = v122 + 1;
  v124 = v157;
  if (v122 >= v121 >> 1)
  {
LABEL_40:
    v35 = sub_269BF2578((v121 > 1), v123, 1, v35);
  }

LABEL_43:
  sub_269BD51CC(v159, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  result = (v43[1])(v124, v32);
  *(v35 + 2) = v123;
  v128 = &v35[32 * v122];
  *(v128 + 4) = v2;
  v128[40] = v146;
  v129 = v156;
  *(v128 + 6) = v153;
  *(v128 + 7) = v129;
  *(v46 + v120) = v35;
  return result;
}

uint64_t sub_269BD51CC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269BD8044(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

unint64_t sub_269BD5228(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_269BD52F4(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_269BD7FE4(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_269BD52F4(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_269BD5400(a5, a6);
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
    result = sub_269BF8AB8();
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

void *sub_269BD5400(uint64_t a1, unint64_t a2)
{
  v3 = sub_269BD544C(a1, a2);
  sub_269BD557C(&unk_287A95D90);
  return v3;
}

void *sub_269BD544C(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_269BD5668(v5, 0);
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

  result = sub_269BF8AB8();
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
        v10 = sub_269BF8848();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_269BD5668(v10, 0);
        result = sub_269BF8A78();
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

uint64_t sub_269BD557C(uint64_t result)
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

  result = sub_269BD56F4(result, v11, 1, v3);
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

void *sub_269BD5668(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  sub_269BD8168(0, &qword_28034A710, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_269BD56F4(char *result, int64_t a2, char a3, char *a4)
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
    sub_269BD8168(0, &qword_28034A710, MEMORY[0x277D84B78], MEMORY[0x277D84560]);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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

uint64_t sub_269BD5800(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  sub_269BF8558();
  v5 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v5 = sub_269BF0788(v5);
  }

  result = sub_269BD58C0(a1, a2);
  *v2 = v5;
  return result;
}

uint64_t sub_269BD58C0(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = sub_269BF8B78();
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_269BF8558();
        v9 = sub_269BF88A8();
        *(v9 + 16) = v8;
      }

      v10 = *(sub_269BF8558() - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_269BD5CE8(v11, v12, v2, a1, a2, v7);
      *(v9 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_269BD59FC(0, v5, 1, a1, a2);
  }

  return result;
}

uint64_t sub_269BD59FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *), uint64_t a5)
{
  v7 = v6;
  v52 = a5;
  v53 = a4;
  v11 = sub_269BF8558();
  v12 = MEMORY[0x28223BE20](v11);
  v47 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v54 = &v38 - v15;
  result = MEMORY[0x28223BE20](v14);
  v39 = a2;
  if (a3 != a2)
  {
    v50 = &v38 - v17;
    v19 = *v5;
    v21 = *(v18 + 16);
    v20 = v18 + 16;
    v22 = *(v20 + 56);
    v48 = v21;
    v49 = (v20 - 8);
    v51 = v20;
    v45 = (v20 + 16);
    v46 = v19;
    v23 = v19 + v22 * (a3 - 1);
    v44 = -v22;
    v24 = a1 - a3;
    v38 = v22;
    v25 = v19 + v22 * a3;
    v26 = v54;
    while (2)
    {
      v42 = v23;
      v43 = a3;
      v40 = v25;
      v41 = v24;
      v27 = v23;
      while (1)
      {
        v28 = v50;
        v29 = v48;
        v48(v50, v25, v11);
        v29(v26, v27, v11);
        v30 = v53(v28, v26);
        if (v7)
        {
          v37 = *v49;
          (*v49)(v26, v11);
          return (v37)(v28, v11);
        }

        v31 = v30;
        v32 = v26;
        v33 = *v49;
        (*v49)(v32, v11);
        result = (v33)(v28, v11);
        if ((v31 & 1) == 0)
        {
          break;
        }

        if (!v46)
        {
          __break(1u);
          return result;
        }

        v34 = *v45;
        v35 = v47;
        (*v45)(v47, v25, v11);
        swift_arrayInitWithTakeFrontToBack();
        result = (v34)(v27, v35, v11);
        v27 += v44;
        v25 += v44;
        v36 = __CFADD__(v24++, 1);
        v26 = v54;
        v7 = 0;
        if (v36)
        {
          goto LABEL_11;
        }
      }

      v26 = v54;
      v7 = 0;
LABEL_11:
      a3 = v43 + 1;
      v23 = v42 + v38;
      v24 = v41 - 1;
      v25 = v40 + v38;
      if (v43 + 1 != v39)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

uint64_t sub_269BD5CE8(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v141 = a1;
  v162 = sub_269BF8558();
  v12 = MEMORY[0x28223BE20](v162);
  v145 = &v133 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v148 = &v133 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v17 = MEMORY[0x28223BE20](v16);
  v18 = MEMORY[0x28223BE20](v17);
  v20 = &v133 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v139 = &v133 - v22;
  MEMORY[0x28223BE20](v21);
  result = MEMORY[0x28223BE20](&v133 - v23);
  v160 = v26;
  v161 = a3;
  v29 = a3[1];
  if (v29 < 1)
  {
    v31 = MEMORY[0x277D84F90];
    v32 = a4;
LABEL_104:
    a4 = *v141;
    if (*v141)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_138;
      }

      goto LABEL_106;
    }

    goto LABEL_147;
  }

  v140 = &v133 - v25;
  v138 = result;
  v150 = v20;
  v146 = v28;
  v147 = v27;
  v136 = a6;
  v30 = 0;
  v158 = (v26 + 8);
  v159 = v26 + 16;
  v154 = (v26 + 32);
  v31 = MEMORY[0x277D84F90];
  v155 = a5;
  v32 = a4;
  v157 = a4;
  while (1)
  {
    v33 = v30;
    v142 = v31;
    if ((v30 + 1) < v29)
    {
      v143 = v30;
      v144 = v29;
      v34 = *v161;
      v35 = *(v160 + 72);
      a4 = *v161 + v35 * (v30 + 1);
      v36 = *(v160 + 16);
      v37 = v162;
      v36(v140, a4, v162);
      v156 = v35;
      v137 = v34;
      v38 = v34 + v35 * v143;
      v39 = v138;
      v151 = v36;
      v36(v138, v38, v37);
      v40 = v140;
      LODWORD(v153) = v32(v140, v39);
      if (v7)
      {
        v132 = *v158;
        (*v158)(v39, v37);
        v132(v40, v37);
      }

      v163 = 0;
      v41 = *v158;
      (*v158)(v39, v37);
      v149 = v41;
      result = (v41)(v40, v37);
      v135 = v144 - 1;
      v152 = v144 - 2;
      v42 = v143;
      a5 = v155;
      v43 = v156;
      v44 = v137 + v156 * (v143 + 2);
      v45 = v139;
      while (v152 != v42)
      {
        v46 = v162;
        v47 = v151;
        (v151)(v45, v44, v162);
        v48 = a5;
        v49 = v150;
        (v47)(v150, a4, v46);
        v50 = v48;
        v51 = v163;
        v52 = v157(v45, v49);
        v163 = v51;
        if (v51)
        {
          v130 = v149;
          (v149)(v49, v46);
          v130(v45, v46);
        }

        v53 = v52;
        v54 = v149;
        (v149)(v49, v46);
        result = v54(v45, v46);
        ++v42;
        v43 = v156;
        v44 += v156;
        a4 += v156;
        a5 = v50;
        if ((v153 ^ v53))
        {
          v55 = v42 + 1;
          goto LABEL_12;
        }
      }

      v42 = v135;
      v55 = v144;
LABEL_12:
      v33 = v143;
      if (v153)
      {
        if (v55 < v143)
        {
          goto LABEL_141;
        }

        v31 = v162;
        if (v143 <= v42)
        {
          a4 = v43 * (v55 - 1);
          v56 = v55;
          v57 = v55 * v43;
          v144 = v56;
          v58 = v56;
          v59 = v143;
          v60 = v143 * v43;
          do
          {
            if (v59 != --v58)
            {
              v62 = *v161;
              if (!*v161)
              {
                goto LABEL_145;
              }

              v63 = *v154;
              (*v154)(v145, v62 + v60, v162);
              if (v60 < a4 || v62 + v60 >= (v62 + v57))
              {
                v61 = v162;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v61 = v162;
                if (v60 != a4)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              result = (v63)(v62 + a4, v145, v61);
              a5 = v155;
              v43 = v156;
              v31 = v61;
            }

            ++v59;
            a4 -= v43;
            v57 -= v43;
            v60 += v43;
          }

          while (v59 < v58);
          v7 = v163;
          v32 = v157;
          v33 = v143;
          v55 = v144;
        }

        else
        {
          v7 = v163;
          v32 = v157;
        }
      }

      else
      {
        v31 = v162;
        v7 = v163;
        v32 = v157;
      }
    }

    else
    {
      v55 = (v30 + 1);
      v31 = v162;
    }

    v64 = v161[1];
    if (v55 < v64)
    {
      if (__OFSUB__(v55, v33))
      {
        goto LABEL_137;
      }

      if (v55 - v33 < v136)
      {
        if (__OFADD__(v33, v136))
        {
          __break(1u);
        }

        else
        {
          v144 = v55;
          if (&v33[v136] >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = &v33[v136];
          }

          if (v65 >= v33)
          {
            if (v144 == v65)
            {
              v55 = v144;
              goto LABEL_38;
            }

            v163 = v7;
            v112 = *v161;
            v113 = *(v160 + 72);
            v156 = *(v160 + 16);
            v114 = (v112 + v113 * (v144 - 1));
            v152 = -v113;
            v153 = v112;
            v143 = v33;
            v115 = &v33[-v144];
            v134 = v113;
            a4 = v112 + v144 * v113;
            v151 = v65;
            while (1)
            {
              v135 = a4;
              v137 = v115;
              v149 = v114;
              while (1)
              {
                v116 = v146;
                v117 = v156;
                (v156)(v146, a4, v31);
                v118 = v147;
                v117(v147, v114, v31);
                v119 = v163;
                v120 = v157(v116, v118);
                v163 = v119;
                if (v119)
                {
                  v131 = *v158;
                  (*v158)(v118, v31);
                  v131(v116, v31);
                }

                v121 = v120;
                v122 = *v158;
                (*v158)(v118, v31);
                result = (v122)(v116, v31);
                if ((v121 & 1) == 0)
                {
                  break;
                }

                if (!v153)
                {
                  goto LABEL_143;
                }

                v123 = *v154;
                v124 = v148;
                v31 = v162;
                (*v154)(v148, a4, v162);
                swift_arrayInitWithTakeFrontToBack();
                v123(v114, v124, v31);
                v114 += v152;
                a4 += v152;
                v125 = __CFADD__(v115++, 1);
                a5 = v155;
                if (v125)
                {
                  goto LABEL_101;
                }
              }

              a5 = v155;
              v31 = v162;
LABEL_101:
              v114 = &v149[v134];
              v115 = (v137 - 1);
              a4 = v135 + v134;
              v55 = v151;
              if (++v144 == v151)
              {
                v32 = v157;
                v7 = v163;
                v33 = v143;
                goto LABEL_38;
              }
            }
          }
        }

        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        goto LABEL_144;
      }
    }

LABEL_38:
    v31 = v142;
    if (v55 < v33)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    a4 = v32;
    if ((result & 1) == 0)
    {
      result = sub_269BF2314(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v67 = *(v31 + 2);
    v66 = *(v31 + 3);
    v68 = v67 + 1;
    if (v67 >= v66 >> 1)
    {
      result = sub_269BF2314((v66 > 1), v67 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v68;
    v69 = &v31[16 * v67];
    *(v69 + 4) = v33;
    *(v69 + 5) = v55;
    v151 = v55;
    v70 = *v141;
    if (!*v141)
    {
      goto LABEL_146;
    }

    if (v67)
    {
      break;
    }

    a5 = v155;
    v32 = a4;
LABEL_90:
    v29 = v161[1];
    v30 = v151;
    if (v151 >= v29)
    {
      goto LABEL_104;
    }
  }

  a5 = v155;
  v32 = a4;
  while (1)
  {
    a4 = v68 - 1;
    if (v68 >= 4)
    {
      v75 = &v31[16 * v68 + 32];
      v76 = *(v75 - 64);
      v77 = *(v75 - 56);
      v81 = __OFSUB__(v77, v76);
      v78 = v77 - v76;
      if (v81)
      {
        goto LABEL_123;
      }

      v80 = *(v75 - 48);
      v79 = *(v75 - 40);
      v81 = __OFSUB__(v79, v80);
      v73 = v79 - v80;
      v74 = v81;
      if (v81)
      {
        goto LABEL_124;
      }

      v82 = &v31[16 * v68];
      v84 = *v82;
      v83 = *(v82 + 1);
      v81 = __OFSUB__(v83, v84);
      v85 = v83 - v84;
      if (v81)
      {
        goto LABEL_126;
      }

      v81 = __OFADD__(v73, v85);
      v86 = v73 + v85;
      if (v81)
      {
        goto LABEL_129;
      }

      if (v86 >= v78)
      {
        v104 = &v31[16 * a4 + 32];
        v106 = *v104;
        v105 = *(v104 + 1);
        v81 = __OFSUB__(v105, v106);
        v107 = v105 - v106;
        if (v81)
        {
          goto LABEL_135;
        }

        if (v73 < v107)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

    if (v68 == 3)
    {
      v71 = *(v31 + 4);
      v72 = *(v31 + 5);
      v81 = __OFSUB__(v72, v71);
      v73 = v72 - v71;
      v74 = v81;
LABEL_59:
      if (v74)
      {
        goto LABEL_125;
      }

      v87 = &v31[16 * v68];
      v89 = *v87;
      v88 = *(v87 + 1);
      v90 = __OFSUB__(v88, v89);
      v91 = v88 - v89;
      v92 = v90;
      if (v90)
      {
        goto LABEL_128;
      }

      v93 = &v31[16 * a4 + 32];
      v95 = *v93;
      v94 = *(v93 + 1);
      v81 = __OFSUB__(v94, v95);
      v96 = v94 - v95;
      if (v81)
      {
        goto LABEL_131;
      }

      if (__OFADD__(v91, v96))
      {
        goto LABEL_132;
      }

      if (v91 + v96 >= v73)
      {
        if (v73 < v96)
        {
          a4 = v68 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_73;
    }

    v97 = &v31[16 * v68];
    v99 = *v97;
    v98 = *(v97 + 1);
    v81 = __OFSUB__(v98, v99);
    v91 = v98 - v99;
    v92 = v81;
LABEL_73:
    if (v92)
    {
      goto LABEL_127;
    }

    v100 = &v31[16 * a4];
    v102 = *(v100 + 4);
    v101 = *(v100 + 5);
    v81 = __OFSUB__(v101, v102);
    v103 = v101 - v102;
    if (v81)
    {
      goto LABEL_130;
    }

    if (v103 < v91)
    {
      goto LABEL_90;
    }

LABEL_80:
    v108 = a4 - 1;
    if (a4 - 1 >= v68)
    {
      break;
    }

    if (!*v161)
    {
      goto LABEL_142;
    }

    v109 = *&v31[16 * v108 + 32];
    v110 = *&v31[16 * a4 + 40];
    sub_269BD68F4((*v161 + *(v160 + 72) * v109), (*v161 + *(v160 + 72) * *&v31[16 * a4 + 32]), (*v161 + *(v160 + 72) * v110), v70, v32, a5);
    if (v7)
    {
    }

    if (v110 < v109)
    {
      goto LABEL_121;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_269BF064C(v31);
    }

    if (v108 >= *(v31 + 2))
    {
      goto LABEL_122;
    }

    v111 = &v31[16 * v108];
    *(v111 + 4) = v109;
    *(v111 + 5) = v110;
    v164 = v31;
    result = sub_269BF05C0(a4);
    v31 = v164;
    v68 = *(v164 + 2);
    if (v68 <= 1)
    {
      goto LABEL_90;
    }
  }

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
LABEL_134:
  __break(1u);
LABEL_135:
  __break(1u);
LABEL_136:
  __break(1u);
LABEL_137:
  __break(1u);
LABEL_138:
  result = sub_269BF064C(v31);
  v31 = result;
LABEL_106:
  v164 = v31;
  v126 = *(v31 + 2);
  if (v126 < 2)
  {
  }

  while (*v161)
  {
    v127 = *&v31[16 * v126];
    v128 = *&v31[16 * v126 + 24];
    sub_269BD68F4((*v161 + *(v160 + 72) * v127), (*v161 + *(v160 + 72) * *&v31[16 * v126 + 16]), (*v161 + *(v160 + 72) * v128), a4, v32, a5);
    if (v7)
    {
    }

    if (v128 < v127)
    {
      goto LABEL_133;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_269BF064C(v31);
    }

    if (v126 - 2 >= *(v31 + 2))
    {
      goto LABEL_134;
    }

    v129 = &v31[16 * v126];
    *v129 = v127;
    *(v129 + 1) = v128;
    v164 = v31;
    result = sub_269BF05C0(v126 - 1);
    v31 = v164;
    v126 = *(v164 + 2);
    if (v126 <= 1)
    {
    }
  }

LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_269BD68F4(char *a1, char *a2, char *a3, char *a4, uint64_t (*a5)(char *, uint64_t), uint64_t a6)
{
  v78 = a6;
  v79 = a5;
  v77 = sub_269BF8558();
  v11 = *(v77 - 8);
  v12 = MEMORY[0x28223BE20](v77);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v69 - v17;
  result = MEMORY[0x28223BE20](v16);
  v23 = *(v22 + 72);
  if (!v23)
  {
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v24 = &v69 - v20;
  if (a2 - a1 == 0x8000000000000000 && v23 == -1)
  {
    goto LABEL_67;
  }

  v25 = a3 - a2;
  if (a3 - a2 != 0x8000000000000000 || v23 != -1)
  {
    v26 = (a2 - a1) / v23;
    v85 = a1;
    v84 = a4;
    v80 = v23;
    if (v26 < v25 / v23)
    {
      v27 = v26 * v23;
      if (a4 < a1 || &a1[v27] <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }

      v76 = &a4[v27];
      v83 = &a4[v27];
      if (v27 >= 1 && a2 < a3)
      {
        v53 = *(v11 + 16);
        v74 = v18;
        v75 = v11 + 16;
        v72 = v53;
        v73 = (v11 + 8);
        v54 = v24;
        v55 = v77;
        v56 = v6;
        v71 = a3;
        while (1)
        {
          v81 = a1;
          v57 = v72;
          v72(v54, a2, v55);
          v58 = a2;
          v59 = v54;
          v60 = v74;
          v57(v74, a4, v55);
          v61 = v79(v59, v60);
          if (v56)
          {
            break;
          }

          v62 = v61;
          v82 = 0;
          v63 = *v73;
          (*v73)(v60, v55);
          v63(v59, v55);
          v54 = v59;
          if (v62)
          {
            v64 = v80;
            v65 = v81;
            a2 = &v58[v80];
            if (v81 < v58 || v81 >= a2)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != v58)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }
          }

          else
          {
            v64 = v80;
            v65 = v81;
            v66 = &a4[v80];
            a2 = v58;
            if (v81 < a4 || v81 >= v66)
            {
              v55 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v64 = v80;
              v56 = v82;
            }

            else
            {
              v56 = v82;
              v55 = v77;
              if (v81 != a4)
              {
                swift_arrayInitWithTakeBackToFront();
                v64 = v80;
              }
            }

            v84 = v66;
            a4 = v66;
          }

          a1 = &v65[v64];
          v85 = a1;
          if (a4 >= v76 || a2 >= v71)
          {
            goto LABEL_65;
          }
        }

        v67 = *v73;
        (*v73)(v60, v55);
        v67(v59, v55);
      }

LABEL_65:
      sub_269BD6FEC(&v85, &v84, &v83);
      return 1;
    }

    v76 = v21;
    v28 = a3;
    v29 = a2;
    v30 = v25 / v23 * v23;
    if (a4 < v29 || &v29[v30] <= a4)
    {
      v31 = v29;
      v32 = v77;
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      v31 = v29;
      v32 = v77;
      if (a4 == v29)
      {
LABEL_24:
        v82 = v6;
        v34 = &a4[v30];
        if (v30 >= 1)
        {
          v35 = -v23;
          v69 = a4;
          v70 = (v11 + 16);
          v72 = (v11 + 8);
          v36 = &a4[v30];
          v37 = v28;
          v38 = v76;
          v81 = a1;
          v74 = -v23;
          do
          {
            v75 = v34;
            v71 = v34;
            v39 = v31;
            v77 = v31 + v35;
            v73 = v31;
            while (1)
            {
              if (v39 <= a1)
              {
                v85 = v39;
                v34 = v71;
                goto LABEL_64;
              }

              v40 = v37;
              v41 = v74;
              v80 = v36;
              v42 = &v36[v74];
              v43 = *v70;
              (*v70)(v38, &v36[v74], v32);
              v43(v14, v77, v32);
              v44 = v38;
              v45 = v82;
              v46 = v79(v38, v14);
              v82 = v45;
              if (v45)
              {
                v68 = *v72;
                (*v72)(v14, v32);
                v68(v44, v32);
                v85 = v73;
                v34 = v75;
                goto LABEL_64;
              }

              v47 = v46;
              v48 = &v40[v41];
              v49 = v14;
              v50 = *v72;
              v51 = v49;
              (*v72)();
              v50(v44, v32);
              if (v47)
              {
                break;
              }

              v37 = &v40[v41];
              if (v40 < v80 || v48 >= v80)
              {
                swift_arrayInitWithTakeFrontToBack();
                v14 = v51;
                v38 = v76;
              }

              else
              {
                v14 = v51;
                v38 = v76;
                if (v40 != v80)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v75 = v42;
              v36 = v42;
              a1 = v81;
              v39 = v73;
              if (v42 <= v69)
              {
                v31 = v73;
                v34 = v75;
                goto LABEL_63;
              }
            }

            v37 = &v40[v41];
            if (v40 < v73 || v48 >= v73)
            {
              v31 = v77;
              swift_arrayInitWithTakeFrontToBack();
              v52 = v69;
              v14 = v51;
              v38 = v76;
            }

            else
            {
              v38 = v76;
              v31 = v77;
              v52 = v69;
              v14 = v51;
              if (v40 != v73)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            v36 = v80;
            a1 = v81;
            v35 = v74;
            v34 = v75;
          }

          while (v80 > v52);
        }

LABEL_63:
        v85 = v31;
LABEL_64:
        v83 = v34;
        goto LABEL_65;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v23 = v80;
    goto LABEL_24;
  }

LABEL_68:
  __break(1u);
  return result;
}

uint64_t sub_269BD6FEC(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = sub_269BF8558();
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_269BD70D0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_269BD80DC(0);
  v34 = v4;
  result = sub_269BF8B08();
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
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_269BF8C18();
      sub_269BF8818();
      result = sub_269BF8C58();
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

void *sub_269BD736C()
{
  v1 = v0;
  sub_269BD80DC(0);
  v2 = *v0;
  v3 = sub_269BF8AF8();
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

uint64_t sub_269BD74D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v68 = a3;
  sub_269BD8044(0, &qword_28034A568, MEMORY[0x277CC9A70]);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v67 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v59 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v59 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v59 - v18;
  v20 = sub_269BF8558();
  v21 = *(v20 - 8);
  v22 = MEMORY[0x28223BE20](v20);
  v24 = &v59 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v22);
  v66 = &v59 - v26;
  MEMORY[0x28223BE20](v25);
  v69 = &v59 - v27;
  if (*(a4 + 16))
  {
    v28 = sub_269BE5A70(a1, a2);
    if (v29)
    {
      v30 = *(*(a4 + 56) + 8 * v28);
      if (*(v30 + 16))
      {

        return v30;
      }
    }
  }

  v65 = v24;
  sub_269BF8518();
  v70 = *(v21 + 48);
  if (v70(v19, 1, v20) == 1)
  {
    sub_269BD51CC(v19, &qword_28034A568, MEMORY[0x277CC9A70]);
    return MEMORY[0x277D84F90];
  }

  v62 = v17;
  v63 = v21;
  v60 = *(v21 + 32);
  v61 = v21 + 32;
  v60(v69, v19, v20);
  v31 = 1 << *(a4 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(a4 + 64);
  v34 = (v31 + 63) >> 6;

  v35 = 0;
  v64 = MEMORY[0x277D84F90];
  while (1)
  {
    v36 = v35;
    if (!v33)
    {
      break;
    }

LABEL_14:
    v33 &= v33 - 1;

    sub_269BF8518();

    if (v70(v14, 1, v20) == 1)
    {
      sub_269BD51CC(v14, &qword_28034A568, MEMORY[0x277CC9A70]);
    }

    else
    {
      v60(v66, v14, v20);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v64 = sub_269BF2428(0, *(v64 + 2) + 1, 1, v64);
      }

      v38 = *(v64 + 2);
      v37 = *(v64 + 3);
      if (v38 >= v37 >> 1)
      {
        v64 = sub_269BF2428((v37 > 1), v38 + 1, 1, v64);
      }

      v39 = v63;
      v40 = v64;
      *(v64 + 2) = v38 + 1;
      v60(&v40[((*(v39 + 80) + 32) & ~*(v39 + 80)) + *(v39 + 72) * v38], v66, v20);
    }
  }

  while (1)
  {
    v35 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      MEMORY[0x28223BE20](v41);
      v43 = v68;
      v42 = v69;
      *(&v59 - 4) = v68;
      *(&v59 - 3) = v42;
      *(&v59 - 2) = a5;
      v44 = sub_269BD3590(sub_269BD8098, (&v59 - 6), v64);
      v45 = MEMORY[0x28223BE20](v44);
      *(&v59 - 2) = v43;
      *(&v59 - 1) = v42;
      v71 = v45;

      sub_269BD5800(sub_269BD80BC, (&v59 - 4));

      v46 = v63;
      if (*(v71 + 16))
      {
        v47 = v62;
        (*(v63 + 16))(v62, v71 + ((*(v63 + 80) + 32) & ~*(v63 + 80)), v20);
        v48 = 0;
      }

      else
      {
        v48 = 1;
        v47 = v62;
      }

      v49 = v67;

      (*(v46 + 56))(v47, v48, 1, v20);
      sub_269BD7D80(v47, v49, &qword_28034A568, MEMORY[0x277CC9A70]);
      if (v70(v49, 1, v20) == 1)
      {
        v50 = MEMORY[0x277CC9A70];
        sub_269BD51CC(v49, &qword_28034A568, MEMORY[0x277CC9A70]);
        sub_269BD51CC(v47, &qword_28034A568, v50);
        (*(v46 + 8))(v69, v20);
        return MEMORY[0x277D84F90];
      }

      v51 = v65;
      v60(v65, v49, v20);
      v52 = sub_269BF8528();
      if (*(a4 + 16))
      {
        v54 = sub_269BE5A70(v52, v53);
        v56 = v55;

        if (v56)
        {
          v30 = *(*(a4 + 56) + 8 * v54);

LABEL_32:
          v57 = *(v46 + 8);
          v57(v51, v20);
          sub_269BD51CC(v47, &qword_28034A568, MEMORY[0x277CC9A70]);
          v57(v69, v20);
          return v30;
        }
      }

      else
      {
      }

      v30 = MEMORY[0x277D84F90];
      goto LABEL_32;
    }

    v33 = *(a4 + 64 + 8 * v35);
    ++v36;
    if (v33)
    {
      goto LABEL_14;
    }
  }

  __break(1u);

  __break(1u);
  return result;
}

unint64_t sub_269BD7C00(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_269BD7CC0(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 2);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > *(v4 + 3) >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_269BF2578(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_269BD7C00(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_269BD7D80(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269BD8044(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_269BD7DEC(uint64_t a1, uint64_t a2)
{
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  (*(*(started - 8) + 32))(a2, a1, started);
  return a2;
}

uint64_t sub_269BD7E50(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_269BD8044(0, a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

unint64_t sub_269BD7EBC()
{
  result = qword_280B61418;
  if (!qword_280B61418)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280B61418);
  }

  return result;
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

unint64_t sub_269BD7F8C()
{
  result = qword_280B61430[0];
  if (!qword_280B61430[0])
  {
    sub_269BF8688();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B61430);
  }

  return result;
}

uint64_t sub_269BD7FE4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_269BD8044(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269BF89A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269BD80DC(uint64_t a1)
{
  if (!qword_28034A480)
  {
    sub_269BD8168(255, &unk_28034A4A0, MEMORY[0x277D839F8], MEMORY[0x277D83940]);
    v1 = sub_269BF8B28();
    if (!v2)
    {
      atomic_store(v1, &qword_28034A480);
    }
  }
}

void sub_269BD8168(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t SleepScoreDaySummaryQueryDescriptor.init(morningIndexRange:gregorianCalendar:debugIdentifier:algorithmVersion:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unsigned __int8 *a5@<X4>, char *a6@<X8>)
{
  v64 = a3;
  v65 = a2;
  v63 = a1;
  sub_269BDB108(0, &qword_28034A570, MEMORY[0x277CC99E8]);
  MEMORY[0x28223BE20](v9 - 8);
  v62 = &v49 - v10;
  sub_269BD86F0(0);
  v58 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v54 = &v49 - v15;
  v16 = sub_269BF8688();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v22 = &v49 - v21;
  sub_269BD8758(0);
  v24 = v23;
  MEMORY[0x28223BE20](v23);
  v53 = &v49 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = *a5;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0);
  *&a6[*(Descriptor + 24)] = 13;
  v27 = sub_269BF8508();
  v28 = *(v27 - 8);
  v29 = *(v28 + 16);
  v56 = v28 + 16;
  v57 = v28;
  v55 = v29;
  v29(a6, v65, v27);
  v59 = Descriptor;
  v30 = *(Descriptor + 20);
  v31 = a6;
  v32 = &a6[v30];
  *v32 = v64;
  *(v32 + 1) = a4;
  v61 = a4;

  v33 = v63;
  sub_269BF8658();
  v52 = v24;
  (*(v17 + 16))(v20, v33 + *(v24 + 36), v16);
  sub_269BDB324(&qword_28034A4C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
  result = sub_269BF86F8();
  if (result)
  {
    v50 = v31;
    v35 = *(v17 + 32);
    v36 = v54;
    v35(v54, v22, v16);
    v51 = v27;
    v37 = v58;
    v35((v36 + *(v58 + 48)), v20, v16);
    sub_269BDB36C(v36, v14, sub_269BD86F0);
    v38 = *(v37 + 48);
    v39 = v53;
    v35(v53, v14, v16);
    v40 = *(v17 + 8);
    v40(&v14[v38], v16);
    sub_269BDB490(v36, v14, sub_269BD86F0);
    v35(&v39[*(v52 + 36)], &v14[*(v37 + 48)], v16);
    v40(v14, v16);
    MEMORY[0x26D64C180](v39);
    v41 = v59;
    v42 = v50;
    sub_269BF85C8();
    v43 = v42;
    v44 = sub_269BF85A8();
    sub_269BF8598();
    v44(v66, 0);
    v45 = v62;
    v46 = v65;
    v47 = v51;
    v55(v62, v65, v51);
    v48 = v57;
    (*(v57 + 56))(v45, 0, 1, v47);
    sub_269BF85B8();
    (*(v48 + 8))(v46, v47);
    result = sub_269BDB3D4(v63, sub_269BD8758);
    v43[*(v41 + 28)] = v60;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_269BD86F0(uint64_t a1)
{
  if (!qword_28034A4C8)
  {
    sub_269BF8688();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A4C8);
    }
  }
}

void sub_269BD8758(uint64_t a1)
{
  if (!qword_28034A4B8)
  {
    sub_269BF8688();
    sub_269BDB324(&qword_28034A4C0, MEMORY[0x277CCB6A8], MEMORY[0x277CCB6B8]);
    v1 = sub_269BF8708();
    if (!v2)
    {
      atomic_store(v1, &qword_28034A4B8);
    }
  }
}

uint64_t type metadata accessor for SleepScoreDaySummaryQueryDescriptor(uint64_t a1)
{
  result = qword_28034A558;
  if (!qword_28034A558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SleepScoreDaySummaryQueryDescriptor.result(for:)(uint64_t a1)
{
  v2[2] = v1;
  v2[3] = type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0);
  v4 = swift_task_alloc();
  v2[4] = v4;
  *v4 = v2;
  v4[1] = sub_269BD88F0;

  return MEMORY[0x282120470](a1);
}

uint64_t sub_269BD88F0(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_269BD8A3C, 0, 0);
  }
}

uint64_t sub_269BD8A3C()
{
  v1 = sub_269BD8AC4(*(*(v0 + 16) + *(*(v0 + 24) + 28)), *(v0 + 40), *(*(v0 + 16) + *(*(v0 + 24) + 24)));

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_269BD8AC4(int a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), uint64_t a3)
{
  v112 = a3;
  v113 = a2;
  v103 = a1;
  v102 = sub_269BF8458();
  v95 = *(v102 - 8);
  v3 = MEMORY[0x28223BE20](v102);
  v94 = &v93 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v98 = &v93 - v5;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v101 = &v93 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v97 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v109 = &v93 - v11;
  v114 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v99 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v115 = (&v93 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v93 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v93 - v17;
  v117 = type metadata accessor for SleepScoreDaySummary(0);
  v108 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v110 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, &unk_28034A490, sub_269BDB15C);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = (&v93 - v21);
  sub_269BDB15C(0);
  v24 = v23;
  v25 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v116 = (&v93 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  v119 = MEMORY[0x277D84F90];
  sub_269BF2B18(0, 0, 0);
  v118 = v119;
  v27 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  v28 = swift_allocBox();
  v30 = v29;
  v31 = *(v27 + 20);
  v32 = sub_269BF8688();
  (*(*(v32 - 8) + 56))(v30 + v31, 1, 1, v32);
  *(v30 + *(v27 + 24)) = MEMORY[0x277D84F90];
  *v30 = v112;
  v33 = swift_allocObject();
  *(v33 + 16) = v113;
  *(v33 + 24) = 0;

  v111 = v33;
  v112 = v28;
  sub_269BDA98C(v33, v22);
  v106 = *(v25 + 48);
  v107 = v25 + 48;
  if (v106(v22, 1, v24) == 1)
  {
LABEL_2:

    sub_269BDB434(v22, &unk_28034A490, sub_269BDB15C);
    return v118;
  }

  v113 = v99 + 6;
  v99 = (v95 + 6);
  v96 = (v95 + 4);
  v93 = (v95 + 2);
  ++v95;
  v103 &= 1u;
  v35 = v114;
  v36 = v110;
  v100 = v18;
  v105 = v22;
  v104 = v24;
  while (1)
  {
    v37 = v116;
    sub_269BDB490(v22, v116, sub_269BDB15C);
    v38 = *v37;
    sub_269BDB36C(v37 + *(v24 + 48), v18, type metadata accessor for SleepScoreMetricsDaySummary);
    *v36 = v38;
    sub_269BDB36C(v18, v36 + *(v117 + 20), type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB36C(v18, v16, type metadata accessor for SleepScoreMetricsDaySummary);
    v39 = *(v13 + 36);
    v40 = v109;
    sub_269BD31C8(&v16[v39], v109);
    v41 = *v113;
    v42 = (*v113)(v40, 1, v35);
    if (v42 != 1)
    {
      break;
    }

    v43 = v38;
    sub_269BDB3D4(v16, type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB434(v40, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v44 = 0;
    v45 = 0;
    v46 = 0;
    v47 = 0;
    v48 = 0;
    v49 = 0;
LABEL_29:
    sub_269BDB3D4(v18, type metadata accessor for SleepScoreMetricsDaySummary);
    v78 = v116;
    v79 = v117;
    v80 = v110;
    v81 = &v110[*(v117 + 24)];
    *v81 = v44;
    *(v81 + 1) = v45;
    *(v81 + 2) = v46;
    *(v81 + 3) = v47;
    *(v81 + 4) = v48;
    *(v81 + 5) = v49;
    v81[48] = v42 == 1;
    v36 = v80;
    *(v80 + *(v79 + 28)) = v103;
    sub_269BDB3D4(v78, sub_269BDB15C);
    v82 = v118;
    v119 = v118;
    v84 = *(v118 + 16);
    v83 = *(v118 + 24);
    if (v84 >= v83 >> 1)
    {
      sub_269BF2B18((v83 > 1), v84 + 1, 1);
      v82 = v119;
    }

    *(v82 + 16) = v84 + 1;
    v85 = (*(v108 + 80) + 32) & ~*(v108 + 80);
    v118 = v82;
    sub_269BDB490(v36, v82 + v85 + *(v108 + 72) * v84, type metadata accessor for SleepScoreDaySummary);
    v22 = v105;
    sub_269BDA98C(v111, v105);
    v24 = v104;
    v86 = v106(v22, 1, v104);
    v35 = v114;
    if (v86 == 1)
    {
      goto LABEL_2;
    }
  }

  v50 = v40;
  v51 = v13;
  v52 = v115;
  sub_269BDB490(v50, v115, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v53 = *v52;
  v54 = v51;
  v55 = &v16[*(v51 + 28)];
  v56 = *v55;
  v57 = v55[8];
  v58 = v38;
  result = sub_269BD2A8C(v56, v57, v53);
  v59 = *(v52 + *(v35 + 32)) / 1200.0;
  if (v59 <= 1.0)
  {
    v60 = *(v52 + *(v35 + 32)) / 1200.0;
  }

  else
  {
    v60 = 1.0;
  }

  v61 = v60 * 5.0 + 0.0;
  if (v59 > 0.0)
  {
    v62 = v61;
  }

  else
  {
    v62 = 0.0;
  }

  v63 = trunc(v62);
  if ((*&v63 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    if (v63 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v63 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v64 = *(v115 + *(v35 + 36)) / 1800.0;
    if (v64 <= 1.0)
    {
      v65 = *(v115 + *(v35 + 36)) / 1800.0;
    }

    else
    {
      v65 = 1.0;
    }

    v66 = v65 * 5.0 + 0.0;
    if (v64 > 0.0)
    {
      v67 = v66;
    }

    else
    {
      v67 = 0.0;
    }

    v68 = trunc(v67);
    if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (v68 <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v68 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v44 = result;
    v69 = v101;
    sub_269BDB36C(&v16[*(v54 + 32)], v101, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    v70 = v102;
    if (!(*v99)(v69, 2, v102))
    {
      v71 = v98;
      (*v96)(v98, v69, v70);
      v72 = &v16[v39];
      v73 = v97;
      sub_269BD31C8(v72, v97);
      v74 = v114;
      if (v41(v73, 1, v114) != 1)
      {
        v87 = v73 + *(v74 + 28);
        v88 = v94;
        (*v93)(v94, v87, v70);
        sub_269BDB3D4(v73, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        v89 = v71;
        sub_269BF8418();
        v91 = v90;
        v92 = *v95;
        (*v95)(v88, v70);
        v92(v89, v70);
        v76 = 0;
        v75 = v91;
        goto LABEL_28;
      }

      (*v95)(v71, v70);
      sub_269BDB434(v73, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    }

    v75 = 0;
    v76 = 1;
LABEL_28:
    v45 = v63;
    v46 = v68;
    v47 = sub_269BD2D28(v75, v76);
    v77 = v115;
    v48 = sub_269BD2F1C(*(v115 + 1));
    v49 = sub_269BD3028(*(v77 + 16));
    sub_269BDB3D4(v16, type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB3D4(v77, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v13 = v54;
    v18 = v100;
    goto LABEL_29;
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_269BD9668(int a1)
{
  v2 = v1;
  v123 = a1;
  v107 = sub_269BF8458();
  v109 = *(v107 - 8);
  v3 = MEMORY[0x28223BE20](v107);
  v100 = &v98 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v104 = &v98 - v5;
  started = type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline(0);
  MEMORY[0x28223BE20](started - 8);
  v115 = &v98 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v103 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v113 = &v98 - v11;
  v12 = type metadata accessor for SleepScoreMetricsDaySummary.Metrics(0);
  v120 = *(v12 - 8);
  v121 = v12;
  MEMORY[0x28223BE20](v12);
  v122 = (&v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v98 - v18;
  v125 = type metadata accessor for SleepScoreDaySummary(0);
  v112 = *(v125 - 8);
  MEMORY[0x28223BE20](v125);
  v114 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDB108(0, &unk_28034A490, sub_269BDB15C);
  MEMORY[0x28223BE20](v21 - 8);
  v118 = (&v98 - v22);
  sub_269BDB15C(0);
  v24 = v23;
  v119 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v124 = (&v98 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v128 = MEMORY[0x277D84F90];
  sub_269BF2B18(0, 0, 0);
  v126 = v128;
  v26 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  v27 = swift_allocBox();
  v29 = v28;
  v30 = *(v2 + 32);
  v31 = *(v26 + 20);
  v32 = sub_269BF8688();
  (*(*(v32 - 8) + 56))(&v29[v31], 1, 1, v32);
  v33 = *(v26 + 24);
  v34 = v118;
  *&v29[v33] = MEMORY[0x277D84F90];
  *v29 = v30;
  v35 = swift_allocObject();
  v36 = *(v2 + 16);
  *(v35 + 16) = *v2;
  *(v35 + 32) = v36;
  *(v35 + 48) = v36;

  sub_269BDB36C(v2, v127, sub_269BDB228);
  v116 = v35;
  v117 = v27;
  sub_269BDACA4(v35, v34);
  v37 = *(v119 + 48);
  v119 += 48;
  v111 = v37;
  if (v37(v34, 1, v24) == 1)
  {
LABEL_2:

    sub_269BDB434(v34, &unk_28034A490, sub_269BDB15C);
    return v126;
  }

  v120 += 6;
  v105 = (v109 + 48);
  v102 = (v109 + 32);
  v99 = (v109 + 16);
  v101 = (v109 + 8);
  LODWORD(v109) = v123 & 1;
  v39 = v115;
  v40 = v114;
  v108 = v14;
  v106 = v19;
  v110 = v24;
  while (1)
  {
    v41 = v124;
    sub_269BDB490(v34, v124, sub_269BDB15C);
    v42 = *v41;
    sub_269BDB36C(v41 + *(v24 + 48), v19, type metadata accessor for SleepScoreMetricsDaySummary);
    *v40 = v42;
    sub_269BDB36C(v19, v40 + *(v125 + 20), type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB36C(v19, v17, type metadata accessor for SleepScoreMetricsDaySummary);
    v43 = *(v14 + 36);
    v44 = v113;
    sub_269BD31C8(&v17[v43], v113);
    v45 = *v120;
    v46 = v17;
    v47 = v121;
    v123 = (*v120)(v44, 1, v121);
    if (v123 == 1)
    {
      v48 = v42;
      sub_269BDB3D4(v46, type metadata accessor for SleepScoreMetricsDaySummary);
      sub_269BDB434(v44, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
      v49 = 0;
      v50 = 0;
      v51 = 0;
      v52 = 0;
      v53 = 0;
      v54 = 0;
      v17 = v46;
      v55 = v123;
      goto LABEL_30;
    }

    v56 = v44;
    v57 = v14;
    v58 = v122;
    sub_269BDB490(v56, v122, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v59 = *v58;
    v60 = v46 + *(v57 + 28);
    v61 = *v60;
    v62 = *(v60 + 8);
    v63 = v42;
    result = sub_269BD2A8C(v61, v62, v59);
    v64 = *(v58 + *(v47 + 32)) / 1200.0;
    v65 = v64 <= 1.0 ? *(v58 + *(v47 + 32)) / 1200.0 : 1.0;
    v66 = v65 * 5.0 + 0.0;
    v67 = v64 > 0.0 ? v66 : 0.0;
    v68 = trunc(v67);
    if ((*&v68 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      break;
    }

    if (v68 <= -9.22337204e18)
    {
      goto LABEL_35;
    }

    if (v68 >= 9.22337204e18)
    {
      goto LABEL_36;
    }

    v69 = *(v122 + *(v47 + 36)) / 1800.0;
    if (v69 <= 1.0)
    {
      v70 = *(v122 + *(v47 + 36)) / 1800.0;
    }

    else
    {
      v70 = 1.0;
    }

    v71 = v70 * 5.0 + 0.0;
    if (v69 > 0.0)
    {
      v72 = v71;
    }

    else
    {
      v72 = 0.0;
    }

    v73 = trunc(v72);
    if ((*&v73 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_37;
    }

    if (v73 <= -9.22337204e18)
    {
      goto LABEL_38;
    }

    if (v73 >= 9.22337204e18)
    {
      goto LABEL_39;
    }

    v49 = result;
    v17 = v46;
    sub_269BDB36C(v46 + *(v108 + 32), v39, type metadata accessor for SleepScoreMetricsDaySummary.SleepStartBaseline);
    v74 = v107;
    if ((*v105)(v39, 2, v107))
    {
      v75 = 0;
      v76 = 1;
      v19 = v106;
      v55 = v123;
    }

    else
    {
      v77 = v104;
      (*v102)(v104, v39, v74);
      v78 = v46 + v43;
      v79 = v103;
      sub_269BD31C8(v78, v103);
      v80 = v121;
      v81 = v45(v79, 1, v121);
      v19 = v106;
      v55 = v123;
      if (v81 == 1)
      {
        (*v101)(v77, v74);
        sub_269BDB434(v79, qword_280B61698, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        v75 = 0;
        v76 = 1;
      }

      else
      {
        v82 = v79 + *(v80 + 28);
        v83 = v100;
        (*v99)(v100, v82, v74);
        sub_269BDB3D4(v79, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
        v84 = v77;
        sub_269BF8418();
        v86 = v85;
        v87 = *v101;
        (*v101)(v83, v74);
        v87(v84, v74);
        v76 = 0;
        v75 = v86;
      }
    }

    v50 = v68;
    v51 = v73;
    v52 = sub_269BD2D28(v75, v76);
    v88 = v122;
    v53 = sub_269BD2F1C(*(v122 + 1));
    v54 = sub_269BD3028(*(v88 + 16));
    sub_269BDB3D4(v17, type metadata accessor for SleepScoreMetricsDaySummary);
    sub_269BDB3D4(v88, type metadata accessor for SleepScoreMetricsDaySummary.Metrics);
    v14 = v108;
LABEL_30:
    sub_269BDB3D4(v19, type metadata accessor for SleepScoreMetricsDaySummary);
    v89 = v124;
    v90 = v125;
    v91 = v114;
    v92 = &v114[*(v125 + 24)];
    *v92 = v49;
    *(v92 + 1) = v50;
    *(v92 + 2) = v51;
    *(v92 + 3) = v52;
    *(v92 + 4) = v53;
    *(v92 + 5) = v54;
    v92[48] = v55 == 1;
    v40 = v91;
    *(v91 + *(v90 + 28)) = v109;
    sub_269BDB3D4(v89, sub_269BDB15C);
    v93 = v126;
    v128 = v126;
    v95 = *(v126 + 16);
    v94 = *(v126 + 24);
    if (v95 >= v94 >> 1)
    {
      sub_269BF2B18((v94 > 1), v95 + 1, 1);
      v93 = v128;
    }

    *(v93 + 16) = v95 + 1;
    v96 = (*(v112 + 80) + 32) & ~*(v112 + 80);
    v126 = v93;
    sub_269BDB490(v40, v93 + v96 + *(v112 + 72) * v95, type metadata accessor for SleepScoreDaySummary);
    v34 = v118;
    sub_269BDACA4(v116, v118);
    v24 = v110;
    v97 = v111(v34, 1, v110);
    v39 = v115;
    if (v97 == 1)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

uint64_t sub_269BDA2A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[3] = v3;
  v4[4] = a3;
  v4[2] = a1;
  v6 = swift_task_alloc();
  v4[5] = v6;
  *v6 = v4;
  v6[1] = sub_269BDA358;

  return MEMORY[0x282120470](a2);
}

uint64_t sub_269BDA358(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_269BDA4A4, 0, 0);
  }
}

uint64_t sub_269BDA4A4()
{
  v1 = *(v0 + 16);
  v2 = sub_269BD8AC4(*(*(v0 + 24) + *(*(v0 + 32) + 28)), *(v0 + 48), *(*(v0 + 24) + *(*(v0 + 32) + 24)));

  *v1 = v2;
  v3 = *(v0 + 8);

  return v3();
}

id SleepScoreDaySummaryQueryDescriptor.makeQuery(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0);
  v7 = *(Descriptor - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](Descriptor);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269BF85D8();
  v25 = v11;
  v26 = v10;
  v24 = sub_269BF8618();
  sub_269BDB1E0(0, &qword_28034A488, 0x277CCD838);
  sub_269BF85E8();
  v12 = sub_269BF8968();
  v13 = sub_269BF8608();
  sub_269BDB36C(v3, v9, type metadata accessor for SleepScoreDaySummaryQueryDescriptor);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_269BDB490(v9, v15 + v14, type metadata accessor for SleepScoreDaySummaryQueryDescriptor);
  v16 = objc_allocWithZone(MEMORY[0x277CCD9C0]);
  aBlock[4] = sub_269BDA900;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_269BDAF70;
  aBlock[3] = &block_descriptor;
  v17 = _Block_copy(aBlock);

  v18 = [v16 initWithMorningIndexRange:v26 ascending:v25 limit:v24 & 1 options:v12 resultsHandler:{v13, v17}];
  _Block_release(v17);

  v19 = sub_269BF84D8();
  [v18 setCalendarOverrides_];

  v20 = v18;
  v21 = sub_269BF87D8();
  [v20 setDebugIdentifier_];

  return v20;
}

void sub_269BDA7E4(int a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), id a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  if (a2)
  {
    Descriptor = type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0);
    v10 = *(a6 + *(Descriptor + 24));
    LODWORD(a6) = *(a6 + *(Descriptor + 28));

    v11 = sub_269BD8AC4(a6, a2, v10);

    a4(v11, 0);
  }

  else
  {
    if (a3)
    {
      v12 = a3;
    }

    else
    {
      v13 = [objc_opt_self() hk:0 error:0 userInfo:?];
      a3 = 0;
      v12 = v13;
    }

    v14 = a3;
    a4(v12, 1);
  }
}

void sub_269BDA900(int a1, unsigned int (**a2)(uint64_t, uint64_t, uint64_t), void *a3)
{
  v7 = *(type metadata accessor for SleepScoreDaySummaryQueryDescriptor(0) - 8);
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = v3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));

  sub_269BDA7E4(a1, a2, a3, v8, v9, v10);
}

id sub_269BDA98C@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  sub_269BDB108(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  swift_projectBox();
  v12 = (v9 + 48);
  while (1)
  {
    swift_beginAccess();
    v13 = *(a1 + 16);
    if (v13 >> 62)
    {
      result = sub_269BF8AD8();
    }

    else
    {
      result = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = *(a1 + 24);
    if (v15 == result)
    {
      swift_endAccess();
      sub_269BDB15C(0);
      return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x26D64C2D0](*(a1 + 24), v13);
      goto LABEL_9;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_19;
    }

    result = *(v13 + 8 * v15 + 32);
LABEL_9:
    v16 = result;
    if (__OFADD__(v15, 1))
    {
      goto LABEL_18;
    }

    *(a1 + 24) = v15 + 1;
    swift_endAccess();
    swift_beginAccess();
    sub_269BD3ED0(v16, v7);
    swift_endAccess();
    if ((*v12)(v7, 1, v8) != 1)
    {
      sub_269BDB490(v7, v11, type metadata accessor for SleepScoreMetricsDaySummary);
      sub_269BDB15C(0);
      v19 = v18;
      v20 = *(v18 + 48);
      *a3 = v16;
      sub_269BDB490(v11, a3 + v20, type metadata accessor for SleepScoreMetricsDaySummary);
      return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
    }

    sub_269BDB434(v7, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
  }

  __break(1u);
LABEL_18:
  __break(1u);
LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_269BDACA4@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  sub_269BDB108(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v21[-v6];
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  swift_projectBox();
  result = swift_beginAccess();
  v13 = a1[6];
  v14 = a1[5] >> 1;
  if (v13 == v14)
  {
LABEL_6:
    sub_269BDB15C(0);
    return (*(*(v17 - 8) + 56))(a3, 1, 1, v17);
  }

  else
  {
    while (v13 < v14 && v13 >= a1[4])
    {
      v15 = *(a1[3] + 8 * v13);
      a1[6] = v13 + 1;
      swift_beginAccess();
      v16 = v15;
      sub_269BD3ED0(v16, v7);
      swift_endAccess();
      if ((*(v9 + 48))(v7, 1, v8) != 1)
      {
        sub_269BDB490(v7, v11, type metadata accessor for SleepScoreMetricsDaySummary);
        sub_269BDB15C(0);
        v19 = v18;
        v20 = *(v18 + 48);
        *a3 = v16;
        sub_269BDB490(v11, a3 + v20, type metadata accessor for SleepScoreMetricsDaySummary);
        return (*(*(v19 - 8) + 56))(a3, 0, 1, v19);
      }

      result = sub_269BDB434(v7, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary);
      v13 = a1[6];
      v14 = a1[5] >> 1;
      if (v13 == v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_269BDAF70(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v7 = *(a1 + 32);
  if (a3)
  {
    sub_269BDB1E0(0, &qword_280B61580, 0x277CCD9B0);
    v5 = sub_269BF8898();
  }

  v8 = a2;
  v9 = a4;
  v7(v8, v5, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_269BDB068(uint64_t a1)
{
  result = sub_269BF8508();
  if (v2 <= 0x3F)
  {
    result = sub_269BF8628();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_269BDB108(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_269BF89A8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269BDB15C(uint64_t a1)
{
  if (!qword_280B61410)
  {
    sub_269BDB1E0(255, &qword_280B61580, 0x277CCD9B0);
    type metadata accessor for SleepScoreMetricsDaySummary(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_280B61410);
    }
  }
}

uint64_t sub_269BDB1E0(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_269BDB228(uint64_t a1)
{
  if (!qword_28034A8B0)
  {
    sub_269BDB2BC(255);
    v3 = v2;
    v4 = sub_269BDB324(&qword_28034A8C0, sub_269BDB2BC, MEMORY[0x277D83FB0]);
    v6 = type metadata accessor for SleepScoreMetricsDaySummaryEnumerator(a1, v3, v4, v5);
    if (!v7)
    {
      atomic_store(v6, &qword_28034A8B0);
    }
  }
}

void sub_269BDB2BC(uint64_t a1)
{
  if (!qword_28034A718)
  {
    sub_269BDB1E0(255, &qword_280B61580, 0x277CCD9B0);
    v1 = sub_269BF89D8();
    if (!v2)
    {
      atomic_store(v1, &qword_28034A718);
    }
  }
}

uint64_t sub_269BDB324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269BDB36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BDB3D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_269BDB434(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269BDB108(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BDB490(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_269BDB4F8(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, int a7)
{
  v126 = a6;
  v125 = a5;
  v118 = a4;
  v122 = a1;
  sub_269BDC68C(0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v96 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v124 = sub_269BF82E8();
  v13 = *(v124 - 8);
  MEMORY[0x28223BE20](v124);
  v121 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = sub_269BF8478();
  v108 = *(v106 - 8);
  MEMORY[0x28223BE20](v106);
  v98 = &v96 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDC720(0);
  v103 = v16;
  MEMORY[0x28223BE20](v16);
  v105 = &v96 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x277D83D88];
  sub_269BDE134(0, &qword_28034A738, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v99 = &v96 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v104 = &v96 - v23;
  MEMORY[0x28223BE20](v22);
  v107 = &v96 - v24;
  v102 = sub_269BF84A8();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v96 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE134(0, &qword_28034A740, MEMORY[0x277CC9788], v18);
  MEMORY[0x28223BE20](v26 - 8);
  v117 = &v96 - v27;
  v28 = sub_269BF8398();
  v119 = *(v28 - 8);
  v120 = v28;
  MEMORY[0x28223BE20](v28);
  v123 = &v96 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_269BF8728();
  v127 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v32 = &v96 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v116 = sub_269BF84C8();
  v115 = *(v116 - 8);
  MEMORY[0x28223BE20](v116);
  v33 = sub_269BF87B8();
  v34 = MEMORY[0x28223BE20](v33 - 8);
  v114 = &v96 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = sub_269BF8338();
  v130 = *(v36 - 8);
  v131 = v36;
  v37 = MEMORY[0x28223BE20](v36);
  v113 = &v96 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v132 = &v96 - v39;
  v40 = sub_269BF8798();
  v128 = *(v40 - 8);
  v129 = v40;
  v41 = MEMORY[0x28223BE20](v40);
  result = MEMORY[0x28223BE20](v41);
  v45 = (&v96 - v44);
  if ((a7 & 0x100) != 0 && !a3)
  {
    __break(1u);
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v109 = v30;
  v110 = v43;
  v112 = v13;
  sub_269BF8328();
  result = sub_269BF8318();
  v111 = BYTE2(a7);
  if (BYTE2(a7) == 2)
  {
    if ((a7 & 0x100) == 0)
    {
      v134 = sub_269BDE574(v125);
      v135 = v46;
      MEMORY[0x26D64C060](95, 0xE100000000000000);
      v47 = sub_269BDEDB4(v126, a7 | 0x20000u);
      MEMORY[0x26D64C060](v47);

      sub_269BF87C8();
      sub_269BDC818();
      if (!sub_269BF8978())
      {
        v48 = [objc_opt_self() mainBundle];
      }

      sub_269BF8488();
      v49 = sub_269BF87F8();
      (*(v130 + 8))(v132, v131);
      return v49;
    }

    goto LABEL_34;
  }

  v97 = v12;
  if ((a7 & 0x100) == 0)
  {
    sub_269BDE134(0, &qword_28034A748, sub_269BDC7B4, MEMORY[0x277D84560]);
    v60 = swift_allocObject();
    v61 = MEMORY[0x277D83B88];
    *(v60 + 16) = xmmword_269BF9B40;
    v62 = MEMORY[0x277D83C10];
    *(v60 + 56) = v61;
    *(v60 + 64) = v62;
    *(v60 + 32) = v122;
    sub_269BF8308();
    sub_269BF8788();
    v134 = sub_269BDE574(v125);
    v135 = v63;
    MEMORY[0x26D64C060](22111, 0xE200000000000000);
    v133 = v126;
    v64 = sub_269BF8B88();
    MEMORY[0x26D64C060](v64);

    MEMORY[0x26D64C060](95, 0xE100000000000000);
    sub_269BF8778();

    v65 = v127;
    v66 = v109;
    (v127[13])(v32, *MEMORY[0x277CC9BD8], v109);
    sub_269BF8748();
    v65[1](v32, v66);
    v67 = v113;
    v68 = v130;
    sub_269BF8778();

    goto LABEL_20;
  }

  if (a3)
  {
    sub_269BDE134(0, &qword_28034A748, sub_269BDC7B4, MEMORY[0x277D84560]);
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_269BF9B50;
    v51 = MEMORY[0x277D83C10];
    *(v50 + 56) = MEMORY[0x277D83B88];
    *(v50 + 64) = v51;
    *(v50 + 32) = v122;
    *(v50 + 96) = MEMORY[0x277D837D0];
    *(v50 + 104) = sub_269BDDFCC();
    *(v50 + 72) = a2;
    *(v50 + 80) = a3;

    sub_269BF8308();
    sub_269BF8788();
    v134 = sub_269BDE574(v125);
    v135 = v52;
    MEMORY[0x26D64C060](22111, 0xE200000000000000);
    v133 = v126;
    v53 = sub_269BF8B88();
    MEMORY[0x26D64C060](v53);

    MEMORY[0x26D64C060](95, 0xE100000000000000);
    sub_269BF8778();

    v54 = v127;
    v55 = v127[13];
    v56 = v109;
    (v55)(v32, *MEMORY[0x277CC9BD8], v109);
    v57 = 0xE400000000000000;
    sub_269BF8748();
    v58 = v54[1];
    v127 = v54 + 1;
    v58(v32, v56);
    v134 = 0;
    v135 = 0xE000000000000000;
    if (a7)
    {
      if (a7 == 1)
      {
        v59 = 1497449567;
      }

      else
      {
        v59 = 0;
      }

      if (a7 != 1)
      {
        v57 = 0xE000000000000000;
      }
    }

    else
    {
      v57 = 0xE600000000000000;
      v59 = 0x544847494E5FLL;
    }

    MEMORY[0x26D64C060](v59, v57);

    MEMORY[0x26D64C060](95, 0xE100000000000000);
    sub_269BF8778();

    (v55)(v32, *MEMORY[0x277CC9BE0], v56);
    sub_269BF8748();
    v58(v32, v56);
    v68 = v130;
    v67 = v113;
LABEL_20:
    v69 = *(v128 + 16);
    v127 = v45;
    v69(v110, v45, v129);
    sub_269BF87A8();
    v70 = v131;
    (*(v68 + 16))(v67, v132, v131);
    sub_269BDC818();
    if (!sub_269BF8978())
    {
      v71 = [objc_opt_self() mainBundle];
    }

    v72 = v115;
    v73 = v117;
    v74 = v116;
    (*(v115 + 16))(v117, v118, v116);
    (*(v72 + 56))(v73, 0, 1, v74);
    v75 = v123;
    sub_269BF8388();
    v76 = v124;
    v77 = v127;
    if (v111)
    {
      goto LABEL_31;
    }

    v78 = v100;
    sub_269BF84B8();
    v79 = v107;
    sub_269BF8498();
    (*(v101 + 8))(v78, v102);
    v80 = v104;
    sub_269BF8468();
    v81 = v108;
    v82 = v106;
    (*(v108 + 56))(v80, 0, 1, v106);
    v83 = *(v103 + 48);
    v84 = v105;
    sub_269BDDF38(v79, v105);
    sub_269BDDF38(v80, v84 + v83);
    v85 = *(v81 + 48);
    if (v85(v84, 1, v82) == 1)
    {
      v86 = MEMORY[0x277CC9640];
      sub_269BDE1DC(v80, &qword_28034A738, MEMORY[0x277CC9640]);
      sub_269BDE1DC(v79, &qword_28034A738, v86);
      v87 = v85(v84 + v83, 1, v82);
      v76 = v124;
      v68 = v130;
      if (v87 == 1)
      {
        sub_269BDE1DC(v84, &qword_28034A738, MEMORY[0x277CC9640]);
        v70 = v131;
        v75 = v123;
LABEL_30:
        sub_269BDC864(1, v122);
        goto LABEL_31;
      }
    }

    else
    {
      v88 = v99;
      sub_269BDDF38(v84, v99);
      if (v85(v84 + v83, 1, v82) != 1)
      {
        v90 = v108;
        v91 = v84 + v83;
        v92 = v98;
        (*(v108 + 32))(v98, v91, v82);
        sub_269BDE410(&qword_28034A760, MEMORY[0x277CC9640], MEMORY[0x277CC9658]);
        LODWORD(v126) = sub_269BF8718();
        v93 = *(v90 + 8);
        v93(v92, v82);
        v94 = MEMORY[0x277CC9640];
        sub_269BDE1DC(v80, &qword_28034A738, MEMORY[0x277CC9640]);
        sub_269BDE1DC(v107, &qword_28034A738, v94);
        v93(v88, v82);
        sub_269BDE1DC(v84, &qword_28034A738, v94);
        v75 = v123;
        v76 = v124;
        v68 = v130;
        v70 = v131;
        if (v126)
        {
          goto LABEL_30;
        }

LABEL_31:
        v95 = v121;
        sub_269BF82D8();
        sub_269BDDB38(v97);
        (*(v112 + 8))(v95, v76);
        v49 = sub_269BF8808();
        (*(v119 + 8))(v75, v120);
        (*(v68 + 8))(v132, v70);
        (*(v128 + 8))(v77, v129);
        return v49;
      }

      v89 = MEMORY[0x277CC9640];
      sub_269BDE1DC(v80, &qword_28034A738, MEMORY[0x277CC9640]);
      sub_269BDE1DC(v107, &qword_28034A738, v89);
      (*(v108 + 8))(v88, v82);
      v76 = v124;
      v68 = v130;
    }

    sub_269BDE24C(v84, sub_269BDC720);
    v70 = v131;
    v75 = v123;
    goto LABEL_31;
  }

LABEL_35:
  __break(1u);
  return result;
}

void sub_269BDC68C(uint64_t a1)
{
  if (!qword_28034A720)
  {
    sub_269BF82E8();
    sub_269BDE410(&qword_28034A728, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
    v1 = sub_269BF8C08();
    if (!v2)
    {
      atomic_store(v1, &qword_28034A720);
    }
  }
}

void sub_269BDC720(uint64_t a1)
{
  if (!qword_28034A730)
  {
    sub_269BDE134(255, &qword_28034A738, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A730);
    }
  }
}

unint64_t sub_269BDC7B4()
{
  result = qword_28034A750;
  if (!qword_28034A750)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_28034A750);
  }

  return result;
}

unint64_t sub_269BDC818()
{
  result = qword_28034A758;
  if (!qword_28034A758)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_28034A758);
  }

  return result;
}

uint64_t sub_269BDC864(uint64_t a1, unint64_t a2)
{
  v40 = a2;
  v54 = a1;
  v3 = sub_269BF8398();
  v42 = *(v3 - 8);
  v43 = v3;
  MEMORY[0x28223BE20](v3);
  v41 = v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE020(0);
  v6 = v5;
  v48 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x277CC8BC0];
  sub_269BDE0D4(0, &qword_28034A790, MEMORY[0x277CC8BC0]);
  v10 = v9;
  v51 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v38 - v11;
  v46 = MEMORY[0x277CC8BD0];
  sub_269BDE0D4(0, &qword_28034A798, MEMORY[0x277CC8BD0]);
  v52 = *(v13 - 8);
  v53 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v45 = v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = v38 - v16;
  v49 = sub_269BF8348();
  v18 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v20 = v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE134(0, &qword_28034A7A0, sub_269BDE020, MEMORY[0x277D83D88]);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v24 = v38 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v50 = v38 - v25;
  sub_269BDE0B4(0);
  v38[1] = v26;
  MEMORY[0x28223BE20](v26);
  v39 = v38 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v2;
  sub_269BF8368();
  KeyPath = swift_getKeyPath();
  swift_getKeyPath();
  sub_269BF8358();

  (*(v18 + 8))(v20, v49);
  v28 = *(v52 + 16);
  v49 = v17;
  v28(v45, v17, v53);
  sub_269BDE198(&qword_28034A7A8, &qword_28034A798, v46, MEMORY[0x277CC8BE0]);
  v29 = v48;
  sub_269BF8858();
  sub_269BDE198(&qword_28034A7B0, &qword_28034A790, v47, MEMORY[0x277CC8BC8]);
  sub_269BF89B8();
  v30 = *(v29 + 48);
  for (i = v30(v24, 1, v6); i != 1; i = v30(v24, 1, v6))
  {
    sub_269BDE4BC(v24, v8, sub_269BDE020);
    if ((v8[8] & 1) == 0 && *v8 == v54)
    {
      (*(v51 + 8))(v12, v10);
      (*(v52 + 8))(v49, v53);
      v32 = v50;
      sub_269BDE4BC(v8, v50, sub_269BDE020);
      v33 = 0;
      goto LABEL_8;
    }

    sub_269BDE24C(v8, sub_269BDE020);
    sub_269BF89B8();
  }

  (*(v51 + 8))(v12, v10);
  (*(v52 + 8))(v49, v53);
  v33 = 1;
  v32 = v50;
LABEL_8:
  (*(v29 + 56))(v32, v33, 1, v6);
  if (v30(v32, 1, v6) == 1)
  {
    return sub_269BDE1DC(v32, &qword_28034A7A0, sub_269BDE020);
  }

  v35 = v39;
  sub_269BDE4BC(v32 + *(v6 + 48), v39, sub_269BDE0B4);
  v36 = v41;
  sub_269BDDA24(v40);
  sub_269BDE410(&qword_28034A7B8, sub_269BDE0B4, MEMORY[0x277D83D30]);
  sub_269BDE410(&qword_28034A7C0, MEMORY[0x277CC8C40], MEMORY[0x277CC8C38]);
  v37 = v43;
  sub_269BF82F8();
  (*(v42 + 8))(v36, v37);
  return sub_269BDE24C(v35, sub_269BDE0B4);
}

uint64_t sub_269BDCFEC(unint64_t a1, int a2, uint64_t a3, unsigned __int16 a4, uint64_t a5, int a6)
{
  LODWORD(v70) = a6;
  v76 = a3;
  v82 = a2;
  sub_269BDC68C(0);
  MEMORY[0x28223BE20](v8 - 8);
  v86 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_269BF82E8();
  v84 = *(v10 - 8);
  v85 = v10;
  MEMORY[0x28223BE20](v10);
  v83 = &v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE134(0, &qword_28034A740, MEMORY[0x277CC9788], MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v12 - 8);
  v73 = &v67 - v13;
  v14 = sub_269BF87B8();
  v80 = *(v14 - 8);
  v81 = v14;
  v15 = MEMORY[0x28223BE20](v14);
  v75 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v71 = &v67 - v17;
  v18 = sub_269BF8398();
  v78 = *(v18 - 8);
  v79 = v18;
  MEMORY[0x28223BE20](v18);
  v77 = &v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_269BF8728();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v67 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_269BF8338();
  v87 = *(v24 - 8);
  v88 = v24;
  v25 = MEMORY[0x28223BE20](v24);
  v69 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v28 = &v67 - v27;
  v29 = sub_269BF8798();
  v72 = *(v29 - 8);
  v30 = MEMORY[0x28223BE20](v29);
  v32 = &v67 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v67 - v33;
  sub_269BF8328();
  sub_269BF8318();
  sub_269BDE134(0, &qword_28034A748, sub_269BDC7B4, MEMORY[0x277D84560]);
  v35 = swift_allocObject();
  v36 = MEMORY[0x277D83B88];
  *(v35 + 16) = xmmword_269BF9B40;
  v37 = MEMORY[0x277D83C10];
  *(v35 + 56) = v36;
  *(v35 + 64) = v37;
  v74 = a1;
  *(v35 + 32) = a1;
  sub_269BF8308();
  v38 = v34;
  sub_269BF8788();
  v89 = 0;
  v90 = 0xE000000000000000;
  sub_269BF8A88();

  v89 = 0xD000000000000013;
  v90 = 0x8000000269BFB370;
  if ((a4 >> 14) > 1u)
  {
    if (a4 >> 14 != 2)
    {
      v41 = v29;
      if (a4 == 49152)
      {
        v39 = 5721932;
      }

      else
      {
        v39 = 0x574F4C59524556;
      }

      if (a4 == 49152)
      {
        v40 = 0xE300000000000000;
      }

      else
      {
        v40 = 0xE700000000000000;
      }

      goto LABEL_17;
    }

    v40 = 0xE200000000000000;
    v39 = 19279;
  }

  else
  {
    if (a4 >> 14)
    {
      v39 = 1212631368;
    }

    else
    {
      v39 = 0x4E454C4C45435845;
    }

    if (a4 >> 14)
    {
      v40 = 0xE400000000000000;
    }

    else
    {
      v40 = 0xE900000000000054;
    }
  }

  v41 = v29;
LABEL_17:
  v42 = v69;
  MEMORY[0x26D64C060](v39, v40);

  MEMORY[0x26D64C060](95, 0xE100000000000000);
  sub_269BF8778();

  (*(v21 + 104))(v23, *MEMORY[0x277CC9BD8], v20);
  sub_269BF8748();
  (*(v21 + 8))(v23, v20);
  v44 = v87;
  v43 = v88;
  sub_269BF8778();

  v45 = v38;
  v46 = v72;
  v47 = *(v72 + 16);
  v70 = v45;
  v47(v32);
  sub_269BF87A8();
  (*(v44 + 16))(v42, v28, v43);
  sub_269BDC818();
  v48 = sub_269BF8978();
  v69 = v41;
  v68 = v28;
  if (!v48)
  {
    v49 = [objc_opt_self() mainBundle];
  }

  v50 = sub_269BF84C8();
  v51 = *(v50 - 8);
  v52 = v73;
  (*(v51 + 16))(v73, v76, v50);
  (*(v51 + 56))(v52, 0, 1, v50);
  v53 = v77;
  sub_269BF8388();
  sub_269BDC864(1, v74);
  sub_269BDE524(0, &qword_28034A7E8, MEMORY[0x277D837D0], MEMORY[0x277D84560]);
  v54 = swift_allocObject();
  *(v54 + 16) = xmmword_269BF9B60;
  v55 = v75;
  sub_269BF8738();
  v56 = sub_269BDF7A8(v55);
  v58 = v57;
  v59 = v81;
  v60 = *(v80 + 8);
  v60(v55, v81);
  *(v54 + 32) = v56;
  *(v54 + 40) = v58;
  v61 = v83;
  sub_269BF82D8();
  sub_269BDDB38(v86);
  (*(v84 + 8))(v61, v85);
  *(v54 + 48) = sub_269BF8808();
  *(v54 + 56) = v62;
  sub_269BF8738();
  v63 = sub_269BDF7A8(v55);
  v65 = v64;
  v60(v55, v59);
  *(v54 + 64) = v63;
  *(v54 + 72) = v65;
  (*(v78 + 8))(v53, v79);
  (*(v87 + 8))(v68, v88);
  (*(v46 + 8))(v70, v69);
  return v54;
}

uint64_t sub_269BDDA24(unint64_t a1)
{
  v1 = sub_269BF83C8();
  MEMORY[0x28223BE20](v1 - 8);
  v2 = sub_269BF8B88();
  MEMORY[0x26D64C060](v2);

  sub_269BF83B8();
  return sub_269BF83A8();
}

uint64_t sub_269BDDB38@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  sub_269BDE30C(0);
  v33 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v32 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v28 - v5;
  v7 = sub_269BF8378();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE0B4(0);
  v12 = v11;
  MEMORY[0x28223BE20](v11);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_269BDE374(0, &qword_28034A7D8, MEMORY[0x277D84328]);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - v16;
  v18 = sub_269BF82E8();
  v19 = sub_269BDE410(&qword_28034A728, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
  v35 = v18;
  v20 = v19;
  sub_269BF8908();
  sub_269BDE410(&qword_28034A7E0, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
  result = sub_269BF8718();
  if (result)
  {
    sub_269BF8918();
    sub_269BDE410(&qword_28034A788, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    result = sub_269BF86F8();
    if (result)
    {
      v31 = v1;
      v22 = *(v8 + 32);
      v22(v6, v17, v7);
      v29 = v12;
      v30 = v20;
      v23 = v8;
      v25 = v32;
      v24 = v33;
      v22(&v6[*(v33 + 48)], v10, v7);
      sub_269BDE458(v6, v25);
      v26 = *(v24 + 48);
      v22(v14, v25, v7);
      v27 = *(v23 + 8);
      v27(v25 + v26, v7);
      sub_269BDE4BC(v6, v25, sub_269BDE30C);
      v22(&v14[*(v29 + 36)], (v25 + *(v24 + 48)), v7);
      v27(v25, v7);
      sub_269BF8928();
      return sub_269BDE24C(v14, sub_269BDE0B4);
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_269BDDF38(uint64_t a1, uint64_t a2)
{
  sub_269BDE134(0, &qword_28034A738, MEMORY[0x277CC9640], MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_269BDDFCC()
{
  result = qword_28034A768;
  if (!qword_28034A768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A768);
  }

  return result;
}

void sub_269BDE020(uint64_t a1)
{
  if (!qword_28034A770)
  {
    sub_269BDE524(255, &qword_28034A778, MEMORY[0x277D83B88], MEMORY[0x277D83D88]);
    sub_269BDE0B4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A770);
    }
  }
}

void sub_269BDE0D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x277CC8A50], MEMORY[0x277CC8A48]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_269BDE134(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269BDE198(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, void, void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_269BDE0D4(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_269BDE1DC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_269BDE134(0, a2, a3, MEMORY[0x277D83D88]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_269BDE24C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_269BDE2AC(uint64_t a1)
{
  if (!qword_28034A7C8)
  {
    sub_269BF82C8();
    v1 = sub_269BF8C88();
    if (!v2)
    {
      atomic_store(v1, &qword_28034A7C8);
    }
  }
}

void sub_269BDE30C(uint64_t a1)
{
  if (!qword_28034A7D0)
  {
    sub_269BF8378();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_28034A7D0);
    }
  }
}

void sub_269BDE374(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = sub_269BF8378();
    v7 = sub_269BDE410(&qword_28034A788, MEMORY[0x277CC8C20], MEMORY[0x277CC8C28]);
    v8 = a3(a1, v6, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_269BDE410(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_269BDE458(uint64_t a1, uint64_t a2)
{
  sub_269BDE30C(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_269BDE4BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_269BDE524(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_269BDE574(unsigned int a1)
{
  if ((a1 >> 14) <= 1u)
  {
    if (a1 >> 14)
    {
      v16 = (a1 >> 8) & 0x3F;
      v33 = 0x5F48474948;
      v17 = a1;
      v18 = 0xE800000000000000;
      v19 = 0x544445424554414CLL;
      v20 = 0xEB00000000454D49;
      v21 = 0x4E494E454B415741;
      v22 = 0xEA00000000005347;
      if (a1 != 3)
      {
        v21 = 0x4D4954454B415741;
        v22 = 0xE900000000000045;
      }

      if (a1 != 2)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = 0x444542594C524145;
      if (a1)
      {
        v18 = 0xEC000000454D4954;
      }

      else
      {
        v23 = 0x4E4F495441525544;
      }

      if (a1 <= 1u)
      {
        v24 = v23;
      }

      else
      {
        v24 = v19;
      }

      if (v17 <= 1)
      {
        v25 = v18;
      }

      else
      {
        v25 = v20;
      }

      MEMORY[0x26D64C060](v24, v25);

      MEMORY[0x26D64C060](95, 0xE100000000000000);
      v26 = 0xE800000000000000;
      v27 = 0x544445424554414CLL;
      v28 = 0xEB00000000454D49;
      v29 = 0x4E494E454B415741;
      v30 = 0xEA00000000005347;
      if (v16 != 3)
      {
        v29 = 0x4D4954454B415741;
        v30 = 0xE900000000000045;
      }

      if (v16 != 2)
      {
        v27 = v29;
        v28 = v30;
      }

      v31 = 0x444542594C524145;
      if (v16)
      {
        v26 = 0xEC000000454D4954;
      }

      else
      {
        v31 = 0x4E4F495441525544;
      }

      if (v16 <= 1)
      {
        v7 = v31;
      }

      else
      {
        v7 = v27;
      }

      if (v16 <= 1)
      {
        v8 = v26;
      }

      else
      {
        v8 = v28;
      }
    }

    else
    {
      v1 = 0xEA00000000005347;
      v2 = 0x4E4F495441525544;
      v33 = 0x4E454C4C45435845;
      v3 = a1;
      v4 = 0xE800000000000000;
      v5 = 0x544445424554414CLL;
      v6 = 0x4E494E454B415741;
      if (a1 != 3)
      {
        v6 = 0x4D4954454B415741;
        v1 = 0xE900000000000045;
      }

      if (a1 == 2)
      {
        v1 = 0xEB00000000454D49;
      }

      else
      {
        v5 = v6;
      }

      if (a1)
      {
        v2 = 0x444542594C524145;
        v4 = 0xEC000000454D4954;
      }

      if (a1 <= 1u)
      {
        v7 = v2;
      }

      else
      {
        v7 = v5;
      }

      if (v3 <= 1)
      {
        v8 = v4;
      }

      else
      {
        v8 = v1;
      }
    }

LABEL_55:
    MEMORY[0x26D64C060](v7, v8);

    return v33;
  }

  if (a1 >> 14 == 2)
  {
    v9 = 0x4E4F495441525544;
    v10 = a1;
    v33 = 6245199;
    v11 = 0xE800000000000000;
    v12 = 0x544445424554414CLL;
    v13 = 0xEB00000000454D49;
    v14 = 0x4E494E454B415741;
    v15 = 0xEA00000000005347;
    if (a1 != 3)
    {
      v14 = 0x4D4954454B415741;
      v15 = 0xE900000000000045;
    }

    if (a1 != 2)
    {
      v12 = v14;
      v13 = v15;
    }

    if (a1)
    {
      v9 = 0x444542594C524145;
      v11 = 0xEC000000454D4954;
    }

    if (a1 <= 1u)
    {
      v7 = v9;
    }

    else
    {
      v7 = v12;
    }

    if (v10 <= 1)
    {
      v8 = v11;
    }

    else
    {
      v8 = v13;
    }

    goto LABEL_55;
  }

  if (a1 == 49152)
  {
    return 5721932;
  }

  else
  {
    return 0x574F4C59524556;
  }
}

uint64_t sub_269BDE91C(uint64_t a1, unsigned int a2)
{
  if ((a2 >> 14) <= 1u)
  {
    if (a2 >> 14)
    {
      MEMORY[0x26D64C450](1);
      MEMORY[0x26D64C450](a2);
      v3 = (a2 >> 8) & 0x3F;
      return MEMORY[0x26D64C450](v3);
    }

    MEMORY[0x26D64C450](0);
    goto LABEL_6;
  }

  if (a2 >> 14 == 2)
  {
    MEMORY[0x26D64C450](2);
LABEL_6:
    v3 = a2;
    return MEMORY[0x26D64C450](v3);
  }

  if (a2 == 49152)
  {
    v3 = 3;
  }

  else
  {
    v3 = 4;
  }

  return MEMORY[0x26D64C450](v3);
}

uint64_t sub_269BDE9B0(unsigned int a1)
{
  sub_269BF8C18();
  if ((a1 >> 14) <= 1u)
  {
    if (a1 >> 14)
    {
      MEMORY[0x26D64C450](1);
      MEMORY[0x26D64C450](a1);
      v2 = (a1 >> 8) & 0x3F;
      goto LABEL_11;
    }

    MEMORY[0x26D64C450](0);
    goto LABEL_6;
  }

  if (a1 >> 14 == 2)
  {
    MEMORY[0x26D64C450](2);
LABEL_6:
    v2 = a1;
    goto LABEL_11;
  }

  if (a1 == 49152)
  {
    v2 = 3;
  }

  else
  {
    v2 = 4;
  }

LABEL_11:
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BDEA70()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 10);
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  MEMORY[0x26D64C450](v2);
  sub_269BF8C38();
  MEMORY[0x26D64C450](v3);
  return sub_269BF8C58();
}

uint64_t sub_269BDEAF8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 10);
  MEMORY[0x26D64C450](*v0);
  MEMORY[0x26D64C450](v1);
  sub_269BF8C38();
  return MEMORY[0x26D64C450](v2);
}

uint64_t sub_269BDEB58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 10);
  sub_269BF8C18();
  MEMORY[0x26D64C450](v2);
  MEMORY[0x26D64C450](v3);
  sub_269BF8C38();
  MEMORY[0x26D64C450](v4);
  return sub_269BF8C58();
}

BOOL sub_269BDEBDC(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && ((*(a1 + 9) ^ *(a2 + 9)) & 1) == 0)
  {
    return *(a1 + 10) == *(a2 + 10);
  }

  return result;
}

uint64_t sub_269BDEC34(uint64_t a1)
{
  v2 = *v1;
  sub_269BF8C18();
  v3 = v2 >> 14;
  if (v2 >> 14 <= 1)
  {
    if (v3)
    {
      MEMORY[0x26D64C450](1);
      MEMORY[0x26D64C450](v2);
      v5 = (v2 >> 8) & 0x3F;
      goto LABEL_11;
    }

    v4 = 0;
    goto LABEL_6;
  }

  if (v3 == 2)
  {
    v4 = 2;
LABEL_6:
    MEMORY[0x26D64C450](v4);
    v5 = v2;
    goto LABEL_11;
  }

  if (v2 == 49152)
  {
    v5 = 3;
  }

  else
  {
    v5 = 4;
  }

LABEL_11:
  MEMORY[0x26D64C450](v5);
  return sub_269BF8C58();
}

unint64_t sub_269BDECF0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_269BDF48C(*a1);
  *a2 = result;
  return result;
}

uint64_t _s11SleepHealth0A16ScoreNoteBuilderV08RelativeA5OnsetO9hashValueSivg_0()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t sub_269BDED70(uint64_t a1)
{
  v2 = *v1;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

uint64_t sub_269BDEDB4(uint64_t a1, int a2)
{
  v2 = a2;
  if ((a2 & 0xFE0000) != 0)
  {
    v3 = 0;
  }

  else
  {
    v3 = 0x646C6C255FLL;
  }

  if ((a2 & 0xFE0000) != 0)
  {
    v4 = 0xE000000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  v5 = sub_269BF8B88();
  MEMORY[0x26D64C060](v5);

  MEMORY[0x26D64C060](v3, v4);

  if (v2)
  {
    if (v2 == 1)
    {
      v6 = 1497449567;
    }

    else
    {
      v6 = 0;
    }

    if (v2 == 1)
    {
      v7 = 0xE400000000000000;
    }

    else
    {
      v7 = 0xE000000000000000;
    }
  }

  else
  {
    v7 = 0xE600000000000000;
    v6 = 0x544847494E5FLL;
  }

  v8 = (v2 & 0x100) == 0;
  if ((v2 & 0x100) != 0)
  {
    v9 = 0xE300000000000000;
  }

  else
  {
    v9 = 0xE000000000000000;
  }

  if (v8)
  {
    v10 = 0;
  }

  else
  {
    v10 = 4203871;
  }

  MEMORY[0x26D64C060](v6, v7);

  MEMORY[0x26D64C060](v10, v9);

  return 86;
}

BOOL sub_269BDEEE0(unsigned __int16 a1, unsigned __int16 a2)
{
  if ((a1 >> 14) > 1u)
  {
    if (a1 >> 14 != 2)
    {
      if (a1 == 49152)
      {
        if (a2 == 49152)
        {
          return 1;
        }
      }

      else if (a2 == 49153)
      {
        return 1;
      }

      return 0;
    }

    if ((a2 & 0xC000) == 0x8000)
    {
      return (a2 ^ a1) == 0;
    }

    return 0;
  }

  if (!(a1 >> 14))
  {
    if (a2 >= 0x4000u)
    {
      return 0;
    }

    return (a2 ^ a1) == 0;
  }

  if ((a2 & 0xC000) != 0x4000)
  {
    return 0;
  }

  return a2 == a1 && ((a2 ^ a1) & 0x3F00) == 0;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote.Contributor(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepScoreNote.Contributor(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote.Customization(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for SleepScoreNote.Customization(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 1;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote.Level(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x3FD)
  {
    goto LABEL_17;
  }

  if (a2 + 64515 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 64515 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 64515;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 64515;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 64515;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 14) | (4 * ((*a1 >> 6) & 0xE0 | (*a1 >> 3)))) ^ 0x3FF;
  if (v6 >= 0x3FC)
  {
    v6 = -1;
  }

  return v6 + 1;
}

_WORD *storeEnumTagSinglePayload for SleepScoreNote.Level(_WORD *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 64515 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 64515 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x3FD)
  {
    v4 = 0;
  }

  if (a2 > 0x3FC)
  {
    v5 = ((a2 - 1021) >> 16) + 1;
    *result = a2 - 1021;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        result[1] = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
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

    result[1] = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    v6 = (-a2 >> 2) - (a2 << 8);
    *result = (v6 << 6) & 0xF800 | (8 * (v6 & 0x1F));
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_269BDF30C(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = v1 >> 14;
  v3 = (v1 & 7 | (8 * ((v1 >> 8) & 7))) + 3;
  if (v2 == 3)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

_WORD *sub_269BDF340(_WORD *result, unsigned int a2)
{
  if (a2 < 3)
  {
    *result = *result & 0x707 | (a2 << 14);
  }

  else
  {
    *result = (32 * (a2 - 3)) & 0x700 | (a2 - 3) & 7 | 0xC000;
  }

  return result;
}

unint64_t sub_269BDF388()
{
  result = qword_28034A7F0;
  if (!qword_28034A7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A7F0);
  }

  return result;
}

unint64_t sub_269BDF3E0()
{
  result = qword_28034A7F8;
  if (!qword_28034A7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A7F8);
  }

  return result;
}

unint64_t sub_269BDF438()
{
  result = qword_28034A800;
  if (!qword_28034A800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A800);
  }

  return result;
}

unint64_t sub_269BDF48C(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreComponent(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreComponent(uint64_t result, unsigned int a2, unsigned int a3)
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

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreNote(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FD && *(a1 + 19))
  {
    return (*a1 + 1021);
  }

  v3 = ((*a1 >> 14) | (4 * ((*a1 >> 6) & 0xE0 | (*a1 >> 3)))) ^ 0x3FF;
  if (v3 >= 0x3FC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SleepScoreNote(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FC)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 1021;
    *(result + 8) = 0;
    if (a3 >= 0x3FD)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FD)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) - (a2 << 8);
      *result = (v3 << 6) & 0xF800 | (8 * (v3 & 0x1F));
    }
  }

  return result;
}

unint64_t sub_269BDF6DC()
{
  result = qword_28034A808;
  if (!qword_28034A808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A808);
  }

  return result;
}

unint64_t sub_269BDF734()
{
  result = qword_28034A810;
  if (!qword_28034A810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A810);
  }

  return result;
}

uint64_t sub_269BDF7A8(uint64_t a1)
{
  v2 = sub_269BF84C8();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = sub_269BF87B8();
  MEMORY[0x28223BE20](v3);
  (*(v5 + 16))(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  sub_269BDC818();
  if (!sub_269BF8978())
  {
    v6 = [objc_opt_self() mainBundle];
  }

  sub_269BF8488();
  return sub_269BF87F8();
}

uint64_t SleepScoreMetricsDaySummaryEnumerator.init(_:baselineDays:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  result = type metadata accessor for SleepScoreMetricsDaySummaryEnumerator(0, a3, a4, v9);
  *(a5 + *(result + 36)) = a2;
  return result;
}

uint64_t SleepScoreMetricsDaySummaryEnumerator.init<A>(_:baselineDays:suffixLimit:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a7@<X8>)
{
  v26 = a7;
  v12 = *(a5 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v13);
  v19 = &v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v15, a1, v20);
  result = a2 + a3;
  if (__OFADD__(a2, a3))
  {
    __break(1u);
  }

  else
  {
    sub_269BF86D8();
    (*(v12 + 8))(a1, a5);
    v22 = *(swift_getAssociatedConformanceWitness() + 8);
    v23 = v26;
    (*(v17 + 32))(v26, v19, a4);
    result = type metadata accessor for SleepScoreMetricsDaySummaryEnumerator(0, a4, v22, v24);
    *(v23 + *(result + 36)) = a2;
  }

  return result;
}

uint64_t SleepScoreMetricsDaySummaryEnumerator.makeIterator()(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  v8 = swift_allocBox();
  v10 = v9;
  v11 = *(v1 + *(a1 + 36));
  v12 = *(v7 + 20);
  v13 = sub_269BF8688();
  (*(*(v13 - 8) + 56))(&v10[v12], 1, 1, v13);
  *&v10[*(v7 + 24)] = MEMORY[0x277D84F90];
  *v10 = v11;
  v14 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  v15 = swift_allocBox();
  (*(v4 + 16))(v6, v1, v3);
  sub_269BF8858();
  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = v14;
  v16[4] = v15;
  v16[5] = v8;
  sub_269BDB15C(0);
  return sub_269BF8A28();
}

uint64_t sub_269BDFD7C@<X0>(void *a5@<X8>)
{
  v21 = a5;
  sub_269BE0518(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary, MEMORY[0x277D83D88]);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v20 - v6;
  v8 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v20 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAssociatedTypeWitness();
  swift_projectBox();
  type metadata accessor for SleepScoreMetricsDaySummaryBuilder(0);
  swift_projectBox();
  v11 = (v9 + 48);
  while (1)
  {
    swift_beginAccess();
    swift_getAssociatedConformanceWitness();
    sub_269BF89B8();
    swift_endAccess();
    v12 = v22;
    if (!v22)
    {
      sub_269BDB15C(0);
      return (*(*(v13 - 8) + 56))(v21, 1, 1, v13);
    }

    swift_beginAccess();
    sub_269BD3ED0(v12, v7);
    swift_endAccess();
    if ((*v11)(v7, 1, v8) != 1)
    {
      break;
    }

    sub_269BE057C(v7);
  }

  v15 = v20;
  sub_269BE0608(v7, v20);
  sub_269BDB15C(0);
  v17 = v16;
  v18 = *(v16 + 48);
  v19 = v21;
  *v21 = v12;
  sub_269BE0608(v15, v19 + v18);
  return (*(*(v17 - 8) + 56))(v19, 0, 1, v17);
}

unint64_t sub_269BE0074()
{
  result = qword_28034A818;
  if (!qword_28034A818)
  {
    sub_269BE0518(255, &qword_28034A820, sub_269BDB15C, MEMORY[0x277D84048]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A818);
  }

  return result;
}

uint64_t sub_269BE00FC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = SleepScoreMetricsDaySummaryEnumerator.makeIterator()(a1);
  result = (*(*(a1 - 8) + 8))(v2, a1);
  *a2 = v5;
  return result;
}

uint64_t sub_269BE0174(uint64_t a1, uint64_t a2)
{
  v4 = sub_269BE0514(v2, a1, a2);
  (*(*(a1 - 8) + 8))(v2, a1);
  return v4;
}

uint64_t sub_269BE0214(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_269BE028C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_269BE0390(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

void sub_269BE0518(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_269BE057C(uint64_t a1)
{
  sub_269BE0518(0, qword_280B614D0, type metadata accessor for SleepScoreMetricsDaySummary, MEMORY[0x277D83D88]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_269BE0608(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreMetricsDaySummary(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

SleepHealth::SleepScoreLevels __swiftcall SleepScoreLevels.init(level:)(SleepHealth::SleepScoreLevel level)
{
  v2 = *level;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  *v1 = v3;
  LOBYTE(result.rawValue) = level;
  return result;
}

uint64_t sub_269BE0710@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5++;
      v6 = v7;
      if ((v7 & ~v4) == 0)
      {
        v6 = 0;
      }

      v4 |= v6;
      --v3;
    }

    while (v3);
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  return result;
}

uint64_t SleepScoreLevels.levels.getter()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84FA0];
  if (v1)
  {
    sub_269BE0C48(&v3, 0);
    if ((v1 & 2) == 0)
    {
LABEL_3:
      if ((v1 & 4) == 0)
      {
        goto LABEL_4;
      }

      goto LABEL_10;
    }
  }

  else if ((v1 & 2) == 0)
  {
    goto LABEL_3;
  }

  sub_269BE0C48(&v4, 1);
  if ((v1 & 4) == 0)
  {
LABEL_4:
    if ((v1 & 8) == 0)
    {
      goto LABEL_5;
    }

LABEL_11:
    sub_269BE0C48(&v6, 3);
    if ((v1 & 0x10) == 0)
    {
      return v8;
    }

    goto LABEL_6;
  }

LABEL_10:
  sub_269BE0C48(&v5, 2);
  if ((v1 & 8) != 0)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v1 & 0x10) != 0)
  {
LABEL_6:
    sub_269BE0C48(&v7, 4);
  }

  return v8;
}

Swift::Bool __swiftcall SleepScoreLevels.contains(level:)(SleepHealth::SleepScoreLevel level)
{
  v1 = *level;
  v2 = SleepScoreLevels.levels.getter();
  v3 = sub_269BE0870(v1, v2);

  return v3;
}

BOOL sub_269BE0870(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v3);
  v4 = sub_269BF8C58();
  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(a2 + 48) + v6);
    result = v8 == v3;
    if (v8 == v3)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  return result;
}

uint64_t sub_269BE0948()
{
  v1 = *v0;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v1);
  return sub_269BF8C58();
}

uint64_t sub_269BE09BC(uint64_t a1)
{
  v2 = *v1;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v2);
  return sub_269BF8C58();
}

BOOL sub_269BE0A44(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *sub_269BE0A74@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *sub_269BE0AA0@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

void *sub_269BE0B78@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

Swift::Void __swiftcall SleepScoreLevels.toggle(_:)(SleepHealth::SleepScoreLevel a1)
{
  v2 = *a1;
  if (v2 <= 0x3F)
  {
    v3 = 1 << v2;
  }

  else
  {
    v3 = 0;
  }

  v4 = *v1;
  v5 = SleepScoreLevels.levels.getter();
  v6 = sub_269BE0870(v2, v5);

  v7 = v3 & v4;
  if (v6)
  {
    if (!v7)
    {
      return;
    }

    v8 = v4 & ~v3;
  }

  else
  {
    if (v7 == v3)
    {
      return;
    }

    v8 = v3 | v4;
  }

  *v1 = v8;
}

uint64_t sub_269BE0C48(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_269BF8C18();
  MEMORY[0x26D64C450](a2);
  v6 = sub_269BF8C58();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_269BE14E8(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

unint64_t sub_269BE0D44()
{
  result = qword_28034A828;
  if (!qword_28034A828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A828);
  }

  return result;
}

unint64_t sub_269BE0D9C()
{
  result = qword_28034A830;
  if (!qword_28034A830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A830);
  }

  return result;
}

unint64_t sub_269BE0DF0()
{
  result = qword_28034A838;
  if (!qword_28034A838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A838);
  }

  return result;
}

unint64_t sub_269BE0E48()
{
  result = qword_28034A840;
  if (!qword_28034A840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28034A840);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SleepScoreLevels(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SleepScoreLevels(uint64_t result, int a2, int a3)
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

uint64_t sub_269BE0F00(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_269BF8C18();
  sub_269BF8818();
  v8 = sub_269BF8C58();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_269BF8BB8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_269BE1634(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_269BE1050(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_269BE1ED0(0);
  result = sub_269BF8A48();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_269BF8C18();
      MEMORY[0x26D64C450](v17);
      result = sub_269BF8C58();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_269BE1294(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_269BE1E78();
  result = sub_269BF8A48();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_269BF8C18();
      sub_269BF8818();
      result = sub_269BF8C58();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_269BE14E8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_269BE1050(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_269BE17B4();
      a2 = v7;
      goto LABEL_12;
    }

    sub_269BE1A38(v5 + 1);
  }

  v8 = *v3;
  sub_269BF8C18();
  MEMORY[0x26D64C450](v4);
  result = sub_269BF8C58();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_269BF8BE8();
  __break(1u);
  return result;
}

uint64_t sub_269BE1634(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_269BE1294(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_269BE18E8();
      goto LABEL_16;
    }

    sub_269BE1C4C(v8 + 1);
  }

  v10 = *v4;
  sub_269BF8C18();
  sub_269BF8818();
  result = sub_269BF8C58();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_269BF8BB8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_269BF8BE8();
  __break(1u);
  return result;
}

void *sub_269BE17B4()
{
  v1 = v0;
  sub_269BE1ED0(0);
  v2 = *v0;
  v3 = sub_269BF8A38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void *sub_269BE18E8()
{
  v1 = v0;
  sub_269BE1E78();
  v2 = *v0;
  v3 = sub_269BF8A38();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_269BE1A38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_269BE1ED0(0);
  result = sub_269BF8A48();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_269BF8C18();
      MEMORY[0x26D64C450](v16);
      result = sub_269BF8C58();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

uint64_t sub_269BE1C4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_269BE1E78();
  result = sub_269BF8A48();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_269BF8C18();

      sub_269BF8818();
      result = sub_269BF8C58();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}