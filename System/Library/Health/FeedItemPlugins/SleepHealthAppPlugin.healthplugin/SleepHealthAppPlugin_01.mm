uint64_t sub_29E60C584@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E752A38();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v18 - v7;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for FullScreenSleepScoreCard(0);
  sub_29E658ACC(v8);
  (*(v3 + 104))(v6, *MEMORY[0x29EDBC360], v2);
  v9 = sub_29E752A28();
  v10 = *(v3 + 8);
  v10(v6, v2);
  v10(v8, v2);
  v11 = objc_opt_self();
  v12 = &selRef_systemBackgroundColor;
  if ((v9 & 1) == 0)
  {
    v12 = &selRef_secondarySystemBackgroundColor;
  }

  v13 = [v11 *v12];
  v14 = sub_29E7538E8();
  v15 = sub_29E752C58();
  v16 = sub_29E7533A8();

  *a1 = v14;
  *(a1 + 8) = v15;
  *(a1 + 16) = v16;
  return result;
}

uint64_t sub_29E60C798()
{
  v1 = sub_29E74EE78();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74ED28();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v9 = (v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x2A1C7C4A8](v7);
  v11 = v20 - v10;
  v12 = type metadata accessor for FullScreenSleepScoreCard(0);
  (*(v2 + 16))(v4, *(v0 + *(v12 + 20)) + OBJC_IVAR____TtC20SleepHealthAppPlugin30SleepScoreGalleryModelProvider_gregorianCalendar, v1);
  v20[0] = v11;
  sub_29E754038();
  v13 = *(v2 + 8);
  v13(v4, v1);
  sub_29E658A98(v4);
  sub_29E74ECE8();
  v14 = sub_29E66B0E8(v11, v9);
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v9, v5);
  v13(v4, v1);
  v20[2] = v14;
  v20[3] = v16;
  sub_29E60DE10();
  v18 = sub_29E753608();
  v17(v20[0], v5);
  return v18;
}

uint64_t sub_29E60CA00(uint64_t a1)
{
  v2 = sub_29E753178();
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E60DA54(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v8 = sub_29E753158();
  MEMORY[0x2A1C7C4A8](v8);
  *(&v11 - 2) = a1;
  sub_29E753DC8();
  sub_29E60DAF4(&qword_2A1856B88, MEMORY[0x29EDC4308], MEMORY[0x29EDC4300]);
  sub_29E752A68();
  v9 = sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54, MEMORY[0x29EDBBEC0]);
  MEMORY[0x29ED95AD0](v7, v4, v9);
  (*(v5 + 8))(v7, v4);
}

uint64_t sub_29E60CC64(uint64_t a1)
{
  v2 = type metadata accessor for FullScreenSleepScoreCard(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E60DBC0(a1, &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_29E60DC88(&v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  sub_29E753DB8();
}

uint64_t sub_29E60CDD0(uint64_t a1)
{
  v2 = sub_29E752EB8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E60DC24(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  MEMORY[0x2A1C7C4A8](v6);
  v8 = &v16 - v7;
  v9 = sub_29E752AD8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for FullScreenSleepScoreCard(0);
  sub_29E60DD7C(a1 + *(v13 + 28), v8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v8, v9);
  }

  else
  {
    sub_29E7546B8();
    v14 = sub_29E753358();
    sub_29E751F78();

    sub_29E752EA8();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
  }

  sub_29E752AC8();
  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_29E60D068()
{
  sub_29E60D1EC(0);
  sub_29E60D358(255);
  sub_29E60D9A0(255);
  sub_29E60D414(255);
  sub_29E60D498(255);
  sub_29E60D7E8();
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  sub_29E60DA54(255);
  sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54, MEMORY[0x29EDBBEC0]);
  swift_getOpaqueTypeConformance2();
  swift_getOpaqueTypeConformance2();
  return sub_29E752C38();
}

void sub_29E60D1EC(uint64_t a1)
{
  if (!qword_2A1856B08)
  {
    sub_29E60D358(255);
    sub_29E60D9A0(255);
    sub_29E60D414(255);
    sub_29E60D498(255);
    sub_29E60D7E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E60DA54(255);
    sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B08);
    }
  }
}

void sub_29E60D358(uint64_t a1)
{
  if (!qword_2A1856B10)
  {
    sub_29E60D414(255);
    sub_29E60D498(255);
    sub_29E60D7E8();
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B10);
    }
  }
}

void sub_29E60D414(uint64_t a1)
{
  if (!qword_2A1856B18)
  {
    sub_29E60D498(255);
    sub_29E60D7E8();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B18);
    }
  }
}

void sub_29E60D498(uint64_t a1)
{
  if (!qword_2A1856B20)
  {
    sub_29E60D698(255, &qword_2A1856B28, sub_29E60D588, sub_29E60D5E8, MEMORY[0x29EDBBEA0]);
    sub_29E60D698(255, &qword_2A1856B48, sub_29E60D718, sub_29E60D770, MEMORY[0x29EDBC7D8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856B20);
    }
  }
}

void sub_29E60D588(uint64_t a1)
{
  if (!qword_2A1856B30)
  {
    type metadata accessor for SleepScoreCard(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856B30);
    }
  }
}

unint64_t sub_29E60D5E8()
{
  result = qword_2A1856B38;
  if (!qword_2A1856B38)
  {
    sub_29E60D588(255);
    sub_29E60DAF4(&qword_2A1856B40, type metadata accessor for SleepScoreCard, &unk_29E769C64);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B38);
  }

  return result;
}

void sub_29E60D698(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4();
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_29E60D718()
{
  if (!qword_2A1856B50)
  {
    v0 = sub_29E752C28();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856B50);
    }
  }
}

unint64_t sub_29E60D770()
{
  result = qword_2A1856B58;
  if (!qword_2A1856B58)
  {
    sub_29E60D718();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B58);
  }

  return result;
}

unint64_t sub_29E60D7E8()
{
  result = qword_2A1856B60;
  if (!qword_2A1856B60)
  {
    sub_29E60D498(255);
    sub_29E60D868();
    sub_29E60D904();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B60);
  }

  return result;
}

unint64_t sub_29E60D868()
{
  result = qword_2A1856B68;
  if (!qword_2A1856B68)
  {
    sub_29E60D698(255, &qword_2A1856B28, sub_29E60D588, sub_29E60D5E8, MEMORY[0x29EDBBEA0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B68);
  }

  return result;
}

unint64_t sub_29E60D904()
{
  result = qword_2A1856B70;
  if (!qword_2A1856B70)
  {
    sub_29E60D698(255, &qword_2A1856B48, sub_29E60D718, sub_29E60D770, MEMORY[0x29EDBC7D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856B70);
  }

  return result;
}

void sub_29E60D9A0(uint64_t a1)
{
  if (!qword_2A1856B78)
  {
    sub_29E60DA54(255);
    sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54, MEMORY[0x29EDBBEC0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856B78);
    }
  }
}

void sub_29E60DA54(uint64_t a1)
{
  if (!qword_2A1856B80)
  {
    sub_29E753DC8();
    sub_29E60DAF4(&qword_2A1856B88, MEMORY[0x29EDC4308], MEMORY[0x29EDC4300]);
    v1 = sub_29E752A78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856B80);
    }
  }
}

uint64_t sub_29E60DAF4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E60DB44(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_29E60DB54(uint64_t a1)
{
  sub_29E60D498(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E60DBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullScreenSleepScoreCard(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_29E60DC24(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E60DC88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FullScreenSleepScoreCard(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E60DCEC()
{
  v1 = *(type metadata accessor for FullScreenSleepScoreCard(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E60CDD0(v2);
}

uint64_t sub_29E60DD4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_29E752E28();
  *a1 = result & 1;
  return result;
}

uint64_t sub_29E60DD7C(uint64_t a1, uint64_t a2)
{
  sub_29E60DC24(0, &qword_2A1856978, MEMORY[0x29EDBBED0], MEMORY[0x29EDBC388]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_29E60DE10()
{
  result = qword_2A1A7BE18;
  if (!qword_2A1A7BE18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1A7BE18);
  }

  return result;
}

void sub_29E60DE64(uint64_t a1)
{
  if (!qword_2A1856BA0)
  {
    sub_29E752B78();
    sub_29E60D1EC(255);
    sub_29E60D358(255);
    sub_29E60D9A0(255);
    sub_29E60D414(255);
    sub_29E60D498(255);
    sub_29E60D7E8();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_29E60DA54(255);
    sub_29E60DAF4(&qword_2A1856B90, sub_29E60DA54, MEMORY[0x29EDBBEC0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    v1 = sub_29E752C48();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856BA0);
    }
  }
}

id sub_29E60E000()
{
  v27[1] = *MEMORY[0x29EDCA608];
  v1 = sub_29E752098();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v5 = *(v0 + 16);
  v6 = sub_29E74EC98();
  v27[0] = 0;
  v7 = [v5 ageWithCurrentDate:v6 error:v27];

  v8 = v27[0];
  if (!v7)
  {
    v9 = v8;
    v10 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v11 = v10;
    v12 = sub_29E752088();
    v13 = sub_29E7546A8();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27[0] = v26;
      *v14 = 136446466;
      v15 = sub_29E755178();
      v17 = sub_29E6B9C90(v15, v16, v27);

      *(v14 + 4) = v17;
      *(v14 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v20 + 16))(v27 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v21 = sub_29E7541F8();
      v23 = sub_29E6B9C90(v21, v22, v27);

      *(v14 + 14) = v23;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Could not fetch age from data source with error %s", v14, 0x16u);
      v24 = v26;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v24, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    else
    {
    }

    (*(v2 + 8))(v4, v1);
    return 0;
  }

  return v7;
}

uint64_t sub_29E60E374()
{
  v1 = v0;
  v30[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v6 = *(v1 + 16);
  v30[0] = 0;
  v7 = [v6 biologicalSexWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v30[0];
    v10 = HKAnalyticsPropertyValueForBiologicalSex();
    v11 = sub_29E7541D8();
  }

  else
  {
    v12 = v30[0];
    v13 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v14 = v13;
    v15 = sub_29E752088();
    v16 = sub_29E7546A8();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v30[0] = v29;
      *v17 = 136446466;
      v18 = sub_29E755178();
      v20 = sub_29E6B9C90(v18, v19, v30);

      *(v17 + 4) = v20;
      *(v17 + 12) = 2080;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v23 + 16))(v30 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v24 = sub_29E7541F8();
      v26 = sub_29E6B9C90(v24, v25, v30);

      *(v17 + 14) = v26;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s] Could not fetch biological sex from data source with error %s", v17, 0x16u);
      v27 = v29;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v27, -1, -1);
      MEMORY[0x29ED98410](v17, -1, -1);
    }

    else
    {
    }

    (*(v3 + 8))(v5, v2);
    return 0;
  }

  return v11;
}

uint64_t sub_29E60E708()
{
  sub_29E751758();

  return swift_deallocClassInstance();
}

uint64_t sub_29E60E764()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 getActivePairedDevice];
  if (!v1)
  {

    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_29E60E88C(&v6);
    return 0;
  }

  v2 = v1;
  if ([v1 valueForProperty_])
  {
    sub_29E754C38();
    sub_29E751758();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_29E60E88C(uint64_t a1)
{
  sub_29E60E8E8();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E60E8E8()
{
  if (!qword_2A1856C10)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856C10);
    }
  }
}

uint64_t sub_29E60E93C()
{
  sub_29E610314(0);
  v1 = v0;
  sub_29E6103B4(v0, qword_2A1869100);
  sub_29E61037C(v1, qword_2A1869100);
  type metadata accessor for SleepStageWidgetCell(0);
  type metadata accessor for SleepStageWidgetItem(0);
  return sub_29E754808();
}

uint64_t sub_29E60E9C0(char *a1, uint64_t a2, uint64_t a3)
{
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v7 = &v11 - v6;
  sub_29E610418(a3, &v11 - v6);
  v8 = type metadata accessor for SleepStageWidgetItem(0);
  (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin20SleepStageWidgetCell_item;
  swift_beginAccess();
  sub_29E61047C(v7, &a1[v9]);
  swift_endAccess();
  [a1 setNeedsUpdateConfiguration];
  return sub_29E610954(v7, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem);
}

uint64_t sub_29E60EB10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x29ED92410]())
  {
    v3 = sub_29E7508E8();
    v5 = v4;
    if (v3 == sub_29E7508E8() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = sub_29E755028();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_29E60EBD4()
{
  sub_29E610314(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2A1856198 != -1)
  {
    swift_once();
  }

  v8 = sub_29E61037C(v4, qword_2A1869100);
  (*(v5 + 16))(v7, v8, v4);
  type metadata accessor for SleepStageWidgetCell(0);
  sub_29E7503A8();
  sub_29E750398();
  return swift_storeEnumTagMultiPayload();
}

void sub_29E60ED1C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_29E74F698();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E610510(0);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v12 = &v15[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = v2;
  v17 = a1;
  sub_29E610590(0);
  sub_29E610688();
  sub_29E753218();
  sub_29E610850(0);
  v18[3] = v13;
  v18[4] = sub_29E61090C(&qword_2A1856C80, sub_29E610850, MEMORY[0x29EDBC030]);
  sub_29E5FEBF4(v18);
  sub_29E751088();
  sub_29E61090C(&qword_2A1856C78, MEMORY[0x29EDC24E0], MEMORY[0x29EDC24D8]);
  sub_29E753208();
  (*(v10 + 8))(v12, v9);
  MEMORY[0x29ED972D0](v18);
  (*(v5 + 104))(v7, *MEMORY[0x29EDC6AB0], v4);
  sub_29E754258();
  (*(v5 + 8))(v7, v4);
  v14 = sub_29E754198();

  [v2 setAccessibilityIdentifier_];
}

uint64_t sub_29E60F000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a1;
  v58 = a2;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6101C0(0, &qword_2A1856C88, MEMORY[0x29EDC6C50], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v50 = &v48 - v4;
  sub_29E6101C0(0, &qword_2A1856C90, MEMORY[0x29EDC6C38], v2);
  MEMORY[0x2A1C7C4A8](v5 - 8);
  v49 = &v48 - v6;
  v7 = type metadata accessor for SleepStageWidgetItem(0);
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v48 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6101C0(0, qword_2A1856C98, MEMORY[0x29EDC6C58], v2);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v48 - v11;
  v13 = sub_29E74FB08();
  v14 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v13);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_29E74FAC8();
  v56 = *(v17 - 8);
  v57 = v17;
  MEMORY[0x2A1C7C4A8](v17);
  v55 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6105F0(0);
  v51 = v19;
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v48 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E610590(0);
  v54 = v22;
  MEMORY[0x2A1C7C4A8](v22);
  v24 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v53 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v25 = OBJC_IVAR____TtC20SleepHealthAppPlugin20SleepStageWidgetCell_item;
  v26 = v52;
  swift_beginAccess();
  if ((*(v8 + 48))(v26 + v25, 1, v7))
  {
    (*(v14 + 56))(v12, 1, 1, v13);
    v27 = sub_29E74FAA8();
    (*(*(v27 - 8) + 56))(v49, 1, 1, v27);
    v28 = sub_29E74FAD8();
    (*(*(v28 - 8) + 56))(v50, 1, 1, v28);
    sub_29E74FAE8();
    if ((*(v14 + 48))(v12, 1, v13) != 1)
    {
      sub_29E610954(v12, qword_2A1856C98, MEMORY[0x29EDC6C58]);
    }
  }

  else
  {
    v29 = v48;
    sub_29E610418(v26 + v25, v48);
    v30 = *(v14 + 32);
    v30(v12, v29, v13);
    (*(v14 + 56))(v12, 0, 1, v13);
    v30(v16, v12, v13);
  }

  v31 = v55;
  sub_29E74FAB8();
  KeyPath = swift_getKeyPath();
  v33 = &v21[*(v51 + 36)];
  sub_29E6101C0(0, &qword_2A1856C48, MEMORY[0x29EDBD230], MEMORY[0x29EDBC938]);
  v35 = *(v34 + 28);
  v36 = *MEMORY[0x29EDBD228];
  v37 = sub_29E754058();
  (*(*(v37 - 8) + 104))(v33 + v35, v36, v37);
  *v33 = KeyPath;
  (*(v56 + 32))(v21, v31, v57);
  LOBYTE(KeyPath) = sub_29E7533A8();
  sub_29E7529C8();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  sub_29E6109C4(v21, v24, sub_29E6105F0);
  v46 = &v24[*(v54 + 36)];
  *v46 = KeyPath;
  *(v46 + 1) = v39;
  *(v46 + 2) = v41;
  *(v46 + 3) = v43;
  *(v46 + 4) = v45;
  v46[40] = 0;
  sub_29E6109C4(v24, v58, sub_29E610590);
}

uint64_t sub_29E60F6FC(uint64_t a1)
{
  v2 = sub_29E754058();
  MEMORY[0x2A1C7C4A8](v2);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  return sub_29E752D38();
}

uint64_t sub_29E60F7C4(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E751078();
}

id sub_29E60FB1C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_29E60FBBC(uint64_t a1)
{
  sub_29E6101C0(319, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_29E60FCC4(uint64_t a1)
{
  result = sub_29E74FB08();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E60FD64(void *a1)
{
  v31 = a1;
  v2 = MEMORY[0x29EDC9C68];
  sub_29E6101C0(0, &qword_2A1856C20, MEMORY[0x29EDC26F8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v5 = &v29 - v4;
  v6 = sub_29E7513C8();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x2A1C7C4A8](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v8);
  v30 = &v29 - v11;
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, v2);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v29 - v13;
  v15 = type metadata accessor for SleepStageWidgetItem(0);
  v16 = *(v15 - 8);
  MEMORY[0x2A1C7C4A8](v15);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = OBJC_IVAR____TtC20SleepHealthAppPlugin20SleepStageWidgetCell_item;
  swift_beginAccess();
  sub_29E610224(v1 + v19, v14);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    return sub_29E610954(v14, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem);
  }

  sub_29E6109C4(v14, v18, type metadata accessor for SleepStageWidgetItem);
  v21 = v31;
  sub_29E73D71C(v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_29E6102B8(v18);
    return sub_29E610954(v5, &qword_2A1856C20, MEMORY[0x29EDC26F8]);
  }

  else
  {
    v22 = v30;
    (*(v7 + 32))(v30, v5, v6);
    v23 = [v21 resolvedHealthToolbox];
    (*(v7 + 16))(v10, v22, v6);
    v24 = [objc_allocWithZone(MEMORY[0x29EDC68A0]) initWithSource:*MEMORY[0x29EDC67F8] presentation:*MEMORY[0x29EDC6798]];
    v25 = objc_allocWithZone(type metadata accessor for SleepRoomViewController(0));
    v26 = sub_29E69F6AC(v23, v10, v24);

    v27 = [v21 navigationController];
    if (v27)
    {
      v28 = v27;
      [v27 pushViewController:v26 animated:1];

      v26 = v28;
    }

    (*(v7 + 8))(v22, v6);
    return sub_29E6102B8(v18);
  }
}

void sub_29E6101C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E610224(uint64_t a1, uint64_t a2)
{
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E6102B8(uint64_t a1)
{
  v2 = type metadata accessor for SleepStageWidgetItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E610314(uint64_t a1)
{
  if (!qword_2A1856C28)
  {
    type metadata accessor for SleepStageWidgetCell(255);
    type metadata accessor for SleepStageWidgetItem(255);
    v1 = sub_29E754818();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856C28);
    }
  }
}

uint64_t sub_29E61037C(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *sub_29E6103B4(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t sub_29E610418(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepStageWidgetItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E61047C(uint64_t a1, uint64_t a2)
{
  sub_29E6101C0(0, qword_2A1A7CDE8, type metadata accessor for SleepStageWidgetItem, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E610510(uint64_t a1)
{
  if (!qword_2A1856C30)
  {
    sub_29E610590(255);
    sub_29E610688();
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856C30);
    }
  }
}

void sub_29E610590(uint64_t a1)
{
  if (!qword_2A1856C38)
  {
    sub_29E6105F0(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856C38);
    }
  }
}

void sub_29E6105F0(uint64_t a1)
{
  if (!qword_2A1856C40)
  {
    sub_29E74FAC8();
    sub_29E6101C0(255, &qword_2A1856C48, MEMORY[0x29EDBD230], MEMORY[0x29EDBC938]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856C40);
    }
  }
}

unint64_t sub_29E610688()
{
  result = qword_2A1856C50;
  if (!qword_2A1856C50)
  {
    sub_29E610590(255);
    sub_29E610708();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856C50);
  }

  return result;
}

unint64_t sub_29E610708()
{
  result = qword_2A1856C58;
  if (!qword_2A1856C58)
  {
    sub_29E6105F0(255);
    sub_29E61090C(&qword_2A1856C60, MEMORY[0x29EDC6C48], MEMORY[0x29EDC6C40]);
    sub_29E6107B8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856C58);
  }

  return result;
}

unint64_t sub_29E6107B8()
{
  result = qword_2A1856C68;
  if (!qword_2A1856C68)
  {
    sub_29E6101C0(255, &qword_2A1856C48, MEMORY[0x29EDBD230], MEMORY[0x29EDBC938]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856C68);
  }

  return result;
}

void sub_29E610850(uint64_t a1)
{
  if (!qword_2A1856C70)
  {
    sub_29E610590(255);
    sub_29E751088();
    sub_29E610688();
    sub_29E61090C(&qword_2A1856C78, MEMORY[0x29EDC24E0], MEMORY[0x29EDC24D8]);
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856C70);
    }
  }
}

uint64_t sub_29E61090C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E610954(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_29E6101C0(0, a2, a3, MEMORY[0x29EDC9C68]);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_29E6109C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E610A30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_29E610B18()
{
  (*(*(*(*v0 + qword_2A1869118) - 8) + 8))(&v0[*(*v0 + qword_2A1869118 + 16)]);

  v1 = &v0[*(*v0 + qword_2A1869118 + 32)];

  return sub_29E5F0140(v1);
}

char *sub_29E610C14()
{
  v1 = *v0;
  v2 = sub_29E750D58();
  (*(*(*(v1 + qword_2A1869118) - 8) + 8))(&v2[*(*v2 + qword_2A1869118 + 16)]);

  sub_29E5F0140(&v2[*(*v2 + qword_2A1869118 + 32)]);
  return v2;
}

uint64_t sub_29E610D40()
{
  sub_29E610C14();

  return swift_deallocClassInstance();
}

uint64_t sub_29E610EB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = *v3;
  v8 = sub_29E74ED88();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E613590(0, &qword_2A1856D78, MEMORY[0x29EDC23D8]);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v27 - v13;
  if (sub_29E7541D8() == a1 && v15 == a2)
  {

    goto LABEL_13;
  }

  v28 = v9;
  v17 = sub_29E755028();

  if (v17)
  {
LABEL_13:
    (*(*(v7 + qword_2A1869118 + 8) + 56))(*(v7 + qword_2A1869118));
    v23 = sub_29E750E98();
    (*(*(v23 - 8) + 56))(v14, 1, 1, v23);
    a3[3] = sub_29E750EB8();
    a3[4] = sub_29E61327C(&qword_2A1856D90, MEMORY[0x29EDC23E0], MEMORY[0x29EDC23C8]);
    sub_29E5FEBF4(a3);
    return sub_29E750EA8();
  }

  if (sub_29E7541D8() == a1 && v18 == a2)
  {

    v21 = v28;
  }

  else
  {
    v20 = sub_29E755028();

    v21 = v28;
    if ((v20 & 1) == 0)
    {
      a3[3] = sub_29E750788();
      a3[4] = sub_29E61327C(&qword_2A1856D80, MEMORY[0x29EDC1EC0], MEMORY[0x29EDC1EB8]);
      sub_29E5FEBF4(a3);
      return sub_29E750778();
    }
  }

  (*(*(v7 + qword_2A1869118 + 8) + 64))(*(v7 + qword_2A1869118));
  v29 = 0x74497265746F6F46;
  v30 = 0xEB000000005F6D65;
  sub_29E74ED78();
  v24 = sub_29E74ED48();
  v26 = v25;
  (*(v21 + 8))(v11, v8);
  MEMORY[0x29ED96C20](v24, v26);

  a3[3] = sub_29E751628();
  a3[4] = sub_29E61327C(&qword_2A1856D88, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
  sub_29E5FEBF4(a3);
  return sub_29E751618();
}

uint64_t sub_29E611360()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E752238();
}

uint64_t sub_29E611420()
{
  v1 = *v0;
  sub_29E750FF8();
  sub_29E7547D8();
  v2 = v1 + qword_2A1869118;
  v3 = *(v1 + qword_2A1869118);
  v4 = *(v2 + 8);
  (*(v4 + 56))(v3, v4);
  if (v5)
  {

    sub_29E750E88();
    sub_29E7547F8();
  }

  result = (*(v4 + 64))(v3, v4);
  if (v7)
  {

    sub_29E7515F8();
    return sub_29E7547E8();
  }

  return result;
}

uint64_t sub_29E6115B8()
{
  sub_29E5FECBC((v0 + qword_2A1856D20));
  sub_29E5F0140(v0 + qword_2A1856D28);
}

uint64_t sub_29E611608()
{
  v0 = sub_29E751018();
  v1 = qword_2A1856D20;

  sub_29E5FECBC((v2 + v1));
  sub_29E5F0140(v0 + qword_2A1856D28);

  return swift_deallocClassInstance();
}

void sub_29E6116C4(uint64_t a1)
{
  if (!qword_2A1856D50)
  {
    sub_29E611764();
    sub_29E61327C(&qword_2A1856D60, sub_29E611764, MEMORY[0x29EDB8A00]);
    v1 = sub_29E752668();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856D50);
    }
  }
}

