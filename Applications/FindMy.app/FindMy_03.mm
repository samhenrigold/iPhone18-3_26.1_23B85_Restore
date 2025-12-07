uint64_t sub_10004F3DC(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  while (1)
  {
    sub_10000905C(0, &qword_1006C00F0, UNNotificationCategory_ptr);
    sub_10004F51C();
    result = Set.init(minimumCapacity:)();
    v9 = result;
    if (i)
    {
      break;
    }

    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v4)
    {
      return result;
    }

LABEL_6:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(a1 + 8 * i + 32);
      }

      v7 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      sub_10004F58C(&v8, v6);

      if (v7 == v4)
      {
        return v9;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    _CocoaArrayWrapper.endIndex.getter();
  }

  v5 = result;
  v4 = _CocoaArrayWrapper.endIndex.getter();
  result = v5;
  if (v4)
  {
    goto LABEL_6;
  }

  return result;
}

unint64_t sub_10004F51C()
{
  result = qword_1006B0738;
  if (!qword_1006B0738)
  {
    sub_10000905C(255, &qword_1006C00F0, UNNotificationCategory_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1006B0738);
  }

  return result;
}

uint64_t sub_10004F58C(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      sub_10004F7CC();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_100254FB4(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1002559B0(v20 + 1);
    }

    v18 = v8;
    sub_100256B64(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_10004F7CC();
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_10004F818(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_10004F7CC()
{
  result = qword_1006C00F0;
  if (!qword_1006C00F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1006C00F0);
  }

  return result;
}

void sub_10004F818(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1002559B0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1002580A4();
      goto LABEL_12;
    }

    sub_100258E60(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_10004F7CC();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10004F978(uint64_t a1)
{
  v2 = v1;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100005B14(v4, qword_1006D4630);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v5, v6, "FMPeopleProvider: didReceive: friends %ld", v7, 0xCu);
  }

  else
  {
  }

  v8 = *(v2 + 32);

  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));

  if (v9 >> 62)
  {
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v10)
    {
      goto LABEL_18;
    }
  }

  if (v10 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v10; ++i)
  {
    if ((v9 & 0xC000000000000001) != 0)
    {
      v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v14 = *(v9 + 8 * i + 32);
    }

    v15 = v14 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v12 = *(v15 + 8);
      ObjectType = swift_getObjectType();
      (*(v12 + 24))(v2, a1, ObjectType, v12);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }

LABEL_18:
}

double sub_10004FBC4(void *a1, uint64_t a2)
{
  v3 = type metadata accessor for FMIPNotificationAuthLaunchEvent();
  v4 = *(v3 - 8);
  *&v5 = __chkstk_darwin(v3).n128_u64[0];
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 authorizationStatus];
  FMIPNotificationAuthLaunchEvent.init(findMyNotificationAuthStatus:utAlertAuthStatus:)();
  if (qword_1006AEC80 != -1)
  {
    swift_once();
  }

  FMIPManager.enqueue(notificationLaunchEvent:)();
  (*(v4 + 8))(v7, v3);

  return result;
}

uint64_t sub_10004FD14(uint64_t a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v27 = a4;
  v28 = a5;
  v7 = v5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = type metadata accessor for DispatchQoS();
  v12 = *(v29 - 8);
  __chkstk_darwin(v29);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100005B14(v15, qword_1006D4630);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v26 = v14;
    v19 = a2;
    v20 = v18;
    *v18 = 134217984;
    *(v18 + 4) = *(a1 + 16);

    v14 = v26;
    _os_log_impl(&_mh_execute_header, v16, v17, v19, v20, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v7;
  *(v22 + 24) = a1;
  aBlock[4] = v27;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = v28;
  v23 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v30 + 8))(v11, v9);
  return (*(v12 + 8))(v14, v29);
}

uint64_t sub_100050204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v9 = *(v21 - 8);
  __chkstk_darwin(v21);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v13, v14, "FMPeopleListDataSource: didUpdate %ld people", v15, 0xCu);
  }

  else
  {
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = v4;
  aBlock[4] = sub_100535AE4;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_1006452C8;
  v18 = _Block_copy(aBlock);
  v19 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v8, v6);
  return (*(v9 + 8))(v11, v21);
}

uint64_t sub_1000505E0()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_100050618()
{
  v16.receiver = v0;
  v16.super_class = type metadata accessor for FMCardContainerViewController();
  objc_msgSendSuper2(&v16, "viewDidLayoutSubviews");
  v1 = OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isFirstLayoutCompleted;
  if ((v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_isFirstLayoutCompleted] & 1) == 0)
  {
    v2 = [v0 traitCollection];
    v3 = [v2 horizontalSizeClass];

    if (v3 == 1 || v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_dismissable] != 1)
    {
      v14 = &type metadata for SolariumFeatureFlag;
      v6 = sub_10000BD04();
      v15 = v6;
      v7 = isFeatureEnabled(_:)();
      sub_100006060(v13);
      v4 = 0.64;
      if (v7)
      {
        v8 = 0.5;
      }

      else
      {
        v8 = 0.64;
      }

      sub_1000493F8(0, v8);
      v14 = &type metadata for SolariumFeatureFlag;
      v15 = v6;
      v9 = isFeatureEnabled(_:)();
      sub_100006060(v13);
      if (v9)
      {
        v4 = 0.5;
      }

      v5 = 1;
    }

    else
    {
      v4 = 0.0;
      sub_1000493F8(0, 0.0);
      v5 = 0;
    }

    v14 = &type metadata for SolariumFeatureFlag;
    v15 = sub_10000BD04();
    v10 = isFeatureEnabled(_:)();
    sub_100006060(v13);
    v11 = 0.64;
    if (v10)
    {
      v11 = 0.5;
    }

    v12 = v11 - v4;
    if (v12 <= 0.0)
    {
      v12 = 0.0;
    }

    [*&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_darkenerBackground] setAlpha:v12 * *&v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_configuration]];
    v0[v1] = 1;
    v0[OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent] = v5;
    sub_1000507D4();
  }
}

void sub_1000507D4()
{
  v1 = v0;
  v2 = v0 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController;
  v3 = *(v0 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_contentViewController);
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);
    v7 = *(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent);
    v8 = v3;
    v6(v7, ObjectType, v4);

    v9 = *v2;
    if (*v2)
    {
      v10 = *(v2 + 8);
      v11 = swift_getObjectType();
      v12 = *(v10 + 8);
      v13 = v9;
      v14 = v12(v11, v10);

      if (v14)
      {
        if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
        {
          if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
          {
            v29 = &type metadata for SolariumFeatureFlag;
            v30 = sub_10000BD04();
            isFeatureEnabled(_:)();
            sub_100006060(v28);
          }

          v15 = 0;
        }

        else
        {
          v15 = 1;
        }

        [v14 setScrollEnabled:v15];
      }

      v16 = *v2;
      if (*v2)
      {
        v17 = *(v2 + 8);
        v18 = swift_getObjectType();
        v19 = *(v17 + 8);
        v20 = v16;
        v21 = v19(v18, v17);

        if (v21)
        {
          if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
          {
            if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
            {
              v29 = &type metadata for SolariumFeatureFlag;
              v30 = sub_10000BD04();
              isFeatureEnabled(_:)();
              sub_100006060(v28);
            }

            v22 = 0;
          }

          else
          {
            v22 = 1;
          }

          [v21 setBounces:v22];
        }
      }
    }
  }

  if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent))
  {
    if (*(v1 + OBJC_IVAR____TtC6FindMy29FMCardContainerViewController_lockedPercent) == 1)
    {
      v29 = &type metadata for SolariumFeatureFlag;
      v30 = sub_10000BD04();
      isFeatureEnabled(_:)();
      sub_100006060(v28);
    }

    else
    {
      v23 = *v2;
      if (*v2)
      {
        v24 = *(v2 + 8);
        v25 = swift_getObjectType();
        v26 = *(v24 + 40);
        v27 = v23;
        v26(v25, v24);
      }
    }
  }
}

id sub_100050A4C()
{
  if (*(v0 + qword_1006BA9E8))
  {
    v1 = &qword_1006BA988;
LABEL_5:
    v0 = *(v0 + *v1);
    v2 = &OBJC_IVAR____TtC6FindMy15FMEmptyListView_scrollView;
    goto LABEL_7;
  }

  if (sub_10004B5BC())
  {
    v1 = &qword_1006BA980;
    goto LABEL_5;
  }

  v2 = &qword_1006BA990;
LABEL_7:
  v3 = *(v0 + *v2);

  return v3;
}

uint64_t sub_100050ACC()
{
  (*(v0[33] + 8))(v0[34], v0[32]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_100050C70(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7449656D616E6572;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0xD000000000000010;
    }

    else
    {
      v4 = 0xD000000000000015;
    }

    if (v3 == 2)
    {
      v5 = 0x8000000100578BA0;
    }

    else
    {
      v5 = 0x8000000100578BC0;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 0x744965766F6D6572;
    }

    else
    {
      v4 = 0x7449656D616E6572;
    }

    v5 = 0xEA00000000006D65;
  }

  v6 = 0xD000000000000010;
  v7 = 0x8000000100578BC0;
  if (a2 == 2)
  {
    v7 = 0x8000000100578BA0;
  }

  else
  {
    v6 = 0xD000000000000015;
  }

  if (a2)
  {
    v2 = 0x744965766F6D6572;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v6;
  }

  if (a2 <= 1u)
  {
    v9 = 0xEA00000000006D65;
  }

  else
  {
    v9 = v7;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v10 & 1;
}

uint64_t sub_100050DA8(uint64_t a1, int a2)
{
  v127 = a2;
  v117 = type metadata accessor for PublishedLocation.Label.Length();
  v116 = *(v117 - 8);
  __chkstk_darwin(v117);
  v115 = &v115 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for PublishedLocation.Label.DetailLevel();
  v121 = *(v4 - 8);
  v122 = v4;
  __chkstk_darwin(v4);
  v120 = &v115 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v6 - 8);
  v8 = &v115 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v119 = &v115 - v10;
  __chkstk_darwin(v11);
  v118 = &v115 - v12;
  __chkstk_darwin(v13);
  v131 = &v115 - v14;
  __chkstk_darwin(v15);
  v123 = &v115 - v16;
  __chkstk_darwin(v17);
  v133 = &v115 - v18;
  v19 = type metadata accessor for PublishedLocation.Label();
  v129 = *(v19 - 8);
  v130 = v19;
  __chkstk_darwin(v19);
  v128 = &v115 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v21 - 8);
  v23 = &v115 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v136 = &v115 - v25;
  __chkstk_darwin(v26);
  v124 = &v115 - v27;
  __chkstk_darwin(v28);
  v134 = &v115 - v29;
  __chkstk_darwin(v30);
  v32 = &v115 - v31;
  __chkstk_darwin(v33);
  v35 = &v115 - v34;
  __chkstk_darwin(v36);
  v38 = &v115 - v37;
  v39 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v39 - 8);
  v41 = &v115 - v40;
  sub_100007204(a1, v38, &qword_1006AF740, &unk_100552330);
  v42 = type metadata accessor for FMFLocation();
  v43 = *(v42 - 8);
  v139 = *(v43 + 48);
  v44 = v139(v38, 1, v42);
  v132 = v8;
  v135 = v23;
  v137 = v43;
  if (v44 == 1)
  {
    sub_100012DF0(v38, &qword_1006AF740, &unk_100552330);
    v126 = 0;
    v138 = 0;
  }

  else
  {
    FMFLocation.label.getter();
    (*(v43 + 8))(v38, v42);
    v45 = type metadata accessor for FMFLabel();
    v46 = *(v45 - 8);
    if ((*(v46 + 48))(v41, 1, v45) == 1)
    {
      sub_100012DF0(v41, &qword_1006B0038, &unk_10055EDB0);
      v126 = 0;
      v138 = 0;
    }

    else
    {
      FMFLabel.localizedValue.getter();
      (*(v46 + 8))(v41, v45);
      v126 = String.nilIfEmpty.getter();
      v138 = v47;
      v8 = v132;
    }

    v23 = v135;
  }

  sub_100007204(a1, v35, &qword_1006AF740, &unk_100552330);
  v48 = v139(v35, 1, v42);
  v49 = v131;
  if (v48 == 1)
  {
    sub_100012DF0(v35, &qword_1006AF740, &unk_100552330);
    v133 = 0;
    v125 = 0;
    v50 = v136;
  }

  else
  {
    FMFLocation.address.getter();
    v51 = v133;
    (*(v137 + 8))(v35, v42);
    v52 = type metadata accessor for FMFAddress();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v51, 1, v52) == 1)
    {
      sub_100012DF0(v51, &qword_1006B0040, &qword_100552AE0);
      v133 = 0;
      v125 = 0;
      v23 = v135;
      v50 = v136;
    }

    else
    {
      FMFAddress.coarseAddressModern.getter();
      v55 = v54;
      (*(v53 + 8))(v51, v52);
      if (v55)
      {
        v133 = String.nilIfEmpty.getter();
        v125 = v56;
      }

      else
      {
        v133 = 0;
        v125 = 0;
      }

      v23 = v135;
      v50 = v136;
      v49 = v131;
    }
  }

  v57 = v134;
  sub_100007204(a1, v32, &qword_1006AF740, &unk_100552330);
  if (v139(v32, 1, v42) == 1)
  {
    sub_100012DF0(v32, &qword_1006AF740, &unk_100552330);
    v131 = 0;
    v123 = 0;
    v58 = v124;
  }

  else
  {
    v59 = v123;
    FMFLocation.address.getter();
    v60 = v59;
    (*(v137 + 8))(v32, v42);
    v61 = type metadata accessor for FMFAddress();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v60, 1, v61) == 1)
    {
      sub_100012DF0(v60, &qword_1006B0040, &qword_100552AE0);
      v131 = 0;
      v123 = 0;
      v50 = v136;
      v58 = v124;
      v57 = v134;
    }

    else
    {
      v63 = v8;
      FMFAddress.streetAddressModern.getter();
      v65 = v64;
      (*(v62 + 8))(v60, v61);
      if (v65)
      {
        v131 = String.nilIfEmpty.getter();
        v123 = v66;
      }

      else
      {
        v131 = 0;
        v123 = 0;
      }

      v23 = v135;
      v50 = v136;
      v58 = v124;
      v57 = v134;
      v8 = v63;
    }
  }

  sub_100007204(a1, v57, &qword_1006AF740, &unk_100552330);
  if (v139(v57, 1, v42) == 1)
  {
    sub_100012DF0(v57, &qword_1006AF740, &unk_100552330);
    v134 = 0;
    v124 = 0;
  }

  else
  {
    FMFLocation.address.getter();
    (*(v137 + 8))(v57, v42);
    v67 = type metadata accessor for FMFAddress();
    v68 = *(v67 - 8);
    if ((*(v68 + 48))(v49, 1, v67) == 1)
    {
      sub_100012DF0(v49, &qword_1006B0040, &qword_100552AE0);
      v134 = 0;
      v124 = 0;
      v8 = v132;
    }

    else
    {
      FMFAddress.smallAddressModern.getter();
      v70 = v69;
      (*(v68 + 8))(v49, v67);
      if (v70)
      {
        v134 = String.nilIfEmpty.getter();
        v124 = v71;
      }

      else
      {
        v134 = 0;
        v124 = 0;
      }

      v8 = v132;
      v23 = v135;
    }

    v50 = v136;
  }

  sub_100007204(a1, v58, &qword_1006AF740, &unk_100552330);
  if (v139(v58, 1, v42) == 1)
  {
    sub_100012DF0(v58, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v72 = v118;
    FMFLocation.address.getter();
    v73 = v72;
    (*(v137 + 8))(v58, v42);
    v74 = type metadata accessor for FMFAddress();
    v75 = *(v74 - 8);
    if ((*(v75 + 48))(v73, 1, v74) == 1)
    {
      sub_100012DF0(v73, &qword_1006B0040, &qword_100552AE0);
    }

    else
    {
      FMFAddress.mediumAddressModern.getter();
      v77 = v76;
      (*(v75 + 8))(v73, v74);
      if (v77)
      {
        String.nilIfEmpty.getter();
      }

      v23 = v135;
    }

    v50 = v136;
  }

  sub_100007204(a1, v50, &qword_1006AF740, &unk_100552330);
  if (v139(v50, 1, v42) == 1)
  {
    sub_100012DF0(v50, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v78 = a1;
    v79 = v119;
    FMFLocation.address.getter();
    v80 = v50;
    v81 = v79;
    (*(v137 + 8))(v80, v42);
    v82 = type metadata accessor for FMFAddress();
    v83 = *(v82 - 8);
    if ((*(v83 + 48))(v81, 1, v82) == 1)
    {
      sub_100012DF0(v81, &qword_1006B0040, &qword_100552AE0);
    }

    else
    {
      FMFAddress.largeAddressModern.getter();
      v84 = v81;
      v86 = v85;
      (*(v83 + 8))(v84, v82);
      if (v86)
      {
        String.nilIfEmpty.getter();
      }
    }

    a1 = v78;
    v8 = v132;
  }

  sub_100007204(a1, v23, &qword_1006AF740, &unk_100552330);
  if (v139(v23, 1, v42) == 1)
  {
    v87 = &qword_1006AF740;
    v88 = &unk_100552330;
    v89 = v23;
LABEL_51:
    sub_100012DF0(v89, v87, v88);
    goto LABEL_55;
  }

  FMFLocation.address.getter();
  (*(v137 + 8))(v23, v42);
  v90 = type metadata accessor for FMFAddress();
  v91 = *(v90 - 8);
  if ((*(v91 + 48))(v8, 1, v90) == 1)
  {
    v87 = &qword_1006B0040;
    v88 = &qword_100552AE0;
    v89 = v8;
    goto LABEL_51;
  }

  v92 = v8;
  v93 = a1;
  FMFAddress.poiAddressModern.getter();
  v95 = v94;
  (*(v91 + 8))(v92, v90);
  if (v95)
  {
    String.nilIfEmpty.getter();
  }

  a1 = v93;
LABEL_55:
  v96 = v128;

  PublishedLocation.Label.init(customLabel:coarseLabel:streetLabel:smallLabel:mediumLabel:largeLabel:poiLabel:)();
  if (v127)
  {

    v98 = v120;
    v97 = v121;
    v99 = v122;
    (*(v121 + 104))(v120, enum case for PublishedLocation.Label.DetailLevel.detailed(_:), v122);
    v100 = PublishedLocation.Label.primaryAndSecondaryNoFallbackLabel(isInaccurate:detailLevel:)();
    v102 = v101;
    v104 = v103;
    v138 = v105;
    (*(v97 + 8))(v98, v99);
    if (v102)
    {
      if (!v138)
      {
        v138 = v102;
        v106 = v104;
        goto LABEL_65;
      }
    }

    else
    {

      sub_1000530E0(a1, 1, sub_100051E0C);
      v138 = v113;
    }

    v106 = v100;
    goto LABEL_65;
  }

  if (!v138)
  {
    v107 = v116;
    v108 = v115;
    v109 = v117;
    (*(v116 + 104))(v115, enum case for PublishedLocation.Label.Length.coarse(_:), v117);
    PublishedLocation.Label.combinedNoFallbackLabel(maxLength:)();
    v111 = v110;
    (*(v107 + 8))(v108, v109);
    v138 = v111;
    if (!v111)
    {
      sub_1000530E0(a1, 0, sub_100051E0C);
      v138 = v112;
    }
  }

  v106 = 0;
LABEL_65:
  (*(v129 + 8))(v96, v130);
  return v106;
}

uint64_t sub_100051E0C(uint64_t a1, int a2)
{
  v150 = a2;
  v3 = sub_10007EBC0(&qword_1006B0040, &qword_100552AE0);
  __chkstk_darwin(v3 - 8);
  v134 = &v130 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v135 = &v130 - v6;
  __chkstk_darwin(v7);
  v148 = &v130 - v8;
  v9 = sub_10007EBC0(&qword_1006B0038, &unk_10055EDB0);
  __chkstk_darwin(v9 - 8);
  v139 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v142 = &v130 - v12;
  v13 = type metadata accessor for FMFLocationSource();
  v153 = *(v13 - 8);
  __chkstk_darwin(v13);
  v140 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v145 = sub_10007EBC0(&qword_1006B14A8, &qword_10055EDC0);
  __chkstk_darwin(v145);
  v155 = &v130 - v15;
  v16 = sub_10007EBC0(&unk_1006C2460, &unk_100553880);
  __chkstk_darwin(v16 - 8);
  v141 = &v130 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v152 = &v130 - v19;
  __chkstk_darwin(v20);
  v151 = &v130 - v21;
  v22 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v22 - 8);
  v138 = &v130 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v136 = &v130 - v25;
  __chkstk_darwin(v26);
  v137 = &v130 - v27;
  __chkstk_darwin(v28);
  v147 = &v130 - v29;
  __chkstk_darwin(v30);
  v146 = &v130 - v31;
  __chkstk_darwin(v32);
  v34 = &v130 - v33;
  __chkstk_darwin(v35);
  v37 = &v130 - v36;
  __chkstk_darwin(v38);
  v40 = &v130 - v39;
  __chkstk_darwin(v41);
  v43 = &v130 - v42;
  v149 = a1;
  sub_100007204(a1, &v130 - v42, &qword_1006AF740, &unk_100552330);
  v44 = type metadata accessor for FMFLocation();
  v45 = *(v44 - 8);
  v46 = *(v45 + 48);
  v154 = v45 + 48;
  v156 = v46;
  if (v46(v43, 1, v44) == 1)
  {
    sub_100012DF0(v43, &qword_1006AF740, &unk_100552330);
LABEL_8:
    v55 = [objc_opt_self() mainBundle];
    v159._object = 0x800000010057D9B0;
    v56._countAndFlagsBits = 0xD00000000000001DLL;
    v56._object = 0x800000010057D990;
    v159._countAndFlagsBits = 0xD00000000000002FLL;
    v57._countAndFlagsBits = 0;
    v57._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v56, 0, v55, v57, v159);

    return 0;
  }

  v47 = FMFLocation.location.getter();
  v143 = *(v45 + 8);
  v144 = v45 + 8;
  v143(v43, v44);
  if (!v47)
  {
    goto LABEL_8;
  }

  v130 = objc_opt_self();
  v48 = [v130 mainBundle];
  v158._object = 0x8000000100579940;
  v49._countAndFlagsBits = 0xD00000000000001ELL;
  v49._object = 0x8000000100579920;
  v158._countAndFlagsBits = 0xD000000000000030;
  v50._countAndFlagsBits = 0;
  v50._object = 0xE000000000000000;
  v132 = NSLocalizedString(_:tableName:bundle:value:comment:)(v49, 0, v48, v50, v158);

  v51 = v149;
  sub_100007204(v149, v40, &qword_1006AF740, &unk_100552330);
  if (v156(v40, 1, v44) == 1)
  {
    sub_100012DF0(v40, &qword_1006AF740, &unk_100552330);
    v52 = v151;
    v53 = v152;
  }

  else
  {
    v59 = FMFLocation.motionActivityState.getter();
    v61 = v60;
    v143(v40, v44);
    v52 = v151;
    v53 = v152;
    if ((v61 & 1) == 0)
    {
      v54 = v150;
      if (v59 == 1)
      {
        goto LABEL_16;
      }
    }
  }

  sub_100007204(v51, v37, &qword_1006AF740, &unk_100552330);
  if (v156(v37, 1, v44) == 1)
  {
    sub_100012DF0(v37, &qword_1006AF740, &unk_100552330);
    v54 = 0;
  }

  else
  {
    v62 = FMFLocation.motionActivityState.getter();
    v64 = v63;
    v143(v37, v44);
    if (v64)
    {
      v54 = 0;
    }

    else
    {
      v54 = (v62 == 2) & v150;
    }
  }

