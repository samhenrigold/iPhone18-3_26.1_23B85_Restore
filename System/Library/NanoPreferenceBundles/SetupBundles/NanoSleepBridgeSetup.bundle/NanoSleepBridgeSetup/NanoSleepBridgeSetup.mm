void sub_1730()
{
  v0 = [objc_allocWithZone(HKHealthStore) init];
  v1 = objc_allocWithZone(HKSPSleepStore);
  v2 = sub_41C0();
  v3 = [v1 initWithIdentifier:v2 healthStore:v0];

  v4 = sub_40C0();
  v5 = v3;
  v6 = v0;
  v7 = sub_40B0();
  qword_C380 = v4;
  unk_C388 = &protocol witness table for SleepOnboardingManager;

  qword_C368 = v7;
}

id sub_1818()
{
  v1 = OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController____lazy_storage___onboardingViewController;
  v2 = *&v0[OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController____lazy_storage___onboardingViewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController____lazy_storage___onboardingViewController];
  }

  else
  {
    ObjectType = swift_getObjectType();
    v5 = sub_1888(v0, ObjectType);
    v6 = *&v0[v1];
    *&v0[v1] = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

id sub_1888(void *a1, uint64_t a2)
{
  v3 = sub_4120();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_41B0();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4190();
  v11 = sub_41A0();
  v12 = sub_4240();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v28 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v3;
    v16 = v15;
    v29 = v15;
    *v14 = 136446210;
    v17 = sub_42C0();
    v19 = sub_318C(v17, v18, &v29);
    v26 = v7;
    v20 = v19;

    *(v14 + 4) = v20;
    _os_log_impl(&dword_0, v11, v12, "[%{public}s] initializing onboarding view controller", v14, 0xCu);
    sub_371C(v16);
    v3 = v27;

    a1 = v28;

    (*(v8 + 8))(v10, v26);
  }

  else
  {

    (*(v8 + 8))(v10, v7);
  }

  (*(v4 + 104))(v6, enum case for SleepOnboardingUserInfo.SleepScheduleType.expected(_:), v3);
  sub_38BC(v6);
  (*(v4 + 8))(v6, v3);
  v21 = objc_allocWithZone(sub_4180());

  v22 = sub_4170();
  sub_3C3C();
  v23 = v22;
  v24 = a1;
  sub_4150();

  return v23;
}

id sub_1B74()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_41B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController____lazy_storage___onboardingViewController] = 0;
  sub_4190();
  v7 = sub_41A0();
  v8 = sub_4240();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v21 = v10;
    *v9 = 136446210;
    v11 = sub_42C0();
    v20 = v3;
    v13 = sub_318C(v11, v12, &v21);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_0, v7, v8, "[%{public}s] init...", v9, 0xCu);
    sub_371C(v10);

    (*(v4 + 8))(v6, v20);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v1[OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController_isLoadingSuggestedSchedule] = 1;
  v14 = type metadata accessor for NanoSleepBridgeSetupController();
  v22.receiver = v1;
  v22.super_class = v14;
  v15 = objc_msgSendSuper2(&v22, "init");
  v16 = sub_4220();
  __chkstk_darwin(v16);
  *(&v19 - 2) = v15;
  *(&v19 - 1) = ObjectType;
  v17 = v15;
  sub_2224(sub_3EE8, (&v19 - 4), "NanoSleepBridgeSetup/NanoSleepBridgeSetupController.swift", 57, 2u, 48);

  return v17;
}

uint64_t sub_1E00(void *a1, uint64_t a2)
{
  v3 = sub_41B0();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4220();
  v7 = sub_4210();
  sub_4200();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_4190();
  v8 = sub_41A0();
  v9 = sub_4240();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v7;
    v20 = v11;
    v12 = a1;
    v13 = v11;
    *v10 = 136446210;
    v14 = sub_42C0();
    v16 = sub_318C(v14, v15, &v20);

    *(v10 + 4) = v16;
    _os_log_impl(&dword_0, v8, v9, "[%{public}s] looking up suggested schedule...", v10, 0xCu);
    sub_371C(v13);
    a1 = v12;
  }

  (*(v4 + 8))(v6, v3);
  if (qword_C360 != -1)
  {
    swift_once();
  }

  sub_3148(&qword_C368, qword_C380);
  *(swift_allocObject() + 16) = a1;
  v17 = a1;
  sub_4100();
}

uint64_t sub_20B4(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_4120();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v14 - v11;
  *(a3 + OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController_isLoadingSuggestedSchedule) = 0;
  if (a2)
  {
    swift_getObjectType();
    sub_4250();
    (*(v7 + 32))(v12, v10, v6);
  }

  else
  {
    (*(v7 + 104))(&v14 - v11, enum case for SleepOnboardingUserInfo.SleepScheduleType.none(_:), v6);
  }

  sub_297C(a1, v12);
  return (*(v7 + 8))(v12, v6);
}