void sub_29E611764()
{
  if (!qword_2A1856D58)
  {
    v0 = sub_29E7526F8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1856D58);
    }
  }
}

void sub_29E6117FC(uint64_t a1)
{
  sub_29E74F418();
  if (v1 <= 0x3F)
  {
    type metadata accessor for AccountStatusModel(319);
    if (v2 <= 0x3F)
    {
      sub_29E613590(319, &qword_2A1856D48, sub_29E6116C4);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_29E6118DC()
{
  v1 = (v0 + qword_2A1856D20);
  swift_beginAccess();
  sub_29E602E20(v1, v15);
  v2 = v16;
  v3 = v17;
  sub_29E601938(v15, v16);
  v4 = (*(v3 + 24))(v2, v3);
  sub_29E5FECBC(v15);
  if (v4)
  {
    v5 = v1[3];
    v6 = v1[4];
    v7 = sub_29E601938(v1, v5);
    v8 = *(v5 - 8);
    MEMORY[0x2A1C7C4A8](v7);
    v10 = &v14[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    (*(v8 + 16))(v10);
    v11 = (*(v6 + 48))(v5, v6);
    (*(v8 + 8))(v10, v5);
    v12 = v11 ^ 1;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_29E611A68(uint64_t result)
{
  if (result)
  {
    v2 = v1;
    v3 = *v1;
    v4 = (v1 + qword_2A1856D20);
    swift_beginAccess();
    v6 = v4[3];
    v5 = v4[4];
    v7 = sub_29E601938(v4, v6);
    v8 = *(v6 - 8);
    MEMORY[0x2A1C7C4A8](v7);
    v10 = &v15 - v9;
    (*(v8 + 16))(&v15 - v9);
    v11 = (*(v5 + 56))(v6, v5);
    v13 = v12;
    result = (*(v8 + 8))(v10, v6);
    if (v13)
    {
      if (*(v2 + qword_2A1856D30))
      {
        v14 = swift_allocObject();
        v14[2] = v2;
        v14[3] = v11;
        v14[4] = v13;
        *(swift_allocObject() + 16) = v3;

        sub_29E74F638();
      }

      else
      {
      }
    }
  }

  return result;
}

void *sub_29E611CA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = objc_opt_self();
    v6 = sub_29E754198();
    sub_29E754288();
    v7 = sub_29E754198();

    v8 = [v5 notificationsWontFireAlertControllerWithLocalizedTitle:v6 localizedDismiss:v7 completion:0];

    [v4 presentViewController:v8 animated:1 completion:0];

    return sub_29E751758();
  }

  return result;
}

uint64_t sub_29E611D9C(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752048();
  v6 = sub_29E752088();
  v7 = sub_29E7546B8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E755178();
    v12 = sub_29E6B9C90(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] Sleep should not be requesting notification permissions in Sleep Settings.", v8, 0xCu);
    sub_29E5FECBC(v9);
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);
  }

  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_29E611F48(char a1)
{
  v3 = (v1 + qword_2A1856D20);
  swift_beginAccess();
  v4 = v3[3];
  v5 = v3[4];
  v6 = sub_29E601938(v3, v4);
  v7 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = &v13[-v8];
  (*(v7 + 16))(&v13[-v8]);
  LOBYTE(v5) = (*(v5 + 48))(v4, v5);
  result = (*(v7 + 8))(v9, v4);
  if ((v5 & 1) == 0)
  {
    swift_beginAccess();
    v11 = v3[3];
    v12 = v3[4];
    sub_29E613218(v3, v11);
    (*(v12 + 32))(a1 & 1, v11, v12);
    swift_endAccess();
    return sub_29E611A68(a1 & 1);
  }

  return result;
}

uint64_t sub_29E6120E8()
{
  sub_29E74F3C8();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();

  return v0;
}

uint64_t sub_29E612220@<X0>(uint64_t *a1@<X8>)
{
  sub_29E74F418();
  sub_29E61327C(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  result = sub_29E752758();
  *a1 = result;
  return result;
}

uint64_t sub_29E61229C()
{
  sub_29E74F3A8();
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = sub_29E74E9D8();

  return v0;
}

void sub_29E6123CC(void *a1)
{
  v2 = objc_opt_self();
  a1;
  v3 = sub_29E754198();
  v4 = [v2 modelSpecificLocalizedStringKeyForKey_];

  if (v4)
  {
    sub_29E7541D8();

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E61254C()
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v2 = &v13 - v1;
  v3 = sub_29E754968();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - v8;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  if ((*(v4 + 48))(v2, 1, v3) != 1)
  {
    (*(v4 + 32))(v9, v2, v3);
    (*(v4 + 16))(v7, v9, v3);
    v11 = (*(v4 + 88))(v7, v3);
    if (v11 == *MEMORY[0x29EDC1AD0])
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_13;
      }
    }

    else if (v11 == *MEMORY[0x29EDC1AE0])
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v11 != *MEMORY[0x29EDC1AD8])
      {
        result = sub_29E754E48();
        __break(1u);
        return result;
      }

      if (qword_2A1A7D6F0 == -1)
      {
LABEL_13:
        v12 = sub_29E74E9D8();
        (*(v4 + 8))(v9, v3);
        return v12;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  sub_29E6135E4(v2);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E6129A0(void *a1, void *a2)
{
  v4 = sub_29E754968();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v23 - v9;
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v23 - v12;
  v23 = a1;
  v24 = a2;
  v14 = a1;
  v15 = a2;
  v23 = sub_29E7541F8();
  v24 = v16;
  MEMORY[0x29ED96C20](91, 0xE100000000000000);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  if ((*(v5 + 48))(v13, 1, v4))
  {
    sub_29E6135E4(v13);
  }

  else
  {
    v19 = *(v5 + 16);
    v19(v10, v13, v4);
    sub_29E6135E4(v13);
    v19(v8, v10, v4);
    v20 = (*(v5 + 88))(v8, v4);
    if (v20 == *MEMORY[0x29EDC1AD0])
    {
      (*(v5 + 8))(v10, v4);
      v18 = 0xEB000000006E4964;
      v17 = 0x656E676953746F6ELL;
      goto LABEL_10;
    }

    if (v20 == *MEMORY[0x29EDC1AE0])
    {
      (*(v5 + 8))(v10, v4);
      v18 = 0xE800000000000000;
      v17 = 0x6E4964656E676973;
      goto LABEL_10;
    }

    if (v20 == *MEMORY[0x29EDC1AD8])
    {
      v18 = 0x800000029E758890;
      (*(v5 + 8))(v10, v4);
      v17 = 0xD000000000000022;
      goto LABEL_10;
    }

    v22 = *(v5 + 8);
    v22(v10, v4);
    v22(v8, v4);
  }

  v17 = 0;
  v18 = 0xE000000000000000;
LABEL_10:
  MEMORY[0x29ED96C20](v17, v18);

  MEMORY[0x29ED96C20](93, 0xE100000000000000);
  return v23;
}

uint64_t sub_29E612D50(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();
}

uint64_t sub_29E612DCC(uint64_t a1, void **a2)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  v5 = MEMORY[0x2A1C7C4A8](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v13 - v8;
  sub_29E61365C(a1, &v13 - v8);
  v10 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E61365C(v9, v7);
  v11 = v10;
  sub_29E752898();
  return sub_29E6135E4(v9);
}

void sub_29E612EE0()
{
  v0 = objc_opt_self();
  v1 = sub_29E754198();
  v2 = [v0 modelSpecificLocalizedStringKeyForKey_];

  if (v2)
  {
    sub_29E7541D8();

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_29E612FF4(uint64_t a1)
{
  v2 = *v1;
  v3 = sub_29E750E78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v5);
  v9 = &v17 - v8;
  v10 = *(v2 + qword_2A1869118 + 8);
  v11 = *(v2 + qword_2A1869118);
  (*(v10 + 56))(v11, v10);
  if (v12)
  {

    sub_29E750E28();
  }

  else
  {
    sub_29E750E38();
  }

  (*(v10 + 64))(v11, v10);
  if (v13)
  {

    sub_29E750E18();
    (*(v4 + 8))(v9, v3);
    (*(v4 + 32))(v9, v7, v3);
  }

  else
  {
    v14 = *(v4 + 32);
    v14(v7, v9, v3);
    v14(v9, v7, v3);
  }

  v15 = sub_29E750E68();
  (*(v4 + 8))(v9, v3);
  return v15;
}

uint64_t sub_29E613218(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t sub_29E61327C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6132C4(uint64_t a1)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  MEMORY[0x2A1C7C4A8](v1 - 8);
  v3 = &v14 - v2;
  v4 = sub_29E754968();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x2A1C7C4A8](v4);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v6);
  v10 = &v14 - v9;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_29E752888();

  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_29E6135E4(v3);
    return 1;
  }

  (*(v5 + 32))(v10, v3, v4);
  (*(v5 + 16))(v8, v10, v4);
  v11 = (*(v5 + 88))(v8, v4);
  if (v11 == *MEMORY[0x29EDC1AD0] || v11 == *MEMORY[0x29EDC1AE0])
  {
    (*(v5 + 8))(v10, v4);
    return 1;
  }

  if (v11 == *MEMORY[0x29EDC1AD8])
  {
    (*(v5 + 8))(v10, v4);
    return 0;
  }

  else
  {
    result = sub_29E754E48();
    __break(1u);
  }

  return result;
}

void sub_29E613590(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754BD8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6135E4(uint64_t a1)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_29E61365C(uint64_t a1, uint64_t a2)
{
  sub_29E613590(0, &qword_2A1856D98, MEMORY[0x29EDC1AE8]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E61372C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_29E613774(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 sub_29E6137C0(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_29E6137D4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_29E61381C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E613FB4(void *a1)
{
  v2 = v1;
  v146 = a1;
  v145 = type metadata accessor for SleepScoreComponentOverlayContext(0);
  MEMORY[0x2A1C7C4A8](v145);
  v144 = &v121 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = sub_29E74EFE8();
  v122 = *(v148 - 8);
  MEMORY[0x2A1C7C4A8](v148);
  v158 = &v121 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_29E754188();
  v5 = *(v123 - 8);
  MEMORY[0x2A1C7C4A8](v123);
  v126 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = type metadata accessor for SleepScoreLevelOverlayContext(0);
  MEMORY[0x2A1C7C4A8](v143);
  v142 = &v121 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_29E74EF88();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v8);
  *&v150 = &v121 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v10);
  v157 = &v121 - v12;
  v13 = sub_29E74F098();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x2A1C7C4A8](v13);
  v141 = &v121 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v15);
  v147 = &v121 - v17;
  v18 = MEMORY[0x29EDCA190];
  v162 = MEMORY[0x29EDCA190];
  v19 = sub_29E74F078();
  v20 = *(v19 + 16);
  v124 = v2;
  if (v20)
  {
    v125 = v5;
    v161 = v18;
    v21 = v19;
    v156 = v20;
    sub_29E754E08();
    v137 = sub_29E7544C8();
    v136 = sub_29E753F58();
    v135 = objc_opt_self();
    v134 = objc_opt_self();
    v133 = *&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType];
    v23 = *(v14 + 16);
    v22 = v14 + 16;
    v155 = v23;
    v24 = (*(v22 + 64) + 32) & ~*(v22 + 64);
    v121 = v21;
    v25 = v21 + v24;
    v26 = (v22 - 8);
    v131 = (v9 + 16);
    v130 = (v9 + 88);
    v129 = *(v22 + 56);
    v128 = *MEMORY[0x29EDC68D8];
    v127 = *MEMORY[0x29EDC68E0];
    v149 = (v9 + 8);
    v154 = xmmword_29E764160;
    v140 = v8;
    v139 = v13;
    v138 = v22;
    v27 = v147;
    v132 = (v22 - 8);
    v23(v147, v25, v13);
    while (1)
    {
      v153 = sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v50 = v141;
      v155(v141, v27, v13);
      v51 = v133;
      sub_29E74F058();
      v52 = sub_29E753F48();
      v152 = *v26;
      v152(v50, v13);
      v53 = v51;
      v54 = v157;
      sub_29E74F088();
      v55 = objc_allocWithZone(MEMORY[0x29EDC4660]);
      v151 = v52;
      v56 = [v55 initWithSourceDelegate_];
      v57 = v150;
      (*v131)(v150, v54, v8);
      v58 = (*v130)(v57, v8);
      if (v58 == v128)
      {
        v28 = 1;
      }

      else if (v58 == v127)
      {
        v28 = 2;
      }

      else
      {
        (*v149)(v150, v8);
        v28 = 3;
      }

      v29 = [objc_allocWithZone(MEMORY[0x29EDC4720]) initWithDisplayType:v53 dataSource:v56 options:v28];
      v30 = [v134 hk_sleepKeyColor];
      v31 = [v135 presentationStyleWithColor:v30 options:0];

      [v31 setAxisAnnotationStyle_];
      sub_29E6163F8();
      v32 = swift_allocObject();
      *(v32 + 16) = v154;
      *(v32 + 32) = v31;
      sub_29E609B5C(0, &qword_2A1856E88, 0x29EDC4728);
      v33 = v29;
      v34 = v31;
      v35 = sub_29E7543D8();

      [v33 setUnhighlightedPresentationStyles_];

      v36 = swift_allocObject();
      *(v36 + 16) = v154;
      *(v36 + 32) = v34;
      v37 = v34;
      v38 = sub_29E7543D8();

      [v33 setHighlightedPresentationStyles_];

      [v33 setInactivePresentationStyle_];
      v39 = [objc_allocWithZone(type metadata accessor for SleepScoreChartTapOutFormatter(0)) init];
      v40 = [objc_allocWithZone(MEMORY[0x29EDC4700]) initWithGraphSeries:v33 baseDisplayType:v53 valueFormatter:v39 dataTypeCode:341];

      v8 = v140;
      (*v149)(v157, v140);
      v41 = v142;
      v42 = v147;
      sub_29E74F088();
      v43 = type metadata accessor for SleepScoreOverlayContext();
      v44 = objc_allocWithZone(v43);
      *&v44[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem] = 0;
      *&v44[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType] = v53;
      *&v44[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_overlayDisplayType] = v40;
      v45 = &v44[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider];
      v45[3] = v143;
      v45[4] = &off_2A24FE128;
      v46 = sub_29E5FEBF4(v45);
      sub_29E616D8C(v41, v46, type metadata accessor for SleepScoreLevelOverlayContext);
      v160.receiver = v44;
      v160.super_class = v43;
      v47 = v53;
      v48 = v40;
      objc_msgSendSuper2(&v160, sel_init);

      v27 = v42;
      sub_29E616DF4(v41, type metadata accessor for SleepScoreLevelOverlayContext);
      v49 = v42;
      v13 = v139;
      v26 = v132;
      v152(v49, v139);

      sub_29E754DE8();
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      v25 += v129;
      if (!--v156)
      {
        break;
      }

      v155(v27, v25, v13);
    }

    v59 = v161;
    v5 = v125;
  }

  else
  {

    v59 = MEMORY[0x29EDCA190];
  }

  v60 = v126;
  sub_29E754118();
  sub_29E65B0B4(v60);
  v62 = *(v5 + 8);
  v61 = v5 + 8;
  v63 = v123;
  v152 = v62;
  v62(v60, v123);
  sub_29E6163F8();
  v151 = v64;
  v65 = swift_allocObject();
  v150 = xmmword_29E764160;
  *(v65 + 16) = xmmword_29E764160;
  if (v59 >> 62)
  {
    v66 = sub_29E61644C();

    sub_29E754E68();
  }

  else
  {

    sub_29E755038();
    v66 = sub_29E61644C();
  }

  v67 = objc_allocWithZone(MEMORY[0x29EDC47A8]);
  sub_29E61644C();
  v68 = sub_29E7543D8();

  v69 = [v67 initWithSectionTitle:0 overlayContextItems:v68];

  *(v65 + 32) = v69;
  v70 = objc_allocWithZone(MEMORY[0x29EDC47B0]);
  v71 = sub_29E754198();

  v153 = sub_29E609B5C(0, &qword_2A1856E98, 0x29EDC47A8);
  v72 = sub_29E7543D8();

  v73 = [v70 initWithContainerTitle:v71 overlayContextSections:v72];

  v74 = v73;
  MEMORY[0x29ED96CE0]();
  if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E754418();
  }

  v149 = v74;
  sub_29E754438();
  v75 = sub_29E74EFC8();
  v76 = *(v75 + 16);
  v125 = v61;
  if (v76)
  {
    v147 = v66;
    v161 = MEMORY[0x29EDCA190];
    sub_29E754E08();
    v157 = sub_29E7544C8();
    v156 = *&v124[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType];
    v77 = v122 + 16;
    v78 = *(v122 + 16);
    v79 = (*(v122 + 80) + 32) & ~*(v122 + 80);
    v143 = v75;
    v80 = v75 + v79;
    v155 = *(v122 + 72);
    *&v154 = v122 + 8;
    v81 = v148;
    v82 = v158;
    do
    {
      v91 = v77;
      v78(v82, v80, v81);
      sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      sub_29E70509C(v146, v156, v82);
      v84 = v83;
      v85 = v144;
      v81 = v148;
      v78(v144, v158, v148);
      v86 = type metadata accessor for SleepScoreOverlayContext();
      v87 = objc_allocWithZone(v86);
      *&v87[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_currentContextItem] = 0;
      *&v87[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_baseDisplayType] = v84;
      *&v87[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_overlayDisplayType] = 0;
      v88 = &v87[OBJC_IVAR____TtC20SleepHealthAppPlugin24SleepScoreOverlayContext_itemProvider];
      v88[3] = v145;
      v88[4] = &off_2A2502AC8;
      v89 = sub_29E5FEBF4(v88);
      sub_29E616D8C(v85, v89, type metadata accessor for SleepScoreComponentOverlayContext);
      v159.receiver = v87;
      v159.super_class = v86;
      objc_msgSendSuper2(&v159, sel_init);
      v90 = v85;
      v82 = v158;
      sub_29E616DF4(v90, type metadata accessor for SleepScoreComponentOverlayContext);
      (*v154)(v82, v81);

      sub_29E754DE8();
      sub_29E754E18();
      sub_29E754E28();
      sub_29E754DF8();
      v77 = v91;
      v80 += v155;
      --v76;
    }

    while (v76);

    v92 = v161;
    v63 = v123;
  }

  else
  {

    v92 = MEMORY[0x29EDCA190];
  }

  v93 = v126;
  sub_29E754118();
  sub_29E65B0B4(v93);
  v152(v93, v63);
  v94 = swift_allocObject();
  *(v94 + 16) = v150;

  if (v92 >> 62)
  {
    sub_29E754E68();
  }

  else
  {
    sub_29E755038();
  }

  v95 = objc_allocWithZone(MEMORY[0x29EDC47A8]);
  v96 = sub_29E7543D8();

  v97 = [v95 initWithSectionTitle:0 overlayContextItems:v96];

  *(v94 + 32) = v97;
  v98 = objc_allocWithZone(MEMORY[0x29EDC47B0]);
  v99 = sub_29E754198();

  v100 = sub_29E7543D8();

  v101 = [v98 initWithContainerTitle:v99 overlayContextSections:v100];

  v102 = v101;
  MEMORY[0x29ED96CE0]();
  if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_29E754418();
  }

  sub_29E754438();
  v103 = v162;
  v104 = [v124 buildFactorContextsAllowingDeselection_];
  if (v104)
  {
    v105 = v104;
    v106 = v126;
    sub_29E754118();
    sub_29E65B0B4(v106);
    v152(v106, v63);
    v107 = swift_allocObject();
    *(v107 + 16) = v150;
    v108 = [v105 activeFactorContexts];
    sub_29E609B5C(0, &qword_2A1856EA0, 0x29EDC47C8);
    v109 = sub_29E7543F8();

    v110 = [v105 inactiveFactorContexts];
    v111 = sub_29E7543F8();

    v161 = v109;
    sub_29E6DA74C(v111);
    if (v161 >> 62)
    {

      sub_29E754E68();
    }

    else
    {

      sub_29E755038();
    }

    v112 = objc_allocWithZone(MEMORY[0x29EDC47A8]);
    v113 = sub_29E7543D8();

    v114 = [v112 initWithSectionTitle:0 overlayContextItems:v113];

    *(v107 + 32) = v114;
    v115 = objc_allocWithZone(MEMORY[0x29EDC47B0]);
    v116 = sub_29E754198();

    v117 = sub_29E7543D8();

    v118 = [v115 initWithContainerTitle:v116 overlayContextSections:v117];

    v119 = v118;
    MEMORY[0x29ED96CE0]();
    if (*((v162 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v162 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_29E754418();
    }

    sub_29E754438();

    return v162;
  }

  else
  {
  }

  return v103;
}

id sub_29E6152DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getObjectType();
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = &v42 - v7;
  v9 = sub_29E752098();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v13 = sub_29E752088();
  v14 = sub_29E7546C8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v44 = a2;
    v16 = v15;
    v17 = swift_slowAlloc();
    v45 = a3;
    v18 = v17;
    v47 = v17;
    *v16 = 136446466;
    v19 = sub_29E755178();
    v21 = sub_29E6B9C90(v19, v20, &v47);
    v43 = v9;
    v22 = a1;
    v23 = v21;

    *(v16 + 4) = v23;
    *(v16 + 12) = 2048;
    *(v16 + 14) = v22;
    _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] creating view controller for mode: %ld", v16, 0x16u);
    sub_29E5FECBC(v18);
    v24 = v18;
    a3 = v45;
    MEMORY[0x29ED98410](v24, -1, -1);
    v25 = v16;
    a2 = v44;
    MEMORY[0x29ED98410](v25, -1, -1);

    (*(v10 + 8))(v12, v43);
    v30 = v22;
  }

  else
  {

    (*(v10 + 8))(v12, v9);
    v30 = a1;
  }

  sub_29E6172A0(a2, v8, v26, v27, v28, v29);
  v31 = v46;
  v32 = [v46 factorDisplayTypes];
  if (v32)
  {
    v33 = v32;
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v34 = sub_29E7543F8();
  }

  else
  {
    v34 = 0;
  }

  v35 = sub_29E74ED28();
  v36 = *(v35 - 8);
  v37 = 0;
  if ((*(v36 + 48))(v8, 1, v35) != 1)
  {
    v37 = sub_29E74EC98();
    (*(v36 + 8))(v8, v35);
  }

  if (v34)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v38 = sub_29E7543D8();
  }

  else
  {
    v38 = 0;
  }

  v39 = [objc_allocWithZone(type metadata accessor for SleepScoreOverlayRoomViewController(0)) initWithDisplayDate:v37 applicationItems:a3 factorDisplayTypes:v38 mode:v30];

  v40 = v39;
  [v40 setAdditionalChartOptions_];

  return v40;
}

