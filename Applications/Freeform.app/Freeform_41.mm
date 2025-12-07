uint64_t sub_10074D924(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xEC00000070614D65;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x444972657375 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101563790 == a2)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_10074DA44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D4C8;

  return sub_10074BCA8(a1, v4, v5, v6);
}

uint64_t sub_10074DAF8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_10074BCA8(a1, v4, v5, v6);
}

unint64_t sub_10074DBD0()
{
  result = qword_1019FE238;
  if (!qword_1019FE238)
  {
    result = swift_getWitnessTable(byte_101479BC4, &type metadata for AASApplicationVariant.CodingKeys, v0, v1);
    atomic_store(result, &qword_1019FE238);
  }

  return result;
}

uint64_t sub_10074DC30(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v3 + 16) = 0;
  *(v3 + 32) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = sub_100BD6410(_swiftEmptyArrayStorage);
  *(v3 + 72) = 0;
  *(v3 + 24) = a1;
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {

    v6 = sub_10078BDC0(0x6472616F62, 0xE500000000000000, a1);

    *(v3 + 32) = v6;

    swift_unknownObjectWeakAssign();
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = static OS_os_log.crlAppAnalytics;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C6B0;
    v9 = v7;
    v10 = ObjectIdentifier.debugDescription.getter();
    v12 = v11;
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = sub_1000053B0();
    *(inited + 32) = v10;
    *(inited + 40) = v12;
    v13 = static os_log_type_t.debug.getter();
    sub_100005404(v9, &_mh_execute_header, v13, "Start observe user edit for %@", 30, 2, inited);

    swift_setDeallocating();
    sub_100005070((inited + 32));
    v14 = [objc_opt_self() defaultCenter];
    [v14 addObserver:v3 selector:"boardItemDidInsert:" name:@"CRLBoardItemInsertionEditorDidInsertBoardItemsNotification" object:0];

    v15 = a2;
    a2 = v14;
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v15 = static OS_os_log.crlAppAnalytics;
    v16 = static os_log_type_t.error.getter();
    sub_100005404(v15, &_mh_execute_header, v16, "Failed to chain board tracker", 29, 2, _swiftEmptyArrayStorage);
  }

  return v3;
}

uint64_t sub_10074DF38()
{
  v1 = v0;
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_trackersCoordinator))
  {
    v2 = *(v0 + 24);
    swift_beginAccess();

    sub_1006F6C58(v2, v5);
    swift_endAccess();

    sub_10000CAAC(v5, &qword_1019FBE68, &unk_101479D20);
  }

  v3 = [objc_opt_self() defaultCenter];
  [v3 removeObserver:v1];

  swift_unknownObjectWeakDestroy();
  swift_unknownObjectRelease();

  return v1;
}

uint64_t sub_10074E068()
{
  sub_10074DF38();

  return swift_deallocClassInstance();
}

void sub_10074E09C(__n128 a1)
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    if (*(v1 + 32))
    {

      Tracker.whenSession(block:)();
    }

    sub_10074F804();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = static OS_os_log.crlAppAnalytics;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Skip startEvents for unselected user", 36, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10074E22C(__n128 a1)
{
  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    if (*(v1 + 16) == 1)
    {

      sub_10074F32C();
    }

    else
    {
      if (*(v1 + 32))
      {

        Tracker.whenSession(block:)();
      }

      sub_10074F624();
    }
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v2 = static OS_os_log.crlAppAnalytics;
    v3 = static os_log_type_t.default.getter();
    sub_100005404(v2, &_mh_execute_header, v3, "Skip endEvents for unselected user", 34, 2, _swiftEmptyArrayStorage);
  }
}

void sub_10074E3CC(double a1, double a2, uint64_t a3)
{
  if (qword_1019F14F0 != -1)
  {
    v18 = a3;
    v19 = a2;
    v20 = a1;
    swift_once();
    a3 = v18;
    a1 = v20;
    a2 = v19;
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) == 1)
  {
    v4 = a2;
    v5 = a1;
    sub_10074EA50(a3);
    v6 = *(v3 + 72);
    v7 = sub_100750A68(v5, v4);
    v9 = v8;
    v11 = v10;
    v13 = v12;
    v14 = sub_10074EE3C();
    if (*(v3 + 32))
    {
      v15 = swift_allocObject();
      *(v15 + 16) = v6;
      *(v15 + 24) = v7;
      *(v15 + 32) = v9;
      *(v15 + 40) = v11;
      *(v15 + 48) = v13;
      *(v15 + 56) = v14;

      Tracker.whenSession(block:)();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v16 = static OS_os_log.crlAppAnalytics;
    v17 = static os_log_type_t.default.getter();
    sub_100005404(v16, &_mh_execute_header, v17, "Skip updateBoardData for unselected user", 40, 2, _swiftEmptyArrayStorage);
  }
}

uint64_t sub_10074E614(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = static OS_os_log.crlAppAnalytics;
  v8 = static os_log_type_t.default.getter();
  sub_100005404(v7, &_mh_execute_header, v8, "Update board events data", 24, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v18 = type metadata accessor for DataEventTrait();
  v9 = *(v18 - 8);
  v10 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_10146C6B0;
  v12 = enum case for DataEventTrait.unique(_:);
  v13 = *(v9 + 104);
  v17 = enum case for DataEventTrait.unique(_:);
  v13(v11 + v10, enum case for DataEventTrait.unique(_:), v18);
  sub_100751148();
  AccessTracker.push<A>(data:traits:file:line:)();

  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_10146C6B0;
  v13(v14 + v10, v12, v18);
  sub_10075119C();
  AccessTracker.push<A>(data:traits:file:line:)();

  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_10146C6B0;
  v13(v15 + v10, v17, v18);
  sub_100751038();
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_10074E904()
{
  v1 = v0;
  if (*(v0 + 32))
  {
    sub_1007510A0();

    Tracker.clearStack<A>(of:includeParentTrackers:)();

    if (*(v0 + 32))
    {
      sub_100751148();

      Tracker.clearStack<A>(of:includeParentTrackers:)();

      if (*(v0 + 32))
      {
        sub_10075119C();

        Tracker.clearStack<A>(of:includeParentTrackers:)();

        if (*(v0 + 32))
        {
          sub_100751038();

          Tracker.clearStack<A>(of:includeParentTrackers:)();
        }
      }
    }
  }

  v2 = sub_100BD6410(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v1 + 64) = v2;

  *(v1 + 48) = 0;
  return swift_unknownObjectRelease();
}

void sub_10074EA50(uint64_t a1)
{
  v2 = sub_100750410(a1);
  if (*(v1 + 32))
  {
    v5 = v2;
    v6 = v3;
    v7 = v4;
    v8 = swift_allocObject();
    *(v8 + 16) = v5;
    *(v8 + 24) = v6;
    *(v8 + 32) = v7 & 1;

    Tracker.whenSession(block:)();
  }

  else
  {
  }
}

uint64_t sub_10074EC68(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v4 = static OS_os_log.crlAppAnalytics;
  v5 = static os_log_type_t.default.getter();
  sub_100005404(v4, &_mh_execute_header, v5, "Update boardData", 16, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v6 = type metadata accessor for DataEventTrait();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10146C6B0;
  (*(v7 + 104))(v9 + v8, enum case for DataEventTrait.unique(_:), v6);
  sub_1007510A0();
  AccessTracker.push<A>(data:traits:file:line:)();
}

uint64_t sub_10074EE3C()
{
  swift_beginAccess();
  v1 = *(v0 + 64);
  v2 = 1 << *(v1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(v1 + 64);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  for (i = _swiftEmptyArrayStorage; v4; *(v15 + 9) = v12)
  {
LABEL_8:
    v10 = __clz(__rbit64(v4)) | (v7 << 6);
    v11 = *(*(v1 + 48) + v10);
    v12 = *(*(v1 + 56) + 8 * v10);
    if (v12 <= 100)
    {
      if (v12 <= 10)
      {
        if (v12 < 6)
        {
          if (v12 < 3)
          {
            if (v12 < 0)
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              LODWORD(v12) = -1;
              if (result)
              {
                goto LABEL_10;
              }
            }

            else
            {
              result = swift_isUniquelyReferenced_nonNull_native();
              if (result)
              {
                goto LABEL_10;
              }
            }
          }

          else
          {
            result = swift_isUniquelyReferenced_nonNull_native();
            LODWORD(v12) = 5;
            if (result)
            {
              goto LABEL_10;
            }
          }
        }

        else
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          LODWORD(v12) = 10;
          if (result)
          {
            goto LABEL_10;
          }
        }

LABEL_16:
        result = sub_100B375EC(0, *(i + 2) + 1, 1, i);
        i = result;
        goto LABEL_10;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v12) = 100;
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      LODWORD(v12) = 101;
      if ((result & 1) == 0)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v14 = *(i + 2);
    v13 = *(i + 3);
    if (v14 >= v13 >> 1)
    {
      result = sub_100B375EC((v13 > 1), v14 + 1, 1, i);
      i = result;
    }

    v4 &= v4 - 1;
    *(i + 2) = v14 + 1;
    v15 = &i[8 * v14];
    v15[32] = v11;
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return i;
    }

    v4 = *(v1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_8;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10074F014()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Start boardCreateEvent", 22, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardCreateEvent(0);
  sub_100751204(&qword_1019FE498, type metadata accessor for BoardCreateEvent, "QX8");
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10074F11C()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Start boardViewEvent", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardViewEvent(0);
  sub_100751204(&qword_1019FE4C0, type metadata accessor for BoardViewEvent, protocol conformance descriptor for BoardViewEvent);
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10074F224()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Start boardEditEvent", 20, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardEditEvent(0);
  sub_100751204(&qword_1019FE490, type metadata accessor for BoardEditEvent, "aZ8");
  return AccessTracker.time<A>(_:submitAndRestartWithSession:)();
}

uint64_t sub_10074F32C()
{
  v1 = v0;
  if (*(v0 + 32))
  {

    Tracker.whenSession(block:)();
  }

  *(v0 + 16) = 0;
  v2 = sub_100BD6410(_swiftEmptyArrayStorage);
  swift_beginAccess();
  *(v1 + 64) = v2;
}

uint64_t sub_10074F3BC()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Submit boardCreateEvent", 23, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardCreateEvent(0);
  sub_100751204(&qword_1019FE498, type metadata accessor for BoardCreateEvent, "QX8");
  memset(v3, 0, sizeof(v3));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v3, &unk_1019F4D00, &unk_10146E7F0);
}

uint64_t sub_10074F4F0()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Submit boardViewEvent", 21, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardViewEvent(0);
  sub_100751204(&qword_1019FE4C0, type metadata accessor for BoardViewEvent, protocol conformance descriptor for BoardViewEvent);
  memset(v3, 0, sizeof(v3));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v3, &unk_1019F4D00, &unk_10146E7F0);
}

void sub_10074F624()
{
  if (*(v0 + 56) == 1)
  {
    if (*(v0 + 32))
    {

      Tracker.whenSession(block:)();
    }

    *(v0 + 56) = 0;
    v1 = sub_100BD6410(_swiftEmptyArrayStorage);
    swift_beginAccess();
    *(v0 + 64) = v1;
  }
}

uint64_t sub_10074F6D0()
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static OS_os_log.crlAppAnalytics;
  v1 = static os_log_type_t.default.getter();
  sub_100005404(v0, &_mh_execute_header, v1, "Submit boardEditEvent", 21, 2, _swiftEmptyArrayStorage);

  type metadata accessor for BoardEditEvent(0);
  sub_100751204(&qword_1019FE490, type metadata accessor for BoardEditEvent, "aZ8");
  memset(v3, 0, sizeof(v3));
  AccessTracker.submit<A>(_:onlyIfTimed:userInfo:completion:)();
  return sub_10000CAAC(v3, &unk_1019F4D00, &unk_10146E7F0);
}

void sub_10074F804()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1019F16E8 != -1)
    {
      swift_once();
    }

    v4 = qword_101AD6870;
    v5 = swift_allocObject();
    swift_weakInit();
    v11[4] = sub_10075108C;
    v11[5] = v5;
    v11[0] = _NSConcreteStackBlock;
    v11[1] = *"";
    v11[2] = sub_100059694;
    v11[3] = &unk_1018854C0;
    v6 = _Block_copy(v11);
    v7 = v2;

    v8 = [v3 addObserverForName:v4 object:v7 queue:0 usingBlock:v6];

    _Block_release(v6);
    *(v0 + 48) = v8;
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v9 = static OS_os_log.crlAppAnalytics;
    v10 = static os_log_type_t.default.getter();
    sub_100005404(v9, &_mh_execute_header, v10, "Start observe user edit failed: commandController is nil", 56, 2, _swiftEmptyArrayStorage);
  }
}

double sub_10074FA1C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (*(Strong + 16))
    {
      if (qword_1019F2118 != -1)
      {
        swift_once();
      }

      swift_beginAccess();
      v4 = static OS_os_log.crlAppAnalytics;
      v5 = static os_log_type_t.default.getter();
      sub_100005404(v4, &_mh_execute_header, v5, "Newly created board, skip boardEditEvent", 40, 2, _swiftEmptyArrayStorage);
    }

    else
    {
      *(Strong + 56) = 1;
      if (*(Strong + 32))
      {

        Tracker.whenSession(block:)();
      }
    }

    v9 = *(v3 + 48);
    if (v9)
    {
      v10 = objc_opt_self();
      swift_unknownObjectRetain();
      v11 = [v10 defaultCenter];
      [v11 removeObserver:v9];

      swift_unknownObjectRelease();
      *(v3 + 48) = 0;

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  else
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v6 = static OS_os_log.crlAppAnalytics;
    v7 = static os_log_type_t.default.getter();
    sub_100005404(v6, &_mh_execute_header, v7, "BoardTracker released before user edit", 38, 2, _swiftEmptyArrayStorage);
  }

  return result;
}

void sub_10074FC50(void *a1)
{
  v2 = v1;
  if (qword_1019F14F0 != -1)
  {
    v38 = a1;
    swift_once();
    a1 = v38;
  }

  if (*(*(static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userSamplingManager) + 16) != 1)
  {
    if (qword_1019F2118 != -1)
    {
LABEL_53:
      swift_once();
    }

    swift_beginAccess();
    v11 = static OS_os_log.crlAppAnalytics;
    v12 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v12, "Skip  adding drawables to analytics for unselected user", 55, 2, _swiftEmptyArrayStorage);
    goto LABEL_45;
  }

  v3 = [a1 userInfo];
  if (!v3)
  {
    goto LABEL_40;
  }

  v4 = v3;
  v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  AnyHashable.init<A>(_:)();
  if (!*(v5 + 16) || (v6 = sub_1000640CC(v43), (v7 & 1) == 0))
  {

    sub_100064234(v43);
LABEL_40:
    v44 = 0u;
    v45 = 0u;
    goto LABEL_41;
  }

  sub_100064288(*(v5 + 56) + 32 * v6, &v44);
  sub_100064234(v43);

  if (!*(&v45 + 1))
  {
LABEL_41:
    sub_10000CAAC(&v44, &unk_1019F4D00, &unk_10146E7F0);
    goto LABEL_42;
  }

  sub_1005B981C(&qword_1019F5740, &unk_101479D10);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_42:
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v11 = static OS_os_log.crlAppAnalytics;
    v36 = static os_log_type_t.default.getter();
    sub_100005404(v11, &_mh_execute_header, v36, "Skip adding drawables to analytics, nil boardItem", 49, 2, _swiftEmptyArrayStorage);
LABEL_45:

    return;
  }

  v8 = v43[0];
  if (v43[0] >> 62)
  {
    goto LABEL_55;
  }

  v9 = *((v43[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_11:
  swift_beginAccess();
  if (v9)
  {
    v10 = 0;
    v40 = v8 & 0xFFFFFFFFFFFFFF8;
    v41 = v8 & 0xC000000000000001;
    v39 = v8;
    while (1)
    {
      if (v41)
      {
        v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v10 >= *(v40 + 16))
        {
          goto LABEL_50;
        }

        v13 = *(v8 + 8 * v10 + 32);
      }

      v14 = v13;
      if (__OFADD__(v10, 1))
      {
        __break(1u);
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        __break(1u);
        goto LABEL_53;
      }

      v15 = sub_100750BE8(v13);
      v16 = *(v2 + 64);
      if (*(v16 + 16))
      {

        v17 = sub_1007C8BCC(v15);
        if (v18)
        {
          v19 = *(*(v16 + 56) + 8 * v17);
        }

        else
        {
          v19 = 0;
        }
      }

      else
      {
        v19 = 0;
      }

      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_51;
      }

      v42 = v10 + 1;
      v22 = v9;
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = *(v2 + 64);
      *(v2 + 64) = 0x8000000000000000;
      v8 = v15;
      v25 = sub_1007C8BCC(v15);
      v27 = v24[2];
      v28 = (v26 & 1) == 0;
      v20 = __OFADD__(v27, v28);
      v29 = v27 + v28;
      if (v20)
      {
        goto LABEL_52;
      }

      v30 = v26;
      if (v24[3] < v29)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_33;
      }

      v35 = v25;
      sub_100AA7FE4();
      v25 = v35;
      v32 = v24;
      if (v30)
      {
LABEL_15:
        *(v32[7] + 8 * v25) = v21;
        goto LABEL_16;
      }

LABEL_34:
      v32[(v25 >> 6) + 8] |= 1 << v25;
      *(v32[6] + v25) = v15;
      *(v32[7] + 8 * v25) = v21;
      v33 = v32[2];
      v20 = __OFADD__(v33, 1);
      v34 = v33 + 1;
      if (v20)
      {
        __break(1u);
LABEL_55:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_11;
      }

      v32[2] = v34;
LABEL_16:
      *(v2 + 64) = v32;
      swift_endAccess();

      ++v10;
      v9 = v22;
      v8 = v39;
      if (v42 == v22)
      {
        goto LABEL_46;
      }
    }

    sub_100A8F9E4(v29, isUniquelyReferenced_nonNull_native);
    v25 = sub_1007C8BCC(v15);
    if ((v30 & 1) != (v31 & 1))
    {
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

LABEL_33:
    v32 = v24;
    if (v30)
    {
      goto LABEL_15;
    }

    goto LABEL_34;
  }

LABEL_46:

  v37 = sub_10074EE3C();
  if (*(v2 + 32))
  {
    *(swift_allocObject() + 16) = v37;

    Tracker.whenSession(block:)();
  }

  else
  {
  }
}

uint64_t sub_1007501D8(uint64_t a1, uint64_t a2)
{
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static OS_os_log.crlAppAnalytics;
  v3 = static os_log_type_t.default.getter();
  sub_100005404(v2, &_mh_execute_header, v3, "Update drawableAddSummaryData", 29, 2, _swiftEmptyArrayStorage);

  sub_1005B981C(&qword_1019FE480, &unk_10147B4A0);
  v4 = type metadata accessor for DataEventTrait();
  v5 = *(v4 - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_10146C6B0;
  (*(v5 + 104))(v7 + v6, enum case for DataEventTrait.unique(_:), v4);
  sub_100751038();
  AccessTracker.push<A>(data:traits:file:line:)();
}

char *sub_100750410(uint64_t a1)
{
  v2 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v2 - 8);
  v4 = v51 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v59 = v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v57 = v51 - v9;
  __chkstk_darwin(v10);
  v54 = v51 - v11;
  __chkstk_darwin(v12);
  v60 = v51 - v13;
  __chkstk_darwin(v14);
  v16 = v51 - v15;
  v17 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v17 - 8);
  v55 = v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = v51 - v20;
  v22 = OBJC_IVAR____TtC8Freeform8CRLBoard_data;
  v23 = *(a1 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
  v24 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
  swift_beginAccess();
  sub_1005E2B78(v23 + v24, v4);
  v53 = sub_1005B981C(&unk_1019F5250, &qword_101470FB0);
  CRRegister.wrappedValue.getter();
  sub_10003D45C(v4, type metadata accessor for CRLBoardCRDTData);
  v56 = a1;
  v25 = (*(a1 + v22) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
  v27 = *v25;
  v26 = v25[1];

  sub_10084BD4C(v16, v27, v26, v21);
  v28 = &v21[*(type metadata accessor for CRLBoardIdentifierStorage(0) + 20)];
  v29 = *v28;
  v30 = *(v28 + 1);

  sub_10003D45C(v21, type metadata accessor for CRLBoardIdentifier);
  if (v29 || v30 != 0xE000000000000000)
  {
    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  else
  {

    v31 = 1;
  }

  if (qword_1019F14F0 != -1)
  {
    swift_once();
  }

  v32 = static AASApplicationManager.shared + OBJC_IVAR____TtC8Freeform21AASApplicationManager_userInfo;
  swift_beginAccess();
  v33 = type metadata accessor for AASUserInfo(0);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33))
  {
    if (qword_1019F2118 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v34 = static OS_os_log.crlAppAnalytics;
    v35 = static os_log_type_t.error.getter();
    sub_100005404(v34, &_mh_execute_header, v35, "Failed to retrieve UserID while generating BoardData", 52, 2, _swiftEmptyArrayStorage);

    sub_1007510F4();
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v51[1] = v31;
    v36 = *(v33 + 20);
    v52 = *(v6 + 16);
    v37 = v54;
    v52(v54, v32 + v36, v5);
    (*(v6 + 32))(v60, v37, v5);
    v38 = v56;
    v39 = *(v56 + v22);
    v40 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_1005E2B78(v39 + v40, v4);
    CRRegister.wrappedValue.getter();
    sub_10003D45C(v4, type metadata accessor for CRLBoardCRDTData);
    v41 = (*(v38 + v22) + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v43 = *v41;
    v42 = v41[1];

    v44 = v55;
    sub_10084BD4C(v16, v43, v42, v55);
    v4 = v59;
    v52(v59, v44, v5);
    v45 = v60;
    sub_10003D45C(v44, type metadata accessor for CRLBoardIdentifier);
    v47 = v57;
    v46 = v58;
    UUID.aas_hashSHA256(with:)(v57);
    if (v46)
    {
      v48 = *(v6 + 8);
      v48(v4, v5);
      v48(v45, v5);
    }

    else
    {
      v50 = *(v6 + 8);
      v50(v4, v5);
      v4 = UUID.uuidString.getter();
      v50(v47, v5);
      v50(v45, v5);
    }
  }

  return v4;
}

uint64_t sub_100750A68(double a1, double a2)
{
  v4 = [objc_allocWithZone(NSNumberFormatter) init];
  [v4 setUsesSignificantDigits:1];
  [v4 setMinimumSignificantDigits:2];
  [v4 setMaximumSignificantDigits:2];
  v5 = [objc_allocWithZone(NSNumber) initWithDouble:a1];
  v6 = [v4 stringFromNumber:v5];

  if (v6)
  {
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v7 = 12589;
  }

  v8 = [objc_allocWithZone(NSNumber) initWithDouble:a2];
  v9 = [v4 stringFromNumber:v8];

  if (v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
  }

  return v7;
}

uint64_t sub_100750BE8(void *a1)
{
  v2 = (*((swift_isaMask & *a1) + 0xC8))();
  if ((v4 & 0x100) == 0)
  {
    goto LABEL_77;
  }

  if (!(v2 | v3) && v4 == 0)
  {
    goto LABEL_77;
  }

  if (v2 == 1 && v3 == 0 && v4 == 0)
  {
    goto LABEL_65;
  }

  v8 = v2 == 2 && v3 == 0;
  if (v8 && v4 == 0)
  {
    goto LABEL_65;
  }

  v11 = v2 == 3 && v3 == 0 && v4 == 0;
  if (v11 || (v2 == 4 ? (v12 = v3 == 0) : (v12 = 0), v12 ? (v13 = v4 == 0) : (v13 = 0), v13))
  {
    v34 = 2;
    goto LABEL_78;
  }

  if (v2 == 5 && v3 == 0 && v4 == 0)
  {
    v34 = 3;
    goto LABEL_78;
  }

  v16 = v2 == 6 && v3 == 0;
  v17 = v16 && v4 == 0;
  if (v17 || (v2 == 7 ? (v18 = v3 == 0) : (v18 = 0), v18 ? (v19 = v4 == 0) : (v19 = 0), v19))
  {
LABEL_77:
    v34 = 5;
    goto LABEL_78;
  }

  v21 = v2 == 8 && v3 == 0 && v4 == 0;
  if (!v21 && (v2 != 9 || v3 || v4))
  {
    if (v2 == 10 && !v3 && !v4)
    {
      v34 = 4;
      goto LABEL_78;
    }

    goto LABEL_77;
  }

LABEL_65:
  type metadata accessor for CRLWPShapeItem(0);
  v22 = swift_dynamicCastClass();
  if (!v22)
  {
LABEL_68:
    v34 = 1;
    goto LABEL_78;
  }

  v23 = v22;
  v24 = OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData;
  v25 = *(**(v22 + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData) + 296);
  v26 = a1;

  v28 = v25(v27);

  v29 = [v28 widthValid];

  if (v29)
  {
    v30 = *(**(v23 + v24) + 296);

    v32 = v30(v31);

    v33 = [v32 heightValid];

    if (v33)
    {
      goto LABEL_68;
    }
  }

  else
  {
  }

  v34 = 0;
LABEL_78:
  if (qword_1019F2118 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v35 = static OS_os_log.crlAppAnalytics;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146BDE0;
  v37 = *((swift_isaMask & *a1) + 0xD0);
  v38 = v35;
  v39 = v37();
  v41 = v40;
  *(inited + 56) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 32) = v39;
  *(inited + 64) = v42;
  *(inited + 40) = v41;
  if (v34 > 2)
  {
    if (v34 == 3)
    {
      v43 = 0xE800000000000000;
      v44 = 0x746E656D75636F64;
    }

    else
    {
      v43 = 0xE700000000000000;
      if (v34 == 4)
      {
        v44 = 0x746E656D6D6F63;
      }

      else
      {
        v44 = 0x6E776F6E6B6E75;
      }
    }
  }

  else if (v34)
  {
    v43 = 0xE500000000000000;
    if (v34 == 1)
    {
      v44 = 0x6570616873;
    }

    else
    {
      v44 = 0x616964656DLL;
    }
  }

  else
  {
    v43 = 0xE400000000000000;
    v44 = 1954047348;
  }

  *(inited + 96) = &type metadata for String;
  *(inited + 104) = v42;
  *(inited + 72) = v44;
  *(inited + 80) = v43;
  v45 = static os_log_type_t.debug.getter();
  sub_100005404(v38, &_mh_execute_header, v45, "User inserted drawables: %@ analytics type: %@", 46, 2, inited);

  swift_setDeallocating();
  sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
  swift_arrayDestroy();
  return v34;
}

unint64_t sub_100751038()
{
  result = qword_1019FE488;
  if (!qword_1019FE488)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for DrawableAddSummaryData, &type metadata for DrawableAddSummaryData, v0, v1);
    atomic_store(result, &qword_1019FE488);
  }

  return result;
}

unint64_t sub_1007510A0()
{
  result = qword_1019FE4A0;
  if (!qword_1019FE4A0)
  {
    result = swift_getWitnessTable("\t_8", &type metadata for BoardData, v0, v1);
    atomic_store(result, &qword_1019FE4A0);
  }

  return result;
}