LABEL_16:
  v131 = v54;
  sub_100007204(v51, v34, &qword_1006AF740, &unk_100552330);
  v65 = v156(v34, 1, v44);
  v133 = v44;
  if (v65 == 1)
  {
    sub_100012DF0(v34, &qword_1006AF740, &unk_100552330);
    v66 = 1;
  }

  else
  {
    FMFLocation.locationSource.getter();
    v143(v34, v44);
    v66 = 0;
  }

  v67 = v153;
  v68 = *(v153 + 56);
  v68(v52, v66, 1, v13);
  (*(v67 + 104))(v53, enum case for FMFLocationSource.secureLive(_:), v13);
  v68(v53, 0, 1, v13);
  v69 = *(v145 + 48);
  v70 = v155;
  sub_100007204(v52, v155, &unk_1006C2460, &unk_100553880);
  v71 = v70;
  sub_100007204(v53, v70 + v69, &unk_1006C2460, &unk_100553880);
  v72 = v67;
  v73 = v53;
  v74 = *(v72 + 48);
  if (v74(v71, 1, v13) != 1)
  {
    v80 = v141;
    sub_100007204(v71, v141, &unk_1006C2460, &unk_100553880);
    if (v74(v71 + v69, 1, v13) != 1)
    {
      v81 = v80;
      v82 = v153;
      v83 = v140;
      (*(v153 + 32))(v140, v71 + v69, v13);
      sub_100033BE8(&qword_1006B14E0, &type metadata accessor for FMFLocationSource, &protocol conformance descriptor for FMFLocationSource);
      v84 = v71;
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();
      v86 = *(v82 + 8);
      v86(v83, v13);
      sub_100012DF0(v152, &unk_1006C2460, &unk_100553880);
      sub_100012DF0(v151, &unk_1006C2460, &unk_100553880);
      v86(v81, v13);
      sub_100012DF0(v84, &unk_1006C2460, &unk_100553880);
      v77 = v133;
      v78 = v148;
      v79 = v146;
      if ((v85 & 1) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_26;
    }

    sub_100012DF0(v152, &unk_1006C2460, &unk_100553880);
    v75 = v155;
    sub_100012DF0(v52, &unk_1006C2460, &unk_100553880);
    (*(v153 + 8))(v80, v13);
    v77 = v133;
    v78 = v148;
LABEL_24:
    sub_100012DF0(v75, &qword_1006B14A8, &qword_10055EDC0);
    v79 = v146;
    goto LABEL_27;
  }

  sub_100012DF0(v73, &unk_1006C2460, &unk_100553880);
  v75 = v155;
  sub_100012DF0(v52, &unk_1006C2460, &unk_100553880);
  v76 = v74(v75 + v69, 1, v13);
  v77 = v133;
  v78 = v148;
  if (v76 != 1)
  {
    goto LABEL_24;
  }

  sub_100012DF0(v75, &unk_1006C2460, &unk_100553880);
  v79 = v146;
LABEL_26:
  v150 = v131;
LABEL_27:
  sub_100007204(v51, v79, &qword_1006AF740, &unk_100552330);
  if (v156(v79, 1, v77) == 1)
  {
    sub_100012DF0(v79, &qword_1006AF740, &unk_100552330);
    v87 = v147;
  }

  else
  {
    v88 = v142;
    FMFLocation.label.getter();
    v143(v79, v77);
    v89 = type metadata accessor for FMFLabel();
    v90 = *(v89 - 8);
    v91 = (*(v90 + 48))(v88, 1, v89);
    v87 = v147;
    if (v91 == 1)
    {
      sub_100012DF0(v88, &qword_1006B0038, &unk_10055EDB0);
    }

    else
    {
      v92 = FMFLabel.localizedValue.getter();
      v94 = v93;
      (*(v90 + 8))(v88, v89);
      v95 = HIBYTE(v94) & 0xF;
      if ((v94 & 0x2000000000000000) == 0)
      {
        v95 = v92 & 0xFFFFFFFFFFFFLL;
      }

      if (v95 && (v150 & 1) == 0)
      {

        return 0;
      }
    }
  }

  sub_100007204(v51, v87, &qword_1006AF740, &unk_100552330);
  if (v156(v87, 1, v77) == 1)
  {
    sub_100012DF0(v87, &qword_1006AF740, &unk_100552330);
    return 0;
  }

  FMFLocation.address.getter();
  v143(v87, v77);
  v96 = type metadata accessor for FMFAddress();
  v97 = *(v96 - 8);
  v98 = *(v97 + 48);
  if (v98(v78, 1, v96) == 1)
  {
    sub_100012DF0(v78, &qword_1006B0040, &qword_100552AE0);
    return 0;
  }

  v99 = FMFAddress.displayAddress.getter();
  v101 = v100;
  v102 = v78;
  v103 = *(v97 + 8);
  v103(v102, v96);
  if (!v101)
  {
    return 0;
  }

  if ((v150 & 1) == 0)
  {
    return 0;
  }

  v155 = v99;
  v104 = v137;
  sub_100007204(v51, v137, &qword_1006AF740, &unk_100552330);
  v105 = v133;
  if (v156(v104, 1, v133) == 1)
  {
    sub_100012DF0(v104, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v106 = v135;
    FMFLocation.address.getter();
    v143(v104, v105);
    if (v98(v106, 1, v96) == 1)
    {
      sub_100012DF0(v106, &qword_1006B0040, &qword_100552AE0);
    }

    else
    {
      v107 = FMFAddress.mapFormattedAddress.getter();
      v109 = v108;
      v103(v106, v96);
      if (v109)
      {

        v155 = v107;
        goto LABEL_58;
      }
    }
  }

  v110 = v136;
  sub_100007204(v51, v136, &qword_1006AF740, &unk_100552330);
  v111 = v133;
  if (v156(v110, 1, v133) == 1)
  {
    sub_100012DF0(v110, &qword_1006AF740, &unk_100552330);
  }

  else
  {
    v112 = v134;
    FMFLocation.address.getter();
    v143(v110, v111);
    if (v98(v112, 1, v96) == 1)
    {
      sub_100012DF0(v112, &qword_1006B0040, &qword_100552AE0);
    }

    else
    {
      v113 = FMFAddress.postalAddress.getter();
      v103(v112, v96);
      v114 = static FMFAddress.formattedAddressLines(for:)();
      if (v114)
      {
        v115 = v114;

        v157 = v115;
        sub_10007EBC0(&qword_1006C0C10, &qword_100556FC0);
        sub_1001500AC();
        v155 = BidirectionalCollection<>.joined(separator:)();
        v109 = v116;

        goto LABEL_58;
      }
    }
  }

  v109 = v101;
LABEL_58:
  v117 = v138;
  v118 = v139;
  sub_100007204(v149, v138, &qword_1006AF740, &unk_100552330);
  v119 = v133;
  if (v156(v117, 1, v133) == 1)
  {
    v120 = &qword_1006AF740;
    v121 = &unk_100552330;
    v122 = v117;
  }

  else
  {
    FMFLocation.label.getter();
    v143(v117, v119);
    v123 = type metadata accessor for FMFLabel();
    v124 = *(v123 - 8);
    if ((*(v124 + 48))(v118, 1, v123) != 1)
    {
      v125 = FMFLabel.localizedValue.getter();
      (*(v124 + 8))(v118, v123);
      goto LABEL_64;
    }

    v120 = &qword_1006B0038;
    v121 = &unk_10055EDB0;
    v122 = v118;
  }

  sub_100012DF0(v122, v120, v121);
  v125 = 0;
LABEL_64:
  v126 = [v130 mainBundle];
  v160._object = 0x8000000100584E50;
  v127._object = 0x8000000100584E30;
  v160._countAndFlagsBits = 0xD00000000000002ELL;
  v127._countAndFlagsBits = 0xD00000000000001CLL;
  v128._countAndFlagsBits = 0;
  v128._object = 0xE000000000000000;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v127, 0, v126, v128, v160);

  sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
  v129 = swift_allocObject();
  *(v129 + 16) = xmmword_100552220;
  *(v129 + 56) = &type metadata for String;
  *(v129 + 64) = sub_10008EE84();
  *(v129 + 32) = v155;
  *(v129 + 40) = v109;
  String.init(format:_:)();

  return v125;
}

void sub_100053098(void *a1)
{
  v4 = a1;
  sub_100053230(v4, v1, v2, v3);
}

uint64_t sub_1000530E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  v3 = a3(a1, a2);
  v6 = v5;
  v8 = v7;
  if (v4)
  {
    v9 = v3;
    v10 = v4;
    v11 = [objc_opt_self() mainBundle];
    v17._object = 0x800000010057DBA0;
    v12._object = 0x800000010057DB70;
    v17._countAndFlagsBits = 0xD000000000000039;
    v12._countAndFlagsBits = 0xD000000000000027;
    v13._countAndFlagsBits = 0;
    v13._object = 0xE000000000000000;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v12, 0, v11, v13, v17);

    sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_100552210;
    *(v14 + 56) = &type metadata for String;
    v15 = sub_10008EE84();
    *(v14 + 32) = v9;
    *(v14 + 40) = v10;
    *(v14 + 96) = &type metadata for String;
    *(v14 + 104) = v15;
    *(v14 + 64) = v15;
    *(v14 + 72) = v6;
    *(v14 + 80) = v8;
    v6 = String.init(format:_:)();
  }

  return v6;
}

id sub_100053230(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FMListTableViewCell(0, *((swift_isaMask & *v4) + 0x50), *((swift_isaMask & *v4) + 0x58), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  objc_msgSendSuper2(&v7, "prepareForReuse");
  *(v4 + qword_1006B72D0) = 0;
  [*(v4 + qword_1006B72B8) setHidden:*(v4 + qword_1006B72D0)];
  sub_100044E98();
  sub_100233230(0);
  return [*(v4 + qword_1006B72B8) setAlpha:1.0];
}

void sub_100053310()
{
  v12.receiver = v0;
  v12.super_class = type metadata accessor for FMNoLocationViewController();
  objc_msgSendSuper2(&v12, "viewDidLayoutSubviews");
  v1 = *&v0[OBJC_IVAR____TtC6FindMy26FMNoLocationViewController_markerImageViewTopConstraint];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 frame];
      v6 = v5;

      v7 = [v0 view];
      if (v7)
      {
        v8 = v7;
        v9 = v6 / 3.0;
        [v7 safeAreaInsets];
        v11 = v10;

        [v2 setConstant:v9 - v11 + -30.0];
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_100053608(int a1)
{
  v2 = v1;
  v3 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
  v4 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
  if (a1 <= 2)
  {
    switch(a1)
    {
      case 0:
        if (qword_1006AEBE0 != -1)
        {
          goto LABEL_87;
        }

        goto LABEL_28;
      case 1:
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v29 = type metadata accessor for Logger();
        sub_100005B14(v29, qword_1006D4630);
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 0;
          _os_log_impl(&_mh_execute_header, v30, v31, "FMLocationProvider: location manager didChangeAuthorization: RESTRICTED", v32, 2u);
        }

        v33 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation) = 0;

        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) = 0;
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) = 0;
        v34 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
        result = swift_beginAccess();
        v35 = *(v2 + v34);
        if (v35 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v36 = result;
          if (!result)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v36)
          {
            goto LABEL_52;
          }
        }

        if (v36 >= 1)
        {

          for (i = 0; i != v36; ++i)
          {
            if ((v35 & 0xC000000000000001) != 0)
            {
              v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v40 = *(v35 + 8 * i + 32);
            }

            v41 = v40 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v38 = *(v41 + 8);
              ObjectType = swift_getObjectType();
              (*(v38 + 8))(v2, _swiftEmptyArrayStorage, ObjectType, v38);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

          goto LABEL_45;
        }

        __break(1u);
LABEL_93:
        __break(1u);
        return result;
      case 2:
        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v5 = type metadata accessor for Logger();
        sub_100005B14(v5, qword_1006D4630);
        v6 = Logger.logObject.getter();
        v7 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v6, v7))
        {
          v8 = swift_slowAlloc();
          *v8 = 0;
          _os_log_impl(&_mh_execute_header, v6, v7, "FMLocationProvider: location manager didChangeAuthorization: DENIED", v8, 2u);
        }

        v9 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation) = 0;

        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) = 0;
        *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) = 0;
        v10 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
        result = swift_beginAccess();
        v12 = *(v2 + v10);
        if (v12 >> 62)
        {
          result = _CocoaArrayWrapper.endIndex.getter();
          v13 = result;
          if (!result)
          {
            goto LABEL_52;
          }
        }

        else
        {
          v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v13)
          {
            goto LABEL_52;
          }
        }

        if (v13 >= 1)
        {

          for (j = 0; j != v13; ++j)
          {
            if ((v12 & 0xC000000000000001) != 0)
            {
              v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              v17 = *(v12 + 8 * j + 32);
            }

            v18 = v17 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
            if (swift_unknownObjectWeakLoadStrong())
            {
              v15 = *(v18 + 8);
              v16 = swift_getObjectType();
              (*(v15 + 8))(v2, _swiftEmptyArrayStorage, v16, v15);

              swift_unknownObjectRelease();
            }

            else
            {
            }
          }

LABEL_45:

          v3 = 0x1006C3000;
          v4 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
          goto LABEL_52;
        }

        goto LABEL_93;
    }

LABEL_46:
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_100005B14(v42, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v25, v26))
    {
      goto LABEL_51;
    }

    v27 = swift_slowAlloc();
    *v27 = 0;
    v28 = "FMLocationProvider: location manager didChangeAuthorization: UNKNOWN!!!";
    goto LABEL_50;
  }

  if ((a1 - 3) > 1)
  {
    goto LABEL_46;
  }

  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_100005B14(v19, qword_1006D4630);
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&_mh_execute_header, v20, v21, "FMLocationProvider: location manager didChangeAuthorization: AUTHORIZED", v22, 2u);
  }

  *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) = 1;
  v23 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager;
  [*(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager) startUpdatingLocation];
  if (*(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_includeHeading) == 1)
  {
    [*(v2 + v23) startUpdatingHeading];
  }

  while (1)
  {
LABEL_52:
    v43 = v4[326];
    swift_beginAccess();
    v44 = *(v2 + v43);
    if (v44 >> 62)
    {
      v45 = _CocoaArrayWrapper.endIndex.getter();
      if (!v45)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v45 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v45)
      {
        goto LABEL_64;
      }
    }

    if (v45 < 1)
    {
      __break(1u);
      goto LABEL_84;
    }

    v46 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized;

    for (k = 0; k != v45; ++k)
    {
      if ((v44 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v4 = *(v44 + 8 * k + 32);
      }

      v50 = v4 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v48 = *(v50 + 1);
        v49 = swift_getObjectType();
        (*(v48 + 40))(v2, *(v2 + v46), v49, v48);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    v3 = &OBJC_IVAR____TtC6FindMy28FMMultiSettingsStatusRowView_title;
LABEL_64:
    result = *(v2 + *(v3 + 2656));
    if (result)
    {
      result = [result accuracyAuthorization];
      v44 = result != 0;
      v51 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
      *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) = v44;
      if (v44 == v51)
      {
        return result;
      }
    }

    else
    {
      v52 = *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
      v44 = 1;
      *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) = 1;
      if (v52)
      {
        return result;
      }
    }

    v45 = *(v2 + v43);
    if (!(v45 >> 62))
    {
      v3 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        return result;
      }

      goto LABEL_70;
    }

LABEL_84:
    result = _CocoaArrayWrapper.endIndex.getter();
    v3 = result;
    if (!result)
    {
      return result;
    }

LABEL_70:
    if (v3 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_87:
    swift_once();
LABEL_28:
    v24 = type metadata accessor for Logger();
    sub_100005B14(v24, qword_1006D4630);
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      v28 = "FMLocationProvider: location manager didChangeAuthorization: NOT DETERMINED";
LABEL_50:
      _os_log_impl(&_mh_execute_header, v25, v26, v28, v27, 2u);
    }

LABEL_51:
  }

  for (m = 0; m != v3; ++m)
  {
    if ((v45 & 0xC000000000000001) != 0)
    {
      v56 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v56 = *(v45 + 8 * m + 32);
    }

    v57 = v56 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v54 = *(v57 + 8);
      v55 = swift_getObjectType();
      (*(v54 + 32))(v2, v44, v55, v54);

      swift_unknownObjectRelease();
    }

    else
    {
    }
  }
}

uint64_t sub_100053F28(unint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5)
{
  v18 = a1;
  v10 = *(a2 + 40);

  v11 = [v10 overlays];
  sub_10007EBC0(&unk_1006C2490, qword_100562450);
  v12 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13 = sub_1000573C8(v12, a1, &v18);

  if (!swift_unknownObjectWeakLoadStrong())
  {
    goto LABEL_7;
  }

  if (!(a3 >> 62))
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    if (!(a4 >> 62))
    {
      goto LABEL_4;
    }

LABEL_14:

    sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
    v16 = _bridgeCocoaArray<A>(_:)();

    a4 = v16;
    if (!(a5 >> 62))
    {
      goto LABEL_5;
    }

LABEL_15:

    sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
    v17 = _bridgeCocoaArray<A>(_:)();

    a5 = v17;
    goto LABEL_6;
  }

  sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
  v15 = _bridgeCocoaArray<A>(_:)();

  a3 = v15;
  if (a4 >> 62)
  {
    goto LABEL_14;
  }

LABEL_4:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
  if (a5 >> 62)
  {
    goto LABEL_15;
  }

LABEL_5:

  dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
LABEL_6:
  sub_10005529C(a2, a3, a4, a5);

  swift_unknownObjectRelease();
LABEL_7:
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100054578(v18, v13);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

uint64_t sub_1000541BC(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100005B14(v12, qword_1006D4630);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 67109120;
    *(v15 + 4) = v3 & 1;
    _os_log_impl(&_mh_execute_header, v13, v14, "FMStatusBar: changed authorization status? %{BOOL}d", v15, 8u);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v16 = static OS_dispatch_queue.main.getter();
  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  v18 = a1;
  v19 = v28;
  *(v17 + 24) = v28;
  aBlock[4] = sub_10005BB88;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637610;
  v20 = _Block_copy(aBlock);
  v21 = v18;
  v22 = v19;

  v23 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v23, v24, v25);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);

  (*(v27 + 8))(v7, v5);
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_100054538()
{

  return _swift_deallocObject(v0, 32, 7);
}