id sub_29E6158E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v8 = MEMORY[0x29EDC9C68];
  sub_29E617334(0, &qword_2A1A7D368, MEMORY[0x29EDB9D18], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v9 - 8);
  v11 = &v50 - v10;
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], v8);
  MEMORY[0x2A1C7C4A8](v12 - 8);
  v14 = &v50 - v13;
  v15 = *&v7[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType];
  v16 = [v15 baseDisplayType];
  if (!v16)
  {
    v18 = 0;
    goto LABEL_5;
  }

  v17 = v16;
  v18 = [v16 hk_interactiveChartOptions];

  if ((v18 & 0x2000) == 0)
  {
LABEL_5:
    v18 |= 0x2000uLL;
  }

  v56 = [v7 additionalChartOptions];
  v19 = [v7 applicationItems];
  v57 = [v19 healthStore];

  v55 = v15;
  v20 = [v7 applicationItems];
  v54 = [v20 unitController];

  v21 = [v7 applicationItems];
  v53 = [v21 dateCache];

  v22 = [v7 applicationItems];
  v52 = [v22 chartDataCacheController];

  v23 = [v7 applicationItems];
  v51 = [v23 timeScopeController];

  v24 = [v7 applicationItems];
  v25 = [v24 sampleDateRangeController];

  v26 = [v7 displayDate];
  if (v26)
  {
    v27 = v26;
    sub_29E74ECD8();

    v28 = sub_29E74ED28();
    (*(*(v28 - 8) + 56))(v14, 0, 1, v28);
  }

  else
  {
    v28 = sub_29E74ED28();
    (*(*(v28 - 8) + 56))(v14, 1, 1, v28);
  }

  v29 = sub_29E74EE78();
  v30 = *(v29 - 8);
  (*(v30 + 56))(v11, 1, 1, v29);
  sub_29E74ED28();
  v31 = *(v28 - 8);
  v32 = 0;
  if ((*(v31 + 48))(v14, 1, v28) != 1)
  {
    v32 = sub_29E74EC98();
    (*(v31 + 8))(v14, v28);
  }

  v33 = (*(v30 + 48))(v11, 1, v29);
  v50 = v7;
  if (v33 == 1)
  {
    v34 = 0;
  }

  else
  {
    v34 = sub_29E74EE08();
    (*(v30 + 8))(v11, v29);
  }

  v35 = v56;
  if ((v56 & ~v18) == 0)
  {
    v35 = 0;
  }

  v36 = v35 | v18;
  v37 = objc_allocWithZone(MEMORY[0x29EDC4710]);
  v49 = v25;
  v38 = v57;
  v40 = v54;
  v39 = v55;
  v42 = v52;
  v41 = v53;
  v43 = v25;
  v44 = v51;
  v45 = [v37 initWithHealthStore:v57 primaryDisplayType:v55 unitPreferenceController:v54 dateCache:v53 chartDataCacheController:v52 selectedTimeScopeController:v51 sampleTypeDateRangeController:v49 initialXValue:v32 currentCalendarOverride:v34 options:v36];

  v46 = v45;
  v47 = v50;
  [v46 setCurrentValueViewDataSourceDelegate_];
  [v46 setCurrentOverlayLocationProvider_];

  return v46;
}

id sub_29E616250()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepScoreOverlayRoomViewController(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for SleepScoreOverlayRoomViewController(uint64_t a1)
{
  result = qword_2A1856E70;
  if (!qword_2A1856E70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E616358(uint64_t a1)
{
  result = sub_29E74F0D8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_29E6163F8()
{
  if (!qword_2A1A7BCE0)
  {
    v0 = sub_29E754FE8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7BCE0);
    }
  }
}

unint64_t sub_29E61644C()
{
  result = qword_2A1856E90;
  if (!qword_2A1856E90)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1856E90);
  }

  return result;
}

id sub_29E6164B0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v24 - v12;
  sub_29E6172A0(a2, &v24 - v12, v14, v15, v16, v17);
  v18 = sub_29E74ED28();
  v19 = *(v18 - 8);
  v20 = 0;
  if ((*(v19 + 48))(v13, 1, v18) != 1)
  {
    v20 = sub_29E74EC98();
    (*(v19 + 8))(v13, v18);
  }

  if (a4)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    a4 = sub_29E7543D8();
  }

  v21 = [objc_allocWithZone(type metadata accessor for SleepScoreOverlayRoomViewController(0)) initWithDisplayDate:v20 applicationItems:a1 factorDisplayTypes:a4 mode:1];

  v22 = v21;
  [v22 setRestorationUserActivity_];
  [v22 setAdditionalChartOptions_];

  return v22;
}

id sub_29E616694(void *a1, uint64_t a2)
{
  v4 = sub_29E74F0D8();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = [a1 displayTypeController];
  v9 = [objc_opt_self() appleSleepScoreType];
  v10 = [v8 displayTypeForObjectType_];

  if (v10)
  {
    v11 = [v10 displayCategory];
    v12 = [a1 unitController];
    v13 = [a1 chartDataCacheController];
    v14 = [v10 hk:5 standardSeriesForTimeScope:v11 displayCategory:v12 unitController:v13 dataCacheController:?];

    if (v14)
    {
      (*(v5 + 16))(v7, a2, v4);
      v15 = objc_allocWithZone(sub_29E753DE8());
      v16 = sub_29E753DD8();
      [v14 setYAxis_];

      v17 = [objc_allocWithZone(type metadata accessor for SleepScoreChartTapOutFormatter(0)) init];
      sub_29E617334(0, &qword_2A1856EB8, sub_29E617398, MEMORY[0x29EDC9E90]);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_29E764170;
      *(inited + 32) = [objc_allocWithZone(MEMORY[0x29EDBA070]) initWithInteger_];
      *(inited + 40) = v14;
      v19 = objc_allocWithZone(MEMORY[0x29EDBA070]);
      v20 = v14;
      *(inited + 48) = [v19 initWithInteger_];
      *(inited + 56) = v20;
      v21 = objc_allocWithZone(MEMORY[0x29EDBA070]);
      v22 = v20;
      *(inited + 64) = [v21 initWithInteger_];
      *(inited + 72) = v22;
      v23 = v22;
      sub_29E68B114(inited);
      swift_setDeallocating();
      sub_29E617398(0);
      swift_arrayDestroy();
      v24 = objc_allocWithZone(MEMORY[0x29EDC4700]);
      sub_29E609B5C(0, &qword_2A1856EC8, 0x29EDBA070);
      sub_29E609B5C(0, &qword_2A1856ED0, 0x29EDC46A0);
      sub_29E617428();
      v25 = sub_29E754068();

      v26 = [v24 initWithBaseDisplayType:v10 valueFormatter:v17 dataTypeCode:341 seriesForTimeScopeMapping:v25];

      return v26;
    }
  }

  result = sub_29E754E48();
  __break(1u);
  return result;
}

id sub_29E616AB8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v36 = a4;
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v11 - 8);
  v13 = &v35 - v12;
  v14 = sub_29E74F0D8();
  v15 = *(v14 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E74F148();
  sub_29E74F138();
  sub_29E74F128();

  (*(v15 + 16))(&v6[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_algorithmVersion], v17, v14);
  v18 = a2;
  *&v6[OBJC_IVAR____TtC20SleepHealthAppPlugin35SleepScoreOverlayRoomViewController_sleepScoreDisplayType] = sub_29E616694(a2, v17);
  v35 = a1;
  sub_29E6172A0(a1, v13, v19, v20, v21, v22);
  v23 = sub_29E74ED28();
  v24 = *(v23 - 8);
  v25 = 0;
  if ((*(v24 + 48))(v13, 1, v23) != 1)
  {
    v25 = sub_29E74EC98();
    (*(v24 + 8))(v13, v23);
  }

  if (a3)
  {
    sub_29E609B5C(0, &qword_2A1856EA8, 0x29EDC4678);
    v26 = sub_29E7543D8();
  }

  else
  {
    v26 = 0;
  }

  v27 = type metadata accessor for SleepScoreOverlayRoomViewController(0);
  v37.receiver = v7;
  v37.super_class = v27;
  v28 = objc_msgSendSuper2(&v37, sel_initWithDisplayDate_applicationItems_factorDisplayTypes_mode_, v25, v18, v26, v36);

  sub_29E617214(v35, v29, v30, v31, v32, v33);
  (*(v15 + 8))(v17, v14);
  return v28;
}

uint64_t sub_29E616D8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_29E616DF4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_29E616E54(uint64_t a1, void *a2)
{
  swift_getObjectType();
  v4 = sub_29E752098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v8 = sub_29E752088();
  v9 = sub_29E7546C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = a1;
    v11 = v10;
    v12 = swift_slowAlloc();
    v22 = v12;
    *v11 = 136446466;
    v13 = sub_29E755178();
    v15 = sub_29E6B9C90(v13, v14, &v22);
    v21 = v4;
    v16 = a2;
    v17 = v15;

    *(v11 + 4) = v17;
    a2 = v16;
    *(v11 + 12) = 2048;
    *(v11 + 14) = v20;
    _os_log_impl(&dword_29E5ED000, v8, v9, "[%{public}s] building containers for mode: %ld", v11, 0x16u);
    sub_29E5FECBC(v12);
    MEMORY[0x29ED98410](v12, -1, -1);
    MEMORY[0x29ED98410](v11, -1, -1);

    (*(v5 + 8))(v7, v21);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
  }

  return sub_29E613FB4(a2);
}

id sub_29E617058(uint64_t a1)
{
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v6 = sub_29E752088();
  v7 = sub_29E7546C8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136446210;
    v10 = sub_29E755178();
    v12 = sub_29E6B9C90(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_29E5ED000, v6, v7, "[%{public}s] opening info from current value view", v8, 0xCu);
    sub_29E5FECBC(v9);
    MEMORY[0x29ED98410](v9, -1, -1);
    MEMORY[0x29ED98410](v8, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return sub_29E660120(a1);
}

uint64_t sub_29E617214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v7 - 8) + 8))(a1, v7);
  return a1;
}

uint64_t sub_29E6172A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_29E617334(0, &qword_2A1A7CFC0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDC9C68]);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

void sub_29E617334(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E617398(uint64_t a1)
{
  if (!qword_2A1856EC0)
  {
    sub_29E609B5C(255, &qword_2A1856EC8, 0x29EDBA070);
    sub_29E609B5C(255, &qword_2A1856ED0, 0x29EDC46A0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1856EC0);
    }
  }
}

unint64_t sub_29E617428()
{
  result = qword_2A1856ED8;
  if (!qword_2A1856ED8)
  {
    sub_29E609B5C(255, &qword_2A1856EC8, 0x29EDBA070);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856ED8);
  }

  return result;
}

uint64_t type metadata accessor for SleepScoreLevelOverlayContext(uint64_t a1)
{
  result = qword_2A1856EE0;
  if (!qword_2A1856EE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E617504(uint64_t a1)
{
  result = sub_29E74EF88();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

BOOL sub_29E617570()
{
  v0 = sub_29E74EF88();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74F098();
  v5 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E753E78();
  sub_29E74F088();
  (*(v5 + 8))(v7, v4);
  sub_29E617E68();
  sub_29E7543B8();
  sub_29E7543B8();
  (*(v1 + 8))(v3, v0);
  return v9[3] == v9[1];
}

uint64_t sub_29E617738(uint64_t (*a1)(unint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = 0;
  v8 = 0;
  v9 = *(a3 + 16);
  while (1)
  {
    if (v9 == v8)
    {
      return v7;
    }

    v10 = *(sub_29E753EA8() - 8);
    result = a1(a3 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v8);
    if (v4)
    {
      break;
    }

    v4 = 0;
    ++v8;
    v12 = __OFADD__(v7, result & 1);
    v7 += result & 1;
    if (v12)
    {
      __break(1u);
      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_29E617820(uint64_t a1, uint64_t a2, char a3)
{
  if (a1 < 1)
  {
    v10 = sub_29E754198();
    v11 = HKUILocalizedString();

    if (!v11)
    {
      __break(1u);
      return;
    }

    sub_29E7541D8();

    if (a3)
    {
      goto LABEL_3;
    }

LABEL_6:
    sub_29E617A74(a1, a2, 0);
    v9 = v12;
    goto LABEL_7;
  }

  sub_29E617DAC(0);
  v6 = swift_allocObject();
  v7 = MEMORY[0x29EDC9BA8];
  *(v6 + 16) = xmmword_29E762F30;
  v8 = MEMORY[0x29EDC9C10];
  *(v6 + 56) = v7;
  *(v6 + 64) = v8;
  *(v6 + 32) = a1;
  sub_29E7541A8();

  if ((a3 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v9 = 0;
LABEL_7:
  v13 = [objc_allocWithZone(MEMORY[0x29EDC4680]) init];
  sub_29E74EF58();
  v14 = sub_29E754198();

  [v13 setTitle_];

  v15 = [objc_opt_self() defaultMetricColorsForOverlayMode_];
  [v13 setMetricColors_];

  v16 = [objc_opt_self() sleepColors];
  [v13 setSelectedMetricColors_];

  v17 = sub_29E754198();

  [v13 setValue_];

  if (v9)
  {
    v18 = sub_29E754198();
  }

  else
  {
    v18 = 0;
  }

  [v13 setUnit_];
}

uint64_t sub_29E617A74(uint64_t a1, uint64_t a2, char a3)
{
  v6 = sub_29E754168();
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v7 = sub_29E754188();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x2A1C7C4A8](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v9);
  v13 = &v16 - v12;
  if ((a3 & 1) != 0 || a2 != 3)
  {
    if (a1 < 1)
    {
      sub_29E754118();
    }

    else
    {
      sub_29E754158();
      sub_29E754148();
      v17 = a1;
      sub_29E754128();
      sub_29E754148();
      sub_29E754178();
    }

    v13 = v11;
  }

  else if (a1 < 1)
  {
    sub_29E754118();
  }

  else
  {
    sub_29E754158();
    sub_29E754148();
    v17 = a1;
    sub_29E754128();
    sub_29E754148();
    sub_29E754178();
  }

  v14 = sub_29E65B0B4(v13);
  (*(v8 + 8))(v13, v7);
  return v14;
}

void sub_29E617DAC(uint64_t a1)
{
  if (!qword_2A1A7D3D8)
  {
    sub_29E617E04();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D3D8);
    }
  }
}

unint64_t sub_29E617E04()
{
  result = qword_2A1A7D3D0;
  if (!qword_2A1A7D3D0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1A7D3D0);
  }

  return result;
}

unint64_t sub_29E617E68()
{
  result = qword_2A1856EF0;
  if (!qword_2A1856EF0)
  {
    sub_29E74EF88();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856EF0);
  }

  return result;
}

uint64_t sub_29E617EC0()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x2A1C7C4A8](v2);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v40 - v7;
  v9 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E60BC20(v1 + v9, v42);
  if (!v42[3])
  {
    sub_29E60BC9C(v42, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    v43 = 0u;
    v44 = 0u;
    v45 = 0;
    goto LABEL_8;
  }

  sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  sub_29E609CF8(0, &qword_2A1856F08, MEMORY[0x29EDC6B90]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
LABEL_8:
    sub_29E60BC9C(&v43, &qword_2A1856F00, &qword_2A1856F08, MEMORY[0x29EDC6B90]);
    sub_29E752048();
    v24 = v1;
    v25 = sub_29E752088();
    v26 = sub_29E7546A8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v43 = v28;
      *v27 = 136446467;
      v29 = sub_29E755178();
      v31 = sub_29E6B9C90(v29, v30, &v43);
      v41 = v2;
      v32 = v31;

      *(v27 + 4) = v32;
      *(v27 + 12) = 2081;
      sub_29E60BC20(v1 + v9, v46);
      sub_29E60BCF8(0, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
      v33 = sub_29E7541F8();
      v35 = sub_29E6B9C90(v33, v34, &v43);

      *(v27 + 14) = v35;
      _os_log_impl(&dword_29E5ED000, v25, v26, "[%{public}s] Received invalid item: %{private}s", v27, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v28, -1, -1);
      MEMORY[0x29ED98410](v27, -1, -1);

      return (*(v3 + 8))(v6, v41);
    }

    else
    {

      return (*(v3 + 8))(v6, v2);
    }
  }

  if (!*(&v44 + 1))
  {
    goto LABEL_8;
  }

  sub_29E5FAEE4(&v43, v46);
  sub_29E752048();
  sub_29E602E20(v46, &v43);
  v10 = sub_29E752088();
  v11 = sub_29E7546C8();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v42[0] = v40;
    *v12 = 136446467;
    v13 = sub_29E755178();
    v15 = sub_29E6B9C90(v13, v14, v42);

    *(v12 + 4) = v15;
    *(v12 + 12) = 2081;
    v16 = sub_29E601938(&v43, *(&v44 + 1));
    v41 = v2;
    MEMORY[0x2A1C7C4A8](v16);
    (*(v18 + 16))(&v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
    v19 = sub_29E7541F8();
    v21 = v20;
    sub_29E5FECBC(&v43);
    v22 = sub_29E6B9C90(v19, v21, v42);

    *(v12 + 14) = v22;
    _os_log_impl(&dword_29E5ED000, v10, v11, "[%{public}s] Received item: %{private}s", v12, 0x16u);
    v23 = v40;
    swift_arrayDestroy();
    MEMORY[0x29ED98410](v23, -1, -1);
    MEMORY[0x29ED98410](v12, -1, -1);

    (*(v3 + 8))(v8, v41);
  }

  else
  {

    (*(v3 + 8))(v8, v2);
    sub_29E5FECBC(&v43);
  }

  sub_29E619138();
  [v1 setNeedsUpdateConfiguration];
  sub_29E602E20(v46, v42);
  sub_29E609CF8(0, &qword_2A1856F10, MEMORY[0x29EDC2998]);
  if (swift_dynamicCast())
  {
    sub_29E601938(&v43, *(&v44 + 1));
    sub_29E751868();
    v38 = v37;
    sub_29E5FECBC(&v43);
    if (v38)
    {
      v39 = sub_29E754198();
    }

    else
    {
      v39 = 0;
    }
  }

  else
  {
    v45 = 0;
    v43 = 0u;
    v44 = 0u;
    sub_29E60BC9C(&v43, &qword_2A1856F18, &qword_2A1856F10, MEMORY[0x29EDC2998]);
    v39 = 0;
  }

  [v1 setAccessibilityIdentifier_];

  return sub_29E5FECBC(v46);
}

uint64_t sub_29E618600()
{
  v1 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setBackgroundView_];

  v2 = [objc_allocWithZone(MEMORY[0x29EDC7DA0]) init];
  [v0 setSelectedBackgroundView_];

  [v0 setAutomaticallyUpdatesBackgroundConfiguration_];
  *(swift_allocObject() + 16) = v0;
  v3 = v0;
  return sub_29E7549C8();
}

uint64_t sub_29E6186D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_29E6197C8(0);
  v5[3] = v3;
  v5[4] = sub_29E619C24(&qword_2A1856F78, sub_29E6197C8, MEMORY[0x29EDBC030]);
  sub_29E5FEBF4(v5);
  sub_29E619C6C(0, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
  sub_29E619B58();
  sub_29E753218();
  return MEMORY[0x29ED972D0](v5);
}

uint64_t sub_29E6187B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_29E619864(0);
  MEMORY[0x2A1C7C4A8](v4);
  v6 = &v16[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E619C6C(0, &qword_2A1856F80, MEMORY[0x29EDBC7E8]);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v16[-v8];
  sub_29E619C6C(0, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
  MEMORY[0x2A1C7C4A8](v10 - 8);
  v12 = &v16[-v11];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v13 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E60BC20(a1 + v13, v17);
  if (!v18)
  {
    sub_29E60BC9C(v17, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    v19 = 0u;
    v20 = 0u;
    v21 = 0;
    goto LABEL_9;
  }

  sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  sub_29E609CF8(0, &qword_2A1856F08, MEMORY[0x29EDC6B90]);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    v19 = 0u;
    v20 = 0u;
    goto LABEL_9;
  }

  if (!*(&v20 + 1))
  {
LABEL_9:
    sub_29E60BC9C(&v19, &qword_2A1856F00, &qword_2A1856F08, MEMORY[0x29EDC6B90]);
    swift_storeEnumTagMultiPayload();
    sub_29E619C24(&qword_2A1856F70, sub_29E619864, MEMORY[0x29EDBCB58]);
    sub_29E753118();
    goto LABEL_10;
  }

  sub_29E5FAEE4(&v19, v22);
  *v6 = sub_29E752FF8();
  *(v6 + 1) = 0x4014000000000000;
  v6[16] = 0;
  sub_29E619CD4(0);
  sub_29E618B84(v22, &v6[*(v14 + 44)]);
  sub_29E5F1414(v6, v9);
  swift_storeEnumTagMultiPayload();
  sub_29E619C24(&qword_2A1856F70, sub_29E619864, MEMORY[0x29EDBCB58]);
  sub_29E753118();
  sub_29E5F1478(v6);
  sub_29E5FECBC(v22);
LABEL_10:
  sub_29E5F1394(v12, a2);
}

uint64_t sub_29E618B84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_29E74F9E8();
  MEMORY[0x2A1C7C4A8](v3 - 8);
  v36 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74F8F8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x2A1C7C4A8](v5);
  v37 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v33 - v9;
  sub_29E6199FC(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v34 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6198F8(0, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
  v16 = MEMORY[0x2A1C7C4A8](v15 - 8);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v16);
  v20 = &v33 - v19;
  sub_29E7544C8();
  v35 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E602E20(a1, v47);
  sub_29E609CF8(0, &qword_2A1856F08, MEMORY[0x29EDC6B90]);
  sub_29E609CF8(0, &qword_2A1856F90, &protocol descriptor for SleepTileHeaderViewModelProviding);
  if (swift_dynamicCast())
  {
    v33 = v12;
    sub_29E5FAEE4(v46, v43);
    v22 = v44;
    v21 = v45;
    sub_29E601938(v43, v44);
    (*(v21 + 8))(v46, v22, v21);
    v39 = *v46;
    v40 = v46[16];
    v41 = *&v46[24];
    v42 = *&v46[32];
    v23 = v44;
    v24 = v45;
    sub_29E601938(v43, v44);
    (*(v24 + 8))(v47, v23, v24);
    v50 = *&v47[3];
    v51 = *v47;
    sub_29E619D6C(&v50);
    if (*(&v51 + 1))
    {
      sub_29E619DC0(&v51);
    }

    v48 = *v46;
    v49 = *&v46[24];
    sub_29E619A7C();
    v25 = v34;
    sub_29E753648();
    sub_29E619DC0(&v48);
    sub_29E619D6C(&v49);
    v26 = v33;
    (*(v13 + 32))(v20, v25, v33);
    (*(v13 + 56))(v20, 0, 1, v26);
    sub_29E5FECBC(v43);
  }

  else
  {
    memset(v46, 0, sizeof(v46));
    sub_29E60BC9C(v46, &qword_2A1856F98, &qword_2A1856F90, &protocol descriptor for SleepTileHeaderViewModelProviding);
    (*(v13 + 56))(v20, 1, 1, v12);
  }

  sub_29E601938(a1, a1[3]);
  sub_29E74FA48();
  sub_29E74F8E8();
  sub_29E5F14D4(v20, v18);
  v27 = *(v6 + 16);
  v28 = v37;
  v27(v37, v10, v5);
  v29 = v38;
  sub_29E5F14D4(v18, v38);
  sub_29E61995C(0);
  v27((v29 + *(v30 + 48)), v28, v5);
  v31 = *(v6 + 8);
  v31(v10, v5);
  sub_29E5F1568(v20);
  v31(v28, v5);
  sub_29E5F1568(v18);
}

id sub_29E619138()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E60BC20(v1 + v2, v7);
  if (!v8)
  {
    sub_29E60BC9C(v7, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    goto LABEL_7;
  }

  sub_29E609CF8(0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  sub_29E609CF8(0, &qword_2A1856FA8, &protocol descriptor for CellSelectableProviding);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
    goto LABEL_7;
  }

  v3 = *(&v10 + 1);
  if (!*(&v10 + 1))
  {
LABEL_7:
    sub_29E60BC9C(&v9, &qword_2A1856FA0, &qword_2A1856FA8, &protocol descriptor for CellSelectableProviding);
    v5 = 1;
    return [v1 setUserInteractionEnabled_];
  }

  v4 = v11;
  sub_29E601938(&v9, *(&v10 + 1));
  v5 = (*(v4 + 8))(v3, v4);
  sub_29E5FECBC(&v9);
  return [v1 setUserInteractionEnabled_];
}

id sub_29E6194CC(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for ScheduleOccurrenceCell();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_29E619560@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  return sub_29E60BC20(v1 + v3, a1);
}

uint64_t sub_29E6195B8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC20SleepHealthAppPlugin22ScheduleOccurrenceCell_item;
  swift_beginAccess();
  sub_29E61973C(a1, v1 + v3);
  swift_endAccess();
  sub_29E617EC0();
  return sub_29E60BC9C(a1, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
}

uint64_t (*sub_29E61963C(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_29E6196A0;
}

uint64_t sub_29E6196A0(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_29E617EC0();
  }

  return result;
}

void sub_29E6196D8(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  if (a2)
  {
    v4 = sub_29E754198();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  [v3 setAccessibilityIdentifier_];
}

uint64_t sub_29E61973C(uint64_t a1, uint64_t a2)
{
  sub_29E60BCF8(0, &qword_2A1856AD0, &qword_2A1858310, MEMORY[0x29EDC1910]);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_29E6197C8(uint64_t a1)
{
  if (!qword_2A1856F20)
  {
    sub_29E619C6C(255, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
    sub_29E619B58();
    v1 = sub_29E753228();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856F20);
    }
  }
}

void sub_29E619864(uint64_t a1)
{
  if (!qword_2A1856F30)
  {
    sub_29E6198F8(255, &qword_2A1856F38, sub_29E61995C, MEMORY[0x29EDBCC28]);
    sub_29E619AD0();
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856F30);
    }
  }
}

void sub_29E6198F8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_29E61995C(uint64_t a1)
{
  if (!qword_2A1856F40)
  {
    sub_29E6198F8(255, &qword_2A1856F48, sub_29E6199FC, MEMORY[0x29EDC9C68]);
    sub_29E74F8F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1856F40);
    }
  }
}