unint64_t sub_1007510F4()
{
  result = qword_1019FE4A8;
  if (!qword_1019FE4A8)
  {
    result = swift_getWitnessTable(asc_101479DAC, &type metadata for CRLAASBoardTracker.DataGenerationError, v0, v1);
    atomic_store(result, &qword_1019FE4A8);
  }

  return result;
}

unint64_t sub_100751148()
{
  result = qword_1019FE4B0;
  if (!qword_1019FE4B0)
  {
    result = swift_getWitnessTable("A_7", &type metadata for InputDeviceData, v0, v1);
    atomic_store(result, &qword_1019FE4B0);
  }

  return result;
}

unint64_t sub_10075119C()
{
  result = qword_1019FE4B8;
  if (!qword_1019FE4B8)
  {
    result = swift_getWitnessTable("aV8", &type metadata for BoardContentData, v0, v1);
    atomic_store(result, &qword_1019FE4B8);
  }

  return result;
}

uint64_t sub_100751204(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100751260()
{
  result = qword_1019FE4C8;
  if (!qword_1019FE4C8)
  {
    result = swift_getWitnessTable(aU_21, &type metadata for CRLAASBoardTracker.DataGenerationError, v0, v1);
    atomic_store(result, &qword_1019FE4C8);
  }

  return result;
}

unint64_t sub_1007512B8()
{
  result = qword_1019FE4D0;
  if (!qword_1019FE4D0)
  {
    result = swift_getWitnessTable("٢;", &type metadata for CRLCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_1019FE4D0);
  }

  return result;
}

unint64_t sub_100751310()
{
  result = qword_1019FE4D8;
  if (!qword_1019FE4D8)
  {
    result = swift_getWitnessTable(byte_101479EB8, &type metadata for CRLCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_1019FE4D8);
  }

  return result;
}

uint64_t sub_1007513E8@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for InputConnectionBehavior();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v6 - 8);
  v8 = v19 - v7;
  v9 = sub_1005B981C(&qword_1019FC3D8, &qword_101477380);
  __chkstk_darwin(v9 - 8);
  v11 = v19 - v10;
  v12 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v12 - 8);
  v14 = v19 - v13;
  sub_1005B981C(&qword_1019FC3E0, &unk_101477388);
  v15 = type metadata accessor for LocalizedStringResource();
  (*(*(v15 - 8) + 56))(v14, 1, 1, v15);
  v16 = type metadata accessor for String.IntentInputOptions();
  v19[3] = 0;
  v19[4] = 0;
  (*(*(v16 - 8) + 56))(v11, 1, 1, v16);
  v17 = type metadata accessor for IntentDialog();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  (*(v3 + 104))(v5, enum case for InputConnectionBehavior.default(_:), v2);
  *a1 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280, &qword_10146ED60);
  v19[1] = 0xD00000000000001FLL;
  v19[2] = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  result = AppDependency.__allocating_init(key:manager:)();
  a1[1] = result;
  a1[5] = &type metadata for CRLCreateBoardIntentPerformer;
  a1[6] = &off_101896C18;
  return result;
}

uint64_t sub_10075172C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for InputConnectionBehavior();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  __chkstk_darwin(v10 - 8);
  v12 = v23 - v11;
  v13 = sub_1005B981C(&qword_1019FC3D8, &qword_101477380);
  __chkstk_darwin(v13 - 8);
  v15 = v23 - v14;
  v16 = sub_1005B981C(&qword_1019F6270, &unk_10146ED50);
  __chkstk_darwin(v16 - 8);
  v18 = v23 - v17;
  sub_1005B981C(&qword_1019FC3E0, &unk_101477388);
  v19 = type metadata accessor for LocalizedStringResource();
  (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
  v20 = type metadata accessor for String.IntentInputOptions();
  v24 = 0;
  v25 = 0;
  (*(*(v20 - 8) + 56))(v15, 1, 1, v20);
  v21 = type metadata accessor for IntentDialog();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  (*(v7 + 104))(v9, enum case for InputConnectionBehavior.default(_:), v6);
  *a3 = IntentParameter<>.init(description:default:inputOptions:requestValueDialog:inputConnectionBehavior:)();
  sub_1005B981C(&qword_1019F6280, &qword_10146ED60);
  v23[1] = 0xD00000000000001FLL;
  v23[2] = 0x8000000101558510;
  AnyHashable.init<A>(_:)();
  type metadata accessor for AppDependencyManager();
  static AppDependencyManager.shared.getter();
  a3[1] = AppDependency.__allocating_init(key:manager:)();
  a3[5] = &type metadata for CRLCreateBoardIntentPerformer;
  a3[6] = &off_101896C18;
  v24 = a1;
  v25 = a2;
  return IntentParameter.wrappedValue.setter();
}

uint64_t sub_100751A94(uint64_t a1)
{
  v2[76] = v1;
  v2[75] = a1;
  type metadata accessor for LocalizedStringResource();
  v2[77] = swift_task_alloc();
  sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  v2[78] = swift_task_alloc();
  v2[79] = type metadata accessor for CRLBoardEntity(0);
  v2[80] = swift_task_alloc();
  v2[81] = swift_task_alloc();
  v2[82] = swift_task_alloc();
  v2[83] = swift_task_alloc();

  return _swift_task_switch(sub_100751BB4, 0, 0);
}

uint64_t sub_100751BB4()
{
  if (qword_1019F2238 != -1)
  {
    swift_once();
  }

  v1 = v0[76];
  v2 = static OS_os_log.appIntents;
  v0[84] = static OS_os_log.appIntents;
  v0[85] = sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[86] = *v1;
  IntentParameter.wrappedValue.getter();
  v4 = v0[62];
  v0[63] = v0[61];
  v0[64] = v4;
  v0[87] = sub_1005B981C(&unk_1019F6C70, &unk_101488FF0);
  v5 = String.init<A>(describing:)();
  v7 = v6;
  *(inited + 56) = &type metadata for String;
  v8 = sub_1000053B0();
  v0[88] = v8;
  *(inited + 64) = v8;
  *(inited + 32) = v5;
  *(inited + 40) = v7;
  v9 = static os_log_type_t.info.getter();
  sub_100005404(v2, &_mh_execute_header, v9, "Performing CRLCreateBoardIntent with title: %@", 46, 2, inited);
  swift_setDeallocating();
  sub_100005070((inited + 32));
  sub_100020E58(v1 + 2, v1[5]);
  IntentParameter.wrappedValue.getter();
  v10 = v0[65];
  v11 = v0[66];
  v0[89] = v11;
  AppDependency.wrappedValue.getter();
  v0[47] = &type metadata for CRLBoardLibraryProvidingDependency;
  v0[48] = &off_1018AD9D0;
  v12 = swift_task_alloc();
  v0[90] = v12;
  *v12 = v0;
  v12[1] = sub_100751DC4;
  v13 = v0[83];

  return sub_100B2C204(v13, v10, v11, (v0 + 44));
}

uint64_t sub_100751DC4()
{
  v2 = *v1;
  *(*v1 + 728) = v0;

  if (v0)
  {
    v3 = sub_100752078;
  }

  else
  {
    sub_100005070((v2 + 352));
    v3 = sub_100751EF0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100751EF0()
{
  v1 = v0[83];
  v2 = v0[82];
  v3 = v0[81];
  v4 = v0[80];
  sub_1006B05D0(v1, v2);
  v5 = sub_100B0768C();
  sub_1006B05D0(v2, v3);
  sub_1006B05D0(v3, v4);
  IntentParameter.wrappedValue.setter();
  sub_100689004(v3);
  sub_100689004(v2);
  v0[74] = v5;
  sub_1007527B0(&qword_1019F7410, type metadata accessor for CRLBoardEntity, byte_1014869B8);
  sub_10068984C();
  static IntentResult.result<A, B>(value:opensIntent:)();

  sub_100689004(v1);

  v6 = v0[1];

  return v6();
}

uint64_t sub_100752078()
{
  v1 = *(v0 + 728);
  sub_100005070((v0 + 352));
  *(v0 + 568) = v1;
  swift_errorRetain();
  sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
  if (swift_dynamicCast())
  {
    v2 = *(v0 + 704);
    v3 = *(v0 + 624);
    v27 = *(v0 + 672);

    v4 = *(v0 + 440);
    v5 = *(v0 + 448);
    v6 = *(v0 + 456);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146C4D0;
    IntentParameter.wrappedValue.getter();
    v8 = *(v0 + 544);
    *(v0 + 552) = *(v0 + 536);
    *(v0 + 560) = v8;
    v9 = String.init<A>(describing:)();
    *(inited + 56) = &type metadata for String;
    *(inited + 64) = v2;
    *(inited + 32) = v9;
    *(inited + 40) = v10;
    v11 = sub_100B6F42C(v4, v5, v6);
    *(inited + 96) = &type metadata for String;
    *(inited + 104) = v2;
    *(inited + 72) = v11;
    *(inited + 80) = v12;
    *(v0 + 464) = v4;
    *(v0 + 472) = v5;
    *(v0 + 480) = v6;
    sub_10070C1F4(v4, v5, v6);
    v13 = String.init<A>(reflecting:)();
    *(inited + 136) = &type metadata for String;
    *(inited + 144) = v2;
    *(inited + 112) = v13;
    *(inited + 120) = v14;
    v15 = static os_log_type_t.debug.getter();
    sub_100005404(v27, &_mh_execute_header, v15, "Invalid name for board provided: %@ - %{public}@ <%@>", 53, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    IntentParameter.projectedValue.getter();
    sub_1007B020C(v4, v5, v6);
    sub_10070C20C(v4, v5, v6);
    IntentDialog.init(_:)();
    v16 = type metadata accessor for IntentDialog();
    (*(*(v16 - 8) + 56))(v3, 0, 1, v16);
    type metadata accessor for AppIntentError();
    sub_1007527B0(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    IntentParameter.needsValueError(_:)();

    sub_100752748(v3);
  }

  else
  {
    v17 = *(v0 + 704);
    v18 = *(v0 + 672);

    v19 = swift_initStackObject();
    *(v19 + 16) = xmmword_10146BDE0;
    swift_getErrorValue();
    v20 = Error.publicDescription.getter(*(v0 + 400), *(v0 + 408));
    *(v19 + 56) = &type metadata for String;
    *(v19 + 64) = v17;
    *(v19 + 32) = v20;
    *(v19 + 40) = v21;
    swift_getErrorValue();
    v22 = Error.fullDescription.getter(*(v0 + 424));
    *(v19 + 96) = &type metadata for String;
    *(v19 + 104) = v17;
    *(v19 + 72) = v22;
    *(v19 + 80) = v23;
    v24 = static os_log_type_t.error.getter();
    sub_100005404(v18, &_mh_execute_header, v24, "Error creating a board: %{public}@ <%@>", 39, 2, v19);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    type metadata accessor for AppIntentError();
    sub_1007527B0(&qword_1019F8B08, &type metadata accessor for AppIntentError, &protocol conformance descriptor for AppIntentError);
    swift_allocError();
    static AppIntentError.Unrecoverable.unknown.getter();
  }

  swift_willThrow();

  v25 = *(v0 + 8);

  return v25();
}

uint64_t sub_100752500(uint64_t a1)
{
  v2 = sub_1007527F8();

  return static AssistantSchemaIntent.title.getter(a1, v2);
}

uint64_t sub_100752550(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10002D3D4;

  return sub_100751A94(a1);
}

uint64_t sub_1007525EC(uint64_t a1)
{
  v2 = sub_1006896D0();

  return static AppIntent.persistentIdentifier.getter(a1, v2);
}

unint64_t sub_10075262C()
{
  result = qword_1019FE4E0;
  if (!qword_1019FE4E0)
  {
    result = swift_getWitnessTable(aM_33, &type metadata for CRLCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_1019FE4E0);
  }

  return result;
}

__n128 sub_100752688(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1007526A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1007526EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100752748(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019F6260, &unk_10146ED40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1007527B0(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1007527F8()
{
  result = qword_1019FE4E8;
  if (!qword_1019FE4E8)
  {
    result = swift_getWitnessTable(byte_101479ED4, &type metadata for CRLCreateBoardIntent, v0, v1);
    atomic_store(result, &qword_1019FE4E8);
  }

  return result;
}

uint64_t sub_10075284C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_1007528DC();
}

uint64_t sub_1007528DC()
{
  *(v1 + 256) = v0;
  sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  *(v1 + 264) = swift_task_alloc();

  return _swift_task_switch(sub_100752978, v0, 0);
}

uint64_t sub_100752978()
{
  v1 = v0[32];
  v2 = *(v1 + 136);
  if (v2 || (v3 = v0[33], v4 = type metadata accessor for TaskPriority(), (*(*(v4 - 8) + 56))(v3, 1, 1, v4), v5 = swift_allocObject(), swift_weakInit(), v6 = swift_allocObject(), v6[2] = 0, v6[3] = 0, v6[4] = v5, *(v1 + 136) = sub_10079702C(0, 0, v3, &unk_10147A020, v6), , (v2 = *(v1 + 136)) != 0))
  {
    v0[34] = v2;

    v7 = swift_task_alloc();
    v0[35] = v7;
    v8 = sub_1005B981C(&qword_1019FE618, &qword_1014B6B70);
    v9 = sub_1005B981C(&unk_1019F6B40, &qword_10146F320);
    v0[36] = v9;
    *v7 = v0;
    v7[1] = sub_100752B78;

    return Task.value.getter(v0 + 2, v2, v8, v9, &protocol self-conformance witness table for Error);
  }

  else
  {

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_100752B78()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 256);
  if (v0)
  {
    v4 = sub_100752D74;
  }

  else
  {
    v4 = sub_100752C90;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_100752C90()
{
  v1 = *(v0 + 256);

  *(v0 + 96) = *(v1 + 152);
  v2 = *(v1 + 168);
  v3 = *(v1 + 184);
  v4 = *(v1 + 200);
  *(v0 + 153) = *(v1 + 209);
  *(v0 + 128) = v3;
  *(v0 + 144) = v4;
  *(v0 + 112) = v2;
  v6 = *(v0 + 48);
  v5 = *(v0 + 64);
  v7 = *(v0 + 73);
  *(v1 + 168) = *(v0 + 32);
  *(v1 + 209) = v7;
  *(v1 + 200) = v5;
  *(v1 + 184) = v6;
  *(v1 + 152) = *(v0 + 16);
  sub_10000CAAC(v0 + 96, &qword_1019FE618, &qword_1014B6B70);
  v8 = *(v0 + 256);
  *(v8 + 144) = 1;
  *(v8 + 136) = 0;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100752D74()
{
  if (qword_1019F20A8 != -1)
  {
    swift_once();
  }

  v1 = v0[37];
  v2 = static OS_os_log.crlError;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  v0[31] = v1;
  swift_errorRetain();
  v4 = String.init<A>(describing:)();
  v6 = v5;
  *(inited + 56) = &type metadata for String;
  *(inited + 64) = sub_1000053B0();
  *(inited + 32) = v4;
  *(inited + 40) = v6;
  v7 = static os_log_type_t.debug.getter();
  sub_100005404(v2, &_mh_execute_header, v7, "Error trying to fetch view state from database. %@", 50, 2, inited);

  swift_setDeallocating();
  sub_100005070((inited + 32));
  v8 = v0[32];
  *(v8 + 144) = 1;
  *(v8 + 136) = 0;

  v9 = v0[1];

  return v9();
}

uint64_t sub_100752F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 120) = a1;
  *(v4 + 128) = a4;
  return _swift_task_switch(sub_100752F24, 0, 0);
}

uint64_t sub_100752F24()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_100752FFC, Strong, 0);
  }

  else
  {
    v2 = v0[15];
    *(v2 + 64) = 0;
    *(v2 + 32) = 0u;
    *(v2 + 48) = 0u;
    *v2 = 0u;
    *(v2 + 16) = 0u;
    *(v2 + 72) = 2;
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_100752FFC()
{
  v1 = *(v0[17] + 112);
  v0[18] = v1;
  v1;
  v2 = swift_task_alloc();
  v0[19] = v2;
  *v2 = v0;
  v2[1] = sub_1007530AC;

  return sub_100EB673C((v0 + 2));
}

uint64_t sub_1007530AC()
{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = sub_100753250;
  }

  else
  {

    v3 = sub_1007531C8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1007531C8()
{
  v1 = *(v0 + 120);

  *v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  *(v1 + 57) = *(v0 + 73);
  v1[2] = v3;
  v1[3] = v4;
  v1[1] = v2;
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_100753250()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1007532BC()
{

  sub_100753644(*(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t sub_10075335C(void *a1, void *a2, void *a3)
{
  v7 = sub_1005B981C(&qword_1019FB750, &qword_10146F1B0);
  __chkstk_darwin(v7 - 8);
  v9 = &v16 - v8;
  swift_defaultActor_initialize();
  *(v3 + 144) = 0;
  *(v3 + 152) = 0u;
  *(v3 + 168) = 0u;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0;
  *(v3 + 224) = 2;
  *(v3 + 112) = a1;
  *(v3 + 120) = a2;
  *(v3 + 128) = a3;
  *(v3 + 136) = 0;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v12 = a1;
  v13 = a2;
  v14 = a3;

  sub_100CA64C8(0, 0, v9, &unk_10147A010, v11);

  sub_10000CAAC(v9, &qword_1019FB750, &qword_10146F1B0);
  return v3;
}

uint64_t sub_1007534DC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10002D3D4;

  return sub_10075284C();
}

uint64_t sub_100753590(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10002D3D4;

  return sub_100752F04(a1, v4, v5, v6);
}

void sub_100753644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8, unint64_t a9, char a10)
{
  if (a10 != 2)
  {
    sub_100025870(a6, a7);

    sub_100025870(a8, a9);
  }
}

void *sub_100753708()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v2 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
    v3 = result;
    v4 = [result layoutForInfo:v2];

    result = 0;
    if (v4)
    {
      type metadata accessor for CRLWPLayout();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        v6 = v5;
        if (([v5 layoutIsValid] & 1) == 0)
        {
          [v6 validate];
        }

        return v6;
      }

      else
      {

        return 0;
      }
    }
  }

  return result;
}

char *sub_1007537F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  v2 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v1 + OBJC_IVAR____TtC8Freeform12CRLWPStorage_selectedMarkedTextRangeFromOS);
  if (!v3)
  {
    return 0;
  }

  v4 = *&v2[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  v5 = objc_allocWithZone(type metadata accessor for CRLTextPosition());
  v6 = v2;
  v7 = v3;
  v8 = [v5 init:v4 caretAffinity:0];
  NSNotFound.getter();
  v9 = *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v10 = *&v8[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v11 = type metadata accessor for CRLTextRange();
  v12 = objc_allocWithZone(v11);
  v13 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v14 = &v12[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v14 = v9;
  *(v14 + 1) = v9;
  *&v12[v13] = v10;
  v20.receiver = v12;
  v20.super_class = v11;
  v15 = objc_msgSendSuper2(&v20, "init");

  v16 = [v7 start];
  v17 = *&v16[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  v18 = sub_10078D9DC(v17);
  return v18;
}

char *sub_1007539C4()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning];

    if (v2)
    {
      return 0;
    }
  }

  if (!*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage) + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
  {
    v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
    v5 = v3;
    return v3;
  }

  return sub_1007537F8();
}

void sub_100753B78()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v2 = Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning], Strong, (v2 & 1) == 0))
  {
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage) + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v3 = sub_1007537F8();
      if (!v3)
      {
        return;
      }
    }

    else
    {
      v3 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
      v6 = v3;
      if (!v3)
      {
        return;
      }
    }

    v4 = [v3 start];
    v5 = *&v4[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    if (v5 == NSNotFound.getter())
    {
    }

    else
    {
      v7 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
      v8 = *&v3[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];

      if (__OFSUB__(v8, v7))
      {
        __break(1u);
      }
    }
  }
}

void sub_100753E00()
{
  v1 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v42 = *(v1 - 8);
  __chkstk_darwin(v1);
  v41 = &v37 - v2;
  v3 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - v5;
  v7 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v15 = &v37 - v14;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong || (v17 = Strong[OBJC_IVAR____TtC8Freeform11CRLWPEditor_isResigning], Strong, (v17 & 1) == 0))
  {
    v40 = v1;
    v18 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage;
    if (*(*(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage) + OBJC_IVAR____TtC8Freeform12CRLWPStorage_markedTextRange))
    {
      v19 = sub_1007537F8();
      if (v19)
      {
        goto LABEL_5;
      }
    }

    else
    {
      v19 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
      v36 = v19;
      if (v19)
      {
LABEL_5:
        v20 = *&v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8];
        v38 = *&v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
        v39 = v20;

        v21 = *(v0 + v18);
        sub_100A28D8C();
        v23 = v22;

        v24 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
        v25 = *&v23[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
        if (v25)
        {
          (*(*v25 + 896))();
          sub_1005E0A78(&v9[*(v7 + 20)], v15);
          sub_1005E0ADC(v9, type metadata accessor for CRLWPShapeItemCRDTData);
          (*(v4 + 16))(v6, v15, v3);
          sub_1005E0ADC(v15, type metadata accessor for CRLWPStorageCRDTData);
          v26 = CRAttributedString.count.getter();
          v27 = (*(v4 + 8))(v6, v3);
          if (v26 >= (v38 & ~(v38 >> 63)))
          {
            v28 = v38 & ~(v38 >> 63);
          }

          else
          {
            v28 = v26;
          }

          if ((v39 & ~(v39 >> 63)) >= v28)
          {
            v29 = *&v23[v24];
            if (v29)
            {
              (*(*v29 + 896))(v27);
              sub_1005E0A78(&v9[*(v7 + 20)], v12);
              v30 = v23;
              sub_1005E0ADC(v9, type metadata accessor for CRLWPShapeItemCRDTData);
              v31 = v41;
              CRAttributedString.subscript.getter();
              sub_1005E0ADC(v12, type metadata accessor for CRLWPStorageCRDTData);
              v32 = v40;
              v33 = CRAttributedString.Substring.attributedString.getter();
              (*(v42 + 8))(v31, v32);
              v34 = [v33 string];
              if (v34)
              {
                v35 = v34;

                String.init(_:)(v35);
                return;
              }

              goto LABEL_18;
            }

LABEL_17:
            __break(1u);
LABEL_18:
            __break(1u);
            return;
          }

          __break(1u);
        }

        __break(1u);
        goto LABEL_17;
      }
    }
  }
}

id sub_1007543E8(double a1, double a2)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v6 = Strong;
  v7 = v2;
  v8 = sub_1007562D8(0, a1, a2);
  v9 = [*&v6[OBJC_IVAR____TtC8Freeform11CRLWPEditor_editorHelper] rangeForSelectionAtCharIndex:v8 caretIndex:v8];
  v11 = v10;
  v12 = objc_allocWithZone(type metadata accessor for CRLTextRange());
  v13 = sub_10078CDF0(v9, v11);
  v14 = *(v7 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
  *(v7 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = v13;
  v15 = v13;

  (*((swift_isaMask & *v7) + 0x268))();
  return v13;
}

id sub_1007545B4(void *a1, void *a2, void *a3)
{
  v4 = v3;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth] = 0;
  v8 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange] = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  v51 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_lastEditingShape] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage] = a1;
  v53 = a1;
  v9 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(v53 caretAffinity:{"length"), 0}];
  NSNotFound.getter();
  v10 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v11 = *&v9[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v12 = type metadata accessor for CRLTextRange();
  v13 = objc_allocWithZone(v12);
  v14 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v15 = &v13[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v15 = v10;
  *(v15 + 1) = v10;
  *&v13[v14] = v11;
  v16 = a3;
  v57.receiver = v13;
  v57.super_class = v12;
  v17 = objc_msgSendSuper2(&v57, "init");

  v18 = *&v4[v8];
  *&v4[v8] = v17;

  swift_unknownObjectWeakAssign();
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    v55[3] = &type metadata for CRLUIKitFeatureFlags;
    v55[4] = sub_100757068();
    v19 = isFeatureEnabled(_:)();
    sub_100005070(v55);
    if (v19)
    {
      v20 = objc_allocWithZone(type metadata accessor for CRLSelectionViewController_i());
      *&v20[OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_textSelectionInteraction] = 0;
      *&v20[OBJC_IVAR____TtC8Freeform28CRLSelectionViewController_i_lastRotation] = 0;
      v21 = a2;
      v22 = a3;
      v23 = sub_100912954(v21, v22);
    }

    else
    {
      v23 = 0;
    }

    v48 = *&v4[v51];
    *&v4[v51] = v23;

    v54.receiver = v4;
    v54.super_class = type metadata accessor for CRLWPTextSelectionManager();
    v47 = objc_msgSendSuper2(&v54, "init");
  }

  else
  {
    v52 = a3;
    v50 = objc_opt_self();
    v24 = [v50 _atomicIncrementAssertCount];
    v55[0] = [objc_allocWithZone(NSString) init];
    sub_100604538(_swiftEmptyArrayStorage, v55, "Need an icc here!", 17, 2u);
    StaticString.description.getter("init(with:in:backLinkTo:)", 25, 2);
    v25 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2);
    v26 = String._bridgeToObjectiveC()();

    v27 = [v26 lastPathComponent];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    if (qword_1019F20A0 != -1)
    {
      swift_once();
    }

    v31 = static OS_os_log.crlAssert;
    sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_10146CA70;
    *(inited + 56) = &type metadata for Int32;
    *(inited + 64) = &protocol witness table for Int32;
    *(inited + 32) = v24;
    v33 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
    *(inited + 96) = v33;
    v34 = sub_1005CF04C();
    *(inited + 104) = v34;
    *(inited + 72) = v25;
    *(inited + 136) = &type metadata for String;
    v35 = sub_1000053B0();
    *(inited + 112) = v28;
    *(inited + 120) = v30;
    *(inited + 176) = &type metadata for UInt;
    *(inited + 184) = &protocol witness table for UInt;
    *(inited + 144) = v35;
    *(inited + 152) = 150;
    v36 = v55[0];
    *(inited + 216) = v33;
    *(inited + 224) = v34;
    *(inited + 192) = v36;
    v37 = v25;
    v38 = v36;
    v39 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v39, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);
    swift_setDeallocating();
    sub_1005B981C(&unk_1019F5670, &unk_10146CF10);
    swift_arrayDestroy();
    v40 = static os_log_type_t.error.getter();
    sub_100005404(v31, &_mh_execute_header, v40, "Need an icc here!", 17, 2, _swiftEmptyArrayStorage);

    type metadata accessor for __VaListBuilder();
    v41 = swift_allocObject();
    v41[2] = 8;
    v41[3] = 0;
    v41[4] = 0;
    v41[5] = 0;
    v42 = __VaListBuilder.va_list()();
    StaticString.description.getter("init(with:in:backLinkTo:)", 25, 2);
    v43 = String._bridgeToObjectiveC()();

    StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/CRLWP/Editor/CRLWPTextSelectionManager.swift", 98, 2);
    v44 = String._bridgeToObjectiveC()();

    StaticString.description.getter("Need an icc here!", 17, 2);
    v45 = String._bridgeToObjectiveC()();

    [v50 handleFailureInFunction:v43 file:v44 lineNumber:150 isFatal:0 format:v45 args:v42];

    v46 = type metadata accessor for CRLWPTextSelectionManager();
    v56.receiver = v4;
    v56.super_class = v46;
    v47 = objc_msgSendSuper2(&v56, "init");
    v16 = v52;
  }

  return v47;
}