uint64_t sub_2224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6)
{
  sub_4210();

  swift_task_getMainExecutor();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    goto LABEL_8;
  }

  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  sub_3F14();
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      return result;
    }

    __break(1u);
  }

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
LABEL_8:
    sub_4280(66);
    v12._object = 0x8000000000004890;
    v12._countAndFlagsBits = 0xD00000000000003FLL;
    sub_41E0(v12);
    v13._countAndFlagsBits = sub_42C0();
    sub_41E0(v13);

    v14._countAndFlagsBits = 46;
    v14._object = 0xE100000000000000;
    sub_41E0(v14);
    result = sub_42A0();
    __break(1u);
  }

  return result;
}

uint64_t sub_23AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_4210();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_3EA4(v14);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return a4;
      }

      __break(1u);
    }

    a4 = v14[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return a4;
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_4280(66);
  v15._object = 0x8000000000004890;
  v15._countAndFlagsBits = 0xD00000000000003FLL;
  sub_41E0(v15);
  v16._countAndFlagsBits = sub_42C0();
  sub_41E0(v16);

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  sub_41E0(v17);
  result = sub_42A0();
  __break(1u);
  return result;
}

uint64_t sub_2564(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = a3;
  sub_4210();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v10 = swift_allocObject();
    *(v10 + 16) = a1;
    *(v10 + 24) = a2;
    sub_3DB0(v14);
    if (v6)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v7 & 1;
      }

      __break(1u);
    }

    v7 = v14[0];
    v12 = swift_isEscapingClosureAtFileLocation();

    if ((v12 & 1) == 0)
    {
      return v7 & 1;
    }

    __break(1u);
  }

  v14[0] = 0;
  v14[1] = 0xE000000000000000;
  sub_4280(66);
  v15._object = 0x8000000000004890;
  v15._countAndFlagsBits = 0xD00000000000003FLL;
  sub_41E0(v15);
  v16._countAndFlagsBits = sub_42C0();
  sub_41E0(v16);

  v17._countAndFlagsBits = 46;
  v17._object = 0xE100000000000000;
  sub_41E0(v17);
  result = sub_42A0();
  __break(1u);
  return result;
}

uint64_t sub_27D8()
{
  sub_4220();
  v3 = v0;
  return sub_2564(sub_3F7C, &v2, "NanoSleepBridgeSetup/NanoSleepBridgeSetupController.swift", 57, 2, 68) & 1;
}