void sub_29E6199FC(uint64_t a1)
{
  if (!qword_2A1856F50)
  {
    sub_29E619A7C();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1856F50);
    }
  }
}

unint64_t sub_29E619A7C()
{
  result = qword_2A1856F58;
  if (!qword_2A1856F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856F58);
  }

  return result;
}

unint64_t sub_29E619AD0()
{
  result = qword_2A1856F60;
  if (!qword_2A1856F60)
  {
    sub_29E6198F8(255, &qword_2A1856F38, sub_29E61995C, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856F60);
  }

  return result;
}

unint64_t sub_29E619B58()
{
  result = qword_2A1856F68;
  if (!qword_2A1856F68)
  {
    sub_29E619C6C(255, &qword_2A1856F28, MEMORY[0x29EDBC7F0]);
    sub_29E619C24(&qword_2A1856F70, sub_29E619864, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856F68);
  }

  return result;
}

uint64_t sub_29E619C24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E619C6C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    sub_29E619864(255);
    v7 = a3(a1, v6, MEMORY[0x29EDBCBF8]);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_29E619CD4(uint64_t a1)
{
  if (!qword_2A1856F88)
  {
    sub_29E6198F8(255, &qword_2A1856F38, sub_29E61995C, MEMORY[0x29EDBCC28]);
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856F88);
    }
  }
}

uint64_t sub_29E619DC0(uint64_t a1)
{
  sub_29E619E1C();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E619E1C()
{
  if (!qword_2A1A7D0C8)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D0C8);
    }
  }
}

uint64_t sub_29E619EF0(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v2 + qword_2A1856FC0) = 0;
  sub_29E602E20(a1, v2 + qword_2A1856FB0);
  *(v2 + qword_2A1856FB8) = a2;
  v18[0] = 0;
  v18[1] = 0xE000000000000000;

  sub_29E754D78();

  strcpy(v18, "MutableArray<");
  HIWORD(v18[1]) = -4864;
  sub_29E74ED78();
  v10 = sub_29E74ED48();
  v12 = v11;
  (*(v7 + 8))(v9, v6);
  MEMORY[0x29ED96C20](v10, v12);

  MEMORY[0x29ED96C20](62, 0xE100000000000000);
  v13 = sub_29E750D08();
  v18[0] = a2;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = v5;
  sub_29E60990C(0);
  sub_29E61BF24(&qword_2A18569F0, sub_29E60990C, MEMORY[0x29EDB8A70]);

  v16 = sub_29E7529A8();

  sub_29E5FECBC(a1);

  *(v13 + qword_2A1856FC0) = v16;

  return v13;
}

uint64_t sub_29E61A1B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = sub_29E752098();
  v3 = *(v20 - 8);
  MEMORY[0x2A1C7C4A8](v20);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_29E753D78();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = (&v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
  }

  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v9 = sub_29E754908();
  (*(v7 + 104))(v9, *MEMORY[0x29EDCA278], v6);
  v10 = sub_29E753DA8();
  result = (*(v7 + 8))(v9, v6);
  if (v10)
  {
    sub_29E752048();
    v12 = sub_29E752088();
    v13 = sub_29E7546C8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v21 = v15;
      *v14 = 136446210;
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, &v21);

      *(v14 + 4) = v18;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s] Responding to sleep schedule change", v14, 0xCu);
      sub_29E5FECBC(v15);
      MEMORY[0x29ED98410](v15, -1, -1);
      MEMORY[0x29ED98410](v14, -1, -1);
    }

    (*(v3 + 8))(v5, v20);
    sub_29E61A4F8();
  }

  __break(1u);
  return result;
}

uint64_t sub_29E61A4F8()
{
  v0 = sub_29E74F9B8();
  MEMORY[0x2A1C7C4A8](v0 - 8);
  v96 = &v69 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_29E74F698();
  v86 = *(v95 - 8);
  MEMORY[0x2A1C7C4A8](v95);
  v94 = &v69 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for SleepOnboardingScheduleItem(0);
  v92 = *(v3 - 8);
  v93 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v97 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E74ED88();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v69 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E750CA8();
  v85 = *(v9 - 8);
  v10 = MEMORY[0x2A1C7C4A8](v9);
  v79 = &v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x2A1C7C4A8](v10);
  v80 = &v69 - v13;
  v14 = MEMORY[0x2A1C7C4A8](v12);
  v16 = &v69 - v15;
  MEMORY[0x2A1C7C4A8](v14);
  v18 = &v69 - v17;
  sub_29E61BF94(0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_29E762F30;
  v20 = qword_2A1856FB0;
  *(v19 + 56) = &type metadata for SleepOnboardingItem;
  *(v19 + 64) = sub_29E61C050();
  v21 = swift_allocObject();
  *(v19 + 32) = v21;
  type metadata accessor for SleepOnboardingItemCell();
  sub_29E61BF24(&qword_2A1856FE8, type metadata accessor for SleepOnboardingItemCell, &unk_29E7688B8);
  v21[2] = sub_29E7506A8();
  v21[3] = v22;
  v21[4] = 0xD000000000000013;
  v21[5] = 0x800000029E764390;
  sub_29E602E20(v84 + v20, (v21 + 6));
  sub_29E74ED78();
  sub_29E74ED48();
  v23 = *(v6 + 8);
  v76 = v8;
  v78 = v5;
  v77 = v6 + 8;
  v74 = v23;
  v23(v8, v5);
  sub_29E750C98();
  v24 = *(v85 + 16);
  v81 = v18;
  v83 = v9;
  v75 = v85 + 16;
  v73 = v24;
  v24(v16, v18, v9);
  v25 = MEMORY[0x29EDCA190];
  v26 = sub_29E6DAEB0(0, 1, 1, MEMORY[0x29EDCA190]);
  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  v29 = (v28 + 1);
  if (v28 >= v27 >> 1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    *(v26 + 2) = v29;
    v30 = *(v85 + 32);
    v31 = (*(v85 + 80) + 32) & ~*(v85 + 80);
    v82 = v26;
    v70 = v31;
    v69 = *(v85 + 72);
    v32 = &v26[v31 + v69 * v28];
    v33 = v83;
    v72 = v85 + 32;
    v71 = v30;
    v30(v32, v16, v83);
    sub_29E7527B8();
    v34 = v99[0];
    if (!v99[0])
    {
      v41 = v85;
      goto LABEL_42;
    }

    v35 = [v99[0] occurrences];

    sub_29E609B5C(0, &qword_2A1856A10, 0x29EDC68C0);
    v16 = sub_29E7543F8();

    v98 = v25;
    v25 = v16 >> 62 ? sub_29E754C98() : *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v29 = MEMORY[0x29EDCA190];
    if (!v25)
    {
      break;
    }

    v28 = 0;
    while (1)
    {
      if ((v16 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x29ED976A0](v28, v16);
      }

      else
      {
        v27 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v28 >= v27)
        {
          goto LABEL_37;
        }

        v36 = *(v16 + 8 * v28 + 32);
      }

      v37 = v36;
      v38 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      sub_29E7544C8();
      v29 = sub_29E7544B8();
      sub_29E754468();
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v39 = [v37 isSingleDayOverride];

      if (v39)
      {
      }

      else
      {
        v29 = &v98;
        sub_29E754DE8();
        sub_29E754E18();
        sub_29E754E28();
        sub_29E754DF8();
      }

      ++v28;
      if (v38 == v25)
      {
        v40 = v98;
        v33 = v83;
        v29 = MEMORY[0x29EDCA190];
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    v26 = sub_29E6DAEB0((v27 > 1), v29, 1, v26);
  }

  v40 = MEMORY[0x29EDCA190];
LABEL_21:

  v41 = v85;
  if ((v40 & 0x8000000000000000) == 0 && (v40 & 0x4000000000000000) == 0)
  {
    v42 = *(v40 + 16);
    if (v42 > 0)
    {
      goto LABEL_24;
    }

LABEL_41:

    goto LABEL_42;
  }

  v42 = sub_29E754C98();
  if (v42 <= 0)
  {
    goto LABEL_41;
  }

LABEL_24:
  v99[0] = v29;
  sub_29E6DBBAC(0, v42, 0);
  v43 = v99[0];
  v44 = sub_29E7544C8();
  v45 = 0;
  v89 = v40 & 0xC000000000000001;
  v90 = v44;
  v88 = *MEMORY[0x29EDC6AD0];
  v46 = (v86 + 13);
  ++v86;
  v87 = v46;
  v47 = v97;
  v91 = v42;
  v48 = v95;
  do
  {
    if (v89)
    {
      v49 = MEMORY[0x29ED976A0](v45, v40);
    }

    else
    {
      v49 = *(v40 + 8 * v45 + 32);
    }

    v50 = v49;
    v51 = v40;
    sub_29E7544B8();
    sub_29E754468();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v52 = (v47 + *(v93 + 20));
    v53 = v94;
    (*v87)(v94, v88, v48);
    v54 = sub_29E754258();
    v56 = v55;
    v57 = v53;
    v47 = v97;
    (*v86)(v57, v48);
    *v52 = v54;
    v52[1] = v56;
    v58 = v50;
    sub_29E74F988();
    sub_29E74F968();

    v99[0] = v43;
    v60 = v43[2];
    v59 = v43[3];
    if (v60 >= v59 >> 1)
    {
      sub_29E6DBBAC((v59 > 1), v60 + 1, 1);
      v43 = v99[0];
    }

    ++v45;
    v43[2] = v60 + 1;
    sub_29E61C0A4(v47, v43 + ((*(v92 + 80) + 32) & ~*(v92 + 80)) + *(v92 + 72) * v60);
    v40 = v51;
  }

  while (v91 != v45);

  sub_29E6CC508(v43);

  v61 = v76;
  sub_29E74ED78();
  sub_29E74ED48();
  v74(v61, v78);
  v62 = v80;
  sub_29E750C98();
  v63 = v79;
  v64 = v62;
  v33 = v83;
  v73(v79, v64, v83);
  v66 = *(v82 + 2);
  v65 = *(v82 + 3);
  if (v66 >= v65 >> 1)
  {
    v82 = sub_29E6DAEB0((v65 > 1), v66 + 1, 1, v82);
  }

  v41 = v85;
  (*(v85 + 8))(v80, v33);
  v67 = v82;
  *(v82 + 2) = v66 + 1;
  v71(&v67[v70 + v66 * v69], v63, v33);
LABEL_42:
  sub_29E750D18();

  return (*(v41 + 8))(v81, v33);
}

uint64_t sub_29E61AFA0()
{
  sub_29E5FECBC((v0 + qword_2A1856FB0));
}

uint64_t sub_29E61AFF0()
{
  sub_29E750D58();
  v0 = qword_2A1856FB0;

  sub_29E5FECBC((v1 + v0));

  return swift_deallocClassInstance();
}

uint64_t sub_29E61B0D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_29E74ED88();
  v7 = *(v6 - 8);
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E752258();
  MEMORY[0x2A1C7C4A8](v10 - 8);
  if (sub_29E7541D8() == a1 && v11 == a2)
  {
  }

  else
  {
    v13 = sub_29E755028();

    if ((v13 & 1) == 0)
    {
      if (qword_2A1A7D6F0 != -1)
      {
        swift_once();
      }

      sub_29E74E9D8();
      v20[0] = 0x74497265746F6F46;
      v20[1] = 0xEB000000005F6D65;
      sub_29E74ED78();
      v14 = sub_29E74ED48();
      v16 = v15;
      (*(v7 + 8))(v9, v6);
      MEMORY[0x29ED96C20](v14, v16);

      a3[3] = sub_29E751628();
      a3[4] = sub_29E61BF24(&qword_2A1856D88, MEMORY[0x29EDC28B0], MEMORY[0x29EDC28A0]);
      sub_29E5FEBF4(a3);
      return sub_29E751618();
    }
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E7521F8();
  v18 = sub_29E750458();
  swift_allocObject();
  v19 = sub_29E750438();
  a3[3] = v18;
  result = sub_29E61BF24(&qword_2A1856FE0, MEMORY[0x29EDC1C30], MEMORY[0x29EDC1C20]);
  a3[4] = result;
  *a3 = v19;
  return result;
}

uint64_t sub_29E61B4B0()
{
  type metadata accessor for SleepOnboardingItemCell();
  sub_29E61BF24(&qword_2A1856FE8, type metadata accessor for SleepOnboardingItemCell, &unk_29E7688B8);
  sub_29E7547D8();
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E61BF24(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  sub_29E7547D8();
  sub_29E7515F8();
  return sub_29E7547E8();
}

uint64_t sub_29E61B588()
{
  type metadata accessor for ScheduleOccurrenceCell();
  sub_29E61BF24(&qword_2A18569D0, type metadata accessor for ScheduleOccurrenceCell, &unk_29E764230);
  return sub_29E7506A8();
}

uint64_t sub_29E61B5F0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74F9E8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29E61B658(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 20));

  return v2;
}

uint64_t sub_29E61B690(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 20));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t sub_29E61B6F4(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  if (*(v1 + *(a1 + 20) + 8))
  {
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

uint64_t sub_29E61B7C8(uint64_t a1, uint64_t a2)
{
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  if (!*(v2 + *(a2 + 20) + 8))
  {
    return sub_29E7550E8();
  }

  sub_29E7550E8();

  return sub_29E7542D8();
}

uint64_t sub_29E61B89C(uint64_t a1, uint64_t a2)
{
  sub_29E7550C8();
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A18569D8, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B78]);
  sub_29E7540B8();
  if (*(v2 + *(a2 + 20) + 8))
  {
    sub_29E7550E8();
    sub_29E7542D8();
  }

  else
  {
    sub_29E7550E8();
  }

  return sub_29E755108();
}

void sub_29E61B96C()
{
  sub_29E61C368();
  sub_29E7541F8();
  MEMORY[0x29ED96C20](45, 0xE100000000000000);
  sub_29E74F9E8();
  sub_29E61BF24(&qword_2A1856A58, MEMORY[0x29EDC6B70], MEMORY[0x29EDC6B80]);
  v0 = sub_29E754FD8();
  MEMORY[0x29ED96C20](v0);
}