id sub_100754B9C()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController];
  if (v2)
  {
    v3 = *&v2[OBJC_IVAR____TtC8Freeform26CRLSelectionViewController_icc];
    v4 = v2;
    v5 = [v3 removeDecorator:v4];
    (*((swift_isaMask & *v4) + 0x188))(v5);
    sub_100912664();
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CRLWPTextSelectionManager();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_100754D24(uint64_t a1)
{
  v38 = a1;
  v2 = sub_1005B981C(&qword_1019FC080, &unk_101476A30);
  v35 = *(v2 - 8);
  v36 = v2;
  __chkstk_darwin(v2);
  v34 = &v33 - v3;
  v4 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v33 - v6;
  v8 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v33 - v15;
  v17 = *(v1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage);
  sub_100A28D8C();
  v19 = v18;

  v20 = OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData;
  v21 = *&v19[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v21)
  {
    goto LABEL_10;
  }

  v22 = *(v38 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range + 8);
  v37 = *(v38 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
  v38 = v22;
  (*(*v21 + 896))();
  v33 = v8;
  sub_1005E0A78(&v10[*(v8 + 20)], v16);
  sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  (*(v5 + 16))(v7, v16, v4);
  sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
  v23 = CRAttributedString.count.getter();
  v24 = (*(v5 + 8))(v7, v4);
  if (v23 >= (v37 & ~(v37 >> 63)))
  {
    v25 = v37 & ~(v37 >> 63);
  }

  else
  {
    v25 = v23;
  }

  if ((v38 & ~(v38 >> 63)) < v25)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v26 = *&v19[v20];
  if (!v26)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  (*(*v26 + 896))(v24);
  sub_1005E0A78(&v10[*(v33 + 20)], v13);
  v27 = v19;
  sub_1005E0ADC(v10, type metadata accessor for CRLWPShapeItemCRDTData);
  v28 = v34;
  CRAttributedString.subscript.getter();
  sub_1005E0ADC(v13, type metadata accessor for CRLWPStorageCRDTData);
  v29 = v36;
  v30 = CRAttributedString.Substring.attributedString.getter();
  (*(v35 + 8))(v28, v29);
  v31 = [v30 string];
  if (v31)
  {
    v32 = v31;

    String.init(_:)(v32);
    return;
  }

LABEL_12:
  __break(1u);
}

void sub_1007553C8(uint64_t a1@<X0>, void *a2@<X1>, CGPoint *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_10:
    origin = CGRectInfinite.origin;
    size = CGRectInfinite.size;
    goto LABEL_11;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v16[3] = type metadata accessor for CRLTextRange();
  v16[0] = a2;
  sub_1007A16F8(*&v10, a2, v15);
  sub_100005070(v16);
  v13 = v15[1];
  v14 = v15[0];

  size = v13;
  origin = v14;
LABEL_11:
  *a3 = origin;
  a3[1] = size;
}

void sub_10075553C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X3>, _OWORD *a5@<X8>)
{
  v63 = a4;
  *&v65 = a2;
  v8 = sub_1005B981C(&unk_1019FFD10, &unk_101483A60);
  *&v64 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v54 - v9;
  v11 = type metadata accessor for CRLWPShapeItemCRDTData(0);
  __chkstk_darwin(v11);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CRLWPStorageCRDTData(0);
  __chkstk_darwin(v14 - 8);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v62 = OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage;
  v18 = Strong;
  v19 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v19)
  {
    goto LABEL_8;
  }

  v20 = v19;
  type metadata accessor for CRLWPLayout();
  v21 = swift_dynamicCastClass();
  if (!v21)
  {
    goto LABEL_7;
  }

  v22 = v21;
  if (([v21 layoutIsValid] & 1) == 0)
  {
    [v22 validate];
  }

  if (NSNotFound.getter() == v65)
  {
LABEL_7:

LABEL_8:
    *a5 = 0u;
    a5[1] = 0u;
    return;
  }

  v56 = *&v22;
  v60 = v20;
  v61 = a3;
  v23 = *(a1 + v62);
  sub_100A28D8C();
  v25 = v24;

  v26 = *&v25[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v26)
  {
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v27 = v25;
  (*(*v26 + 896))();
  sub_1005E0A78(&v13[*(v11 + 20)], v16);
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v28 = v64;
  v29 = *(v64 + 16);
  v59 = v64 + 16;
  v58 = v29;
  v29(v10, v16, v8);
  sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
  v30 = CRAttributedString.attributedString.getter();
  v31 = *(v28 + 8);
  *&v64 = v28 + 8;
  v57 = v31;
  v31(v10, v8);
  v32 = [v30 length];

  if (v32 < v65)
  {

    goto LABEL_8;
  }

  v33 = *(a1 + v62);
  sub_100A28D8C();
  v35 = v34;

  v36 = *&v35[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
  if (!v36)
  {
    goto LABEL_22;
  }

  v55 = v61 + v65;
  (*(*v36 + 896))();
  sub_1005E0A78(&v13[*(v11 + 20)], v16);
  sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
  v58(v10, v16, v8);
  sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
  v37 = CRAttributedString.attributedString.getter();
  v57(v10, v8);
  v38 = [v37 length];

  v39 = v65;
  v40 = v61;
  if (v38 < v55)
  {
    v41 = *(a1 + v62);
    sub_100A28D8C();
    v43 = v42;

    v44 = *&v43[OBJC_IVAR____TtC8Freeform12CRLWPStorage_shapeItemData];
    if (v44)
    {
      (*(*v44 + 896))();
      sub_1005E0A78(&v13[*(v11 + 20)], v16);
      sub_1005E0ADC(v13, type metadata accessor for CRLWPShapeItemCRDTData);
      v58(v10, v16, v8);
      sub_1005E0ADC(v16, type metadata accessor for CRLWPStorageCRDTData);
      v45 = CRAttributedString.attributedString.getter();
      v57(v10, v8);
      v39 = [v45 length];

      v40 = 0;
      goto LABEL_16;
    }

LABEL_23:
    __break(1u);
    return;
  }

LABEL_16:
  v46 = v63;
  if (v63)
  {
    *v63 = v39;
    v46[1] = v40;
  }

  v47 = type metadata accessor for CRLTextRange();
  v48 = objc_allocWithZone(v47);
  v49 = sub_10078CDF0(v65, v61);
  v50 = v56;
  if (qword_1019F1570 != -1)
  {
    v53 = v49;
    swift_once();
    v49 = v53;
  }

  v67[3] = v47;
  v67[0] = v49;
  v51 = v49;
  sub_1007A16F8(v50, v51, v66);
  sub_100005070(v67);
  v64 = v66[1];
  v65 = v66[0];

  v52 = v64;
  *a5 = v65;
  a5[1] = v52;
}

void sub_100755C68(uint64_t a1@<X0>, void *a2@<X1>, CGFloat *a3@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_8;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_8;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_8:
    x = CGRectInfinite.origin.x;
    y = CGRectInfinite.origin.y;
    width = CGRectInfinite.size.width;
    height = CGRectInfinite.size.height;
    goto LABEL_9;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  x = sub_1007A2160(a2);
  y = v12;
  width = v14;
  height = v16;

LABEL_9:
  *a3 = x;
  a3[1] = y;
  a3[2] = width;
  a3[3] = height;
}

double sub_100755D94(void *a1, uint64_t a2, void *a3, uint64_t (*a4)(void), void (*a5)(double *__return_ptr, id, id))
{
  v8 = qword_1019F1570;
  v9 = a3;
  v10 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v15[3] = a4(0);
  v15[0] = v9;
  v11 = v9;
  a5(&v14, v10, v11);
  sub_100005070(v15);
  v12 = v14;

  return v12;
}

void sub_100755E80(uint64_t a1@<X0>, void *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1007A3814(v10, &v12);

  v11 = v12;
LABEL_11:
  *a2 = v11;
}

void sub_10075603C(uint64_t a1@<X0>, void *a2@<X8>)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_10;
  }

  v7 = Strong;
  v8 = [Strong layoutForInfo:*(a1 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v8)
  {
    goto LABEL_10;
  }

  type metadata accessor for CRLWPLayout();
  v9 = swift_dynamicCastClass();
  if (!v9)
  {

LABEL_10:
    v11 = 0;
    goto LABEL_11;
  }

  v10 = v9;
  if (([v9 layoutIsValid] & 1) == 0)
  {
    [v10 validate];
  }

  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  sub_1007A36F4(v10, &v12);

  v11 = v12;
LABEL_11:
  *a2 = v11;
}

uint64_t sub_1007562D8(char a1, double a2, double a3)
{
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  type metadata accessor for CGPoint(0);
  v15[8] = v7;
  v15[5] = *&a2;
  v15[6] = *&a3;
  v17 = &type metadata for Bool;
  v16 = a1 & 1;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_11;
  }

  v9 = Strong;
  v10 = [Strong layoutForInfo:*(v3 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v10)
  {
    goto LABEL_11;
  }

  type metadata accessor for CRLWPLayout();
  v11 = swift_dynamicCastClass();
  if (!v11)
  {

LABEL_11:
    v13 = NSNotFound.getter();
    goto LABEL_12;
  }

  v12 = v11;
  if (([v11 layoutIsValid] & 1) == 0)
  {
    [v12 validate];
  }

  sub_1007A3814(v12, v15);

  if (!v15[0])
  {
    goto LABEL_11;
  }

  v13 = *(v15[0] + OBJC_IVAR____TtC8Freeform15CRLTextPosition_location);

LABEL_12:
  swift_arrayDestroy();
  return v13;
}

void sub_1007564CC(double a1, double a2)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v6 = Strong;
  v27 = [Strong layoutForInfo:*(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_textStorage)];

  if (!v27)
  {
    return;
  }

  type metadata accessor for CRLWPLayout();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    goto LABEL_17;
  }

  v8 = v7;
  if (([v7 layoutIsValid] & 1) == 0)
  {
    [v8 validate];
  }

  v9 = swift_unknownObjectWeakLoadStrong();
  if (v9)
  {
    v26 = v9;
    v10 = swift_unknownObjectWeakLoadStrong();
    if (v10 && (v11 = v10, v25 = [v10 hitRep:{a1, a2}], v11, v25))
    {
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        [v8 convertNaturalPointFromUnscaledCanvas:{a1, a2}];
        if (qword_1019F1570 != -1)
        {
          swift_once();
        }

        sub_1007A3814(v8, &v29);
        v14 = v29;
        if (v29)
        {
          v15 = *&v29[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
          if ((sub_10075726C(v15, v13, a1, a2) & 1) != 0 && (v16 = __OFSUB__(v15, 1), --v15, v16))
          {
            __break(1u);
          }

          else
          {
            v17 = type metadata accessor for CRLTextRange();
            v18 = objc_allocWithZone(v17);
            v19 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
            *&v18[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
            *&v18[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
            v20 = &v18[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
            *v20 = v15;
            v20[1] = v15;
            *&v18[v19] = 0;
            v28.receiver = v18;
            v28.super_class = v17;
            v21 = objc_msgSendSuper2(&v28, "init");
            v22 = *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange);
            *(v2 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager__selectedTextRange) = v21;
            v23 = v21;

            (*((swift_isaMask & *v2) + 0x268))();
            sub_10093DDE0(0, 1);
          }

          return;
        }
      }

      v24 = v25;
    }

    else
    {

      v24 = v26;
    }
  }

  else
  {
LABEL_17:
    v24 = v27;
  }
}

void sub_100756968()
{
  v1 = *(v0 + OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_selectionViewController);
  if (v1)
  {
    v2 = *((swift_isaMask & *v1) + 0x190);
    v3 = v1;
    v2();
  }
}

id sub_100756EC0(void *a1)
{
  v1 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:objc_msgSend(a1 caretAffinity:{"length"), 0}];
  NSNotFound.getter();
  v2 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v3 = *&v1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v4 = type metadata accessor for CRLTextRange();
  v5 = objc_allocWithZone(v4);
  v6 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v7 = &v5[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v7 = v2;
  *(v7 + 1) = v2;
  *&v5[v6] = v3;
  v10.receiver = v5;
  v10.super_class = v4;
  v8 = objc_msgSendSuper2(&v10, "init");

  return v8;
}

char *sub_100756FAC(void *a1, void *a2, void *a3, __n128 a4)
{
  v12[3] = &type metadata for CRLUIKitFeatureFlags;
  v12[4] = sub_100757068();
  v7 = isFeatureEnabled(_:)();
  sub_100005070(v12);
  if (v7)
  {
    v8 = type metadata accessor for CRLWPTextSelectionManager_i();
  }

  else
  {
    v8 = type metadata accessor for CRLWPTextSelectionManager_x();
  }

  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC8Freeform27CRLWPTextSelectionManager_i_loupeSession] = 0;
  v10 = a2;
  result = sub_1007545B4(a1, a2, a3);
  *&result[OBJC_IVAR____TtC8Freeform25CRLWPTextSelectionManager_minimumCaretHitRegionWidth] = 0x4044000000000000;
  return result;
}

unint64_t sub_100757068()
{
  result = qword_1019FE680;
  if (!qword_1019FE680)
  {
    result = swift_getWitnessTable(byte_1014ADFF8, &type metadata for CRLUIKitFeatureFlags, v0, v1);
    atomic_store(result, &qword_1019FE680);
  }

  return result;
}

id sub_1007570BC()
{
  v0 = [objc_allocWithZone(type metadata accessor for CRLTextPosition()) init:0 caretAffinity:0];
  NSNotFound.getter();
  v1 = *&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v2 = *&v0[OBJC_IVAR____TtC8Freeform15CRLTextPosition_caretAffinity];
  v3 = type metadata accessor for CRLTextRange();
  v4 = objc_allocWithZone(v3);
  v5 = OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_caretAffinity] = 0;
  *&v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_insertionEdge] = 0;
  v6 = &v4[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  *v6 = v1;
  *(v6 + 1) = v1;
  *&v4[v5] = v2;
  v9.receiver = v4;
  v9.super_class = v3;
  v7 = objc_msgSendSuper2(&v9, "init");

  return v7;
}

uint64_t sub_100757198(char *a1, char *a2)
{
  swift_getObjectType();
  if (qword_1019F1570 != -1)
  {
    swift_once();
  }

  v4 = *&a2[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v5 = *&a1[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];
  v6 = a1;
  v7 = a2;
  swift_arrayDestroy();
  result = v4 - v5;
  if (__OFSUB__(v4, v5))
  {
    __break(1u);
  }

  return result;
}

id sub_10075726C(uint64_t a1, id a2, double a3, double a4)
{
  v4 = a1 - 1;
  if (a1 < 1)
  {
    return 0;
  }

  result = [a2 selection];
  if (!result)
  {
    return result;
  }

  v10 = result;
  v11 = [result caretAffinity];

  [a2 convertNaturalPointFromUnscaledCanvas:{a3, a4}];
  v39 = v13;
  v40 = v12;
  [a2 caretRectForCharIndex:a1 caretAffinity:v11];
  v15 = v14;
  v41 = v16;
  v18 = v17;
  v20 = v19;
  [a2 caretRectForCharIndex:v4 caretAffinity:v11];
  v22 = v21;
  v24 = v23;
  v26 = v25;
  v28 = v27;
  [a2 caretRect];
  v30 = v29 * 0.5;
  v42.origin.x = v22;
  v42.origin.y = v24;
  v37 = v26;
  v42.size.width = v26;
  v42.size.height = v28;
  MidY = CGRectGetMidY(v42);
  v38 = v20;
  v43.origin.x = v15;
  v43.origin.y = v41;
  v43.size.width = v18;
  v43.size.height = v20;
  if (v30 > vabdd_f64(MidY, CGRectGetMidY(v43)))
  {
    return 0;
  }

  v32 = sub_100120414(v22, v24, v37, v28);
  v34 = sub_100120090(v40, v39, v32, v33);
  v35 = sub_100120414(v15, v41, v18, v38);
  return (v34 < sub_100120090(v40, v39, v35, v36));
}

uint64_t sub_100757450()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD6370);
  sub_1005EB3DC(v0, qword_101AD6370);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100757500()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD6388);
  sub_1005EB3DC(v0, qword_101AD6388);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_1007575B0()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD63A0);
  sub_1005EB3DC(v0, qword_101AD63A0);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100757660()
{
  v0 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  sub_10061655C(v0, qword_101AD63B8);
  sub_1005EB3DC(v0, qword_101AD63B8);
  return Tips.Parameter.init<A>(_:_:_:_:)();
}

uint64_t sub_100757718()
{
  v0 = sub_1005B981C(&unk_101A287C0, &unk_10147A120);
  sub_10061655C(v0, qword_101AD63D0);
  sub_1005EB3DC(v0, qword_101AD63D0);
  return Tips.Event.init<>(id:)();
}

uint64_t sub_100757788@<X0>(int a2@<W1>, uint64_t *a3@<X8>)
{
  v14 = a2;
  v4 = sub_1005B981C(&qword_1019FE720, &unk_1014933C0);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v13 - v6;
  v8 = sub_1005B981C(&qword_1019FE728, &unk_10147A1D0);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v13 - v10;
  sub_10001A2F8(&qword_1019FE730, &qword_1019FE728, &unk_10147A1D0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  v15 = v14;
  static PredicateExpressions.build_Arg<A>(_:)();
  a3[3] = sub_1005B981C(&qword_1019FE738, &unk_1014933D0);
  a3[4] = sub_100758DC4();
  sub_10002C58C(a3);
  sub_10001A2F8(&qword_1019FE758, &qword_1019FE720, &unk_1014933C0, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  static PredicateExpressions.build_Equal<A, B>(lhs:rhs:)();
  (*(v5 + 8))(v7, v4);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1007579F8@<X0>(uint64_t *a2@<X8>)
{
  v48 = a2;
  v2 = type metadata accessor for PredicateExpressions.ComparisonOperator();
  v46 = *(v2 - 8);
  v47 = v2;
  __chkstk_darwin(v2);
  v45 = &v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FE6A0, &unk_10147A130);
  v5 = *(v4 - 8);
  v49 = v4;
  v50 = v5;
  __chkstk_darwin(v4);
  v44 = &v36 - v6;
  v7 = type metadata accessor for Tips.DonationTimeRange();
  v40 = *(v7 - 8);
  v41 = v7;
  __chkstk_darwin(v7);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019FE6A8, &unk_10149B990);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = sub_1005B981C(&qword_1019FE6B0, &unk_10147A140);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v36 - v16;
  v18 = sub_1005B981C(&qword_1019FE6B8, &unk_10149B9A0);
  v19 = *(v18 - 8);
  v38 = v18;
  v39 = v19;
  __chkstk_darwin(v18);
  v21 = &v36 - v20;
  v22 = sub_1005B981C(&qword_1019FE6C0, &qword_10147A150);
  v23 = *(v22 - 8);
  v42 = v22;
  v43 = v23;
  __chkstk_darwin(v22);
  v37 = &v36 - v24;
  sub_10001A2F8(&qword_1019FE6C8, &qword_1019FE6A8, &unk_10149B990, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
  static PredicateExpressions.build_Arg<A>(_:)();
  swift_getKeyPath();
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v11 + 8))(v13, v10);
  static Tips.DonationTimeRange.day.getter();
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690, &protocol conformance descriptor for Tips.EmptyDonation);
  sub_100758B68(&qword_1019FE698, &protocol conformance descriptor for Tips.EmptyDonation);
  sub_100758BAC();
  static PredicateExpressions.build_donatedWithin<A, B>(_:_:)();
  (*(v40 + 8))(v9, v41);
  (*(v15 + 8))(v17, v14);
  swift_getKeyPath();
  sub_10001A2F8(&qword_1019FE6E0, &qword_1019FE6B8, &unk_10149B9A0, &protocol conformance descriptor for PredicateExpressions.DonatedWithin<A, B>);
  v26 = v37;
  v25 = v38;
  static PredicateExpressions.build_KeyPath<A, B>(root:keyPath:)();

  (*(v39 + 8))(v21, v25);
  v51 = 1;
  v27 = v44;
  static PredicateExpressions.build_Arg<A>(_:)();
  v29 = v45;
  v28 = v46;
  v30 = v47;
  (*(v46 + 104))(v45, enum case for PredicateExpressions.ComparisonOperator.lessThan(_:), v47);
  v31 = sub_1005B981C(&qword_1019FE6E8, &unk_10147A1C0);
  v32 = v48;
  v48[3] = v31;
  v32[4] = sub_100758C5C();
  sub_10002C58C(v32);
  sub_10001A2F8(&qword_1019FE710, &qword_1019FE6C0, &qword_10147A150, &protocol conformance descriptor for PredicateExpressions.KeyPath<A, B>);
  sub_10001A2F8(&qword_1019FE718, &qword_1019FE6A0, &unk_10147A130, &protocol conformance descriptor for PredicateExpressions.Value<A>);
  v33 = v42;
  v34 = v49;
  static PredicateExpressions.build_Comparison<A, B>(lhs:rhs:op:)();
  (*(v28 + 8))(v29, v30);
  (*(v50 + 8))(v27, v34);
  return (*(v43 + 8))(v26, v33);
}

uint64_t sub_100758108()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_100758218()
{
  v0 = [objc_opt_self() mainBundle];
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [v0 localizedStringForKey:v1 value:v2 table:0];

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  sub_100017CD8();
  return Text.init<A>(_:)();
}

uint64_t sub_100758304()
{
  v0 = sub_1005B981C(&qword_1019FE760, &qword_10147A1E0);
  __chkstk_darwin(v0 - 8);
  v2 = &v6 - v1;
  Image.init(systemName:)();
  static SymbolRenderingMode.multicolor.getter();
  v3 = type metadata accessor for SymbolRenderingMode();
  (*(*(v3 - 8) + 56))(v2, 0, 1, v3);
  v4 = Image.symbolRenderingMode(_:)();

  sub_100758F00(v2);
  return v4;
}

uint64_t sub_100758418@<X0>(uint64_t *a2@<X8>)
{
  sub_10067E97C();
  result = Tip.id.getter();
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_10075845C()
{
  result = qword_1019FE688;
  if (!qword_1019FE688)
  {
    result = swift_getWitnessTable(asc_10147A06C, &type metadata for CRLTipStencilLibraryCompact, v0, v1);
    atomic_store(result, &qword_1019FE688);
  }

  return result;
}

unint64_t sub_1007584B0(uint64_t a1)
{
  result = sub_10067E97C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1007584D8()
{
  v0 = sub_1005B981C(&unk_101A287C0, &unk_10147A120);
  v22 = *(v0 - 8);
  v23 = v0;
  __chkstk_darwin(v0);
  v24 = v21 - v1;
  v2 = sub_1005B981C(&unk_1019F6CF0, &unk_10146FAB0);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v21 - v4;
  v6 = type metadata accessor for Tips.Rule();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1019F1538 != -1)
  {
    swift_once();
  }

  v10 = sub_1005EB3DC(v2, qword_101AD6370);
  swift_beginAccess();
  v11 = *(v3 + 16);
  v11(v5, v10, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[2] = static Tips.RuleBuilder.buildExpression(_:)();
  v12 = *(v7 + 8);
  v12(v9, v6);
  if (qword_1019F1540 != -1)
  {
    swift_once();
  }

  v13 = sub_1005EB3DC(v2, qword_101AD6388);
  swift_beginAccess();
  v11(v5, v13, v2);
  Tips.Rule.init<A>(_:_:)();
  v21[1] = static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  if (qword_1019F1548 != -1)
  {
    swift_once();
  }

  v14 = sub_1005EB3DC(v2, qword_101AD63A0);
  swift_beginAccess();
  v11(v5, v14, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v6);
  v15 = v6;
  if (qword_1019F1550 != -1)
  {
    swift_once();
  }

  v16 = sub_1005EB3DC(v2, qword_101AD63B8);
  swift_beginAccess();
  v11(v5, v16, v2);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  if (qword_1019F1558 != -1)
  {
    swift_once();
  }

  v17 = v23;
  v18 = sub_1005EB3DC(v23, qword_101AD63D0);
  (*(v22 + 16))(v24, v18, v17);
  type metadata accessor for Tips.EmptyDonation();
  sub_100758B68(&qword_1019FE690, &protocol conformance descriptor for Tips.EmptyDonation);
  sub_100758B68(&qword_1019FE698, &protocol conformance descriptor for Tips.EmptyDonation);
  Tips.Rule.init<A>(_:_:)();
  static Tips.RuleBuilder.buildExpression(_:)();
  v12(v9, v15);
  static Tips.RuleBuilder.buildPartialBlock(first:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  v19 = static Tips.RuleBuilder.buildPartialBlock(accumulated:next:)();

  return v19;
}

uint64_t sub_100758B68(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = type metadata accessor for Tips.EmptyDonation();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100758BAC()
{
  result = qword_1019FE6D0;
  if (!qword_1019FE6D0)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_1019FE6B0, &unk_10147A140);
    v4[0] = sub_10001A2F8(&qword_1019FE6D8, &qword_1019FE6A8, &unk_10149B990, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1019FE6D0);
  }

  return result;
}

unint64_t sub_100758C5C()
{
  result = qword_1019FE6F0;
  if (!qword_1019FE6F0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_1019FE6E8, &unk_10147A1C0);
    v4[0] = sub_100758D14();
    v4[1] = sub_10001A2F8(&qword_1019FE708, &qword_1019FE6A0, &unk_10147A130, &protocol conformance descriptor for PredicateExpressions.Value<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Comparison<A, B>, v3, v4);
    atomic_store(result, &qword_1019FE6F0);
  }

  return result;
}

unint64_t sub_100758D14()
{
  result = qword_1019FE6F8;
  if (!qword_1019FE6F8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = sub_1005C4E5C(&qword_1019FE6C0, &qword_10147A150);
    v4[0] = sub_10001A2F8(&qword_1019FE700, &qword_1019FE6B8, &unk_10149B9A0, &protocol conformance descriptor for PredicateExpressions.DonatedWithin<A, B>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.KeyPath<A, B>, v3, v4);
    atomic_store(result, &qword_1019FE6F8);
  }

  return result;
}

unint64_t sub_100758DC4()
{
  result = qword_1019FE740;
  if (!qword_1019FE740)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_1019FE738, &unk_1014933D0);
    v4[0] = sub_10001A2F8(&qword_1019FE748, &qword_1019FE728, &unk_10147A1D0, &protocol conformance descriptor for PredicateExpressions.Variable<A>);
    v4[1] = sub_100758E7C();
    result = swift_getWitnessTable(&protocol conformance descriptor for <> PredicateExpressions.Equal<A, B>, v3, v4);
    atomic_store(result, &qword_1019FE740);
  }

  return result;
}

unint64_t sub_100758E7C()
{
  result = qword_1019FE750;
  if (!qword_1019FE750)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = sub_1005C4E5C(&qword_1019FE720, &unk_1014933C0);
    v4[0] = &protocol witness table for Bool;
    v4[1] = &protocol witness table for Bool;
    result = swift_getWitnessTable(&protocol conformance descriptor for <A> PredicateExpressions.Value<A>, v3, v4);
    atomic_store(result, &qword_1019FE750);
  }

  return result;
}