id sub_297C(void *a1, uint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  v6 = sub_41B0();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4190();
  v10 = a1;
  v11 = sub_41A0();
  v12 = sub_4240();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v29 = a1;
    v14 = v13;
    v15 = swift_slowAlloc();
    v27 = v6;
    v31 = v15;
    *v14 = 136446466;
    v16 = sub_42C0();
    v18 = sub_318C(v16, v17, &v31);
    v28 = a2;
    v19 = v18;

    *(v14 + 4) = v19;
    *(v14 + 12) = 2082;
    v30 = v29;
    sub_3818(0);
    v20 = v10;
    v21 = sub_41D0();
    v23 = sub_318C(v21, v22, &v31);

    *(v14 + 14) = v23;
    _os_log_impl(&dword_0, v11, v12, "[%{public}s] loaded suggested schedule: %{public}s", v14, 0x16u);
    swift_arrayDestroy();

    (*(v7 + 8))(v9, v27);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  v24 = sub_1818();
  sub_4160();

  result = [v3 delegate];
  if (result)
  {
    [result buddyControllerReleaseHold:v3];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2C18(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for NanoSleepBridgeSetupController();
  return objc_msgSendSuper2(&v3, "dealloc");
}

id sub_2C80()
{
  v1 = v0;
  swift_getObjectType();
  v2 = sub_41B0();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4190();
  v6 = sub_41A0();
  v7 = sub_4230();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v8 = 136446466;
    v9 = sub_42C0();
    v11 = sub_318C(v9, v10, &v14);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    *(v8 + 14) = sub_318C(0xD000000000000016, 0x8000000000004820, &v14);
    _os_log_impl(&dword_0, v6, v7, "[%{public}s] %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  (*(v3 + 8))(v5, v2);
  result = [v1 delegate];
  if (result)
  {
    [result buddyControllerDone:v1];
    return swift_unknownObjectRelease();
  }

  return result;
}

id sub_2EA8(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4 = sub_41B0();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_4190();
  v8 = sub_41A0();
  v9 = sub_4230();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v16 = a1;
    v11 = v10;
    v17 = swift_slowAlloc();
    *v11 = 136446466;
    v12 = sub_42C0();
    v14 = sub_318C(v12, v13, &v17);

    *(v11 + 4) = v14;
    *(v11 + 12) = 2082;
    *(v11 + 14) = sub_318C(0xD00000000000001CLL, 0x8000000000004800, &v17);
    _os_log_impl(&dword_0, v8, v9, "[%{public}s] %{public}s", v11, 0x16u);
    swift_arrayDestroy();
  }

  (*(v5 + 8))(v7, v4);
  if (qword_C360 != -1)
  {
    swift_once();
  }

  sub_3148(&qword_C368, qword_C380);
  sub_40D0();
  result = [v2 delegate];
  if (result)
  {
    [result buddyControllerDone:v2];
    return swift_unknownObjectRelease();
  }

  return result;
}

void *sub_3148(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_318C(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_3258(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
    sub_3768(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_371C(v11);
  return v7;
}

unint64_t sub_3258(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_3364(a5, a6);
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
    result = sub_4290();
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

char *sub_3364(uint64_t a1, unint64_t a2)
{
  v3 = sub_33B0(a1, a2);
  sub_34E0(&off_8450);
  return v3;
}

char *sub_33B0(uint64_t a1, unint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  v6 = sub_35CC(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 32, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_4290();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 32, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_41F0();
        if (!v10)
        {
          return &_swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_35CC(v10, 0);
        result = sub_4270();
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

uint64_t sub_34E0(uint64_t result)
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

  result = sub_3634(result, v11, 1, v3);
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

void *sub_35CC(uint64_t a1, uint64_t a2)
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
    return &_swiftEmptyArrayStorage;
  }

  sub_37C4();
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_3634(char *result, int64_t a2, char a3, char *a4)
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
    sub_37C4();
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_371C(void *a1)
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

uint64_t sub_3768(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_37C4()
{
  if (!qword_C340)
  {
    v0 = sub_42B0();
    if (!v1)
    {
      atomic_store(v0, &qword_C340);
    }
  }
}

void sub_3818(uint64_t a1)
{
  if (!qword_C348)
  {
    sub_3870();
    v1 = sub_4260();
    if (!v2)
    {
      atomic_store(v1, &qword_C348);
    }
  }
}

unint64_t sub_3870()
{
  result = qword_C350;
  if (!qword_C350)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_C350);
  }

  return result;
}

uint64_t sub_38BC(uint64_t a1)
{
  v21 = a1;
  v20 = sub_4120();
  v18 = *(v20 - 8);
  __chkstk_darwin(v20);
  v22 = &v16 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_4080();
  v2 = *(v17 - 8);
  __chkstk_darwin(v17);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_40A0();
  v5 = *(v19 - 8);
  v6 = __chkstk_darwin(v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v16 - v9;
  [objc_allocWithZone(HKSPProvenanceInfo) initWithSource:HKSPProvenanceSourceSleepCompanionSetupFlow presentation:HKSPProvenancePresentationUnknown];
  if (qword_C360 != -1)
  {
    swift_once();
  }

  sub_3148(&qword_C368, qword_C380);
  v11 = sub_4110();
  v12 = &enum case for SleepOnboardingContext.EntryPoint.sleepTracking(_:);
  if ((v11 & 1) == 0)
  {
    v12 = &enum case for SleepOnboardingContext.EntryPoint.sleepCoaching(_:);
  }

  (*(v2 + 104))(v4, *v12, v17);
  sub_4090();
  sub_3C90(&qword_C368, v23);
  v13 = v19;
  (*(v5 + 16))(v8, v10, v19);
  (*(v18 + 16))(v22, v21, v20);
  sub_3148(&qword_C368, qword_C380);
  sub_40F0();
  sub_4140();
  swift_allocObject();
  v14 = sub_4130();
  (*(v5 + 8))(v10, v13);
  return v14;
}

unint64_t sub_3C3C()
{
  result = qword_C358;
  if (!qword_C358)
  {
    type metadata accessor for NanoSleepBridgeSetupController();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_C358);
  }

  return result;
}

uint64_t sub_3C90(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_3CF4@<X0>(_BYTE *a1@<X8>)
{
  v3 = *(v1 + 16);
  sub_4220();
  sub_4210();
  sub_4200();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = *(v3 + OBJC_IVAR____TtC20NanoSleepBridgeSetup30NanoSleepBridgeSetupController_isLoadingSuggestedSchedule);

  *a1 = v4;
  return result;
}

void *sub_3DB0@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_3DF4@<X0>(void *a1@<X8>)
{
  sub_4220();
  sub_4210();
  sub_4200();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v2 = sub_1818();

  *a1 = v2;
  return result;
}

void *sub_3EA4@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_3F3C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_3F7C@<X0>(_BYTE *a1@<X8>)
{
  sub_4220();
  sub_4210();
  sub_4200();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (qword_C360 != -1)
  {
    swift_once();
  }

  sub_3148(&qword_C368, qword_C380);
  v2 = sub_40E0();

  *a1 = v2 & 1;
  return result;
}