void sub_100054578(unint64_t a1, unint64_t a2)
{
  v3 = v2;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100005B14(v6, qword_1006D4630);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134218240;
    if (a1 >> 62)
    {
      v10 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 4) = v10;

    *(v9 + 12) = 2048;
    if (a2 >> 62)
    {
      v11 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v9 + 14) = v11;

    _os_log_impl(&_mh_execute_header, v7, v8, "FMMapViewController: data source didUpdateOverlays added: %ld, removed: %ld", v9, 0x16u);
  }

  else
  {
  }

  if (((1 << *(*(v3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource) + 56)) & 0x16) != 0)
  {
    v12 = *(v3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    sub_10007EBC0(&unk_1006C2490, qword_100562450);
    isa = Array._bridgeToObjectiveC()().super.isa;
    [v12 removeOverlays:isa];

    v14.super.isa = Array._bridgeToObjectiveC()().super.isa;
    v15 = "addOverlays:";
    v16 = v12;
  }

  else
  {
    v17 = *(v3 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
    v14.super.isa = [v17 overlays];
    if (!v14.super.isa)
    {
      sub_10007EBC0(&unk_1006C2490, qword_100562450);
      static Array._unconditionallyBridgeFromObjectiveC(_:)();
      v18 = Array._bridgeToObjectiveC()().super.isa;

      v14.super.isa = v18;
    }

    v15 = "removeOverlays:";
    v16 = v17;
  }

  v19 = v14.super.isa;
  [v16 v15];
}

void sub_10005482C()
{
  v87 = sub_10007EBC0(&unk_1006B4970, qword_1005567C0);
  __chkstk_darwin(v87);
  v89 = &v78 - v1;
  v2 = sub_10007EBC0(&qword_1006BEEE8, &unk_1005607D0);
  __chkstk_darwin(v2 - 8);
  v4 = (&v78 - v3);
  v90 = type metadata accessor for FMAnnotationIdentifier(0);
  v5 = *(v90 - 8);
  __chkstk_darwin(v90);
  v80 = (&v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v7);
  v82 = (&v78 - v8);
  __chkstk_darwin(v9);
  v79 = (&v78 - v10);
  __chkstk_darwin(v11);
  v81 = (&v78 - v12);
  __chkstk_darwin(v13);
  v86 = &v78 - v14;
  *&v16 = __chkstk_darwin(v15).n128_u64[0];
  v88 = &v78 - v17;
  v93 = v0;
  v18 = [*(v0 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView) _annotationViews];
  v92 = v4;
  if (v18)
  {
    v19 = v18;
    v20 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v97 = _swiftEmptyArrayStorage;
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = v20 + 32;
      v23 = _swiftEmptyArrayStorage;
      do
      {
        sub_100006004(v22, v96);
        sub_1000072E4(v96, &v94);
        sub_10000905C(0, &unk_1006BEEF0, MKAnnotationView_ptr);
        if ((swift_dynamicCast() & 1) != 0 && v95)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v97 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v97 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v91 = v20;
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            v20 = v91;
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v23 = v97;
        }

        v22 += 32;
        --v21;
      }

      while (v21);
    }

    else
    {

      v23 = _swiftEmptyArrayStorage;
    }

    *&v96[0] = _swiftEmptyArrayStorage;
    v4 = v92;
    v78 = v5;
    if (v23 >> 62)
    {
      goto LABEL_27;
    }

    for (i = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v25 = 0;
      v91 = OBJC_IVAR____TtC6FindMy19FMMapViewController_userTrackingAnnotationView;
      v26 = v23 & 0xC000000000000001;
      v27 = v23 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v26)
        {
          v28 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v25 >= *(v27 + 16))
          {
            goto LABEL_26;
          }

          v28 = *(v23 + 8 * v25 + 32);
        }

        v29 = v28;
        v30 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          break;
        }

        v31 = v23;
        v32 = *(v91 + v93);
        if (v32 && (sub_10000905C(0, &unk_1006BEEF0, MKAnnotationView_ptr), v33 = v29, v34 = v32, v35 = static NSObject.== infix(_:_:)(), v33, v34, (v35 & 1) != 0))
        {
        }

        else
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
        }

        ++v25;
        v4 = v92;
        v23 = v31;
        if (v30 == i)
        {
          goto LABEL_28;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      ;
    }

LABEL_28:

    v5 = v78;
  }

  *&v96[0] = sub_100057564(v36);
  sub_100055E60(v96, sub_1000573A8, sub_100055D0C);

  v37 = *&v96[0];
  if ((*&v96[0] & 0x8000000000000000) != 0 || (*&v96[0] & 0x4000000000000000) != 0)
  {
    v38 = _CocoaArrayWrapper.endIndex.getter();
    if (v38)
    {
      goto LABEL_32;
    }

LABEL_68:

    return;
  }

  v38 = *(*&v96[0] + 16);
  if (!v38)
  {
    goto LABEL_68;
  }

LABEL_32:
  if (v38 >= 1)
  {
    v39 = 0;
    v40 = v37 & 0xC000000000000001;
    v91 = (v5 + 48);
    v41 = 500.0;
    v42 = &selRef_initWithScrollView_edge_;
    v43 = &selRef__enter3DMode;
    v85 = v37;
    v84 = v38;
    v83 = v37 & 0xC000000000000001;
    while (1)
    {
      if (v40)
      {
        v45 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v45 = *(v37 + 8 * v39 + 32);
      }

      v47 = v45;
      *&v46 = v41;
      [v45 v42[482]];
      if (![v47 v43[216]])
      {
        goto LABEL_35;
      }

      type metadata accessor for FMAnnotation();
      v48 = swift_dynamicCastClass();
      if (v48)
      {
        break;
      }

      swift_unknownObjectRelease();
LABEL_35:
      ++v39;
      v41 = v41 + 1.0;
      LODWORD(v44) = 1148846080;
      [v47 setSelectedZPriority:v44];

      if (v38 == v39)
      {
        goto LABEL_68;
      }
    }

    v49 = v48;
    sub_1003F898C(v4);
    if ((*v91)(v4, 1, v90) == 1)
    {
      swift_unknownObjectRelease();
      sub_100012DF0(v4, &qword_1006BEEE8, &unk_1005607D0);
      v42 = &selRef_initWithScrollView_edge_;
LABEL_65:
      v43 = &selRef__enter3DMode;
      goto LABEL_35;
    }

    v50 = v88;
    v51 = sub_10005701C(v4, v88, type metadata accessor for FMAnnotationIdentifier);
    v52 = v86;
    (*((swift_isaMask & *v49) + 0x190))(v51);
    v53 = *(v87 + 48);
    v54 = v89;
    sub_100027BE0(v50, v89, type metadata accessor for FMAnnotationIdentifier);
    sub_10005701C(v52, v54 + v53, type metadata accessor for FMAnnotationIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload == 4)
    {
      v66 = v89;
      v67 = v82;
      sub_100027BE0(v89, v82, type metadata accessor for FMAnnotationIdentifier);
      v69 = *v67;
      v68 = v67[1];

      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v70 = v80;
        sub_100027BE0(v66 + v53, v80, type metadata accessor for FMAnnotationIdentifier);
        v72 = *v70;
        v71 = v70[1];

        v73 = v69 == v72;
        v38 = v84;
        v40 = v83;
        if (!v73 || v68 != v71)
        {
          goto LABEL_60;
        }

        goto LABEL_53;
      }

      sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
    }

    else
    {
      if (EnumCaseMultiPayload == 2)
      {
        v56 = v89;
        v57 = v81;
        sub_100027BE0(v89, v81, type metadata accessor for FMAnnotationIdentifier);
        v59 = *v57;
        v58 = v57[1];
        v60 = swift_getEnumCaseMultiPayload();
        v38 = v84;
        v40 = v83;
        if (v60 == 4)
        {
          v78 = v59;
          v61 = v79;
          sub_100027BE0(v56 + v53, v79, type metadata accessor for FMAnnotationIdentifier);
          v62 = v58;
          v64 = *v61;
          v63 = v61[1];
          v65 = v78;

          if (v65 != v64 || v62 != v63)
          {
LABEL_60:
            v74 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v42 = &selRef_initWithScrollView_edge_;
            if (v74)
            {
              goto LABEL_61;
            }

            sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
            v4 = v92;
LABEL_59:
            swift_unknownObjectRelease();
            sub_100012DF0(v89, &unk_1006B4970, qword_1005567C0);
LABEL_64:
            v37 = v85;
            goto LABEL_65;
          }

LABEL_53:

          v42 = &selRef_initWithScrollView_edge_;
LABEL_61:
          v75 = [v47 isSelected];
          LODWORD(v76) = 1148829696;
          if (v75)
          {
            *&v76 = 1000.0;
          }

          [v47 v42[482]];
          swift_unknownObjectRelease();
          sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
          v77 = v89;
          sub_10002A100(v89 + v53, type metadata accessor for FMAnnotationIdentifier);
          sub_10002A100(v77, type metadata accessor for FMAnnotationIdentifier);
          v4 = v92;
          goto LABEL_64;
        }

        sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);

LABEL_58:
        v42 = &selRef_initWithScrollView_edge_;
        goto LABEL_59;
      }

      sub_10002A100(v88, type metadata accessor for FMAnnotationIdentifier);
    }

    v38 = v84;
    v40 = v83;
    goto LABEL_58;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_10005529C(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v5 = v4;
  v46 = a1;
  v9 = type metadata accessor for FMFConfigValue();
  v42 = *(v9 - 8);
  v43 = v9;
  __chkstk_darwin(v9);
  v41 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMSelectedSection(0);
  v45 = *(v11 - 8);
  v12 = *(v45 + 64);
  __chkstk_darwin(v11 - 8);
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v48 = &v40 - v15;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100005B14(v16, qword_1006D4630);

  v44 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  v20 = os_log_type_enabled(v18, v19);
  v47 = a2 >> 62;
  if (v20)
  {
    v21 = swift_slowAlloc();
    *v21 = 134218496;
    if (a2 >> 62)
    {
      v22 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 4) = v22;

    *(v21 + 12) = 2048;
    if (a3 >> 62)
    {
      v23 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 14) = v23;

    *(v21 + 22) = 2048;
    if (a4 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v21 + 24) = v24;

    _os_log_impl(&_mh_execute_header, v18, v19, "*x* FMMapViewController: didUpdateAnnotations add: %ld remove: %ld refresh: %ld", v21, 0x20u);
  }

  else
  {
  }

  v25 = *(*&v5[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator] + 56);
  v26 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  sub_100027BE0(v25 + v26, v48, type metadata accessor for FMSelectedSection);
  v27 = &v5[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration];
  if (v5[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration + 8] == 1)
  {
    v29 = v41;
    v28 = v42;
    v30 = v43;
    (*(v42 + 104))(v41, enum case for FMFConfigValue.liveAnimationInterval(_:), v43);
    aBlock[6] = 0x4000000000000000;
    v27 = aBlock;
    FMFGlobalConfig<A>(_:fallback:)();
    (*(v28 + 8))(v29, v30);
  }

  if (*(v46 + 57))
  {
    v31 = *v27;
  }

  else
  {
    v31 = 0.2;
  }

  v32 = objc_opt_self();
  sub_100027BE0(v48, v13, type metadata accessor for FMSelectedSection);
  v33 = (*(v45 + 80) + 48) & ~*(v45 + 80);
  v34 = swift_allocObject();
  v34[2] = v5;
  v34[3] = a3;
  v34[4] = a2;
  v34[5] = a4;
  sub_10005701C(v13, v34 + v33, type metadata accessor for FMSelectedSection);
  aBlock[4] = sub_1000561E4;
  aBlock[5] = v34;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_10063D068;
  v35 = _Block_copy(aBlock);

  v5;

  [v32 animateWithDuration:196614 delay:v35 options:0 animations:v31 completion:0.0];
  _Block_release(v35);
  sub_10005482C();
  if (v47)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (a3 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_23;
    }
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_23;
  }

  if (a4 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return sub_10002A100(v48, type metadata accessor for FMSelectedSection);
    }
  }

  else if (!*((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return sub_10002A100(v48, type metadata accessor for FMSelectedSection);
  }

LABEL_23:
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "FMMapViewController: didUpdateAnnotations center camera", v38, 2u);
  }

  sub_1000202F4(1, 0, 0);
  return sub_10002A100(v48, type metadata accessor for FMSelectedSection);
}

uint64_t sub_1000558F4()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 48) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0, &qword_100558D50) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100055C1C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_10001FF90();
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1000577BC(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

void sub_100055D0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_10000905C(0, &unk_1006BEEF0, MKAnnotationView_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_100401C68(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_100400ED4(0, v2, 1, a1);
  }
}

uint64_t sub_100055E60(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = a2(v6);
    *a1 = v6;
  }

  v8 = *(v6 + 16);
  v10[0] = v6 + 32;
  v10[1] = v8;
  a3(v10);
  return specialized ContiguousArray._endMutation()();
}

uint64_t sub_100055EF4(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  v23 = a5;
  v24 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled;
  *(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isUserActionEnabled) = 0;
  v8 = *(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView);
  sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v8 removeAnnotations:isa];

  v10 = Array._bridgeToObjectiveC()().super.isa;
  [v8 addAnnotations:v10];

  if (a4 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v12 = 0;
    while ((a4 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      v25 = v13;
      sub_1003FF568(&v25, a1);
      swift_unknownObjectRelease();
      ++v12;
      if (v14 == i)
      {
        goto LABEL_14;
      }
    }

    if (v12 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v13 = *(a4 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v14 = v12 + 1;
    if (!__OFADD__(v12, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

LABEL_14:
  v25 = a3;

  sub_100055C1C(v15);
  v16 = v25;
  if (v25 >> 62)
  {
    v20 = v25;
    v21 = _CocoaArrayWrapper.endIndex.getter();
    v16 = v20;
    v17 = v24;
    if (!v21)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v17 = v24;
    if (!*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_17;
    }
  }

  if ((*(a1 + OBJC_IVAR____TtC6FindMy19FMMapViewController_isPOISelected) & 1) == 0)
  {
    __chkstk_darwin(v16);
    v22[2] = v23;
    v22[3] = a1;
    sub_100190414(sub_100406810, v22, v19);

    goto LABEL_19;
  }

LABEL_17:

LABEL_19:
  *(a1 + v17) = 1;
  return result;
}

uint64_t sub_1000561E4()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0 + ((*(v1 + 80) + 48) & ~*(v1 + 80));

  return sub_100055EF4(v2, v3, v4, v5, v6);
}

void sub_10005624C(unint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100005B14(v9, qword_1006D4630);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  v12 = a1 >> 62;
  if (!os_log_type_enabled(v10, v11))
  {

    goto LABEL_14;
  }

  v34 = v3;
  v3 = swift_slowAlloc();
  v2 = swift_slowAlloc();
  v39 = v2;
  *v3 = 136315138;
  if (!v12)
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v35 = v6;
    v36 = v5;
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_12:
    v17 = 0;
    v19 = 0;
    goto LABEL_13;
  }

  v20 = _CocoaArrayWrapper.endIndex.getter();
  v35 = v6;
  v36 = v5;
  if (!v20)
  {
    goto LABEL_12;
  }

LABEL_6:
  if ((a1 & 0xC000000000000001) != 0)
  {
    goto LABEL_25;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    for (i = *(a1 + 32); ; i = specialized _ArrayBuffer._getElementSlowPath(_:)())
    {
      v15 = i;
      v16 = [i debugDescription];

      v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

LABEL_13:
      v37 = v17;
      v38 = v19;
      sub_10007EBC0(&qword_1006AF8F0, &qword_100555D20);
      v21 = String.init<A>(describing:)();
      v23 = sub_100005B4C(v21, v22, &v39);

      *(v3 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v10, v11, "FMLocationProvider: location manager didUpdateLocations: %s", v3, 0xCu);
      sub_100006060(v2);

      v6 = v35;
      v5 = v36;
      v3 = v34;
LABEL_14:
      v10 = v3;
      sub_100056760();
      if (v12)
      {
        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          return;
        }
      }

      else if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        return;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v24 = *(a1 + 32);
        goto LABEL_19;
      }

      __break(1u);
LABEL_25:
      ;
    }

    v24 = specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_19:
    v25 = v24;
    v26 = swift_allocObject();
    v26[2] = v25;
    v26[3] = v3;
    v26[4] = a1;
    v27 = v25;

    v28 = v27;
    v3;
    UUID.init()();
    UUID.uuidString.getter();
    (*(v6 + 8))(v8, v5);
    type metadata accessor for FMLocationShiftingRequest();
    swift_allocObject();
    v29 = v28;
    v30 = FMLocationShiftingRequest.init(identifier:location:)();
    sub_10007EBC0(&qword_1006AFC30, &unk_1005523E0);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1005528C0;
    *(v31 + 32) = v30;
    v32 = swift_allocObject();
    v32[2] = v29;
    v32[3] = sub_10052A4CC;
    v32[4] = v26;
    v33 = v29;

    dispatch thunk of FMLocationShifter.shift(requests:completion:)();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000566D8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100056720()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_100056760()
{
  v1 = [objc_opt_self() sharedInstance];
  v2 = [v1 isInternalBuild];

  if (v2)
  {
    v3 = [objc_opt_self() standardUserDefaults];
    v4 = String._bridgeToObjectiveC()();
    v5 = [v3 BOOLForKey:v4];

    if (v5)
    {
      v6 = *(v0 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_locationManager);
      if (v6)
      {
        v7 = *(v0 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_poiFidelity);
        v8 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v11[4] = sub_10052A320;
        v11[5] = v8;
        v11[0] = _NSConcreteStackBlock;
        v11[1] = 1107296256;
        v11[2] = sub_10052A1BC;
        v11[3] = &unk_100644DB0;
        v9 = _Block_copy(v11);
        v10 = v6;

        [v10 _fetchPlaceInferencesWithFidelityPolicy:v7 handler:v9];
        _Block_release(v9);
      }
    }
  }
}

uint64_t sub_100056910()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000569D0(char a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for FMMainViewController();
  v33.receiver = v4;
  v33.super_class = v17;
  objc_msgSendSuper2(&v33, "viewDidAppear:", a1 & 1);
  v18 = *&v4[OBJC_IVAR____TtC6FindMy24FMMediatedViewController_mediator];
  if (sub_100056EF8())
  {
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    (*(v14 + 104))(v16, enum case for DispatchQoS.QoSClass.default(_:), v13);
    v28 = static OS_dispatch_queue.global(qos:)();
    (*(v14 + 8))(v16, v13);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v18;
    *(v20 + 24) = v19;
    aBlock[4] = sub_1000573C0;
    aBlock[5] = v20;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_1006384E0;
    v21 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v28;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v21);

    (*(v7 + 8))(v9, v6);
    (*(v29 + 8))(v12, v30);
  }

  else
  {
    v23 = *(v18 + 16);
    v24 = swift_allocObject();
    *(v24 + 16) = v4;
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v25 = v23;
    v26 = v4;
    v27 = static OS_dispatch_queue.main.getter();
    sub_100421C3C(sub_100357F10, v24, v27);
  }
}

uint64_t sub_100056E44()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056E7C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100056EB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

id sub_100056EF8()
{
  static SystemInfo.isKoreaSKU.getter();
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 BOOLForKey:v1];

  return v2;
}

uint64_t sub_100056FB4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10005701C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void *sub_100057098(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &aBlock[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100057590(v11, v12, v13);
  if (result == 3 || result == 0)
  {
    sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
    v16 = static OS_dispatch_queue.main.getter();
    v17 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = sub_100357F38;
    aBlock[5] = v17;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100004AE4;
    aBlock[3] = &unk_100638508;
    v19 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_10000A390(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
    sub_100037970();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v4 + 8))(v6, v3);
    return (*(v8 + 8))(v10, v7);
  }

  return result;
}

void *sub_1000573C8(unint64_t a1, unint64_t a2, unint64_t *a3)
{
  v15 = _swiftEmptyArrayStorage;
  if (a1 >> 62)
  {
LABEL_18:
    v5 = _CocoaArrayWrapper.endIndex.getter();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      v7 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_15:
            __break(1u);
LABEL_16:

            swift_unknownObjectRelease();
            return v7;
          }
        }

        else
        {
          if (v6 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_18;
          }

          v8 = *(a1 + 8 * v6 + 32);
          swift_unknownObjectRetain();
          v9 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_15;
          }
        }

        v14 = v8;
        sub_1004B5640(&v14, a2, a3, &v13);
        if (v3)
        {
          goto LABEL_16;
        }

        swift_unknownObjectRelease();
        if (v13)
        {
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v7 = v15;
        }

        ++v6;
        if (v9 == v5)
        {
          return v7;
        }
      }
    }
  }

  return _swiftEmptyArrayStorage;
}