uint64_t sub_100758F00(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE760, &qword_10147A1E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100758F90(void *a1@<X0>, unint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = [a1 colorRGBSpace];
  if (v6 >= 3)
  {
    v19 = 0xD00000000000001FLL;
    v18 = 0x8000000101564740;
    [a1 colorRGBSpace];
    type metadata accessor for CRLColorRGBSpace(0);
    _print_unlocked<A, B>(_:_:)();
    v20 = 0xE000000000000000;
    sub_10075915C();
    swift_willThrowTypedImpl();
    goto LABEL_5;
  }

  v7 = v6;
  [a1 redComponent];
  v9 = v8;
  [a1 greenComponent];
  v11 = v10;
  [a1 blueComponent];
  v13 = v12;
  [a1 alphaComponent];
  v15 = v14;
  v16 = (v7 & 1) == 0;
  TSContentLanguage.Models.Color.RGBA.validate()();
  if (v17)
  {
    v18 = 0x8000000101564760;
    v19 = 0xD000000000000026;
    sub_10075915C();
    swift_willThrowTypedImpl();

    v20 = 0;
LABEL_5:
    *a2 = v19;
    a2[1] = v18;
    a2[2] = 0;
    a2[3] = v20;
    return;
  }

  *a3 = v9;
  *(a3 + 8) = v11;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v16;
}

unint64_t sub_10075915C()
{
  result = qword_101A02630;
  if (!qword_101A02630)
  {
    result = swift_getWitnessTable(byte_10147FCF8, &type metadata for CRLCLExport.ExportError, v0, v1);
    atomic_store(result, &qword_101A02630);
  }

  return result;
}

uint64_t sub_1007591B0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v137 = a2;
  v128 = type metadata accessor for CRLBoardLibraryViewModel.LegacyItem(0);
  __chkstk_darwin(v128);
  v129 = &v118 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1005B981C(&unk_1019FB770, &unk_10146FA30);
  __chkstk_darwin(v6 - 8);
  v119 = &v118 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v126 = &v118 - v9;
  v10 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  __chkstk_darwin(v10 - 8);
  v118 = &v118 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v125 = &v118 - v13;
  __chkstk_darwin(v14);
  v139 = &v118 - v15;
  __chkstk_darwin(v16);
  v124 = &v118 - v17;
  v138 = type metadata accessor for UUID();
  v136 = *(v138 - 8);
  __chkstk_darwin(v138);
  v131 = &v118 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v21 = &v118 - v20;
  __chkstk_darwin(v22);
  v130 = &v118 - v23;
  v127 = type metadata accessor for CRLBoardIdentifierStorage(0);
  __chkstk_darwin(v127);
  v25 = &v118 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v118 - v27;
  __chkstk_darwin(v29);
  v123 = &v118 - v30;
  __chkstk_darwin(v31);
  v122 = &v118 - v32;
  v33 = type metadata accessor for CRLBoardIdentifier(0);
  __chkstk_darwin(v33 - 8);
  v35 = &v118 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v38 = &v118 - v37;
  __chkstk_darwin(v39);
  v120 = &v118 - v40;
  __chkstk_darwin(v41);
  v121 = &v118 - v42;
  v43 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v44 = *(v43 - 8);
  v45 = *(v44 + 56);
  v134 = v43;
  v135 = a3;
  v132 = v44 + 56;
  v133 = v45;
  (v45)(a3, 1, 1);
  v46 = a1;
  v47 = [a1 activityType];
  v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v50 = v49;

  v51 = sub_100080A80(v48, v50);
  if (v51 != 5)
  {
    if (v51 == 8)
    {
      v52 = [v46 userInfo];
      if (v52)
      {
        v53 = v52;
        v54 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

        v140[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v140[1] = v55;
        AnyHashable.init<A>(_:)();
        if (*(v54 + 16))
        {
          v56 = sub_1000640CC(&v141);
          if (v57)
          {
            sub_100064288(*(v54 + 56) + 32 * v56, &v143);
            sub_100064234(&v141);

            if (*(&v144 + 1))
            {
              result = swift_dynamicCast();
              if (result)
              {
                v59 = v130;
                v60 = sub_10084CD4C(v130, v141, v142);
                v62 = v61;

                v63 = v123;
                (*(v136 + 32))(v123, v59, v138);
                v64 = &v63[*(v127 + 20)];
                *v64 = v60;
                v64[1] = v62;
                v65 = v63;
                v66 = v122;
                sub_10075F6B8(v65, v122, type metadata accessor for CRLBoardIdentifierStorage);
                v67 = v66;
                v68 = v120;
                sub_10075F6B8(v67, v120, type metadata accessor for CRLBoardIdentifierStorage);
                v69 = v68;
                v70 = v121;
                sub_10075F6B8(v69, v121, type metadata accessor for CRLBoardIdentifier);
                v71 = v124;
                sub_1010AB99C(v70, v124);
                sub_10000B924(v70, type metadata accessor for CRLBoardIdentifier);
                v114 = v135;
                sub_10000CAAC(v135, &unk_101A15B20, &qword_10146F1E0);
                v115 = v134;
                swift_storeEnumTagMultiPayload();
                v133(v71, 0, 1, v115);
                v116 = v71;
                return sub_10075F5F8(v116, v114);
              }

              return result;
            }

            return sub_10000CAAC(&v143, &unk_1019F4D00, &unk_10146E7F0);
          }
        }

        goto LABEL_30;
      }

LABEL_31:
      v143 = 0u;
      v144 = 0u;
      return sub_10000CAAC(&v143, &unk_1019F4D00, &unk_10146E7F0);
    }

    v85 = [v46 userInfo];
    if (v85)
    {
      v86 = v85;
      v87 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v140[0] = 0xD000000000000017;
      v140[1] = 0x80000001015647C0;
      AnyHashable.init<A>(_:)();
      if (*(v87 + 16))
      {
        v88 = sub_1000640CC(&v141);
        if (v89)
        {
          sub_100064288(*(v87 + 56) + 32 * v88, &v143);
          sub_100064234(&v141);

          if (*(&v144 + 1))
          {
            if (swift_dynamicCast())
            {
              v90 = v141;
              v91 = v142;
              type metadata accessor for JSONDecoder();
              swift_allocObject();
              JSONDecoder.init()();
              sub_10075F668(&qword_1019F43A8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
              v92 = v131;
              v93 = v138;
              dispatch thunk of JSONDecoder.decode<A>(_:from:)();

              v104 = *(v137 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
              __chkstk_darwin(v94);
              *(&v118 - 2) = v92;

              v105 = v126;
              sub_10003CF3C(1, sub_10075F6B0, (&v118 - 4), v104, v126);

              sub_10002640C(v90, v91);
              v106 = v135;
              sub_10000CAAC(v135, &unk_101A15B20, &qword_10146F1E0);
              v107 = _s4NodeVMa(0);
              if ((*(*(v107 - 8) + 48))(v105, 1, v107) == 1)
              {
                sub_10000CAAC(v105, &unk_1019FB770, &unk_10146FA30);
                v108 = v125;
                v133(v125, 1, 1, v134);
              }

              else
              {
                v108 = v125;
                sub_10075ABD8(v105, v125);
                sub_10000B924(v105, _s4NodeVMa);
                v133(v108, 0, 1, v134);
              }

              sub_10075F5F8(v108, v106);
              return (*(v136 + 8))(v92, v93);
            }

LABEL_24:
            v95 = [v46 userInfo];
            if (v95)
            {
              v96 = v95;
              v97 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

              strcpy(v140, "viewModelItem");
              HIWORD(v140[1]) = -4864;
              AnyHashable.init<A>(_:)();
              if (*(v97 + 16))
              {
                v98 = sub_1000640CC(&v141);
                if (v99)
                {
                  sub_100064288(*(v97 + 56) + 32 * v98, &v143);
                  sub_100064234(&v141);

                  if (*(&v144 + 1))
                  {
                    result = swift_dynamicCast();
                    if (result)
                    {
                      v100 = v141;
                      v101 = v142;
                      type metadata accessor for JSONDecoder();
                      swift_allocObject();
                      JSONDecoder.init()();
                      sub_10075F668(&qword_1019FE808, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem, byte_1014BBE5C);
                      v102 = v129;
                      dispatch thunk of JSONDecoder.decode<A>(_:from:)();

                      v109 = *(v137 + OBJC_IVAR____TtC8Freeform15CRLBoardLibrary_storeCacheSnapshot);
                      __chkstk_darwin(v103);
                      *(&v118 - 2) = v102;

                      v110 = v119;
                      sub_10003CF3C(1, sub_10075F5F0, (&v118 - 4), v109, v119);

                      sub_10002640C(v100, v101);
                      v111 = v135;
                      sub_10000CAAC(v135, &unk_101A15B20, &qword_10146F1E0);
                      v112 = _s4NodeVMa(0);
                      if ((*(*(v112 - 8) + 48))(v110, 1, v112) == 1)
                      {
                        sub_10000CAAC(v110, &unk_1019FB770, &unk_10146FA30);
                        v113 = v118;
                        v133(v118, 1, 1, v134);
                      }

                      else
                      {
                        v113 = v118;
                        sub_10075ABD8(v110, v118);
                        sub_10000B924(v110, _s4NodeVMa);
                        v133(v113, 0, 1, v134);
                      }

                      sub_10075F5F8(v113, v111);
                      return sub_10000B924(v102, type metadata accessor for CRLBoardLibraryViewModel.LegacyItem);
                    }

                    return result;
                  }

                  return sub_10000CAAC(&v143, &unk_1019F4D00, &unk_10146E7F0);
                }
              }

              goto LABEL_30;
            }

            goto LABEL_31;
          }

LABEL_23:
          sub_10000CAAC(&v143, &unk_1019F4D00, &unk_10146E7F0);
          goto LABEL_24;
        }
      }

      sub_100064234(&v141);
    }

    v143 = 0u;
    v144 = 0u;
    goto LABEL_23;
  }

  v130 = v35;
  v131 = v38;
  v72 = v139;
  v73 = [v46 userInfo];
  if (!v73)
  {
    goto LABEL_31;
  }

  v74 = v73;
  v75 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  strcpy(v140, "boardId");
  v140[1] = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(v75 + 16) || (v76 = sub_1000640CC(&v141), (v77 & 1) == 0))
  {
LABEL_30:

    sub_100064234(&v141);
    goto LABEL_31;
  }

  sub_100064288(*(v75 + 56) + 32 * v76, &v143);
  sub_100064234(&v141);

  if (!*(&v144 + 1))
  {
    return sub_10000CAAC(&v143, &unk_1019F4D00, &unk_10146E7F0);
  }

  result = swift_dynamicCast();
  if (result)
  {
    v78 = sub_10084CD4C(v21, v141, v142);
    v80 = v79;

    (*(v136 + 32))(v25, v21, v138);
    v81 = &v25[*(v127 + 20)];
    *v81 = v78;
    v81[1] = v80;
    sub_10075F6B8(v25, v28, type metadata accessor for CRLBoardIdentifierStorage);
    v82 = v130;
    sub_10075F6B8(v28, v130, type metadata accessor for CRLBoardIdentifierStorage);
    v83 = v82;
    v84 = v131;
    sub_10075F6B8(v83, v131, type metadata accessor for CRLBoardIdentifier);
    sub_1010AB99C(v84, v72);
    sub_10000B924(v84, type metadata accessor for CRLBoardIdentifier);
    v114 = v135;
    sub_10000CAAC(v135, &unk_101A15B20, &qword_10146F1E0);
    v117 = v134;
    swift_storeEnumTagMultiPayload();
    v133(v72, 0, 1, v117);
    v116 = v72;
    return sub_10075F5F8(v116, v114);
  }

  return result;
}

uint64_t sub_10075A4B0(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100F87E04(v5);
  v6 = static UUID.== infix(_:_:)();
  (*(v3 + 8))(v5, v2);
  return v6 & 1;
}

uint64_t sub_10075A594()
{
  v0 = type metadata accessor for UUID();
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v10 - v5;
  sub_100F87E04(&v10 - v5);
  sub_100F88674(v3);
  v7 = static UUID.== infix(_:_:)();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  return v7 & 1;
}

BOOL sub_10075A720(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = _s5BoardVMa(0);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10075ABD8(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v18 = v10;
LABEL_6:
    sub_10000B924(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    return 0;
  }

  sub_10075F6B8(v10, v16, _s5BoardVMa);
  sub_10075ABD8(a2, v7);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000B924(v16, _s5BoardVMa);
    v18 = v7;
    goto LABEL_6;
  }

  sub_10075F6B8(v7, v13, _s5BoardVMa);
  v17 = sub_10075A6B8(*&v16[*(v11 + 24)], *&v16[*(v11 + 24) + 8], *&v13[*(v11 + 24)], *&v13[*(v11 + 24) + 8], v21 & 1);
  sub_10000B924(v13, _s5BoardVMa);
  sub_10000B924(v16, _s5BoardVMa);
  return v17;
}

uint64_t sub_10075A97C(uint64_t a1, uint64_t a2, int a3)
{
  v21 = a3;
  v5 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v5);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v20 - v9;
  v11 = _s5BoardVMa(0);
  __chkstk_darwin(v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v20 - v15;
  sub_10075ABD8(a1, v10);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v18 = v10;
LABEL_6:
    sub_10000B924(v18, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v17 = 0;
    return v17 & 1;
  }

  sub_10075F6B8(v10, v16, _s5BoardVMa);
  sub_10075ABD8(a2, v7);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000B924(v16, _s5BoardVMa);
    v18 = v7;
    goto LABEL_6;
  }

  sub_10075F6B8(v7, v13, _s5BoardVMa);
  v17 = static Date.< infix(_:_:)();
  sub_10000B924(v13, _s5BoardVMa);
  sub_10000B924(v16, _s5BoardVMa);
  return v17 & 1;
}

uint64_t sub_10075ABD8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10075AC3C(uint64_t a1, uint64_t a2, int a3)
{
  v41 = a3;
  v5 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v5 - 8);
  v7 = &v40[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v10 = &v40[-v9];
  v11 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v11);
  v13 = &v40[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v16 = &v40[-v15];
  v17 = _s5BoardVMa(0);
  __chkstk_darwin(v17);
  v42 = &v40[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v21 = &v40[-v20];
  sub_10075ABD8(a1, v16);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    v26 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v27 = v16;
LABEL_26:
    sub_10000B924(v27, v26);
    v37 = 0;
    return v37 & 1;
  }

  sub_10075F6B8(v16, v21, _s5BoardVMa);
  sub_10075ABD8(a2, v13);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    sub_10000B924(v21, _s5BoardVMa);
    v26 = type metadata accessor for CRLBoardLibraryViewModel.Item;
    v27 = v13;
    goto LABEL_26;
  }

  sub_10075F6B8(v13, v42, _s5BoardVMa);
  sub_10075F580(&v21[*(v17 + 80)], v10);
  v22 = _s5BoardV13ShareMetadataVMa(0);
  v23 = *(*(v22 - 8) + 48);
  if (v23(v10, 1, v22) == 1)
  {
    sub_10000CAAC(v10, &qword_1019F33D0, &unk_101468A70);
    v24 = 0;
    v25 = 0;
  }

  else
  {
    v28 = &v10[*(v22 + 32)];
    if (v28[1])
    {
      v24 = *v28;
      v25 = v28[1];
    }

    else
    {
      v29 = &v10[*(v22 + 24)];
      v24 = *v29;
      v25 = v29[1];
    }

    sub_10000B924(v10, _s5BoardV13ShareMetadataVMa);
  }

  v30 = v42;
  sub_10075F580(&v42[*(v17 + 80)], v7);
  if (v23(v7, 1, v22) == 1)
  {
    sub_10000CAAC(v7, &qword_1019F33D0, &unk_101468A70);
    if (v25)
    {

LABEL_28:
      sub_10000B924(v30, _s5BoardVMa);
      sub_10000B924(v21, _s5BoardVMa);
      v37 = 1;
      return v37 & 1;
    }

LABEL_30:
    if (v41)
    {
      v39 = static Date.< infix(_:_:)();
    }

    else
    {
      v39 = static Date.> infix(_:_:)();
    }

    v37 = v39;
    sub_10000B924(v30, _s5BoardVMa);
    sub_10000B924(v21, _s5BoardVMa);
    return v37 & 1;
  }

  v31 = &v7[*(v22 + 32)];
  if (v31[1])
  {
    v32 = *v31;
    v33 = v31[1];
  }

  else
  {
    v34 = &v7[*(v22 + 24)];
    v32 = *v34;
    v33 = v34[1];
  }

  sub_10000B924(v7, _s5BoardV13ShareMetadataVMa);
  if (!v25)
  {

    v36 = v42;
LABEL_25:
    sub_10000B924(v36, _s5BoardVMa);
    v27 = v21;
    v26 = _s5BoardVMa;
    goto LABEL_26;
  }

  if (v41)
  {
    v45 = v24;
    v46 = v25;
    v43 = v32;
    v44 = v33;
  }

  else
  {
    v45 = v32;
    v46 = v33;
    v43 = v24;
    v44 = v25;
  }

  sub_100017CD8();
  v35 = StringProtocol.localizedStandardCompare<A>(_:)();

  v30 = v42;
  switch(v35)
  {
    case -1:
      goto LABEL_28;
    case 1:
      v36 = v42;
      goto LABEL_25;
    case 0:
      goto LABEL_30;
  }

  type metadata accessor for ComparisonResult(0);
  v45 = v35;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

Swift::Int sub_10075B1E4(void *a1, char a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int, void), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t, void))
{
  v8 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
  v9 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v9 = sub_100068B28(v9);
  }

  v10 = v9[2];
  v12[0] = v9 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v12[1] = v10;
  result = sub_10075B2B4(v12, a2 & 1, a3, a4);
  *a1 = v9;
  return result;
}