uint64_t sub_29E61BA30(uint64_t a1)
{
  v2 = sub_29E61BF24(&qword_2A1857028, type metadata accessor for SleepOnboardingScheduleItem, &unk_29E7644E4);

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E61BAAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (MEMORY[0x29ED922E0]())
  {
    v6 = *(a3 + 20);
    v7 = (a1 + v6);
    v8 = *(a1 + v6 + 8);
    v9 = (a2 + v6);
    v10 = v9[1];
    if (v8)
    {
      if (v10)
      {
        v11 = *v7 == *v9 && v8 == v10;
        if (v11 || (sub_29E755028() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v10)
    {
      return 1;
    }
  }

  return 0;
}

id sub_29E61BB78()
{
  v12 = sub_29E750698();
  v1 = *(v12 - 8);
  MEMORY[0x2A1C7C4A8](v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_29E74FDC8();
  MEMORY[0x2A1C7C4A8](v4 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7508C8();
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_29E601938((v0 + 32), *(v0 + 56));
  sub_29E74F5B8();
  v8 = sub_29E74FF48();
  sub_29E601938((v0 + 32), *(v0 + 56));
  sub_29E74F5B8();
  v9 = sub_29E74FF38();
  v14 = v8;
  v15 = MEMORY[0x29EDC3970];
  v13 = v9;
  sub_29E714F88(v6);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC1D60], v12);
  v16[3] = sub_29E751788();
  v16[4] = MEMORY[0x29EDC2958];
  sub_29E5FEBF4(v16);
  sub_29E751778();
  sub_29E7508B8();
  return v7;
}

uint64_t sub_29E61BD78(uint64_t a1)
{
  v2 = sub_29E61C314();

  return MEMORY[0x2A1C60910](a1, v2);
}

uint64_t sub_29E61BDC4(uint64_t a1, uint64_t a2)
{
  v3 = sub_29E750E78();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x2A1C7C4A8](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x2A1C7C4A8](v5);
  v10 = &v13 - v9;
  if (!a1)
  {
    sub_29E750E38();
    v11 = sub_29E750E68();
    (*(v4 + 8))(v10, v3);
    return v11;
  }

  if (a1 == 1)
  {
    sub_29E750E28();
    sub_29E750E18();
    v12 = *(v4 + 8);
    v12(v10, v3);
    v11 = sub_29E750E68();
    v12(v7, v3);
    return v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_29E61BF24(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E61BF94(uint64_t a1)
{
  if (!qword_2A185A510)
  {
    sub_29E61BFEC();
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A185A510);
    }
  }
}

unint64_t sub_29E61BFEC()
{
  result = qword_2A1856FF0;
  if (!qword_2A1856FF0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_2A1856FF0);
  }

  return result;
}

unint64_t sub_29E61C050()
{
  result = qword_2A1856FF8;
  if (!qword_2A1856FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1856FF8);
  }

  return result;
}

uint64_t sub_29E61C0A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepOnboardingScheduleItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 sub_29E61C108(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_29E61C12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_29E61C174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_29E61C1FC(uint64_t a1)
{
  sub_29E74F9E8();
  if (v1 <= 0x3F)
  {
    sub_29E619E1C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_29E61C314()
{
  result = qword_2A1857020;
  if (!qword_2A1857020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857020);
  }

  return result;
}

unint64_t sub_29E61C368()
{
  result = qword_2A1857030;
  if (!qword_2A1857030)
  {
    type metadata accessor for SleepOnboardingScheduleItem(255);
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_2A1857030);
  }

  return result;
}

uint64_t type metadata accessor for SleepApneaEventPDFAlertsChartPoint(uint64_t a1)
{
  result = qword_2A1857038;
  if (!qword_2A1857038)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E61C424(uint64_t a1)
{
  result = sub_29E74ED28();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_29E61C498@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_29E74ED28();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_29E61C500()
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E61C86C(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  sub_29E7540B8();
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E61C5D4(uint64_t a1)
{
  sub_29E74ED28();
  sub_29E61C86C(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  sub_29E7540B8();
  return sub_29E7540B8();
}

uint64_t sub_29E61C690(uint64_t a1)
{
  sub_29E7550C8();
  sub_29E74ED28();
  sub_29E61C86C(&qword_2A1A7CFD0, MEMORY[0x29EDB9BC8], MEMORY[0x29EDB9BD8]);
  sub_29E7540B8();
  sub_29E7540B8();
  sub_29E7540B8();
  return sub_29E755108();
}

uint64_t sub_29E61C760(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_29E74ECC8() & 1) == 0 || (sub_29E74ECC8() & 1) == 0)
  {
    return 0;
  }

  return sub_29E74ECC8();
}

uint64_t sub_29E61C86C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E61C8E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_29E61D37C(0);
  MEMORY[0x2A1C7C4A8](v6 - 8);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E61D70C(0, &qword_2A1857080, sub_29E61D37C, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  v10 = v9 - 8;
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v22 - v11;
  *v8 = sub_29E752FE8();
  *(v8 + 1) = 0;
  v8[16] = 0;
  sub_29E61D568(0);
  sub_29E61CB14(a1, a2, &v8[*(v13 + 44)]);
  sub_29E753C48();
  sub_29E752CA8();
  sub_29E61D5D0(v8, v12);
  v14 = &v12[*(v10 + 44)];
  v15 = v22[5];
  *(v14 + 4) = v22[4];
  *(v14 + 5) = v15;
  *(v14 + 6) = v22[6];
  v16 = v22[1];
  *v14 = v22[0];
  *(v14 + 1) = v16;
  v17 = v22[3];
  *(v14 + 2) = v22[2];
  *(v14 + 3) = v17;
  sub_29E61D634(0);
  v19 = a3 + *(v18 + 36);
  sub_29E753BF8();
  LOBYTE(a2) = sub_29E7533A8();
  sub_29E61D70C(0, &qword_2A1857098, MEMORY[0x29EDBCBB8], MEMORY[0x29EDBCBB0], MEMORY[0x29EDBC8D8]);
  *(v19 + *(v20 + 36)) = a2;
  return sub_29E61D778(v12, a3, &qword_2A1857080, sub_29E61D37C);
}

uint64_t sub_29E61CB14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v32 = a1;
  v33 = a2;
  v38 = a3;
  sub_29E61D510();
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E61D70C(0, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  v34 = v6;
  v7 = MEMORY[0x2A1C7C4A8](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x2A1C7C4A8](v7);
  v12 = &v32 - v11;
  MEMORY[0x2A1C7C4A8](v10);
  v14 = &v32 - v13;
  v15 = sub_29E753B08();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x2A1C7C4A8](v15);
  v19 = &v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x2A1C7C4A8](v17);
  v21 = &v32 - v20;
  sub_29E7544C8();
  v35 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E753AF8();
  v22 = swift_allocObject();
  *(v22 + 16) = v32;
  *(v22 + 24) = v33;

  sub_29E753A28();
  sub_29E753C48();
  sub_29E752CA8();
  (*(v36 + 32))(v12, v5, v37);
  v23 = &v12[*(v34 + 36)];
  v24 = v44;
  *(v23 + 4) = v43;
  *(v23 + 5) = v24;
  *(v23 + 6) = v45;
  v25 = v40;
  *v23 = v39;
  *(v23 + 1) = v25;
  v26 = v42;
  *(v23 + 2) = v41;
  *(v23 + 3) = v26;
  sub_29E61D778(v12, v14, &qword_2A1857068, sub_29E61D510);
  v27 = *(v16 + 16);
  v27(v19, v21, v15);
  sub_29E61D80C(v14, v9);
  v28 = v38;
  v27(v38, v19, v15);
  sub_29E61D468(0);
  sub_29E61D80C(v9, &v28[*(v29 + 48)]);
  sub_29E61D8A8(v14);
  v30 = *(v16 + 8);
  v30(v21, v15);
  sub_29E61D8A8(v9);
  v30(v19, v15);
}

uint64_t sub_29E61CF74(void (*a1)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

uint64_t sub_29E61D024@<X0>(uint64_t *a1@<X8>)
{
  v32 = a1;
  v1 = sub_29E7534D8();
  v2 = *(v1 - 8);
  MEMORY[0x2A1C7C4A8](v1);
  v4 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_29E754188();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v31 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E754118();
  v9 = sub_29E65B0B4(v8);
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  v33 = v9;
  v34 = v11;
  sub_29E60DE10();
  v12 = sub_29E753608();
  v14 = v13;
  v16 = v15;
  sub_29E753418();
  (*(v2 + 104))(v4, *MEMORY[0x29EDBC9B0], v1);
  sub_29E7534E8();

  (*(v2 + 8))(v4, v1);
  v17 = sub_29E7535D8();
  v19 = v18;
  v21 = v20;

  sub_29E60DB44(v12, v14, v16 & 1);

  v22 = [objc_opt_self() secondaryLabelColor];
  v33 = sub_29E7538E8();
  v23 = sub_29E7535B8();
  v25 = v24;
  LOBYTE(v14) = v26;
  v28 = v27;
  sub_29E60DB44(v17, v19, v21 & 1);

  v30 = v32;
  *v32 = v23;
  v30[1] = v25;
  *(v30 + 16) = v14 & 1;
  v30[3] = v28;
  return result;
}

void sub_29E61D37C(uint64_t a1)
{
  if (!qword_2A1857050)
  {
    sub_29E61D410(255);
    sub_29E61DAA4(&qword_2A1857078, sub_29E61D410, MEMORY[0x29EDBCC30]);
    v1 = sub_29E753AA8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857050);
    }
  }
}

void sub_29E61D410(uint64_t a1)
{
  if (!qword_2A1857058)
  {
    sub_29E61D468(255);
    v1 = sub_29E753C78();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857058);
    }
  }
}

void sub_29E61D468(uint64_t a1)
{
  if (!qword_2A1857060)
  {
    sub_29E753B08();
    sub_29E61D70C(255, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857060);
    }
  }
}

void sub_29E61D510()
{
  if (!qword_2A1857070)
  {
    v0 = sub_29E753A58();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857070);
    }
  }
}

void sub_29E61D568(uint64_t a1)
{
  if (!qword_2A1857088)
  {
    sub_29E61D410(255);
    v1 = sub_29E752B08();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857088);
    }
  }
}

uint64_t sub_29E61D5D0(uint64_t a1, uint64_t a2)
{
  sub_29E61D37C(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_29E61D634(uint64_t a1)
{
  if (!qword_2A1857090)
  {
    sub_29E61D70C(255, &qword_2A1857080, sub_29E61D37C, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29E61D70C(255, &qword_2A1857098, MEMORY[0x29EDBCBB8], MEMORY[0x29EDBCBB0], MEMORY[0x29EDBC8D8]);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857090);
    }
  }
}

void sub_29E61D70C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_29E61D778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_29E61D70C(0, a3, a4, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_29E61D80C(uint64_t a1, uint64_t a2)
{
  sub_29E61D70C(0, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E61D8A8(uint64_t a1)
{
  sub_29E61D70C(0, &qword_2A1857068, sub_29E61D510, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_29E61D93C()
{
  result = qword_2A18570A0;
  if (!qword_2A18570A0)
  {
    sub_29E61D634(255);
    sub_29E61D9BC();
    sub_29E61DAEC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18570A0);
  }

  return result;
}

unint64_t sub_29E61D9BC()
{
  result = qword_2A18570A8;
  if (!qword_2A18570A8)
  {
    sub_29E61D70C(255, &qword_2A1857080, sub_29E61D37C, MEMORY[0x29EDBC5F8], MEMORY[0x29EDBC558]);
    sub_29E61DAA4(&qword_2A18570B0, sub_29E61D37C, MEMORY[0x29EDBCB58]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18570A8);
  }

  return result;
}

uint64_t sub_29E61DAA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_29E61DAEC()
{
  result = qword_2A18570B8;
  if (!qword_2A18570B8)
  {
    sub_29E61D70C(255, &qword_2A1857098, MEMORY[0x29EDBCBB8], MEMORY[0x29EDBCBB0], MEMORY[0x29EDBC8D8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18570B8);
  }

  return result;
}

id sub_29E61DB7C()
{
  sub_29E61FED0(0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_29E764170;
  v1 = *MEMORY[0x29EDBA740];
  v2 = *MEMORY[0x29EDBA750];
  *(v0 + 32) = *MEMORY[0x29EDBA740];
  *(v0 + 40) = v2;
  v6 = *MEMORY[0x29EDBA758];
  *(v0 + 48) = *MEMORY[0x29EDBA758];
  off_2A1A7D620 = v0;
  v3 = v1;
  v4 = v2;

  return v6;
}

void sub_29E61DC14(uint64_t a1, void **a2, uint64_t a3, void *a4, void *a5, void *a6)
{
  v9 = *a2;
  v11 = a6[3];
  v10 = a6[4];
  sub_29E601938(a6, v11);
  v12 = *(v10 + 16);
  v13 = v9;
  v14 = v12(v11, v10);
  v15 = sub_29E61F9BC(v13, a3, a4, a5, v14 & 1);
  sub_29E61DCC8(v15, v13);
}

void sub_29E61DCC8(char a1, void *a2)
{
  v3 = v2;
  if (a1 == 2)
  {
    v4 = sub_29E68AA8C(a2);
    if (v5)
    {
      v6 = v4;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v12 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_29E6A7724();
        v8 = v12;
      }

      sub_29E61F32C(v6, v8);
      *v3 = v8;
    }

    else
    {
    }
  }

  else
  {
    v10 = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v3;
    sub_29E61F6A4(a1 & 1, a2, v10);

    *v3 = v13;
  }
}

char *sub_29E61DDC8(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v11 = result;
    v31 = v9;
    sub_29E752068();
    v12 = sub_29E752088();
    v13 = sub_29E7546C8();
    v14 = os_log_type_enabled(v12, v13);
    v30 = a3;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136446210;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, v32);

      *(v15 + 4) = v19;
      _os_log_impl(&dword_29E5ED000, v12, v13, "[%{public}s]: Responding to age gating change", v15, 0xCu);
      sub_29E5FECBC(v16);
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
    v20 = *MEMORY[0x29EDBA758];
    v21 = *&v11[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability];
    v22 = *&v11[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord];
    v23 = *&v11[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings];
    ObjectType = swift_getObjectType();
    v25 = v23;

    v26 = v20;
    swift_unknownObjectRetain();
    v27 = v22;
    LOBYTE(v20) = sub_29E61FC3C(v26, v21, v22, v23, v31, v30, ObjectType);
    sub_29E751758();

    v28 = sub_29E7527A8();
    sub_29E61DCC8(v20, v26);
    v28(v32, 0);
  }

  return result;
}

id sub_29E61E090()
{
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability] unregisterObserver_];
  [*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepStore] removeObserver_];
  if (*&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_ageGatingDidChange])
  {

    sub_29E752728();
  }

  v2.receiver = v0;
  v2.super_class = type metadata accessor for SleepOnboardingChangeDetector();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_29E61E1F0()
{
  v1 = v0;
  v28[1] = *MEMORY[0x29EDCA608];
  v2 = sub_29E752098();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v28[0] = 0;
  v6 = [v1 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v6)
  {
    v7 = v6;
    v8 = v28[0];
    v9 = [v7 BOOLValue];
  }

  else
  {
    v10 = v28[0];
    v11 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v12 = v11;
    v13 = sub_29E752088();
    v14 = sub_29E7546A8();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v28[0] = v27;
      *v15 = 136446466;
      sub_29E609B5C(0, &qword_2A1857168, 0x29EDC6890);
      v16 = sub_29E755178();
      v18 = sub_29E6B9C90(v16, v17, v28);

      *(v15 + 4) = v18;
      *(v15 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v21 + 16))(v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v22 = sub_29E7541F8();
      v24 = sub_29E6B9C90(v22, v23, v28);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s]: Error reading paired device capability: %{public}s", v15, 0x16u);
      v9 = 2;
      v25 = v27;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v25, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);

      (*(v3 + 8))(v5, v2);
    }

    else
    {

      (*(v3 + 8))(v5, v2);
      return 2;
    }
  }

  return v9;
}

uint64_t sub_29E61E574(uint64_t a1)
{
  v2 = v1;
  v29[1] = *MEMORY[0x29EDCA608];
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0) + 32;
  v29[0] = 0;
  v7 = [v2 isFeatureCapabilitySupportedOnActivePairedDeviceWithError_];
  if (v7)
  {
    v8 = v7;
    v9 = v29[0];
    v10 = [v8 BOOLValue];
  }

  else
  {
    v11 = v29[0];
    v12 = sub_29E74EA48();

    swift_willThrow();
    sub_29E752068();
    v13 = v12;
    v14 = sub_29E752088();
    v15 = sub_29E7546A8();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29[0] = v28;
      *v16 = 136446466;
      v17 = sub_29E755178();
      v19 = sub_29E6B9C90(v17, v18, v29);

      *(v16 + 4) = v19;
      *(v16 + 12) = 2082;
      ErrorValue = swift_getErrorValue();
      MEMORY[0x2A1C7C4A8](ErrorValue);
      (*(v22 + 16))(v29 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0) + 32);
      v23 = sub_29E7541F8();
      v25 = sub_29E6B9C90(v23, v24, v29);

      *(v16 + 14) = v25;
      _os_log_impl(&dword_29E5ED000, v14, v15, "[%{public}s]: Error reading paired device capability: %{public}s", v16, 0x16u);
      v10 = 2;
      v26 = v28;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v26, -1, -1);
      MEMORY[0x29ED98410](v16, -1, -1);

      (*(v4 + 8))(v6, v3);
    }

    else
    {

      (*(v4 + 8))(v6, v3);
      return 2;
    }
  }

  return v10;
}

uint64_t sub_29E61E8E8()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_29E752098();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E752068();
  v7 = sub_29E752088();
  v8 = sub_29E7546C8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v21 = v3;
    v10 = v9;
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446210;
    v12 = sub_29E755178();
    v14 = sub_29E6B9C90(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_29E5ED000, v7, v8, "[%{public}s]: Updating onboarding capability for all sleep features", v10, 0xCu);
    sub_29E5FECBC(v11);
    MEMORY[0x29ED98410](v11, -1, -1);
    MEMORY[0x29ED98410](v10, -1, -1);

    (*(v4 + 8))(v6, v21);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  if (qword_2A1A7D610 != -1)
  {
    goto LABEL_12;
  }

  while (1)
  {
    v15 = off_2A1A7D620;
    v16 = sub_29E68B34C(MEMORY[0x29EDCA190]);
    v23 = v16;
    v17 = v15[2];
    if (!v17)
    {
      break;
    }

    v18 = 0;
    while (v18 < v15[2])
    {
      v22 = v15[v18 + 4];
      v19 = v22;
      sub_29E61EB9C(&v23, &v22, v1, ObjectType);

      if (v17 == ++v18)
      {
        v16 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_12:
    swift_once();
  }

LABEL_10:
  v23 = v16;

  sub_29E7527C8();
}

void sub_29E61EB9C(uint64_t a1, void **a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability);
  v5 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord);
  v6 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings);
  v7 = *a2;
  v9 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver + 24);
  v8 = *(a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver + 32);
  sub_29E601938((a3 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver), v9);
  v10 = *(v8 + 16);
  v16 = v6;
  v11 = v7;
  v15 = v5;
  v12 = v10(v9, v8);
  ObjectType = swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_29E61FC3C(v11, v4, v5, v6, v12 & 1, a4, ObjectType);

  sub_29E751758();
  sub_29E61DCC8(v14, v11);
}

uint64_t sub_29E61EE28(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = sub_29E752098();
  v6 = *(v5 - 8);
  MEMORY[0x2A1C7C4A8](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_29E753D78();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v12 = sub_29E754908();
  (*(v10 + 104))(v12, *MEMORY[0x29EDCA278], v9);
  v13 = sub_29E753DA8();
  result = (*(v10 + 8))(v12, v9);
  if (v13)
  {
    sub_29E752068();
    swift_unknownObjectRetain();
    v15 = sub_29E752088();
    v16 = sub_29E7546C8();
    sub_29E751758();
    v17 = os_log_type_enabled(v15, v16);
    v18 = &off_29F370000;
    v45 = ObjectType;
    if (v17)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v44 = v5;
      v21 = v20;
      v46[0] = v20;
      *v19 = 136446466;
      v22 = sub_29E755178();
      v43 = v6;
      v24 = sub_29E6B9C90(v22, v23, v46);

      *(v19 + 4) = v24;
      *(v19 + 12) = 2082;
      v25 = [a1 featureIdentifier];
      v26 = sub_29E7541D8();
      v28 = v27;

      v29 = sub_29E6B9C90(v26, v28, v46);

      *(v19 + 14) = v29;
      v18 = &off_29F370000;
      _os_log_impl(&dword_29E5ED000, v15, v16, "[%{public}s]: Responding to sleep paired capability change for feature %{public}s", v19, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v21, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);

      v43[1](v8, v44);
    }

    else
    {

      v6[1](v8, v5);
    }

    v44 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_onboardingCapability);

    v43 = [a1 v18[260]];
    v30 = [a1 v18[260]];
    v31 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_watchFeatureAvailability);
    v32 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepEventRecord);
    v33 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_sleepSettings);
    v34 = (v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver);
    v35 = *(v2 + OBJC_IVAR____TtC20SleepHealthAppPlugin29SleepOnboardingChangeDetector_isAgeGatedObserver + 24);
    v36 = v34[4];
    sub_29E601938(v34, v35);
    v37 = *(v36 + 16);
    v42 = v33;
    v38 = v32;
    v39 = v37(v35, v36);
    v40 = swift_getObjectType();
    swift_unknownObjectRetain();
    LOBYTE(v32) = sub_29E61FC3C(v30, v31, v32, v33, v39 & 1, v45, v40);

    sub_29E751758();
    v41 = sub_29E7527A8();
    sub_29E61DCC8(v32, v43);
    v41(v46, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_29E61F32C(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E754C68() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      sub_29E7541D8();
      sub_29E7550C8();
      v10 = v9;
      sub_29E7542D8();
      v11 = sub_29E755108();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + v3);
        v18 = (v16 + v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

uint64_t sub_29E61F4F4(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_29E754C68() + 1) & ~v5;
    do
    {
      sub_29E7550C8();

      sub_29E7542D8();
      v10 = sub_29E755108();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_29E61F6A4(char a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  result = sub_29E68AA8C(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 >= v13 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    v16 = result;
    sub_29E6A7724();
    result = v16;
    goto LABEL_8;
  }

  sub_29E6A6D2C(v13, a3 & 1);
  result = sub_29E68AA8C(a2);
  if ((v14 & 1) == (v17 & 1))
  {
LABEL_8:
    v18 = *v4;
    if (v14)
    {
      *(v18[7] + result) = a1 & 1;
      return result;
    }

    v18[(result >> 6) + 8] |= 1 << result;
    *(v18[6] + 8 * result) = a2;
    *(v18[7] + result) = a1 & 1;
    v19 = v18[2];
    v12 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (!v12)
    {
      v18[2] = v20;

      return MEMORY[0x2A1C710E0]();
    }

    goto LABEL_15;
  }

LABEL_16:
  type metadata accessor for HKFeatureIdentifier(0);
  sub_29E755078();
  __break(1u);
  return MEMORY[0x2A1C710E0]();
}

_OWORD *sub_29E61F800(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_29E68A9D0(a2, a3);
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
      sub_29E6A7874();
      v11 = v19;
      goto LABEL_8;
    }

    sub_29E6A6FDC(v16, a4 & 1);
    v11 = sub_29E68A9D0(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_29E755078();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 32 * v11);
    sub_29E5FECBC(v22);

    return sub_29E61FF28(a1, v22);
  }

  else
  {
    sub_29E61F950(v11, a2, a3, a1, v21);
  }
}

_OWORD *sub_29E61F950(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_29E61FF28(a4, (a5[7] + 32 * a1));
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

unint64_t sub_29E61F9BC(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v8 = sub_29E7541D8();
  v10 = v9;
  if (v8 == sub_29E7541D8() && v10 == v11)
  {

LABEL_16:
    if (a3)
    {
      return [a3 isCurrentSleepCoachingOnboardingCompleted] ^ 1;
    }

    return 2;
  }

  v13 = sub_29E755028();

  if (v13)
  {
    goto LABEL_16;
  }

  v14 = sub_29E7541D8();
  v16 = v15;
  if (v14 == sub_29E7541D8() && v16 == v17)
  {

LABEL_19:
    if (!a3 || !a4)
    {
      return 2;
    }

    v25 = a3;
    v26 = a4;
    if ([v25 isCurrentSleepWindDownShortcutsOnboardingCompleted])
    {

      return 0;
    }

    else
    {
      v27 = [v26 sleepModeOptions];

      return (v27 >> 14) & 1;
    }
  }

  v19 = sub_29E755028();

  if (v19)
  {
    goto LABEL_19;
  }

  v20 = sub_29E7541D8();
  v22 = v21;
  if (v20 == sub_29E7541D8() && v22 == v23)
  {

    if (!a3)
    {
      return 2;
    }
  }

  else
  {
    v28 = sub_29E755028();

    result = 2;
    if ((v28 & 1) == 0 || !a3)
    {
      return result;
    }
  }

  v29 = a3;
  v30 = sub_29E61E1F0();
  if (v30 == 2)
  {

    return 2;
  }

  v31 = v30;
  v32 = [v29 isCurrentSleepTrackingOnboardingCompleted];

  if (v32)
  {
    return 0;
  }

  else
  {
    return v31 & (a5 ^ 1) & 1;
  }
}

unint64_t sub_29E61FC3C(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7)
{
  v11 = sub_29E7541D8();
  v13 = v12;
  if (v11 == sub_29E7541D8() && v13 == v14)
  {

LABEL_16:
    if (a3)
    {
      return [a3 isCurrentSleepCoachingOnboardingCompleted] ^ 1;
    }

    return 2;
  }

  v16 = sub_29E755028();

  if (v16)
  {
    goto LABEL_16;
  }

  v17 = sub_29E7541D8();
  v19 = v18;
  if (v17 == sub_29E7541D8() && v19 == v20)
  {

LABEL_19:
    if (!a3 || !a4)
    {
      return 2;
    }

    v28 = a3;
    v29 = a4;
    if ([v28 isCurrentSleepWindDownShortcutsOnboardingCompleted])
    {

      return 0;
    }

    else
    {
      v30 = [v29 sleepModeOptions];

      return (v30 >> 14) & 1;
    }
  }

  v22 = sub_29E755028();

  if (v22)
  {
    goto LABEL_19;
  }

  v23 = sub_29E7541D8();
  v25 = v24;
  if (v23 == sub_29E7541D8() && v25 == v26)
  {

    if (!a3)
    {
      return 2;
    }
  }

  else
  {
    v31 = sub_29E755028();

    result = 2;
    if ((v31 & 1) == 0 || !a3)
    {
      return result;
    }
  }

  v32 = a3;
  v33 = sub_29E61E574(a7);
  if (v33 == 2)
  {

    return 2;
  }

  v34 = v33;
  v35 = [v32 isCurrentSleepTrackingOnboardingCompleted];

  if (v35)
  {
    return 0;
  }

  else
  {
    return v34 & (a5 ^ 1) & 1;
  }
}

void sub_29E61FED0(uint64_t a1)
{
  if (!qword_2A1A7D3E0)
  {
    type metadata accessor for HKFeatureIdentifier(255);
    v1 = sub_29E754FE8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1A7D3E0);
    }
  }
}