void *sub_100057590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v16 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_100005B4C(0xD000000000000022, 0x80000001005983A0, &v16);
    _os_log_impl(&_mh_execute_header, v9, v10, "NotificationSettingsObserver: %s", v11, 0xCu);
    sub_100006060(v12);
  }

  v13 = static DispatchWorkItemFlags.barrier.getter();
  __chkstk_darwin(v13);
  *(&v15 - 2) = v4;
  type metadata accessor for UNAuthorizationStatus(0);
  OS_dispatch_queue.sync<A>(flags:execute:)();
  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t sub_1000577BC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_10043C16C(&unk_1006C0098, &qword_1006C0090, &qword_100561C98);
          for (i = 0; i != v6; ++i)
          {
            sub_10007EBC0(&qword_1006C0090, &qword_100561C98);
            v9 = sub_1001687BC(v13, i, a3);
            v11 = *v10;
            swift_unknownObjectRetain();
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_10007EBC0(&qword_1006C1DD0, &qword_100561C90);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

double sub_100057A08(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v31 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v6 = &v30 - v5;
  __chkstk_darwin(v7);
  v9 = &v30 - v8;
  v10 = [objc_opt_self() standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 stringForKey:v11];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0;
  }

  v16 = OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator;
  v17 = qword_1006AECC0;
  v18 = *(*(a1 + OBJC_IVAR____TtC6FindMy23FMInitialCardController_mediator) + 16);
  if (v17 != -1)
  {
    v29 = v18;
    swift_once();
    v18 = v29;
  }

  v19 = byte_1006D4AD1;

  swift_storeEnumTagMultiPayload();
  if (v15)
  {
    v32._countAndFlagsBits = v13;
    v32._object = v15;
    if (sub_10001C4B4(v32) != 5)
    {
      sub_100057FEC();
      sub_100058438(v6, v9);
    }
  }

  if (!v19 || *(*(*(a1 + v16) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v20 = sub_10005F7D0(v9, v6);
    sub_10002A1C0(v6, type metadata accessor for FMSelectedSection);
    if (v20)
    {
      sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
      swift_storeEnumTagMultiPayload();
    }
  }

  if (*(*(*(a1 + v16) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted) == 1)
  {
    swift_storeEnumTagMultiPayload();
    v21 = sub_10005F7D0(v9, v6);
    sub_10002A1C0(v6, type metadata accessor for FMSelectedSection);
    if (v21)
    {
      sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);
      swift_storeEnumTagMultiPayload();
    }
  }

  v22 = *(*(a1 + v16) + 56);
  sub_100027CB0(v9, v6, type metadata accessor for FMSelectedSection);
  v23 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v24 = v31;
  sub_100027CB0(v22 + v23, v31, type metadata accessor for FMSelectedSection);
  swift_beginAccess();

  sub_100058530(v6, v22 + v23);
  swift_endAccess();
  sub_100058594(v24);

  sub_10002A1C0(v24, type metadata accessor for FMSelectedSection);
  sub_10002A1C0(v6, type metadata accessor for FMSelectedSection);
  v25 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v26 = swift_allocObject();
  swift_weakInit();
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = sub_100485C24;
  v27[4] = v25;

  swift_retain_n();

  sub_1000E8790(sub_100485C2C, v27);

  sub_10002A1C0(v9, type metadata accessor for FMSelectedSection);

  return result;
}

uint64_t sub_100057F04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057F3C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100057F74()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100057FEC()
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = String.init<A>(describing:)();
    v9 = sub_100005B4C(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMRestoreState: selection(%s)...", v5, 0xCu);
    sub_100006060(v6);
  }

  type metadata accessor for FMSelectedSection(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_10005816C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_isUpToDate;
  v5 = *(a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_isUpToDate);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  if (v5 == 1)
  {
    if (v8)
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "NotificationSettingsObserver: Property isUpToDate", v9, 2u);
    }

    v10 = (a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus);
  }

  else
  {
    if (v8)
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "NotificationSettingsObserver: Not Initialized, will force fetch", v11, 2u);
    }

    v12 = [objc_opt_self() currentNotificationCenter];
    v13 = [v12 notificationSettings];

    v14 = v13;
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 134217984;
      *(v17 + 4) = [v14 authorizationStatus];

      _os_log_impl(&_mh_execute_header, v15, v16, "NotificationSettingsObserver: Set Property %ld", v17, 0xCu);
    }

    else
    {

      v15 = v14;
    }

    v18 = [v14 authorizationStatus];
    v10 = (a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus);
    *(a1 + OBJC_IVAR____TtC6FindMy28NotificationSettingsObserver_internalAuthorizationStatus) = v18;
    *(a1 + v4) = 1;
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "NotificationSettingsObserver: Did finish force fetch, returning", v21, 2u);
    }
  }

  *a2 = *v10;
}

uint64_t sub_100058438(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_100058530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void sub_100058594(unint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006B2B70, &unk_1005559A0);
  __chkstk_darwin(v4 - 8);
  v6 = &v92 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v92 - v8;
  v10 = type metadata accessor for FMSelectedSection(0);
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v93 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v94 = &v92 - v14;
  __chkstk_darwin(v15);
  v17 = (&v92 - v16);
  __chkstk_darwin(v18);
  v99 = &v92 - v19;
  __chkstk_darwin(v20);
  v100 = &v92 - v21;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  v23 = sub_100005B14(v22, qword_1006D4630);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  v26 = os_log_type_enabled(v24, v25);
  v101 = v2;
  v97 = v9;
  v98 = v6;
  v96 = v11;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v106[0] = v28;
    *v27 = 136315138;
    v29 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
    swift_beginAccess();
    v95 = v17;
    v30 = v101;
    sub_100027AA8(v101 + v29, v100, type metadata accessor for FMSelectedSection);
    v31 = String.init<A>(describing:)();
    v33 = v10;
    v34 = sub_100005B4C(v31, v32, v106);
    v2 = v30;
    v17 = v95;

    *(v27 + 4) = v34;
    v10 = v33;
    _os_log_impl(&_mh_execute_header, v24, v25, "FMSelectionController: currentSelectedSection update + %s", v27, 0xCu);
    sub_100006060(v28);
  }

  v35 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  swift_beginAccess();
  v36 = v99;
  sub_100027AA8(v2 + v35, v99, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    v38 = v100;
    if (EnumCaseMultiPayload <= 2)
    {
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload == 2)
        {
          sub_100029FE0(v36, type metadata accessor for FMSelectedSection);
          goto LABEL_16;
        }

LABEL_13:
        sub_100029FE0(v36, type metadata accessor for FMSelectedSection);
        goto LABEL_29;
      }

      v39 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
      sub_100012DF0(v36 + *(v39 + 48), &qword_1006B07D0, qword_100552820);
      v40 = type metadata accessor for FMIPDevice();
      (*(*(v40 - 8) + 8))(v36, v40);
LABEL_24:
      if (qword_1006AECE0 != -1)
      {
        goto LABEL_58;
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 11)
      {
        goto LABEL_13;
      }

      goto LABEL_16;
    }

    sub_100029FE0(v36, type metadata accessor for FMSelectedSection);
LABEL_28:
    if (FMIPItemsTabEnabled.getter())
    {
      goto LABEL_29;
    }

    goto LABEL_33;
  }

  v38 = v100;
  if ((EnumCaseMultiPayload - 17) < 2)
  {
    goto LABEL_28;
  }

  if (EnumCaseMultiPayload == 12)
  {
    goto LABEL_24;
  }

  if (EnumCaseMultiPayload != 15)
  {
    goto LABEL_13;
  }

LABEL_16:
  if (qword_1006AECC0 != -1)
  {
    swift_once();
  }

  if (byte_1006D4AD1 != 1)
  {
    goto LABEL_33;
  }

  if (qword_1006AECD8 != -1)
  {
    swift_once();
  }

  if (byte_1006D4AD4 == 1)
  {
LABEL_33:
    swift_storeEnumTagMultiPayload();
    swift_beginAccess();
    sub_100058438(v38, v2 + v35);
    swift_endAccess();
    return;
  }

  while (1)
  {
LABEL_29:
    sub_100027AA8(a1, v17, type metadata accessor for FMSelectedSection);
    v41 = swift_getEnumCaseMultiPayload();
    if (v41 == 18 || v41 == 11)
    {
      v42 = a1;
      v43 = v94;
      sub_100027AA8(v42, v94, type metadata accessor for FMSelectedSection);
      v44 = Logger.logObject.getter();
      v45 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v105[0] = v47;
        *v46 = 136315138;
        sub_100027AA8(v43, v38, type metadata accessor for FMSelectedSection);
        v48 = String.init<A>(describing:)();
        v99 = v10;
        v49 = v48;
        v50 = v43;
        v51 = v38;
        v52 = v23;
        v54 = v53;
        sub_100029FE0(v50, type metadata accessor for FMSelectedSection);
        v55 = sub_100005B4C(v49, v54, v105);
        v23 = v52;
        v38 = v51;

        *(v46 + 4) = v55;
        v10 = v99;
        _os_log_impl(&_mh_execute_header, v44, v45, "FMSelectionController: ignore previous selection %s", v46, 0xCu);
        sub_100006060(v47);
      }

      else
      {

        sub_100029FE0(v43, type metadata accessor for FMSelectedSection);
      }

      v17 = v97;
      v56 = v98;
      v57 = v96;
      v58 = (&xmmword_1006D3FF8 + 8);
    }

    else
    {
      v95 = v17;
      v59 = v93;
      sub_100027AA8(a1, v93, type metadata accessor for FMSelectedSection);
      v60 = Logger.logObject.getter();
      v61 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v60, v61))
      {
        v62 = swift_slowAlloc();
        v63 = swift_slowAlloc();
        v105[0] = v63;
        *v62 = 136315138;
        sub_100027AA8(v59, v38, type metadata accessor for FMSelectedSection);
        v64 = String.init<A>(describing:)();
        v99 = v10;
        v65 = v64;
        v66 = v59;
        v67 = a1;
        v68 = v38;
        v69 = v23;
        v71 = v70;
        sub_100029FE0(v66, type metadata accessor for FMSelectedSection);
        v72 = sub_100005B4C(v65, v71, v105);
        v23 = v69;
        v38 = v68;
        a1 = v67;

        *(v62 + 4) = v72;
        v10 = v99;
        _os_log_impl(&_mh_execute_header, v60, v61, "FMSelectionController: setting previous selection to %s", v62, 0xCu);
        sub_100006060(v63);
      }

      else
      {

        sub_100029FE0(v59, type metadata accessor for FMSelectedSection);
      }

      v17 = v97;
      v56 = v98;
      v57 = v96;
      sub_100027AA8(a1, v38, type metadata accessor for FMSelectedSection);
      v58 = &xmmword_1006D3FF8 + 8;
      v73 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
      v74 = v101;
      swift_beginAccess();
      v75 = v74 + v73;
      v2 = v74;
      sub_100058530(v38, v75);
      swift_endAccess();
      sub_1000596D8();
      sub_100029FE0(v38, type metadata accessor for FMSelectedSection);
      sub_100029FE0(v95, type metadata accessor for FMSelectedSection);
    }

    sub_100027AA8(v2 + v35, v17, type metadata accessor for FMSelectedSection);
    v76 = *(v57 + 56);
    v76(v17, 0, 1, v10);
    v77 = *(v58 + 93);
    swift_beginAccess();
    sub_100027AA8(v101 + v77, v56, type metadata accessor for FMSelectedSection);
    v76(v56, 0, 1, v10);
    v2 = v101;
    sub_1000598FC(v17, v56);
    sub_100012DF0(v56, &qword_1006B2B70, &unk_1005559A0);
    sub_100012DF0(v17, &qword_1006B2B70, &unk_1005559A0);

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v102 = v17;
      v103 = 0;
      *v80 = 136315138;
      v104 = 0xE000000000000000;
      sub_100027AA8(v2 + v35, v38, type metadata accessor for FMSelectedSection);
      _print_unlocked<A, B>(_:_:)();
      sub_100029FE0(v38, type metadata accessor for FMSelectedSection);
      v10 = sub_100005B4C(v103, v104, &v102);

      *(v80 + 4) = v10;
      _os_log_impl(&_mh_execute_header, v78, v79, "FMSelectionController: currentSelection changed  %s", v80, 0xCu);
      sub_100006060(v17);
    }

    swift_beginAccess();
    a1 = *(v2 + 16);
    if (a1 >> 62)
    {
      v81 = _CocoaArrayWrapper.endIndex.getter();
      if (!v81)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v81 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v81)
      {
        goto LABEL_54;
      }
    }

    if (v81 >= 1)
    {
      break;
    }

    __break(1u);
LABEL_58:
    swift_once();
LABEL_25:
    if (byte_1006D4AD5 == 1)
    {
      goto LABEL_33;
    }
  }

  v99 = v35;

  for (i = 0; i != v81; ++i)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v87 = *(a1 + 8 * i + 32);
    }

    v88 = v87 + OBJC_IVAR____TtC6FindMy23FMSelectionSubscription_subscriber;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v83 = *(v88 + 8);
      ObjectType = swift_getObjectType();
      v85 = v100;
      v86 = v101;
      sub_100027AA8(v101 + v99, v100, type metadata accessor for FMSelectedSection);
      (*(v83 + 8))(v86, v85, ObjectType, v83);

      swift_unknownObjectRelease();
      sub_100029FE0(v85, type metadata accessor for FMSelectedSection);
    }

    else
    {
    }
  }

  v38 = v100;
  v2 = v101;
  v35 = v99;
LABEL_54:
  sub_100027AA8(v2 + v35, v38, type metadata accessor for FMSelectedSection);
  sub_100245634(v38);
  sub_100029FE0(v38, type metadata accessor for FMSelectedSection);
  v89 = [objc_opt_self() standardUserDefaults];
  v90 = String._bridgeToObjectiveC()();

  v91 = String._bridgeToObjectiveC()();
  [v89 setObject:v90 forKey:v91];
}

uint64_t sub_100059400(void *a1)
{
  v2 = v1;
  v3 = *(v1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentHeading);
  *(v2 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentHeading) = a1;
  v4 = a1;

  v5 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  result = swift_beginAccess();
  v7 = *(v2 + v5);
  if (v7 >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    v8 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v8)
    {
      return result;
    }
  }

  if (v8 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v8; ++i)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v12 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v12 = *(v7 + 8 * i + 32);
      }

      v13 = v12 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v10 = *(v13 + 8);
        ObjectType = swift_getObjectType();
        (*(v10 + 16))(v2, v4, ObjectType, v10);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }

  return result;
}

void sub_100059588(uint64_t a1, id *a2, BOOL *a3)
{
  v5 = [objc_opt_self() sharedConnection];
  if (v5)
  {
    v6 = v5;
    v7 = *a2;
    v8 = [v6 effectiveBoolValueForSetting:v7];

    v9 = v8 == 2;
  }

  else
  {
    v9 = 0;
  }

  *a3 = v9;
}

void sub_10005963C(void *a1, uint64_t a2)
{
  v4 = [objc_opt_self() currentRunLoop];
  [v4 addTimer:a1 forMode:NSRunLoopCommonModes];

  v6 = *(a2 + 32);
  *(a2 + 32) = a1;
  v5 = a1;
}

void sub_1000596D8()
{
  v1 = v0;
  v2 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100005B14(v5, qword_1006D4630);

  v15 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    v9 = OBJC_IVAR____TtC6FindMy21FMSelectionController_previousSelectedSection;
    swift_beginAccess();
    sub_100027AA8(v1 + v9, v4, type metadata accessor for FMSelectedSection);
    v10 = String.init<A>(describing:)();
    v12 = sub_100005B4C(v10, v11, &v16);

    *(v7 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v15, v6, "FMSelectionController: previousSelectedSection update - %s", v7, 0xCu);
    sub_100006060(v8);
  }

  else
  {
    v13 = v15;
  }
}

void sub_1000598FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v322 = *(v4 - 8);
  v323 = v4;
  __chkstk_darwin(v4);
  v321 = &v319[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for FMSelectedSection(0);
  v331 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v319[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v9);
  v325 = &v319[-v10];
  __chkstk_darwin(v11);
  v326 = &v319[-v12];
  __chkstk_darwin(v13);
  v324 = &v319[-v14];
  __chkstk_darwin(v15);
  v329 = &v319[-v16];
  v17 = sub_10007EBC0(&qword_1006B2B70, &unk_1005559A0);
  __chkstk_darwin(v17);
  v330 = &v319[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v327 = &v319[-v20];
  __chkstk_darwin(v21);
  v23 = &v319[-v22];
  __chkstk_darwin(v24);
  v26 = &v319[-v25];
  __chkstk_darwin(v27);
  v29 = &v319[-v28];
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v333 = v8;
  v30 = type metadata accessor for Logger();
  v31 = sub_100005B14(v30, qword_1006D4630);
  *&v332 = a1;
  sub_10005B504(a1, v29);
  v328 = a2;
  sub_10005B504(a2, v26);
  v334 = v31;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  v34 = os_log_type_enabled(v32, v33);
  v335 = v6;
  if (v34)
  {
    v35 = swift_slowAlloc();
    v320 = v33;
    v36 = v35;
    v339[0] = swift_slowAlloc();
    *v36 = 136315394;
    sub_10005B504(v29, v23);
    v37 = String.init<A>(describing:)();
    v39 = v38;
    sub_100012DF0(v29, &qword_1006B2B70, &unk_1005559A0);
    v40 = sub_100005B4C(v37, v39, v339);

    *(v36 + 4) = v40;
    *(v36 + 12) = 2080;
    sub_10005B504(v26, v23);
    v41 = String.init<A>(describing:)();
    v43 = v42;
    sub_100012DF0(v26, &qword_1006B2B70, &unk_1005559A0);
    v44 = sub_100005B4C(v41, v43, v339);

    *(v36 + 14) = v44;
    v6 = v335;
    _os_log_impl(&_mh_execute_header, v32, v320, "FMSelectionController: saveInfo: selected: %s, previousSelected: %s", v36, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100012DF0(v26, &qword_1006B2B70, &unk_1005559A0);
    sub_100012DF0(v29, &qword_1006B2B70, &unk_1005559A0);
  }

  v45 = v327;
  sub_10005B504(v328, v327);
  v46 = *(v331 + 48);
  v47 = v46(v45, 1, v6);
  v48 = v332;
  if (v47 == 1)
  {
    sub_100012DF0(v45, &qword_1006B2B70, &unk_1005559A0);
    goto LABEL_69;
  }

  v49 = v45;
  v50 = v329;
  sub_10005B574(v49, v329);
  v51 = v324;
  sub_100027AA8(v50, v324, type metadata accessor for FMSelectedSection);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 11)
  {
    if (!EnumCaseMultiPayload)
    {
      v91 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
      sub_100012DF0(&v51[*(v91 + 48)], &qword_1006B07D0, qword_100552820);
      v92 = type metadata accessor for FMIPDevice();
      (*(*(v92 - 8) + 8))(v51, v92);
LABEL_35:
      v93 = FMTabInfoLastVisited.getter();
      v95 = v94;
      v96 = v336;
      swift_beginAccess();
      v97 = v96[3];
      if (*(v97 + 16) && (, v98 = sub_10000726C(v93, v95), v100 = v99, , (v100 & 1) != 0))
      {
        v101 = *(*(v97 + 56) + 8 * v98);

        if (v101 != -1.0)
        {
          v102 = FMTabInfoTimeSpent.getter();
          v104 = v103;
          v105 = v336[3];
          if (*(v105 + 16) && (v106 = v102, , v107 = sub_10000726C(v106, v104), v109 = v108, , (v109 & 1) != 0))
          {
            v110 = *(*(v105 + 56) + 8 * v107);

            if (v110 == -1.0)
            {
              v111 = 0.0;
            }

            else
            {
              v111 = v110;
            }
          }

          else
          {

            v111 = 0.0;
          }

          v287 = FMTabInfoTimeSpent.getter();
          v289 = v288;
          v290 = v321;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v292 = v291;
          (*(v322 + 8))(v290, v323);
          v293 = v336;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v338[0] = v293[3];
          v293[3] = 0x8000000000000000;
          sub_10005B5E4(v287, v289, isUniquelyReferenced_nonNull_native, v111 + v292 - v101);

          v293[3] = v338[0];
          goto LABEL_162;
        }
      }

      else
      {
      }

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v130, v131))
      {
        goto LABEL_67;
      }

      v132 = swift_slowAlloc();
      *v132 = 0;
      v133 = "FMSelectionController: not recording time spent on devices, we haven't visited it";
LABEL_66:
      _os_log_impl(&_mh_execute_header, v130, v131, v133, v132, 2u);

      goto LABEL_67;
    }

    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload != 3)
      {
        goto LABEL_43;
      }

      sub_100029FE0(v51, type metadata accessor for FMSelectedSection);
      goto LABEL_26;
    }

    sub_100029FE0(v51, type metadata accessor for FMSelectedSection);