Swift::Int sub_10075B2B4(uint64_t a1, char a2, void (*a3)(void *, _BYTE *, uint64_t, Swift::Int, void), uint64_t (*a4)(void, Swift::Int, uint64_t, uint64_t, void))
{
  v8 = *(a1 + 8);
  result = _minimumMergeRunLength(_:)(v8);
  if (result < v8)
  {
    if (v8 >= -1)
    {
      v10 = result;
      if (v8 <= 1)
      {
        v11 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for CRLBoardLibraryViewModel.Item(0);
        v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v11[2] = v8 / 2;
      }

      v12 = *(type metadata accessor for CRLBoardLibraryViewModel.Item(0) - 8);
      v13[0] = v11 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
      v13[1] = v8 / 2;
      a3(v13, v14, a1, v10, a2 & 1);
      v11[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v8 < 0)
  {
    goto LABEL_12;
  }

  if (v8)
  {
    return a4(0, v8, 1, a1, a2 & 1);
  }

  return result;
}

void sub_10075B404(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v67 = a5;
  v9 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v9 - 8);
  v11 = &v60[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v12);
  v72 = &v60[-v13];
  v84 = _s5BoardVMa(0);
  __chkstk_darwin(v84);
  v15 = &v60[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v75 = &v60[-v17];
  v18 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v18);
  v70 = &v60[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v20);
  v73 = &v60[-v21];
  __chkstk_darwin(v22);
  v74 = &v60[-v23];
  __chkstk_darwin(v24);
  v26 = &v60[-v25];
  __chkstk_darwin(v27);
  v78 = &v60[-v29];
  v62 = a2;
  if (a3 == a2)
  {
    return;
  }

  v30 = *a4;
  v31 = *(v28 + 72);
  v32 = *a4 + v31 * (a3 - 1);
  v68 = -v31;
  v69 = v30;
  v33 = a1 - a3;
  v61 = v31;
  v34 = v30 + v31 * a3;
  v71 = v18;
  v79 = v26;
LABEL_7:
  v65 = v32;
  v66 = a3;
  v63 = v34;
  v64 = v33;
  v35 = v33;
  v36 = v75;
  while (1)
  {
    v37 = v78;
    sub_10075ABD8(v34, v78);
    sub_10075ABD8(v32, v26);
    v38 = v37;
    v39 = v74;
    sub_10075ABD8(v38, v74);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_38;
    }

    sub_10075F6B8(v39, v36, _s5BoardVMa);
    v39 = v73;
    sub_10075ABD8(v26, v73);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10000B924(v36, _s5BoardVMa);
LABEL_38:
      v58 = type metadata accessor for CRLBoardLibraryViewModel.Item;
      v59 = v39;
      goto LABEL_39;
    }

    sub_10075F6B8(v39, v15, _s5BoardVMa);
    v40 = &v36[*(v84 + 80)];
    v41 = v72;
    sub_10075F580(v40, v72);
    v42 = _s5BoardV13ShareMetadataVMa(0);
    v43 = *(*(v42 - 8) + 48);
    v44 = v43(v41, 1, v42);
    v77 = v35;
    if (v44 == 1)
    {
      sub_10000CAAC(v41, &qword_1019F33D0, &unk_101468A70);
      v76 = 0;
      v45 = 0;
    }

    else
    {
      v46 = &v41[*(v42 + 32)];
      v47 = v46[1];
      if (v47)
      {
        v76 = *v46;
        v48 = v41;
        v45 = v47;
      }

      else
      {
        v49 = &v41[*(v42 + 24)];
        v76 = *v49;
        v48 = v41;
        v45 = v49[1];
      }

      sub_10000B924(v48, _s5BoardV13ShareMetadataVMa);
      v35 = v77;
    }

    sub_10075F580(&v15[*(v84 + 80)], v11);
    if (v43(v11, 1, v42) == 1)
    {
      sub_10000CAAC(v11, &qword_1019F33D0, &unk_101468A70);
      v26 = v79;
      if (v45)
      {

LABEL_30:
        sub_10000B924(v15, _s5BoardVMa);
        v36 = v75;
        sub_10000B924(v75, _s5BoardVMa);
        v54 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        sub_10000B924(v26, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v78, type metadata accessor for CRLBoardLibraryViewModel.Item);
        goto LABEL_33;
      }
    }

    else
    {
      v50 = &v11[*(v42 + 32)];
      if (v50[1])
      {
        v51 = *v50;
        v52 = v50[1];
      }

      else
      {
        v53 = &v11[*(v42 + 24)];
        v51 = *v53;
        v52 = v53[1];
      }

      sub_10000B924(v11, _s5BoardV13ShareMetadataVMa);
      if (!v45)
      {

        sub_10000B924(v15, _s5BoardVMa);
        sub_10000B924(v75, _s5BoardVMa);
        v26 = v79;
LABEL_5:
        sub_10000B924(v26, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v78, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_6:
        a3 = v66 + 1;
        v32 = v65 + v61;
        v33 = v64 - 1;
        v34 = v63 + v61;
        if (v66 + 1 == v62)
        {
          return;
        }

        goto LABEL_7;
      }

      if (v67)
      {
        v82 = v76;
        v83 = v45;
        v80 = v51;
        v81 = v52;
      }

      else
      {
        v82 = v51;
        v83 = v52;
        v80 = v76;
        v81 = v45;
      }

      sub_100017CD8();
      v54 = StringProtocol.localizedStandardCompare<A>(_:)();

      type metadata accessor for ComparisonResult(0);
      v26 = v79;
      if (v54 == -1)
      {
        goto LABEL_30;
      }

      if (v54)
      {
        if (v54 != 1)
        {
          goto LABEL_43;
        }

        sub_10000B924(v15, _s5BoardVMa);
        v59 = v75;
        v58 = _s5BoardVMa;
LABEL_39:
        sub_10000B924(v59, v58);
        goto LABEL_5;
      }
    }

    v36 = v75;
    if (v67)
    {
      v55 = static Date.< infix(_:_:)();
    }

    else
    {
      v55 = static Date.> infix(_:_:)();
    }

    v54 = v55;
    sub_10000B924(v15, _s5BoardVMa);
    sub_10000B924(v36, _s5BoardVMa);
    v26 = v79;
    sub_10000B924(v79, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v78, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v35 = v77;
    if ((v54 & 1) == 0)
    {
      goto LABEL_6;
    }

LABEL_33:
    if (!v69)
    {
      break;
    }

    v56 = v70;
    sub_10075F6B8(v34, v70, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_10075F6B8(v56, v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v32 += v68;
    v34 += v68;
    v57 = __CFADD__(v35++, 1);
    v26 = v79;
    if (v57)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_43:
  v82 = v54;
  _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
}

void sub_10075BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, int a5)
{
  v64 = a5;
  v63 = _s5BoardVMa(0);
  __chkstk_darwin(v63);
  v65 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v51 - v11;
  v13 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v13);
  v60 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v66 = &v51 - v16;
  __chkstk_darwin(v17);
  v19 = &v51 - v18;
  __chkstk_darwin(v20);
  v22 = &v51 - v21;
  __chkstk_darwin(v23);
  v71 = &v51 - v26;
  v53 = a2;
  if (a3 != a2)
  {
    v27 = v12;
    v28 = *a4;
    v29 = *(v25 + 72);
    v30 = *a4 + v29 * (a3 - 1);
    v58 = -v29;
    v59 = v28;
    v31 = a1 - a3;
    v52 = v29;
    v32 = v28 + v29 * a3;
    v61 = v24;
    v62 = v12;
    while (2)
    {
      v56 = v30;
      v57 = a3;
      v54 = v32;
      v55 = v31;
      v34 = v30;
      while (1)
      {
        v35 = v71;
        sub_10075ABD8(v32, v71);
        sub_10075ABD8(v34, v22);
        sub_10075ABD8(v35, v19);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          break;
        }

        sub_10075F6B8(v19, v27, _s5BoardVMa);
        sub_10075ABD8(v22, v66);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          sub_10000B924(v27, _s5BoardVMa);
          v33 = v66;
          goto LABEL_5;
        }

        v36 = v65;
        sub_10075F6B8(v66, v65, _s5BoardVMa);
        v37 = *(v63 + 24);
        v39 = *(v27 + v37);
        v38 = *(v27 + v37 + 8);
        v40 = (v36 + v37);
        v42 = *v40;
        v41 = v40[1];
        if (v64)
        {
          v69 = v39;
          v70 = v38;
          v67 = v42;
          v68 = v41;
        }

        else
        {
          v69 = v42;
          v70 = v41;
          v67 = v39;
          v68 = v38;
        }

        sub_100017CD8();
        v43 = StringProtocol.localizedStandardCompare<A>(_:)();
        sub_10000B924(v65, _s5BoardVMa);
        v44 = v62;
        sub_10000B924(v62, _s5BoardVMa);
        sub_10000B924(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v27 = v44;
        sub_10000B924(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v43 != -1)
        {
          goto LABEL_6;
        }

        if (!v59)
        {
          __break(1u);
          return;
        }

        v45 = v22;
        v46 = v19;
        v47 = v32;
        v48 = v32;
        v49 = v60;
        sub_10075F6B8(v48, v60, type metadata accessor for CRLBoardLibraryViewModel.Item);
        swift_arrayInitWithTakeFrontToBack();
        sub_10075F6B8(v49, v34, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v34 += v58;
        v32 = v47 + v58;
        v50 = __CFADD__(v31++, 1);
        v19 = v46;
        v22 = v45;
        v27 = v44;
        if (v50)
        {
          goto LABEL_6;
        }
      }

      v33 = v19;
LABEL_5:
      sub_10000B924(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v22, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_6:
      a3 = v57 + 1;
      v30 = v56 + v52;
      v31 = v55 - 1;
      v32 = v54 + v52;
      if (v57 + 1 == v53)
      {
        return;
      }

      continue;
    }
  }
}

uint64_t sub_10075C0E4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, int a5)
{
  v6 = v5;
  v210 = a5;
  v182 = a1;
  v9 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  __chkstk_darwin(v9 - 8);
  v11 = &v177 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v177 - v13;
  __chkstk_darwin(v15);
  v184 = &v177 - v16;
  __chkstk_darwin(v17);
  v183 = &v177 - v18;
  v215 = _s5BoardVMa(0);
  __chkstk_darwin(v215);
  v212 = &v177 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v177 - v21;
  __chkstk_darwin(v23);
  v191 = &v177 - v24;
  __chkstk_darwin(v25);
  v192 = &v177 - v26;
  v27 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v197 = *(v27 - 8);
  __chkstk_darwin(v27);
  v189 = &v177 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v204 = &v177 - v30;
  __chkstk_darwin(v31);
  v207 = &v177 - v32;
  __chkstk_darwin(v33);
  __chkstk_darwin(v34);
  __chkstk_darwin(v35);
  v214 = &v177 - v36;
  __chkstk_darwin(v37);
  __chkstk_darwin(v38);
  v196 = &v177 - v39;
  __chkstk_darwin(v40);
  v42 = &v177 - v41;
  __chkstk_darwin(v43);
  v200 = &v177 - v44;
  __chkstk_darwin(v45);
  v179 = &v177 - v46;
  __chkstk_darwin(v47);
  v198 = a3;
  v52 = a3[1];
  if (v52 < 1)
  {
    v54 = _swiftEmptyArrayStorage;
LABEL_164:
    v56 = *v182;
    if (!*v182)
    {
      goto LABEL_206;
    }

    a4 = v54;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_200;
    }

    v171 = a4;
LABEL_167:
    v220 = v171;
    a4 = *(v171 + 2);
    if (a4 >= 2)
    {
      while (*v198)
      {
        v172 = *&v171[16 * a4];
        v173 = v171;
        v174 = *&v171[16 * a4 + 24];
        sub_10075E650(*v198 + *(v197 + 72) * v172, *v198 + *(v197 + 72) * *&v171[16 * a4 + 16], *v198 + *(v197 + 72) * v174, v56, v210 & 1);
        if (v6)
        {
        }

        if (v174 < v172)
        {
          goto LABEL_193;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v173 = sub_10113DE48(v173);
        }

        if ((a4 - 2) >= *(v173 + 2))
        {
          goto LABEL_194;
        }

        v175 = &v173[16 * a4];
        *v175 = v172;
        *(v175 + 1) = v174;
        v220 = v173;
        sub_10113DDBC(a4 - 1);
        v171 = v220;
        a4 = *(v220 + 2);
        if (a4 <= 1)
        {
        }
      }

      goto LABEL_204;
    }
  }

  v178 = &v177 - v48;
  v199 = v42;
  v188 = v51;
  v213 = v50;
  v209 = v49;
  v205 = v14;
  v53 = 0;
  v54 = _swiftEmptyArrayStorage;
  v181 = a4;
  v206 = v11;
  v55 = v212;
  v208 = v22;
  v211 = v27;
  while (1)
  {
    v56 = v53;
    v57 = v53 + 1;
    v190 = v54;
    if (v53 + 1 >= v52)
    {
      v68 = v53 + 1;
      goto LABEL_55;
    }

    v201 = v52;
    v58 = *v198;
    v59 = *(v197 + 72);
    v60 = *v198 + v59 * v57;
    v61 = v178;
    sub_10075ABD8(v60, v178);
    v62 = v179;
    sub_10075ABD8(v58 + v59 * v56, v179);
    LODWORD(v203) = sub_10075AC3C(v61, v62, v210 & 1);
    if (v6)
    {
      sub_10000B924(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }

    sub_10000B924(v62, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v61, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v180 = v56;
    v63 = v56 + 2;
    v64 = v58 + v59 * (v56 + 2);
    v185 = 0;
    while (1)
    {
      v68 = v201;
      if (v201 == v63)
      {
        break;
      }

      v69 = v200;
      sub_10075ABD8(v64, v200);
      v70 = v199;
      sub_10075ABD8(v60, v199);
      v71 = v69;
      v72 = v196;
      sub_10075ABD8(v71, v196);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v73 = v72;
        v74 = v192;
        sub_10075F6B8(v73, v192, _s5BoardVMa);
        v75 = v70;
        v76 = v188;
        sub_10075ABD8(v75, v188);
        if (swift_getEnumCaseMultiPayload() == 2)
        {
          sub_10075F6B8(v76, v191, _s5BoardVMa);
          v77 = v183;
          sub_10075F580(v74 + *(v215 + 80), v183);
          v78 = _s5BoardV13ShareMetadataVMa(0);
          v79 = *(*(v78 - 8) + 48);
          if (v79(v77, 1, v78) == 1)
          {
            sub_10000CAAC(v77, &qword_1019F33D0, &unk_101468A70);
            v80 = 0;
            v202 = 0;
          }

          else
          {
            v81 = (v77 + *(v78 + 32));
            if (v81[1])
            {
              v80 = *v81;
              v202 = v81[1];
            }

            else
            {
              v82 = (v77 + *(v78 + 24));
              v80 = *v82;
              v202 = v82[1];
            }

            sub_10000B924(v77, _s5BoardV13ShareMetadataVMa);
          }

          v83 = v184;
          sub_10075F580(v191 + *(v215 + 80), v184);
          if (v79(v83, 1, v78) == 1)
          {
            sub_10000CAAC(v83, &qword_1019F33D0, &unk_101468A70);
            v6 = v185;
            v22 = v208;
            if (!v202)
            {
              goto LABEL_32;
            }

LABEL_38:
            sub_10000B924(v191, _s5BoardVMa);
            sub_10000B924(v192, _s5BoardVMa);
            v67 = 1;
            goto LABEL_8;
          }

          v84 = (v83 + *(v78 + 32));
          v22 = v208;
          if (v84[1])
          {
            v85 = *v84;
            v86 = v84[1];
          }

          else
          {
            v87 = (v83 + *(v78 + 24));
            v85 = *v87;
            v86 = v87[1];
          }

          sub_10000B924(v83, _s5BoardV13ShareMetadataVMa);
          if (!v202)
          {

            sub_10000B924(v191, _s5BoardVMa);
            sub_10000B924(v192, _s5BoardVMa);
            v67 = 0;
            v6 = v185;
            goto LABEL_8;
          }

          if (v210)
          {
            v218 = v80;
            v219 = v202;
            v216 = v85;
            v217 = v86;
          }

          else
          {
            v218 = v85;
            v219 = v86;
            v216 = v80;
            v217 = v202;
          }

          sub_100017CD8();
          a4 = StringProtocol.localizedStandardCompare<A>(_:)();

          type metadata accessor for ComparisonResult(0);
          v6 = v185;
          if (a4 != 1)
          {
            if (!a4)
            {
LABEL_32:
              v88 = v191;
              if (v210)
              {
                v89 = static Date.< infix(_:_:)();
              }

              else
              {
                v89 = static Date.> infix(_:_:)();
              }

              v67 = v89;
              sub_10000B924(v88, _s5BoardVMa);
              sub_10000B924(v192, _s5BoardVMa);
              goto LABEL_8;
            }

            if (a4 != -1)
            {
              goto LABEL_207;
            }

            goto LABEL_38;
          }

          sub_10000B924(v191, _s5BoardVMa);
          v66 = v192;
          v65 = _s5BoardVMa;
        }

        else
        {
          sub_10000B924(v74, _s5BoardVMa);
          v65 = type metadata accessor for CRLBoardLibraryViewModel.Item;
          v66 = v76;
        }
      }

      else
      {
        v65 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        v66 = v72;
      }

      sub_10000B924(v66, v65);
      v67 = 0;
LABEL_8:
      sub_10000B924(v199, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v200, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++v63;
      v64 += v59;
      v60 += v59;
      if ((v203 ^ v67))
      {
        v68 = v63 - 1;
        break;
      }
    }

    a4 = v181;
    v55 = v212;
    v56 = v180;
    if ((v203 & 1) == 0)
    {
      goto LABEL_55;
    }

    if (v68 < v180)
    {
      goto LABEL_199;
    }

    if (v180 < v68)
    {
      a4 = v59 * (v68 - 1);
      v90 = v68 * v59;
      v201 = v68;
      v91 = v180;
      v92 = v180 * v59;
      do
      {
        if (v91 != --v68)
        {
          v93 = *v198;
          if (!*v198)
          {
            goto LABEL_203;
          }

          sub_10075F6B8(v93 + v92, v189, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v92 < a4 || v93 + v92 >= (v93 + v90))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          sub_10075F6B8(v189, v93 + a4, type metadata accessor for CRLBoardLibraryViewModel.Item);
        }

        ++v91;
        a4 -= v59;
        v90 -= v59;
        v92 += v59;
      }

      while (v91 < v68);
      v6 = v185;
      a4 = v181;
      v55 = v212;
      v56 = v180;
      v68 = v201;
    }

LABEL_55:
    v94 = v198[1];
    if (v68 >= v94)
    {
      goto LABEL_64;
    }

    if (__OFSUB__(v68, v56))
    {
      goto LABEL_196;
    }

    if (v68 - v56 >= a4)
    {
LABEL_64:
      v53 = v68;
      if (v68 < v56)
      {
        goto LABEL_195;
      }

      goto LABEL_65;
    }

    if (__OFADD__(v56, a4))
    {
      goto LABEL_197;
    }

    if (v56 + a4 >= v94)
    {
      v95 = v198[1];
    }

    else
    {
      v95 = v56 + a4;
    }

    a4 = v207;
    if (v95 < v56)
    {
LABEL_198:
      __break(1u);
LABEL_199:
      __break(1u);
LABEL_200:
      v171 = sub_10113DE48(a4);
      goto LABEL_167;
    }

    if (v68 == v95)
    {
      goto LABEL_64;
    }

    v185 = v6;
    v141 = *v198;
    v142 = *(v197 + 72);
    v143 = *v198 + v142 * (v68 - 1);
    v202 = -v142;
    v180 = v56;
    v144 = v56 - v68;
    v203 = v141;
    v186 = v142;
    v145 = v141 + v68 * v142;
    v187 = v95;
LABEL_123:
    v201 = v68;
    v193 = v145;
    v194 = v144;
    v195 = v143;
LABEL_124:
    v147 = v22;
    v148 = v214;
    sub_10075ABD8(v145, v214);
    v149 = v213;
    sub_10075ABD8(v143, v213);
    v150 = v148;
    v151 = v209;
    sub_10075ABD8(v150, v209);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v146 = v151;
      goto LABEL_120;
    }

    sub_10075F6B8(v151, v147, _s5BoardVMa);
    sub_10075ABD8(v149, a4);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_10000B924(v147, _s5BoardVMa);
      v146 = a4;
LABEL_120:
      sub_10000B924(v146, type metadata accessor for CRLBoardLibraryViewModel.Item);
      v22 = v147;
LABEL_121:
      sub_10000B924(v213, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v214, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_122;
    }

    sub_10075F6B8(a4, v55, _s5BoardVMa);
    v152 = v147 + *(v215 + 80);
    v153 = v205;
    sub_10075F580(v152, v205);
    v154 = _s5BoardV13ShareMetadataVMa(0);
    v155 = *(*(v154 - 8) + 48);
    if (v155(v153, 1, v154) == 1)
    {
      sub_10000CAAC(v153, &qword_1019F33D0, &unk_101468A70);
      v156 = 0;
      v157 = 0;
    }

    else
    {
      v158 = (v153 + *(v154 + 32));
      if (v158[1])
      {
        v156 = *v158;
        v159 = v153;
        v157 = v158[1];
      }

      else
      {
        v160 = (v153 + *(v154 + 24));
        v159 = v153;
        v156 = *v160;
        v157 = v160[1];
      }

      sub_10000B924(v159, _s5BoardV13ShareMetadataVMa);
      v55 = v212;
    }

    v161 = v55 + *(v215 + 80);
    v162 = v206;
    sub_10075F580(v161, v206);
    if (v155(v162, 1, v154) != 1)
    {
      v163 = (v162 + *(v154 + 32));
      v164 = v162;
      if (v163[1])
      {
        v165 = *v163;
        v166 = v163[1];
      }

      else
      {
        v167 = (v162 + *(v154 + 24));
        v165 = *v167;
        v166 = v167[1];
      }

      v55 = v212;

      sub_10000B924(v164, _s5BoardV13ShareMetadataVMa);
      if (!v157)
      {

        sub_10000B924(v55, _s5BoardVMa);
        v22 = v208;
        goto LABEL_158;
      }

      if (v210)
      {
        v218 = v156;
        v219 = v157;
        v216 = v165;
        v217 = v166;
      }

      else
      {
        v218 = v165;
        v219 = v166;
        v216 = v156;
        v217 = v157;
      }

      sub_100017CD8();
      a4 = StringProtocol.localizedStandardCompare<A>(_:)();

      type metadata accessor for ComparisonResult(0);
      v22 = v208;
      if (a4 == -1)
      {
LABEL_146:
        sub_10000B924(v55, _s5BoardVMa);
        sub_10000B924(v22, _s5BoardVMa);
        a4 = type metadata accessor for CRLBoardLibraryViewModel.Item;
        sub_10000B924(v213, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v214, type metadata accessor for CRLBoardLibraryViewModel.Item);
        break;
      }

      if (!a4)
      {
        goto LABEL_144;
      }

      if (a4 != 1)
      {
        goto LABEL_207;
      }

      sub_10000B924(v55, _s5BoardVMa);
LABEL_158:
      sub_10000B924(v22, _s5BoardVMa);
      a4 = v207;
      goto LABEL_121;
    }

    sub_10000CAAC(v162, &qword_1019F33D0, &unk_101468A70);
    v55 = v212;
    v22 = v208;
    if (v157)
    {

      goto LABEL_146;
    }

LABEL_144:
    v168 = (v210 & 1) != 0 ? static Date.< infix(_:_:)() : static Date.> infix(_:_:)();
    a4 = v168;
    sub_10000B924(v55, _s5BoardVMa);
    sub_10000B924(v22, _s5BoardVMa);
    sub_10000B924(v213, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v214, type metadata accessor for CRLBoardLibraryViewModel.Item);
    if (a4)
    {
      break;
    }

    a4 = v207;
LABEL_122:
    v68 = v201 + 1;
    v143 = v195 + v186;
    v144 = v194 - 1;
    v145 = v193 + v186;
    v53 = v187;
    if (v201 + 1 != v187)
    {
      goto LABEL_123;
    }

    v6 = v185;
    v56 = v180;
    if (v187 < v180)
    {
      goto LABEL_195;
    }

LABEL_65:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v54 = v190;
    }

    else
    {
      v54 = sub_100B355CC(0, *(v190 + 2) + 1, 1, v190);
    }

    v97 = *(v54 + 2);
    v96 = *(v54 + 3);
    a4 = v97 + 1;
    if (v97 >= v96 >> 1)
    {
      v54 = sub_100B355CC((v96 > 1), v97 + 1, 1, v54);
    }

    *(v54 + 2) = a4;
    v98 = &v54[16 * v97];
    *(v98 + 4) = v56;
    *(v98 + 5) = v53;
    v56 = *v182;
    if (!*v182)
    {
      goto LABEL_205;
    }

    if (v97)
    {
      v55 = v212;
      while (1)
      {
        v99 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v100 = *(v54 + 4);
          v101 = *(v54 + 5);
          v110 = __OFSUB__(v101, v100);
          v102 = v101 - v100;
          v103 = v110;
LABEL_85:
          if (v103)
          {
            goto LABEL_184;
          }

          v116 = &v54[16 * a4];
          v118 = *v116;
          v117 = *(v116 + 1);
          v119 = __OFSUB__(v117, v118);
          v120 = v117 - v118;
          v121 = v119;
          if (v119)
          {
            goto LABEL_187;
          }

          v122 = &v54[16 * v99 + 32];
          v124 = *v122;
          v123 = *(v122 + 1);
          v110 = __OFSUB__(v123, v124);
          v125 = v123 - v124;
          if (v110)
          {
            goto LABEL_190;
          }

          if (__OFADD__(v120, v125))
          {
            goto LABEL_191;
          }

          if (v120 + v125 >= v102)
          {
            if (v102 < v125)
            {
              v99 = a4 - 2;
            }

            goto LABEL_106;
          }

          goto LABEL_99;
        }

        v126 = &v54[16 * a4];
        v128 = *v126;
        v127 = *(v126 + 1);
        v110 = __OFSUB__(v127, v128);
        v120 = v127 - v128;
        v121 = v110;
LABEL_99:
        if (v121)
        {
          goto LABEL_186;
        }

        v129 = &v54[16 * v99];
        v131 = *(v129 + 4);
        v130 = *(v129 + 5);
        v110 = __OFSUB__(v130, v131);
        v132 = v130 - v131;
        if (v110)
        {
          goto LABEL_189;
        }

        if (v132 < v120)
        {
          goto LABEL_116;
        }

LABEL_106:
        v137 = v99 - 1;
        if (v99 - 1 >= a4)
        {
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
          goto LABEL_198;
        }

        if (!*v198)
        {
          goto LABEL_202;
        }

        v138 = v54;
        a4 = *&v54[16 * v137 + 32];
        v139 = *&v54[16 * v99 + 40];
        sub_10075E650(*v198 + *(v197 + 72) * a4, *v198 + *(v197 + 72) * *&v54[16 * v99 + 32], *v198 + *(v197 + 72) * v139, v56, v210 & 1);
        if (v6)
        {
        }

        if (v139 < a4)
        {
          goto LABEL_180;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v138 = sub_10113DE48(v138);
        }

        if (v137 >= *(v138 + 2))
        {
          goto LABEL_181;
        }

        v140 = &v138[16 * v137];
        *(v140 + 4) = a4;
        *(v140 + 5) = v139;
        v220 = v138;
        sub_10113DDBC(v99);
        v54 = v220;
        a4 = *(v220 + 2);
        v55 = v212;
        if (a4 <= 1)
        {
          goto LABEL_116;
        }
      }

      v104 = &v54[16 * a4 + 32];
      v105 = *(v104 - 64);
      v106 = *(v104 - 56);
      v110 = __OFSUB__(v106, v105);
      v107 = v106 - v105;
      if (v110)
      {
        goto LABEL_182;
      }

      v109 = *(v104 - 48);
      v108 = *(v104 - 40);
      v110 = __OFSUB__(v108, v109);
      v102 = v108 - v109;
      v103 = v110;
      if (v110)
      {
        goto LABEL_183;
      }

      v111 = &v54[16 * a4];
      v113 = *v111;
      v112 = *(v111 + 1);
      v110 = __OFSUB__(v112, v113);
      v114 = v112 - v113;
      if (v110)
      {
        goto LABEL_185;
      }

      v110 = __OFADD__(v102, v114);
      v115 = v102 + v114;
      if (v110)
      {
        goto LABEL_188;
      }

      if (v115 >= v107)
      {
        v133 = &v54[16 * v99 + 32];
        v135 = *v133;
        v134 = *(v133 + 1);
        v110 = __OFSUB__(v134, v135);
        v136 = v134 - v135;
        if (v110)
        {
          goto LABEL_192;
        }

        if (v102 < v136)
        {
          v99 = a4 - 2;
        }

        goto LABEL_106;
      }

      goto LABEL_85;
    }

    v55 = v212;
LABEL_116:
    v52 = v198[1];
    a4 = v181;
    if (v53 >= v52)
    {
      goto LABEL_164;
    }
  }

  if (v203)
  {
    v169 = v204;
    sub_10075F6B8(v145, v204, type metadata accessor for CRLBoardLibraryViewModel.Item);
    swift_arrayInitWithTakeFrontToBack();
    sub_10075F6B8(v169, v143, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v143 += v202;
    v145 += v202;
    v170 = __CFADD__(v144++, 1);
    a4 = v207;
    if (v170)
    {
      goto LABEL_122;
    }

    goto LABEL_124;
  }

  __break(1u);
LABEL_202:
  __break(1u);
LABEL_203:
  __break(1u);
LABEL_204:
  __break(1u);
LABEL_205:
  __break(1u);
LABEL_206:
  __break(1u);
LABEL_207:
  v218 = a4;
  result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
  __break(1u);
  return result;
}

void sub_10075D71C(unint64_t *a1, uint64_t a2, uint64_t a3, int64_t a4, int a5)
{
  v6 = v5;
  v176 = a5;
  v157 = a1;
  v175 = _s5BoardVMa(0);
  __chkstk_darwin(v175);
  v179 = &v149 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v149 - v10;
  __chkstk_darwin(v12);
  v160 = &v149 - v13;
  __chkstk_darwin(v14);
  v16 = &v149 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  v167 = *(v17 - 8);
  __chkstk_darwin(v17);
  v161 = &v149 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v173 = &v149 - v20;
  __chkstk_darwin(v21);
  v23 = &v149 - v22;
  __chkstk_darwin(v24);
  __chkstk_darwin(v25);
  v151 = &v149 - v26;
  __chkstk_darwin(v27);
  v181 = &v149 - v28;
  __chkstk_darwin(v29);
  v159 = &v149 - v30;
  __chkstk_darwin(v31);
  v33 = &v149 - v32;
  __chkstk_darwin(v34);
  v170 = &v149 - v35;
  __chkstk_darwin(v36);
  v169 = &v149 - v37;
  __chkstk_darwin(v38);
  v153 = &v149 - v39;
  __chkstk_darwin(v40);
  v152 = &v149 - v43;
  v44 = v42[1];
  if (v44 < 1)
  {
    v46 = _swiftEmptyArrayStorage;
LABEL_116:
    a4 = *v157;
    if (!*v157)
    {
      goto LABEL_159;
    }

    v45 = v42;
    v17 = v46;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_153;
    }

    v143 = v17;
LABEL_119:
    v186 = v143;
    v17 = *(v143 + 2);
    if (v17 >= 2)
    {
      v144 = v167;
      while (*v45)
      {
        v145 = *&v143[16 * v17];
        v146 = v143;
        v147 = *&v143[16 * v17 + 24];
        sub_10075EC54(*v45 + *(v144 + 72) * v145, *v45 + *(v144 + 72) * *&v143[16 * v17 + 16], *v45 + *(v144 + 72) * v147, a4, v176 & 1);
        if (v6)
        {
          goto LABEL_131;
        }

        if (v147 < v145)
        {
          goto LABEL_146;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v146 = sub_10113DE48(v146);
        }

        if (v17 - 2 >= *(v146 + 2))
        {
          goto LABEL_147;
        }

        v148 = &v146[16 * v17];
        *v148 = v145;
        *(v148 + 1) = v147;
        v186 = v146;
        sub_10113DDBC(v17 - 1);
        v143 = v186;
        v17 = *(v186 + 2);
        if (v17 <= 1)
        {
          goto LABEL_131;
        }
      }

      goto LABEL_157;
    }

LABEL_131:

    return;
  }

  v174 = v41;
  v45 = 0;
  v46 = _swiftEmptyArrayStorage;
  v168 = v42;
  v156 = a4;
  v180 = v11;
  v177 = v17;
  v178 = v23;
  while (1)
  {
    v47 = v45 + 1;
    v162 = v46;
    if (v45 + 1 >= v44)
    {
      goto LABEL_35;
    }

    v171 = v44;
    v48 = *v42;
    v49 = *(v167 + 72);
    v50 = *v42 + v49 * v47;
    v51 = v152;
    sub_10075ABD8(v50, v152);
    v52 = v153;
    sub_10075ABD8(v48 + v49 * v45, v153);
    LODWORD(v172) = sub_10075A720(v51, v52, v176 & 1);
    if (v6)
    {
      sub_10000B924(v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_131;
    }

    v155 = 0;
    sub_10000B924(v52, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v51, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v154 = v45;
    v53 = (v45 + 2);
    v54 = v48 + v49 * (v45 + 2);
    do
    {
      v17 = v177;
      v23 = v178;
      if (v171 == v53)
      {
        v47 = v171;
        goto LABEL_20;
      }

      v57 = v169;
      sub_10075ABD8(v54, v169);
      v58 = v170;
      sub_10075ABD8(v50, v170);
      sub_10075ABD8(v57, v33);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        v55 = v33;
LABEL_8:
        sub_10000B924(v55, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v56 = 0;
        goto LABEL_9;
      }

      sub_10075F6B8(v33, v16, _s5BoardVMa);
      v59 = v58;
      v60 = v159;
      sub_10075ABD8(v59, v159);
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        sub_10000B924(v16, _s5BoardVMa);
        v55 = v60;
        goto LABEL_8;
      }

      v61 = v160;
      sub_10075F6B8(v60, v160, _s5BoardVMa);
      v62 = *(v175 + 24);
      v64 = *&v16[v62];
      v63 = *&v16[v62 + 8];
      v65 = (v61 + v62);
      v67 = *v65;
      v66 = v65[1];
      if (v176)
      {
        v184 = v64;
        v185 = v63;
        v182 = v67;
        v183 = v66;
      }

      else
      {
        v184 = v67;
        v185 = v66;
        v182 = v64;
        v183 = v63;
      }

      sub_100017CD8();
      v56 = StringProtocol.localizedStandardCompare<A>(_:)() == -1;
      sub_10000B924(v160, _s5BoardVMa);
      sub_10000B924(v16, _s5BoardVMa);
LABEL_9:
      sub_10000B924(v170, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v169, type metadata accessor for CRLBoardLibraryViewModel.Item);
      ++v53;
      v54 += v49;
      v50 += v49;
    }

    while ((v172 & 1) == v56);
    v47 = (v53 - 1);
    v17 = v177;
    v23 = v178;
LABEL_20:
    v42 = v168;
    a4 = v156;
    v6 = v155;
    v45 = v154;
    if ((v172 & 1) == 0)
    {
      goto LABEL_33;
    }

    if (v47 < v154)
    {
      goto LABEL_152;
    }

    if (v154 >= v47)
    {
LABEL_33:
      v11 = v180;
      goto LABEL_35;
    }

    v149 = v33;
    v150 = v16;
    v68 = v47;
    v69 = v49 * (v47 - 1);
    v70 = v47 * v49;
    v71 = v154;
    v72 = v154 * v49;
    do
    {
      if (v71 != --v68)
      {
        v73 = *v42;
        if (!*v42)
        {
          goto LABEL_156;
        }

        sub_10075F6B8(v73 + v72, v161, type metadata accessor for CRLBoardLibraryViewModel.Item);
        if (v72 < v69 || v73 + v72 >= (v73 + v70))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v72 != v69)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        sub_10075F6B8(v161, v73 + v69, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v42 = v168;
        v17 = v177;
      }

      ++v71;
      v69 -= v49;
      v70 -= v49;
      v72 += v49;
    }

    while (v71 < v68);
    v6 = v155;
    a4 = v156;
    v11 = v180;
    v16 = v150;
    v23 = v178;
    v33 = v149;
    v45 = v154;
LABEL_35:
    v74 = v42[1];
    if (v47 >= v74)
    {
      goto LABEL_62;
    }

    if (__OFSUB__(v47, v45))
    {
      goto LABEL_149;
    }

    if (v47 - v45 >= a4)
    {
      goto LABEL_62;
    }

    if (__OFADD__(v45, a4))
    {
      goto LABEL_150;
    }

    if (v45 + a4 < v74)
    {
      v74 = v45 + a4;
    }

    if (v74 < v45)
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
LABEL_153:
      v143 = sub_10113DE48(v17);
      goto LABEL_119;
    }

    v163 = v74;
    if (v47 == v74)
    {
      goto LABEL_62;
    }

    v149 = v33;
    v150 = v16;
    v155 = v6;
    v75 = *v42;
    v76 = *(v167 + 72);
    v77 = *v42 + v76 * (v47 - 1);
    v78 = -v76;
    v154 = v45;
    v79 = (v45 - v47);
    v158 = v76;
    v172 = v75;
    v80 = v75 + v47 * v76;
    v81 = v151;
LABEL_48:
    v171 = v47;
    v164 = v80;
    v165 = v79;
    v166 = v77;
    v83 = v77;
LABEL_49:
    v84 = v181;
    sub_10075ABD8(v80, v181);
    sub_10075ABD8(v83, v81);
    v85 = v84;
    a4 = v81;
    v86 = v174;
    sub_10075ABD8(v85, v174);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v82 = v86;
      v81 = a4;
      goto LABEL_45;
    }

    sub_10075F6B8(v86, v11, _s5BoardVMa);
    sub_10075ABD8(a4, v23);
    v81 = a4;
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      break;
    }

    sub_10000B924(v11, _s5BoardVMa);
    v82 = v23;