_OWORD *sub_29E61FF28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_29E61FF38(void *a1, const char *a2, void *a3)
{
  v37 = a2;
  v5 = v3;
  swift_getObjectType();
  v7 = sub_29E752098();
  v39 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_29E753D78();
  v11 = *(v10 - 8);
  MEMORY[0x2A1C7C4A8](v10);
  v13 = (&v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_29E609B5C(0, &qword_2A1A7D470, 0x29EDCA548);
  *v13 = sub_29E754908();
  (*(v11 + 104))(v13, *MEMORY[0x29EDCA278], v10);
  v14 = sub_29E753DA8();
  result = (*(v11 + 8))(v13, v10);
  if (v14)
  {
    v38 = v7;
    sub_29E752068();
    v16 = a1;
    v17 = sub_29E752088();
    v18 = sub_29E7546C8();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v40 = v35;
      *v19 = 136446466;
      v20 = sub_29E755178();
      v22 = sub_29E6B9C90(v20, v21, &v40);
      v36 = v5;
      v23 = v22;

      *(v19 + 4) = v23;
      *(v19 + 12) = 2082;
      v24 = v16;
      v25 = [v24 description];
      v26 = a3;
      v27 = sub_29E7541D8();
      v29 = v28;

      v30 = v27;
      a3 = v26;
      v31 = sub_29E6B9C90(v30, v29, &v40);

      *(v19 + 14) = v31;
      v5 = v36;
      _os_log_impl(&dword_29E5ED000, v17, v18, v37, v19, 0x16u);
      v32 = v35;
      swift_arrayDestroy();
      MEMORY[0x29ED98410](v32, -1, -1);
      MEMORY[0x29ED98410](v19, -1, -1);
    }

    (*(v39 + 8))(v9, v38);
    v33 = *(v5 + *a3);
    *(v5 + *a3) = v16;
    v34 = v16;

    return sub_29E61E8E8();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t type metadata accessor for FocusPromotionDataSource(uint64_t a1)
{
  result = qword_2A1857258;
  if (!qword_2A1857258)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_29E620344()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  type metadata accessor for FocusPromotionDataSource(0);
  swift_allocObject();
  v3 = v2;

  sub_29E6208C0(v3, v1);

  sub_29E62129C(&qword_2A1857268, type metadata accessor for FocusPromotionDataSource, MEMORY[0x29EDC2030]);
  sub_29E750828();

  v4 = sub_29E750818();

  return v4;
}

uint64_t sub_29E620430(uint64_t a1, uint64_t a2)
{
  sub_29E621488(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E620678(v4);
    sub_29E750908();
  }
}

uint64_t sub_29E620554(uint64_t a1, uint64_t a2)
{
  sub_29E621488(0);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_29E620678(v4);
    sub_29E750908();
  }
}

uint64_t sub_29E620678@<X0>(uint64_t a1@<X8>)
{
  sub_29E7527B8();
  v4 = v10 != 1 || v12 == 0 || v11 == 0;
  if (!v4 && *(v1 + qword_2A1857230) && (swift_getKeyPath(), swift_getKeyPath(), sub_29E752888(), , , (v9 & 1) != 0))
  {
    v5 = MEMORY[0x29EDC2000];
  }

  else
  {
    v5 = MEMORY[0x29EDC1FF8];
  }

  v6 = *v5;
  sub_29E621488(0);
  return (*(*(v7 - 8) + 104))(a1, v6, v7);
}

uint64_t sub_29E6207BC()
{
}

uint64_t sub_29E62080C()
{
  v0 = *(sub_29E750938() + qword_2A1857230);

  return swift_deallocClassInstance();
}

uint64_t sub_29E6208C0(void *a1, uint64_t a2)
{
  v3 = v2;
  sub_29E62154C(0, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
  v7 = *(v6 - 8);
  v54 = v6;
  v55 = v7;
  MEMORY[0x2A1C7C4A8](v6);
  v52 = v44 - v8;
  sub_29E6210BC(0);
  v10 = *(v9 - 8);
  v56 = v9;
  v57 = v10;
  MEMORY[0x2A1C7C4A8](v9);
  v50 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6211B0(0);
  v13 = *(v12 - 8);
  v58 = v12;
  v59 = v13;
  MEMORY[0x2A1C7C4A8](v12);
  v53 = v44 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6212E4(0);
  MEMORY[0x2A1C7C4A8](v15 - 8);
  v17 = v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E62133C(0);
  v19 = *(v18 - 8);
  v47 = v18;
  v48 = v19;
  MEMORY[0x2A1C7C4A8](v18);
  v21 = v44 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E621488(0);
  v23 = v22;
  v24 = *(v22 - 8);
  MEMORY[0x2A1C7C4A8](v22);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v3 + qword_2A1857240) = MEMORY[0x29EDCA1A0];
  *(v3 + qword_2A1857230) = a1;
  *(v3 + qword_2A1857238) = a2;
  type metadata accessor for SleepFocusPromotionSection(0);
  swift_allocObject();
  v27 = a1;

  v51 = sub_29E70ED30(v27);
  v28 = *MEMORY[0x29EDC1FF8];
  v29 = *(v24 + 104);
  v49 = v26;
  v29(v26, v28, v23);

  v30 = sub_29E750918();
  v60 = a2;
  sub_29E602DD4();
  swift_retain_n();
  v31 = sub_29E754908();
  v61 = v31;
  v32 = sub_29E7548D8();
  v33 = *(v32 - 8);
  v45 = *(v33 + 56);
  v46 = v33 + 56;
  v45(v17, 1, 1, v32);
  sub_29E621428();
  sub_29E62129C(&qword_2A18572A8, sub_29E621428, MEMORY[0x29EDB8A70]);
  v44[1] = sub_29E62129C(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
  sub_29E752968();
  sub_29E6214E8(v17);

  swift_allocObject();
  swift_weakInit();
  v34 = MEMORY[0x29EDB89E8];
  sub_29E62129C(&qword_2A18572B8, sub_29E62133C, MEMORY[0x29EDB89E8]);
  v35 = v47;
  sub_29E7529A8();

  (*(v48 + 8))(v21, v35);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  swift_beginAccess();
  sub_29E62154C(0, &qword_2A185A450, MEMORY[0x29EDB8B00]);
  v36 = v52;
  sub_29E752878();
  swift_endAccess();
  sub_29E62113C();
  v37 = v50;
  v38 = v54;
  sub_29E752988();
  (*(v55 + 8))(v36, v38);
  v39 = sub_29E754908();
  v60 = v39;
  v45(v17, 1, 1, v32);
  sub_29E62129C(&qword_2A1857290, sub_29E6210BC, MEMORY[0x29EDB8918]);
  v40 = v53;
  v41 = v56;
  sub_29E752968();
  sub_29E6214E8(v17);

  (*(v57 + 8))(v37, v41);
  swift_allocObject();
  swift_weakInit();

  sub_29E62129C(&qword_2A18572C0, sub_29E6211B0, v34);
  v42 = v58;
  sub_29E7529A8();

  (*(v59 + 8))(v40, v42);
  swift_beginAccess();
  sub_29E752708();
  swift_endAccess();

  sub_29E620678(v49);
  sub_29E750908();

  return v30;
}

void sub_29E6210BC(uint64_t a1)
{
  if (!qword_2A1857278)
  {
    sub_29E62154C(255, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
    sub_29E62113C();
    v1 = sub_29E752648();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857278);
    }
  }
}

unint64_t sub_29E62113C()
{
  result = qword_2A1857280;
  if (!qword_2A1857280)
  {
    sub_29E62154C(255, &qword_2A1857270, MEMORY[0x29EDB8AF0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857280);
  }

  return result;
}

void sub_29E6211B0(uint64_t a1)
{
  if (!qword_2A1857288)
  {
    sub_29E6210BC(255);
    sub_29E602DD4();
    sub_29E62129C(&qword_2A1857290, sub_29E6210BC, MEMORY[0x29EDB8918]);
    sub_29E62129C(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857288);
    }
  }
}

uint64_t sub_29E62129C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_29E6212E4(uint64_t a1)
{
  if (!qword_2A1856860)
  {
    sub_29E7548D8();
    v1 = sub_29E754BD8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1856860);
    }
  }
}

void sub_29E62133C(uint64_t a1)
{
  if (!qword_2A1857298)
  {
    sub_29E621428();
    sub_29E602DD4();
    sub_29E62129C(&qword_2A18572A8, sub_29E621428, MEMORY[0x29EDB8A70]);
    sub_29E62129C(&qword_2A18568B8, sub_29E602DD4, MEMORY[0x29EDCA280]);
    v1 = sub_29E7526C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857298);
    }
  }
}

void sub_29E621428()
{
  if (!qword_2A18572A0)
  {
    v0 = sub_29E7527D8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A18572A0);
    }
  }
}

void sub_29E621488(uint64_t a1)
{
  if (!qword_2A18572B0)
  {
    type metadata accessor for SleepFocusPromotionSection(255);
    v1 = sub_29E7508F8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18572B0);
    }
  }
}

uint64_t sub_29E6214E8(uint64_t a1)
{
  sub_29E6212E4(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_29E62154C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x29EDC9A98]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E6215D4(uint64_t a1, uint64_t a2)
{
  v2 = sub_29E7509D8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7509C8();
  v6 = sub_29E750988();
  (*(v3 + 8))(v5, v2);

  return v6;
}

uint64_t sub_29E621724@<X0>(void *a1@<X1>, void *a2@<X2>, void *a3@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6 = a2;
  v7 = a1;
  v8 = sub_29E754A58();
  v9 = [v7 identifier];
  v10 = sub_29E7541D8();
  v12 = v11;

  MEMORY[0x29ED96C20](v10, v12);

  a3[3] = &type metadata for ChartItem;
  a3[4] = sub_29E621E84();
  v13 = swift_allocObject();
  *a3 = v13;

  v13[2] = v7;
  v13[3] = a2;
  v13[4] = v8;
  v13[5] = 0x6574497472616843;
  v13[6] = 0xEA00000000005F6DLL;
  return result;
}

uint64_t sub_29E62188C()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_29E6218FC(uint64_t a1, void *a2)
{
  v32 = a1;
  v3 = sub_29E7511A8();
  v37 = *(v3 - 8);
  v38 = v3;
  MEMORY[0x2A1C7C4A8](v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_29E74ED88();
  v5 = *(v34 - 8);
  MEMORY[0x2A1C7C4A8](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_29E750CA8();
  v33 = *(v35 - 8);
  MEMORY[0x2A1C7C4A8](v35);
  v39 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E621E28(0, &qword_2A185A510, sub_29E61BFEC);
  v9 = swift_allocObject();
  v31 = xmmword_29E762F30;
  *(v9 + 16) = xmmword_29E762F30;
  v10 = a2;
  v11 = sub_29E7513A8();
  v40 = 0x6574497472616843;
  v41 = 0xEA00000000005F6DLL;
  v12 = [v10 identifier];
  v13 = sub_29E7541D8();
  v15 = v14;

  MEMORY[0x29ED96C20](v13, v15);

  v16 = v40;
  v17 = v41;
  *(v9 + 56) = &type metadata for ChartItem;
  *(v9 + 64) = sub_29E621DD4();
  v18 = swift_allocObject();
  *(v9 + 32) = v18;
  v18[2] = v10;
  v18[3] = v11;
  v18[4] = 0;
  v18[5] = v16;
  v18[6] = v17;
  sub_29E74ED78();
  sub_29E74ED48();
  (*(v5 + 8))(v7, v34);
  v19 = v39;
  sub_29E750C98();
  sub_29E621E28(0, &qword_2A1856858, MEMORY[0x29EDC2240]);
  v20 = v33;
  v21 = (*(v33 + 80) + 32) & ~*(v33 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v31;
  v23 = v35;
  (*(v20 + 16))(v22 + v21, v19, v35);
  sub_29E7516E8();
  swift_allocObject();
  sub_29E7516D8();
  v24 = sub_29E7513A8();
  v25 = v36;
  sub_29E751198();
  *(swift_allocObject() + 16) = v24;
  v26 = v24;

  v27 = sub_29E751178();
  v29 = v28;

  (*(v37 + 8))(v25, v38);
  (*(v20 + 8))(v39, v23);

  return v27;
}

unint64_t sub_29E621DD4()
{
  result = qword_2A18572C8;
  if (!qword_2A18572C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18572C8);
  }

  return result;
}

void sub_29E621E28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_29E754FE8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_29E621E84()
{
  result = qword_2A18572D0;
  if (!qword_2A18572D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18572D0);
  }

  return result;
}

id sub_29E621ED8()
{
  v1 = *&v0[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults];
  v2 = v0;

  v3 = sub_29E754198();

  [v1 removeObserver:v2 forKeyPath:v3 context:&v2[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext]];

  v5.receiver = v2;
  v5.super_class = type metadata accessor for UserDefaultsBooleanObserver();
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void sub_29E6220BC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char *a5)
{
  if (a5 && &v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_observerContext] == a5)
  {
    v8 = *&v5[OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults];
    v9 = sub_29E754198();
    LOBYTE(v8) = [v8 BOOLForKey_];

    LOBYTE(v21[0]) = v8;
    sub_29E752768();
    return;
  }

  if (a2)
  {
    v10 = a3;
    v11 = sub_29E754198();
    a3 = v10;
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  sub_29E6226E8(a3, v21);
  v13 = v22;
  if (!v22)
  {
    v18 = 0;
    if (!a4)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v14 = sub_29E601938(v21, v22);
  v15 = *(v13 - 8);
  MEMORY[0x2A1C7C4A8](v14);
  v17 = &v20 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17);
  v18 = sub_29E755018();
  (*(v15 + 8))(v17, v13);
  sub_29E5FECBC(v21);
  if (a4)
  {
LABEL_9:
    type metadata accessor for NSKeyValueChangeKey(0);
    sub_29E6226A0(&qword_2A1856610, type metadata accessor for NSKeyValueChangeKey, &unk_29E762DD0);
    a4 = sub_29E754068();
  }

LABEL_10:
  v19 = type metadata accessor for UserDefaultsBooleanObserver();
  v20.receiver = v5;
  v20.super_class = v19;
  objc_msgSendSuper2(&v20, sel_observeValueForKeyPath_ofObject_change_context_, v12, v18, a4, a5);

  sub_29E751758();
}

id sub_29E6224E8()
{
  v1 = *(*v0 + OBJC_IVAR____TtC20SleepHealthAppPlugin27UserDefaultsBooleanObserver_defaults);
  v2 = sub_29E754198();
  v3 = [v1 BOOLForKey_];

  return v3;
}

uint64_t sub_29E62254C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_29E6225D8@<X0>(char *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  type metadata accessor for BooleanObserver();
  v4 = swift_allocObject();
  sub_29E622640();
  swift_allocObject();
  result = sub_29E752778();
  *(v4 + 16) = result;
  *(v4 + 24) = v3;
  *a2 = v4;
  return result;
}

void sub_29E622640()
{
  if (!qword_2A1A7D4E8)
  {
    v0 = sub_29E752788();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1A7D4E8);
    }
  }
}

uint64_t sub_29E6226A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E6226E8(uint64_t a1, uint64_t a2)
{
  sub_29E60E8E8();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E622760(void *a1)
{
  sub_29E623808(0, &qword_2A1859CD0, MEMORY[0x29EDCA398], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v11 - v3;
  v5 = sub_29E7544F8();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  sub_29E7544C8();
  v6 = a1;
  v7 = sub_29E7544B8();
  v8 = swift_allocObject();
  v9 = MEMORY[0x29EDCA390];
  v8[2] = v7;
  v8[3] = v9;
  v8[4] = v6;
  sub_29E6E4804(0, 0, v4, &unk_29E764B18, v8);
}

uint64_t sub_29E6228AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_29E7544C8();
  *(v4 + 24) = sub_29E7544B8();
  v6 = sub_29E754468();

  return MEMORY[0x2A1C73D48](sub_29E622944, v6, v5);
}

uint64_t sub_29E622944()
{
  v1 = *(v0 + 16);

  sub_29E623920(v1);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_29E6229B0()
{
  v0 = sub_29E74F7F8();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v3, *MEMORY[0x29EDC6B10], v0);
  v4 = sub_29E74F7E8();
  (*(v1 + 8))(v3, v0);
  return v4;
}

uint64_t sub_29E622AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

uint64_t sub_29E622B94()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  return sub_29E74E9D8();
}

void sub_29E622C34()
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v0 = qword_2A1A7FA18;
  v1 = sub_29E754198();
  v2 = [objc_opt_self() imageNamed:v1 inBundle:v0];

  if (!v2)
  {
    __break(1u);
  }
}

unint64_t *sub_29E622D00()
{
  v0 = sub_29E750528();
  v1 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E693FB8(v3);
  v4 = sub_29E750518();
  (*(v1 + 8))(v3, v0);
  v5 = sub_29E6D5A34(v4);

  return v5;
}

void sub_29E622DEC()
{
  sub_29E623808(0, &qword_2A18572F8, MEMORY[0x29EDC1638], MEMORY[0x29EDC9E90]);
  v0 = sub_29E750108();
  v1 = *(v0 - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v1 + 72);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_29E764A50;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v5 = qword_2A1A7FA18;
  v6 = sub_29E754198();
  v7 = [objc_opt_self() imageNamed:v6 inBundle:v5];

  if (v7)
  {
    v8 = v4 + v2;
    *v8 = v7;
    *(v8 + 8) = 0;
    v9 = *(v1 + 104);
    (v9)(v4 + v2, *MEMORY[0x29EDC1608], v0);
    v10 = (v4 + v2 + v3);
    *v10 = sub_29E74E9D8();
    v10[1] = v11;
    (v9)(v10, *MEMORY[0x29EDC1610], v0);
    v12 = v0;
    v13 = (v4 + v2 + 2 * v3);
    *v13 = sub_29E74E9D8();
    v13[1] = v14;
    v13[2] = 0;
    v51 = *MEMORY[0x29EDC15D0];
    v9(v13);
    v15 = v4 + v2 + 3 * v3;
    *v15 = sub_29E74E9D8();
    *(v15 + 8) = v16;
    *(v15 + 16) = 0;
    v17 = *MEMORY[0x29EDC1630];
    (v9)(v15, v17, v12);
    v18 = v3;
    v19 = 4 * v3;
    v20 = v4 + v2 + v19;
    *v20 = sub_29E74E9D8();
    *(v20 + 8) = v21;
    *(v20 + 16) = 0;
    (v9)(v20, v17, v12);
    v22 = v4 + v2 + v19 + v18;
    *v22 = sub_29E74E9D8();
    *(v22 + 8) = v23;
    *(v22 + 16) = 0;
    (v9)(v22, v17, v12);
    v24 = (v4 + v2 + 6 * v18);
    *v24 = sub_29E74E9D8();
    v24[1] = v25;
    v24[2] = 0;
    (v9)(v24, v51, v12);
    v52 = v18;
    v26 = 7 * v18;
    v18 *= 8;
    v27 = v4 + v2 + v26;
    *v27 = sub_29E74E9D8();
    *(v27 + 8) = v28;
    *(v27 + 16) = 0;
    (v9)(v27, v17, v12);
    v29 = v4 + v2 + v18;
    *v29 = sub_29E74E9D8();
    *(v29 + 8) = v30;
    *(v29 + 16) = 0;
    (v9)(v29, v17, v12);
    v31 = v4 + v2 + v18 + v52;
    *v31 = sub_29E74E9D8();
    *(v31 + 8) = v32;
    *(v31 + 16) = 0;
    (v9)(v31, v17, v12);
    v33 = v4 + v2 + 10 * v52;
    *v33 = sub_29E74E9D8();
    *(v33 + 8) = v34;
    *(v33 + 16) = 0;
    (v9)(v33, v17, v12);
    v35 = v4 + v2 + 11 * v52;
    *v35 = sub_29E74E9D8();
    *(v35 + 8) = v36;
    *(v35 + 16) = 0;
    (v9)(v35, v17, v12);
    v37 = (v4 + v2 + 12 * v52);
    *v37 = sub_29E74E9D8();
    v37[1] = v38;
    v37[2] = 0;
    (v9)(v37, v51, v12);
    v39 = v4 + v2 + 13 * v52;
    *v39 = sub_29E74E9D8();
    *(v39 + 8) = v40;
    *(v39 + 16) = 0;
    (v9)(v39, v17, v12);
    v41 = v4 + v2 + 14 * v52;
    *v41 = sub_29E74E9D8();
    *(v41 + 8) = v42;
    *(v41 + 16) = 0;
    (v9)(v41, v17, v12);
    v43 = v4 + v2 + 15 * v52;
    *v43 = sub_29E74E9D8();
    *(v43 + 8) = v44;
    *(v43 + 16) = 0;
    (v9)(v43, v17, v12);
    v45 = (v4 + v2 + 16 * v52);
    sub_29E62379C(0);
    v47 = (v45 + *(v46 + 48));
    *v45 = sub_29E74E9D8();
    v45[1] = v48;
    *v47 = sub_29E622760;
    v47[1] = 0;
    v49 = *MEMORY[0x29EDC15B8];
    v50 = sub_29E7500F8();
    (*(*(v50 - 8) + 104))(v47, v49, v50);
    (v9)(v45, *MEMORY[0x29EDC1600], v12);
  }

  else
  {
    __break(1u);
  }
}