LABEL_45:
    v112 = FMTabInfoLastVisited.getter();
    v114 = v113;
    v115 = v336;
    swift_beginAccess();
    v116 = v115[5];
    if (*(v116 + 16) && (, v117 = sub_10000726C(v112, v114), v119 = v118, , (v119 & 1) != 0))
    {
      v120 = *(*(v116 + 56) + 8 * v117);

      if (v120 != -1.0)
      {
        v121 = FMTabInfoTimeSpent.getter();
        v123 = v122;
        v124 = v336[5];
        if (*(v124 + 16) && (v125 = v121, , v126 = sub_10000726C(v125, v123), v128 = v127, , (v128 & 1) != 0))
        {
          v129 = *(*(v124 + 56) + 8 * v126);
        }

        else
        {

          v129 = -1.0;
        }

        v295 = FMTabInfoTimeSpent.getter();
        v297 = v296;
        v298 = v321;
        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v300 = v299;
        (*(v322 + 8))(v298, v323);
        v301 = v336;
        swift_beginAccess();
        v302 = swift_isUniquelyReferenced_nonNull_native();
        v338[0] = v301[5];
        v301[5] = 0x8000000000000000;
        sub_10005B5E4(v295, v297, v302, v129 + v300 - v120);

        v301[5] = v338[0];
        goto LABEL_162;
      }
    }

    else
    {
    }

    v130 = Logger.logObject.getter();
    v131 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v130, v131))
    {
      goto LABEL_67;
    }

    v132 = swift_slowAlloc();
    *v132 = 0;
    v133 = "FMSelectionController: not recording time spent on people, we haven't visited it";
    goto LABEL_66;
  }

  if (EnumCaseMultiPayload > 14)
  {
    if (EnumCaseMultiPayload != 15)
    {
      if (EnumCaseMultiPayload != 17)
      {
        goto LABEL_43;
      }

LABEL_26:
      v72 = FMTabInfoLastVisited.getter();
      v74 = v73;
      v75 = v336;
      swift_beginAccess();
      v76 = v75[4];
      if (*(v76 + 16) && (, v77 = sub_10000726C(v72, v74), v79 = v78, , (v79 & 1) != 0))
      {
        v80 = *(*(v76 + 56) + 8 * v77);

        if (v80 != -1.0)
        {
          v81 = FMTabInfoTimeSpent.getter();
          v83 = v82;
          v84 = v336[4];
          if (*(v84 + 16) && (v85 = v81, , v86 = sub_10000726C(v85, v83), v88 = v87, , (v88 & 1) != 0))
          {
            v89 = *(*(v84 + 56) + 8 * v86);

            if (v89 == -1.0)
            {
              v90 = 0.0;
            }

            else
            {
              v90 = v89;
            }
          }

          else
          {

            v90 = 0.0;
          }

          v303 = FMTabInfoTimeSpent.getter();
          v305 = v304;
          v306 = v321;
          static Date.now.getter();
          Date.timeIntervalSince1970.getter();
          v308 = v307;
          (*(v322 + 8))(v306, v323);
          v309 = v336;
          swift_beginAccess();
          v310 = swift_isUniquelyReferenced_nonNull_native();
          v338[0] = v309[4];
          v309[4] = 0x8000000000000000;
          sub_10005B5E4(v303, v305, v310, v90 + v308 - v80);

          v309[4] = v338[0];
          goto LABEL_162;
        }
      }

      else
      {
      }

      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v130, v131))
      {
        goto LABEL_67;
      }

      v132 = swift_slowAlloc();
      *v132 = 0;
      v133 = "FMSelectionController: not recording time spent on items, we haven't visited it";
      goto LABEL_66;
    }

    goto LABEL_45;
  }

  if (EnumCaseMultiPayload == 12)
  {
    goto LABEL_35;
  }

  if (EnumCaseMultiPayload != 13)
  {
LABEL_43:
    sub_100029FE0(v329, type metadata accessor for FMSelectedSection);
    sub_100029FE0(v51, type metadata accessor for FMSelectedSection);
    goto LABEL_69;
  }

  v53 = FMTabInfoLastVisited.getter();
  v55 = v54;
  v56 = v336;
  swift_beginAccess();
  v57 = v56[6];
  if (*(v57 + 16) && (, v58 = sub_10000726C(v53, v55), v60 = v59, , (v60 & 1) != 0))
  {
    v61 = *(*(v57 + 56) + 8 * v58);

    if (v61 != -1.0)
    {
      v62 = FMTabInfoTimeSpent.getter();
      v64 = v63;
      v65 = v336[6];
      if (*(v65 + 16) && (v66 = v62, , v67 = sub_10000726C(v66, v64), v69 = v68, , (v69 & 1) != 0))
      {
        v70 = *(*(v65 + 56) + 8 * v67);

        if (v70 == -1.0)
        {
          v71 = 0.0;
        }

        else
        {
          v71 = v70;
        }
      }

      else
      {

        v71 = 0.0;
      }

      v311 = FMTabInfoTimeSpent.getter();
      v313 = v312;
      v314 = v321;
      static Date.now.getter();
      Date.timeIntervalSince1970.getter();
      v316 = v315;
      (*(v322 + 8))(v314, v323);
      v317 = v336;
      swift_beginAccess();
      v318 = swift_isUniquelyReferenced_nonNull_native();
      v338[0] = v317[6];
      v317[6] = 0x8000000000000000;
      sub_10005B5E4(v311, v313, v318, v71 + v316 - v61);

      v317[6] = v338[0];
LABEL_162:
      swift_endAccess();
      goto LABEL_68;
    }
  }

  else
  {
  }

  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    v133 = "FMSelectionController: not recording time spent on me, we haven't visited it";
    goto LABEL_66;
  }

LABEL_67:

LABEL_68:
  sub_100029FE0(v329, type metadata accessor for FMSelectedSection);
  v6 = v335;
LABEL_69:
  v134 = v330;
  sub_10005B504(v48, v330);
  if (v46(v134, 1, v6) != 1)
  {
    v135 = v326;
    sub_10005B574(v134, v326);
    v136 = v325;
    sub_100027AA8(v135, v325, type metadata accessor for FMSelectedSection);
    v137 = swift_getEnumCaseMultiPayload();
    if (v137 <= 11)
    {
      if (!v137)
      {
        v154 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
        sub_100012DF0(&v136[*(v154 + 48)], &qword_1006B07D0, qword_100552820);
        v155 = type metadata accessor for FMIPDevice();
        (*(*(v155 - 8) + 8))(v136, v155);
        goto LABEL_84;
      }

      if (v137 != 2)
      {
        if (v137 != 3)
        {
          goto LABEL_85;
        }

        sub_100029FE0(v136, type metadata accessor for FMSelectedSection);
LABEL_82:
        v146 = FMTabInfoLastVisited.getter();
        v148 = v147;
        v149 = v321;
        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v151 = v150;
        (*(v322 + 8))(v149, v323);
        v152 = v336;
        swift_beginAccess();
        v153 = swift_isUniquelyReferenced_nonNull_native();
        v338[0] = v152[4];
        v152[4] = 0x8000000000000000;
        sub_10005B5E4(v146, v148, v153, v151);

        v152[4] = v338[0];
        goto LABEL_88;
      }

      sub_100029FE0(v136, type metadata accessor for FMSelectedSection);
    }

    else
    {
      if (v137 <= 14)
      {
        if (v137 != 12)
        {
          if (v137 == 13)
          {
            v138 = FMTabInfoLastVisited.getter();
            v140 = v139;
            v141 = v321;
            static Date.now.getter();
            Date.timeIntervalSince1970.getter();
            v143 = v142;
            (*(v322 + 8))(v141, v323);
            v144 = v336;
            swift_beginAccess();
            v145 = swift_isUniquelyReferenced_nonNull_native();
            v338[0] = v144[6];
            v144[6] = 0x8000000000000000;
            sub_10005B5E4(v138, v140, v145, v143);

            v144[6] = v338[0];
LABEL_88:
            swift_endAccess();
            v164 = v135;
            goto LABEL_89;
          }

LABEL_85:
          sub_100029FE0(v135, type metadata accessor for FMSelectedSection);
          v164 = v136;
LABEL_89:
          sub_100029FE0(v164, type metadata accessor for FMSelectedSection);
          goto LABEL_90;
        }

LABEL_84:
        v156 = FMTabInfoLastVisited.getter();
        v158 = v157;
        v159 = v321;
        static Date.now.getter();
        Date.timeIntervalSince1970.getter();
        v161 = v160;
        (*(v322 + 8))(v159, v323);
        v162 = v336;
        swift_beginAccess();
        v163 = swift_isUniquelyReferenced_nonNull_native();
        v338[0] = v162[3];
        v162[3] = 0x8000000000000000;
        sub_10005B5E4(v156, v158, v163, v161);

        v162[3] = v338[0];
        goto LABEL_88;
      }

      if (v137 != 15)
      {
        if (v137 != 17)
        {
          goto LABEL_85;
        }

        goto LABEL_82;
      }
    }

    v165 = FMTabInfoLastVisited.getter();
    v167 = v166;
    v168 = v321;
    static Date.now.getter();
    Date.timeIntervalSince1970.getter();
    v170 = v169;
    (*(v322 + 8))(v168, v323);
    v171 = v336;
    swift_beginAccess();
    v172 = swift_isUniquelyReferenced_nonNull_native();
    v338[0] = v171[5];
    v171[5] = 0x8000000000000000;
    sub_10005B5E4(v165, v167, v172, v170);

    v171[5] = v338[0];
    goto LABEL_88;
  }

  sub_100012DF0(v134, &qword_1006B2B70, &unk_1005559A0);
LABEL_90:
  sub_10007EBC0(&qword_1006B7F10, &qword_10055A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1005528D0;
  *(inited + 32) = FMTabInfoLastVisited.getter();
  *(inited + 40) = v174;
  sub_10007EBC0(&qword_1006B7F18, &qword_10055A1B8);
  v175 = swift_allocObject();
  v332 = xmmword_100558330;
  *(v175 + 16) = xmmword_100558330;
  v176 = FMTabInfoLastVisited.getter();
  v178 = v177;
  v179 = v336;
  swift_beginAccess();
  v180 = v179[5];
  if (*(v180 + 16) && (, v181 = sub_10000726C(v176, v178), v183 = v182, , (v183 & 1) != 0))
  {
    v184 = *(*(v180 + 56) + 8 * v181);

    v185 = 0;
  }

  else
  {

    v184 = 0;
    v185 = 1;
  }

  *(v175 + 32) = v184;
  *(v175 + 40) = v185;
  v186 = FMTabInfoLastVisited.getter();
  v188 = v187;
  v189 = v336;
  swift_beginAccess();
  v190 = v189[3];
  if (*(v190 + 16) && (, v191 = sub_10000726C(v186, v188), v193 = v192, , (v193 & 1) != 0))
  {
    v194 = *(*(v190 + 56) + 8 * v191);

    v195 = 0;
  }

  else
  {

    v194 = 0;
    v195 = 1;
  }

  *(v175 + 48) = v194;
  *(v175 + 56) = v195;
  v196 = FMTabInfoLastVisited.getter();
  v198 = v197;
  v199 = v336;
  swift_beginAccess();
  v200 = v199[4];
  if (*(v200 + 16) && (, v201 = sub_10000726C(v196, v198), v203 = v202, , (v203 & 1) != 0))
  {
    v204 = *(*(v200 + 56) + 8 * v201);

    v205 = 0;
  }

  else
  {

    v204 = 0;
    v205 = 1;
  }

  *(v175 + 64) = v204;
  *(v175 + 72) = v205;
  v206 = FMTabInfoLastVisited.getter();
  v208 = v207;
  v209 = v336;
  swift_beginAccess();
  v210 = v209[6];
  if (*(v210 + 16) && (, v211 = sub_10000726C(v206, v208), v213 = v212, , (v213 & 1) != 0))
  {
    v214 = *(*(v210 + 56) + 8 * v211);

    v215 = 0;
  }

  else
  {

    v214 = 0;
    v215 = 1;
  }

  *(v175 + 80) = v214;
  *(v175 + 88) = v215;
  *(inited + 48) = v175;
  *(inited + 56) = FMTabInfoCurrentTab.getter();
  *(inited + 64) = v216;
  v217 = swift_allocObject();
  *(v217 + 16) = xmmword_100552220;
  v218 = OBJC_IVAR____TtC6FindMy21FMSelectionController_currentSelectedSection;
  v219 = v336;
  swift_beginAccess();
  v220 = v219 + v218;
  v221 = v333;
  sub_100027AA8(v220, v333, type metadata accessor for FMSelectedSection);
  v222 = swift_getEnumCaseMultiPayload();
  if (v222 > 12)
  {
    if ((v222 - 17) < 2)
    {
LABEL_121:
      v223 = 0x4000000000000000;
      goto LABEL_125;
    }

    if (v222 == 13)
    {
      v223 = 0x4008000000000000;
      goto LABEL_125;
    }

    if (v222 == 15)
    {
      goto LABEL_115;
    }

LABEL_124:
    sub_100029FE0(v221, type metadata accessor for FMSelectedSection);
    v223 = 0x4010000000000000;
    goto LABEL_125;
  }

  if (v222 <= 2)
  {
    if (!v222)
    {
      v224 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
      sub_100012DF0(v221 + *(v224 + 48), &qword_1006B07D0, qword_100552820);
      v225 = type metadata accessor for FMIPDevice();
      (*(*(v225 - 8) + 8))(v221, v225);
LABEL_123:
      v223 = 0x3FF0000000000000;
      goto LABEL_125;
    }

    if (v222 == 2)
    {
      sub_100029FE0(v221, type metadata accessor for FMSelectedSection);
      v223 = 0;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

  if (v222 == 3)
  {
    sub_100029FE0(v221, type metadata accessor for FMSelectedSection);
    goto LABEL_121;
  }

  if (v222 != 11)
  {
    if (v222 != 12)
    {
      goto LABEL_124;
    }

    goto LABEL_123;
  }

LABEL_115:
  v223 = 0;
LABEL_125:
  *(v217 + 32) = v223;
  *(v217 + 40) = 0;
  *(inited + 72) = v217;
  *(inited + 80) = FMTabInfoTimeSpent.getter();
  *(inited + 88) = v226;
  v227 = swift_allocObject();
  *(v227 + 16) = v332;
  v228 = FMTabInfoTimeSpent.getter();
  v230 = v229;
  v231 = v336[5];
  if (*(v231 + 16) && (v232 = v228, , v233 = sub_10000726C(v232, v230), v235 = v234, , (v235 & 1) != 0))
  {
    v236 = *(*(v231 + 56) + 8 * v233);

    v237 = 0;
  }

  else
  {

    v236 = 0;
    v237 = 1;
  }

  *(v227 + 32) = v236;
  *(v227 + 40) = v237;
  v238 = FMTabInfoTimeSpent.getter();
  v240 = v239;
  v241 = v336[3];
  if (*(v241 + 16) && (v242 = v238, , v243 = sub_10000726C(v242, v240), v245 = v244, , (v245 & 1) != 0))
  {
    v246 = *(*(v241 + 56) + 8 * v243);

    v247 = 0;
  }

  else
  {

    v246 = 0;
    v247 = 1;
  }

  *(v227 + 48) = v246;
  *(v227 + 56) = v247;
  v248 = FMTabInfoTimeSpent.getter();
  v250 = v249;
  v251 = v336[4];
  if (*(v251 + 16) && (v252 = v248, , v253 = sub_10000726C(v252, v250), v255 = v254, , (v255 & 1) != 0))
  {
    v256 = *(*(v251 + 56) + 8 * v253);

    v257 = 0;
  }

  else
  {

    v256 = 0;
    v257 = 1;
  }

  *(v227 + 64) = v256;
  *(v227 + 72) = v257;
  v258 = FMTabInfoTimeSpent.getter();
  v260 = v259;
  v261 = v336[6];
  if (*(v261 + 16) && (v262 = v258, , v263 = sub_10000726C(v262, v260), v265 = v264, , (v265 & 1) != 0))
  {
    v266 = *(*(v261 + 56) + 8 * v263);

    v267 = 0;
  }

  else
  {

    v266 = 0;
    v267 = 1;
  }

  *(v227 + 80) = v266;
  *(v227 + 88) = v267;
  *(inited + 96) = v227;
  sub_10005B82C(inited);
  swift_setDeallocating();
  sub_10007EBC0(&qword_1006B7F20, &qword_10055A1C0);
  swift_arrayDestroy();
  v268 = objc_opt_self();
  sub_10007EBC0(&qword_1006B7F28, &qword_10055A1C8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v337[0] = 0;
  v270 = [v268 archivedDataWithRootObject:isa requiringSecureCoding:1 error:v337];

  v271 = v337[0];
  if (v270)
  {
    v272 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v274 = v273;
  }

  else
  {
    v275 = v271;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v272 = 0;
    v274 = 0xF000000000000000;
  }

  v276 = [objc_opt_self() standardUserDefaults];
  if (v274 >> 60 == 15)
  {
    v277 = 0;
  }

  else
  {
    sub_10005B930(v272, v274);
    v277 = Data._bridgeToObjectiveC()().super.isa;
    sub_10005BA6C(v272, v274);
  }

  v278 = String._bridgeToObjectiveC()();
  [v276 setValue:v277 forKey:v278];

  swift_unknownObjectRelease();

  v279 = Logger.logObject.getter();
  v280 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v279, v280))
  {
    v281 = swift_slowAlloc();
    v282 = swift_slowAlloc();
    v337[0] = v282;
    *v281 = 136315138;
    v283 = Dictionary.description.getter();
    v285 = v284;

    v286 = sub_100005B4C(v283, v285, v337);

    *(v281 + 4) = v286;
    _os_log_impl(&_mh_execute_header, v279, v280, "FMSelectionController: saved tab info: %s", v281, 0xCu);
    sub_100006060(v282);

    sub_10005BA6C(v272, v274);
  }

  else
  {
    sub_10005BA6C(v272, v274);
  }
}

uint64_t sub_10005B504(uint64_t a1, uint64_t a2)
{
  v4 = sub_10007EBC0(&qword_1006B2B70, &unk_1005559A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10005B574(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_10005B5E4(uint64_t a1, uint64_t a2, char a3, double a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_10000726C(a1, a2);
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
      sub_1001B5668(v16, a3 & 1);
      result = sub_10000726C(a1, a2);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_1001BD850();
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

void sub_10005B740(uint64_t a1)
{
  v2 = *(a1 + qword_1006B72C0);
}

unint64_t sub_10005B82C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10007EBC0(&qword_1006B39C0, &qword_100555838);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10000726C(v5, v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

double sub_10005B930(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }

  return result;
}

uint64_t sub_10005BA6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_10000A858(result, a2);
  }

  return result;
}

void sub_10005BA88(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_isLocationAuthorized) & 1) == 0)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = 1;
LABEL_10:
    sub_10033B9C0();
    return;
  }

  v2 = *(a1 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision);
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 0;
  }

  *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = v3;
  if (v2)
  {
    goto LABEL_10;
  }

  v4 = [objc_opt_self() standardUserDefaults];
  v5 = String._bridgeToObjectiveC()();
  [v4 setBool:0 forKey:v5];
}

void sub_10005BBB4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (!a1)
  {
    v7 = a2;
  }

  v8 = qword_1006AEBE0;
  v9 = a1;
  if (v8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  v11 = v7;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v32[0] = v31;
    *v14 = 136315138;
    v15 = v11;
    v16 = [v15 description];
    v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v19 = v18;

    v20 = sub_100005B4C(v17, v19, v32);

    *(v14 + 4) = v20;
    _os_log_impl(&_mh_execute_header, v12, v13, "FMLocationProvider: location manager didUpdateLocations after shifting: %s", v14, 0xCu);
    sub_100006060(v31);
  }

  v21 = *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation);
  *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentLocation) = v11;
  v22 = v11;

  *(a3 + OBJC_IVAR____TtC6FindMy18FMLocationProvider_currentMyLocationInRestrictedRegion) = sub_10005C330() & 1;
  v23 = OBJC_IVAR____TtC6FindMy18FMLocationProvider_subscriptions;
  swift_beginAccess();
  v24 = *(a3 + v23);
  if (!(v24 >> 62))
  {
    v25 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v25)
    {
      goto LABEL_9;
    }

LABEL_20:

    return;
  }

  v25 = _CocoaArrayWrapper.endIndex.getter();
  if (!v25)
  {
    goto LABEL_20;
  }

LABEL_9:
  if (v25 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v25; ++i)
    {
      if ((v24 & 0xC000000000000001) != 0)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v29 = *(v24 + 8 * i + 32);
      }

      v30 = v29 + OBJC_IVAR____TtC6FindMy22FMLocationSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v27 = *(v30 + 8);
        ObjectType = swift_getObjectType();
        (*(v27 + 8))(a3, a4, ObjectType, v27);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }
  }
}

uint64_t sub_10005BEBC()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_10005BFDC;
  }

  else
  {
    v2 = sub_1003518C0;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10005BFDC()
{
  v1 = v0[19];
  v2 = v0[5];
  swift_errorRetain();
  v2(v1);

  v3 = v0[1];

  return v3();
}

void sub_10005C09C(uint64_t a1, const char *a2, const char *a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100005B14(v4, qword_1006D4630);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v17 = v8;
      *v7 = 136315138;
      swift_getErrorValue();
      v9 = Error.localizedDescription.getter();
      v11 = sub_100005B4C(v9, v10, &v17);

      *(v7 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v5, v6, a2, v7, 0xCu);
      sub_100006060(v8);
    }

    else
    {
    }
  }

  else
  {
    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100005B14(v13, qword_1006D4630);
    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v14, a3, v15, 2u);
    }
  }
}

id sub_10005C330()
{
  v13[3] = &type metadata for KoreaFeatureFlag;
  v13[4] = sub_10001ABFC();
  v1 = isFeatureEnabled(_:)();
  sub_100006060(v13);
  if (v1)
  {
    return 0;
  }

  [v0 coordinate];
  v4 = v3;
  [v0 coordinate];
  v6 = v5;
  if (qword_1006AEBC0 != -1)
  {
    swift_once();
  }

  result = [qword_1006BA898 containsCoordinate:{v4, v6}];
  if (result)
  {
    v7 = qword_1006BA8A0;
    if (qword_1006BA8A0)
    {
      v8 = qword_1006BA8A0;
    }

    else
    {
      v9 = sub_1002CEE28();
      v10 = qword_1006BA8A0;
      qword_1006BA8A0 = v9;
      v8 = v9;

      v7 = 0;
    }

    v11 = v7;
    v12 = [v8 containsCoordinate:{v4, v6}];

    return v12;
  }

  return result;
}