LABEL_45:
    sub_10000B924(v82, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v81, type metadata accessor for CRLBoardLibraryViewModel.Item);
    sub_10000B924(v181, type metadata accessor for CRLBoardLibraryViewModel.Item);
LABEL_46:
    v17 = v177;
LABEL_47:
    v47 = v171 + 1;
    v77 = v166 + v158;
    v79 = v165 - 1;
    v80 = v164 + v158;
    if ((v171 + 1) != v163)
    {
      goto LABEL_48;
    }

    v6 = v155;
    v16 = v150;
    v33 = v149;
    v45 = v154;
    v47 = v163;
LABEL_62:
    if (v47 < v45)
    {
      goto LABEL_148;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v46 = v162;
    }

    else
    {
      v46 = sub_100B355CC(0, *(v162 + 2) + 1, 1, v162);
    }

    a4 = *(v46 + 2);
    v98 = *(v46 + 3);
    v17 = a4 + 1;
    v42 = v168;
    if (a4 >= v98 >> 1)
    {
      v46 = sub_100B355CC((v98 > 1), a4 + 1, 1, v46);
      v42 = v168;
    }

    *(v46 + 2) = v17;
    v99 = &v46[16 * a4];
    *(v99 + 4) = v45;
    *(v99 + 5) = v47;
    v172 = *v157;
    if (!v172)
    {
      goto LABEL_158;
    }

    v163 = v47;
    if (a4)
    {
      while (1)
      {
        v100 = v17 - 1;
        if (v17 >= 4)
        {
          break;
        }

        if (v17 == 3)
        {
          v101 = *(v46 + 4);
          v102 = *(v46 + 5);
          v111 = __OFSUB__(v102, v101);
          v103 = v102 - v101;
          v104 = v111;
LABEL_82:
          if (v104)
          {
            goto LABEL_137;
          }

          v117 = &v46[16 * v17];
          v119 = *v117;
          v118 = *(v117 + 1);
          v120 = __OFSUB__(v118, v119);
          v121 = v118 - v119;
          v122 = v120;
          if (v120)
          {
            goto LABEL_140;
          }

          v123 = &v46[16 * v100 + 32];
          v125 = *v123;
          v124 = *(v123 + 1);
          v111 = __OFSUB__(v124, v125);
          v126 = v124 - v125;
          if (v111)
          {
            goto LABEL_143;
          }

          if (__OFADD__(v121, v126))
          {
            goto LABEL_144;
          }

          if (v121 + v126 >= v103)
          {
            if (v103 < v126)
            {
              v100 = v17 - 2;
            }

            goto LABEL_103;
          }

          goto LABEL_96;
        }

        v127 = &v46[16 * v17];
        v129 = *v127;
        v128 = *(v127 + 1);
        v111 = __OFSUB__(v128, v129);
        v121 = v128 - v129;
        v122 = v111;
LABEL_96:
        if (v122)
        {
          goto LABEL_139;
        }

        v130 = &v46[16 * v100];
        v132 = *(v130 + 4);
        v131 = *(v130 + 5);
        v111 = __OFSUB__(v131, v132);
        v133 = v131 - v132;
        if (v111)
        {
          goto LABEL_142;
        }

        if (v133 < v121)
        {
          goto LABEL_3;
        }

LABEL_103:
        a4 = v100 - 1;
        if (v100 - 1 >= v17)
        {
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
          __break(1u);
LABEL_139:
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
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
          goto LABEL_151;
        }

        if (!*v42)
        {
          goto LABEL_155;
        }

        v45 = v33;
        v138 = v16;
        v139 = v46;
        v17 = *&v46[16 * a4 + 32];
        v140 = *&v46[16 * v100 + 40];
        sub_10075EC54(*v42 + *(v167 + 72) * v17, *v42 + *(v167 + 72) * *&v46[16 * v100 + 32], *v42 + *(v167 + 72) * v140, v172, v176 & 1);
        if (v6)
        {
          goto LABEL_131;
        }

        if (v140 < v17)
        {
          goto LABEL_133;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v141 = v139;
        }

        else
        {
          v141 = sub_10113DE48(v139);
        }

        if (a4 >= *(v141 + 2))
        {
          goto LABEL_134;
        }

        v16 = v138;
        v142 = &v141[16 * a4];
        *(v142 + 4) = v17;
        *(v142 + 5) = v140;
        v186 = v141;
        sub_10113DDBC(v100);
        v46 = v186;
        v17 = *(v186 + 2);
        v23 = v178;
        v33 = v45;
        v42 = v168;
        if (v17 <= 1)
        {
          goto LABEL_3;
        }
      }

      v105 = &v46[16 * v17 + 32];
      v106 = *(v105 - 64);
      v107 = *(v105 - 56);
      v111 = __OFSUB__(v107, v106);
      v108 = v107 - v106;
      if (v111)
      {
        goto LABEL_135;
      }

      v110 = *(v105 - 48);
      v109 = *(v105 - 40);
      v111 = __OFSUB__(v109, v110);
      v103 = v109 - v110;
      v104 = v111;
      if (v111)
      {
        goto LABEL_136;
      }

      v112 = &v46[16 * v17];
      v114 = *v112;
      v113 = *(v112 + 1);
      v111 = __OFSUB__(v113, v114);
      v115 = v113 - v114;
      if (v111)
      {
        goto LABEL_138;
      }

      v111 = __OFADD__(v103, v115);
      v116 = v103 + v115;
      if (v111)
      {
        goto LABEL_141;
      }

      if (v116 >= v108)
      {
        v134 = &v46[16 * v100 + 32];
        v136 = *v134;
        v135 = *(v134 + 1);
        v111 = __OFSUB__(v135, v136);
        v137 = v135 - v136;
        if (v111)
        {
          goto LABEL_145;
        }

        if (v103 < v137)
        {
          v100 = v17 - 2;
        }

        goto LABEL_103;
      }

      goto LABEL_82;
    }

LABEL_3:
    v44 = v42[1];
    v45 = v163;
    a4 = v156;
    v17 = v177;
    if (v163 >= v44)
    {
      goto LABEL_116;
    }
  }

  v87 = v179;
  sub_10075F6B8(v23, v179, _s5BoardVMa);
  v88 = *(v175 + 24);
  v90 = *&v11[v88];
  v89 = *&v11[v88 + 8];
  v91 = (v87 + v88);
  v93 = *v91;
  v92 = v91[1];
  if (v176)
  {
    v184 = v90;
    v185 = v89;
    v182 = v93;
    v183 = v92;
  }

  else
  {
    v184 = v93;
    v185 = v92;
    v182 = v90;
    v183 = v89;
  }

  sub_100017CD8();
  v94 = StringProtocol.localizedStandardCompare<A>(_:)();
  sub_10000B924(v179, _s5BoardVMa);
  sub_10000B924(v180, _s5BoardVMa);
  sub_10000B924(a4, type metadata accessor for CRLBoardLibraryViewModel.Item);
  sub_10000B924(v181, type metadata accessor for CRLBoardLibraryViewModel.Item);
  if (v94 != -1)
  {
    v11 = v180;
    goto LABEL_46;
  }

  if (v172)
  {
    v95 = v173;
    sub_10075F6B8(v80, v173, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v96 = v177;
    swift_arrayInitWithTakeFrontToBack();
    v17 = v96;
    sub_10075F6B8(v95, v83, type metadata accessor for CRLBoardLibraryViewModel.Item);
    v83 += v78;
    v80 += v78;
    v97 = __CFADD__(v79++, 1);
    v11 = v180;
    v23 = v178;
    if (v97)
    {
      goto LABEL_47;
    }

    goto LABEL_49;
  }

  __break(1u);
LABEL_155:
  __break(1u);
LABEL_156:
  __break(1u);
LABEL_157:
  __break(1u);
LABEL_158:
  __break(1u);
LABEL_159:
  __break(1u);
}