void sub_29E62379C(uint64_t a1)
{
  if (!qword_2A1857300)
  {
    sub_29E7500F8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A1857300);
    }
  }
}

void sub_29E623808(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_29E62386C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_29E605728;

  return sub_29E6228AC(a1, v4, v5, v6);
}

uint64_t sub_29E623920(void *a1)
{
  v2 = sub_29E74F7F8();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v5, *MEMORY[0x29EDC6B20], v2);
  sub_29E746094(v10);
  (*(v3 + 8))(v5, v2);
  sub_29E601938(v10, v11);
  sub_29E750148();
  sub_29E601938(v10, v11);
  sub_29E750138();
  v6 = objc_allocWithZone(sub_29E750128());
  v7 = sub_29E750118();
  v8 = [objc_allocWithZone(MEMORY[0x29EDC4750]) initWithRootViewController_];
  [a1 presentViewController:v8 animated:1 completion:0];

  return sub_29E5FECBC(v10);
}

void sub_29E623AE8(unint64_t *a1@<X8>)
{
  v2 = 0xEE00737265646E69;
  v3 = 0x6D65527065656C73;
  v4 = 0x800000029E759300;
  v5 = 0xD000000000000017;
  if (*v1 != 2)
  {
    v5 = 0x746157656C707061;
    v4 = 0xEA00000000006863;
  }

  if (*v1)
  {
    v3 = 0x7365527065656C73;
    v2 = 0xEC00000073746C75;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

double sub_29E623B84@<D0>(unsigned __int8 a1@<W0>, uint64_t a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1 > 1u)
  {
    if (a1 != 2)
    {
      sub_29E628268(&v39);
      v34 = v39;
      LOBYTE(v35) = v40;
      v46[0] = *(&v40 + 1);
      v44 = v41;
      v45 = v42;
      v43 = *(&v42 + 1);
      v26 = 1;
      v28 = v39;
      v29 = v40;
      v30 = v41;
      v31 = v42;
      LOBYTE(v32) = 1;
      sub_29E6283CC(&v34, v24);
      v11 = MEMORY[0x29EDBCA08];
      v12 = MEMORY[0x29EDC9A40];
      sub_29E628F88(v46, v24, &qword_2A1857308, MEMORY[0x29EDBCA08], MEMORY[0x29EDC9A40]);
      sub_29E6283CC(&v44, v24);
      sub_29E628F88(&v43, v24, &qword_2A1857308, v11, v12);
      sub_29E628428();
      sub_29E62847C();
      sub_29E753118();
      v30 = v20;
      v31 = v21;
      LOBYTE(v32) = v22;
      v28 = v18;
      v29 = v19;
      v27 = 1;
      HIBYTE(v33) = 1;
      v13 = MEMORY[0x29EDBC7F0];
      sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
      sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v13);
      sub_29E6284D0();
      sub_29E628624();
      sub_29E753118();
      sub_29E6286D0(&v34);
      sub_29E628724(v46);
      sub_29E6286D0(&v44);
      sub_29E628724(&v43);
      goto LABEL_12;
    }

    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    v5 = sub_29E752CE8();
    LOBYTE(v44) = 0;
    sub_29E628428();
    sub_29E62847C();
    v6 = v5;
    sub_29E753118();
    v30 = v20;
    v31 = v21;
    LOBYTE(v32) = v22;
    v28 = v18;
    v29 = v19;
    LOBYTE(v34) = 1;
    HIBYTE(v33) = 1;
    v7 = MEMORY[0x29EDBC7F0];
    sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
    sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v7);
    sub_29E6284D0();
    sub_29E628624();
    sub_29E753118();
  }

  else
  {
    if (!a1)
    {
      sub_29E6280A8(&v34);
      v30 = v36;
      v31 = v37;
      v32 = v38;
      v28 = v34;
      v29 = v35;
      LOBYTE(v46[0]) = 0;
      LOBYTE(v33) = 0;
      sub_29E6287A4(&v34, v24);
      sub_29E62857C();
      sub_29E6285D0();
      sub_29E753118();
      v30 = v20;
      v31 = v21;
      v32 = v22;
      v33 = v23;
      v28 = v18;
      v29 = v19;
      LOBYTE(v44) = 0;
      v4 = MEMORY[0x29EDBC7F0];
      sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
      sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v4);
      sub_29E6284D0();
      sub_29E628624();
      sub_29E753118();
      sub_29E6287DC(&v34);
LABEL_12:

      goto LABEL_13;
    }

    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    v8 = sub_29E752CE8();
    LOBYTE(v24[0]) = 0;
    sub_29E7539F8();
    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();
    LOBYTE(v44) = 1;
    sub_29E62857C();
    sub_29E6285D0();
    v9 = v8;

    sub_29E753118();
    v30 = v20;
    v31 = v21;
    v32 = v22;
    v33 = v23;
    v28 = v18;
    v29 = v19;
    LOBYTE(v34) = 0;
    v10 = MEMORY[0x29EDBC7F0];
    sub_29E629400(0, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
    sub_29E629400(0, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, v10);
    sub_29E6284D0();
    sub_29E628624();
    sub_29E753118();
  }

LABEL_13:
  v32 = v24[4];
  v14 = v25;
  v28 = v24[0];
  v29 = v24[1];
  v15 = v24[3];
  *(a2 + 32) = v24[2];
  *(a2 + 48) = v15;
  *(a2 + 64) = v32;
  *(a2 + 80) = v14;
  result = *&v28;
  v17 = v29;
  *a2 = v28;
  *(a2 + 16) = v17;
  return result;
}

void sub_29E624308(unsigned __int8 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, char a9)
{
  v11 = *a1;
  aBlock = a4;
  v16 = a5;
  LOBYTE(v17) = a6;
  v21 = v11;
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  sub_29E753AD8();
  if (v11 == 1)
  {
    v12 = [objc_opt_self() currentNotificationCenter];
    v13 = swift_allocObject();
    *(v13 + 16) = a7;
    *(v13 + 24) = a8;
    *(v13 + 32) = a9 & 1;
    v19 = sub_29E628CB8;
    v20 = v13;
    aBlock = MEMORY[0x29EDCA5F8];
    v16 = 1107296256;
    v17 = sub_29E62452C;
    v18 = &unk_2A24FE890;
    v14 = _Block_copy(&aBlock);

    [v12 getNotificationSettingsWithCompletionHandler_];
    _Block_release(v14);
  }
}

unint64_t sub_29E624480(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  result = [a1 authorizationStatus];
  if (result <= 4 && ((1 << result) & 0x13) != 0)
  {
    sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
    return sub_29E753AD8();
  }

  return result;
}

void sub_29E62452C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_29E624594()
{
  if (*v0)
  {
    v1 = *v0;
    v2 = sub_29E74F3C8();

    if (v2)
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_2A1A7D6F0 == -1)
    {
LABEL_6:
      sub_29E74E9D8();
      sub_29E60DE10();
      return sub_29E753608();
    }

    swift_once();
    goto LABEL_6;
  }

  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  result = sub_29E752CD8();
  __break(1u);
  return result;
}

uint64_t sub_29E624724@<X0>(uint64_t a1@<X8>)
{
  v15[1] = a1;
  v2 = MEMORY[0x29EDBCA18];
  sub_29E628CDC(0, &qword_2A1857358, MEMORY[0x29EDBCA18]);
  v15[0] = v3;
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = v15 - v5;
  v20 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 56);
  v24 = v20;
  v25 = *(v1 + 48);
  v23 = v8;
  v21 = v7;
  v22 = v8;
  sub_29E6283CC(&v24, &v17);
  sub_29E628F88(&v23, &v17, &qword_2A1857308, MEMORY[0x29EDBCA08], MEMORY[0x29EDC9A40]);
  *&v17 = sub_29E624594();
  *(&v17 + 1) = v9;
  v18 = v10 & 1;
  v19 = v11;
  v16 = v1;
  v12 = MEMORY[0x29EDBC288];
  sub_29E629400(0, &qword_2A1857360, v2, MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
  sub_29E628BDC(&qword_2A1857368, &qword_2A1857360, v12, MEMORY[0x29EDBC290]);
  sub_29E753B88();
  v17 = *(v1 + 16);
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A18();
  sub_29E754278();
  sub_29E754288();
  sub_29E628D78(&qword_2A1857378, &qword_2A1857358, MEMORY[0x29EDBCA18]);
  v13 = v15[0];
  sub_29E753628();

  return (*(v4 + 8))(v6, v13);
}

uint64_t sub_29E624A08(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  v2 = MEMORY[0x29EDCA390];
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(a1 + 72);
  v24 = *(a1 + 64);
  v25 = v3;
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

  sub_29E753A18();
  v4 = v21;
  v5 = v22;
  v6 = v23;
  sub_29E6287A4(a1, &v21);
  v7 = sub_29E7544B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = *(a1 + 48);
  *(v8 + 64) = *(a1 + 32);
  *(v8 + 80) = v9;
  *(v8 + 96) = *(a1 + 64);
  v10 = *(a1 + 16);
  *(v8 + 32) = *a1;
  *(v8 + 48) = v10;
  sub_29E6287A4(a1, &v21);
  v11 = sub_29E7544B8();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = v2;
  v13 = *(a1 + 48);
  *(v12 + 64) = *(a1 + 32);
  *(v12 + 80) = v13;
  *(v12 + 96) = *(a1 + 64);
  v14 = *(a1 + 16);
  *(v12 + 32) = *a1;
  *(v12 + 48) = v14;
  sub_29E753AE8();
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = v15;
  *(v18 + 40) = v16;
  *(v18 + 48) = v17;
  v19 = swift_allocObject();
  *(v19 + 16) = 0;
  *(v19 + 24) = 0;
  *(v19 + 32) = v15;
  *(v19 + 40) = v16;
  *(v19 + 48) = v17;
  *(v19 + 56) = v4;
  *(v19 + 64) = v5;
  *(v19 + 72) = v6;

  sub_29E753AE8();
  sub_29E60DE10();
  sub_29E753A88();
}

void sub_29E624CC4(id *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v4 = *a1;
    v5 = sub_29E74F3C8();

    *a2 = v5 & 1;
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    sub_29E752CD8();
    __break(1u);
  }
}

void sub_29E624DDC(unsigned __int8 *a1, uint64_t a2, uint64_t a3, id *a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4)
  {
    v5 = *a4;
    sub_29E74F3D8();
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    sub_29E752CD8();
    __break(1u);
  }
}

uint64_t sub_29E624F50@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_29E628CDC(0, &qword_2A1857388, MEMORY[0x29EDBCBF8]);
  v5 = v4;
  v6 = *(v4 - 8);
  MEMORY[0x2A1C7C4A8](v4);
  v8 = &v18 - v7;
  if (*v1)
  {
    v9 = *v1;
    v10 = sub_29E74F3A8();

    v18 = a1;
    v19 = v5;
    if (v10)
    {
      if (qword_2A1A7D6F0 == -1)
      {
        goto LABEL_6;
      }
    }

    else if (qword_2A1A7D6F0 == -1)
    {
LABEL_6:
      v21 = sub_29E74E9D8();
      v22 = v11;
      sub_29E60DE10();
      v21 = sub_29E753608();
      v22 = v12;
      v23 = v13 & 1;
      v24 = v14;
      MEMORY[0x2A1C7C4A8](v21);
      v15 = MEMORY[0x29EDBC288];
      sub_29E629400(0, &qword_2A1857360, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
      sub_29E628BDC(&qword_2A1857368, &qword_2A1857360, v15, MEMORY[0x29EDBC290]);
      sub_29E753B98();
      v20 = *(v2 + 1);
      sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
      sub_29E753A18();
      sub_29E754268();
      sub_29E754288();
      sub_29E628D78(&qword_2A1857390, &qword_2A1857388, MEMORY[0x29EDBCBF8]);
      v16 = v19;
      sub_29E753628();

      return (*(v6 + 8))(v8, v16);
    }

    swift_once();
    goto LABEL_6;
  }

  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  result = sub_29E752CD8();
  __break(1u);
  return result;
}

uint64_t sub_29E625364(__int128 *a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  v2 = MEMORY[0x29EDCA390];
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v27 = a1[2];
  v3 = a1[1];
  v24 = a1[2];
  v26 = v3;
  v4 = MEMORY[0x29EDC9A98];
  v5 = MEMORY[0x29EDBCB00];
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);

  sub_29E753A18();
  v6 = v21;
  v20 = v22;
  v19 = v23;
  v25 = *a1;
  sub_29E628E30(&v27, &v21);
  sub_29E628E8C(&v25, &v21, sub_29E628EF4);
  sub_29E628F88(&v26, &v21, &qword_2A1857370, v4, v5);
  v7 = sub_29E7544B8();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = v2;
  v9 = a1[1];
  *(v8 + 32) = *a1;
  *(v8 + 48) = v9;
  *(v8 + 64) = a1[2];
  sub_29E628E30(&v27, &v21);
  sub_29E628E8C(&v25, &v21, sub_29E628EF4);
  sub_29E628F88(&v26, &v21, &qword_2A1857370, v4, v5);
  v10 = sub_29E7544B8();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = v2;
  v12 = a1[1];
  *(v11 + 32) = *a1;
  *(v11 + 48) = v12;
  *(v11 + 64) = a1[2];
  sub_29E753AE8();
  v13 = v21;
  v14 = v22;
  v15 = v23;
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v13;
  *(v16 + 40) = v14;
  *(v16 + 48) = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  *(v17 + 32) = v13;
  *(v17 + 40) = v14;
  *(v17 + 48) = v15;
  *(v17 + 56) = v6;
  *(v17 + 64) = v20;
  *(v17 + 72) = v19;

  sub_29E753AE8();
  sub_29E60DE10();
  sub_29E753A88();
}

void sub_29E6256A0(id *a1@<X2>, _BYTE *a2@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a1)
  {
    v4 = *a1;
    v5 = sub_29E74F3A8();

    *a2 = v5 & 1;
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    sub_29E752CD8();
    __break(1u);
  }
}

void sub_29E6257B8(unsigned __int8 *a1, uint64_t a2, uint64_t a3, id *a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*a4)
  {
    v5 = *a4;
    sub_29E74F3B8();
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    sub_29E752CD8();
    __break(1u);
  }
}

uint64_t sub_29E625924(void *a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a1;
    sub_29E74F388();

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();

    sub_29E60DE10();
    return sub_29E753608();
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    result = sub_29E752CD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E625A84(void *a1, uint64_t a2)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  if (a1)
  {
    v3 = a1;
    sub_29E752BA8();
    v4 = sub_29E7539F8();
    MEMORY[0x2A1C7C4A8](v4);
    sub_29E629400(0, &qword_2A18573A8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29E629260();
    sub_29E6292F8();
    sub_29E752B48();
  }

  else
  {
    result = sub_29E752CD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E625CB0()
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  MEMORY[0x2A1C7C4A8](isCurrentExecutor);
  sub_29E752B28();
}

uint64_t sub_29E625DBC@<X0>(void *a1@<X0>, uint64_t a3@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (a1)
  {
    v5 = a1;
    sub_29E74F388();

    if (qword_2A1A7D6F0 != -1)
    {
      swift_once();
    }

    sub_29E74E9D8();

    sub_29E60DE10();
    v6 = sub_29E753608();
    v8 = v7;
    v10 = v9;
    v12 = v11;

    *a3 = v6;
    *(a3 + 8) = v8;
    *(a3 + 16) = v10 & 1;
    *(a3 + 24) = v12;
  }

  else
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    result = sub_29E752CD8();
    __break(1u);
  }

  return result;
}

uint64_t sub_29E625FB0@<X0>(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v2 = sub_29E753608();
  v4 = v3;
  v6 = v5;
  v8 = v7;

  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  return result;
}

uint64_t sub_29E6260F4()
{
  sub_29E625924(*v0, *(v0 + 8));
  sub_29E6291B0(0);
  sub_29E62A828(&qword_2A18573C0, sub_29E6291B0, MEMORY[0x29EDBBF08]);
  return sub_29E753B98();
}

uint64_t sub_29E6261C4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v36 = a2;
  v32 = a1;
  v38 = a5;
  v7 = sub_29E753198();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E6298B0(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x2A1C7C4A8](v11);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E629CE8(0);
  v33 = *(v16 - 8);
  v34 = v16;
  MEMORY[0x2A1C7C4A8](v16);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E629DBC(0);
  v37 = v19;
  v35 = *(v19 - 8);
  MEMORY[0x2A1C7C4A8](v19);
  v21 = &v31 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = v32;
  v40 = v36;
  LODWORD(v32) = a3 & 1;
  v41 = a3;
  v36 = a4;
  v42 = a4;
  sub_29E629780(0, &qword_2A1857420, sub_29E629954, MEMORY[0x29EDBCBF8]);
  sub_29E629B90();
  sub_29E753568();
  sub_29E753188();
  v22 = sub_29E62A828(&qword_2A1857468, sub_29E6298B0, MEMORY[0x29EDBC0F0]);
  v23 = MEMORY[0x29EDBC010];
  sub_29E7538B8();
  (*(v8 + 8))(v10, v7);
  (*(v13 + 8))(v15, v12);
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  v47 = sub_29E74E9D8();
  v48 = v24;
  v43 = v12;
  v44 = v7;
  v45 = v22;
  v46 = v23;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = sub_29E60DE10();
  v31 = v21;
  v27 = v34;
  sub_29E7537C8();

  (*(v33 + 8))(v18, v27);
  LOBYTE(v47) = v32;
  v48 = v36;
  sub_29E6294D0(0, &qword_2A1857370, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB00]);
  sub_29E753A18();
  sub_29E7542A8();
  sub_29E754288();
  v43 = v27;
  v44 = MEMORY[0x29EDC99B0];
  v45 = OpaqueTypeConformance2;
  v46 = v26;
  swift_getOpaqueTypeConformance2();
  v28 = v37;
  v29 = v31;
  sub_29E753628();

  return (*(v35 + 8))(v29, v28);
}

uint64_t sub_29E626724(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v5 = sub_29E753608();
  MEMORY[0x2A1C7C4A8](v5);
  sub_29E629954(0);
  sub_29E629C40();
  sub_29E753B98();
}

uint64_t sub_29E6268F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[0] = a5;
  v9 = sub_29E74F0D8();
  v10 = *(v9 - 8);
  MEMORY[0x2A1C7C4A8](v9);
  v12 = v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F408();
  v13 = sub_29E74F078();
  (*(v10 + 8))(v12, v9);
  v17[1] = v13;
  swift_getKeyPath();
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3 & 1;
  *(v14 + 40) = a4;
  sub_29E629A58(0, &qword_2A1857430, MEMORY[0x29EDC6938], MEMORY[0x29EDC9A40]);
  type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0);
  sub_29E629B08();
  sub_29E62A828(&qword_2A1857440, MEMORY[0x29EDC6938], MEMORY[0x29EDC6940]);
  sub_29E62A828(&qword_2A1857458, type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem, &unk_29E7650A4);
  v15 = a2;

  sub_29E753B38();
}

uint64_t sub_29E626BA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v38 = a4;
  v36 = a3;
  v37 = a1;
  v42 = a2;
  v8 = sub_29E74F098();
  v9 = *(v8 - 8);
  MEMORY[0x2A1C7C4A8](v8);
  v41 = v10;
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_29E7544C8();
  v39 = sub_29E7544B8();
  v13 = v12;
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v14 = *(v9 + 16);
  v33 = v14;
  v35 = a6;
  v15 = v37;
  v14(a6, v37, v8);
  v14(v11, v15, v8);

  v16 = v36;
  v34 = v13;
  v17 = sub_29E7544B8();
  v40 = v8;
  v32 = a5;
  v18 = (*(v9 + 80) + 64) & ~*(v9 + 80);
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v20 = v42;
  *(v19 + 24) = MEMORY[0x29EDCA390];
  *(v19 + 32) = v20;
  *(v19 + 40) = v16;
  v38 &= 1u;
  *(v19 + 48) = v38;
  *(v19 + 56) = a5;
  v36 = *(v9 + 32);
  v21 = v40;
  (v36)(v19 + v18, v11, v40);
  v33(v11, v15, v21);
  v22 = v16;
  v23 = v32;

  v24 = sub_29E7544B8();
  v25 = swift_allocObject();
  *(v25 + 16) = v24;
  v26 = v42;
  *(v25 + 24) = MEMORY[0x29EDCA390];
  *(v25 + 32) = v26;
  *(v25 + 40) = v22;
  *(v25 + 48) = v38;
  *(v25 + 56) = v23;
  (v36)(v25 + v18, v11, v40);
  sub_29E753AE8();

  v27 = v43;
  v28 = v44;
  v29 = v45;
  result = type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0);
  v31 = &v35[*(result + 20)];
  *v31 = v27;
  *(v31 + 1) = v28;
  v31[16] = v29;
  return result;
}

uint64_t sub_29E626ECC@<X0>(_BYTE *a1@<X8>)
{
  v2 = sub_29E74EF88();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F088();
  v6 = sub_29E74F358();
  (*(v3 + 8))(v5, v2);

  *a1 = v6 & 1;
  return result;
}

uint64_t sub_29E627030(unsigned __int8 *a1)
{
  v2 = sub_29E74EF88();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F088();
  v7 = sub_29E74F358() & 1;
  v8 = *(v3 + 8);
  v8(v5, v2);
  if (v6 != v7)
  {
    sub_29E74F088();
    sub_29E74F348();
    v8(v5, v2);
  }
}

uint64_t sub_29E6271C4(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_29E7539B8();
  v3 = sub_29E7538F8();
  v12 = v2;
  KeyPath = swift_getKeyPath();
  v14 = v3;
  v4 = (a1 + *(type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0) + 20));
  v5 = *v4;
  v6 = v4[1];
  LOBYTE(v4) = *(v4 + 16);
  v9 = v5;
  v10 = v6;
  v11 = v4;
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  MEMORY[0x29ED963E0](&v8);
  sub_29E62A3A4(0);
  sub_29E62A404();
  sub_29E753638();
}