uint64_t sub_10005C474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v28 = *(v10 - 8);
  v29 = v10;
  __chkstk_darwin(v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100005B14(v13, qword_1006D4630);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v27 = v7;
    aBlock[0] = v26;
    *v16 = 136315138;
    sub_10000905C(0, &qword_1006BBCB0, CLLocation_ptr);
    v17 = Array.debugDescription.getter();
    v19 = a1;
    v20 = sub_100005B4C(v17, v18, aBlock);

    *(v16 + 4) = v20;
    a1 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "FMPeopleListDataSource: locationProvider didUpdate locations %s", v16, 0xCu);
    sub_100006060(v26);
    v7 = v27;
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v21 = static OS_dispatch_queue.main.getter();
  v22 = swift_allocObject();
  *(v22 + 16) = v4;
  *(v22 + 24) = a1;
  aBlock[4] = sub_100535A6C;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100645110;
  v23 = _Block_copy(aBlock);

  v24 = v4;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A810(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v7 + 8))(v9, v6);
  return (*(v28 + 8))(v12, v29);
}

uint64_t sub_10005C908(void *a1, void *a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for DispatchWorkItemFlags();
  v27 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = type metadata accessor for DispatchQoS();
  v11 = *(v26 - 8);
  __chkstk_darwin(v26);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v25 = static OS_dispatch_queue.main.getter();
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = a4;
  aBlock[4] = sub_10005BFD0;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100644EA0;
  v15 = _Block_copy(aBlock);
  v16 = a1;
  v17 = a2;
  v18 = a3;

  v19 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v19, v20, v21);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v25;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v27 + 8))(v10, v8);
  return (*(v11 + 8))(v13, v26);
}

uint64_t sub_10005CBC0()
{

  return _swift_deallocObject(v0, 48, 7);
}

id sub_10005CD48(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + OBJC_IVAR____TtC6FindMy16FMMapOptionsView_mapSettingsButton);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a2) = sub_10005F7D0(a2, v6);
  sub_10005D4E4(v6);
  return [v7 setSelected:a2 & 1];
}

void sub_10005CE08(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100062074(a1, v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 12)
  {
    if ((EnumCaseMultiPayload - 13) < 2)
    {
LABEL_25:
      v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem;
      goto LABEL_26;
    }

    if (EnumCaseMultiPayload == 15)
    {
LABEL_13:
      v8 = qword_1006AECC0;
      v9 = *(*(a2 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator) + 16);
      if (v8 != -1)
      {
        v29 = v9;
        swift_once();
        v9 = v29;
      }

      if (byte_1006D4AD1 == 1)
      {
        v10 = v9[OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMFRestricted];

        if ((v10 & 1) == 0)
        {
          v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_peopleTabItem;
          goto LABEL_26;
        }
      }

      else
      {
      }

      goto LABEL_25;
    }

    if (EnumCaseMultiPayload != 17)
    {
LABEL_12:
      sub_10005D4E4(v6);
      return;
    }

    goto LABEL_23;
  }

  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload != 3)
    {
      if (EnumCaseMultiPayload != 12)
      {
        goto LABEL_12;
      }

      goto LABEL_19;
    }

    sub_10005D4E4(v6);
LABEL_23:
    v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_itemsTabItem;
    goto LABEL_26;
  }

  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 2)
    {
      sub_10005D4E4(v6);
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v12 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
  sub_10008228C(&v6[*(v12 + 48)]);
  v13 = type metadata accessor for FMIPDevice();
  (*(*(v13 - 8) + 8))(v6, v13);
LABEL_19:
  if (*(*(*(a2 + OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_mediator) + 16) + OBJC_IVAR____TtC6FindMy19FMConditionProvider_FMIPRestricted))
  {
    v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_meTabItem;
  }

  else
  {
    v11 = &OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_devicesTabItem;
  }

LABEL_26:
  v14 = *(a2 + *v11);
  if (v14)
  {
    v15 = OBJC_IVAR____TtC6FindMy16FMEmbeddedTabBar_items;
    swift_beginAccess();
    v16 = *(a2 + v15);
    if (v16 >> 62)
    {
      goto LABEL_44;
    }

    for (i = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
    {
      v30 = v14;

      if (!i)
      {
        break;
      }

      v18 = 0;
      while (1)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v19 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_43;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v20 = v19;
        v21 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        sub_10000905C(0, &qword_1006B4980, NSObject_ptr);
        v22 = static NSObject.== infix(_:_:)();
        v23 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected;
        v20[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_isSelected] = v22 & 1;
        v24 = OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button;
        [*&v20[OBJC_IVAR____TtC6FindMy20FMEmbeddedTabBarItem_button] setSelected:?];
        v25 = v20[v23];
        v14 = *&v20[v24];
        v26 = objc_opt_self();
        v27 = &selRef_systemBlueColor;
        if (!v25)
        {
          v27 = &selRef_labelColor;
        }

        v28 = [v26 *v27];
        [v14 setTintColor:v28];

        ++v18;
        if (v21 == i)
        {
          goto LABEL_40;
        }
      }

      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      ;
    }

LABEL_40:
  }
}

id sub_10005D1D4(void *a1)
{
  v2 = v1;
  result = [a1 state];
  if (result != 1)
  {
    if ([a1 state] == 5 || objc_msgSend(a1, "state") == 10)
    {
      v5 = 0;
      v6 = 0xE200000000000000;
      v7 = 28271;
    }

    else
    {
      v5 = 1;
      v6 = 0xE300000000000000;
      v7 = 6710895;
    }

    if (qword_1006AEBE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100005B14(v8, qword_1006D4630);

    v9 = a1;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v23[0] = v13;
      *v12 = 136315394;
      v14 = sub_100005B4C(v7, v6, v23);

      *(v12 + 4) = v14;
      *(v12 + 12) = 2048;
      *(v12 + 14) = [v9 state];

      _os_log_impl(&_mh_execute_header, v10, v11, "FMConditionProvider: BT is %s (new state=%ld", v12, 0x16u);
      sub_100006060(v13);
    }

    else
    {
    }

    v15 = OBJC_IVAR____TtC6FindMy19FMConditionProvider_subscriptions;
    result = swift_beginAccess();
    v16 = *(v2 + v15);
    if (v16 >> 62)
    {
      result = _CocoaArrayWrapper.endIndex.getter();
      v17 = result;
      if (!result)
      {
        return result;
      }
    }

    else
    {
      v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v17)
      {
        return result;
      }
    }

    if (v17 < 1)
    {
      __break(1u);
    }

    else
    {

      for (i = 0; i != v17; ++i)
      {
        if ((v16 & 0xC000000000000001) != 0)
        {
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v21 = *(v16 + 8 * i + 32);
        }

        v22 = v21 + OBJC_IVAR____TtC6FindMy23FMConditionSubscription_subscriber;
        if (swift_unknownObjectWeakLoadStrong())
        {
          v19 = *(v22 + 8);
          ObjectType = swift_getObjectType();
          (*(v19 + 32))(v2, v5, ObjectType, v19);

          swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  return result;
}

uint64_t sub_10005D4E4(uint64_t a1)
{
  v2 = type metadata accessor for FMSelectedSection(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

char *sub_10005D540(void *a1, char **a2)
{
  v209 = a1;
  v3 = sub_10007EBC0(&qword_1006B0050, &unk_1005538A0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v198 - v4);
  v6 = type metadata accessor for FMFFriend();
  v207 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = (&v198 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for FMIPUnknownItem();
  v208 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v198 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for FMIPItem();
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v198 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v203 = type metadata accessor for FMIPDevice();
  v206 = *(v203 - 8);
  __chkstk_darwin(v203);
  v202 = &v198 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for FMClusterAnnotation();
  v17 = swift_dynamicCastClass();
  if (v17)
  {
    v18 = v17;
    swift_unknownObjectRetain();
    v19 = String._bridgeToObjectiveC()();
    v20 = [v209 dequeueReusableAnnotationViewWithIdentifier:v19];

    if (v20)
    {
      type metadata accessor for FMClusteredAnnotationView();
      v208 = swift_dynamicCastClass();
      if (v208)
      {
LABEL_6:
        v198 = a2;
        v211 = 0;
        v212 = 0xE000000000000000;
        v207 = OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations;
        v23 = *&v208[OBJC_IVAR____TtC6FindMy25FMClusteredAnnotationView_annotations];
        v209 = (v23 & 0xFFFFFFFFFFFFFF8);
        if (v23 >> 62)
        {
          v24 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v206;
        v26 = v23 & 0xC000000000000001;
        v205 = 0x8000000100596BE0;
        v206 = "FMItemAnnotationView";
        v199 = (v25 + 8);
        v200 = (v25 + 16);

        v28 = 0;
        v29 = &selRef__enter3DMode;
        v204 = xmmword_100552220;
        v201 = v23 & 0xC000000000000001;
        while (1)
        {
          if (v24 == v28)
          {
            goto LABEL_27;
          }

          if (v26)
          {
            v34 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v28 >= *(v209 + 2))
            {
              __break(1u);
LABEL_72:
              type metadata accessor for FMTrackAnnotation(v27);
              v174 = swift_dynamicCastClass();
              if (v174)
              {
                v175 = v174;
                swift_unknownObjectRetain();
                v176 = String._bridgeToObjectiveC()();
                v177 = [v209 dequeueReusableAnnotationViewWithIdentifier:v176];

                if (!v177)
                {
                  goto LABEL_76;
                }

                type metadata accessor for FMTrackAnnotationView();
                v178 = swift_dynamicCastClass();
                if (!v178)
                {

LABEL_76:
                  v179 = objc_allocWithZone(type metadata accessor for FMTrackAnnotationView());
                  swift_unknownObjectRetain();
                  v180 = String._bridgeToObjectiveC()();
                  v178 = [v179 initWithAnnotation:v175 reuseIdentifier:v180];
                  swift_unknownObjectRelease();
                }

                v62 = v178;
                [v62 setUserInteractionEnabled:{0, v198}];
LABEL_51:

LABEL_52:
                swift_unknownObjectRelease();
              }

              else
              {
                objc_opt_self();
                v193 = swift_dynamicCastObjCClass();
                if (v193)
                {
                  v194 = v193;
                  v195 = objc_allocWithZone(MKUserLocationView);
                  swift_unknownObjectRetain_n();
                  v196 = String._bridgeToObjectiveC()();
                  v197 = [v195 initWithAnnotation:v194 reuseIdentifier:v196];
                  swift_unknownObjectRelease();

                  v62 = v197;
                  [v62 setEnabled:{0, v198}];
                  goto LABEL_51;
                }

                return 0;
              }

              return v62;
            }

            v34 = *(v23 + 8 * v28 + 32);
          }

          v35 = v34;
          if (v28 > 1)
          {
            v50 = [objc_opt_self() v29[272]];
            v213._object = v205;
            v51._countAndFlagsBits = 0xD000000000000023;
            v51._object = (v206 | 0x8000000000000000);
            v213._countAndFlagsBits = 0xD000000000000035;
            v52._countAndFlagsBits = 0;
            v52._object = 0xE000000000000000;
            NSLocalizedString(_:tableName:bundle:value:comment:)(v51, 0, v50, v52, v213);

            sub_10007EBC0(&unk_1006B20B0, &unk_1005523B0);
            v53 = swift_allocObject();
            *(v53 + 16) = v204;
            v54 = *&v208[v207];
            if (v54 >> 62)
            {
              v57 = _CocoaArrayWrapper.endIndex.getter();
              v56 = v57 - 2;
              if (__OFSUB__(v57, 2))
              {
LABEL_26:
                __break(1u);
LABEL_27:

                v58 = [objc_opt_self() v29[272]];
                v214._object = 0x8000000100596B30;
                v59._countAndFlagsBits = 0x4E49505F50414DLL;
                v59._object = 0xE700000000000000;
                v60._countAndFlagsBits = 0;
                v60._object = 0xE000000000000000;
                v214._countAndFlagsBits = 0xD000000000000019;
                v61 = NSLocalizedString(_:tableName:bundle:value:comment:)(v59, 0, v58, v60, v214);

                String.append(_:)(v61);

                v62 = v208;
                v63 = String._bridgeToObjectiveC()();

                [v62 setAccessibilityLabel:v63];

                goto LABEL_28;
              }
            }

            else
            {
              v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
              v56 = v55 - 2;
              if (__OFSUB__(v55, 2))
              {
                goto LABEL_26;
              }
            }

            *(v53 + 56) = &type metadata for Int;
            *(v53 + 64) = &protocol witness table for Int;
            *(v53 + 32) = v56;
            v30 = String.init(format:_:)();
            v32 = v31;

            v210._countAndFlagsBits = v30;
            v210._object = v32;

            v33._countAndFlagsBits = 8236;
            v33._object = 0xE200000000000000;
            String.append(_:)(v33);

            String.append(_:)(v210);
          }

          else
          {
            type metadata accessor for FMDeviceAnnotation();
            v36 = swift_dynamicCastClass();
            if (v36)
            {
              v37 = v35;
              v38 = *(v36 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
              v39 = *(*v38 + class metadata base offset for ManagedBuffer + 16);
              v40 = (*(*v38 + 48) + 3) & 0x1FFFFFFFCLL;

              os_unfair_lock_lock((v38 + v40));
              v41 = v23;
              v42 = v24;
              v44 = v202;
              v43 = v203;
              (*v200)(v202, v38 + v39, v203);
              os_unfair_lock_unlock((v38 + v40));

              v45 = FMIPDevice.name.getter();
              v47 = v46;
              v48 = v44;
              v24 = v42;
              v23 = v41;
              v26 = v201;
              v29 = &selRef__enter3DMode;
              (*v199)(v48, v43);
              v210._countAndFlagsBits = v45;
              v210._object = v47;

              v49._countAndFlagsBits = 8236;
              v49._object = 0xE200000000000000;
              String.append(_:)(v49);

              String.append(_:)(v210);

              goto LABEL_11;
            }
          }

LABEL_11:
          if (++v28 == 3)
          {
            goto LABEL_27;
          }
        }
      }
    }

    v21 = objc_allocWithZone(type metadata accessor for FMClusteredAnnotationView());
    swift_unknownObjectRetain();
    v22 = String._bridgeToObjectiveC()();
    v208 = [v21 initWithAnnotation:v18 reuseIdentifier:v22];
    swift_unknownObjectRelease();

    goto LABEL_6;
  }

  *&v204 = v15;
  v205 = v13;
  v200 = v5;
  v201 = v11;
  v64 = v208;
  v199 = v8;
  type metadata accessor for FMItemAnnotation();
  v65 = swift_dynamicCastClass();
  if (v65)
  {
    v66 = v65;
    v198 = a2;
    swift_unknownObjectRetain();
    v67 = String._bridgeToObjectiveC()();
    v68 = [v209 dequeueReusableAnnotationViewWithIdentifier:v67];

    v69 = v205;
    v70 = v204;
    if (v68)
    {
      type metadata accessor for FMItemAnnotationView();
      v71 = swift_dynamicCastClass();
      if (v71)
      {
LABEL_34:
        v74 = *(v66 + OBJC_IVAR____TtC6FindMy16FMItemAnnotation_itemLock);
        v75 = *(*v74 + class metadata base offset for ManagedBuffer + 16);
        v76 = (*(*v74 + 48) + 3) & 0x1FFFFFFFCLL;
        v62 = v71;

        os_unfair_lock_lock((v74 + v76));
        v69[2](v70, v74 + v75, v12);
        os_unfair_lock_unlock((v74 + v76));

        v77 = FMIPItem.name.getter();
        v79 = v78;
        (v69[1])(v70, v12);
        v211 = v77;
        v212 = v79;

        v80._countAndFlagsBits = 44;
        v80._object = 0xE100000000000000;
        String.append(_:)(v80);

        v82 = v211;
        v81 = v212;
        v83 = [objc_opt_self() mainBundle];
        v215._object = 0x8000000100596B30;
        v84._countAndFlagsBits = 0x4E49505F50414DLL;
        v84._object = 0xE700000000000000;
        v85._countAndFlagsBits = 0;
        v85._object = 0xE000000000000000;
        v215._countAndFlagsBits = 0xD000000000000019;
        v86 = NSLocalizedString(_:tableName:bundle:value:comment:)(v84, 0, v83, v85, v215);

        v211 = v82;
        v212 = v81;

        String.append(_:)(v86);

        v87 = String._bridgeToObjectiveC()();

        [v62 setAccessibilityLabel:v87];

        goto LABEL_52;
      }
    }

    v72 = objc_allocWithZone(type metadata accessor for FMItemAnnotationView());
    swift_unknownObjectRetain();
    v73 = String._bridgeToObjectiveC()();
    v71 = [v72 initWithAnnotation:v66 reuseIdentifier:v73];
    swift_unknownObjectRelease();

    goto LABEL_34;
  }

  type metadata accessor for FMUnknownItemAnnotation(0);
  v88 = swift_dynamicCastClass();
  if (v88)
  {
    v89 = v88;
    swift_unknownObjectRetain();
    v90 = String._bridgeToObjectiveC()();
    v91 = [v209 dequeueReusableAnnotationViewWithIdentifier:v90];

    v92 = v9;
    v93 = v201;
    if (v91)
    {
      type metadata accessor for FMItemAnnotationView();
      v94 = swift_dynamicCastClass();
      if (v94)
      {
LABEL_40:
        v97 = OBJC_IVAR____TtC6FindMy23FMUnknownItemAnnotation_item;
        swift_beginAccess();
        v64[2](v93, v89 + v97, v9);
        v62 = v94;
        v98 = v93;
        v99 = FMIPUnknownItem.name.getter();
        v101 = v100;
        (v64[1])(v98, v92);
        v210._countAndFlagsBits = v99;
        v210._object = v101;

        v102._countAndFlagsBits = 44;
        v102._object = 0xE100000000000000;
        String.append(_:)(v102);

        countAndFlagsBits = v210._countAndFlagsBits;
        object = v210._object;
        v105 = [objc_opt_self() mainBundle];
        v216._object = 0x8000000100596B30;
        v106._countAndFlagsBits = 0x4E49505F50414DLL;
        v106._object = 0xE700000000000000;
        v107._countAndFlagsBits = 0;
        v107._object = 0xE000000000000000;
        v216._countAndFlagsBits = 0xD000000000000019;
        v108 = NSLocalizedString(_:tableName:bundle:value:comment:)(v106, 0, v105, v107, v216);

        v210._countAndFlagsBits = countAndFlagsBits;
        v210._object = object;

        String.append(_:)(v108);

        v109 = String._bridgeToObjectiveC()();

        [v62 setAccessibilityLabel:v109];

        goto LABEL_52;
      }
    }

    v95 = objc_allocWithZone(type metadata accessor for FMItemAnnotationView());
    swift_unknownObjectRetain();
    v96 = String._bridgeToObjectiveC()();
    v94 = [v95 initWithAnnotation:v89 reuseIdentifier:v96];
    swift_unknownObjectRelease();

    goto LABEL_40;
  }

  type metadata accessor for FMInfoAnnotation(0);
  v110 = swift_dynamicCastClass();
  if (v110)
  {
    v111 = v110;
    v112 = qword_1006AEBE0;
    swift_unknownObjectRetain();
    if (v112 != -1)
    {
      swift_once();
    }

    v113 = type metadata accessor for Logger();
    sub_100005B14(v113, qword_1006D4630);
    v114 = Logger.logObject.getter();
    v115 = static os_log_type_t.default.getter();
    v116 = os_log_type_enabled(v114, v115);
    v117 = v209;
    if (v116)
    {
      v118 = swift_slowAlloc();
      *v118 = 0;
      _os_log_impl(&_mh_execute_header, v114, v115, "FMMapViewController: Info annotation added", v118, 2u);
    }

    v119 = String._bridgeToObjectiveC()();
    v120 = [v117 dequeueReusableAnnotationViewWithIdentifier:v119];

    if (v120)
    {
      objc_opt_self();
      v121 = swift_dynamicCastObjCClass();
      if (v121)
      {
LABEL_50:
        v124 = [objc_opt_self() systemRedColor];
        [v121 setTintColor:v124];

        v125 = String._bridgeToObjectiveC()();

        [v121 setGlyphText:v125];

        [v121 setTitleVisibility:2];
        v62 = v121;
        LODWORD(v126) = 1148846080;
        [v62 setDisplayPriority:v126];
        [v62 setUserInteractionEnabled:{0, v198}];
        goto LABEL_51;
      }
    }

    v122 = objc_allocWithZone(MKMarkerAnnotationView);
    swift_unknownObjectRetain();
    v123 = String._bridgeToObjectiveC()();
    v121 = [v122 initWithAnnotation:v111 reuseIdentifier:v123];
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

  type metadata accessor for FMDeviceAnnotation();
  v128 = swift_dynamicCastClass();
  if (v128)
  {
    v129 = v128;
    swift_unknownObjectRetain();
    v130 = String._bridgeToObjectiveC()();
    v131 = [v209 dequeueReusableAnnotationViewWithIdentifier:v130];

    if (v131)
    {
      type metadata accessor for FMDeviceAnnotationView();
      v132 = swift_dynamicCastClass();
      if (v132)
      {
LABEL_59:
        v135 = *(v129 + OBJC_IVAR____TtC6FindMy18FMDeviceAnnotation_deviceLock);
        v136 = *(*v135 + class metadata base offset for ManagedBuffer + 16);
        v137 = (*(*v135 + 48) + 3) & 0x1FFFFFFFCLL;
        v62 = v132;

        os_unfair_lock_lock((v135 + v137));
        v138 = v206;
        v139 = v135 + v136;
        v140 = v202;
        v141 = v203;
        (*(v206 + 16))(v202, v139, v203);
        os_unfair_lock_unlock((v135 + v137));

        v142 = FMIPDevice.name.getter();
        v144 = v143;
        (*(v138 + 8))(v140, v141);
        v211 = v142;
        v212 = v144;

        v145._countAndFlagsBits = 44;
        v145._object = 0xE100000000000000;
        String.append(_:)(v145);

        v147 = v211;
        v146 = v212;
        v148 = [objc_opt_self() mainBundle];
        v217._object = 0x8000000100596B30;
        v149._countAndFlagsBits = 0x4E49505F50414DLL;
        v149._object = 0xE700000000000000;
        v150._countAndFlagsBits = 0;
        v150._object = 0xE000000000000000;
        v217._countAndFlagsBits = 0xD000000000000019;
        v151 = NSLocalizedString(_:tableName:bundle:value:comment:)(v149, 0, v148, v150, v217);

        v211 = v147;
        v212 = v146;

        String.append(_:)(v151);

        v152 = String._bridgeToObjectiveC()();

        [v62 setAccessibilityLabel:v152];

        if (qword_1006AEBE0 != -1)
        {
          swift_once();
        }

        v153 = type metadata accessor for Logger();
        sub_100005B14(v153, qword_1006D4630);
        v154 = Logger.logObject.getter();
        v155 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v154, v155))
        {
          v156 = swift_slowAlloc();
          *v156 = 0;
          _os_log_impl(&_mh_execute_header, v154, v155, "FMMapViewController: Device annotation added", v156, 2u);
        }

        swift_unknownObjectRelease();

        return v62;
      }
    }

    v133 = objc_allocWithZone(type metadata accessor for FMDeviceAnnotationView());
    swift_unknownObjectRetain();
    v134 = String._bridgeToObjectiveC()();
    v132 = [v133 initWithAnnotation:v129 reuseIdentifier:v134];
    swift_unknownObjectRelease();

    goto LABEL_59;
  }

  type metadata accessor for FMPersonAnnotation();
  v27 = swift_dynamicCastClass();
  if (!v27)
  {
    goto LABEL_72;
  }

  v157 = v27;
  v198 = a2;
  swift_unknownObjectRetain();
  v158 = String._bridgeToObjectiveC()();
  v159 = [v209 dequeueReusableAnnotationViewWithIdentifier:v158];

  if (!v159)
  {
    goto LABEL_68;
  }

  type metadata accessor for FMPersonAnnotationView();
  v62 = swift_dynamicCastClass();
  if (!v62)
  {

LABEL_68:
    v160 = objc_allocWithZone(type metadata accessor for FMPersonAnnotationView());
    swift_unknownObjectRetain();
    v161 = String._bridgeToObjectiveC()();
    v62 = [v160 initWithAnnotation:v157 reuseIdentifier:v161];
    swift_unknownObjectRelease();
  }

  v162 = *(v157 + OBJC_IVAR____TtC6FindMy18FMPersonAnnotation_personLock);
  v163 = *(*v162 + class metadata base offset for ManagedBuffer + 16);
  v164 = (*(*v162 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v162 + v164));
  v165 = v162 + v163;
  v166 = v200;
  sub_100007204(v165, v200, &qword_1006B0050, &unk_1005538A0);
  os_unfair_lock_unlock((v162 + v164));

  v167 = v207;
  v168 = v6;
  if ((*(v207 + 48))(v166, 1, v6) == 1)
  {
    sub_100012DF0(v166, &qword_1006B0050, &unk_1005538A0);
    v169 = objc_opt_self();
    v170 = v62;
    v171 = [v169 mainBundle];
    v218._object = 0x8000000100596B30;
    v172._countAndFlagsBits = 0x4E49505F50414DLL;
    v172._object = 0xE700000000000000;
    v173._countAndFlagsBits = 0;
    v173._object = 0xE000000000000000;
    v218._countAndFlagsBits = 0xD000000000000019;
    NSLocalizedString(_:tableName:bundle:value:comment:)(v172, 0, v171, v173, v218);

    v63 = String._bridgeToObjectiveC()();

    [v170 setAccessibilityLabel:v63];

LABEL_28:
    goto LABEL_52;
  }

  v181 = v199;
  (*(v167 + 32))(v199, v166, v6);
  v182 = v62;
  v183 = v167;
  v211 = FMFFriend.name.getter();
  v212 = v184;

  v185._countAndFlagsBits = 44;
  v185._object = 0xE100000000000000;
  String.append(_:)(v185);

  v187 = v211;
  v186 = v212;
  v188 = [objc_opt_self() mainBundle];
  v219._object = 0x8000000100596B30;
  v189._countAndFlagsBits = 0x4E49505F50414DLL;
  v189._object = 0xE700000000000000;
  v190._countAndFlagsBits = 0;
  v190._object = 0xE000000000000000;
  v219._countAndFlagsBits = 0xD000000000000019;
  v191 = NSLocalizedString(_:tableName:bundle:value:comment:)(v189, 0, v188, v190, v219);

  v211 = v187;
  v212 = v186;

  String.append(_:)(v191);

  v192 = String._bridgeToObjectiveC()();

  [v182 setAccessibilityLabel:v192];
  swift_unknownObjectRelease();

  (*(v183 + 8))(v181, v168);
  return v62;
}

void sub_10005ED98(void *a1, void (*a2)(id), uint64_t a3, double a4)
{
  v76 = a3;
  v77 = a2;
  v79 = a1;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v74 = *(v6 - 8);
  v75 = v6;
  __chkstk_darwin(v6);
  v8 = &v64 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v73 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchTime();
  v72 = *(v12 - 8);
  __chkstk_darwin(v12);
  v14 = &v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v17 = &v64 - v16;
  v18 = type metadata accessor for FMFConfigValue();
  v19 = *(v18 - 8);
  *&v20 = __chkstk_darwin(v18).n128_u64[0];
  v22 = &v64 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = v4;
  v23 = *&v4[OBJC_IVAR____TtC6FindMy19FMMapViewController_mapView];
  if (![v23 userTrackingMode])
  {
    v64 = v22;
    v65 = v19;
    v66 = v14;
    v67 = v17;
    v71 = v12;
    v68 = v11;
    v69 = v8;
    v70 = v9;
    v24 = v77;
    v25 = [v23 camera];
    [v25 centerCoordinate];
    v27 = v26;
    v29 = v28;

    v87.latitude = v27;
    v87.longitude = v29;
    v30 = MKMapPointForCoordinate(v87);
    v31 = v79;
    [v79 centerCoordinate];
    v89 = MKMapPointForCoordinate(v88);
    v32 = MKMetersBetweenMapPoints(v30, v89);
    v35 = v78;
    p_vtable = (_TtC6FindMy22FMCameraAccessDetector + 24);
    if (v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_isAnimationEnabled] == 1 && (HIDWORD(v37) = 1091070464, v32 < 200000.0))
    {
      v38 = v24;
      if (v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation] == 1 && *(*&v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource] + 57) == 1 && v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] == 1)
      {
        v39 = v31;
        p_aBlock = &v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration];
        if (v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_overrideLiveAnimationDuration + 8] == 1)
        {
          v41 = v65;
          v42 = v64;
          (*(v65 + 104))(v64, enum case for FMFConfigValue.liveAnimationInterval(_:), v18);
          v80 = 0x4000000000000000;
          p_aBlock = &aBlock;
          FMFGlobalConfig<A>(_:fallback:)();
          (*(v41 + 8))(v42, v18);
        }

        v43 = *p_aBlock;
        v44 = objc_opt_self();
        v45 = swift_allocObject();
        *(v45 + 16) = v35;
        *(v45 + 24) = v39;
        v85 = sub_100406E30;
        v86 = v45;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_100004AE4;
        v84 = &unk_10063D478;
        v46 = _Block_copy(&aBlock);
        v47 = v35;
        v48 = v39;

        v49 = swift_allocObject();
        v50 = v76;
        *(v49 + 16) = v38;
        *(v49 + 24) = v50;
        v85 = sub_100406E54;
        v86 = v49;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_10037A044;
        v84 = &unk_10063D4C8;
        v51 = _Block_copy(&aBlock);
        sub_100062900(v38, v50);

        [v44 animateWithDuration:196614 delay:v46 options:v51 animations:v43 completion:0.0];
        _Block_release(v51);
        _Block_release(v46);
      }

      else
      {
        v78[OBJC_IVAR____TtC6FindMy19FMMapViewController_cameraDidReachLiveLocation] = 0;
        LODWORD(v33) = 1128792064;
        LODWORD(v34) = 1120403456;
        LODWORD(v37) = 1.0;
        [v23 setCamera:v31 duration:a4 springMass:v37 springStiffness:v33 springDamping:v34 springVelocity:0.0];
        v53 = 0;
        if (*(*&v35[OBJC_IVAR____TtC6FindMy19FMMapViewController_dataSource] + 57) == 1)
        {
          v53 = v35[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] == 1;
        }

        sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
        v54 = static OS_dispatch_queue.main.getter();
        v55 = v66;
        static DispatchTime.now()();
        v56 = v67;
        + infix(_:_:)();
        v79 = *(v72 + 8);
        (v79)(v55, v71);
        v57 = swift_allocObject();
        *(v57 + 16) = v53;
        *(v57 + 24) = v35;
        *(v57 + 32) = v38;
        v58 = v76;
        *(v57 + 40) = v76;
        v85 = sub_100406DE0;
        v86 = v57;
        aBlock = _NSConcreteStackBlock;
        v82 = 1107296256;
        v83 = sub_100004AE4;
        v84 = &unk_10063D428;
        v59 = _Block_copy(&aBlock);
        v60 = v35;
        sub_100062900(v38, v58);

        v61 = v68;
        static DispatchQoS.unspecified.getter();
        aBlock = _swiftEmptyArrayStorage;
        sub_10000A540(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
        sub_100037970();
        v62 = v69;
        v63 = v75;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
        _Block_release(v59);

        (*(v74 + 8))(v62, v63);
        (*(v73 + 8))(v61, v70);
        (v79)(v56, v71);
      }

      p_vtable = _TtC6FindMy22FMCameraAccessDetector.vtable;
    }

    else
    {
      v52 = [v23 setCamera:v31 animated:{0, v32}];
      if (v24)
      {
        v24(v52);
      }
    }

    v35[OBJC_IVAR____TtC6FindMy19FMMapViewController_lastMode] = *(*(p_vtable[436] + v35) + 56);
  }
}

uint64_t sub_10005F5FC()
{
  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10005F644()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10005F684()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

void sub_10005F6C4(char a1)
{
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100005B14(v2, qword_1006D4630);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v3, v4, "FMMapViewController: canEnter3DModeDidChange: %{BOOL,public}d", v5, 8u);
  }

  sub_10001ED48(1);
}