void sub_10075E650(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v6 = v5;
  v61 = a5;
  v60 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v60);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  __chkstk_darwin(v14);
  v16 = &v51 - v15;
  __chkstk_darwin(v17);
  v20 = &v51 - v19;
  v22 = *(v21 + 72);
  if (!v22)
  {
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_66;
  }

  v23 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v22 == -1)
  {
    goto LABEL_67;
  }

  v24 = (a2 - a1) / v22;
  v65 = a1;
  v64 = a4;
  if (v24 >= v23 / v22)
  {
    v26 = v23 / v22 * v22;
    v58 = v18;
    if (a4 < a2 || a2 + v26 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    if (v26 < 1)
    {
      v40 = a4 + v26;
    }

    else
    {
      v38 = -v22;
      v39 = a4 + v26;
      v40 = a4 + v26;
      v55 = v12;
      v56 = a1;
      v54 = -v22;
      do
      {
        v52 = v40;
        v41 = a2;
        a2 += v38;
        v57 = v41;
        while (1)
        {
          if (v41 <= a1)
          {
            v65 = v41;
            v62 = v6;
            v63 = v52;
            goto LABEL_62;
          }

          v43 = a3;
          v53 = v40;
          v44 = v6;
          v59 = v39;
          v45 = v39 + v38;
          v46 = v58;
          sub_10075ABD8(v39 + v38, v58);
          sub_10075ABD8(a2, v12);
          v47 = v44;
          v48 = sub_10075AC3C(v46, v12, v61 & 1);
          if (v47)
          {
            sub_10000B924(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000B924(v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
            v65 = v57;
            v63 = v53;
            goto LABEL_62;
          }

          v62 = 0;
          v49 = a4;
          v50 = v43 + v38;
          sub_10000B924(v12, type metadata accessor for CRLBoardLibraryViewModel.Item);
          sub_10000B924(v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
          if (v48)
          {
            break;
          }

          v40 = v45;
          a3 = v43 + v38;
          if (v43 < v59 || v50 >= v59)
          {
            swift_arrayInitWithTakeFrontToBack();
            a4 = v49;
          }

          else
          {
            a4 = v49;
            if (v43 != v59)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v39 = v45;
          v42 = v45 > a4;
          v6 = v62;
          v12 = v55;
          a1 = v56;
          v38 = v54;
          v41 = v57;
          if (!v42)
          {
            a2 = v57;
            goto LABEL_63;
          }
        }

        a3 = v43 + v38;
        if (v43 < v57 || v50 >= v57)
        {
          swift_arrayInitWithTakeFrontToBack();
          a4 = v49;
          v40 = v53;
          v38 = v54;
        }

        else
        {
          a4 = v49;
          v40 = v53;
          v38 = v54;
          if (v43 != v57)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v39 = v59;
        v6 = v62;
        v12 = v55;
        a1 = v56;
      }

      while (v59 > a4);
    }

LABEL_63:
    v62 = v6;
    v63 = v40;
    v65 = a2;
  }

  else
  {
    v59 = v22;
    v25 = v24 * v22;
    if (a4 < a1 || a1 + v25 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v58 = a4 + v25;
    v62 = v5;
    v63 = a4 + v25;
    if (v25 >= 1 && a2 < a3)
    {
      v57 = v16;
      v28 = v59;
      while (1)
      {
        v29 = a3;
        sub_10075ABD8(a2, v20);
        v30 = a4;
        v31 = a4;
        v32 = v20;
        v33 = v57;
        sub_10075ABD8(v31, v57);
        v34 = v62;
        v35 = sub_10075AC3C(v32, v33, v61 & 1);
        v62 = v34;
        if (v34)
        {
          break;
        }

        v36 = v35;
        v37 = a2;
        sub_10000B924(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
        sub_10000B924(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v20 = v32;
        if (v36)
        {
          a2 += v28;
          a4 = v30;
          if (a1 < v37 || a1 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v37)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }
        }

        else
        {
          a4 = v30 + v28;
          if (a1 < v30 || a1 >= a4)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v29;
          }

          else
          {
            a3 = v29;
            if (a1 != v30)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v64 = v30 + v28;
        }

        v28 = v59;
        a1 += v59;
        v65 = a1;
        if (a4 >= v58 || a2 >= a3)
        {
          goto LABEL_62;
        }
      }

      sub_10000B924(v33, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v32, type metadata accessor for CRLBoardLibraryViewModel.Item);
    }
  }

LABEL_62:
  sub_10063F7DC(&v65, &v64, &v63);
}

void sub_10075EC54(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, int a5)
{
  v87 = a5;
  v86 = _s5BoardVMa(0);
  __chkstk_darwin(v86);
  v85 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v84 = &v82 - v11;
  __chkstk_darwin(v12);
  v92 = &v82 - v13;
  __chkstk_darwin(v14);
  v16 = &v82 - v15;
  v17 = type metadata accessor for CRLBoardLibraryViewModel.Item(0);
  __chkstk_darwin(v17);
  __chkstk_darwin(v18);
  v90 = &v82 - v19;
  __chkstk_darwin(v20);
  v22 = &v82 - v21;
  __chkstk_darwin(v23);
  v94 = &v82 - v24;
  __chkstk_darwin(v25);
  __chkstk_darwin(v26);
  v28 = &v82 - v27;
  __chkstk_darwin(v29);
  v31 = &v82 - v30;
  __chkstk_darwin(v32);
  v37 = &v82 - v36;
  v39 = *(v38 + 72);
  if (!v39)
  {
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_78;
  }

  v40 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v39 == -1)
  {
    goto LABEL_79;
  }

  v95 = v33;
  v41 = (a2 - a1) / v39;
  v102 = a1;
  v101 = a4;
  if (v41 >= v40 / v39)
  {
    v43 = v40 / v39 * v39;
    v83 = v35;
    v93 = v22;
    if (a4 < a2 || a2 + v43 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v61 = a4 + v43;
    if (v43 >= 1)
    {
      v62 = -v39;
      v63 = a4 + v43;
      v92 = -v39;
      while (2)
      {
        while (1)
        {
          v82 = v61;
          v64 = a2 + v62;
          v91 = a2 + v62;
          v89 = a2;
          while (1)
          {
            if (a2 <= a1)
            {
              v102 = a2;
              v100 = v82;
              goto LABEL_76;
            }

            v66 = a3;
            v67 = v63 + v62;
            v68 = v94;
            sub_10075ABD8(v67, v94);
            v69 = v93;
            sub_10075ABD8(v64, v93);
            v70 = v68;
            v71 = v90;
            sub_10075ABD8(v70, v90);
            if (swift_getEnumCaseMultiPayload() == 2)
            {
              v88 = v61;
              v72 = v84;
              sub_10075F6B8(v71, v84, _s5BoardVMa);
              v73 = v83;
              sub_10075ABD8(v69, v83);
              if (swift_getEnumCaseMultiPayload() == 2)
              {
                v74 = v85;
                sub_10075F6B8(v73, v85, _s5BoardVMa);
                v75 = *(v86 + 24);
                v77 = *(v72 + v75);
                v76 = *(v72 + v75 + 8);
                v78 = (v74 + v75);
                v80 = *v78;
                v79 = v78[1];
                if (v87)
                {
                  v98 = v77;
                  v99 = v76;
                  v96 = v80;
                  v97 = v79;
                }

                else
                {
                  v98 = v80;
                  v99 = v79;
                  v96 = v77;
                  v97 = v76;
                }

                sub_100017CD8();
                v81 = StringProtocol.localizedStandardCompare<A>(_:)() == -1;
                sub_10000B924(v85, _s5BoardVMa);
                sub_10000B924(v72, _s5BoardVMa);
              }

              else
              {
                sub_10000B924(v72, _s5BoardVMa);
                sub_10000B924(v73, type metadata accessor for CRLBoardLibraryViewModel.Item);
                v81 = 0;
              }

              v61 = v88;
            }

            else
            {
              sub_10000B924(v71, type metadata accessor for CRLBoardLibraryViewModel.Item);
              v81 = 0;
            }

            a3 = v66 + v92;
            sub_10000B924(v93, type metadata accessor for CRLBoardLibraryViewModel.Item);
            sub_10000B924(v94, type metadata accessor for CRLBoardLibraryViewModel.Item);
            if (v81)
            {
              break;
            }

            v61 = v67;
            v64 = v91;
            if (v66 < v63 || a3 >= v63)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v66 != v63)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v63 = v67;
            v65 = v67 > a4;
            v62 = v92;
            a2 = v89;
            if (!v65)
            {
              goto LABEL_74;
            }
          }

          a2 = v91;
          if (v66 < v89 || a3 >= v89)
          {
            break;
          }

          v62 = v92;
          if (v66 != v89)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v63 <= a4)
          {
            goto LABEL_74;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v62 = v92;
        if (v63 > a4)
        {
          continue;
        }

        break;
      }
    }

LABEL_74:
    v102 = a2;
    v100 = v61;
  }

  else
  {
    v93 = v16;
    v42 = v41 * v39;
    v90 = v34;
    if (a4 < a1 || a1 + v42 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v94 = a4 + v42;
    v100 = a4 + v42;
    if (v42 >= 1 && a2 < a3)
    {
      v88 = v37;
      v89 = a3;
      while (1)
      {
        sub_10075ABD8(a2, v37);
        sub_10075ABD8(a4, v31);
        sub_10075ABD8(v37, v28);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        v46 = v28;
        if (EnumCaseMultiPayload != 2)
        {
          goto LABEL_26;
        }

        v47 = v39;
        v48 = v93;
        sub_10075F6B8(v28, v93, _s5BoardVMa);
        v49 = v31;
        v50 = v31;
        v51 = v90;
        sub_10075ABD8(v50, v90);
        if (swift_getEnumCaseMultiPayload() != 2)
        {
          break;
        }

        v91 = a2;
        v52 = v92;
        sub_10075F6B8(v51, v92, _s5BoardVMa);
        v53 = *(v86 + 24);
        v55 = *(v48 + v53);
        v54 = *(v48 + v53 + 8);
        v56 = (v52 + v53);
        v58 = *v56;
        v57 = v56[1];
        if (v87)
        {
          v98 = v55;
          v99 = v54;
          v96 = v58;
          v97 = v57;
        }

        else
        {
          v98 = v58;
          v99 = v57;
          v96 = v55;
          v97 = v54;
        }

        sub_100017CD8();
        v59 = StringProtocol.localizedStandardCompare<A>(_:)();
        v39 = v47;
        v31 = v49;
        sub_10000B924(v92, _s5BoardVMa);
        sub_10000B924(v93, _s5BoardVMa);
        sub_10000B924(v49, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v37 = v88;
        sub_10000B924(v88, type metadata accessor for CRLBoardLibraryViewModel.Item);
        v60 = v59 == -1;
        a2 = v91;
        a3 = v89;
        if (v60)
        {
          if (a1 < v91 || a1 >= v91 + v39)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v39;
          goto LABEL_33;
        }

LABEL_27:
        if (a1 < a4 || a1 >= a4 + v39)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (a1 != a4)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v101 = a4 + v39;
        a4 += v39;
LABEL_33:
        a1 += v39;
        v102 = a1;
        if (a4 >= v94 || a2 >= a3)
        {
          goto LABEL_76;
        }
      }

      sub_10000B924(v48, _s5BoardVMa);
      v46 = v51;
      v39 = v47;
      v31 = v49;
      v37 = v88;
      a3 = v89;
LABEL_26:
      sub_10000B924(v46, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v31, type metadata accessor for CRLBoardLibraryViewModel.Item);
      sub_10000B924(v37, type metadata accessor for CRLBoardLibraryViewModel.Item);
      goto LABEL_27;
    }
  }

LABEL_76:
  sub_10063F7DC(&v102, &v101, &v100);
}

uint64_t sub_10075F580(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019F33D0, &unk_101468A70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10075F5F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&unk_101A15B20, &qword_10146F1E0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10075F668(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10075F6B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10075F720@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a1;
  v58 = a2;
  v63 = a4;
  v62 = type metadata accessor for URL();
  v60 = *(v62 - 8);
  __chkstk_darwin(v62);
  v59 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = type metadata accessor for UUID();
  v54 = *(v55 - 8);
  __chkstk_darwin(v55);
  v53 = &v52 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UTType();
  v9 = *(v8 - 8);
  v64 = v8;
  v65 = v9;
  __chkstk_darwin(v8);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v13 = __chkstk_darwin(v12).n128_u64[0];
  v15 = &v52 - v14;
  v16 = [v4 length];
  sub_1005B981C(&qword_1019FE810, &qword_10147A1F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146C6B0;
  *(inited + 32) = NSDocumentTypeDocumentAttribute;
  v18 = inited + 32;
  if (a3 >= 3)
  {
    v66 = a3;
    v51 = NSDocumentTypeDocumentAttribute;
    result = _diagnoseUnexpectedEnumCaseValue<A, B>(type:rawValue:)();
    __break(1u);
  }

  else
  {
    v19 = inited;
    v20 = **(&off_1018856F8 + a3);
    type metadata accessor for DocumentType(0);
    *(v19 + 64) = v21;
    *(v19 + 40) = v20;
    v22 = NSDocumentTypeDocumentAttribute;
    sub_100BD6638(v19);
    swift_setDeallocating();
    sub_10075FEB0(v18);
    type metadata accessor for DocumentAttributeKey(0);
    sub_10075FF18();
    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v66 = 0;
    v24 = [v4 dataFromRange:0 documentAttributes:v16 error:{isa, &v66}];

    v25 = v66;
    if (v24)
    {
      v26 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v56 = v27;

      if (a3 == 2)
      {
        static UTType.flatRTFD.getter();
        v29 = v62;
        v28 = v63;
        v30 = v64;
        v32 = v57;
        v31 = v58;
      }

      else
      {
        v29 = v62;
        v28 = v63;
        v30 = v64;
        v32 = v57;
        v31 = v58;
        if (a3 == 1)
        {
          static UTType.rtfd.getter();
        }

        else
        {
          static UTType.rtf.getter();
        }
      }

      v63 = v26;
      (*(v65 + 32))(v15, v11, v30);
      v35 = HIBYTE(v31) & 0xF;
      if ((v31 & 0x2000000000000000) == 0)
      {
        v35 = v32 & 0xFFFFFFFFFFFFLL;
      }

      if (v35)
      {
        v36 = String._bridgeToObjectiveC()();
        v37 = String._bridgeToObjectiveC()();
        v38 = [v36 crl_filenameFromDisplayNameWithExtension:v37];

        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      else
      {
        UTType.localizedDescription.getter();
        if (!v39)
        {
          v40 = v53;
          UUID.init()();
          v41 = UUID.uuidString.getter();
          v43 = v42;
          (*(v54 + 8))(v40, v55);
          sub_10105235C(5, v41, v43);

          static String._fromSubstring(_:)();
          v30 = v64;
        }
      }

      v44 = [objc_allocWithZone(NSFileManager) init];
      v45 = [v44 temporaryDirectory];

      v46 = v59;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      URL.appendingPathComponent(_:conformingTo:)();

      v47 = *(v60 + 8);
      v47(v46, v29);
      v48 = v63;
      v49 = v56;
      v50 = v61;
      Data.write(to:options:)();
      sub_10002640C(v48, v49);
      if (v50)
      {
        v47(v28, v29);
      }

      return (*(v65 + 8))(v15, v30);
    }

    else
    {
      v33 = v25;
      _convertNSErrorToError(_:)();

      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_10075FEB0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE818, &qword_10149EC40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10075FF18()
{
  result = qword_1019F3C38;
  if (!qword_1019F3C38)
  {
    type metadata accessor for DocumentAttributeKey(255);
    result = swift_getWitnessTable(byte_10146B420, v3, v0, v1);
    atomic_store(result, &qword_1019F3C38);
  }

  return result;
}

BOOL sub_10075FF70(void *a1, uint64_t a2)
{
  if (![a1 isEmpty])
  {
    return 0;
  }

  sub_100760078(a1, v6);
  if (!v7)
  {
    return 0;
  }

  if (v9)
  {
    if (v10)
    {
      sub_10000CAAC(v6, &qword_1019FE820, &qword_10147A200);
      return 0;
    }

    else
    {
      v5 = v11 != 0;
      sub_10000CAAC(v6, &qword_1019FE820, &qword_10147A200);
      return v5;
    }
  }

  else
  {
    v4 = v8;
    sub_10000CAAC(v6, &qword_1019FE820, &qword_10147A200);
    return v4;
  }
}

char *sub_100760078@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019FE828, &qword_10147A208);
  __chkstk_darwin(v4 - 8);
  v6 = v49 - v5;
  v7 = sub_1005B981C(&qword_1019FE830, &qword_10147A210);
  v56 = *(v7 - 8);
  v57 = v7;
  __chkstk_darwin(v7);
  v54 = v49 - v8;
  v9 = sub_1005B981C(&qword_1019FE838, &qword_10147A218);
  v55 = *(v9 - 8);
  *&v10 = __chkstk_darwin(v9).n128_u64[0];
  v12 = v49 - v11;
  *&v53 = a1;
  v13 = [a1 start];
  v14 = *&v13[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = sub_100A1E7A0(v14);
  v18 = 0uLL;
  if (!result)
  {
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
LABEL_7:
    *a2 = v18;
    *(a2 + 16) = v22;
    *(a2 + 24) = v23;
    *(a2 + 32) = v24;
    *(a2 + 40) = v25;
    *(a2 + 48) = v26;
    *(a2 + 64) = v27;
    *(a2 + 80) = v28;
    *(a2 + 96) = v29;
    return result;
  }

  v19 = result;
  v20 = v16;
  v21 = v17;
  sub_1005B981C(&qword_1019FE840, &qword_10147A220);
  sub_10001A2F8(&qword_1019FE848, &qword_1019FE838, &qword_10147A218, &protocol conformance descriptor for Regex<A>);
  Regex.init<A>(_:)();
  Regex.firstMatch(in:)();
  v31 = v56;
  v30 = v57;
  if ((*(v56 + 48))(v6, 1, v57) == 1)
  {
    (*(v55 + 8))(v12, v9);

    result = sub_10000CAAC(v6, &qword_1019FE828, &qword_10147A208);
LABEL_6:
    v22 = 0;
    v23 = 0;
    v24 = 0;
    v25 = 0;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
    v18 = 0uLL;
    goto LABEL_7;
  }

  (*(v31 + 32))(v54, v6, v30);
  *&v67 = Regex.Match.range.getter();
  *(&v67 + 1) = v32;
  v63 = v20;
  v64 = v21;
  sub_1005B981C(&qword_1019FE850, &qword_10147A228);
  sub_10001A2F8(&qword_1019FE858, &qword_1019FE850, &qword_10147A228, &protocol conformance descriptor for Range<A>);
  sub_100017CD8();
  v33 = _NSRange.init<A, B>(_:in:)();
  v35 = v34;
  v36 = [v19 start];
  v37 = *&v36[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

  result = NSNotFound.getter();
  v38 = &v19[OBJC_IVAR____TtC8Freeform12CRLTextRange_range];
  if (v37 == result)
  {
    v38 = &xmmword_101464828;
  }

  v39 = *v38;
  v40 = __OFADD__(v33, v39);
  v41 = v33 + v39;
  if (!v40)
  {
    v42 = v41 + v35;
    v43 = v53;
    v44 = [v53 start];
    v45 = *&v44[OBJC_IVAR____TtC8Freeform15CRLTextPosition_location];

    v46 = NSNotFound.getter();
    v47 = (v43 + OBJC_IVAR____TtC8Freeform12CRLTextRange_range);
    if (v45 == v46)
    {
      v47 = &xmmword_101464828;
    }

    if (v42 == *v47)
    {
      Regex.Match.output.getter();
      v53 = v67;
      v22 = v68;
      v23 = v69;

      Regex.Match.output.getter();
      v24 = v65;
      v52 = v66;

      v48 = v57;
      Regex.Match.output.getter();
      v50 = v61;
      v51 = v60;
      v49[1] = v62;

      Regex.Match.output.getter();

      (*(v56 + 8))(v54, v48);
      (*(v55 + 8))(v12, v9);

      v27 = v50;
      v26 = v51;
      v18 = v53;
      v28 = v58;
      v29 = v59;
      v70 = v52;
      v25 = v52;
      goto LABEL_7;
    }

    (*(v56 + 8))(v54, v57);
    result = (*(v55 + 8))(v12, v9);
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1007606D4()
{
  v0 = sub_1005B981C(&qword_1019FE860, &qword_10147A230);
  v1 = *(v0 - 8);
  __chkstk_darwin(v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v9 - v5;
  sub_1005B981C(&qword_1019FE840, &qword_10147A220);
  ChoiceOf.init(_:)();
  sub_10001A2F8(&qword_1019FE868, &qword_1019FE860, &qword_10147A230, &protocol conformance descriptor for ChoiceOf<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v7 = *(v1 + 8);
  v7(v3, v0);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  return (v7)(v6, v0);
}

uint64_t sub_100760878@<X0>(uint64_t a1@<X8>)
{
  v50 = a1;
  v1 = sub_1005B981C(&qword_1019FE838, &qword_10147A218);
  __chkstk_darwin(v1 - 8);
  v49 = &v38 - v2;
  v3 = sub_1005B981C(&qword_1019FE870, &qword_10147A238);
  __chkstk_darwin(v3 - 8);
  v44 = &v38 - v4;
  v5 = sub_1005B981C(&qword_1019FE878, &qword_10147A240);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  __chkstk_darwin(v5);
  v46 = &v38 - v7;
  v8 = sub_1005B981C(&qword_1019FE880, &qword_10147A248);
  __chkstk_darwin(v8 - 8);
  v43 = &v38 - v9;
  v55 = type metadata accessor for _RegexFactory();
  v42 = *(v55 - 8);
  __chkstk_darwin(v55);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1005B981C(&qword_1019FE888, &qword_10147A250);
  v45 = *(v56 - 8);
  __chkstk_darwin(v56);
  v52 = &v38 - v12;
  v13 = sub_1005B981C(&qword_1019FE890, &qword_10147A258);
  v58 = *(v13 - 8);
  __chkstk_darwin(v13);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v51 = &v38 - v17;
  __chkstk_darwin(v18);
  v57 = &v38 - v19;
  v20 = sub_1005B981C(&qword_1019FE898, &qword_10147A260);
  v21 = *(v20 - 8);
  __chkstk_darwin(v20);
  v23 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v54 = &v38 - v25;
  sub_1005B981C(&qword_1019FE8A0, &qword_10147A268);
  sub_10001A2F8(&qword_1019FE8A8, &qword_1019FE898, &qword_10147A260, &protocol conformance descriptor for Regex<A>);
  v53 = v20;
  Regex.init<A>(_:)();
  static AlternationBuilder.buildExpression<A>(_:)();
  v26 = *(v21 + 8);
  v40 = v21 + 8;
  v41 = v26;
  v26(v23, v20);
  sub_1005B981C(&qword_1019FE8B0, &qword_10147A270);
  sub_10001A2F8(&qword_1019FE8B8, &qword_1019FE890, &qword_10147A258, &protocol conformance descriptor for Regex<A>);
  v27 = v51;
  Regex.init<A>(_:)();
  static AlternationBuilder.buildExpression<A>(_:)();
  v28 = v58 + 8;
  v29 = *(v58 + 8);
  v29(v27, v13);
  v39 = v29;
  v58 = v28;
  Regex.init<A>(_:)();
  static AlternationBuilder.buildExpression<A>(_:)();
  v29(v15, v13);
  makeFactory()();
  sub_1005B981C(&qword_1019FE8C0, &qword_10147A278);
  _RegexFactory.orderedChoice<A, B>(_:)();
  v30 = *(v42 + 8);
  v31 = v55;
  v30(v11, v55);
  ChoiceOf.init(_:)();
  makeFactory()();
  sub_1005B981C(&qword_1019FE8C8, &qword_10147A280);
  sub_10001A2F8(&qword_1019FE8D0, &qword_1019FE888, &qword_10147A250, &protocol conformance descriptor for ChoiceOf<A>);
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v30(v11, v31);
  v32 = v46;
  ChoiceOf.init(_:)();
  makeFactory()();
  sub_1005B981C(&qword_1019FE840, &qword_10147A220);
  sub_10001A2F8(&qword_1019FE8D8, &qword_1019FE878, &qword_10147A240, &protocol conformance descriptor for ChoiceOf<A>);
  v33 = v51;
  v34 = v47;
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  v30(v11, v55);
  ChoiceOf.init(_:)();
  (*(v48 + 8))(v32, v34);
  (*(v45 + 8))(v52, v56);
  v35 = v33;
  v36 = v39;
  v39(v35, v13);
  v36(v57, v13);
  return v41(v54, v53);
}

uint64_t sub_100761068@<X0>(uint64_t a1@<X8>)
{
  v82 = a1;
  v1 = sub_1005B981C(&qword_1019FE908, &qword_10147A298);
  v2 = *(v1 - 8);
  v94 = v1;
  v95 = v2;
  __chkstk_darwin(v1);
  v79 = &v66 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v90 = &v66 - v5;
  v6 = sub_1005B981C(&qword_1019FE918, &qword_10147A2A0);
  __chkstk_darwin(v6 - 8);
  v69 = &v66 - v7;
  v74 = type metadata accessor for CharacterClass();
  v75 = *(v74 - 8);
  __chkstk_darwin(v74);
  v9 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1005B981C(&qword_1019FE920, &qword_10147A2A8);
  v11 = *(v10 - 8);
  v76 = v10;
  v77 = v11;
  __chkstk_darwin(v10);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v73 = &v66 - v14;
  v15 = sub_1005B981C(&qword_1019FE898, &qword_10147A260);
  v16 = *(v15 - 8);
  v80 = v15;
  v81 = v16;
  __chkstk_darwin(v15);
  v92 = &v66 - v17;
  v85 = type metadata accessor for _RegexFactory();
  v96 = *(v85 - 8);
  __chkstk_darwin(v85);
  v19 = &v66 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v68 = &v66 - v21;
  v88 = sub_1005B981C(&qword_1019FE928, &unk_10147A2B0);
  v93 = *(v88 - 8);
  __chkstk_darwin(v88);
  v71 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v86 = &v66 - v24;
  v25 = sub_1005B981C(&qword_1019FE8E8, &qword_10147A290);
  v26 = *(v25 - 8);
  __chkstk_darwin(v25);
  v28 = &v66 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v31 = &v66 - v30;
  __chkstk_darwin(v32);
  v89 = &v66 - v33;
  v83 = v31;
  Regex.init(_regexString:version:)();
  v78 = &protocol conformance descriptor for Regex<A>;
  v91 = sub_10001A2F8(&qword_1019FE8F0, &qword_1019FE8E8, &qword_10147A290, &protocol conformance descriptor for Regex<A>);
  v67 = v25;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v34 = *(v26 + 8);
  v84 = v26 + 8;
  v87 = v34;
  v34(v31, v25);
  makeFactory()();
  v35 = v9;
  static RegexComponent<>.digit.getter();
  v36 = type metadata accessor for RegexRepetitionBehavior();
  v37 = v69;
  (*(*(v36 - 8) + 56))(v69, 1, 1, v36);
  makeFactory()();
  sub_100762AAC();
  v70 = v28;
  v38 = v37;
  v39 = v74;
  _RegexFactory.oneOrMore<A, B>(_:_:)();
  v40 = *(v96 + 8);
  v96 += 8;
  v41 = v85;
  v40(v19, v85);
  v66 = v40;
  sub_10000CAAC(v38, &qword_1019FE918, &qword_10147A2A0);
  (*(v75 + 8))(v35, v39);
  v42 = v72;
  OneOrMore.init(_:)();
  sub_10001A2F8(&qword_1019FE938, &qword_1019FE920, &qword_10147A2A8, &protocol conformance descriptor for OneOrMore<A>);
  v43 = v73;
  v44 = v76;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v45 = *(v77 + 1);
  v45(v42, v44);
  v46 = v83;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v45(v43, v44);
  v47 = sub_1005B981C(&qword_1019FE8A0, &qword_10147A268);
  v48 = v67;
  v75 = v47;
  v49 = v68;
  _RegexFactory.capture<A, B, C, D>(_:_:_:)();
  v87(v46, v48);
  v40(v49, v41);
  v50 = v71;
  Capture.init(_:)();
  sub_10001A2F8(&qword_1019FE940, &qword_1019FE928, &unk_10147A2B0, &protocol conformance descriptor for Capture<A>);
  v51 = v88;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v52 = *(v93 + 8);
  v93 += 8;
  v77 = v52;
  v52(v50, v51);
  v53 = v79;
  ChoiceOf.init(_:)();
  v74 = sub_10001A2F8(&qword_1019FE910, &qword_1019FE908, &qword_10147A298, &protocol conformance descriptor for ChoiceOf<A>);
  v54 = v94;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v55 = *(v95 + 8);
  v95 += 8;
  v76 = v55;
  v55(v53, v54);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  v56 = v70;
  v57 = v49;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  v58 = v56;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v59 = v87;
  v87(v56, v48);
  v60 = v49;
  v61 = v85;
  v62 = v66;
  v66(v60, v85);
  makeFactory()();
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  sub_10001A2F8(&qword_1019FE8A8, &qword_1019FE898, &qword_10147A260, v78);
  v63 = v92;
  v64 = v80;
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v59(v58, v48);
  v62(v57, v61);
  (*(v81 + 8))(v63, v64);
  v59(v83, v48);
  v76(v90, v94);
  v77(v86, v88);
  return (v59)(v89, v48);
}

uint64_t sub_100761B78@<X0>(unint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  if ((v4 ^ *a1) >= 0x4000)
  {
    v6 = a1[2];
    v5 = a1[3];
    result = sub_100EFF918(*a1, v4, v6, v5, 10);
    if ((v8 & 0x100) != 0)
    {

      v9 = sub_100EFF380(v3, v4, v6, v5, 10);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        result = v9;
        goto LABEL_8;
      }
    }

    else if ((v8 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  result = 0;
LABEL_8:
  *a2 = result;
  return result;
}

uint64_t sub_100761C3C@<X0>(uint64_t a1@<X8>)
{
  v49 = a1;
  v38 = sub_1005B981C(&qword_1019FE908, &qword_10147A298);
  v42 = *(v38 - 8);
  __chkstk_darwin(v38);
  v2 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v5 = &v37 - v4;
  v6 = sub_1005B981C(&qword_1019FE890, &qword_10147A258);
  __chkstk_darwin(v6 - 8);
  v46 = &v37 - v7;
  v8 = type metadata accessor for _RegexFactory();
  v9 = *(v8 - 8);
  v51 = v8;
  v52 = v9;
  __chkstk_darwin(v8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1005B981C(&qword_1019FE8E0, &qword_10147A288);
  v13 = *(v12 - 8);
  v47 = v12;
  v48 = v13;
  __chkstk_darwin(v12);
  v43 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v45 = &v37 - v16;
  v17 = sub_1005B981C(&qword_1019FE8E8, &qword_10147A290);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v44 = &v37 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v22 = &v37 - v21;
  __chkstk_darwin(v23);
  v41 = &v37 - v24;
  Regex.init(_regexString:version:)();
  v39 = sub_10001A2F8(&qword_1019FE8F0, &qword_1019FE8E8, &qword_10147A290, &protocol conformance descriptor for Regex<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v50 = *(v18 + 8);
  v50(v22, v17);
  v40 = v18 + 8;
  makeFactory()();
  ChoiceOf.init(_:)();
  sub_10001A2F8(&qword_1019FE910, &qword_1019FE908, &qword_10147A298, &protocol conformance descriptor for ChoiceOf<A>);
  v25 = v5;
  v26 = v38;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v27 = *(v42 + 1);
  v27(v2, v26);
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  v27(v25, v26);
  v38 = sub_1005B981C(&qword_1019FE8B0, &qword_10147A270);
  _RegexFactory.capture<A, B>(_:)();
  v50(v22, v17);
  v28 = *(v52 + 8);
  v52 += 8;
  v42 = v28;
  v28(v11, v51);
  v29 = v43;
  Capture.init(_:)();
  sub_10001A2F8(&qword_1019FE900, &qword_1019FE8E0, &qword_10147A288, &protocol conformance descriptor for Capture<A>);
  v30 = v45;
  v31 = v47;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v48 = *(v48 + 8);
  (v48)(v29, v31);
  v32 = v41;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  v33 = v44;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v34 = v33;
  v35 = v50;
  v50(v34, v17);
  v42(v11, v51);
  v35(v22, v17);
  (v48)(v30, v31);
  return (v35)(v32, v17);
}

uint64_t sub_10076228C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[1] = a4;
  v7 = sub_1005B981C(&qword_1019FE8E8, &qword_10147A290);
  __chkstk_darwin(v7 - 8);
  v16[0] = type metadata accessor for _RegexFactory();
  v8 = *(v16[0] - 8);
  __chkstk_darwin(v16[0]);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1005B981C(&qword_1019FE908, &qword_10147A298);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = v16 - v13;
  v19 = a1;
  v20 = 0xE100000000000000;
  sub_100762A58();
  static AlternationBuilder.buildExpression<A>(_:)();
  v17 = a2;
  v18 = a3;
  static AlternationBuilder.buildExpression<A>(_:)();
  v17 = v21;
  v18 = v22;
  static AlternationBuilder.buildPartialBlock<A>(first:)();

  v17 = v19;
  v18 = v20;
  makeFactory()();
  sub_10001A2F8(&qword_1019FE910, &qword_1019FE908, &qword_10147A298, &protocol conformance descriptor for ChoiceOf<A>);
  _RegexFactory.accumulateAlternation<A, B, C>(_:_:)();
  (*(v8 + 8))(v10, v16[0]);

  ChoiceOf.init(_:)();
  return (*(v12 + 8))(v14, v11);
}

uint64_t sub_100762540@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v1 = sub_1005B981C(&qword_1019FE890, &qword_10147A258);
  __chkstk_darwin(v1 - 8);
  v34 = v29 - v2;
  v3 = type metadata accessor for _RegexFactory();
  v4 = *(v3 - 8);
  v40 = v3;
  v41 = v4;
  __chkstk_darwin(v3);
  v6 = v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1005B981C(&qword_1019FE8E0, &qword_10147A288);
  v8 = *(v7 - 8);
  v37 = v7;
  v38 = v8;
  __chkstk_darwin(v7);
  v10 = v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v36 = v29 - v12;
  v13 = sub_1005B981C(&qword_1019FE8E8, &qword_10147A290);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v35 = v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v18 = v29 - v17;
  __chkstk_darwin(v19);
  v33 = v29 - v20;
  Regex.init(_regexString:version:)();
  sub_10001A2F8(&qword_1019FE8F0, &qword_1019FE8E8, &qword_10147A290, &protocol conformance descriptor for Regex<A>);
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v21 = *(v14 + 8);
  v21(v18, v13);
  v31 = v14 + 8;
  v32 = v21;
  makeFactory()();
  v42 = 45;
  v43 = 0xE100000000000000;
  sub_100762A58();
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v42 = v44;
  v43 = v45;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();

  v29[1] = sub_1005B981C(&qword_1019FE8B0, &qword_10147A270);
  _RegexFactory.capture<A, B>(_:)();
  v21(v18, v13);
  v22 = *(v41 + 8);
  v41 += 8;
  v30 = v22;
  v22(v6, v40);
  Capture.init(_:)();
  sub_10001A2F8(&qword_1019FE900, &qword_1019FE8E0, &qword_10147A288, &protocol conformance descriptor for Capture<A>);
  v24 = v36;
  v23 = v37;
  static RegexComponentBuilder.buildExpression<A>(_:)();
  v38 = *(v38 + 8);
  (v38)(v10, v23);
  v25 = v33;
  static RegexComponentBuilder.buildPartialBlock<A>(first:)();
  makeFactory()();
  v26 = v35;
  _RegexFactory.ignoreCapturesInTypedOutput<A>(_:)();
  _RegexFactory.accumulate<A, B, C>(_:_:)();
  v27 = v32;
  v32(v26, v13);
  v30(v6, v40);
  v27(v18, v13);
  (v38)(v24, v23);
  return (v27)(v25, v13);
}

unint64_t sub_100762A58()
{
  result = qword_1019FE8F8;
  if (!qword_1019FE8F8)
  {
    result = swift_getWitnessTable(&protocol conformance descriptor for String, &type metadata for String, v0, v1);
    atomic_store(result, &qword_1019FE8F8);
  }

  return result;
}

unint64_t sub_100762AAC()
{
  result = qword_1019FE930;
  if (!qword_1019FE930)
  {
    v3 = type metadata accessor for CharacterClass();
    result = swift_getWitnessTable(&protocol conformance descriptor for CharacterClass, v3, v0, v1);
    atomic_store(result, &qword_1019FE930);
  }

  return result;
}

__n128 sub_100762B14(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_100762B38(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_100762B80(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t TSCLVersion.description.getter()
{
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  return v3;
}

id TSCLVersion.__allocating_init(major:minor:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v5[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v7 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v5[v6] = a1;
  *&v5[v7] = a2;
  v9.receiver = v5;
  v9.super_class = v2;
  return objc_msgSendSuper2(&v9, "init");
}

id TSCLVersion.init(major:minor:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v2[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v4 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v2[v3] = a1;
  *&v2[v4] = a2;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for TSCLVersion();
  return objc_msgSendSuper2(&v6, "init");
}

id TSCLVersion.__allocating_init(string:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v5[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v7 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v5[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v8 = sub_100763420(a1, a2);
  v10 = v9;
  v12 = v11;

  if (v12)
  {
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v5[v6] = v8;
    *&v5[v7] = v10;
    v14.receiver = v5;
    v14.super_class = v2;
    return objc_msgSendSuper2(&v14, "init");
  }
}

id TSCLVersion.init(string:)(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v2[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v4 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v2[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v5 = sub_100763420(a1, a2);
  v7 = v6;
  v9 = v8;

  if (v9)
  {
    type metadata accessor for TSCLVersion();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    *&v2[v3] = v5;
    *&v2[v4] = v7;
    v11.receiver = v2;
    v11.super_class = type metadata accessor for TSCLVersion();
    return objc_msgSendSuper2(&v11, "init");
  }
}

void *TSCLVersion.init(from:)(void *a1)
{
  v3 = v1;
  v5 = OBJC_IVAR____TtC8Freeform11TSCLVersion_major;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_major] = 1;
  v6 = OBJC_IVAR____TtC8Freeform11TSCLVersion_minor;
  *&v1[OBJC_IVAR____TtC8Freeform11TSCLVersion_minor] = 0;
  v7 = sub_100020E58(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    sub_100020E58(v16, v16[3]);
    v8 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = sub_100763420(v8, v9);
    v11 = v10;
    v13 = v12;

    if ((v13 & 1) == 0)
    {
      *&v3[v5] = v7;
      *&v3[v6] = v11;
      sub_100005070(v16);
      v15.receiver = v3;
      v15.super_class = type metadata accessor for TSCLVersion();
      v7 = objc_msgSendSuper2(&v15, "init");
      sub_100005070(a1);
      return v7;
    }

    sub_1007638BC();
    swift_allocError();
    swift_willThrow();
    sub_100005070(v16);
  }

  sub_100005070(a1);
  type metadata accessor for TSCLVersion();
  swift_deallocPartialClassInstance();
  return v7;
}

uint64_t TSCLVersion.encode(to:)(void *a1)
{
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v2 = [v1 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10002A948(v4, v4[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100005070(v4);
}

id TSCLVersion.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TSCLVersion();
  return objc_msgSendSuper2(&v2, "dealloc");
}

void *sub_10076329C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for TSCLVersion());
  result = TSCLVersion.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1007632F0(void *a1)
{
  v2 = *v1;
  sub_100020E58(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  v3 = [v2 description];
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  sub_10002A948(v5, v5[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();

  return sub_100005070(v5);
}

BOOL _s8Freeform11TSCLVersionC1loiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC8Freeform11TSCLVersion_major);
  v3 = *(a2 + OBJC_IVAR____TtC8Freeform11TSCLVersion_major);
  if (v2 < v3)
  {
    return 1;
  }

  if (v2 == v3)
  {
    return *(a1 + OBJC_IVAR____TtC8Freeform11TSCLVersion_minor) < *(a2 + OBJC_IVAR____TtC8Freeform11TSCLVersion_minor);
  }

  return 0;
}

unsigned __int8 *sub_100763420(uint64_t a1, uint64_t a2)
{
  v2 = sub_1005B981C(&qword_1019FE998, &qword_10147A470);
  __chkstk_darwin(v2 - 8);
  v4 = &v28 - v3;
  v5 = sub_1005B981C(&qword_1019FE9A0, &qword_10147A478);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v28 - v7;
  v9 = sub_1005B981C(&qword_1019FE9A8, &qword_10147A480);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v28 - v11;
  sub_1005B981C(&unk_1019FE9B0, &qword_10147A488);
  Regex.init(_regexString:version:)();
  Regex.wholeMatch(in:)();
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    (*(v10 + 8))(v12, v9);
    sub_1007639D0(v4);
    return 0;
  }

  (*(v6 + 32))(v8, v4, v5);
  swift_getKeyPath();
  v30 = v8;
  Regex.Match.subscript.getter();

  v14 = v31;
  v15 = v32;
  if (!((v32 ^ v31) >> 14))
  {

    goto LABEL_10;
  }

  v16 = v33;
  v29 = v34;
  v17 = sub_100EFF918(v31, v32, v33, v34, 10);
  if ((v18 & 0x100) != 0)
  {
    v28 = sub_100EFF380(v14, v15, v16, v29, 10);
    v21 = v20;

    if ((v21 & 1) == 0)
    {
      goto LABEL_11;
    }

LABEL_10:
    (*(v6 + 8))(v30, v5);
    (*(v10 + 8))(v12, v9);
    return 0;
  }

  v19 = v18;
  v28 = v17;

  if (v19)
  {
    goto LABEL_10;
  }

LABEL_11:
  swift_getKeyPath();
  Regex.Match.subscript.getter();

  v22 = v31;
  v23 = v32;
  v24 = v34;
  if ((v32 ^ v31) >> 14)
  {
    v25 = v33;
    v29 = sub_100EFF918(v31, v32, v33, v34, 10);
    if ((v26 & 0x100) != 0)
    {
      v29 = sub_100EFF380(v22, v23, v25, v24, 10);
    }

    v27 = v26;
    (*(v6 + 8))(v30, v5);
    (*(v10 + 8))(v12, v9);

    if ((v27 & 1) == 0)
    {
      return v28;
    }
  }

  else
  {
    (*(v6 + 8))(v30, v5);
    (*(v10 + 8))(v12, v9);
  }

  return 0;
}

unint64_t sub_1007638BC()
{
  result = qword_1019FE958;
  if (!qword_1019FE958)
  {
    result = swift_getWitnessTable("ݑ;", &type metadata for TSCLVersion.Error, v0, v1);
    atomic_store(result, &qword_1019FE958);
  }

  return result;
}

unint64_t sub_100763914()
{
  result = qword_1019FE960;
  if (!qword_1019FE960)
  {
    v3 = type metadata accessor for TSCLVersion();
    result = swift_getWitnessTable(&protocol conformance descriptor for NSObject, v3, v0, v1);
    atomic_store(result, &qword_1019FE960);
  }

  return result;
}

unint64_t sub_10076397C()
{
  result = qword_1019FE990;
  if (!qword_1019FE990)
  {
    result = swift_getWitnessTable("Ց;", &type metadata for TSCLVersion.Error, v0, v1);
    atomic_store(result, &qword_1019FE990);
  }

  return result;
}

uint64_t sub_1007639D0(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FE998, &qword_10147A470);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id CRLiOSAlignmentToolsController.__allocating_init(delegate:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  swift_unknownObjectWeakInit();
  *&v2[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v5.receiver = v2;
  v5.super_class = v1;
  v3 = objc_msgSendSuper2(&v5, "init");
  swift_unknownObjectRelease();
  return v3;
}

id CRLiOSAlignmentToolsController.init(delegate:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController] = 0;
  swift_unknownObjectWeakAssign();
  v4.receiver = v1;
  v4.super_class = type metadata accessor for CRLiOSAlignmentToolsController();
  v2 = objc_msgSendSuper2(&v4, "init");
  swift_unknownObjectRelease();
  return v2;
}

id sub_100763C28()
{
  v1 = OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController;
  v2 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC8Freeform30CRLiOSAlignmentToolsController____lazy_storage___viewController];
  }

  else
  {
    v4 = sub_100763CD4(v0);
    v5 = *&v0[v1];
    *&v0[v1] = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

id sub_100763CD4(void *a1)
{
  v2 = a1;
  sub_100763D90(a1, v8);
  v3 = objc_allocWithZone(sub_1005B981C(&qword_1019FE9F8, &qword_10147A538));
  v4 = UIHostingController.init(rootView:)();
  [v4 setModalPresentationStyle:2];
  v5 = [v4 presentationController];
  if (v5)
  {
    v6 = v5;
    [v5 setDelegate:v2];
  }

  return v4;
}

void sub_100763D90(void *a1@<X0>, void *a2@<X8>)
{
  swift_unknownObjectWeakInit();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[1] = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[2] = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[3] = AppStorage.init<A>(wrappedValue:_:store:)();
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  a2[4] = AppStorage.init<A>(wrappedValue:_:store:)();
  v3 = objc_opt_self();
  v4 = [v3 mainBundle];
  v5 = String._bridgeToObjectiveC()();
  v6 = String._bridgeToObjectiveC()();
  v7 = [v4 localizedStringForKey:v5 value:v6 table:0];

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  a2[5] = v8;
  a2[6] = v10;
  v11 = [v3 mainBundle];
  v12 = String._bridgeToObjectiveC()();
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 localizedStringForKey:v12 value:v13 table:0];

  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  a2[7] = v15;
  a2[8] = v17;
  v18 = [v3 mainBundle];
  v19 = String._bridgeToObjectiveC()();
  v20 = String._bridgeToObjectiveC()();
  v21 = [v18 localizedStringForKey:v19 value:v20 table:0];

  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  a2[9] = v22;
  a2[10] = v24;
  v25 = [v3 mainBundle];
  v26 = String._bridgeToObjectiveC()();
  v27 = String._bridgeToObjectiveC()();
  v28 = [v25 localizedStringForKey:v26 value:v27 table:0];

  v29 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v31 = v30;

  a2[11] = v29;
  a2[12] = v31;
  v32 = [v3 mainBundle];
  v33 = String._bridgeToObjectiveC()();
  v34 = String._bridgeToObjectiveC()();
  v35 = [v32 localizedStringForKey:v33 value:v34 table:0];

  v36 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v38 = v37;

  a2[13] = v36;
  a2[14] = v38;
  v39 = [v3 mainBundle];
  v40 = String._bridgeToObjectiveC()();
  v41 = String._bridgeToObjectiveC()();
  v42 = [v39 localizedStringForKey:v40 value:v41 table:0];

  v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v45 = v44;

  a2[15] = v43;
  a2[16] = v45;
  v46 = [v3 mainBundle];
  v47 = String._bridgeToObjectiveC()();
  v48 = String._bridgeToObjectiveC()();
  v49 = [v46 localizedStringForKey:v47 value:v48 table:0];

  v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v52 = v51;

  a2[17] = v50;
  a2[18] = v52;
  v53 = [v3 mainBundle];
  v54 = String._bridgeToObjectiveC()();
  v55 = String._bridgeToObjectiveC()();
  v56 = [v53 localizedStringForKey:v54 value:v55 table:0];

  v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v59 = v58;

  a2[19] = v57;
  a2[20] = v59;
  swift_unknownObjectWeakAssign();
}

Swift::Void __swiftcall CRLiOSAlignmentToolsController.dismissAlignmentTools()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong alignmentToolsControllerShouldDismiss:v0];

    swift_unknownObjectRelease();
  }
}

id CRLiOSAlignmentToolsController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CRLiOSAlignmentToolsController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall CRLiOSAlignmentToolsController.presentationControllerDidDismiss(_:)(UIPresentationController a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    [Strong userDismissedAlignmentToolsController:v1];

    swift_unknownObjectRelease();
  }
}

uint64_t sub_100764608(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 168))
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

uint64_t sub_100764650(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0u;
    *(result + 152) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 168) = 1;
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

    *(result + 168) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1007646E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for ToolbarTitleDisplayMode();
  v32 = *(v34 - 8);
  __chkstk_darwin(v34);
  v31 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1005B981C(&qword_1019FEA20, &qword_10147A650);
  v27 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - v5;
  v7 = sub_1005B981C(&qword_1019FEA18, &qword_10147A648);
  v28 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v25 - v8;
  v10 = sub_1005B981C(&qword_1019FEA10, &qword_10147A640);
  v11 = *(v10 - 8);
  v29 = v10;
  v30 = v11;
  __chkstk_darwin(v10);
  v13 = &v25 - v12;
  v26 = a1;
  v36 = a1;
  sub_1005B981C(&qword_1019FEA58, &qword_10147A668);
  sub_10001A2F8(&qword_1019FEA60, &qword_1019FEA58, &qword_10147A668, &protocol conformance descriptor for TupleView<A>);
  Form.init(content:)();
  v35 = a1;
  v14 = sub_1005B981C(&qword_1019FEA28, &qword_10147A658);
  v15 = sub_10001A2F8(&unk_1019FEA30, &qword_1019FEA20, &qword_10147A650, &protocol conformance descriptor for Form<A>);
  v16 = sub_1005C4E5C(&qword_101A038B0, &qword_10147A660);
  v17 = sub_10001A2F8(&unk_1019FEA40, &qword_101A038B0, &qword_10147A660, &protocol conformance descriptor for ToolbarItem<A, B>);
  v37 = v16;
  v38 = v17;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  View.toolbar<A>(content:)();
  (*(v27 + 8))(v6, v4);
  v19 = *(v26 + 48);
  v41 = *(v26 + 40);
  v42 = v19;
  v37 = v4;
  v38 = v14;
  v39 = v15;
  v40 = OpaqueTypeConformance2;
  v20 = swift_getOpaqueTypeConformance2();
  v21 = sub_100017CD8();
  View.navigationTitle<A>(_:)();
  (*(v28 + 8))(v9, v7);
  v22 = v31;
  static ToolbarTitleDisplayMode.inline.getter();
  v37 = v7;
  v38 = &type metadata for String;
  v39 = v20;
  v40 = v21;
  swift_getOpaqueTypeConformance2();
  v23 = v29;
  View.toolbarTitleDisplayMode(_:)();
  (*(v32 + 8))(v22, v34);
  return (*(v30 + 8))(v13, v23);
}

uint64_t sub_100764BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = sub_1005B981C(&qword_1019FEA98, &qword_10147A6B8);
  v56 = *(v51 - 8);
  __chkstk_darwin(v51);
  v50 = &v45 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v55 = &v45 - v5;
  v49 = sub_1005B981C(&qword_1019FEAA0, &qword_10147A6C0);
  v47 = *(v49 - 8);
  v6 = v47;
  __chkstk_darwin(v49);
  v54 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v45 - v9;
  v11 = sub_1005B981C(&qword_1019FEAA8, &qword_10147A6C8);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v45 - v13;
  v15 = sub_1005B981C(&qword_1019FEAB0, &qword_10147A6D0);
  v16 = v15 - 8;
  __chkstk_darwin(v15);
  v53 = &v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v20 = &v45 - v19;
  __chkstk_darwin(v21);
  v23 = &v45 - v22;
  v59 = a1;
  sub_1005B981C(&qword_1019FEAB8, &qword_10147A6D8);
  sub_1007662B0();
  Section<>.init(content:)();
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  (*(v12 + 32))(v20, v14, v11);
  v24 = &v20[*(v16 + 44)];
  v25 = v69;
  *(v24 + 4) = v68;
  *(v24 + 5) = v25;
  *(v24 + 6) = v70;
  v26 = v65;
  *v24 = v64;
  *(v24 + 1) = v26;
  v27 = v67;
  *(v24 + 2) = v66;
  *(v24 + 3) = v27;
  v48 = v23;
  sub_100766368(v20, v23);
  v58 = a1;
  sub_1005B981C(&qword_1019FEAD8, &qword_10147A6E8);
  sub_10001A2F8(&qword_1019FEAE0, &qword_1019FEAD8, &qword_10147A6E8, &protocol conformance descriptor for Toggle<A>);
  v46 = v10;
  Section<>.init(content:)();
  v28 = *(a1 + 96);
  v60 = *(a1 + 88);
  v61 = v28;
  sub_100017CD8();

  v60 = Text.init<A>(_:)();
  v61 = v29;
  v62 = v30 & 1;
  v63 = v31;
  v57 = a1;
  sub_1005B981C(&qword_1019FEAE8, &qword_10147A6F0);
  sub_10001A2F8(&qword_1019FEAF0, &qword_1019FEAE8, &qword_10147A6F0, &protocol conformance descriptor for TupleView<A>);
  v32 = v55;
  Section<>.init(header:content:)();
  v33 = v53;
  sub_1007663E8(v23, v53);
  v34 = *(v6 + 16);
  v35 = v54;
  v36 = v49;
  v34(v54, v10, v49);
  v37 = *(v56 + 16);
  v38 = v50;
  v39 = v51;
  v37(v50, v32, v51);
  v40 = v52;
  sub_1007663E8(v33, v52);
  v41 = sub_1005B981C(&qword_1019FEAF8, &qword_10147A6F8);
  v34((v40 + *(v41 + 48)), v35, v36);
  v37((v40 + *(v41 + 64)), v38, v39);
  v42 = *(v56 + 8);
  v42(v55, v39);
  v43 = *(v47 + 8);
  v43(v46, v36);
  sub_100766458(v48);
  v42(v38, v39);
  v43(v54, v36);
  return sub_100766458(v53);
}

uint64_t sub_100765268@<X0>(uint64_t a2@<X8>)
{
  sub_100017CD8();

  v3 = Text.init<A>(_:)();
  v5 = v4;
  v7 = v6;
  static Font.footnote.getter();
  v8 = Text.font(_:)();
  v10 = v9;
  v12 = v11;

  sub_10007441C(v3, v5, v7 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v13 = Text.foregroundStyle<A>(_:)();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  sub_10007441C(v8, v10, v12 & 1);

  static Color.clear.getter();
  result = AnyView.init<A>(_:)();
  *a2 = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v17 & 1;
  *(a2 + 24) = v19;
  *(a2 + 32) = result;
  return result;
}

uint64_t sub_10076543C@<X0>(uint64_t a2@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1007654A8@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1005B981C(&qword_1019FEAD8, &qword_10147A6E8);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v34 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v33 = &v31 - v7;
  __chkstk_darwin(v8);
  v36 = &v31 - v9;
  __chkstk_darwin(v10);
  v12 = &v31 - v11;
  __chkstk_darwin(v13);
  v15 = &v31 - v14;
  __chkstk_darwin(v16);
  v18 = &v31 - v17;
  AppStorage.projectedValue.getter();
  v39 = a1;
  v32 = v18;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v38 = a1;
  v19 = v15;
  Toggle.init(isOn:label:)();
  AppStorage.projectedValue.getter();
  v37 = a1;
  v20 = v12;
  Toggle.init(isOn:label:)();
  v21 = *(v4 + 16);
  v22 = v36;
  v21(v36, v18, v3);
  v23 = v33;
  v24 = v19;
  v21(v33, v19, v3);
  v25 = v34;
  v26 = v20;
  v21(v34, v20, v3);
  v27 = v35;
  v21(v35, v22, v3);
  v28 = sub_1005B981C(&unk_1019FEB00, &unk_10147A700);
  v21(&v27[*(v28 + 48)], v23, v3);
  v21(&v27[*(v28 + 64)], v25, v3);
  v29 = *(v4 + 8);
  v29(v26, v3);
  v29(v24, v3);
  v29(v32, v3);
  v29(v25, v3);
  v29(v23, v3);
  return (v29)(v36, v3);
}

uint64_t sub_100765864@<X0>(uint64_t a2@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1007658D0@<X0>(uint64_t a2@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_10076593C@<X0>(uint64_t a2@<X8>)
{
  sub_100017CD8();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1007659A8(uint64_t a1)
{
  v2 = type metadata accessor for ToolbarItemPlacement();
  __chkstk_darwin(v2 - 8);
  v3 = sub_1005B981C(&qword_101A038B0, &qword_10147A660);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  static ToolbarItemPlacement.topBarTrailing.getter();
  v9 = a1;
  sub_1005B981C(&qword_1019FEA68, &unk_10147A670);
  sub_100766108();
  ToolbarItem<>.init(placement:content:)();
  sub_10001A2F8(&unk_1019FEA40, &qword_101A038B0, &qword_10147A660, &protocol conformance descriptor for ToolbarItem<A, B>);
  static ToolbarContentBuilder.buildBlock<A>(_:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_100765B60@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1005B981C(&qword_1019FEA78, &qword_101485080);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v15[-v6 - 8];
  v8 = *(a1 + 160);
  v16 = *(a1 + 152);
  v17 = v8;
  sub_100766230(a1, v15);
  v9 = swift_allocObject();
  sub_100766268(v15, v9 + 16);
  sub_100017CD8();

  Button<>.init<A>(_:action:)();
  static Font.Weight.bold.getter();
  sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78, &qword_101485080, &protocol conformance descriptor for Button<A>);
  View.fontWeight(_:)();
  (*(v5 + 8))(v7, v4);
  v10 = static Color.accentColor.getter();
  KeyPath = swift_getKeyPath();
  result = sub_1005B981C(&qword_1019FEA68, &unk_10147A670);
  v13 = (a2 + *(result + 36));
  *v13 = KeyPath;
  v13[1] = v10;
  return result;
}

void sub_100765D48(uint64_t a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v2 = swift_unknownObjectWeakLoadStrong();
    if (v2)
    {
      [v2 alignmentToolsControllerShouldDismiss:v3];
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100765DCC@<X0>(uint64_t a1@<X8>)
{
  v21 = a1;
  v2 = sub_1005B981C(&qword_1019FEA00, &qword_10147A630);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v18 - v4;
  v22 = v1;
  v20 = sub_1005B981C(&qword_1019FEA08, &qword_10147A638);
  v19 = sub_1005C4E5C(&qword_1019FEA10, &qword_10147A640);
  v6 = sub_1005C4E5C(&qword_1019FEA18, &qword_10147A648);
  v7 = sub_1005C4E5C(&qword_1019FEA20, &qword_10147A650);
  v8 = sub_1005C4E5C(&qword_1019FEA28, &qword_10147A658);
  v9 = sub_10001A2F8(&unk_1019FEA30, &qword_1019FEA20, &qword_10147A650, &protocol conformance descriptor for Form<A>);
  v10 = sub_1005C4E5C(&qword_101A038B0, &qword_10147A660);
  v11 = sub_10001A2F8(&unk_1019FEA40, &qword_101A038B0, &qword_10147A660, &protocol conformance descriptor for ToolbarItem<A, B>);
  v23 = v10;
  v24 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v23 = v7;
  v24 = v8;
  v25 = v9;
  v26 = OpaqueTypeConformance2;
  v13 = swift_getOpaqueTypeConformance2();
  v14 = sub_100017CD8();
  v23 = v6;
  v24 = &type metadata for String;
  v25 = v13;
  v26 = v14;
  v15 = swift_getOpaqueTypeConformance2();
  v23 = v19;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  NavigationStack.init<>(root:)();
  v16 = [objc_opt_self() standardUserDefaults];
  sub_10001A2F8(&qword_1019FEA50, &qword_1019FEA00, &qword_10147A630, &protocol conformance descriptor for NavigationStack<A, B>);
  View.defaultAppStorage(_:)();

  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_100766108()
{
  result = qword_1019FEA70;
  if (!qword_1019FEA70)
  {
    v4[8] = v0;
    v4[9] = v1;
    v3 = sub_1005C4E5C(&qword_1019FEA68, &unk_10147A670);
    v4[2] = sub_1005C4E5C(&qword_1019FEA78, &qword_101485080);
    v4[3] = sub_10001A2F8(&qword_1019FEA80, &qword_1019FEA78, &qword_101485080, &protocol conformance descriptor for Button<A>);
    v4[0] = swift_getOpaqueTypeConformance2();
    v4[1] = sub_10001A2F8(&qword_1019FEA88, &qword_1019FEA90, &qword_10147A680, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_1019FEA70);
  }

  return result;
}

unint64_t sub_1007662B0()
{
  result = qword_1019FEAC0;
  if (!qword_1019FEAC0)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = sub_1005C4E5C(&qword_1019FEAB8, &qword_10147A6D8);
    v4[0] = &protocol witness table for Text;
    v4[1] = sub_10001A2F8(&qword_1019FEAC8, &qword_1019FEAD0, &qword_10147A6E0, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable(&protocol conformance descriptor for <> ModifiedContent<A, B>, v3, v4);
    atomic_store(result, &qword_1019FEAC0);
  }

  return result;
}

uint64_t sub_100766368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FEAB0, &qword_10147A6D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1007663E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1005B981C(&qword_1019FEAB0, &qword_10147A6D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100766458(uint64_t a1)
{
  v2 = sub_1005B981C(&qword_1019FEAB0, &qword_10147A6D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_1007664E0(uint64_t a1)
{
  v3 = sub_1005B981C(&qword_1019F6990, &qword_10146D2F0);
  __chkstk_darwin(v3 - 8);
  v5 = &v32 - v4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v36 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v35 = &v32 - v10;
  v38 = v1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for CRLTransactableHashableWrapper();
    sub_1000064D8(&qword_101A22700, type metadata accessor for CRLTransactableHashableWrapper, "It5");
    result = Set.Iterator.init(_cocoa:)();
    a1 = v45;
    v12 = v46;
    v13 = v47;
    v14 = v48;
    v15 = v49;
  }

  else
  {
    v16 = -1 << *(a1 + 32);
    v12 = a1 + 56;
    v13 = ~v16;
    v17 = -v16;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v15 = v18 & *(a1 + 56);

    v14 = 0;
  }

  v37 = v13;
  v42 = (v7 + 56);
  v43 = v6;
  v40 = (v7 + 16);
  v41 = (v7 + 48);
  v33 = v7;
  v34 = (v7 + 32);
  v39 = _swiftEmptyArrayStorage;
  while (a1 < 0)
  {
    v22 = __CocoaSet.Iterator.next()();
    if (!v22 || (v44 = v22, type metadata accessor for CRLTransactableHashableWrapper(), swift_dynamicCast(), !v50))
    {
LABEL_28:
      sub_100035F90(a1);
      return v39;
    }

LABEL_17:
    type metadata accessor for CRLFreehandDrawingShapeItem(0);
    result = swift_dynamicCastClass();
    if (result)
    {
      v23 = *(result + OBJC_IVAR____TtC8Freeform16CRLBoardItemBase_itemData);
      if (*v23 != &off_1019FAE60)
      {
        goto LABEL_30;
      }

      v24 = qword_1019FB148;
      swift_beginAccess();
      v25 = v23 + v24;
      v26 = v43;
      (*v40)(v5, v25, v43);
      v27 = 0;
    }

    else
    {
      v27 = 1;
      v26 = v43;
    }

    (*v42)(v5, v27, 1, v26);

    if ((*v41)(v5, 1, v26) == 1)
    {
      result = sub_10000CAAC(v5, &qword_1019F6990, &qword_10146D2F0);
    }

    else
    {
      v28 = *v34;
      (*v34)(v35, v5, v26);
      v28(v36, v35, v26);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v39 = sub_100B356D0(0, v39[2] + 1, 1, v39);
      }

      v30 = v39[2];
      v29 = v39[3];
      if (v30 >= v29 >> 1)
      {
        v39 = sub_100B356D0((v29 > 1), v30 + 1, 1, v39);
      }

      v31 = v39;
      v39[2] = v30 + 1;
      result = (v28)(v31 + ((*(v33 + 80) + 32) & ~*(v33 + 80)) + *(v33 + 72) * v30, v36, v43);
    }
  }

  v19 = v14;
  v20 = v15;
  if (v15)
  {
LABEL_13:
    v15 = (v20 - 1) & v20;
    v21 = *(*(a1 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v20)))));

    if (!v21)
    {
      goto LABEL_28;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v14 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v14 >= ((v13 + 64) >> 6))
    {
      goto LABEL_28;
    }

    v20 = *(v12 + 8 * v14);
    ++v19;
    if (v20)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

void *sub_1007669D0(uint64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaSet.count.getter();
  }

  else
  {
    v7 = *(a1 + 16);
  }

  result = _swiftEmptyArrayStorage;
  if (v7)
  {
    v51 = _swiftEmptyArrayStorage;
    sub_100776524(0, v7 & ~(v7 >> 63), 0);
    v46 = v51;
    if (v45)
    {
      result = __CocoaSet.startIndex.getter();
    }

    else
    {
      result = _HashTable.startBucket.getter();
      v9 = *(a1 + 36);
    }

    v48 = result;
    v49 = v9;
    v50 = v45 != 0;
    if ((v7 & 0x8000000000000000) == 0)
    {
      v42 = v6;
      v10 = 0;
      v40 = v7;
      v41 = v44 + 32;
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
      if (a1 < 0)
      {
        v11 = a1;
      }

      v38 = a1 + 56;
      v39 = v11;
      v36 = v1;
      v37 = a1 + 64;
      while (v10 < v7)
      {
        if (__OFADD__(v10++, 1))
        {
          goto LABEL_37;
        }

        v14 = v48;
        v15 = v49;
        v16 = v50;
        v17 = a1;
        sub_100724840(v48, v49, v50, a1);
        v19 = *(v18 + 24);
        ObjectType = swift_getObjectType();
        v21 = v42;
        (*(v19 + 32))(ObjectType, v19);

        v22 = v46;
        v51 = v46;
        v24 = v46[2];
        v23 = v46[3];
        if (v24 >= v23 >> 1)
        {
          sub_100776524((v23 > 1), v24 + 1, 1);
          v22 = v51;
        }

        v22[2] = v24 + 1;
        v25 = (*(v44 + 80) + 32) & ~*(v44 + 80);
        v46 = v22;
        result = (*(v44 + 32))(v22 + v25 + *(v44 + 72) * v24, v21, v43);
        if (v45)
        {
          if (!v16)
          {
            goto LABEL_42;
          }

          a1 = v17;
          if (__CocoaSet.Index.handleBitPattern.getter())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v7 = v40;
          sub_1005B981C(&qword_1019FEFC8, &qword_101483170);
          v12 = Set.Index._asCocoa.modify();
          __CocoaSet.formIndex(after:isUnique:)();
          result = v12(v47, 0);
          if (v10 == v7)
          {
LABEL_34:
            sub_1000341AC(v48, v49, v50);
            return v46;
          }
        }

        else
        {
          if (v16)
          {
            goto LABEL_43;
          }

          if ((v14 & 0x8000000000000000) != 0)
          {
            goto LABEL_38;
          }

          a1 = v17;
          v26 = (1 << *(v17 + 32));
          if (v14 >= v26)
          {
            goto LABEL_38;
          }

          v27 = v14 >> 6;
          v28 = *(v38 + 8 * (v14 >> 6));
          if (((v28 >> v14) & 1) == 0)
          {
            goto LABEL_39;
          }

          if (*(v17 + 36) != v15)
          {
            goto LABEL_40;
          }

          v29 = v28 & (-2 << (v14 & 0x3F));
          if (v29)
          {
            v26 = (__clz(__rbit64(v29)) | v14 & 0x7FFFFFFFFFFFFFC0);
          }

          else
          {
            v30 = v27 << 6;
            v31 = v27 + 1;
            v32 = (v37 + 8 * v27);
            while (v31 < (v26 + 63) >> 6)
            {
              v34 = *v32++;
              v33 = v34;
              v30 += 64;
              ++v31;
              if (v34)
              {
                result = sub_1000341AC(v14, v15, 0);
                v26 = (__clz(__rbit64(v33)) + v30);
                goto LABEL_33;
              }
            }

            result = sub_1000341AC(v14, v15, 0);
          }

LABEL_33:
          v35 = *(v17 + 36);
          v48 = v26;
          v49 = v35;
          v50 = 0;
          v7 = v40;
          if (v10 == v40)
          {
            goto LABEL_34;
          }
        }
      }

      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      __break(1u);
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
  }

  return result;
}

uint64_t sub_100766DF8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for CRLBoardCRDTData(0);
  __chkstk_darwin(v5 - 8);
  v7 = &v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v55 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  (*(a2 + 32))(ObjectType, a2);
  (*(v12 + 32))(v2 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_id, v14, v11);
  type metadata accessor for CRLBoard(0);
  v16 = swift_dynamicCastClass();
  if (v16)
  {
    v17 = *(v16 + OBJC_IVAR____TtC8Freeform8CRLBoard_data);
    v18 = OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData;
    swift_beginAccess();
    sub_10004FD94(v17 + v18, v10, type metadata accessor for CRLBoardCRDTData);
    v19 = *(v17 + 56);
    v20 = *(v17 + 24);
    v55 = *(v17 + 40);
    v56 = v20;
    sub_10004FD94(v10, v7, type metadata accessor for CRLBoardCRDTData);
    v22 = *(v17 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    v21 = *(v17 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName + 8);
    type metadata accessor for CRLBoardData(0);
    v23 = swift_allocObject();

    swift_unknownObjectRelease();
    sub_10003D45C(v10, type metadata accessor for CRLBoardCRDTData);
    *(v23 + 16) = 7;
    v24 = v56;
    *(v23 + 40) = v55;
    *(v23 + 24) = v24;
    *(v23 + 56) = v19;
    sub_100774F64(v7, v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_crdtData, type metadata accessor for CRLBoardCRDTData);
    v25 = (v23 + OBJC_IVAR____TtC8Freeform12CRLBoardData_ownerName);
    *v25 = v22;
    v25[1] = v21;
LABEL_5:
    *(v3 + OBJC_IVAR____TtC8Freeform19CRLTransactableData_data) = v23;
    return v3;
  }

  type metadata accessor for CRLBoardItem(0);
  v26 = swift_dynamicCastClass();
  if (v26)
  {
    v27 = *((swift_isaMask & *v26) + 0x258);
    swift_unknownObjectRetain();
    v28 = v27(0);
    swift_unknownObjectRelease_n();
    v23 = v28 | 0x8000000000000000;
    goto LABEL_5;
  }

  v30 = objc_opt_self();
  v31 = [v30 _atomicIncrementAssertCount];
  v57 = [objc_allocWithZone(NSString) init];
  sub_100604538(_swiftEmptyArrayStorage, &v57, "Invalid/unknown transactable type", 33, 2u);
  StaticString.description.getter("init(_:)", 8, 2);
  v32 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
  v33 = String._bridgeToObjectiveC()();

  v34 = [v33 lastPathComponent];

  v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  if (qword_1019F20A0 != -1)
  {
    swift_once();
  }

  v38 = static OS_os_log.crlAssert;
  sub_1005B981C(&qword_1019F54E0, &unk_10146BE50);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10146CA70;
  *(inited + 56) = &type metadata for Int32;
  *(inited + 64) = &protocol witness table for Int32;
  *(inited + 32) = v31;
  v40 = sub_100006370(0, &qword_1019F4D30, NSString_ptr);
  *(inited + 96) = v40;
  v41 = sub_1005CF04C();
  *(inited + 104) = v41;
  *(inited + 72) = v32;
  *(inited + 136) = &type metadata for String;
  v42 = sub_1000053B0();
  *(inited + 112) = v35;
  *(inited + 120) = v37;
  *(inited + 176) = &type metadata for UInt;
  *(inited + 184) = &protocol witness table for UInt;
  *(inited + 144) = v42;
  *(inited + 152) = 42;
  v43 = v57;
  *(inited + 216) = v40;
  *(inited + 224) = v41;
  *(inited + 192) = v43;
  v44 = v32;
  v45 = v43;
  v46 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v46, "#Assert *** Assertion failure #%d: %{public}@ %{public}@:%lu %{public}@", 71, 2, inited);

  v47 = static os_log_type_t.error.getter();
  sub_100005404(v38, &_mh_execute_header, v47, "Invalid/unknown transactable type", 33, 2, _swiftEmptyArrayStorage);

  sub_10063DF98(_swiftEmptyArrayStorage, "Invalid/unknown transactable type");
  type metadata accessor for __VaListBuilder();
  v48 = swift_allocObject();
  v48[2] = 8;
  v48[3] = 0;
  v48[4] = 0;
  v48[5] = 0;
  v49 = __VaListBuilder.va_list()();
  StaticString.description.getter("init(_:)", 8, 2);
  v50 = String._bridgeToObjectiveC()();

  StaticString.description.getter("/Library/Caches/com.apple.xbs/Sources/Freeform/Source/Persistence/CRLBoardChangeSet.swift", 89, 2);
  v51 = String._bridgeToObjectiveC()();

  StaticString.description.getter("Invalid/unknown transactable type", 33, 2);
  v52 = String._bridgeToObjectiveC()();

  [v30 handleFailureInFunction:v50 file:v51 lineNumber:42 isFatal:1 format:v52 args:v49];

  SyncEvent.FetchedRecordZoneChanges.Deletion.init(recordID:recordType:)(v53, v54);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}