uint64_t sub_29E62734C@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_29E74EF88();
  v3 = *(v2 - 8);
  MEMORY[0x2A1C7C4A8](v2);
  v5 = &v24[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E74F088();
  v6 = sub_29E74EF58();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  v25 = v6;
  v26 = v8;
  sub_29E60DE10();
  v9 = sub_29E753608();
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v25 = sub_29E74F068();
  v26 = v16;
  v17 = sub_29E753608();
  v19 = v18;
  v24[0] = v13 & 1;
  LOBYTE(v25) = v13 & 1;
  v21 = v20 & 1;
  v27 = v20 & 1;
  *a1 = v9;
  *(a1 + 8) = v11;
  *(a1 + 16) = v13 & 1;
  *(a1 + 24) = v15;
  *(a1 + 32) = v17;
  *(a1 + 40) = v18;
  *(a1 + 48) = v20 & 1;
  *(a1 + 56) = v22;
  sub_29E62935C(v9, v11, v13 & 1);

  sub_29E62935C(v17, v19, v21);

  sub_29E60DB44(v17, v19, v21);

  sub_29E60DB44(v9, v11, v24[0]);
}

uint64_t sub_29E627590(uint64_t a1)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0);
  sub_29E6294D0(0, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
  v2 = v1;

  MEMORY[0x29ED963E0](&v4, v2);
  sub_29E753AD8();
}

uint64_t sub_29E6276D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v16[1] = a2;
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x2A1C7C4A8](a1 - 8);
  sub_29E62A1C4(0);
  v7 = v6;
  MEMORY[0x2A1C7C4A8](v6);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16[8] = v3;
  v16[4] = v3;
  sub_29E629A58(0, &qword_2A1857498, sub_29E62A2C4, MEMORY[0x29EDBCC28]);
  sub_29E62A320(0);
  sub_29E62A574();
  sub_29E62A3A4(255);
  v11 = v10;
  v12 = sub_29E62A404();
  v16[10] = v11;
  v16[11] = v12;
  swift_getOpaqueTypeConformance2();
  sub_29E752B28();
  v9[*(v7 + 36)] = 0;
  sub_29E628E8C(v3, v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v14 = swift_allocObject();
  sub_29E62A5FC(v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
  sub_29E62A6C0();
  sub_29E753738();

  return sub_29E5F1FB8(v9);
}

void sub_29E627954(uint64_t a1@<X8>)
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  sub_29E753A48();
  v2 = [objc_opt_self() hk_appTintColor];
  v3 = sub_29E7538E8();
  KeyPath = swift_getKeyPath();

  sub_29E62936C(0);
  v6 = (a1 + *(v5 + 36));
  *v6 = KeyPath;
  v6[1] = v3;
}

uint64_t sub_29E627AD8()
{
  v0 = sub_29E752098();
  v19 = *(v0 - 8);
  MEMORY[0x2A1C7C4A8](v0);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_29E74F7B8();
  v4 = *(v3 - 8);
  MEMORY[0x2A1C7C4A8](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_29E74EAF8();
  v8 = *(v7 - 8);
  MEMORY[0x2A1C7C4A8](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_29E7544C8();
  v20 = sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v11 = HKSPSleepWatchAppURL();
  if (v11)
  {
    v12 = v11;
    sub_29E74EAD8();

    sub_29E74F7A8();
    sub_29E74F798();
    (*(v4 + 8))(v6, v3);
    (*(v8 + 8))(v10, v7);
  }

  else
  {
    sub_29E752048();
    v13 = sub_29E752088();
    v14 = sub_29E7546A8();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v21 = v16;
      *v15 = 136446210;
      *(v15 + 4) = sub_29E6B9C90(0xD000000000000015, 0x800000029E764C40, &v21);
      _os_log_impl(&dword_29E5ED000, v13, v14, "[%{public}s] Error trying to open Nano Bedtime Bridge Settings from Sleep Options View", v15, 0xCu);
      sub_29E5FECBC(v16);
      MEMORY[0x29ED98410](v16, -1, -1);
      MEMORY[0x29ED98410](v15, -1, -1);
    }

    (*(v19 + 8))(v2, v0);
  }
}

uint64_t sub_29E627E44()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  sub_29E62935C(*v0, *(v0 + 8), *(v0 + 16));

  sub_29E62935C(v1, v2, v3);
  sub_29E62936C(0);
  sub_29E629520();

  return sub_29E753B88();
}

void sub_29E627F28(char a1)
{
  v2 = sub_29E6DAEE4(0, 1, 1, MEMORY[0x29EDCA190]);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_29E6DAEE4((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v2[v4 + 32] = 0;
  v5 = [objc_opt_self() sharedBehavior];
  if (!v5)
  {
    __break(1u);
    goto LABEL_16;
  }

  v6 = v5;
  v7 = [v5 features];

  if (!v7)
  {
LABEL_16:
    __break(1u);
    return;
  }

  v8 = [v7 sleepResultsNotificationsOnWatch];

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  v11 = v10 + 1;
  if (v8)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  if (v10 >= v9 >> 1)
  {
    v2 = sub_29E6DAEE4((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v11;
  v2[v10 + 32] = v12;
  if (a1)
  {
    v13 = *(v2 + 3);
    if (v11 >= v13 >> 1)
    {
      v2 = sub_29E6DAEE4((v13 > 1), v10 + 2, 1, v2);
    }

    *(v2 + 2) = v10 + 2;
    v2[v11 + 32] = 3;
  }
}

uint64_t sub_29E6280A8@<X0>(uint64_t a1@<X8>)
{
  sub_29E74F418();
  sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
  v2 = sub_29E752CE8();
  v4 = v3;
  sub_29E7539F8();
  v5 = v14;
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v6 = sub_29E753608();
  v8 = v7;
  v10 = v9;
  v15 = v11 & 1;
  result = sub_29E74E9D8();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v16;
  *(a1 + 32) = v6;
  *(a1 + 40) = v8;
  *(a1 + 48) = v15;
  *(a1 + 56) = v10;
  *(a1 + 64) = result;
  *(a1 + 72) = v13;
  return result;
}

uint64_t sub_29E628268@<X0>(uint64_t a1@<X8>)
{
  if (qword_2A1A7D6F0 != -1)
  {
    swift_once();
  }

  sub_29E74E9D8();
  sub_29E60DE10();
  v2 = sub_29E753608();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  sub_29E74E9D8();
  result = sub_29E753608();
  *a1 = v2;
  *(a1 + 8) = v4;
  *(a1 + 16) = v6 & 1;
  *(a1 + 24) = v8;
  *(a1 + 32) = result;
  *(a1 + 40) = v11;
  *(a1 + 48) = v10 & 1;
  *(a1 + 56) = v12;
  return result;
}

unint64_t sub_29E628428()
{
  result = qword_2A1857310;
  if (!qword_2A1857310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857310);
  }

  return result;
}

unint64_t sub_29E62847C()
{
  result = qword_2A1857318;
  if (!qword_2A1857318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857318);
  }

  return result;
}

unint64_t sub_29E6284D0()
{
  result = qword_2A1857330;
  if (!qword_2A1857330)
  {
    sub_29E629400(255, &qword_2A1857320, &type metadata for SleepRemindersRow, &type metadata for SleepResultsRow, MEMORY[0x29EDBC7F0]);
    sub_29E62857C();
    sub_29E6285D0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857330);
  }

  return result;
}

unint64_t sub_29E62857C()
{
  result = qword_2A1857338;
  if (!qword_2A1857338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857338);
  }

  return result;
}

unint64_t sub_29E6285D0()
{
  result = qword_2A1857340;
  if (!qword_2A1857340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857340);
  }

  return result;
}

unint64_t sub_29E628624()
{
  result = qword_2A1857348;
  if (!qword_2A1857348)
  {
    sub_29E629400(255, &qword_2A1857328, &type metadata for SleepScoreNotificationsRow, &type metadata for AppleWatchSettingsRow, MEMORY[0x29EDBC7F0]);
    sub_29E628428();
    sub_29E62847C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857348);
  }

  return result;
}

uint64_t sub_29E628724(uint64_t a1)
{
  sub_29E6294D0(0, &qword_2A1857308, MEMORY[0x29EDBCA08], MEMORY[0x29EDC9A40]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_29E628818(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_29E62882C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_29E628874(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_29E6288D4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_29E628930(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_29E628990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E6289D8(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

__n128 sub_29E628A34(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_29E628A50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_29E628A98(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_29E628B10()
{
  result = qword_2A1857350;
  if (!qword_2A1857350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857350);
  }

  return result;
}

uint64_t sub_29E628BDC(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void, uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_29E629400(255, a2, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E628C40()
{
  sub_29E751758();

  sub_29E60DB44(*(v0 + 64), *(v0 + 72), *(v0 + 80));

  return MEMORY[0x2A1C733A0](v0, 112, 7);
}

uint64_t sub_29E628CC4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_29E628CDC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    sub_29E629400(255, &qword_2A1857360, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC288]);
    v4 = sub_29E753BA8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_29E628D78(unint64_t *a1, unint64_t *a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_29E628CDC(255, a2, a3);
    sub_29E628BDC(&qword_2A1857368, &qword_2A1857360, MEMORY[0x29EDBC288], MEMORY[0x29EDBC290]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_29E628E8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_29E628EF4(uint64_t a1)
{
  if (!qword_2A1857398)
  {
    sub_29E74F418();
    sub_29E62A828(&qword_2A18568C0, MEMORY[0x29EDC6A30], MEMORY[0x29EDC6A28]);
    v1 = sub_29E752CF8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857398);
    }
  }
}

uint64_t sub_29E628F88(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(void, uint64_t))
{
  sub_29E6294D0(0, a3, a4, a5);
  (*(*(v7 - 8) + 16))(a2, a1, v7);
  return a2;
}

uint64_t sub_29E629004()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 80, 7);
}

uint64_t sub_29E629060()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 49, 7);
}

uint64_t sub_29E629118()
{
  sub_29E751758();

  return MEMORY[0x2A1C733A0](v0, 73, 7);
}

void sub_29E6291B0(uint64_t a1)
{
  if (!qword_2A18573A0)
  {
    sub_29E629400(255, &qword_2A18573A8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    sub_29E629260();
    sub_29E6292F8();
    v1 = sub_29E752B68();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18573A0);
    }
  }
}

unint64_t sub_29E629260()
{
  result = qword_2A18573B0;
  if (!qword_2A18573B0)
  {
    sub_29E629400(255, &qword_2A18573A8, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA18], MEMORY[0x29EDBBEF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573B0);
  }

  return result;
}

unint64_t sub_29E6292F8()
{
  result = qword_2A18573B8;
  if (!qword_2A18573B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573B8);
  }

  return result;
}

uint64_t sub_29E62935C(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

void sub_29E62936C(uint64_t a1)
{
  if (!qword_2A18573C8)
  {
    sub_29E629400(255, &qword_2A1857070, MEMORY[0x29EDBCA18], MEMORY[0x29EDBCA10], MEMORY[0x29EDBC270]);
    sub_29E629454(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18573C8);
    }
  }
}

void sub_29E629400(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_29E629454(uint64_t a1)
{
  if (!qword_2A18573D0)
  {
    sub_29E6294D0(255, &qword_2A18573D8, MEMORY[0x29EDBCA98], MEMORY[0x29EDC9C68]);
    v1 = sub_29E7532E8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18573D0);
    }
  }
}

void sub_29E6294D0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

unint64_t sub_29E629520()
{
  result = qword_2A18573E0;
  if (!qword_2A18573E0)
  {
    sub_29E62936C(255);
    sub_29E628BDC(&qword_2A18573E8, &qword_2A1857070, MEMORY[0x29EDBC270], MEMORY[0x29EDBC278]);
    sub_29E62A828(&qword_2A18573F0, sub_29E629454, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573E0);
  }

  return result;
}

uint64_t sub_29E629618(uint64_t a1, unint64_t *a2, uint64_t a3, unint64_t *a4)
{
  sub_29E628CDC(255, a2, a3);
  sub_29E628D78(a4, a2, a3);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_29E6296A0()
{
  result = qword_2A18573F8;
  if (!qword_2A18573F8)
  {
    sub_29E629780(255, &qword_2A1857400, sub_29E6291B0, MEMORY[0x29EDBCBF8]);
    sub_29E62A828(&qword_2A18573C0, sub_29E6291B0, MEMORY[0x29EDBBF08]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18573F8);
  }

  return result;
}

void sub_29E629780(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_29E753BA8();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_29E6297EC()
{
  result = qword_2A1857408;
  if (!qword_2A1857408)
  {
    sub_29E629780(255, &qword_2A1857410, sub_29E62936C, MEMORY[0x29EDBCA18]);
    sub_29E629520();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857408);
  }

  return result;
}

void sub_29E6298B0(uint64_t a1)
{
  if (!qword_2A1857418)
  {
    sub_29E629780(255, &qword_2A1857420, sub_29E629954, MEMORY[0x29EDBCBF8]);
    sub_29E629B90();
    v1 = sub_29E753578();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857418);
    }
  }
}

void sub_29E629954(uint64_t a1)
{
  if (!qword_2A1857428)
  {
    sub_29E629A58(255, &qword_2A1857430, MEMORY[0x29EDC6938], MEMORY[0x29EDC9A40]);
    sub_29E74F098();
    type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(255);
    sub_29E629B08();
    sub_29E62A828(&qword_2A1857440, MEMORY[0x29EDC6938], MEMORY[0x29EDC6940]);
    v1 = sub_29E753B58();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857428);
    }
  }
}

void sub_29E629A58(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(uint64_t a1)
{
  result = qword_2A1857478;
  if (!qword_2A1857478)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_29E629B08()
{
  result = qword_2A1857438;
  if (!qword_2A1857438)
  {
    sub_29E629A58(255, &qword_2A1857430, MEMORY[0x29EDC6938], MEMORY[0x29EDC9A40]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857438);
  }

  return result;
}

unint64_t sub_29E629B90()
{
  result = qword_2A1857448;
  if (!qword_2A1857448)
  {
    sub_29E629780(255, &qword_2A1857420, sub_29E629954, MEMORY[0x29EDBCBF8]);
    sub_29E629C40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857448);
  }

  return result;
}

unint64_t sub_29E629C40()
{
  result = qword_2A1857450;
  if (!qword_2A1857450)
  {
    sub_29E629954(255);
    sub_29E62A828(&qword_2A1857458, type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem, &unk_29E7650A4);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857450);
  }

  return result;
}

void sub_29E629CE8(uint64_t a1)
{
  if (!qword_2A1857460)
  {
    sub_29E6298B0(255);
    sub_29E753198();
    sub_29E62A828(&qword_2A1857468, sub_29E6298B0, MEMORY[0x29EDBC0F0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857460);
    }
  }
}

void sub_29E629DBC(uint64_t a1)
{
  if (!qword_2A1857470)
  {
    sub_29E629CE8(255);
    sub_29E6298B0(255);
    sub_29E753198();
    sub_29E62A828(&qword_2A1857468, sub_29E6298B0, MEMORY[0x29EDBC0F0]);
    swift_getOpaqueTypeConformance2();
    sub_29E60DE10();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A1857470);
    }
  }
}

uint64_t sub_29E629F04@<X0>(_BYTE *a1@<X8>)
{
  sub_29E74F098();

  return sub_29E626ECC(a1);
}

uint64_t sub_29E629F84()
{
  v1 = sub_29E74F098();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);
  sub_29E751758();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2A1C733A0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_29E62A058(unsigned __int8 *a1)
{
  sub_29E74F098();

  return sub_29E627030(a1);
}

void sub_29E62A100(uint64_t a1)
{
  sub_29E74F098();
  if (v1 <= 0x3F)
  {
    sub_29E6294D0(319, &qword_2A1857380, MEMORY[0x29EDC9A98], MEMORY[0x29EDBCB78]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_29E62A1C4(uint64_t a1)
{
  if (!qword_2A1857488)
  {
    sub_29E62A22C(255);
    sub_29E62A4B4(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857488);
    }
  }
}

void sub_29E62A22C(uint64_t a1)
{
  if (!qword_2A1857490)
  {
    sub_29E629A58(255, &qword_2A1857498, sub_29E62A2C4, MEMORY[0x29EDBCC28]);
    sub_29E62A320(255);
    v1 = sub_29E752B38();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857490);
    }
  }
}

void sub_29E62A2C4()
{
  if (!qword_2A18574A0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_2A18574A0);
    }
  }
}

void sub_29E62A320(uint64_t a1)
{
  if (!qword_2A18574A8)
  {
    sub_29E62A3A4(255);
    sub_29E62A404();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_2A18574A8);
    }
  }
}

void sub_29E62A3A4(uint64_t a1)
{
  if (!qword_2A18574B0)
  {
    sub_29E629454(255);
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18574B0);
    }
  }
}

unint64_t sub_29E62A404()
{
  result = qword_2A18574B8;
  if (!qword_2A18574B8)
  {
    sub_29E62A3A4(255);
    sub_29E62A828(&qword_2A18573F0, sub_29E629454, MEMORY[0x29EDBC940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574B8);
  }

  return result;
}

void sub_29E62A4B4(uint64_t a1)
{
  if (!qword_2A18574C0)
  {
    sub_29E62A510();
    v1 = sub_29E7531C8();
    if (!v2)
    {
      atomic_store(v1, &qword_2A18574C0);
    }
  }
}

unint64_t sub_29E62A510()
{
  result = qword_2A18574C8;
  if (!qword_2A18574C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574C8);
  }

  return result;
}

unint64_t sub_29E62A574()
{
  result = qword_2A18574D0;
  if (!qword_2A18574D0)
  {
    sub_29E629A58(255, &qword_2A1857498, sub_29E62A2C4, MEMORY[0x29EDBCC28]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574D0);
  }

  return result;
}

uint64_t sub_29E62A5FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_29E62A660()
{
  v1 = *(type metadata accessor for SleepScoreLevelSelection.SleepScoreLevelItem(0) - 8);
  v2 = v0 + ((*(v1 + 80) + 16) & ~*(v1 + 80));

  return sub_29E627590(v2);
}

unint64_t sub_29E62A6C0()
{
  result = qword_2A18574D8;
  if (!qword_2A18574D8)
  {
    sub_29E62A1C4(255);
    sub_29E62A770();
    sub_29E62A828(&qword_2A18574E8, sub_29E62A4B4, MEMORY[0x29EDBC840]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574D8);
  }

  return result;
}

unint64_t sub_29E62A770()
{
  result = qword_2A18574E0;
  if (!qword_2A18574E0)
  {
    sub_29E62A22C(255);
    sub_29E62A574();
    sub_29E62A3A4(255);
    sub_29E62A404();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A18574E0);
  }

  return result;
}

uint64_t sub_29E62A828(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_29E62A8B0(void (*a1)(uint64_t))
{
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  isCurrentExecutor = swift_task_isCurrentExecutor();
  if ((isCurrentExecutor & 1) == 0)
  {
    isCurrentExecutor = swift_task_reportUnexpectedExecutor();
  }

  a1(isCurrentExecutor);
}

void sub_29E62A960(uint64_t *a1@<X8>)
{
  sub_29E62B1C8(0, &qword_2A1857558, MEMORY[0x29EDBC7D0], MEMORY[0x29EDC9C68]);
  MEMORY[0x2A1C7C4A8](v2 - 8);
  v4 = &v22 - v3;
  sub_29E7544C8();
  sub_29E7544B8();
  sub_29E754468();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_29E7539B8();
  sub_29E753008();
  v5 = sub_29E753018();
  (*(*(v5 - 8) + 56))(v4, 0, 1, v5);
  v6 = sub_29E7539C8();

  sub_29E62B22C(v4);
  v7 = objc_opt_self();
  v8 = [v7 labelColor];
  v9 = sub_29E7538E8();
  v10 = [v7 quaternaryLabelColor];
  v11 = sub_29E7538E8();
  sub_29E62AD48(0);
  v13 = (a1 + *(v12 + 36));
  sub_29E62B1C8(0, &qword_2A1857510, MEMORY[0x29EDBCAE8], MEMORY[0x29EDBC938]);
  v15 = *(v14 + 28);
  v16 = *MEMORY[0x29EDBCAD0];
  v17 = sub_29E7539D8();
  (*(*(v17 - 8) + 104))(v13 + v15, v16, v17);
  *v13 = swift_getKeyPath();
  *a1 = v6;
  a1[1] = v9;
  a1[2] = v11;
  v18 = sub_29E7534B8();
  KeyPath = swift_getKeyPath();

  sub_29E62AD84(0, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
  v21 = (a1 + *(v20 + 36));
  *v21 = KeyPath;
  v21[1] = v18;
}

uint64_t sub_29E62AC50()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  sub_29E62AD84(0, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
  sub_29E62AF38();

  return sub_29E753A28();
}

void sub_29E62AD84(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_29E62B1C8(255, a4, a5, MEMORY[0x29EDBC938]);
    v8 = sub_29E752C28();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_29E62AE1C(uint64_t a1)
{
  if (!qword_2A1857500)
  {
    sub_29E62AE7C();
    v1 = sub_29E752C28();
    if (!v2)
    {
      atomic_store(v1, &qword_2A1857500);
    }
  }
}

void sub_29E62AE7C()
{
  if (!qword_2A1857508)
  {
    v0 = sub_29E7532B8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857508);
    }
  }
}

void sub_29E62AEE8()
{
  if (!qword_2A1857520)
  {
    v0 = sub_29E754BD8();
    if (!v1)
    {
      atomic_store(v0, &qword_2A1857520);
    }
  }
}

unint64_t sub_29E62AF38()
{
  result = qword_2A1857528;
  if (!qword_2A1857528)
  {
    sub_29E62AD84(255, &qword_2A18574F0, sub_29E62AD48, &qword_2A1857518, sub_29E62AEE8);
    sub_29E62B010();
    sub_29E62B164(&qword_2A1857550, &qword_2A1857518, sub_29E62AEE8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857528);
  }

  return result;
}

unint64_t sub_29E62B010()
{
  result = qword_2A1857530;
  if (!qword_2A1857530)
  {
    sub_29E62AD48(255);
    sub_29E62B0B4();
    sub_29E62B164(&qword_2A1857548, &qword_2A1857510, MEMORY[0x29EDBCAE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857530);
  }

  return result;
}

unint64_t sub_29E62B0B4()
{
  result = qword_2A1857538;
  if (!qword_2A1857538)
  {
    sub_29E62AE1C(255);
    sub_29E62B3A4(&qword_2A1857540, sub_29E62AE7C, MEMORY[0x29EDBC920]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2A1857538);
  }

  return result;
}