uint64_t sub_10005F7D0(uint64_t a1, char *a2)
{
  v147 = a1;
  v148 = a2;
  v2 = type metadata accessor for FMIPUnknownItem();
  v141 = *(v2 - 8);
  v142 = v2;
  __chkstk_darwin(v2);
  v131 = &v122 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v130 = &v122 - v5;
  v6 = type metadata accessor for FMIPItem();
  v143 = *(v6 - 8);
  v144 = v6;
  __chkstk_darwin(v6);
  v139 = &v122 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v140 = &v122 - v9;
  v10 = type metadata accessor for FMFFriend();
  v137 = *(v10 - 8);
  v138 = v10;
  __chkstk_darwin(v10);
  v129 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v128 = &v122 - v13;
  v14 = type metadata accessor for FMIPDevice();
  v145 = *(v14 - 8);
  v146 = v14;
  __chkstk_darwin(v14);
  v135 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v136 = &v122 - v17;
  v125 = sub_10007EBC0(&qword_1006BEEE0, qword_100552070);
  __chkstk_darwin(v125);
  v126 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v127 = &v122 - v20;
  __chkstk_darwin(v21);
  v124 = &v122 - v22;
  __chkstk_darwin(v23);
  v123 = &v122 - v24;
  v25 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v25);
  v134 = &v122 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v27);
  v133 = &v122 - v28;
  __chkstk_darwin(v29);
  v31 = &v122 - v30;
  __chkstk_darwin(v32);
  v34 = &v122 - v33;
  __chkstk_darwin(v35);
  v132 = &v122 - v36;
  __chkstk_darwin(v37);
  v39 = &v122 - v38;
  __chkstk_darwin(v40);
  v42 = &v122 - v41;
  __chkstk_darwin(v43);
  v45 = &v122 - v44;
  __chkstk_darwin(v46);
  v48 = &v122 - v47;
  v49 = sub_10007EBC0(&qword_1006B7A88, &unk_100559F00);
  __chkstk_darwin(v49 - 8);
  v51 = &v122 - v50;
  v53 = &v122 + *(v52 + 56) - v50;
  sub_100027A40(v147, &v122 - v50, type metadata accessor for FMSelectedSection);
  v54 = v148;
  v148 = v53;
  sub_100027A40(v54, v53, type metadata accessor for FMSelectedSection);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100027A40(v51, v45, type metadata accessor for FMSelectedSection);
      v75 = v148;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v77 = v145;
        v76 = v146;
        v78 = *(v145 + 32);
        v79 = v136;
        v78(v136, v45, v146);
        v80 = v135;
        v78(v135, v75, v76);
        v64 = static FMIPDevice.== infix(_:_:)();
        v81 = *(v77 + 8);
        v81(v80, v76);
        v81(v79, v76);
        goto LABEL_40;
      }

      (*(v145 + 8))(v45, v146);
      goto LABEL_52;
    case 2u:
      sub_100027A40(v51, v42, type metadata accessor for FMSelectedSection);
      v82 = v148;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v84 = v137;
        v83 = v138;
        v85 = *(v137 + 32);
        v86 = v128;
        v85(v128, v42, v138);
        v87 = v129;
        v85(v129, v82, v83);
        v64 = static FMFFriend.== infix(_:_:)();
        v88 = *(v84 + 8);
        v88(v87, v83);
        v88(v86, v83);
        goto LABEL_40;
      }

      (*(v137 + 8))(v42, v138);
      goto LABEL_52;
    case 3u:
      sub_100027A40(v51, v39, type metadata accessor for FMSelectedSection);
      v56 = v148;
      if (swift_getEnumCaseMultiPayload() == 3)
      {
        v57 = v143;
        v58 = v56;
        v59 = *(v143 + 32);
        v60 = v140;
        v61 = v39;
        v62 = v144;
        v59(v140, v61, v144);
        v63 = v139;
        v59(v139, v58, v62);
        v64 = static FMIPItem.== infix(_:_:)();
        v65 = *(v57 + 8);
        v65(v63, v62);
        v65(v60, v62);
        goto LABEL_40;
      }

      (*(v143 + 8))(v39, v144);
      goto LABEL_52;
    case 4u:
      v66 = v132;
      sub_100027A40(v51, v132, type metadata accessor for FMSelectedSection);
      v92 = v148;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v93 = v143;
        v94 = *(v143 + 32);
        v95 = v140;
        v96 = v66;
        v97 = v144;
        v94(v140, v96, v144);
        v98 = v139;
        v94(v139, v92, v97);
        v99 = static FMIPItem.== infix(_:_:)();
        goto LABEL_39;
      }

      v109 = v143;
      v108 = v144;
      goto LABEL_49;
    case 5u:
      sub_100027A40(v51, v34, type metadata accessor for FMSelectedSection);
      v100 = *v34;
      sub_100091880(*(v34 + 1), *(v34 + 2));
      v101 = v148;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_47;
      }

      v102 = *v101;
      sub_100091880(*(v101 + 1), *(v101 + 2));
      v64 = sub_100244968(v100, v102);

      goto LABEL_32;
    case 6u:
      sub_100027A40(v51, v31, type metadata accessor for FMSelectedSection);
      v89 = *v31;
      sub_100091880(*(v31 + 1), *(v31 + 2));
      v90 = v148;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
LABEL_47:

        goto LABEL_52;
      }

      v91 = *v90;
      sub_100091880(*(v90 + 1), *(v90 + 2));
      v64 = sub_100244968(v89, v91);

LABEL_32:

      goto LABEL_40;
    case 7u:
      v103 = v134;
      sub_100027A40(v51, v134, type metadata accessor for FMSelectedSection);
      v104 = v148;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        (*(v145 + 8))(v103, v146);
        goto LABEL_52;
      }

      v93 = v145;
      v105 = *(v145 + 32);
      v95 = v136;
      v106 = v103;
      v97 = v146;
      v105(v136, v106, v146);
      v98 = v135;
      v105(v135, v104, v97);
      v99 = static FMIPDevice.== infix(_:_:)();
LABEL_39:
      v64 = v99;
      v107 = *(v93 + 8);
      v107(v98, v97);
      v107(v95, v97);
      goto LABEL_40;
    case 8u:
      v66 = v133;
      sub_100027A40(v51, v133, type metadata accessor for FMSelectedSection);
      v67 = v148;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        v109 = v141;
        v108 = v142;
LABEL_49:
        (*(v109 + 8))(v66, v108);
        goto LABEL_52;
      }

      v68 = v141;
      v69 = *(v141 + 32);
      v70 = v130;
      v71 = v66;
      v72 = v142;
      v69(v130, v71, v142);
      v73 = v131;
      v69(v131, v67, v72);
      v64 = static FMIPUnknownItem.== infix(_:_:)();
      v74 = *(v68 + 8);
      v74(v73, v72);
      v74(v70, v72);
LABEL_40:
      sub_100029F80(v51, type metadata accessor for FMSelectedSection);
      break;
    case 9u:
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xAu:
      goto LABEL_52;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xEu:
      if (swift_getEnumCaseMultiPayload() != 14)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0xFu:
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x10u:
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x11u:
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x12u:
      if (swift_getEnumCaseMultiPayload() != 18)
      {
        goto LABEL_52;
      }

      goto LABEL_42;
    case 0x13u:
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_52;
      }

LABEL_42:
      sub_100029F80(v51, type metadata accessor for FMSelectedSection);
      v64 = 1;
      return v64 & 1;
    default:
      sub_100027A40(v51, v48, type metadata accessor for FMSelectedSection);
      v55 = v148;
      if (swift_getEnumCaseMultiPayload())
      {
        sub_100012DF0(v48, &qword_1006BEEE0, qword_100552070);
LABEL_52:
        sub_100012DF0(v51, &qword_1006B7A88, &unk_100559F00);
        v64 = 0;
      }

      else
      {
        v111 = v123;
        sub_100245A38(v48, v123);
        v112 = v124;
        sub_100245A38(v55, v124);
        v113 = v127;
        sub_100007204(v111, v127, &qword_1006BEEE0, qword_100552070);
        v114 = v125;
        v115 = *(v125 + 48);
        v116 = v126;
        sub_100007204(v112, v126, &qword_1006BEEE0, qword_100552070);
        v117 = v51;
        v118 = *(v114 + 48);
        v64 = sub_100243B84(v113, v113 + v115, v116, v116 + v118);
        sub_100012DF0(v112, &qword_1006BEEE0, qword_100552070);
        sub_100012DF0(v111, &qword_1006BEEE0, qword_100552070);
        sub_100012DF0(v116 + v118, &qword_1006B07D0, qword_100552820);
        v119 = *(v145 + 8);
        v120 = v116;
        v121 = v146;
        v119(v120, v146);
        sub_100012DF0(v113 + v115, &qword_1006B07D0, qword_100552820);
        v119(v113, v121);
        sub_100029F80(v117, type metadata accessor for FMSelectedSection);
      }

      break;
  }

  return v64 & 1;
}

id sub_10006063C(void *a1, unsigned __int8 a2, void *a3, void *a4, void *a5)
{
  v10 = a2;
  v11 = type metadata accessor for _Glass._GlassVariant();
  __chkstk_darwin(v11 - 8);
  v12 = type metadata accessor for _Glass();
  v13 = *(v12 - 8);
  *&v14 = __chkstk_darwin(v12).n128_u64[0];
  v16 = &v18 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v10 == 2)
  {
    v20 = 0;
    v18 = 0u;
    v19 = 0u;
    UIView._background.setter();
    goto LABEL_11;
  }

  if (![a3 isHidden])
  {
LABEL_11:

    return [a1 layoutIfNeeded];
  }

  if (qword_1006AEC30 != -1)
  {
    swift_once();
  }

  static _Glass._GlassVariant.regular.getter();
  _Glass.init(_:smoothness:)();
  *(&v19 + 1) = v12;
  v20 = &protocol witness table for _Glass;
  sub_100008FC0(&v18);
  _Glass.flexible(_:)();
  (*(v13 + 8))(v16, v12);
  UIView._background.setter();
  if ((a2 == 0) != [a4 isHidden])
  {
    [a4 setHidden:a2 == 0];
  }

  if ((((a2 == 0) ^ [a5 isHidden]) & 1) == 0)
  {
    [a5 setHidden:a2 != 0];
  }

  return [a1 layoutIfNeeded];
}

id sub_1000608E0(void *a1, char a2, id a3, void *a4, void *a5)
{
  if (a2 == 2)
  {
    [a3 setAlpha:{a3, a4, a5, 0.0}];
    if (([a3 isHidden] & 1) == 0)
    {
      [a3 setHidden:1];
    }
  }

  else
  {
    [a3 setAlpha:1.0];
    if ([a3 isHidden])
    {
      [a3 setHidden:0];
    }

    if ((a2 == 0) != [a4 isHidden])
    {
      [a4 setHidden:a2 == 0];
    }

    if ((a2 == 1) != [a5 isHidden])
    {
      [a5 setHidden:a2 == 1];
    }
  }

  return [a1 layoutIfNeeded];
}

void sub_100060A40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100005B14(v7, qword_1006D4630);
  sub_100062074(a1, v6);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v16 = 0;
    v17 = 0xE000000000000000;
    v18 = v11;
    _print_unlocked<A, B>(_:_:)();
    v12 = v16;
    v13 = v17;
    sub_10005D4E4(v6);
    v14 = sub_100005B4C(v12, v13, &v18);

    *(v10 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v8, v9, "FMStatusBar: selection changed %s", v10, 0xCu);
    sub_100006060(v11);
  }

  else
  {

    sub_10005D4E4(v6);
  }

  if ((*(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_initialState) & 1) == 0 && *(*(*(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_mediator) + 40) + OBJC_IVAR____TtC6FindMy18FMLocationProvider_limitedPrecision) == 1)
  {
    *(a2 + OBJC_IVAR____TtC6FindMy11FMStatusBar_state) = 3;
    sub_10033B9C0();
  }
}

void sub_100060CA0(void *a1)
{
  v3 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  *&v4 = __chkstk_darwin(v3 - 8).n128_u64[0];
  v6 = &v19 - v5;
  v7 = [a1 subviews];
  sub_10000905C(0, &qword_1006BA410, UIView_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_27;
    }
  }

  else if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  if ((v8 & 0xC000000000000001) != 0)
  {
    v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v9 = *(v8 + 32);
  }

  v10 = v9;

  v11 = [v10 gestureRecognizers];

  if (!v11)
  {
    return;
  }

  sub_10000905C(0, &qword_1006B0A00, UIGestureRecognizer_ptr);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v8 >> 62)
  {
LABEL_26:
    v12 = _CocoaArrayWrapper.endIndex.getter();
    if (v12)
    {
      goto LABEL_9;
    }

    goto LABEL_27;
  }

  v12 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
LABEL_9:
    if (v12 < 1)
    {
      __break(1u);
      return;
    }

    v13 = 0;
    v20 = OBJC_IVAR____TtC6FindMy19FMMapViewController_isAutomaticCenteringEnabled;
    v21 = OBJC_IVAR____TtC6FindMy19FMMapViewController_statusBar;
    v14 = OBJC_IVAR____TtC6FindMy19FMMapViewController_lastCenterAnimationDisableDate;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v8 + 8 * v13 + 32);
      }

      v17 = v16;
      if ([v16 state] == 1)
      {
      }

      else
      {
        v18 = [v17 state];

        if (v18 != 3)
        {
          goto LABEL_13;
        }
      }

      *(*(v1 + v21) + OBJC_IVAR____TtC6FindMy11FMStatusBar_userDidInteractWithMap) = 1;
      *(v1 + v20) = 0;
      v15 = type metadata accessor for Date();
      (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
      swift_beginAccess();
      sub_10040682C(v6, v1 + v14);
      swift_endAccess();
LABEL_13:
      if (v12 == ++v13)
      {

        return;
      }
    }
  }

LABEL_27:
}

uint64_t sub_100061010(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v24 = a1;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v8 = *(v25 - 8);
  __chkstk_darwin(v25);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for FMSelectedSection(0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v14 = static OS_dispatch_queue.main.getter();
  sub_100062074(v24, &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = (*(v12 + 80) + 16) & ~*(v12 + 80);
  v16 = swift_allocObject();
  sub_10005B574(&v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15);
  *(v16 + ((v13 + v15 + 7) & 0xFFFFFFFFFFFFFFF8)) = v4;
  aBlock[4] = sub_100062140;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100637570;
  v17 = _Block_copy(aBlock);
  v18 = v4;

  v19 = static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100037918(v19, v20, v21);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v26 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v25);
}

uint64_t sub_100061350()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0, &qword_100558D50) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:
  v15 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  return _swift_deallocObject(v0, v15 + 8, v2 | 7);
}

uint64_t sub_10006163C(uint64_t a1)
{
  result = type metadata accessor for Date();
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

uint64_t type metadata accessor for FMTrackAnnotation(uint64_t a1)
{
  result = qword_1006BF8C8;
  if (!qword_1006BF8C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061728(uint64_t a1)
{
  result = type metadata accessor for FMIPUnknownItem();
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

uint64_t type metadata accessor for FMUnknownItemAnnotation(uint64_t a1)
{
  result = qword_1006BCB10;
  if (!qword_1006BCB10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100061944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for DispatchQoS();
  v7 = *(v27 - 8);
  __chkstk_darwin(v27);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for FMSelectedSection(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100005B14(v14, qword_1006D4630);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v25 = v9;
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v15, v16, "FMMapOptionView: Update section selection", v17, 2u);
    v9 = v25;
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v18 = static OS_dispatch_queue.main.getter();
  sub_100062074(a1, &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 16) = v26;
  sub_10005B574(v13, v20 + v19);
  aBlock[4] = sub_1000622F4;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100633F68;
  v22 = _Block_copy(aBlock);
  v23 = v21;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A0C0(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100037970();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v28 + 8))(v6, v4);
  return (*(v7 + 8))(v9, v27);
}

uint64_t sub_100061D90()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 4)
  {
    if (EnumCaseMultiPayload <= 6)
    {

      if (*(v5 + 16) >= 4uLL)
      {
      }
    }

    else
    {
      switch(EnumCaseMultiPayload)
      {
        case 7:
LABEL_12:
          v7 = type metadata accessor for FMIPDevice();
LABEL_19:
          (*(*(v7 - 8) + 8))(v0 + v3, v7);
          break;
        case 8:
          v7 = type metadata accessor for FMIPUnknownItem();
          goto LABEL_19;
        case 10:
          v8 = type metadata accessor for URL();
          (*(*(v8 - 8) + 8))(v0 + v3, v8);
          v9 = *(sub_10007EBC0(&qword_1006B6BD0, &qword_100558D50) + 48);
          v10 = type metadata accessor for UUID();
          (*(*(v10 - 8) + 8))(v5 + v9, v10);
          break;
      }
    }
  }

  else
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload == 2)
      {
        v7 = type metadata accessor for FMFFriend();
      }

      else
      {
        v7 = type metadata accessor for FMIPItem();
      }

      goto LABEL_19;
    }

    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        goto LABEL_20;
      }

      goto LABEL_12;
    }

    v11 = type metadata accessor for FMIPDevice();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = *(sub_10007EBC0(&qword_1006BEEE0, qword_100552070) + 48);
    v13 = type metadata accessor for FMIPItem();
    v14 = *(v13 - 8);
    if (!(*(v14 + 48))(v5 + v12, 1, v13))
    {
      (*(v14 + 8))(v5 + v12, v13);
    }
  }

LABEL_20:

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100062074(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FMSelectedSection(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_100062140()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_100060A40(v0 + v2, v3);
}

uint64_t sub_1000621CC(uint64_t a1)
{
  result = type metadata accessor for FMIPUnknownItem();
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

id sub_1000622F4()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_10005CD48(v2, v3);
}

void sub_100062358()
{
  v1 = *(type metadata accessor for FMSelectedSection(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10005CE08(v0 + v2, v3);
}

uint64_t type metadata accessor for FMInfoAnnotation(uint64_t a1)
{
  result = qword_1006B5558;
  if (!qword_1006B5558)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_100062474(unint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v7 = _CocoaArrayWrapper.endIndex.getter();
  if (!v7)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v8 = v7;
  v9 = a2(v7, 0);
  a3((v9 + 4), v8, a1);
  v11 = v10;

  result = v9;
  if (v11 != v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_100062518(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&unk_1006AF8B0, &unk_100555DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006B4140, &qword_1005524F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

Swift::Int sub_10006264C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000627A8(v2);
  }

  v3 = v2[2];
  v18[0] = (v2 + 4);
  v18[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 4;
      do
      {
        v11 = *&v2[2 * v9 + 4];
        v12 = v8;
        v13 = v10;
        do
        {
          if (v11 >= *v13)
          {
            break;
          }

          v14 = v13[3];
          *(v13 + 1) = *v13;
          *v13 = v11;
          v13[1] = v14;
          v13 -= 2;
        }

        while (!__CFADD__(v12++, 1));
        ++v9;
        v10 += 2;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      sub_10007EBC0(&qword_1006B4140, &qword_1005524F0);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v16[0] = (v7 + 4);
    v16[1] = v6;
    sub_100401084(v16, v17, v18, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void *sub_1000627BC(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_10007EBC0(&unk_1006AF8B0, &unk_100555DF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10007EBC0(&qword_1006B4140, &qword_1005524F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

double sub_100062900(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_100062910(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  __chkstk_darwin(v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v9 = &v27 - v8;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100005B14(v10, qword_1006D4630);
  sub_100007204(a1, v9, &qword_1006AF740, &unk_100552330);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v28 = v14;
    *v13 = 136315138;
    sub_100007204(v9, v6, &qword_1006AF740, &unk_100552330);
    v15 = String.init<A>(describing:)();
    v17 = v16;
    sub_100012DF0(v9, &qword_1006AF740, &unk_100552330);
    v18 = sub_100005B4C(v15, v17, &v28);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "FMPeopleProvider: my location changed: %s", v13, 0xCu);
    sub_100006060(v14);
  }

  else
  {

    sub_100012DF0(v9, &qword_1006AF740, &unk_100552330);
  }

  v19 = *(v2 + 32);

  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);

  os_unfair_lock_unlock((v19 + 24));

  if (!(v20 >> 62))
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v21)
    {
      goto LABEL_8;
    }

LABEL_18:

    return;
  }

  v21 = _CocoaArrayWrapper.endIndex.getter();
  if (!v21)
  {
    goto LABEL_18;
  }

LABEL_8:
  if (v21 >= 1)
  {
    for (i = 0; i != v21; ++i)
    {
      if ((v20 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v25 = *(v20 + 8 * i + 32);
      }

      v26 = v25 + OBJC_IVAR____TtC6FindMy20FMPeopleSubscription_subscriber;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v23 = *(v26 + 8);
        ObjectType = swift_getObjectType();
        (*(v23 + 48))(v2, a1, ObjectType, v23);

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_18;
  }

  __break(1u);
}

uint64_t sub_100062C80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v45 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = type metadata accessor for DispatchQoS();
  v44 = *(v46 - 8);
  __chkstk_darwin(v46);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10007EBC0(&qword_1006AF740, &unk_100552330);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8 - 8);
  v41 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v35 - v12;
  __chkstk_darwin(v14);
  v16 = &v35 - v15;
  if (qword_1006AEBE0 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100005B14(v17, qword_1006D4630);
  sub_100007204(a1, v16, &qword_1006AF740, &unk_100552330);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v37 = v9;
    v38 = a1;
    v39 = v5;
    v40 = v4;
    v20 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock[0] = v36;
    *v20 = 136315138;
    sub_100007204(v16, v13, &qword_1006AF740, &unk_100552330);
    v21 = type metadata accessor for FMFLocation();
    v22 = *(v21 - 8);
    if ((*(v22 + 48))(v13, 1, v21) == 1)
    {
      sub_100012DF0(v13, &qword_1006AF740, &unk_100552330);
      v23 = 0;
      v24 = 0xE000000000000000;
    }

    else
    {
      v23 = FMFLocation.debugDescription.getter();
      v24 = v25;
      (*(v22 + 8))(v13, v21);
    }

    v5 = v39;
    sub_100012DF0(v16, &qword_1006AF740, &unk_100552330);
    v26 = sub_100005B4C(v23, v24, aBlock);

    *(v20 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v18, v19, "FMMapViewDataSource: didUpdate myLocation %s", v20, 0xCu);
    sub_100006060(v36);

    v4 = v40;
    v9 = v37;
    a1 = v38;
  }

  else
  {

    sub_100012DF0(v16, &qword_1006AF740, &unk_100552330);
  }

  sub_10000905C(0, &qword_1006AEDC0, OS_dispatch_queue_ptr);
  v27 = static OS_dispatch_queue.main.getter();
  v28 = v41;
  sub_100007204(a1, v41, &qword_1006AF740, &unk_100552330);
  v29 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v30 = swift_allocObject();
  *(v30 + 16) = v42;
  sub_100035318(v28, v30 + v29, &qword_1006AF740, &unk_100552330);
  aBlock[4] = sub_1004D1288;
  aBlock[5] = v30;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100004AE4;
  aBlock[3] = &unk_100642118;
  v31 = _Block_copy(aBlock);

  v32 = v43;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_10000A738(&qword_1006AEDE0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_10007EBC0(&unk_1006B0640, &unk_100552B10);
  sub_100004098(&qword_1006AEDF0, &unk_1006B0640, &unk_100552B10, &protocol conformance descriptor for [A]);
  v33 = v45;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v5 + 8))(v33, v4);
  return (*(v44 + 8))(v32, v46);
}

uint64_t sub_1000632D4()
{
  v1 = *(sub_10007EBC0(&qword_1006AF740, &unk_100552330) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = type metadata accessor for FMFLocation();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, v3 + v4, v2 | 7);
}

uint64_t sub_100063420(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100063440(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for FMDeviceEditableMessageViewStyle(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FMDeviceEditableMessageViewStyle(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

BOOL sub_1000634C8(void *a1, uint64_t *a2)
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

void *sub_10006353C@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t sub_10006357C@<X0>(uint64_t *a1@<X8>)
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1000635D0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *sub_1000635FC@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t sub_1000636E8()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063748()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063788()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000637C0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_1000637F8()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063830()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000638B8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000638F4()
{
  v1 = type metadata accessor for FMIPDevice();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100063990()
{

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_1000639E8()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063A2C()
{
  v1 = type metadata accessor for FMFLocationAlert();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10007EBC0(&qword_1006B0050, &unk_1005538A0) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7 + 8) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  v10 = type metadata accessor for FMFFriend();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, ((v9 + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | v7 | 7);
}

uint64_t sub_100063C00()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063C40()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100063C7C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063CB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063D2C()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100063DCC()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = v4 + *(v2 + 64);
  v6 = *(sub_10007EBC0(&qword_1006B04D8, &unk_100552D90) - 8);
  v7 = *(v6 + 80);
  v8 = (v5 + v7) & ~v7;
  v9 = *(v6 + 64);

  (*(v2 + 8))(v0 + v4, v1);
  v10 = type metadata accessor for FMFActionURLInfo();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v8, 1, v10))
  {
    (*(v11 + 8))(v0 + v8, v10);
  }

  return _swift_deallocObject(v0, v8 + v9, v3 | v7 | 7);
}

uint64_t sub_100063F70()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100063FB4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100063FF4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006403C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064074()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000640B8()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000640F4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064134()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t sub_10006416C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000641F0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064230()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100064268()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000642A0()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064378()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v6 + 8, v3 | 7);
}

uint64_t sub_100064478()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 34) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064558()
{
  v12 = type metadata accessor for FMIPItemActionStatus();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 17) & 0xFFFFFFFFFFFFFFF8;
  v5 = type metadata accessor for FMIPItem();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v4 + v7 + 8) & ~v7;
  v11 = v2 | v7;
  v9 = (((*(v6 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v1 + 8))(v0 + v3, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return _swift_deallocObject(v0, v9 + 8, v11 | 7);
}

uint64_t sub_100064700()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100064860()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_1000648FC()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  if (*(v0 + 16))
  {
  }

  v5 = (v3 + 32) & ~v3;
  (*(v2 + 8))(v0 + v5, v1);

  return _swift_deallocObject(v0, v5 + v4, v3 | 7);
}

uint64_t sub_1000649C8()
{
  v1 = type metadata accessor for FMIPItemActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for FMIPItem();
  v7 = *(v6 - 8);
  v8 = *(v7 + 80);
  v9 = (v4 + v5 + v8) & ~v8;
  v10 = v3 | v8;
  v11 = (*(v7 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  (*(v7 + 8))(v0 + v9, v6);

  return _swift_deallocObject(v0, v11 + 8, v10 | 7);
}

uint64_t sub_100064B30()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100064C20()
{

  return _swift_deallocObject(v0, 57, 7);
}

uint64_t sub_100064CE8()
{
  v1 = type metadata accessor for FMIPBeaconShare();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100064DAC()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100064DEC()
{
  v1 = *(sub_10007EBC0(&qword_1006B1310, &unk_100553750) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = type metadata accessor for FMIPURLInfo();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  return _swift_deallocObject(v0, ((((((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v2 | 7);
}

uint64_t sub_100064F3C(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
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
      v13 = type metadata accessor for PeopleListPersonRow.State();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 128);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100065060(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for Date();
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
      v13 = type metadata accessor for PeopleListPersonRow.State();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 128);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100065194(uint64_t a1, uint64_t a2, int *a3)
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

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a2)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a3[12];
LABEL_9:
    v13 = *(v10 + 48);

    return v13(a1 + v11, a2, v9);
  }

  v12 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  if (*(*(v12 - 8) + 84) == a2)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a3[13];
    goto LABEL_9;
  }

  v14 = type metadata accessor for FMIPProductType();
  v15 = *(*(v14 - 8) + 48);
  v16 = a1 + a3[15];

  return v15(v16, a2, v14);
}

uint64_t sub_10006530C(uint64_t result, uint64_t a2, int a3, int *a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
    return result;
  }

  v8 = type metadata accessor for Date();
  if (*(*(v8 - 8) + 84) == a3)
  {
    v9 = v8;
    v10 = *(v8 - 8);
    v11 = a4[12];
LABEL_7:
    v13 = *(v10 + 56);

    return v13(v5 + v11, a2, a2, v9);
  }

  v12 = sub_10007EBC0(&unk_1006B0000, &unk_100552AA0);
  if (*(*(v12 - 8) + 84) == a3)
  {
    v9 = v12;
    v10 = *(v12 - 8);
    v11 = a4[13];
    goto LABEL_7;
  }

  v14 = type metadata accessor for FMIPProductType();
  v15 = *(*(v14 - 8) + 56);
  v16 = v5 + a4[15];

  return v15(v16, a2, a2, v14);
}

uint64_t sub_100065488()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000654C0()
{
  v1 = *(sub_10007EBC0(&qword_1006B0050, &unk_1005538A0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = (*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;

  v5 = type metadata accessor for FMFFriend();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v3, 1, v5))
  {
    (*(v6 + 8))(v0 + v3, v5);
  }

  if (*(v0 + v4))
  {
  }

  return _swift_deallocObject(v0, v4 + 16, v2 | 7);
}

uint64_t sub_100065600()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100065638()
{
  v1 = type metadata accessor for FMFActionStatus();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_100065714()
{
  if (*(v0 + 16))
  {
  }

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100065760()
{

  if (*(v0 + 32))
  {
  }

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000657D4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006580C()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10006584C()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065884()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000658BC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000658F4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006592C()
{

  return _swift_deallocObject(v0, 33, 7);
}

uint64_t sub_100065964()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000659A4()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000659E4()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100065A1C()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_100065B10()
{
  v1 = type metadata accessor for FMIPItem();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 32, v3 | 7);
}

uint64_t sub_100065C0C()
{
  v1 = type metadata accessor for FMItemDetailViewModel(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 24) & ~v2;
  v13 = *(*(v1 - 1) + 64);

  v4 = v0 + v3;

  v5 = v1[12];
  v6 = type metadata accessor for Date();
  v7 = *(v6 - 8);
  v8 = *(v7 + 8);
  v8(v0 + v3 + v5, v6);
  v9 = v1[13];
  if (!(*(v7 + 48))(v0 + v3 + v9, 1, v6))
  {
    v8(v4 + v9, v6);
  }

  v10 = v1[15];
  v11 = type metadata accessor for FMIPProductType();
  (*(*(v11 - 8) + 8))(v4 + v10, v11);

  return _swift_deallocObject(v0, v3 + v13, v2 | 7);
}

uint64_t sub_100065E18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 44);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 48);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_100065F3C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 32) = (a2 - 1);
  }

  else
  {
    v8 = type metadata accessor for UUID();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 44);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = type metadata accessor for Date();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 48);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_100066064()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006609C()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000660D4()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006610C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10006617C()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000661B4()
{
  v1 = *(sub_10007EBC0(&qword_1006B2B68, &qword_100554CF8) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(v1 + 64);

  v5 = (v0 + v3);
  v6 = type metadata accessor for FMPendingInfo(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {

    v7 = *(v6 + 20);
    v8 = type metadata accessor for FMSelectionPendingAction(0);
    if (!(*(*(v8 - 8) + 48))(v5 + v7, 1, v8) && swift_getEnumCaseMultiPayload() <= 1)
    {
      v9 = type metadata accessor for UUID();
      (*(*(v9 - 8) + 8))(v5 + v7, v9);
    }
  }

  return _swift_deallocObject(v0, v4 + v3 + 1, v2 | 7);
}

uint64_t sub_100066368()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5 + 24))
  {
    sub_100006060((v0 + v5));
  }

  return _swift_deallocObject(v0, v5 + 32, v3 | 7);
}

uint64_t sub_10006644C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_100066514(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = sub_10007EBC0(&unk_1006B8DD0, &unk_100555060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1000665FC()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100066634()
{

  return _swift_deallocObject(v0, 88, 7);
}