uint64_t sub_1000B7768()
{
  if (*(*(*(v0 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment__isEnabled) + 24) != 1)
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_10033F3F8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "### Handoff user setting is disabled (Settings > General > AirPlay & Continuity > Transfer To HomePod)";
    goto LABEL_14;
  }

  if (qword_100339290 != -1)
  {
    swift_once();
  }

  CurrentValueSubject.value.getter();
  if (v22 == 2)
  {
    CurrentValueSubject.value.getter();

    if (LOBYTE(v21[0]) != 1)
    {
LABEL_6:
      if (qword_100338EF0 != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      sub_100003078(v1, qword_10033F3F8);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v2, v3))
      {
        goto LABEL_15;
      }

      v4 = swift_slowAlloc();
      *v4 = 0;
      v5 = "### Local device setup not complete";
LABEL_14:
      _os_log_impl(&_mh_execute_header, v2, v3, v5, v4, 2u);

LABEL_15:

      return 0;
    }
  }

  else
  {

    if ((v22 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  type metadata accessor for ApplicationBlocker();
  swift_initStaticObject();
  if ((sub_100208048() & 1) == 0)
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_100003078(v10, qword_10033F3F8);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v2, v3))
    {
      goto LABEL_15;
    }

    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = "### Foreground application doesn't allow Handoff";
    goto LABEL_14;
  }

  if (qword_1003391C0 != -1)
  {
    swift_once();
  }

  v8 = *(*(qword_10038B5A0 + 40) + 16);

  CurrentValueSubject.value.getter();
  v9 = v22;
  if (v22)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v9 = v21[0];
  }

  v11 = *(v9 + 16);

  if (v11)
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_100003078(v12, qword_10033F3F8);

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v22 = v16;
      *v15 = 136315138;
      v21[3] = type metadata accessor for HandoffSuppressionManagerState();
      v21[0] = v8;

      v17 = sub_1000CF338(v21);
      v19 = v18;
      sub_10000903C(v21);
      v20 = sub_100017494(v17, v19, &v22);

      *(v15 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "### Handoff is suppressed: %s", v15, 0xCu);
      sub_10000903C(v16);
    }

    return 0;
  }

  return 1;
}

void sub_1000B7C40()
{
  v3 = sub_100035D04(&qword_10033F5F0, &qword_1002762C0);
  __chkstk_darwin(v3 - 8);
  v5 = (&v47 - v4);
  v6 = *(*(v1 + 16) + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  v51 = type metadata accessor for HandoffDevice(0);
  v52 = type metadata accessor for UUID();
  v53 = sub_1000BAC04(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v7 = v6 + qword_100346AF8;

  os_unfair_lock_lock(v7);
  v55 = *(v7 + 8);

  swift_getAtKeyPath();

  v8 = v56;
  os_unfair_lock_unlock(v7);

  v9 = *(v8 + 16);
  if (v9)
  {
    v10 = sub_100009194(*(v8 + 16), 0);
    v11 = sub_100009A04(&v55, (v10 + 32), v9, v8);
    sub_100004F98(v55);
    if (v11 != v9)
    {
      __break(1u);
      goto LABEL_90;
    }
  }

  else
  {

    v10 = _swiftEmptyArrayStorage;
  }

  v55 = _swiftEmptyArrayStorage;
  if (v10 < 0 || (v10 & 0x4000000000000000) != 0)
  {
    goto LABEL_51;
  }

  for (i = *(v10 + 16); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v14 = 0;
    v50 = v10 & 0xC000000000000001;
    *&v12 = 136315138;
    v47 = v12;
    v48 = v5;
    v49 = i;
    while (v50)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        goto LABEL_49;
      }

LABEL_14:

      CurrentValueSubject.value.getter();
      v17 = v54;
      if (v54 == 6)
      {
        CurrentValueSubject.value.getter();

        v17 = v56;
        v18 = v56 >= 2u;
        if (v56 <= 2u)
        {
          goto LABEL_20;
        }
      }

      else
      {

        v18 = v17 >= 2;
        if (v17 <= 2)
        {
LABEL_20:
          v19 = !v18;
          v20 = 1;
          goto LABEL_24;
        }
      }

      if (v17 != 3 && v17 != 4)
      {
        goto LABEL_9;
      }

      v19 = 0;
      v20 = 0;
LABEL_24:
      sub_10006F838();
      v21 = sub_1001DF2A4();

      if (v21)
      {
        if (v20)
        {
          goto LABEL_9;
        }
      }

      else if (v19)
      {
        goto LABEL_9;
      }

      sub_10006F430(v5);
      v22 = _s8CardInfoOMa(0);
      v23 = (*(*(v22 - 8) + 48))(v5, 1, v22);
      v24 = sub_1000097E8(v5, &qword_10033F5F0, &qword_1002762C0);
      if (v23 == 1)
      {
        if (qword_100338EF0 != -1)
        {
          swift_once();
        }

        v26 = type metadata accessor for Logger();
        sub_100003078(v26, qword_10033F3F8);
        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          *v29 = 0;
          _os_log_impl(&_mh_execute_header, v27, v28, "### Blocking handoff session - device does not have sufficient details to build CardInfo", v29, 2u);
          i = v49;
        }

        goto LABEL_10;
      }

      if ((sub_10006F8C8(v24, v25) & 1) == 0)
      {
        if (qword_100338EF0 != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        sub_100003078(v30, qword_10033F3F8);

        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v56 = v34;
          *v33 = v47;
          v36 = sub_1000092A0(v34, v35);
          v38 = sub_100017494(v36, v37, &v56);

          *(v33 + 4) = v38;
          _os_log_impl(&_mh_execute_header, v31, v32, "### Handoff not ready on %s", v33, 0xCu);
          sub_10000903C(v34);
          v5 = v48;
        }

        i = v49;
        goto LABEL_10;
      }

      if (sub_1000B9918(v15))
      {
        if (qword_100338F70 != -1)
        {
          swift_once();
        }

        swift_getKeyPath();
        swift_getKeyPath();

        static Published.subscript.getter();

        if (v56 == 1)
        {
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_10;
        }
      }

LABEL_9:

LABEL_10:
      ++v14;
      if (v16 == i)
      {
        v0 = v55;
        goto LABEL_53;
      }
    }

    if (v14 >= *(v10 + 16))
    {
      goto LABEL_50;
    }

    v15 = *(v10 + 8 * v14 + 32);

    v16 = v14 + 1;
    if (!__OFADD__(v14, 1))
    {
      goto LABEL_14;
    }

LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    ;
  }

  v0 = _swiftEmptyArrayStorage;
LABEL_53:

  if (v0 < 0 || (v0 & 0x4000000000000000) != 0)
  {
LABEL_87:
    v10 = _CocoaArrayWrapper.endIndex.getter();
    if (!v10)
    {
      goto LABEL_88;
    }
  }

  else
  {
    v10 = *(v0 + 16);
    if (!v10)
    {
      goto LABEL_88;
    }
  }

  v2 = v0 & 0xC000000000000001;
  if ((v0 & 0xC000000000000001) == 0)
  {
    if (!*(v0 + 16))
    {
      __break(1u);
      return;
    }

    if (v10 == 1)
    {
      goto LABEL_88;
    }

    goto LABEL_59;
  }

LABEL_90:
  specialized _ArrayBuffer._getElementSlowPath(_:)();
  if (v10 == 1)
  {
    goto LABEL_88;
  }

LABEL_59:
  v39 = 1;
  while (2)
  {
    v40 = v39;
    while (1)
    {
      if (v2)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
          goto LABEL_84;
        }
      }

      else
      {
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_85;
        }

        if (v40 >= *(v0 + 16))
        {
          goto LABEL_86;
        }

        v39 = v40 + 1;
        if (__OFADD__(v40, 1))
        {
LABEL_84:
          __break(1u);
LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
          goto LABEL_87;
        }
      }

      CurrentValueSubject.value.getter();
      if ((v55 & 0x10000000000) != 0)
      {
        CurrentValueSubject.value.getter();

        v41 = *&v56;
        v42 = BYTE4(v56);
      }

      else
      {
        v43 = BYTE4(v55);
        v41 = *&v55;

        v42 = v43 & 1;
      }

      if (v42)
      {
        v41 = 3.4028e38;
      }

      CurrentValueSubject.value.getter();
      if ((v55 & 0x10000000000) != 0)
      {
        CurrentValueSubject.value.getter();

        if ((v56 & 0x100000000) == 0)
        {
          v44 = *&v56;
          goto LABEL_79;
        }
      }

      else
      {
        v45 = *&v55;
        v46 = v55 | (BYTE4(v55) << 32);

        if ((v46 & 0x100000000) == 0)
        {
          v44 = v45;
          goto LABEL_79;
        }
      }

      v44 = 3.4028e38;
LABEL_79:
      if (v41 < v44)
      {
        break;
      }

      ++v40;
      if (v39 == v10)
      {
        goto LABEL_88;
      }
    }

    if (v39 != v10)
    {
      continue;
    }

    break;
  }

LABEL_88:
}

double sub_1000B84B8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B8518(a1);
  }

  return result;
}

void sub_1000B8518(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v73 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS();
  v72 = *(v74 - 1);
  __chkstk_darwin(v74);
  v71 = &v66 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033F3F8);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v70 = v3;
    v10 = v9;
    v69 = swift_slowAlloc();
    v81 = v69;
    *v10 = 136315650;
    *(v10 + 4) = sub_100017494(0xD000000000000014, 0x800000010029AF70, &v81);
    *(v10 + 12) = 2080;
    aBlock = 60;
    v76 = 0xE100000000000000;
    v68 = v8;
    v11 = UUID.uuidString.getter();
    sub_10000B584(8, v11, v12);
    v67 = v7;

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v20._countAndFlagsBits = sub_1000092A0(v18, v19);
    String.append(_:)(v20);

    v21._countAndFlagsBits = 62;
    v21._object = 0xE100000000000000;
    String.append(_:)(v21);
    v22 = sub_100017494(aBlock, v76, &v81);

    *(v10 + 14) = v22;
    *(v10 + 22) = 2080;
    v24 = sub_1001EE1E4(v23);
    v26 = sub_100017494(v24, v25, &v81);

    *(v10 + 24) = v26;
    v27 = v67;
    _os_log_impl(&_mh_execute_header, v67, v68, "%s: session=%s, %s", v10, 0x20u);
    swift_arrayDestroy();

    v3 = v70;
  }

  else
  {
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v28 = aBlock;
  if (aBlock && (, v28 == a1))
  {
    v57 = (a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
    v58 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
    v59 = *(a1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8);
    *v57 = 0;
    v57[1] = 0;
    sub_10002689C(v58, v59);
    swift_weakAssign();
    swift_getKeyPath();
    swift_getKeyPath();
    aBlock = 0;

    static Published.subscript.setter();
    if (qword_1003390F0 != -1)
    {
      swift_once();
    }

    if (qword_10038B2F0)
    {
      sub_100170A30(a1);
    }

    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v60 = swift_allocObject();
    swift_weakInit();
    v61 = swift_allocObject();
    *(v61 + 16) = v60;
    *(v61 + 24) = a1;
    v79 = sub_1000BABF4;
    v80 = v61;
    aBlock = _NSConcreteStackBlock;
    v76 = 1107296256;
    v77 = sub_100018AB8;
    v78 = &unk_100305768;
    v62 = _Block_copy(&aBlock);

    v63 = v71;
    static DispatchQoS.unspecified.getter();
    v81 = _swiftEmptyArrayStorage;
    sub_1000BAC04(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    v64 = v73;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v62);
    (*(v3 + 8))(v64, v2);
    (*(v72 + 8))(v63, v74);
  }

  else
  {

    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v81 = v74;
      *v31 = 136315394;
      aBlock = 60;
      v76 = 0xE100000000000000;
      v32 = UUID.uuidString.getter();
      sub_10000B584(8, v32, v33);

      v34 = static String._fromSubstring(_:)();
      v36 = v35;

      v37._countAndFlagsBits = v34;
      v37._object = v36;
      String.append(_:)(v37);

      v38._countAndFlagsBits = 32;
      v38._object = 0xE100000000000000;
      String.append(_:)(v38);
      v41._countAndFlagsBits = sub_1000092A0(v39, v40);
      String.append(_:)(v41);

      v42._countAndFlagsBits = 62;
      v42._object = 0xE100000000000000;
      String.append(_:)(v42);
      v43 = sub_100017494(aBlock, v76, &v81);

      *(v31 + 4) = v43;
      *(v31 + 12) = 2080;
      swift_getKeyPath();
      swift_getKeyPath();
      static Published.subscript.getter();

      if (aBlock)
      {
        aBlock = 60;
        v76 = 0xE100000000000000;
        v44 = UUID.uuidString.getter();
        sub_10000B584(8, v44, v45);

        v46 = static String._fromSubstring(_:)();
        v48 = v47;

        v49._countAndFlagsBits = v46;
        v49._object = v48;
        String.append(_:)(v49);

        v50._countAndFlagsBits = 32;
        v50._object = 0xE100000000000000;
        String.append(_:)(v50);
        v53._countAndFlagsBits = sub_1000092A0(v51, v52);
        String.append(_:)(v53);

        v54._countAndFlagsBits = 62;
        v54._object = 0xE100000000000000;
        String.append(_:)(v54);

        v55 = aBlock;
        v56 = v76;
      }

      else
      {
        v56 = 0xE300000000000000;
        v55 = 7104878;
      }

      v65 = sub_100017494(v55, v56, &v81);

      *(v31 + 14) = v65;
      _os_log_impl(&_mh_execute_header, v29, v30, "### Session finished while not the current session? session=%s, self.session=%s", v31, 0x16u);
      swift_arrayDestroy();
    }
  }
}

void sub_1000B8F18(uint64_t a1)
{
  if (!qword_10033F458)
  {
    sub_100035D4C(&unk_10033F460, qword_100276138);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_10033F458);
    }
  }
}

double sub_1000B8F7C(uint64_t a1, void (*a2)(void, void, void))
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000B6F90(a2, 0xA000000000000000);
  }

  return result;
}

uint64_t sub_1000B8FE0()
{
  v1 = v0;
  sub_100035D04(&unk_10033D890, &qword_100275EB0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10026F050;
  *(v2 + 32) = 0xD000000000000027;
  *(v2 + 40) = 0x800000010029AF40;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v27)
  {
    v3 = UUID.uuidString.getter();
    sub_10000B584(8, v3, v4);

    v5 = static String._fromSubstring(_:)();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    String.append(_:)(v8);

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    v12._countAndFlagsBits = sub_1000092A0(v10, v11);
    String.append(_:)(v12);

    v13._countAndFlagsBits = 62;
    v13._object = 0xE100000000000000;
    String.append(_:)(v13);

    v14 = 60;
    v15 = 0xE100000000000000;
  }

  else
  {
    v15 = 0xE300000000000000;
    v14 = 7104878;
  }

  v16 = v15;
  String.append(_:)(*&v14);

  v18 = *(v2 + 16);
  v17 = *(v2 + 24);
  if (v18 >= v17 >> 1)
  {
    v2 = sub_100009088((v17 > 1), v18 + 1, 1, v2);
  }

  *(v2 + 16) = v18 + 1;
  v19 = v2 + 16 * v18;
  *(v19 + 32) = 0x3D6E6F6973736573;
  *(v19 + 40) = 0xE800000000000000;
  v20 = OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager_tasks;
  swift_beginAccess();
  if ((*(v1 + v20) & 0xC000000000000001) != 0)
  {

    __CocoaSet.count.getter();
  }

  v21._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v21);

  v23 = *(v2 + 16);
  v22 = *(v2 + 24);
  if (v23 >= v22 >> 1)
  {
    v2 = sub_100009088((v22 > 1), v23 + 1, 1, v2);
  }

  *(v2 + 16) = v23 + 1;
  v24 = v2 + 16 * v23;
  *(v24 + 32) = 0x203A736B736174;
  *(v24 + 40) = 0xE700000000000000;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0, &protocol conformance descriptor for [A]);
  v25 = BidirectionalCollection<>.joined(separator:)();

  return v25;
}

void sub_1000B9388(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1000B9408(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000B9484()
{
  v0 = sub_100035D04(&qword_10033F5F0, &qword_1002762C0);
  __chkstk_darwin(v0 - 8);
  v2 = (&v13 - v1);
  v3 = sub_100070EF4();
  if (v3 == 4)
  {
    return 0;
  }

  v4 = v3;
  sub_10006F838();
  v5 = sub_1001DF2A4();

  if (v5)
  {
    if (v4 < 2u)
    {
      return 0;
    }
  }

  else if (!v4)
  {
    return 0;
  }

  sub_10006F430(v2);
  v6 = _s8CardInfoOMa(0);
  v7 = (*(*(v6 - 8) + 48))(v2, 1, v6);
  sub_1000097E8(v2, &qword_10033F5F0, &qword_1002762C0);
  result = 1;
  if (v7 != 1)
  {
    return result;
  }

  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_10033F3F8);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "### Blocking handoff session - device does not have sufficient details to build CardInfo", v12, 2u);
  }

  return 0;
}

uint64_t sub_1000B967C(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v1 = *(qword_10038B0B8 + 1544);
  sub_10005F048();
  v3 = v2;

  if (!v3)
  {
    return 1;
  }

  v4 = String.lowercased()();

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  sub_10000C868();

  v5 = String.lowercased()();

  v14 = v4;
  sub_10001369C();
  v6 = StringProtocol.contains<A>(_:)();

  if (v6)
  {

    return 1;
  }

  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_10033F3F8);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14._countAndFlagsBits = v12;
    *v11 = 136315138;
    v13 = sub_100017494(v5._countAndFlagsBits, v5._object, &v14._countAndFlagsBits);

    *(v11 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v9, v10, "### RangingNameFilter doesn't contain substring %s", v11, 0xCu);
    sub_10000903C(v12);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1000B9918(uint64_t a1)
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1528);
  v3 = sub_1000031CC();

  if (v3)
  {
    v6 = sub_100010FF4(v4, v5);
    if (qword_100339130 != -1)
    {
      v18 = v6;
      swift_once();
      v6 = v18;
    }

    v7 = 8;
    if (*(off_10034A1A8 + 24))
    {
      v7 = 10;
    }

    if ((v7 & v6) != 0)
    {
      return 1;
    }

    else
    {
      if (qword_100338EF0 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_100003078(v9, qword_10033F3F8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v19 = v13;
        *v12 = 136315138;
        v15 = sub_1000092A0(v13, v14);
        v17 = sub_100017494(v15, v16, &v19);

        *(v12 + 4) = v17;
        _os_log_impl(&_mh_execute_header, v10, v11, "### Device %s is not Handoff ranging-capable", v12, 0xCu);
        sub_10000903C(v13);
      }

      return 0;
    }
  }

  else
  {

    return sub_1000B967C(a1);
  }
}

uint64_t sub_1000B9B60(uint64_t a1, uint64_t a2)
{
  if (sub_10006F8C8(a1, a2))
  {

    return sub_1000B9918(a1);
  }

  else
  {
    if (qword_100338EF0 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_10033F3F8);

    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136315138;
      v10 = sub_1000092A0(v8, v9);
      v12 = sub_100017494(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Handoff not ready on %s", v7, 0xCu);
      sub_10000903C(v8);
    }

    return 0;
  }
}

BOOL sub_1000B9CF0(uint64_t a1)
{
  if ((sub_1000B9484() & 1) == 0 || (sub_1000B9B60(a1, v2) & 1) == 0)
  {
    return 0;
  }

  if (qword_100338F70 != -1)
  {
    swift_once();
  }

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.getter();

  return v4 == 1;
}

uint64_t sub_1000B9DD4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100035D04(&qword_10033F568, &qword_1002761C0);
  v68 = *(v4 - 8);
  v69 = v4;
  __chkstk_darwin(v4);
  v66 = &v52 - v5;
  v6 = sub_100035D04(&qword_10033F570, &qword_1002761C8);
  v70 = *(v6 - 8);
  v71 = v6;
  __chkstk_darwin(v6);
  v67 = &v52 - v7;
  v8 = sub_100035D04(&qword_10033F578, &qword_1002761D0);
  v73 = *(v8 - 8);
  v74 = v8;
  __chkstk_darwin(v8);
  v72 = &v52 - v9;
  v61 = sub_100035D04(&qword_10033F580, &qword_1002761D8);
  v60 = *(v61 - 8);
  __chkstk_darwin(v61);
  v59 = &v52 - v10;
  v11 = sub_100035D04(&qword_10033F588, &unk_1002761E0);
  v63 = *(v11 - 8);
  v64 = v11;
  __chkstk_darwin(v11);
  v62 = &v52 - v12;
  v13 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v13 - 8);
  v15 = &v52 - v14;
  v56 = sub_100035D04(&qword_10033F590, &qword_1002761F0);
  v16 = *(v56 - 1);
  __chkstk_darwin(v56);
  v18 = &v52 - v17;
  v58 = sub_100035D04(&qword_10033F598, &qword_1002761F8);
  v57 = *(v58 - 1);
  __chkstk_darwin(v58);
  v20 = &v52 - v19;
  v21 = sub_100035D04(&qword_10033F5A0, &qword_100276200);
  v22 = *(v21 - 8);
  __chkstk_darwin(v21);
  v24 = &v52 - v23;
  v25 = OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager__session;
  v80 = 0;
  sub_100035D04(&unk_10033F460, qword_100276138);
  Published.init(initialValue:)();
  (*(v22 + 32))(v2 + v25, v24, v21);
  v65 = v2 + OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager_tasks;
  *(v2 + OBJC_IVAR____TtC17proximitycontrold21HandoffSessionManager_tasks) = &_swiftEmptySetSingleton;
  if (qword_100338EF0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003078(v26, qword_10033F3F8);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&_mh_execute_header, v27, v28, "Init", v29, 2u);
  }

  *(v2 + 16) = a1;
  v80 = *(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher);

  sub_100035D04(&qword_10033F5A8, &qword_100276208);
  sub_10000E244(&qword_10033F5B0, &qword_10033F5A8, &qword_100276208, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.dropFirst(_:)();
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v30 = qword_10038B5B8;
  v80 = qword_10038B5B8;
  v78 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v31 = *(v78 - 8);
  v55 = *(v31 + 56);
  v75 = v31 + 56;
  v55(v15, 1, 1, v78);
  v77 = sub_100035CB8();
  v53 = &protocol conformance descriptor for Publishers.Drop<A>;
  sub_10000E244(&qword_10033F5B8, &qword_10033F590, &qword_1002761F0, &protocol conformance descriptor for Publishers.Drop<A>);
  v76 = sub_1000BAC04(&qword_10034B420, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
  v52 = v30;
  v32 = v56;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v15, &qword_10034C680, &qword_100270390);
  (*(v16 + 8))(v18, v32);
  swift_allocObject();
  swift_weakInit();
  v56 = &protocol conformance descriptor for Publishers.ReceiveOn<A, B>;
  sub_10000E244(&qword_10033F5C0, &qword_10033F598, &qword_1002761F8, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);

  v33 = v58;
  Publisher<>.sink(receiveValue:)();

  (*(v57 + 8))(v20, v33);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v80 = sub_1001412EC();
  v54 = v2;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  v58 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  v34 = v59;
  Publisher.dropFirst(_:)();

  v57 = a1;
  v35 = v52;
  v80 = v52;
  v36 = v55;
  v55(v15, 1, 1, v78);
  sub_10000E244(&qword_1003436F0, &qword_10033F580, &qword_1002761D8, v53);
  v37 = v62;
  v38 = v61;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v15, &qword_10034C680, &qword_100270390);

  (*(v60 + 8))(v34, v38);
  swift_allocObject();
  swift_weakInit();
  v39 = v56;
  sub_10000E244(&qword_10033F5C8, &qword_10033F588, &unk_1002761E0, v56);
  v40 = v64;
  Publisher<>.sink(receiveValue:)();

  (*(v63 + 8))(v37, v40);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v41 = sub_100140FF4();
  v79 = v35;
  v80 = v41;
  v36(v15, 1, 1, v78);
  sub_100035D04(&qword_10033B360, &qword_100271F28);
  sub_10000E244(&qword_10033B370, &qword_10033B360, &qword_100271F28, v58);
  v42 = v66;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v15, &qword_10034C680, &qword_100270390);

  sub_100035D04(&qword_10033F5D0, &unk_100276220);
  sub_10000E244(&qword_10033F5D8, &qword_10033F568, &qword_1002761C0, v39);
  v43 = v67;
  v44 = v69;
  Publisher.map<A>(_:)();
  (*(v68 + 8))(v42, v44);
  sub_10000E244(&qword_10033F5E0, &qword_10033F570, &qword_1002761C8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v45 = v71;
  v46 = v72;
  Publisher.filter(_:)();
  (*(v70 + 8))(v43, v45);
  v47 = swift_allocObject();
  v48 = v54;
  swift_weakInit();

  v49 = swift_allocObject();
  *(v49 + 16) = sub_1000BABB8;
  *(v49 + 24) = v47;
  sub_10000E244(&qword_10033F5E8, &qword_10033F578, &qword_1002761D0, &protocol conformance descriptor for Publishers.Filter<A>);
  v50 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v73 + 8))(v46, v50);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_1000B6F90(0, 0xC000000000000000);
  return v48;
}

uint64_t sub_1000BAC04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 sub_1000BAC4C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000BAC60(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000BACBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1000BAD2C(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_10033F608, &qword_1002763B8);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_1000BB458();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v8, v5);
  }

  v11[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v11[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10 = *(v3 + 40);
  v11[12] = 3;
  v11[8] = v10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000BAEFC()
{
  v1 = 0x444955556C6C6163;
  v2 = 0x6F656469567369;
  if (*v0 != 2)
  {
    v2 = 0x65636976726573;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t sub_1000BAF7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000BB078(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000BAFA4(uint64_t a1)
{
  v2 = sub_1000BB458();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000BAFE0(uint64_t a1)
{
  v2 = sub_1000BB458();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000BB01C@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1000BB1E4(a2, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a1 = v6;
    a1[1] = v5;
    result = *(v7 + 9);
    *(a1 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_1000BB078(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444955556C6C6163 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010029AF90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636976726573 && a2 == 0xE700000000000000)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000BB1E4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100035D04(&qword_10033F5F8, &qword_1002763B0);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v20 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_1000BB458();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    sub_10000903C(a1);
  }

  else
  {
    v26 = 0;
    v9 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v11 = v10;
    v12 = v9;
    v25 = 1;
    v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v15 = v14;
    v21 = v13;
    v24 = 2;
    v22 = KeyedDecodingContainer.decode(_:forKey:)();
    v23 = 3;
    v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v17 = *(v6 + 8);
    v20 = v16;
    v17(v8, v5);
    result = sub_10000903C(a1);
    *a2 = v12;
    *(a2 + 8) = v11;
    *(a2 + 16) = v21;
    *(a2 + 24) = v15;
    *(a2 + 32) = v22 & 1;
    v19 = BYTE4(v20);
    *(a2 + 36) = v20;
    *(a2 + 40) = v19 & 1;
  }

  return result;
}

unint64_t sub_1000BB458()
{
  result = qword_10033F600;
  if (!qword_10033F600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for UXRegion(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UXRegion(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000BB600()
{
  result = qword_10033F610;
  if (!qword_10033F610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F610);
  }

  return result;
}

unint64_t sub_1000BB658()
{
  result = qword_10033F618;
  if (!qword_10033F618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F618);
  }

  return result;
}

unint64_t sub_1000BB6B0()
{
  result = qword_10033F620;
  if (!qword_10033F620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033F620);
  }

  return result;
}

uint64_t sub_1000BB704()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v25[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = [v1 uniqueIdentifier];
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = UUID.uuidString.getter();
  v9 = v8;
  (*(v3 + 8))(v5, v2);
  v26 = v7;
  v27[0] = v9;
  v10 = [v1 deviceIdentifier];
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  v14 = 0;
  v27[1] = v11;
  v27[2] = v13;
  v15 = _swiftEmptyArrayStorage;
LABEL_2:
  v16 = &v27[2 * v14];
  while (++v14 != 3)
  {
    v17 = v16 + 2;
    v18 = *v16;
    v16 += 2;
    if (v18)
    {
      v19 = *(v17 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_100009088(0, *(v15 + 2) + 1, 1, v15);
      }

      v21 = *(v15 + 2);
      v20 = *(v15 + 3);
      if (v21 >= v20 >> 1)
      {
        v15 = sub_100009088((v20 > 1), v21 + 1, 1, v15);
      }

      *(v15 + 2) = v21 + 1;
      v22 = &v15[16 * v21];
      *(v22 + 4) = v19;
      *(v22 + 5) = v18;
      goto LABEL_2;
    }
  }

  sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  swift_arrayDestroy();
  v23 = sub_100008F34(v15);

  return v23;
}

uint64_t sub_1000BB924(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin(v4);
  v8 = &v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  sub_100009848(a1, &v17, &unk_10034B540, qword_100270E60);
  if (v18)
  {
    sub_10000E754(&v17, v19);
    v11 = v20;
    v12 = v21;
    sub_10000EBC0(v19, v20);
    (*(v12 + 24))(v11, v12);
    v13 = [v2 uniqueIdentifier];
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v14 = static UUID.== infix(_:_:)();
    v15 = *(v5 + 8);
    v15(v8, v4);
    v15(v10, v4);
    sub_10000903C(v19);
  }

  else
  {
    sub_1000097E8(&v17, &unk_10034B540, qword_100270E60);
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_1000BBAF4()
{
  v18[3] = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v18[4] = &off_100302540;
  v18[0] = v0;
  sub_100009848(v18, &v13, &unk_10034B540, qword_100270E60);
  if (v14)
  {
    sub_10000E754(&v13, v15);
    v1 = v16;
    v2 = v17;
    sub_10000EBC0(v15, v16);
    v3 = *(v2 + 8);
    v4 = *(v3 + 8);
    v5 = v0;
    v6 = v4(v1, v3);
    sub_1000104F8();
    v8 = sub_1000089FC(v7, v6);

    v9 = *(v8 + 16);

    v10 = v9 != 0;
    sub_10000903C(v15);
  }

  else
  {
    v11 = v0;
    sub_1000097E8(&v13, &unk_10034B540, qword_100270E60);
    v10 = 0;
  }

  sub_1000097E8(v18, &unk_10034B540, qword_100270E60);
  return v10;
}

BOOL sub_1000BBC48(uint64_t a1)
{
  sub_100009848(a1, v8, &qword_10033FA50, &qword_100276820);
  v1 = v9;
  if (v9)
  {
    v2 = v10;
    sub_10000EBC0(v8, v9);
    v3 = (*(*(v2 + 8) + 8))(v1);
    v4 = sub_1000BB704();
    v5 = sub_1000089FC(v4, v3);

    sub_10000903C(v8);
  }

  else
  {
    sub_1000097E8(v8, &qword_10033FA50, &qword_100276820);
    v5 = &_swiftEmptySetSingleton;
  }

  v6 = v5[2];

  return v6 != 0;
}

uint64_t sub_1000BBD2C()
{
  v1 = v0;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v38[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v3);
  v7 = &v38[-v6];
  if (([v1 isLocallyPaired] & 1) != 0 || (v8 = objc_msgSend(v1, "uniqueID")) == 0)
  {
    v10 = 0;
    v12 = 0;
  }

  else
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  v39 = v10;
  v40 = v12;
  v13 = [v1 uniqueIDOverride];
  if (v13)
  {
    v14 = v13;
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v17 = v16;
  }

  else
  {
    v15 = 0;
    v17 = 0;
  }

  v41 = v15;
  v42 = v17;
  v18 = [v1 nsuuid];
  if (v18)
  {
    v19 = v18;
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v5, 0, 1, v20);
  }

  else
  {
    v20 = type metadata accessor for UUID();
    (*(*(v20 - 8) + 56))(v5, 1, 1, v20);
  }

  sub_100008FCC(v5, v7);
  type metadata accessor for UUID();
  v21 = *(v20 - 8);
  if ((*(v21 + 48))(v7, 1, v20) == 1)
  {
    result = sub_1000097E8(v7, &unk_100348F30, &unk_100272540);
    v23 = 0;
    v24 = 0;
  }

  else
  {
    v23 = UUID.uuidString.getter();
    v24 = v25;
    result = (*(v21 + 8))(v7, v20);
  }

  v26 = 0;
  v43 = v23;
  v44 = v24;
  v27 = _swiftEmptyArrayStorage;
LABEL_15:
  if (v26 <= 3)
  {
    v28 = 3;
  }

  else
  {
    v28 = v26;
  }

  v29 = v28 + 1;
  v30 = 16 * v26 + 40;
  while (1)
  {
    if (v26 == 3)
    {
      sub_100035D04(&qword_10033A238, &qword_10027D3E0);
      swift_arrayDestroy();
      v37 = sub_100008F34(v27);

      return v37;
    }

    if (v29 == ++v26)
    {
      break;
    }

    v31 = v30 + 16;
    v32 = *&v38[v30];
    v30 += 16;
    if (v32)
    {
      v33 = *&v38[v31 - 24];

      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_100009088(0, *(v27 + 2) + 1, 1, v27);
        v27 = result;
      }

      v35 = *(v27 + 2);
      v34 = *(v27 + 3);
      if (v35 >= v34 >> 1)
      {
        result = sub_100009088((v34 > 1), v35 + 1, 1, v27);
        v27 = result;
      }

      *(v27 + 2) = v35 + 1;
      v36 = &v27[16 * v35];
      *(v36 + 4) = v33;
      *(v36 + 5) = v32;
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

BOOL sub_1000BC0D8(uint64_t a1)
{
  sub_100009848(a1, &v9, &unk_10034B540, qword_100270E60);
  if (v10)
  {
    sub_10000E754(&v9, v11);
    v2 = v12;
    v1 = v13;
    sub_10000EBC0(v11, v12);
    v3 = (*(*(v1 + 8) + 8))(v2);
    v4 = sub_1000BBD2C();
    v5 = sub_1000089FC(v4, v3);

    v6 = *(v5 + 16);

    v7 = v6 != 0;
    sub_10000903C(v11);
  }

  else
  {
    sub_1000097E8(&v9, &unk_10034B540, qword_100270E60);
    return 0;
  }

  return v7;
}

uint64_t sub_1000BC1C8(uint64_t a1)
{
  sub_100009848(a1, &v9, &qword_10033FA50, &qword_100276820);
  if (v10)
  {
    sub_10000E754(&v9, v12);
    v2 = v13;
    v3 = v14;
    sub_10000EBC0(v12, v13);
    v10 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
    v11 = &off_100303480;
    *&v9 = v1;
    v4 = *(v3 + 8);
    v5 = *(v4 + 32);
    v6 = v1;
    v7 = v5(&v9, v2, v4);
    sub_1000097E8(&v9, &qword_10033A240, &unk_100272E70);
    sub_10000903C(v12);
  }

  else
  {
    sub_1000097E8(&v9, &qword_10033FA50, &qword_100276820);
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000BC2D8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033F628);
  sub_100003078(v0, qword_10033F628);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BC398@<X0>(char *a1@<X8>)
{
  v76 = a1;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = __chkstk_darwin(v2 - 8);
  v5 = &v71 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v3);
  v74 = &v71 - v7;
  v8 = __chkstk_darwin(v6);
  v75 = &v71 - v9;
  v10 = __chkstk_darwin(v8);
  v12 = &v71 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v71 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v71 - v17;
  v19 = __chkstk_darwin(v16);
  v79 = &v71 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v71 - v22;
  __chkstk_darwin(v21);
  v25 = &v71 - v24;
  v26 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  v77 = v1;
  v27 = *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  v72 = v5;
  if (v27)
  {
    v28 = v27;
    if (([v28 isLocallyPaired] & 1) != 0 || (v29 = objc_msgSend(v28, "uniqueID")) == 0)
    {
    }

    else
    {
      v30 = v29;
      v78 = v25;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UUID.init(uuidString:)();

      v31 = type metadata accessor for UUID();
      v32 = *(v31 - 8);
      if ((*(v32 + 48))(v23, 1, v31) != 1)
      {
        v66 = *(v32 + 32);
        v67 = v78;
        v66(v78, v23, v31);
        v68 = *(v32 + 56);
        v68(v67, 0, 1, v31);
        v69 = v76;
        v66(v76, v67, v31);
        return (v68)(v69, 0, 1, v31);
      }

      sub_1000097E8(v23, &unk_100348F30, &unk_100272540);
      v25 = v78;
    }
  }

  v73 = v12;
  v78 = v15;
  v33 = type metadata accessor for UUID();
  v34 = *(v33 - 8);
  v35 = v34[7];
  v35(v25, 1, 1, v33);
  v36 = *(v77 + v26);
  v37 = v79;
  if (!v36)
  {
LABEL_12:
    v35(v37, 1, 1, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v43 = v80;
    if (v80)
    {
      v44 = [v80 idsDeviceIdentifier];

      if (v44)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v45 = v73;
        UUID.init(uuidString:)();

        v42 = v34[6];
        if (v42(v45, 1, v33) != 1)
        {
          v59 = v34[4];
          v60 = v78;
          v59(v78, v45, v33);
          v35(v60, 0, 1, v33);
          v61 = v76;
          v59(v76, v60, v33);
          v35(v61, 0, 1, v33);
          v55 = v79;
LABEL_32:
          if (v42(v55, 1, v33) != 1)
          {
            sub_1000097E8(v55, &unk_100348F30, &unk_100272540);
          }

          goto LABEL_34;
        }

        sub_1000097E8(v45, &unk_100348F30, &unk_100272540);
      }
    }

    v35(v78, 1, 1, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v46 = v80;
    if (v80)
    {
      v47 = [v80 idsDeviceIdentifier];

      if (v47)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v48 = v74;
        UUID.init(uuidString:)();

        v42 = v34[6];
        if (v42(v48, 1, v33) != 1)
        {
          v62 = v34[4];
          v63 = v75;
          v62(v75, v48, v33);
          v35(v63, 0, 1, v33);
          v64 = v76;
          v62(v76, v63, v33);
          v35(v64, 0, 1, v33);
          v54 = v78;
          v55 = v79;
LABEL_30:
          if (v42(v54, 1, v33) != 1)
          {
            sub_1000097E8(v54, &unk_100348F30, &unk_100272540);
          }

          goto LABEL_32;
        }

        sub_1000097E8(v48, &unk_100348F30, &unk_100272540);
      }
    }

    v49 = v75;
    v35(v75, 1, 1, v33);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v50 = v80;
    if (v80)
    {
      v51 = [v80 idsDeviceID];

      if (v51)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();

        v52 = v72;
        UUID.init(uuidString:)();

        v42 = v34[6];
        if (v42(v52, 1, v33) != 1)
        {
          v70 = v76;
          (v34[4])(v76, v52, v33);
          v35(v70, 0, 1, v33);
LABEL_25:
          v53 = v42(v49, 1, v33);
          v54 = v78;
          v55 = v79;
          if (v53 != 1)
          {
            sub_1000097E8(v49, &unk_100348F30, &unk_100272540);
          }

          goto LABEL_30;
        }

        sub_1000097E8(v52, &unk_100348F30, &unk_100272540);
      }
    }

    v35(v76, 1, 1, v33);
    v42 = v34[6];
    goto LABEL_25;
  }

  v38 = v36;
  v39 = [v38 uniqueIDOverride];
  if (!v39)
  {

    goto LABEL_12;
  }

  v40 = v25;
  v41 = v39;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  UUID.init(uuidString:)();

  v42 = v34[6];
  if (v42(v18, 1, v33) == 1)
  {
    sub_1000097E8(v18, &unk_100348F30, &unk_100272540);
    v37 = v79;
    goto LABEL_12;
  }

  v56 = v34[4];
  v57 = v79;
  v56(v79, v18, v33);
  v35(v57, 0, 1, v33);
  v58 = v76;
  v56(v76, v57, v33);
  v35(v58, 0, 1, v33);
  v25 = v40;
LABEL_34:
  result = (v42)(v25, 1, v33);
  if (result != 1)
  {
    return sub_1000097E8(v25, &unk_100348F30, &unk_100272540);
  }

  return result;
}

uint64_t sub_1000BCDE8(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

uint64_t sub_1000BCE54()
{
  v0._countAndFlagsBits = sub_10000C868();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 32;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12 && (v2 = [v12 identifier], v12, v2))
  {
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;

    sub_10000B584(8, v3, v5);
  }

  else
  {
    Substring.init(_:)();
  }

  v6 = static String._fromSubstring(_:)();
  v8 = v7;

  v9._countAndFlagsBits = v6;
  v9._object = v8;
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 60;
}

void *sub_1000BCFD0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26)
  {
    v4 = sub_10000F0CC();

    sub_1000BD314(v4);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26)
  {
    v5 = sub_1000BB704();

    sub_1000BD314(v5);
  }

  v6 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v6)
  {
    v7 = v6;
    v8 = sub_1000BBD2C();

    sub_1000BD314(v8);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26)
  {
    sub_100008574();
    v10 = v9;

    sub_1000BD314(v10);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v26)
  {
    sub_100008574();
    v12 = v11;

    sub_1000BD314(v12);
  }

  v13 = *(v3 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  if (!v13)
  {
    return &_swiftEmptySetSingleton;
  }

  if (v13 >> 62)
  {
    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
LABEL_24:
    v23 = _swiftEmptyArrayStorage[2];
    if (v23)
    {
      v24 = &_swiftEmptyArrayStorage[4];
      do
      {
        ++v24;

        sub_1000BD314(v25);
        --v23;
      }

      while (v23);
    }

    return &_swiftEmptySetSingleton;
  }

  result = sub_1000CE0E4(0, v14 & ~(v14 >> 63), 0);
  if ((v14 & 0x8000000000000000) == 0)
  {
    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v13 + 8 * i + 32);
      }

      v18 = v17;
      sub_1000104F8();
      v20 = v19;

      v22 = _swiftEmptyArrayStorage[2];
      v21 = _swiftEmptyArrayStorage[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000CE0E4((v21 > 1), v22 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v22 + 1;
      _swiftEmptyArrayStorage[v22 + 4] = v20;
    }

    goto LABEL_24;
  }

  __break(1u);
  return result;
}

void sub_1000BD314(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_100008DE4(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1000BD468(uint64_t a1, uint64_t a2)
{
  if (*(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode + 8))
  {
    v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
    goto LABEL_26;
  }

  v4 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v4)
  {
    v5 = v4;
    v6 = [v5 enclosureColor];
    if (v6)
    {
      v7 = v6;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v9 = v8;

      if (qword_100338EF8 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_100003078(v10, qword_10033F628);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_24;
      }

      v13 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v13 = 136315394;
      v14 = sub_1000BCE54();
      v16 = sub_100017494(v14, v15, &v51);

      *(v13 + 4) = v16;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100017494(v3, v9, &v51);
      v17 = "%s ColorCode=%s from IDS";
LABEL_23:
      _os_log_impl(&_mh_execute_header, v11, v12, v17, v13, 0x16u);
      swift_arrayDestroy();

LABEL_24:

LABEL_25:
      goto LABEL_26;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v51;
  if (v51)
  {
    v18 = [v51 deviceColor];
    if (v18)
    {
      v19 = v18;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      if (qword_100338EF8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_100003078(v22, qword_10033F628);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_24;
      }

      v13 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v13 = 136315394;
      v23 = sub_1000BCE54();
      v25 = sub_100017494(v23, v24, &v51);

      *(v13 + 4) = v25;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100017494(v3, v21, &v51);
      v17 = "%s ColorCode=%s from Rapport";
      goto LABEL_23;
    }
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v51;
  if (v51)
  {
    v26 = [v51 deviceColor];
    if (v26)
    {
      v27 = v26;
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      if (qword_100338EF8 != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      sub_100003078(v30, qword_10033F628);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.default.getter();

      if (!os_log_type_enabled(v11, v12))
      {
        goto LABEL_24;
      }

      v13 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v13 = 136315394;
      v31 = sub_1000BCE54();
      v33 = sub_100017494(v31, v32, &v51);

      *(v13 + 4) = v33;
      *(v13 + 12) = 2080;
      *(v13 + 14) = sub_100017494(v3, v29, &v51);
      v17 = "%s ColorCode=%s from Rapport BT";
      goto LABEL_23;
    }
  }

  v35 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode + 8);
  if (v35)
  {
    v3 = *(v2 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
    v36 = qword_100338EF8;

    if (v36 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_100003078(v37, qword_10033F628);

    v5 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v38))
    {
      v39 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      *v39 = 136315394;
      v40 = sub_1000BCE54();
      v42 = sub_100017494(v40, v41, &v51);

      *(v39 + 4) = v42;
      *(v39 + 12) = 2080;
      *(v39 + 14) = sub_100017494(v3, v35, &v51);
      _os_log_impl(&_mh_execute_header, v5, v38, "%s ColorCode=%s from Ranging Token sync", v39, 0x16u);
      swift_arrayDestroy();
    }

    goto LABEL_25;
  }

  if (qword_100338EF8 != -1)
  {
    swift_once();
  }

  v43 = type metadata accessor for Logger();
  sub_100003078(v43, qword_10033F628);

  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    v47 = swift_slowAlloc();
    v51 = v47;
    *v46 = 136315138;
    v48 = sub_1000BCE54();
    v50 = sub_100017494(v48, v49, &v51);

    *(v46 + 4) = v50;
    _os_log_impl(&_mh_execute_header, v44, v45, "%s Unable to determine color code for remote device", v46, 0xCu);
    sub_10000903C(v47);
  }

  v3 = 0;
LABEL_26:

  return v3;
}

unint64_t sub_1000BDC5C()
{
  v1 = v0;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0B8 + 1168);
  v3 = sub_10005FFC0();
  v5 = v4;

  if (v5)
  {
    v6 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset);
    if (*(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset + 8) != 1)
    {
      return *v6;
    }

    if (qword_100338EF8 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100003078(v7, qword_10033F628);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v85 = v11;
      *v10 = 136315138;
      v12 = sub_1000BCE54();
      v14 = sub_100017494(v12, v13, &v85);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s Generating device asset", v10, 0xCu);
      sub_10000903C(v11);
    }

    v17 = sub_1000BD468(v15, v16);
    if (v18 && (v19 = sub_1001AEEBC(v17, v18), v19 != 11))
    {
      v25 = v19;
      v24 = 1;
    }

    else
    {
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "### Failed to determine color", v23, 2u);
      }

      v24 = 0;
      v25 = 11;
    }

    v36 = sub_10000A0B4(v19, v20);
    if (!v37)
    {
      v41 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v41, v46))
      {
LABEL_35:

        return 0;
      }

      v47 = swift_slowAlloc();
      *v47 = 0;
      _os_log_impl(&_mh_execute_header, v41, v46, "### No model code", v47, 2u);
LABEL_27:

      goto LABEL_35;
    }

    v38 = v36;
    v39 = v37;

    v40 = sub_100011F00(v38, v39);

    if (v40 == 7)
    {

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v41, v42))
      {

        goto LABEL_35;
      }

      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v85 = v44;
      *v43 = 136315138;
      v45 = sub_100017494(v38, v39, &v85);

      *(v43 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v41, v42, "### Failed to get AppleDevice from model code: %s", v43, 0xCu);
      sub_10000903C(v44);

      goto LABEL_27;
    }

    v48 = 7104878;

    if (v40 != 2)
    {
      if (v40 != 1)
      {
        v3 = 0;
        v54 = 0xE300000000000000;
LABEL_59:

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v79 = 136315394;
          v80 = sub_1000BCE54();
          v82 = sub_100017494(v80, v81, &v85);

          *(v79 + 4) = v82;
          *(v79 + 12) = 2080;
          v83 = sub_100017494(v48, v54, &v85);

          *(v79 + 14) = v83;
          _os_log_impl(&_mh_execute_header, v77, v78, "%s Device asset = %s", v79, 0x16u);
          swift_arrayDestroy();
        }

        else
        {
        }

        return v3;
      }

      if (v25 == 11 || (v25 - 1) >= 0xAu || ((0x273u >> (v25 - 1)) & 1) == 0)
      {
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          v85 = v58;
          *v57 = 136315138;
          if (v25 == 11)
          {
            v59 = 0xE300000000000000;
          }

          else
          {
            v48 = String.init<A>(describing:)();
            v59 = v60;
          }

          v61 = sub_100017494(v48, v59, &v85);

          *(v57 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Color not recognized (%s): falling back to light", v57, 0xCu);
          sub_10000903C(v58);
        }

        v3 = 2;
      }

      else
      {
        v3 = qword_100276850[(v25 - 1)];
      }

LABEL_54:
      if (v24)
      {

        v64 = Logger.logObject.getter();
        v65 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v64, v65))
        {
          v66 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *v66 = 136315394;
          v67 = sub_1000BCE54();
          v69 = sub_100017494(v67, v68, &v85);

          *(v66 + 4) = v69;
          *(v66 + 12) = 2080;
          v70 = sub_1000C06B0(v3);
          v71 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v73 = v72;

          v74 = sub_100017494(v71, v73, &v85);

          *(v66 + 14) = v74;
          _os_log_impl(&_mh_execute_header, v64, v65, "%s Caching device asset = %s", v66, 0x16u);
          swift_arrayDestroy();
        }

        *v6 = v3;
        v6[8] = 0;
      }

      v75 = sub_1000C06B0(v3);
      v48 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v76;

      goto LABEL_59;
    }

    if (v25 == 11)
    {
      goto LABEL_39;
    }

    if (v25 == 1)
    {
      v3 = 7;
      goto LABEL_54;
    }

    if (v25 != 2)
    {
LABEL_39:
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v49, v50))
      {
        v51 = swift_slowAlloc();
        v52 = swift_slowAlloc();
        v85 = v52;
        *v51 = 136315138;
        if (v25 == 11)
        {
          v53 = 0xE300000000000000;
        }

        else
        {
          v48 = String.init<A>(describing:)();
          v53 = v62;
        }

        v63 = sub_100017494(v48, v53, &v85);

        *(v51 + 4) = v63;
        _os_log_impl(&_mh_execute_header, v49, v50, "Color not recognized (%s): falling back to light", v51, 0xCu);
        sub_10000903C(v52);
      }
    }

    v3 = 8;
    goto LABEL_54;
  }

  if (qword_100338EF8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_100003078(v26, qword_10033F628);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v85 = v30;
    *v29 = 136315138;
    v31 = sub_1000C06B0(v3);
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;

    v35 = sub_100017494(v32, v34, &v85);

    *(v29 + 4) = v35;
    _os_log_impl(&_mh_execute_header, v27, v28, "Using forcedAssetType: %s", v29, 0xCu);
    sub_10000903C(v30);
  }

  return v3;
}

void sub_1000BE6D8(uint64_t a1)
{
  sub_1000BE870(319, &qword_10033F698, &qword_10033D5D0, &unk_100273240);
  if (v1 <= 0x3F)
  {
    sub_1000BE870(319, &qword_10033F6A0, &qword_10033F6A8, &qword_100276540);
    if (v2 <= 0x3F)
    {
      sub_1000BE870(319, &unk_10033F6B0, &qword_10033D608, &unk_100273250);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1000BE870(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_100035D4C(a3, a4);
    v5 = type metadata accessor for Published();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for Identity.SourceType(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Identity.SourceType(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 5))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Identity.SourceType(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 5) = v3;
  return result;
}

uint64_t sub_1000BE924(uint64_t a1)
{
  if (*(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000BE940(uint64_t result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    *(result + 4) = 1;
  }

  else
  {
    *(result + 4) = 0;
  }

  return result;
}

uint64_t sub_1000BE970@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for Identity(0);
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

void sub_1000BE9F8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12)
  {
    Hasher._combine(_:)(1u);
    v5 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12)
  {
    Hasher._combine(_:)(1u);
    v6 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v7 = *(v3 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    v8 = v7;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12)
  {
    Hasher._combine(_:)(1u);
    v9 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v10 = *(v3 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities);
  if (v10)
  {
    Hasher._combine(_:)(1u);

    sub_1000BEF9C(a1, v10);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  if (v12)
  {
    Hasher._combine(_:)(1u);
    v11 = v12;
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_1000BECB4()
{
  Hasher.init(_seed:)();
  sub_1000BE9F8(v2, v0);
  return Hasher._finalize()();
}

Swift::Int sub_1000BED1C(uint64_t a1)
{
  Hasher.init(_seed:)();
  sub_1000BE9F8(v3, v1);
  return Hasher._finalize()();
}

BOOL sub_1000BED5C()
{
  Hasher.init(_seed:)();
  sub_1000BE9F8(v4, v0);
  v1 = Hasher._finalize()();
  Hasher.init(_seed:)();
  sub_1000BE9F8(v4, v2);
  return v1 == Hasher._finalize()();
}

unint64_t sub_1000BEDDC()
{
  result = qword_10033FA20;
  if (!qword_10033FA20)
  {
    type metadata accessor for Identity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033FA20);
  }

  return result;
}

void sub_1000BEE98(void *a5@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a5 = v6;
}

uint64_t sub_1000BEF28(void **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v7 = v6;

  return static Published.subscript.setter();
}

void sub_1000BEF9C(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    v8 = _CocoaArrayWrapper.endIndex.getter();
    Hasher._combine(_:)(v8);
    v3 = _CocoaArrayWrapper.endIndex.getter();
    if (!v3)
    {
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10));
    v3 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      return;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
  }

  else if ((a2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v3; ++i)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      NSObject.hash(into:)();
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v5 = (a2 + 32);
    do
    {
      v6 = *v5++;
      v7 = v6;
      NSObject.hash(into:)();

      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1000BF08C(void *a1, void *a2)
{
  v42[3] = sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
  v42[4] = &off_100316108;
  v42[0] = a2;
  sub_10007E790(v42, v41);
  v4 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v42, v40);
    sub_100035D04(&qword_10033FA40, &unk_100276808);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v37, v41);
      sub_10007E790(v41, v40);
      sub_100009848(v40, &v37, &unk_10034B540, qword_100270E60);
      v13 = *(&v38 + 1);
      if (*(&v38 + 1))
      {
        v14 = v39;
        sub_10000EBC0(&v37, *(&v38 + 1));
        sub_100008574();
        v12 = sub_10015A19C(v15, v13, *(v14 + 8));

        v16 = &unk_10034B540;
        v17 = qword_100270E60;
LABEL_7:
        sub_1000097E8(v40, v16, v17);
        sub_10000903C(v41);
        sub_10000903C(&v37);
        goto LABEL_22;
      }

      v24 = &unk_10034B540;
      v25 = qword_100270E60;
      sub_1000097E8(v40, &unk_10034B540, qword_100270E60);
      sub_10000903C(v41);
      v26 = &v37;
      goto LABEL_14;
    }

    v39 = 0;
    v37 = 0u;
    v38 = 0u;
    sub_1000097E8(&v37, &unk_10034B540, qword_100270E60);
    sub_10007E790(v42, v41);
    if (swift_dynamicCast())
    {
      v18 = v40[0];
      sub_100003118(0, &qword_100344730, NSObject_ptr);
      v19 = v18;
      if (static NSObject.== infix(_:_:)())
      {

        v12 = 1;
        goto LABEL_22;
      }

      sub_100008574();
      v30 = v29;
      sub_100008574();
      v23 = sub_1000089FC(v31, v30);
    }

    else
    {
      sub_10007E790(v42, v41);
      sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
      if (!swift_dynamicCast())
      {
        sub_10007E790(v42, v40);
        sub_100035D04(&qword_10033FA48, &qword_100276818);
        if (!swift_dynamicCast())
        {
          v39 = 0;
          v37 = 0u;
          v38 = 0u;
          v27 = &qword_10033FA50;
          v28 = &qword_100276820;
          v26 = &v37;
          goto LABEL_21;
        }

        sub_10000E754(&v37, v41);
        sub_10007E790(v41, v40);
        sub_100009848(v40, &v35, &qword_10033FA50, &qword_100276820);
        if (v36)
        {
          sub_10000E754(&v35, &v37);
          v32 = *(&v38 + 1);
          v33 = v39;
          sub_10000EBC0(&v37, *(&v38 + 1));
          v12 = (*(*(v33 + 8) + 40))(a1, v32);
          v16 = &qword_10033FA50;
          v17 = &qword_100276820;
          goto LABEL_7;
        }

        v24 = &qword_10033FA50;
        v25 = &qword_100276820;
        sub_1000097E8(v40, &qword_10033FA50, &qword_100276820);
        sub_10000903C(v41);
        v26 = &v35;
LABEL_14:
        v27 = v24;
        v28 = v25;
LABEL_21:
        sub_1000097E8(v26, v27, v28);
        v12 = 0;
        goto LABEL_22;
      }

      v19 = v40[0];
      sub_1000104F8();
      v21 = v20;
      sub_100008574();
      v23 = sub_1000089FC(v22, v21);
    }

    v11 = *(v23 + 16);
    goto LABEL_3;
  }

  v5 = v40[0];
  v6 = a1;
  sub_100008574();
  v8 = v7;
  v9 = sub_10000F0CC();
  v10 = sub_1000089FC(v9, v8);

  v11 = *(v10 + 16);
LABEL_3:

  v12 = v11 != 0;
LABEL_22:
  sub_10000903C(v42);
  return v12 & 1;
}

uint64_t sub_1000BF550(void *a1, void *a2)
{
  v4 = sub_100003118(0, &qword_10033B5F0, IDSDevice_ptr);
  v39[3] = v4;
  v39[4] = &off_1003034A8;
  v39[0] = a2;
  sub_10007E790(v39, v38);
  v5 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v39, v35);
    sub_100035D04(&qword_10033FA40, &unk_100276808);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v32, v38);
      sub_10007E790(v38, v35);
      v17 = sub_1000BC0D8(v35);
      v18 = &unk_10034B540;
      v19 = qword_100270E60;
LABEL_6:
      sub_1000097E8(v35, v18, v19);
      sub_10000903C(v38);
      goto LABEL_14;
    }

    v34 = 0;
    v32 = 0u;
    v33 = 0u;
    sub_1000097E8(&v32, &unk_10034B540, qword_100270E60);
    sub_10007E790(v39, v38);
    sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
    if (swift_dynamicCast())
    {
      v20 = v35[0];
      sub_100008574();
      v22 = v21;
      v23 = sub_1000BBD2C();
      v24 = sub_1000089FC(v23, v22);
    }

    else
    {
      sub_10007E790(v39, v38);
      sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
      if (!swift_dynamicCast())
      {
        sub_10007E790(v39, v35);
        sub_100035D04(&qword_10033FA48, &qword_100276818);
        if (!swift_dynamicCast())
        {
          v34 = 0;
          v32 = 0u;
          v33 = 0u;
          sub_1000097E8(&v32, &qword_10033FA50, &qword_100276820);
          v17 = 0;
          goto LABEL_14;
        }

        sub_10000E754(&v32, v38);
        sub_10007E790(v38, v35);
        v17 = sub_1000BC1C8(v35);
        v18 = &qword_10033FA50;
        v19 = &qword_100276820;
        goto LABEL_6;
      }

      v20 = v35[0];
      sub_1000104F8();
      v28 = v27;
      v29 = sub_1000BBD2C();
      v24 = sub_1000089FC(v29, v28);
    }

    v30 = *(v24 + 16);

    v17 = v30 != 0;
    goto LABEL_14;
  }

  v6 = v35[0];
  v38[3] = v4;
  v38[4] = &off_100303480;
  v38[0] = a1;
  sub_100009848(v38, &v32, &qword_10033A240, &unk_100272E70);
  if (*(&v33 + 1))
  {
    sub_10000E754(&v32, v35);
    v7 = v36;
    v8 = v37;
    sub_10000EBC0(v35, v36);
    v9 = *(v8 + 8);
    v10 = *(v9 + 8);
    v11 = v6;
    v12 = a1;
    v13 = v10(v7, v9);
    v14 = sub_10000F0CC();
    v15 = sub_1000089FC(v14, v13);

    v16 = *(v15 + 16);

    v17 = v16 != 0;
    sub_10000903C(v35);
  }

  else
  {
    v25 = v6;
    v26 = a1;
    sub_1000097E8(&v32, &qword_10033A240, &unk_100272E70);
    v17 = 0;
  }

  sub_1000097E8(v38, &qword_10033A240, &unk_100272E70);

LABEL_14:
  sub_10000903C(v39);
  return v17 & 1;
}

Swift::Int sub_1000BF998(void *a1, void *a2)
{
  v4 = sub_100003118(0, &qword_1003452B0, HMAccessory_ptr);
  v39[3] = v4;
  v39[4] = &off_100302560;
  v39[0] = a2;
  sub_10007E790(v39, v36);
  v5 = a2;
  sub_100035D04(&qword_10033F040, qword_100275EC0);
  sub_100003118(0, &unk_10034A340, CBDevice_ptr);
  if (swift_dynamicCast())
  {
    v6 = v33[0];
    v37 = v4;
    v38 = &off_100302540;
    v36[0] = a1;
    sub_100009848(v36, &v30, &unk_10034B540, qword_100270E60);
    if (*(&v31 + 1))
    {
      sub_10000E754(&v30, v33);
      v7 = v34;
      v8 = v35;
      sub_10000EBC0(v33, v34);
      v9 = *(v8 + 8);
      v10 = *(v9 + 8);
      v11 = v6;
      v12 = a1;
      v13 = v10(v7, v9);
      v14 = sub_10000F0CC();
      v16 = sub_1000089FC(v14, v13);

      v15 = *(v16 + 16);

      LOBYTE(v16) = v15 != 0;
      sub_10000903C(v33);
    }

    else
    {
      v24 = v6;
      v25 = a1;
      sub_1000097E8(&v30, &unk_10034B540, qword_100270E60);
      LOBYTE(v16) = 0;
    }

    sub_1000097E8(v36, &unk_10034B540, qword_100270E60);

    goto LABEL_12;
  }

  sub_10007E790(v39, v33);
  sub_100035D04(&qword_10033FA40, &unk_100276808);
  if (swift_dynamicCast())
  {
    sub_10000E754(&v30, v36);
    sub_10007E790(v36, v33);
    LOBYTE(v16) = sub_1000BB924(v33);
    v17 = &unk_10034B540;
    v18 = qword_100270E60;
LABEL_6:
    sub_1000097E8(v33, v17, v18);
    sub_10000903C(v36);
    goto LABEL_12;
  }

  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  sub_1000097E8(&v30, &unk_10034B540, qword_100270E60);
  sub_10007E790(v39, v36);
  sub_100003118(0, &qword_10033D618, RPCompanionLinkDevice_ptr);
  if (!swift_dynamicCast())
  {
    sub_10007E790(v39, v36);
    sub_100003118(0, &qword_10033FA30, RPIdentity_ptr);
    if (swift_dynamicCast())
    {
      v27 = v33[0];
      LOBYTE(v16) = sub_1000BBAF4();

      goto LABEL_12;
    }

    sub_10007E790(v39, v33);
    sub_100035D04(&qword_10033FA48, &qword_100276818);
    if (!swift_dynamicCast())
    {
      v32 = 0;
      v30 = 0u;
      v31 = 0u;
      sub_1000097E8(&v30, &qword_10033FA50, &qword_100276820);
      LOBYTE(v16) = 0;
      goto LABEL_12;
    }

    sub_10000E754(&v30, v36);
    sub_10007E790(v36, v33);
    LOBYTE(v16) = sub_1000BBC48(v33);
    v17 = &qword_10033FA50;
    v18 = &qword_100276820;
    goto LABEL_6;
  }

  v19 = v33[0];
  v37 = v4;
  v38 = &off_100302540;
  v36[0] = a1;
  sub_100009848(v36, v33, &unk_10034B540, qword_100270E60);
  v16 = v34;
  if (v34)
  {
    v20 = v35;
    sub_10000EBC0(v33, v34);
    v21 = a1;
    v22 = v19;
    sub_100008574();
    LOBYTE(v16) = sub_10015A19C(v23, v16, *(v20 + 8));

    sub_10000903C(v33);
  }

  else
  {
    v28 = a1;
    v29 = v19;
    sub_1000097E8(v33, &unk_10034B540, qword_100270E60);
  }

  sub_1000097E8(v36, &unk_10034B540, qword_100270E60);

LABEL_12:
  sub_10000903C(v39);
  return v16 & 1;
}

BOOL sub_1000BFE34(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x100000000) != 0)
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        return (a2 & 0x100000000) != 0 && a2 == 3;
      }

      else if (a1 == 4)
      {
        return (a2 & 0x100000000) != 0 && a2 == 4;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 > 4;
      }
    }

    else if (a1)
    {
      if (a1 == 1)
      {
        return (a2 & 0x100000000) != 0 && a2 == 1;
      }

      else
      {
        return (a2 & 0x100000000) != 0 && a2 == 2;
      }
    }

    else
    {
      return (a2 & 0x100000000) != 0 && !a2;
    }
  }

  else
  {
    if ((a2 & 0x100000000) != 0)
    {
      return 0;
    }

    return a1 == a2;
  }
}

uint64_t sub_1000BFEE8(void *a1)
{
  v33 = a1;
  v2 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - v3;
  v5 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  *(v1 + 16) = 0;
  *(v1 + 20) = 256;
  v13 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v34 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v34 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v6 + 32))(v1 + v14, v8, v5);
  v15 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v16 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v16 = 0;
  v16[1] = 0;
  v17 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v17 = 0;
  v17[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v18 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v34 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v19 = v32;
  v20 = *(v31 + 32);
  v20(v1 + v18, v4, v32);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v21 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v34 = 0;
  Published.init(initialValue:)();
  v20(v1 + v21, v4, v19);
  v22 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v25 = 0;
  v25[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v26 = v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v26 = 0;
  *(v26 + 8) = 1;
  v27 = *(v1 + v15);
  v28 = v33;
  *(v1 + v15) = v33;
  v29 = v28;

  *(v1 + 16) = 2;
  *(v1 + 20) = 1;
  return v1;
}

uint64_t sub_1000C02A8(void *a1)
{
  v33 = a1;
  v2 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v31 = *(v2 - 8);
  v32 = v2;
  __chkstk_darwin(v2);
  v4 = &v31 - v3;
  v5 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v31 - v7;
  v9 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v31 - v11;
  *(v1 + 16) = 0;
  *(v1 + 20) = 256;
  v13 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v34 = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v10 + 32))(v1 + v13, v12, v9);
  v14 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v34 = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v6 + 32))(v1 + v14, v8, v5);
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v15 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v15 = 0;
  v15[1] = 0;
  v16 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v16 = 0;
  v16[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v17 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v34 = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v18 = v32;
  v19 = *(v31 + 32);
  v19(v1 + v17, v4, v32);
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v21 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v34 = 0;
  Published.init(initialValue:)();
  v19(v1 + v21, v4, v18);
  v22 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v22 = 0;
  v22[1] = 0;
  v23 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v23 = 0;
  v23[1] = 0;
  v24 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v24 = 0;
  v24[1] = 0;
  v25 = (v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v25 = 0;
  v25[1] = 0;
  *(v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v26 = v1 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v26 = 0;
  *(v26 + 8) = 1;
  sub_100035D04(&qword_10033AE40, &qword_1002719E0);
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_1002764E0;
  v28 = v33;
  *(v27 + 32) = v33;
  *(v1 + v20) = v27;
  v29 = v28;

  *(v1 + 16) = [v29 type];
  *(v1 + 20) = 0;
  return v1;
}

__CFString *sub_1000C06B0(uint64_t a1)
{
  if (a1 > 4)
  {
    if (a1 <= 6)
    {
      if (a1 == 5)
      {
        v1 = @"FPO_O";
      }

      else
      {
        v1 = @"miniBasalt";
      }

      goto LABEL_18;
    }

    if (a1 == 7)
    {
      v1 = @"b620Dark";
      goto LABEL_18;
    }

    if (a1 == 8)
    {
      v1 = @"b620Light";
      goto LABEL_18;
    }
  }

  else
  {
    if (a1 > 2)
    {
      if (a1 == 3)
      {
        v1 = @"FPO_B";
      }

      else
      {
        v1 = @"FPO_Y";
      }

      goto LABEL_18;
    }

    if (a1 == 1)
    {
      v1 = @"miniDark";
      goto LABEL_18;
    }

    if (a1 == 2)
    {
      v1 = @"miniLight";
LABEL_18:
      v2 = v1;
      goto LABEL_19;
    }
  }

  v1 = [NSString stringWithFormat:@"? (%ld)", a1];
LABEL_19:

  return v1;
}

void sub_1000C07D8()
{
  type metadata accessor for SharingDefaults();
  v0 = swift_allocObject();
  if (qword_100339098 != -1)
  {
    swift_once();
  }

  v1 = qword_10038B250;
  *(v0 + 16) = qword_10038B250;
  v2 = objc_allocWithZone(sub_100035D04(&qword_1003422D8, &qword_100277650));
  v3 = v1;
  v4 = sub_1000C7160(1, 0x656C62616E456863, 0xE900000000000064, v1);

  *(v0 + 24) = v4;
  qword_10038B0A0 = v0;
}

uint64_t sub_1000C08B0()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1000C09DC()
{
  sub_1000C094C();

  return swift_deallocClassInstance();
}

void *sub_1000C0A34()
{
  v1 = v0;
  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B240;
  v3 = sub_100035D04(&qword_1003422F0, &qword_100277668);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v0[2] = sub_1000C7668(0xD000000000000011, 0x800000010029E810, v2, &qword_1003422F0, &qword_100277668, 1.0);
  v6 = objc_allocWithZone(v3);
  v7 = v5;
  v8 = sub_1000C7668(0xD00000000000001ALL, 0x800000010029E830, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[3] = v8;
  v9 = objc_allocWithZone(v3);
  v10 = v7;
  v11 = sub_1000C7668(0xD000000000000012, 0x800000010029E850, v2, &qword_1003422F0, &qword_100277668, 0.48669);

  v1[4] = v11;
  v12 = objc_allocWithZone(v3);
  v13 = v10;
  v14 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E870, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[5] = v14;
  v15 = objc_allocWithZone(v3);
  v16 = v13;
  v17 = sub_1000C7668(0xD000000000000019, 0x800000010029E890, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[6] = v17;
  v18 = objc_allocWithZone(v3);
  v19 = v16;
  v20 = sub_1000C7668(0xD000000000000012, 0x800000010029E8B0, v2, &qword_1003422F0, &qword_100277668, 0.88);

  v1[7] = v20;
  v21 = objc_allocWithZone(v3);
  v22 = v19;
  v23 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E8D0, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[8] = v23;
  v24 = objc_allocWithZone(v3);
  v25 = v22;
  v26 = sub_1000C7668(0xD000000000000013, 0x800000010029E8F0, v2, &qword_1003422F0, &qword_100277668, 0.6);

  v1[9] = v26;
  v27 = objc_allocWithZone(v3);
  v28 = v25;
  v29 = sub_1000C7668(0xD00000000000001CLL, 0x800000010029E910, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[10] = v29;
  v30 = objc_allocWithZone(v3);
  v31 = v28;
  v32 = sub_1000C7668(0xD00000000000001ALL, 0x800000010029E930, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[11] = v32;
  v33 = objc_allocWithZone(v3);
  v34 = v31;
  v35 = sub_1000C7668(0xD000000000000019, 0x800000010029E950, v2, &qword_1003422F0, &qword_100277668, 0.88);

  v1[12] = v35;
  v36 = objc_allocWithZone(v3);
  v37 = v34;
  v38 = sub_1000C7668(0xD000000000000022, 0x800000010029E970, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[13] = v38;
  v39 = objc_allocWithZone(v3);
  v40 = v37;
  v41 = sub_1000C7668(0xD00000000000001ALL, 0x800000010029E9A0, v2, &qword_1003422F0, &qword_100277668, 0.6);

  v1[14] = v41;
  v42 = objc_allocWithZone(v3);
  v43 = sub_1000C7668(0xD000000000000023, 0x800000010029E9C0, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[15] = v43;
  v44 = objc_allocWithZone(v3);
  v45 = sub_1000C7668(0xD000000000000021, 0x800000010029E9F0, v2, &qword_1003422F0, &qword_100277668, 0.0);

  v1[16] = v45;
  return v1;
}

uint64_t sub_1000C0FEC()
{
  sub_1000C0F94();

  return swift_deallocClassInstance();
}

void *sub_1000C1044()
{
  v1 = v0;
  v0[2] = 0x3EA0C6F7A0B5ED8DLL;
  if (qword_100339090 != -1)
  {
    swift_once();
  }

  v2 = qword_10038B248;
  v0[3] = qword_10038B248;
  v3 = sub_100035D04(&qword_1003422F0, &qword_100277668);
  v4 = objc_allocWithZone(v3);
  v5 = v2;
  v0[4] = sub_1000C7668(0xD00000000000001CLL, 0x800000010029E710, v2, &qword_1003422F0, &qword_100277668, -1.0);
  v6 = objc_allocWithZone(v3);
  v7 = v5;
  v8 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E730, v2, &qword_1003422F0, &qword_100277668, -1.0);

  v1[5] = v8;
  v9 = objc_allocWithZone(v3);
  v10 = v7;
  v11 = sub_1000C7668(0xD000000000000027, 0x800000010029E750, v2, &qword_1003422F0, &qword_100277668, -1.0);

  v1[6] = v11;
  v12 = objc_allocWithZone(v3);
  v13 = v10;
  v14 = sub_1000C7668(0xD000000000000019, 0x800000010029E780, v2, &qword_1003422F0, &qword_100277668, -1.0);

  v1[7] = v14;
  v15 = sub_100035D04(&qword_100342378, &qword_1002776F0);
  v16 = objc_allocWithZone(v15);
  v17 = v13;
  v18 = sub_1000C83F4(0, 1, 0xD00000000000001ALL, 0x800000010029E7A0, v2, &qword_100342378, &qword_1002776F0);

  v1[8] = v18;
  v19 = objc_allocWithZone(sub_100035D04(&qword_1003422D8, &qword_100277650));
  v20 = sub_1000C7160(0, 0xD00000000000001CLL, 0x800000010029E7C0, v2);

  v1[9] = v20;
  v21 = objc_allocWithZone(v15);
  v22 = sub_1000C83F4(0, 1, 0xD000000000000022, 0x800000010029E7E0, v2, &qword_100342378, &qword_1002776F0);

  v1[10] = v22;
  return v1;
}

uint64_t sub_1000C1350(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t (*a4)(void), uint64_t *a5)
{
  a2(a1);
  v7 = swift_allocObject();
  result = a4();
  *a5 = v7;
  return result;
}

uint64_t sub_1000C13A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x74756F656D6974;
  }

  else
  {
    v3 = 0x6E6F74747562;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x74756F656D6974;
  }

  else
  {
    v5 = 0x6E6F74747562;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C1448()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C14C8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C1534(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C15BC(uint64_t *a1@<X8>)
{
  v2 = 0x6E6F74747562;
  if (*v1)
  {
    v2 = 0x74756F656D6974;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000C16C4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C17A8(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C1878(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C1958@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FA0(*a1);
  *a2 = result;
  return result;
}

void sub_1000C1988(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x7974697669746361;
  v5 = 0x8000000100297200;
  v6 = 0xD000000000000012;
  v7 = 0xE500000000000000;
  v8 = 0x7974706D65;
  if (v2 != 3)
  {
    v8 = 0xD000000000000012;
    v7 = 0x8000000100297220;
  }

  if (v2 != 2)
  {
    v6 = v8;
    v5 = v7;
  }

  if (*v1)
  {
    v4 = 0x656369766564;
    v3 = 0xE600000000000000;
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

unint64_t sub_1000C1AE8()
{
  v1 = *v0;
  v2 = 0x7974697669746361;
  v3 = 0xD000000000000012;
  v4 = 0x7974706D65;
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
    v2 = 0x656369766564;
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

uint64_t sub_1000C1B84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x737569646172;
  }

  else
  {
    v3 = 0x656C797473;
  }

  if (v2)
  {
    v4 = 0xE500000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x737569646172;
  }

  else
  {
    v5 = 0x656C797473;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_1000C1C24()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C1CA0(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C1D08(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_1000C1D8C(uint64_t *a1@<X8>)
{
  v2 = 0x656C797473;
  if (*v1)
  {
    v2 = 0x737569646172;
  }

  v3 = 0xE500000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_1000C1E90()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000C1F5C(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int sub_1000C2014(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000C20DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C7FEC(*a1);
  *a2 = result;
  return result;
}

void sub_1000C210C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 1952870259;
  v5 = 0xE600000000000000;
  v6 = 0x6D756964656DLL;
  v7 = 0x7976616568;
  if (v2 != 3)
  {
    v7 = 0x6469676972;
  }

  if (v2 != 2)
  {
    v6 = v7;
    v5 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x746867696CLL;
    v3 = 0xE500000000000000;
  }

  if (*v1 <= 1u)
  {
    v8 = v4;
  }

  else
  {
    v8 = v6;
  }

  if (*v1 > 1u)
  {
    v3 = v5;
  }

  *a1 = v8;
  a1[1] = v3;
}

uint64_t sub_1000C2254()
{
  v1 = *v0;
  v2 = 1952870259;
  v3 = 0x6D756964656DLL;
  v4 = 0x7976616568;
  if (v1 != 3)
  {
    v4 = 0x6469676972;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746867696CLL;
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

uint64_t sub_1000C2998()
{
  sub_1000C22D8();

  return swift_deallocClassInstance();
}

uint64_t getEnumTagSinglePayload for Region(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Region(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1000C2BA4()
{
  result = qword_100342288;
  if (!qword_100342288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342288);
  }

  return result;
}

unint64_t sub_1000C2C2C()
{
  result = qword_1003422A0;
  if (!qword_1003422A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003422A0);
  }

  return result;
}

unint64_t sub_1000C2CB4()
{
  result = qword_1003422B8;
  if (!qword_1003422B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003422B8);
  }

  return result;
}

unint64_t sub_1000C2D3C()
{
  result = qword_1003422D0;
  if (!qword_1003422D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003422D0);
  }

  return result;
}

void *sub_1000C2D90()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  v3 = __chkstk_darwin(v2 - 8);
  v705 = (&v702 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v3);
  v706 = (&v702 - v5);
  if (qword_100339088 != -1)
  {
    swift_once();
  }

  v6 = qword_10038B240;
  v7 = sub_100035D04(&qword_1003422D8, &qword_100277650);
  v8 = objc_allocWithZone(v7);
  v9 = v6;
  v10 = sub_1000C7160(0, 0xD000000000000014, 0x800000010029D0B0, v6);

  v1[2] = v10;
  v11 = objc_allocWithZone(v7);
  v12 = v9;
  v13 = sub_1000C7160(0, 0xD00000000000001ELL, 0x800000010029D0D0, v6);

  v1[3] = v13;
  v14 = objc_allocWithZone(v7);
  v15 = v12;
  v16 = sub_1000C7160(1, 0xD000000000000020, 0x800000010029D0F0, v6);

  v1[4] = v16;
  v17 = objc_allocWithZone(v7);
  v18 = v15;
  v19 = sub_1000C7160(0, 0xD000000000000023, 0x800000010029D120, v6);

  v1[5] = v19;
  v20 = objc_allocWithZone(v7);
  v21 = v18;
  v22 = sub_1000C7160(1, 0xD00000000000001FLL, 0x800000010029D150, v6);

  v1[6] = v22;
  v23 = objc_allocWithZone(v7);
  v24 = v21;
  v712 = 0xD000000000000010;
  v25 = sub_1000C7160(1, 0xD000000000000010, 0x800000010029D170, v6);

  v1[7] = v25;
  v26 = objc_allocWithZone(v7);
  v27 = v24;
  v28 = sub_1000C7160(0, 0xD000000000000014, 0x800000010029D190, v6);

  v1[8] = v28;
  v29 = objc_allocWithZone(sub_100035D04(&qword_1003422E0, &qword_100277658));
  v30 = v27;
  v31 = sub_1000C7AF8(1, 0x69746F4E746E6968, 0xEF656C7974536563, v6, &qword_1003422E0, &qword_100277658);

  v1[9] = v31;
  v32 = objc_allocWithZone(v7);
  v33 = v30;
  v34 = sub_1000C7160(1, 0xD000000000000023, 0x800000010029D1B0, v6);

  v1[10] = v34;
  v35 = objc_allocWithZone(v7);
  v36 = v33;
  v37 = sub_1000C7160(1, 0xD000000000000021, 0x800000010029D1E0, v6);

  v1[11] = v37;
  v38 = objc_allocWithZone(v7);
  v39 = v36;
  v40 = sub_1000C7160(0, 0x62616E45746E6968, 0xEB0000000064656CLL, v6);

  v1[12] = v40;
  v41 = sub_100035D04(&qword_1003422E8, &qword_100277660);
  v42 = objc_allocWithZone(v41);
  v43 = v39;
  v44 = sub_1000C8654(0, 0x6E6E6142746E6968, 0xEE00657079547265, v6, &qword_1003422E8, &qword_100277660);

  v1[13] = v44;
  v45 = objc_allocWithZone(v7);
  v46 = v43;
  v714 = 0xD000000000000011;
  v47 = sub_1000C7160(0, 0xD000000000000011, 0x800000010029D210, v6);

  v1[14] = v47;
  v48 = v7;
  v49 = objc_allocWithZone(v7);
  v50 = v46;
  v51 = sub_1000C7160(0, 0xD000000000000014, 0x800000010029D230, v6);

  v1[15] = v51;
  v52 = objc_allocWithZone(v7);
  v53 = v50;
  v54 = sub_1000C7160(1, 0x616E456C6C657764, 0xEC00000064656C62, v6);

  v1[16] = v54;
  v55 = objc_allocWithZone(v41);
  v56 = v53;
  v57 = sub_1000C8654(2, 0x6E61426C6C657764, 0xEF6570795472656ELL, v6, &qword_1003422E8, &qword_100277660);

  v1[17] = v57;
  v58 = sub_100035D04(&qword_1003422F0, &qword_100277668);
  v59 = objc_allocWithZone(v58);
  v60 = v56;
  v61 = sub_1000C7668(0xD000000000000016, 0x800000010029D250, v6, &qword_1003422F0, &qword_100277668, 1.0);

  v1[18] = v61;
  v62 = objc_allocWithZone(v58);
  v63 = v60;
  v64 = v712;
  v65 = sub_1000C7668(v712, 0x800000010029D270, v6, &qword_1003422F0, &qword_100277668, 0.9);

  v1[19] = v65;
  v66 = objc_allocWithZone(v58);
  v67 = v63;
  v68 = sub_1000C7668(v64, 0x800000010029D290, v6, &qword_1003422F0, &qword_100277668, 3.0);

  v1[20] = v68;
  v69 = objc_allocWithZone(v48);
  v70 = v67;
  v715 = 0xD000000000000012;
  v71 = sub_1000C7160(0, 0xD000000000000012, 0x800000010029D2B0, v6);

  v1[21] = v71;
  v72 = objc_allocWithZone(v48);
  v73 = v70;
  v74 = sub_1000C7160(0, 0xD000000000000015, 0x800000010029D2D0, v6);

  v1[22] = v74;
  v75 = objc_allocWithZone(v48);
  v76 = v73;
  v77 = sub_1000C7160(1, 0xD000000000000022, 0x800000010029D2F0, v6);

  v1[23] = v77;
  v78 = objc_allocWithZone(v48);
  v79 = v76;
  v80 = sub_1000C7160(1, 0xD000000000000017, 0x800000010029D320, v6);

  v1[24] = v80;
  v81 = objc_allocWithZone(sub_100035D04(&qword_1003422F8, &qword_100277670));
  v82 = v79;
  v83 = sub_1000C819C(0, 0xF000000000000000, 0xD000000000000018, 0x800000010029D340, v6, &qword_1003422F8, &qword_100277670);

  v1[25] = v83;
  v84 = objc_allocWithZone(v48);
  v85 = v82;
  v86 = sub_1000C7160(0, 0xD00000000000001FLL, 0x800000010029D360, v6);

  v1[26] = v86;
  v87 = v58;
  v88 = objc_allocWithZone(v58);
  v89 = v85;
  v90 = sub_1000C7668(0xD000000000000019, 0x800000010029D380, v6, &qword_1003422F0, &qword_100277668, 0.1);

  v1[27] = v90;
  v91 = objc_allocWithZone(v48);
  v92 = v89;
  v93 = sub_1000C7160(1, 0xD000000000000016, 0x800000010029D3A0, v6);

  v1[28] = v93;
  v94 = objc_allocWithZone(v58);
  v95 = v92;
  v96 = sub_1000C7668(0x446572756C696166, 0xEF6E6F6974617275, v6, &qword_1003422F0, &qword_100277668, 5.0);

  v1[29] = v96;
  v97 = objc_allocWithZone(v58);
  v98 = v95;
  v99 = sub_1000C7668(0xD00000000000001ELL, 0x800000010029D3C0, v6, &qword_1003422F0, &qword_100277668, 8.0);

  v1[30] = v99;
  v100 = v48;
  v101 = objc_allocWithZone(v48);
  v102 = v98;
  v103 = sub_1000C7160(1, 0xD000000000000017, 0x800000010029D3E0, v6);

  v1[31] = v103;
  v104 = objc_allocWithZone(v48);
  v105 = v102;
  v106 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029D400, v6);

  v1[32] = v106;
  v107 = objc_allocWithZone(v58);
  v108 = v105;
  v109 = sub_1000C7668(0xD000000000000021, 0x800000010029D420, v6, &qword_1003422F0, &qword_100277668, 300.0);

  v1[33] = v109;
  v110 = objc_allocWithZone(v48);
  v111 = v108;
  v112 = sub_1000C7160(0, 0xD000000000000017, 0x800000010029D450, v6);

  v1[34] = v112;
  v113 = objc_allocWithZone(v48);
  v114 = v111;
  v115 = sub_1000C7160(1, 0xD00000000000001DLL, 0x800000010029D470, v6);

  v1[35] = v115;
  v116 = objc_allocWithZone(v48);
  v117 = v114;
  v118 = sub_1000C7160(1, 0xD00000000000002ALL, 0x800000010029D490, v6);

  v1[36] = v118;
  v119 = objc_allocWithZone(v48);
  v120 = v117;
  v121 = sub_1000C7160(0, v715, 0x800000010029D4C0, v6);

  v1[37] = v121;
  v122 = objc_allocWithZone(v48);
  v123 = v120;
  v124 = v714;
  v125 = sub_1000C7160(0, v714, 0x800000010029D4E0, v6);

  v1[38] = v125;
  v126 = objc_allocWithZone(v48);
  v127 = v123;
  v128 = sub_1000C7160(1, v124, 0x800000010029D500, v6);

  v1[39] = v128;
  v129 = objc_allocWithZone(v48);
  v130 = v127;
  v131 = sub_1000C7160(0, 0x646F4D6775626564, 0xEE00737265696669, v6);

  v1[40] = v131;
  v132 = objc_allocWithZone(v48);
  v133 = v130;
  v134 = sub_1000C7160(1, v712, 0x800000010029D520, v6);

  v1[41] = v134;
  v135 = objc_allocWithZone(v48);
  v136 = v133;
  v137 = sub_1000C7160(1, 0xD000000000000016, 0x800000010029D540, v6);

  v1[42] = v137;
  v138 = objc_allocWithZone(v87);
  v139 = v136;
  v140 = sub_1000C7668(0xD000000000000020, 0x800000010029D560, v6, &qword_1003422F0, &qword_100277668, 8.0);

  v1[43] = v140;
  v710 = sub_100035D04(&qword_100342300, &qword_100277678);
  v141 = objc_allocWithZone(v710);
  v142 = v139;
  v143 = sub_1000C78B4(2, 0xD000000000000019, 0x800000010029D590, v6, &qword_100342300, &qword_100277678);

  v1[44] = v143;
  v144 = objc_allocWithZone(v87);
  v145 = v142;
  v711 = 0xD000000000000013;
  v146 = sub_1000C7668(0xD000000000000013, 0x800000010029D5B0, v6, &qword_1003422F0, &qword_100277668, 1.0);

  v1[45] = v146;
  v147 = objc_allocWithZone(v87);
  v148 = v145;
  v149 = sub_1000C7668(0xD000000000000018, 0x800000010029D5D0, v6, &qword_1003422F0, &qword_100277668, 30.0);

  v1[46] = v149;
  v716 = v87;
  v150 = objc_allocWithZone(v87);
  v151 = v148;
  v152 = sub_1000C7668(0xD000000000000016, 0x800000010029D5F0, v6, &qword_1003422F0, &qword_100277668, 10.0);

  v1[47] = v152;
  v153 = objc_allocWithZone(v87);
  v154 = v151;
  v155 = sub_1000C7668(0xD00000000000001ELL, 0x800000010029D610, v6, &qword_1003422F0, &qword_100277668, 0.0);

  v1[48] = v155;
  v156 = objc_allocWithZone(v48);
  v157 = v154;
  v158 = sub_1000C7160(1, 0xD00000000000001ALL, 0x800000010029D630, v6);

  v1[49] = v158;
  v159 = objc_allocWithZone(v48);
  v160 = v157;
  v161 = sub_1000C7160(0, v715, 0x800000010029D650, v6);

  v1[50] = v161;
  v162 = objc_allocWithZone(sub_100035D04(&qword_100342308, &qword_100277680));
  v163 = v160;
  v164 = sub_1000C8654(2, v712, 0x800000010029D670, v6, &qword_100342308, &qword_100277680);

  v1[51] = v164;
  v165 = sub_100035D04(&qword_100342310, &qword_100277688);
  v166 = objc_allocWithZone(v165);
  v167 = v163;
  v168 = sub_1000C8654(2, 0xD000000000000022, 0x800000010029D690, v6, &qword_100342310, &qword_100277688);

  v1[52] = v168;
  v169 = objc_allocWithZone(v165);
  v170 = v167;
  v171 = sub_1000C8654(2, 0xD000000000000017, 0x800000010029D6C0, v6, &qword_100342310, &qword_100277688);

  v1[53] = v171;
  v707 = v165;
  v172 = objc_allocWithZone(v165);
  v173 = v170;
  v174 = sub_1000C8654(2, 0xD000000000000019, 0x800000010029D6E0, v6, &qword_100342310, &qword_100277688);

  v1[54] = v174;
  v175 = objc_allocWithZone(v165);
  v176 = v173;
  v177 = sub_1000C8654(2, 0xD000000000000020, 0x800000010029D700, v6, &qword_100342310, &qword_100277688);

  v1[55] = v177;
  v178 = objc_allocWithZone(v100);
  v179 = v176;
  v180 = sub_1000C7160(0, 0xD00000000000001BLL, 0x800000010029D730, v6);

  v1[56] = v180;
  v181 = objc_allocWithZone(v100);
  v182 = v179;
  v183 = sub_1000C7160(1, 0xD000000000000020, 0x800000010029D750, v6);

  v1[57] = v183;
  v713 = v100;
  v184 = objc_allocWithZone(v100);
  v185 = v182;
  v186 = sub_1000C7160(0, 0xD000000000000024, 0x800000010029D780, v6);

  v1[58] = v186;
  v187 = objc_allocWithZone(v100);
  v188 = v185;
  v189 = sub_1000C7160(0, 0xD00000000000001CLL, 0x800000010029D7B0, v6);

  v1[59] = v189;
  v190 = objc_allocWithZone(sub_100035D04(&qword_100342318, &qword_100277690));
  v191 = v188;
  v192 = sub_1000C7AF8(0, 0x65756E69746E6F63, 0xEF72656767697254, v6, &qword_100342318, &qword_100277690);

  v1[60] = v192;
  v193 = objc_allocWithZone(v710);
  v194 = v191;
  v195 = sub_1000C78B4(28, 0xD000000000000021, 0x800000010029D7D0, v6, &qword_100342300, &qword_100277678);

  v1[61] = v195;
  v196 = sub_10024CC14(_swiftEmptyArrayStorage);
  v197 = sub_100035D04(&qword_100342320, &qword_100277698);
  v198 = objc_allocWithZone(v197);
  v199 = v194;
  v200 = sub_1000C78B4(v196, 0x6761735564726163, 0xEA00000000007365, v6, &qword_100342320, &qword_100277698);

  v1[62] = v200;
  v201 = sub_10024CC14(_swiftEmptyArrayStorage);
  v202 = objc_allocWithZone(v197);
  v203 = v199;
  v204 = sub_1000C78B4(v201, 0x67617355746E6968, 0xEA00000000007365, v6, &qword_100342320, &qword_100277698);

  v1[63] = v204;
  v205 = sub_10024CC14(_swiftEmptyArrayStorage);
  v206 = objc_allocWithZone(v197);
  v207 = v203;
  v208 = sub_1000C78B4(v205, 0xD000000000000014, 0x800000010029D800, v6, &qword_100342320, &qword_100277698);

  v1[64] = v208;
  v209 = sub_10024CC14(_swiftEmptyArrayStorage);
  v210 = objc_allocWithZone(v197);
  v211 = v207;
  v212 = sub_1000C78B4(v209, 0x726566736E617274, 0xEE00736567617355, v6, &qword_100342320, &qword_100277698);

  v1[65] = v212;
  v213 = v713;
  v214 = objc_allocWithZone(v713);
  v215 = v211;
  v216 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029D820, v6);

  v1[66] = v216;
  v217 = objc_allocWithZone(v213);
  v218 = v215;
  v219 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029D840, v6);

  v1[67] = v219;
  v220 = objc_allocWithZone(v213);
  v221 = v218;
  v222 = sub_1000C7160(0, 0xD000000000000019, 0x800000010029D860, v6);

  v1[68] = v222;
  v223 = objc_allocWithZone(v213);
  v224 = v221;
  v225 = v6;
  v702 = v6;
  v226 = sub_1000C7160(0, v715, 0x800000010029D880, v6);

  v1[69] = v226;
  v227 = type metadata accessor for Date();
  v228 = *(v227 - 1);
  v703 = *(v228 + 56);
  v704 = v228 + 56;
  v229 = v706;
  v703(v706, 1, 1, v227);
  v230 = v705;
  sub_10006C4AC(v229, v705);
  v231 = sub_100035D04(&qword_100342328, &qword_1002776A0);
  v708 = v231;
  v232 = objc_allocWithZone(v231);
  v233 = v224;
  v234 = sub_1000C73A4(v230, 0xD000000000000015, 0x800000010029D8A0, v225);

  sub_1000C7600(v229);
  v1[70] = v234;
  v709 = v227;
  v235 = v703;
  v703(v229, 1, 1, v227);
  sub_10006C4AC(v229, v230);
  v236 = objc_allocWithZone(v231);
  v237 = v233;
  v238 = v702;
  v239 = sub_1000C73A4(v230, 0xD000000000000016, 0x800000010029D8C0, v702);

  sub_1000C7600(v229);
  v1[71] = v239;
  v235(v229, 1, 1, v227);
  sub_10006C4AC(v229, v230);
  v240 = v708;
  v241 = objc_allocWithZone(v708);
  v242 = v237;
  v243 = sub_1000C73A4(v230, v714, 0x800000010029D8E0, v238);

  sub_1000C7600(v229);
  v1[72] = v243;
  v235(v229, 1, 1, v709);
  sub_10006C4AC(v229, v230);
  v244 = objc_allocWithZone(v240);
  v245 = v242;
  v246 = sub_1000C73A4(v230, 0xD000000000000023, 0x800000010029D900, v238);

  sub_1000C7600(v229);
  v1[73] = v246;
  v247 = objc_allocWithZone(v716);
  v248 = v245;
  v249 = sub_1000C7668(0xD00000000000001FLL, 0x800000010029D930, v238, &qword_1003422F0, &qword_100277668, 86400.0);

  v1[74] = v249;
  v235(v229, 1, 1, v709);
  sub_10006C4AC(v229, v230);
  v250 = objc_allocWithZone(v708);
  v251 = v248;
  v252 = sub_1000C73A4(v230, 0xD00000000000001ELL, 0x800000010029D950, v238);

  sub_1000C7600(v229);
  v1[75] = v252;
  v253 = objc_allocWithZone(v710);
  v254 = v251;
  v255 = sub_1000C78B4(0, 0xD00000000000001DLL, 0x800000010029D970, v238, &qword_100342300, &qword_100277678);

  v1[76] = v255;
  v256 = objc_allocWithZone(v707);
  v257 = v254;
  v258 = sub_1000C8654(1, 0xD00000000000001ALL, 0x800000010029D990, v238, &qword_100342310, &qword_100277688);

  v1[77] = v258;
  v259 = v716;
  v260 = objc_allocWithZone(v716);
  v261 = v257;
  v262 = sub_1000C7668(v711, 0x800000010029D9B0, v238, &qword_1003422F0, &qword_100277668, -1.0);

  v1[78] = v262;
  v263 = objc_allocWithZone(v259);
  v264 = v261;
  v265 = sub_1000C7668(0xD000000000000014, 0x800000010029D9D0, v238, &qword_1003422F0, &qword_100277668, -1.0);

  v1[79] = v265;
  v266 = sub_100035D04(&qword_100342330, &qword_1002776A8);
  v267 = objc_allocWithZone(v266);
  v268 = v264;
  v269 = sub_1000C8654(0, 0xD000000000000017, 0x800000010029D9F0, v238, &qword_100342330, &qword_1002776A8);

  v1[80] = v269;
  v270 = objc_allocWithZone(v266);
  v271 = v268;
  v272 = sub_1000C8654(1, 0xD000000000000018, 0x800000010029DA10, v238, &qword_100342330, &qword_1002776A8);

  v1[81] = v272;
  v273 = objc_allocWithZone(v266);
  v274 = v271;
  v275 = sub_1000C8654(2, 0xD000000000000017, 0x800000010029DA30, v238, &qword_100342330, &qword_1002776A8);

  v1[82] = v275;
  v276 = sub_100035D04(&qword_100342338, &qword_1002776B0);
  v277 = objc_allocWithZone(v276);
  v278 = v274;
  v279 = v714;
  v280 = sub_1000C819C(0, 0, v714, 0x800000010029DA50, v238, &qword_100342338, &qword_1002776B0);

  v1[83] = v280;
  v709 = v276;
  v281 = objc_allocWithZone(v276);
  v282 = v278;
  v283 = sub_1000C819C(0, 0, 0xD000000000000016, 0x800000010029DA70, v238, &qword_100342338, &qword_1002776B0);

  v1[84] = v283;
  v284 = objc_allocWithZone(v276);
  v285 = v282;
  v286 = sub_1000C819C(0, 0, 0xD000000000000017, 0x800000010029DA90, v238, &qword_100342338, &qword_1002776B0);

  v1[85] = v286;
  v287 = v713;
  v288 = objc_allocWithZone(v713);
  v289 = v285;
  v290 = sub_1000C7160(0, 0xD000000000000025, 0x800000010029DAB0, v238);

  v1[86] = v290;
  v291 = objc_allocWithZone(v287);
  v292 = v289;
  v293 = sub_1000C7160(0, 0xD00000000000001CLL, 0x800000010029DAE0, v238);

  v1[87] = v293;
  v294 = objc_allocWithZone(v287);
  v295 = v292;
  v296 = sub_1000C7160(0, 0xD00000000000001FLL, 0x800000010029DB00, v238);

  v1[88] = v296;
  v297 = v287;
  v298 = objc_allocWithZone(v287);
  v299 = v295;
  v300 = sub_1000C7160(0, v279, 0x800000010029DB20, v238);

  v1[89] = v300;
  v301 = objc_allocWithZone(v287);
  v302 = v299;
  v303 = sub_1000C7160(0, 0x656D6F4870696B73, 0xEC00000064726143, v238);

  v1[90] = v303;
  v304 = v716;
  v305 = objc_allocWithZone(v716);
  v306 = v302;
  v307 = sub_1000C7668(v711, 0x800000010029DB40, v238, &qword_1003422F0, &qword_100277668, 8.0);

  v1[91] = v307;
  v308 = objc_allocWithZone(v297);
  v309 = v306;
  v310 = sub_1000C7160(0, 0xD00000000000001BLL, 0x800000010029DB60, v238);

  v1[92] = v310;
  v311 = objc_allocWithZone(v304);
  v312 = v309;
  v313 = sub_1000C7668(0xD00000000000001ELL, 0x800000010029DB80, v238, &qword_1003422F0, &qword_100277668, 0.5);

  v1[93] = v313;
  v314 = sub_100035D04(&qword_100342340, &qword_1002776B8);
  v315 = objc_allocWithZone(v314);
  v316 = v312;
  v317 = sub_1000C7668(0xD00000000000001CLL, 0x800000010029DBA0, v238, &qword_100342340, &qword_1002776B8, 0.1);

  v1[94] = v317;
  v318 = objc_allocWithZone(v314);
  v319 = v316;
  v320 = sub_1000C7668(0xD00000000000001DLL, 0x800000010029DBC0, v238, &qword_100342340, &qword_1002776B8, 0.1);

  v1[95] = v320;
  v321 = objc_allocWithZone(v314);
  v322 = v319;
  v323 = sub_1000C7668(0xD000000000000022, 0x800000010029DBE0, v238, &qword_100342340, &qword_1002776B8, 1.2);

  v1[96] = v323;
  v324 = objc_allocWithZone(v314);
  v325 = v322;
  v326 = sub_1000C7668(0xD000000000000023, 0x800000010029DC10, v238, &qword_100342340, &qword_1002776B8, -1.25);

  v1[97] = v326;
  v327 = objc_allocWithZone(v314);
  v328 = v325;
  v329 = sub_1000C7668(0xD000000000000021, 0x800000010029DC40, v238, &qword_100342340, &qword_1002776B8, 25.0);

  v1[98] = v329;
  v330 = objc_allocWithZone(v314);
  v331 = v328;
  v332 = sub_1000C7668(0xD000000000000022, 0x800000010029DC70, v238, &qword_100342340, &qword_1002776B8, 25.0);

  v1[99] = v332;
  v333 = objc_allocWithZone(v314);
  v334 = v331;
  v335 = sub_1000C7668(0xD000000000000015, 0x800000010029DCA0, v238, &qword_100342340, &qword_1002776B8, 0.0);

  v1[100] = v335;
  v336 = objc_allocWithZone(sub_100035D04(&qword_100342348, &qword_1002776C0));
  v337 = v334;
  v338 = sub_1000C7AF8(1, v712, 0x800000010029DCC0, v238, &qword_100342348, &qword_1002776C0);

  v1[101] = v338;
  v339 = objc_allocWithZone(v710);
  v340 = v337;
  v341 = sub_1000C78B4(11, 0x72756C4264726163, 0xED0000656C797453, v238, &qword_100342300, &qword_100277678);

  v1[102] = v341;
  v342 = objc_allocWithZone(v314);
  v343 = v340;
  v344 = sub_1000C7668(0x72756C4264726163, 0xEE00737569646152, v238, &qword_100342340, &qword_1002776B8, 16.0);

  v1[103] = v344;
  v345 = v713;
  v346 = objc_allocWithZone(v713);
  v347 = v343;
  v348 = sub_1000C7160(0, 0xD000000000000018, 0x800000010029DCE0, v238);

  v1[104] = v348;
  v705 = v314;
  v349 = objc_allocWithZone(v314);
  v350 = v347;
  v351 = sub_1000C7668(0xD000000000000014, 0x800000010029DD00, v238, &qword_100342340, &qword_1002776B8, 20.0);

  v1[105] = v351;
  v352 = objc_allocWithZone(v314);
  v353 = v350;
  v354 = sub_1000C7668(0xD000000000000016, 0x800000010029DD20, v238, &qword_100342340, &qword_1002776B8, 20.0);

  v1[106] = v354;
  v355 = objc_allocWithZone(v345);
  v356 = v353;
  v357 = sub_1000C7160(1, 0xD000000000000019, 0x800000010029DD40, v238);

  v1[107] = v357;
  v358 = v716;
  v359 = objc_allocWithZone(v716);
  v360 = v356;
  v361 = v715;
  v362 = sub_1000C7668(v715, 0x800000010029DD60, v238, &qword_1003422F0, &qword_100277668, 0.3);

  v1[108] = v362;
  v363 = objc_allocWithZone(v358);
  v364 = v360;
  v365 = sub_1000C7668(0x617078456C6C6970, 0xEF656C616353646ELL, v238, &qword_1003422F0, &qword_100277668, 1.3);

  v1[109] = v365;
  v366 = objc_allocWithZone(sub_100035D04(&qword_100342350, &qword_1002776C8));
  v367 = v364;
  v368 = kCAMediaTimingFunctionEaseOut;
  v369 = sub_1000C78B4(kCAMediaTimingFunctionEaseOut, 0xD00000000000001CLL, 0x800000010029DD80, v238, &qword_100342350, &qword_1002776C8);

  v1[110] = v369;
  v370 = objc_allocWithZone(sub_100035D04(&qword_100342358, &qword_1002776D0));
  v371 = v367;
  v372 = sub_1000C7AF8(0, 0xD00000000000001CLL, 0x800000010029DDA0, v238, &qword_100342358, &qword_1002776D0);

  v1[111] = v372;
  v373 = objc_allocWithZone(sub_100035D04(&qword_100342360, &qword_1002776D8));
  v374 = v371;
  v375 = sub_1000C7AF8(0, 0xD000000000000019, 0x800000010029DDC0, v238, &qword_100342360, &qword_1002776D8);

  v1[112] = v375;
  v376 = v713;
  v377 = objc_allocWithZone(v713);
  v378 = v374;
  v379 = sub_1000C7160(1, 0xD000000000000018, 0x800000010029DDE0, v238);

  v1[113] = v379;
  v380 = objc_allocWithZone(v358);
  v381 = v378;
  v382 = sub_1000C7668(0xD000000000000014, 0x800000010029DE00, v238, &qword_1003422F0, &qword_100277668, 0.0);

  v1[114] = v382;
  v383 = objc_allocWithZone(v376);
  v384 = v381;
  v385 = sub_1000C7160(0, 0xD00000000000001FLL, 0x800000010029DE20, v238);

  v1[115] = v385;
  v386 = objc_allocWithZone(v376);
  v387 = v384;
  v388 = sub_1000C7160(1, v361, 0x800000010029DE40, v238);

  v1[116] = v388;
  v389 = objc_allocWithZone(v376);
  v390 = v387;
  v391 = sub_1000C7160(1, v711, 0x800000010029DE60, v238);

  v1[117] = v391;
  v392 = sub_100035D04(&qword_100342368, &qword_1002776E0);
  v708 = v392;
  v393 = objc_allocWithZone(v392);
  v394 = v390;
  v395 = sub_1000C7D40(0xD000000000000014, 0x800000010029DE80, v238, 0.15);

  v1[118] = v395;
  v396 = objc_allocWithZone(v392);
  v397 = v394;
  v398 = sub_1000C7D40(0xD000000000000014, 0x800000010029DEA0, v238, 0.0);

  v1[119] = v398;
  v399 = sub_100035D04(&qword_100342370, &qword_1002776E8);
  v400 = objc_allocWithZone(v399);
  v401 = v397;
  v402 = v714;
  v403 = sub_1000C8654(4, v714, 0x800000010029DEC0, v238, &qword_100342370, &qword_1002776E8);

  v1[120] = v403;
  v404 = v705;
  v405 = objc_allocWithZone(v705);
  v406 = v401;
  v407 = sub_1000C7668(0xD000000000000015, 0x800000010029DEE0, v238, &qword_100342340, &qword_1002776B8, 1.0);

  v1[121] = v407;
  v408 = objc_allocWithZone(v399);
  v409 = v406;
  v410 = sub_1000C8654(3, v402, 0x800000010029DF00, v238, &qword_100342370, &qword_1002776E8);

  v1[122] = v410;
  v411 = objc_allocWithZone(v404);
  v412 = v409;
  v413 = sub_1000C7668(0xD000000000000015, 0x800000010029DF20, v238, &qword_100342340, &qword_1002776B8, 1.0);

  v1[123] = v413;
  v414 = v713;
  v415 = objc_allocWithZone(v713);
  v416 = v412;
  v417 = sub_1000C7160(0, 0xD000000000000027, 0x800000010029DF40, v238);

  v1[124] = v417;
  v418 = objc_allocWithZone(v414);
  v419 = v416;
  v420 = sub_1000C7160(0, 0xD000000000000032, 0x800000010029DF70, v238);

  v1[125] = v420;
  v421 = objc_allocWithZone(v414);
  v422 = v419;
  v423 = sub_1000C7160(0, 0xD000000000000019, 0x800000010029DFB0, v238);

  v1[126] = v423;
  v424 = objc_allocWithZone(v414);
  v425 = v422;
  v426 = sub_1000C7160(1, 0xD000000000000017, 0x800000010029DFD0, v238);

  v1[127] = v426;
  v427 = objc_allocWithZone(v414);
  v428 = v425;
  v429 = sub_1000C7160(0, 0xD000000000000015, 0x800000010029DFF0, v238);

  v1[128] = v429;
  v430 = objc_allocWithZone(v414);
  v431 = v428;
  v432 = sub_1000C7160(1, 0xD00000000000001ELL, 0x800000010029E010, v238);

  v1[129] = v432;
  v433 = objc_allocWithZone(v414);
  v434 = v431;
  v435 = sub_1000C7160(0, 0xD00000000000001BLL, 0x800000010029E030, v238);

  v1[130] = v435;
  v436 = objc_allocWithZone(v414);
  v437 = v434;
  v438 = sub_1000C7160(0, 0xD000000000000017, 0x800000010029E050, v238);

  v1[131] = v438;
  v439 = v716;
  v440 = objc_allocWithZone(v716);
  v441 = v437;
  v442 = sub_1000C7668(v402, 0x800000010029E070, v238, &qword_1003422F0, &qword_100277668, 0.0);

  v1[132] = v442;
  v443 = objc_allocWithZone(v414);
  v444 = v441;
  v445 = sub_1000C7160(0, 0xD00000000000001ALL, 0x800000010029E090, v238);

  v1[133] = v445;
  v446 = objc_allocWithZone(v414);
  v447 = v444;
  v448 = sub_1000C7160(0, 0xD000000000000016, 0x800000010029E0B0, v238);

  v1[134] = v448;
  v449 = objc_allocWithZone(v414);
  v450 = v447;
  v451 = sub_1000C7160(0, v402, 0x800000010029E0D0, v238);

  v1[135] = v451;
  v452 = objc_allocWithZone(v404);
  v453 = v450;
  v454 = sub_1000C7668(0x706C416567646162, 0xEF6E696765426168, v238, &qword_100342340, &qword_1002776B8, 0.0);

  v1[136] = v454;
  v455 = objc_allocWithZone(v404);
  v456 = v453;
  v457 = sub_1000C7668(0x706C416567646162, 0xED0000646E456168, v238, &qword_100342340, &qword_1002776B8, 1.0);

  v1[137] = v457;
  v458 = objc_allocWithZone(v439);
  v459 = v456;
  v460 = sub_1000C7668(0x6C65446567646162, 0xEA00000000007961, v238, &qword_1003422F0, &qword_100277668, 1.0);

  v1[138] = v460;
  v461 = objc_allocWithZone(v439);
  v462 = v459;
  v463 = sub_1000C7668(0x7275446567646162, 0xED00006E6F697461, v238, &qword_1003422F0, &qword_100277668, 1.0);

  v1[139] = v463;
  v464 = objc_allocWithZone(v404);
  v465 = v462;
  v466 = sub_1000C7668(0x6163536567646162, 0xEF6E69676542656CLL, v238, &qword_100342340, &qword_1002776B8, 0.8);

  v1[140] = v466;
  v467 = objc_allocWithZone(v404);
  v468 = v465;
  v469 = sub_1000C7668(0x6163536567646162, 0xED0000646E45656CLL, v238, &qword_100342340, &qword_1002776B8, 1.0);

  v1[141] = v469;
  v470 = objc_allocWithZone(v404);
  v471 = v468;
  v472 = sub_1000C7668(0x68706C4172756C62, 0xEE006E6967654261, v238, &qword_100342340, &qword_1002776B8, 0.0);

  v1[142] = v472;
  v473 = objc_allocWithZone(v404);
  v474 = v471;
  v475 = sub_1000C7668(0x68706C4172756C62, 0xEC000000646E4561, v238, &qword_100342340, &qword_1002776B8, 0.5);

  v1[143] = v475;
  v476 = objc_allocWithZone(v404);
  v477 = v474;
  v478 = sub_1000C7668(0x6772614D72756C62, 0xEA00000000006E69, v238, &qword_100342340, &qword_1002776B8, 15.0);

  v1[144] = v478;
  v479 = objc_allocWithZone(v404);
  v480 = v477;
  v481 = sub_1000C7668(0x6964615272756C62, 0xEA00000000007375, v238, &qword_100342340, &qword_1002776B8, 0.5);

  v1[145] = v481;
  v706 = sub_100035D04(&qword_100342378, &qword_1002776F0);
  v482 = objc_allocWithZone(v706);
  v483 = v480;
  v484 = sub_1000C83F4(0, 1, 0xD00000000000001BLL, 0x800000010029E0F0, v238, &qword_100342378, &qword_1002776F0);

  v1[146] = v484;
  v485 = objc_allocWithZone(v709);
  v486 = v483;
  v487 = sub_1000C819C(0, 0, 0xD000000000000016, 0x800000010029E110, v238, &qword_100342338, &qword_1002776B0);

  v1[147] = v487;
  v488 = objc_allocWithZone(v404);
  v489 = v486;
  v490 = sub_1000C7668(0x706C416569766F6DLL, 0xEF6E696765426168, v238, &qword_100342340, &qword_1002776B8, 0.0);

  v1[148] = v490;
  v491 = objc_allocWithZone(v404);
  v492 = v489;
  v493 = sub_1000C7668(0x706C416569766F6DLL, 0xED0000646E456168, v238, &qword_100342340, &qword_1002776B8, 1.0);

  v1[149] = v493;
  v494 = objc_allocWithZone(v716);
  v495 = v492;
  v496 = v715;
  v497 = sub_1000C7668(v715, 0x800000010029E130, v238, &qword_1003422F0, &qword_100277668, 0.5);

  v1[150] = v497;
  v498 = objc_allocWithZone(v404);
  v499 = v495;
  v500 = sub_1000C7668(0x6163536569766F6DLL, 0xEF6E69676542656CLL, v238, &qword_100342340, &qword_1002776B8, 0.1);

  v1[151] = v500;
  v501 = objc_allocWithZone(v404);
  v502 = v499;
  v503 = sub_1000C7668(0x6163536569766F6DLL, 0xED0000646E45656CLL, v238, &qword_100342340, &qword_1002776B8, 1.0);

  v1[152] = v503;
  v504 = objc_allocWithZone(v404);
  v505 = v502;
  v506 = sub_1000C7668(v496, 0x800000010029E150, v238, &qword_100342340, &qword_1002776B8, 10.0);

  v1[153] = v506;
  v507 = objc_allocWithZone(v404);
  v508 = v505;
  v509 = sub_1000C7668(0x6461506569766F6DLL, 0xEF706F54676E6964, v238, &qword_100342340, &qword_1002776B8, -25.0);

  v1[154] = v509;
  v510 = v716;
  v511 = objc_allocWithZone(v716);
  v512 = v508;
  v513 = sub_1000C7668(0xD000000000000016, 0x800000010029E170, v238, &qword_1003422F0, &qword_100277668, 1.0);

  v1[155] = v513;
  v514 = objc_allocWithZone(v404);
  v515 = v512;
  v516 = sub_1000C7668(0xD000000000000016, 0x800000010029E190, v238, &qword_100342340, &qword_1002776B8, 50.0);

  v1[156] = v516;
  v517 = objc_allocWithZone(v404);
  v518 = v515;
  v519 = sub_1000C7668(0xD000000000000014, 0x800000010029E1B0, v238, &qword_100342340, &qword_1002776B8, 0.0);

  v1[157] = v519;
  v520 = objc_allocWithZone(v510);
  v521 = v518;
  v522 = sub_1000C7668(v714, 0x800000010029E1D0, v238, &qword_1003422F0, &qword_100277668, 5.0);

  v1[158] = v522;
  v523 = v713;
  v524 = objc_allocWithZone(v713);
  v525 = v521;
  v526 = sub_1000C7160(0, 0x49556775626564, 0xE700000000000000, v238);

  v1[159] = v526;
  v527 = objc_allocWithZone(v523);
  v528 = v525;
  v529 = sub_1000C7160(0, 0x655265726F6E6769, 0xEA00000000006C61, v238);

  v1[160] = v529;
  v530 = objc_allocWithZone(v404);
  v531 = v528;
  v532 = sub_1000C7668(0xD000000000000014, 0x800000010029E1F0, v238, &qword_100342340, &qword_1002776B8, 1.2);

  v1[161] = v532;
  v533 = objc_allocWithZone(v404);
  v534 = v531;
  v535 = sub_1000C7668(0xD000000000000015, 0x800000010029E210, v238, &qword_100342340, &qword_1002776B8, 50.0);

  v1[162] = v535;
  v536 = v709;
  v537 = objc_allocWithZone(v709);
  v538 = v534;
  v539 = sub_1000C819C(0, 0, 0x497070416F6D6544, 0xEB000000006E6F63, v238, &qword_100342338, &qword_1002776B0);

  v1[163] = v539;
  v540 = objc_allocWithZone(v706);
  v541 = v538;
  v542 = sub_1000C83F4(0, 1, 0x67616D496F6D6544, 0xE900000000000065, v238, &qword_100342378, &qword_1002776F0);

  v1[164] = v542;
  v543 = objc_allocWithZone(v536);
  v544 = v541;
  v545 = sub_1000C819C(0, 0, 0x656D614E6F6D6544, 0xE800000000000000, v238, &qword_100342338, &qword_1002776B0);

  v1[165] = v545;
  v546 = objc_allocWithZone(v536);
  v547 = v544;
  v548 = sub_1000C819C(0, 0, 0x746275536F6D6544, 0xEB00000000747865, v238, &qword_100342338, &qword_1002776B0);

  v1[166] = v548;
  v549 = objc_allocWithZone(v523);
  v550 = v547;
  v551 = sub_1000C7160(0, 0xD000000000000024, 0x800000010029E230, v238);

  v1[167] = v551;
  v552 = objc_allocWithZone(v536);
  v553 = v550;
  v554 = sub_1000C819C(0, 0, 0xD000000000000022, 0x800000010029E260, v238, &qword_100342338, &qword_1002776B0);

  v1[168] = v554;
  v555 = objc_allocWithZone(v710);
  v556 = v553;
  v557 = sub_1000C78B4(0, 0x7543636974706168, 0xEB00000000657672, v238, &qword_100342300, &qword_100277678);

  v1[169] = v557;
  v558 = objc_allocWithZone(v523);
  v559 = v556;
  v560 = v715;
  v561 = sub_1000C7160(1, v715, 0x800000010029E290, v238);

  v1[170] = v561;
  v562 = v716;
  v563 = objc_allocWithZone(v716);
  v564 = v559;
  v565 = sub_1000C7668(0x7246636974706168, 0xEF79636E65757165, v238, &qword_1003422F0, &qword_100277668, 60.0);

  v1[171] = v565;
  v566 = v708;
  v567 = objc_allocWithZone(v708);
  v568 = v564;
  v569 = sub_1000C7D40(v560, 0x800000010029E2B0, v238, 0.65);

  v1[172] = v569;
  v570 = objc_allocWithZone(v566);
  v571 = v568;
  v572 = sub_1000C7D40(v560, 0x800000010029E2D0, v238, 0.0);

  v1[173] = v572;
  v573 = v566;
  v574 = objc_allocWithZone(v566);
  v575 = v571;
  v576 = v712;
  v577 = sub_1000C7D40(v712, 0x800000010029E2F0, v238, 0.15);

  v1[174] = v577;
  v578 = objc_allocWithZone(v573);
  v579 = v575;
  v580 = sub_1000C7D40(v576, 0x800000010029E310, v238, 0.15);

  v1[175] = v580;
  v581 = objc_allocWithZone(v562);
  v582 = v579;
  v583 = sub_1000C7668(0x664F636974706168, 0xEC00000074657366, v238, &qword_1003422F0, &qword_100277668, 0.3);

  v1[176] = v583;
  v584 = objc_allocWithZone(v562);
  v585 = v582;
  v586 = sub_1000C7668(v711, 0x800000010029E330, v238, &qword_1003422F0, &qword_100277668, 0.8425);

  v1[177] = v586;
  v587 = objc_allocWithZone(v562);
  v588 = v585;
  v589 = sub_1000C7668(0xD00000000000001CLL, 0x800000010029E350, v238, &qword_1003422F0, &qword_100277668, 0.0625);

  v1[178] = v589;
  v590 = objc_allocWithZone(v562);
  v591 = v588;
  v592 = sub_1000C7668(0xD000000000000014, 0x800000010029E370, v238, &qword_1003422F0, &qword_100277668, 0.4);

  v1[179] = v592;
  v593 = objc_allocWithZone(v562);
  v594 = v591;
  v595 = sub_1000C7668(0xD00000000000001DLL, 0x800000010029E390, v238, &qword_1003422F0, &qword_100277668, 0.125);

  v1[180] = v595;
  v596 = objc_allocWithZone(v562);
  v597 = v594;
  v598 = sub_1000C7668(0xD00000000000001BLL, 0x800000010029E3B0, v238, &qword_1003422F0, &qword_100277668, 0.0);

  v1[181] = v598;
  v599 = v713;
  v600 = objc_allocWithZone(v713);
  v601 = v597;
  v602 = sub_1000C7160(0, v715, 0x800000010029E3D0, v238);

  v1[182] = v602;
  v603 = objc_allocWithZone(v599);
  v604 = v601;
  v605 = sub_1000C7160(1, 0x6D53676E69727073, 0xEF676E6968746F6FLL, v238);

  v1[183] = v605;
  v606 = objc_allocWithZone(v599);
  v607 = v604;
  v608 = sub_1000C7160(0, 0xD000000000000017, 0x800000010029E3F0, v238);

  v1[184] = v608;
  v609 = v710;
  v610 = objc_allocWithZone(v710);
  v611 = v607;
  v612 = sub_1000C78B4(-60, 0xD000000000000014, 0x800000010029E410, v238, &qword_100342300, &qword_100277678);

  v1[185] = v612;
  v613 = v708;
  v614 = objc_allocWithZone(v708);
  v615 = v611;
  v616 = sub_1000C7D40(0xD000000000000018, 0x800000010029E430, v238, 4.0);

  v1[186] = v616;
  v617 = objc_allocWithZone(v613);
  v618 = v615;
  v619 = sub_1000C7D40(v711, 0x800000010029E450, v238, 0.3);

  v1[187] = v619;
  v620 = v707;
  v621 = objc_allocWithZone(v707);
  v622 = v618;
  v623 = sub_1000C8654(2, 0x7365526563726F66, 0xEE007265646E6F70, v238, &qword_100342310, &qword_100277688);

  v1[188] = v623;
  v624 = objc_allocWithZone(v599);
  v625 = v622;
  v626 = sub_1000C7160(0, 0xD000000000000018, 0x800000010029E470, v238);

  v1[189] = v626;
  v627 = objc_allocWithZone(v599);
  v628 = v625;
  v629 = sub_1000C7160(1, 0xD000000000000014, 0x800000010029E490, v238);

  v1[190] = v629;
  v630 = objc_allocWithZone(v599);
  v631 = v628;
  v632 = sub_1000C7160(1, 0x45676E69676E6172, 0xEF646563726F666ELL, v238);

  v1[191] = v632;
  v633 = objc_allocWithZone(v620);
  v634 = v631;
  v635 = sub_1000C8654(2, 0xD00000000000001BLL, 0x800000010029E4B0, v238, &qword_100342310, &qword_100277688);

  v1[192] = v635;
  v636 = objc_allocWithZone(v709);
  v637 = v634;
  v638 = sub_1000C819C(0, 0, v714, 0x800000010029E4D0, v238, &qword_100342338, &qword_1002776B0);

  v1[193] = v638;
  v639 = objc_allocWithZone(v599);
  v640 = v637;
  v641 = sub_1000C7160(1, 0x746552776F6C6C61, 0xEC00000073656972, v238);

  v1[194] = v641;
  v642 = objc_allocWithZone(v609);
  v643 = v640;
  v644 = sub_1000C78B4(0, 0xD000000000000018, 0x800000010029E4F0, v238, &qword_100342300, &qword_100277678);

  v1[195] = v644;
  v645 = objc_allocWithZone(v609);
  v646 = v643;
  v647 = sub_1000C78B4(0, 0xD000000000000016, 0x800000010029E510, v238, &qword_100342300, &qword_100277678);

  v1[196] = v647;
  v648 = objc_allocWithZone(v716);
  v649 = v646;
  v650 = sub_1000C7668(0xD00000000000001DLL, 0x800000010029E530, v238, &qword_1003422F0, &qword_100277668, 0.0);

  v1[197] = v650;
  v651 = objc_allocWithZone(v599);
  v652 = v649;
  v653 = sub_1000C7160(0, 0x44676E69676E6172, 0xEF64656C62617369, v238);

  v1[198] = v653;
  v654 = v708;
  v655 = objc_allocWithZone(v708);
  v656 = v652;
  v657 = sub_1000C7D40(v714, 0x800000010029E550, v238, 10.0);

  v1[199] = v657;
  v658 = objc_allocWithZone(v654);
  v659 = v656;
  v660 = sub_1000C7D40(0x6E61747369447462, 0xEF656772614C6563, v238, 10.0);

  v1[200] = v660;
  v661 = objc_allocWithZone(v654);
  v662 = v659;
  v663 = sub_1000C7D40(0x6E61747369447462, 0xEF726568744F6563, v238, 10.0);

  v1[201] = v663;
  v664 = objc_allocWithZone(v654);
  v665 = v662;
  v666 = sub_1000C7D40(0xD000000000000018, 0x800000010029E570, v238, 0.5);

  v1[202] = v666;
  v667 = objc_allocWithZone(v654);
  v668 = v665;
  v669 = sub_1000C7D40(0xD000000000000016, 0x800000010029E590, v238, 0.075);

  v1[203] = v669;
  v670 = objc_allocWithZone(v654);
  v671 = v668;
  v672 = sub_1000C7D40(0xD000000000000014, 0x800000010029E5B0, v238, 0.13);

  v1[204] = v672;
  v673 = objc_allocWithZone(v654);
  v674 = v671;
  v675 = sub_1000C7D40(0xD000000000000014, 0x800000010029E5D0, v238, 0.16);

  v1[205] = v675;
  v676 = objc_allocWithZone(v654);
  v677 = v674;
  v678 = sub_1000C7D40(0xD00000000000001ALL, 0x800000010029E5F0, v238, 2.0);

  v1[206] = v678;
  v679 = objc_allocWithZone(v654);
  v680 = v677;
  v681 = sub_1000C7D40(0xD000000000000018, 0x800000010029E610, v238, 2.0);

  v1[207] = v681;
  v682 = objc_allocWithZone(v654);
  v683 = v680;
  v684 = sub_1000C7D40(0xD000000000000018, 0x800000010029E630, v238, 2.0);

  v1[208] = v684;
  v685 = objc_allocWithZone(v654);
  v686 = v683;
  v687 = sub_1000C7D40(0xD00000000000001BLL, 0x800000010029E650, v238, 1.25);

  v1[209] = v687;
  v688 = objc_allocWithZone(v654);
  v689 = v686;
  v690 = sub_1000C7D40(0xD000000000000019, 0x800000010029E670, v238, 1.25);

  v1[210] = v690;
  v691 = objc_allocWithZone(v654);
  v692 = v689;
  v693 = sub_1000C7D40(0xD000000000000019, 0x800000010029E690, v238, 1.25);

  v1[211] = v693;
  v694 = objc_allocWithZone(v654);
  v695 = v692;
  v696 = sub_1000C7D40(0xD000000000000016, 0x800000010029E6B0, v238, 0.3);

  v1[212] = v696;
  v697 = objc_allocWithZone(v654);
  v698 = sub_1000C7D40(0xD000000000000014, 0x800000010029E6D0, v238, 0.36);

  v1[213] = v698;
  v699 = objc_allocWithZone(v654);
  v700 = sub_1000C7D40(0xD000000000000014, 0x800000010029E6F0, v238, 0.36);

  v1[214] = v700;
  return v1;
}

id sub_1000C7160(char a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a1;
  v14 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v14 = a2;
  v14[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v20, "UserDefault-");
  HIBYTE(v20[6]) = 0;
  v20[7] = -5120;
  v15 = a4;

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v13, v10);
  v17 = sub_100035D04(&qword_1003422D8, &qword_100277650);
  v19.receiver = v5;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, "init");
}

id sub_1000C73A4(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  sub_10006C4AC(a1, v5 + *((swift_isaMask & *v5) + 0x60));
  v14 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v14 = a2;
  v14[1] = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a4;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v21, "UserDefault-");
  HIBYTE(v21[6]) = 0;
  v21[7] = -5120;
  v15 = a4;

  v16._countAndFlagsBits = a2;
  v16._object = a3;
  String.append(_:)(v16);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v13, v10);
  v17 = sub_100035D04(&qword_100342328, &qword_1002776A0);
  v20.receiver = v5;
  v20.super_class = v17;
  v18 = objc_msgSendSuper2(&v20, "init");
  sub_1000C7600(a1);
  return v18;
}

uint64_t sub_1000C7600(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033C280, &qword_100272A80);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1000C7668(uint64_t a1, void *a2, void *a3, uint64_t *a4, uint64_t *a5, double a6)
{
  v23 = a5;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a6;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a1;
  v17[1] = a2;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a3;

  v19._countAndFlagsBits = a1;
  v19._object = a2;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_100035D04(a4, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_1000C78B4(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a4;

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_100035D04(a5, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_1000C7AF8(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1 & 1;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a4;

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_100035D04(a5, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

id sub_1000C7D40(uint64_t a1, void *a2, void *a3, float a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + *((swift_isaMask & *v5) + 0x88)) = 0;
  *(v5 + *((swift_isaMask & *v5) + 0x60)) = a4;
  v14 = (v5 + *((swift_isaMask & *v5) + 0x68));
  *v14 = a1;
  v14[1] = a2;
  *(v5 + *((swift_isaMask & *v5) + 0x70)) = a3;
  *(v5 + *((swift_isaMask & *v5) + 0x78)) = 0;
  strcpy(v20, "UserDefault-");
  HIBYTE(v20[6]) = 0;
  v20[7] = -5120;
  v15 = a3;

  v16._countAndFlagsBits = a1;
  v16._object = a2;
  String.append(_:)(v16);

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + *((swift_isaMask & *v5) + 0x80), v13, v10);
  v17 = sub_100035D04(&qword_100342368, &qword_1002776E0);
  v19.receiver = v5;
  v19.super_class = v17;
  return objc_msgSendSuper2(&v19, "init");
}

unint64_t sub_1000C7FA0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300AB8, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C7FEC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300BF0, v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000C8038()
{
  result = qword_100342380;
  if (!qword_100342380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342380);
  }

  return result;
}

unint64_t sub_1000C808C()
{
  result = qword_100342388;
  if (!qword_100342388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342388);
  }

  return result;
}

unint64_t sub_1000C80E0()
{
  result = qword_100342390;
  if (!qword_100342390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342390);
  }

  return result;
}

unint64_t sub_1000C8134()
{
  result = qword_100342398;
  if (!qword_100342398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342398);
  }

  return result;
}

id sub_1000C819C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v24 = a6;
  v25 = a7;
  v8 = v7;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  v18 = (v8 + *((swift_isaMask & *v8) + 0x60));
  *v18 = a1;
  v18[1] = a2;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v19 = a3;
  v19[1] = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a5;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v27, "UserDefault-");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v20 = a5;

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v15 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v17, v14);
  v22 = sub_100035D04(v24, v25);
  v26.receiver = v8;
  v26.super_class = v22;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_1000C83F4(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5, uint64_t *a6, uint64_t *a7)
{
  v24 = a6;
  v25 = a7;
  v8 = v7;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v24 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  v18 = v8 + *((swift_isaMask & *v8) + 0x60);
  *v18 = a1;
  v18[8] = a2 & 1;
  v19 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v19 = a3;
  v19[1] = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a5;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v27, "UserDefault-");
  HIBYTE(v27[6]) = 0;
  v27[7] = -5120;
  v20 = a5;

  v21._countAndFlagsBits = a3;
  v21._object = a4;
  String.append(_:)(v21);

  Logger.init(subsystem:category:)();
  (*(v15 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v17, v14);
  v22 = sub_100035D04(v24, v25);
  v26.receiver = v8;
  v26.super_class = v22;
  return objc_msgSendSuper2(&v26, "init");
}

id sub_1000C8654(char a1, uint64_t a2, void *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v23 = a6;
  v8 = v6;
  v13 = type metadata accessor for Logger();
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v8 + *((swift_isaMask & *v8) + 0x88)) = 0;
  *(v8 + *((swift_isaMask & *v8) + 0x60)) = a1;
  v17 = (v8 + *((swift_isaMask & *v8) + 0x68));
  *v17 = a2;
  v17[1] = a3;
  *(v8 + *((swift_isaMask & *v8) + 0x70)) = a4;
  *(v8 + *((swift_isaMask & *v8) + 0x78)) = 0;
  strcpy(v25, "UserDefault-");
  HIBYTE(v25[6]) = 0;
  v25[7] = -5120;
  v18 = a4;

  v19._countAndFlagsBits = a2;
  v19._object = a3;
  String.append(_:)(v19);

  Logger.init(subsystem:category:)();
  (*(v14 + 32))(v8 + *((swift_isaMask & *v8) + 0x80), v16, v13);
  v20 = sub_100035D04(a5, v23);
  v24.receiver = v8;
  v24.super_class = v20;
  return objc_msgSendSuper2(&v24, "init");
}

uint64_t sub_1000C88A0(void *a1, uint64_t a2, uint64_t a3)
{
  v47 = a3;
  v42 = a2;
  v43 = sub_100035D04(&qword_1003423C0, &qword_100277870);
  v41 = *(v43 - 8);
  __chkstk_darwin(v43);
  v40 = &v31 - v4;
  v5 = sub_100035D04(&qword_1003423C8, &qword_100277878);
  v38 = *(v5 - 8);
  v39 = v5;
  __chkstk_darwin(v5);
  v37 = &v31 - v6;
  v7 = sub_100035D04(&qword_1003423D0, &qword_100277880);
  v35 = *(v7 - 8);
  v36 = v7;
  __chkstk_darwin(v7);
  v34 = &v31 - v8;
  v9 = sub_100035D04(&qword_1003423D8, &qword_100277888);
  v32 = *(v9 - 8);
  v33 = v9;
  __chkstk_darwin(v9);
  v31 = &v31 - v10;
  v11 = sub_100035D04(&qword_1003423E0, &qword_100277890);
  v44 = *(v11 - 8);
  __chkstk_darwin(v11);
  v13 = &v31 - v12;
  v14 = sub_100035D04(&qword_1003423E8, &qword_100277898);
  v15 = *(v14 - 8);
  __chkstk_darwin(v14);
  v17 = &v31 - v16;
  v18 = sub_100035D04(&qword_1003423F0, &qword_1002778A0);
  v45 = *(v18 - 8);
  v46 = v18;
  __chkstk_darwin(v18);
  v20 = &v31 - v19;
  sub_10000EBC0(a1, a1[3]);
  sub_1000C995C();
  v21 = v47;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v21 > 1)
  {
    switch(v21)
    {
      case 2:
        v50 = 2;
        sub_1000C9AAC();
        v22 = v31;
        v23 = v46;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v32;
        v24 = v33;
        goto LABEL_11;
      case 3:
        v51 = 3;
        sub_1000C9A58();
        v22 = v34;
        v23 = v46;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v35;
        v24 = v36;
        goto LABEL_11;
      case 4:
        v52 = 4;
        sub_1000C9A04();
        v22 = v37;
        v23 = v46;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v25 = v38;
        v24 = v39;
LABEL_11:
        (*(v25 + 8))(v22, v24);
        return (*(v45 + 8))(v20, v23);
    }

LABEL_15:
    v53 = 5;
    sub_1000C99B0();
    v28 = v40;
    v29 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v30 = v43;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v41 + 8))(v28, v30);
    return (*(v45 + 8))(v20, v29);
  }

  v26 = v44;
  if (!v21)
  {
    v48 = 0;
    sub_1000C9B54();
    v23 = v46;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v15 + 8))(v17, v14);
    return (*(v45 + 8))(v20, v23);
  }

  if (v21 != 1)
  {
    goto LABEL_15;
  }

  v49 = 1;
  sub_1000C9B00();
  v23 = v46;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v26 + 8))(v13, v11);
  return (*(v45 + 8))(v20, v23);
}

uint64_t sub_1000C8F14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1000C8F9C(uint64_t a1)
{
  v2 = sub_1000C99B0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C8FD8(uint64_t a1)
{
  v2 = sub_1000C99B0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9014()
{
  v1 = *v0;
  v2 = 0x656D697465636166;
  v3 = 0x746E6F43786F7270;
  v4 = 0x697261666173;
  if (v1 != 4)
  {
    v4 = 0x4449656C646E7562;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x636973756DLL;
  if (v1 != 1)
  {
    v5 = 0x6979616C50776F6ELL;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000C90D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000C9BA8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000C910C(uint64_t a1)
{
  v2 = sub_1000C995C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9148(uint64_t a1)
{
  v2 = sub_1000C995C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9184(uint64_t a1)
{
  v2 = sub_1000C9B54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C91C0(uint64_t a1)
{
  v2 = sub_1000C9B54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C91FC(uint64_t a1)
{
  v2 = sub_1000C9B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9238(uint64_t a1)
{
  v2 = sub_1000C9B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9274(uint64_t a1)
{
  v2 = sub_1000C9AAC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C92B0(uint64_t a1)
{
  v2 = sub_1000C9AAC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C92EC(uint64_t a1)
{
  v2 = sub_1000C9A58();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C9328(uint64_t a1)
{
  v2 = sub_1000C9A58();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C9364(uint64_t a1)
{
  v2 = sub_1000C9A04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C93A0(uint64_t a1)
{
  v2 = sub_1000C9A04();

  return CodingKey.debugDescription.getter(a1, v2);
}

char *sub_1000C93DC@<X0>(char **a1@<X8>, void *a2@<X0>)
{
  result = sub_1000C9DAC(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_1000C9424()
{
  v1 = *v0;
  v2 = v0[1];
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0x656D695465636146;
      goto LABEL_13;
    }

    if (v2 == 1)
    {
      v3 = 0x636973754DLL;
      goto LABEL_13;
    }

LABEL_12:
    v3 = *v0;
    goto LABEL_13;
  }

  if (v2 == 2)
  {
    v3 = 0x79616C5020776F4ELL;
    goto LABEL_13;
  }

  if (v2 == 3)
  {
    v3 = 0x746E6F43786F7250;
    goto LABEL_13;
  }

  if (v2 != 4)
  {
    goto LABEL_12;
  }

  v3 = 0x697261666153;
LABEL_13:
  sub_10009D534(v1, v2);
  return v3;
}

uint64_t sub_1000C9518(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1000C9530(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 16))
  {
    return (*a1 + 2147483643);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000C9588(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 4;
    }
  }

  return result;
}

void *sub_1000C95D8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

unint64_t sub_1000C960C()
{
  result = qword_1003423B8;
  if (!qword_1003423B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003423B8);
  }

  return result;
}

uint64_t sub_1000C9660(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1];
  if (v5 <= 1)
  {
    if (!v5)
    {
      return !v6;
    }

    if (v5 == 1)
    {
      return v6 == 1;
    }
  }

  else
  {
    switch(v5)
    {
      case 2:
        return v6 == 2;
      case 3:
        return v6 == 3;
      case 4:
        return v6 == 4;
    }
  }

  if (v6 < 5)
  {
    return 0;
  }

  if (v4 == *a2 && v5 == v6)
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

Swift::Int sub_1000C9708()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 <= 1)
  {
    if (!v1)
    {
      v2 = 0;
      goto LABEL_12;
    }

    if (v1 == 1)
    {
      v2 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(5uLL);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v1 == 2)
  {
    v2 = 2;
    goto LABEL_12;
  }

  if (v1 == 3)
  {
    v2 = 3;
    goto LABEL_12;
  }

  if (v1 != 4)
  {
    goto LABEL_14;
  }

  v2 = 4;
LABEL_12:
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_1000C97D4(uint64_t a1)
{
  v2 = *(v1 + 8);
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(v2)
    {
      case 2:
        v3 = 2;
        goto LABEL_12;
      case 3:
        v3 = 3;
        goto LABEL_12;
      case 4:
        v3 = 4;
LABEL_12:
        Hasher._combine(_:)(v3);
        return;
    }
  }

  Hasher._combine(_:)(5uLL);

  String.hash(into:)();
}

Swift::Int sub_1000C9894(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 <= 1)
  {
    if (!v2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (v2 == 1)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(5uLL);
    String.hash(into:)();
    return Hasher._finalize()();
  }

  if (v2 == 2)
  {
    v3 = 2;
    goto LABEL_12;
  }

  if (v2 == 3)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (v2 != 4)
  {
    goto LABEL_14;
  }

  v3 = 4;
LABEL_12:
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_1000C995C()
{
  result = qword_1003423F8;
  if (!qword_1003423F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003423F8);
  }

  return result;
}

unint64_t sub_1000C99B0()
{
  result = qword_100342400;
  if (!qword_100342400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342400);
  }

  return result;
}

unint64_t sub_1000C9A04()
{
  result = qword_100342408;
  if (!qword_100342408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342408);
  }

  return result;
}

unint64_t sub_1000C9A58()
{
  result = qword_100342410;
  if (!qword_100342410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342410);
  }

  return result;
}

unint64_t sub_1000C9AAC()
{
  result = qword_100342418;
  if (!qword_100342418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342418);
  }

  return result;
}

unint64_t sub_1000C9B00()
{
  result = qword_100342420;
  if (!qword_100342420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342420);
  }

  return result;
}

unint64_t sub_1000C9B54()
{
  result = qword_100342428;
  if (!qword_100342428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342428);
  }

  return result;
}

uint64_t sub_1000C9BA8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656D697465636166 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636973756DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6979616C50776F6ELL && a2 == 0xEA0000000000676ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E6F43786F7270 && a2 == 0xEF6F6D65446C6F72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x697261666173 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

char *sub_1000C9DAC(void *a1)
{
  v44 = sub_100035D04(&qword_100342430, &qword_1002778A8);
  v46 = *(v44 - 8);
  __chkstk_darwin(v44);
  v47 = &v34 - v2;
  v45 = sub_100035D04(&qword_100342438, &qword_1002778B0);
  v43 = *(v45 - 8);
  __chkstk_darwin(v45);
  v50 = &v34 - v3;
  v42 = sub_100035D04(&qword_100342440, &qword_1002778B8);
  v39 = *(v42 - 8);
  __chkstk_darwin(v42);
  v49 = &v34 - v4;
  v5 = sub_100035D04(&qword_100342448, &qword_1002778C0);
  v40 = *(v5 - 8);
  v41 = v5;
  __chkstk_darwin(v5);
  v48 = &v34 - v6;
  v7 = sub_100035D04(&qword_100342450, &qword_1002778C8);
  v37 = *(v7 - 8);
  v38 = v7;
  __chkstk_darwin(v7);
  v9 = &v34 - v8;
  v10 = sub_100035D04(&qword_100342458, &qword_1002778D0);
  v36 = *(v10 - 8);
  __chkstk_darwin(v10);
  v12 = &v34 - v11;
  v13 = sub_100035D04(&qword_100342460, &unk_1002778D8);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = &v34 - v15;
  v17 = a1[3];
  v52 = a1;
  sub_10000EBC0(a1, v17);
  sub_1000C995C();
  v18 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v19 = v12;
    v34 = v10;
    v35 = v9;
    v20 = v48;
    v21 = v49;
    v22 = v50;
    v51 = v14;
    v23 = KeyedDecodingContainer.allKeys.getter();
    v24 = (2 * *(v23 + 16)) | 1;
    v53 = v23;
    v54 = v23 + 32;
    v55 = 0;
    v56 = v24;
    v25 = sub_100218010();
    if (v25 == 6 || v55 != v56 >> 1)
    {
      v12 = type metadata accessor for DecodingError();
      swift_allocError();
      v29 = v28;
      sub_100035D04(&qword_10033EA78, &qword_100275A60);
      *v29 = &type metadata for LaunchAppService.App;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v12 - 1) + 104))(v29, enum case for DecodingError.typeMismatch(_:), v12);
      swift_willThrow();
      (*(v51 + 8))(v16, v13);
      swift_unknownObjectRelease();
    }

    else if (v25 > 2u)
    {
      v31 = v51;
      if (v25 == 3)
      {
        v57 = 3;
        sub_1000C9A58();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v39 + 8))(v21, v42);
        (*(v31 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }

      else if (v25 == 4)
      {
        v57 = 4;
        sub_1000C9A04();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v43 + 8))(v22, v45);
        (*(v31 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }

      else
      {
        v57 = 5;
        sub_1000C99B0();
        v32 = v47;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v33 = v44;
        v12 = KeyedDecodingContainer.decode(_:forKey:)();
        (*(v46 + 8))(v32, v33);
        (*(v31 + 8))(v16, v13);
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v26 = v51;
      if (v25)
      {
        if (v25 == 1)
        {
          v57 = 1;
          sub_1000C9B00();
          v27 = v35;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v37 + 8))(v27, v38);
        }

        else
        {
          v57 = 2;
          sub_1000C9AAC();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v40 + 8))(v20, v41);
        }

        (*(v26 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }

      else
      {
        v57 = 0;
        sub_1000C9B54();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v36 + 8))(v19, v34);
        (*(v26 + 8))(v16, v13);
        swift_unknownObjectRelease();
        v12 = 0;
      }
    }
  }

  sub_10000903C(v52);
  return v12;
}

unint64_t sub_1000CA75C()
{
  result = qword_100342468;
  if (!qword_100342468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342468);
  }

  return result;
}

unint64_t sub_1000CA7B4()
{
  result = qword_100342470;
  if (!qword_100342470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342470);
  }

  return result;
}

unint64_t sub_1000CA80C()
{
  result = qword_100342478;
  if (!qword_100342478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342478);
  }

  return result;
}

unint64_t sub_1000CA864()
{
  result = qword_100342480;
  if (!qword_100342480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342480);
  }

  return result;
}

unint64_t sub_1000CA8BC()
{
  result = qword_100342488;
  if (!qword_100342488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342488);
  }

  return result;
}

unint64_t sub_1000CA914()
{
  result = qword_100342490;
  if (!qword_100342490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342490);
  }

  return result;
}

unint64_t sub_1000CA96C()
{
  result = qword_100342498;
  if (!qword_100342498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342498);
  }

  return result;
}

unint64_t sub_1000CA9C4()
{
  result = qword_1003424A0;
  if (!qword_1003424A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424A0);
  }

  return result;
}

unint64_t sub_1000CAA1C()
{
  result = qword_1003424A8;
  if (!qword_1003424A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424A8);
  }

  return result;
}

unint64_t sub_1000CAA74()
{
  result = qword_1003424B0;
  if (!qword_1003424B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424B0);
  }

  return result;
}

unint64_t sub_1000CAACC()
{
  result = qword_1003424B8;
  if (!qword_1003424B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424B8);
  }

  return result;
}

unint64_t sub_1000CAB24()
{
  result = qword_1003424C0;
  if (!qword_1003424C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424C0);
  }

  return result;
}

unint64_t sub_1000CAB7C()
{
  result = qword_1003424C8;
  if (!qword_1003424C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424C8);
  }

  return result;
}

unint64_t sub_1000CABD4()
{
  result = qword_1003424D0;
  if (!qword_1003424D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424D0);
  }

  return result;
}

unint64_t sub_1000CAC2C()
{
  result = qword_1003424D8;
  if (!qword_1003424D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424D8);
  }

  return result;
}

unint64_t sub_1000CAC84()
{
  result = qword_1003424E0;
  if (!qword_1003424E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003424E0);
  }

  return result;
}

unint64_t sub_1000CACF8@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CB020(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CADE4()
{
  v1 = *v0;
  v2 = 1701602409;
  v3 = 0x6F69746163756465;
  v4 = 1953393000;
  if (v1 != 3)
  {
    v4 = 1819047270;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D726177657270;
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

unint64_t sub_1000CAE9C@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000CB030(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000CAF88()
{
  v1 = 1701602409;
  v2 = 1953393000;
  if (*v0 != 2)
  {
    v2 = 1819047270;
  }

  if (*v0)
  {
    v1 = 0x6F69746163756465;
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

unint64_t sub_1000CB020(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_1000CB030(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t sub_1000CB040()
{
  result = qword_100342508;
  if (!qword_100342508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342508);
  }

  return result;
}

unint64_t sub_1000CB094()
{
  result = qword_100342510;
  if (!qword_100342510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342510);
  }

  return result;
}

id sub_1000CB104(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = __chkstk_darwin(v5);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v23 - v10;
  *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v12 = &v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = type metadata accessor for BannerViewControllerBase(0);
  v25 = v13;
  sub_100035D04(&qword_100342570, &qword_1002782D0);
  v14 = String.init<A>(describing:)();
  v15 = &v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_className];
  *v15 = v14;
  v15[1] = v16;

  Logger.init(subsystem:category:)();
  (*(v6 + 32))(&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log], v11, v5);
  v24.receiver = v2;
  v24.super_class = v13;
  v17 = objc_msgSendSuper2(&v24, "initWithNibName:bundle:", 0, 0);
  (*(v6 + 16))(v9, v17 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log, v5);
  v18 = v17;
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "Init", v21, 2u);
  }

  (*(v6 + 8))(v9, v5);
  return v18;
}

id sub_1000CB400()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_log, v2);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Deinit", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for BannerViewControllerBase(0);
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

void sub_1000CB70C(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD00000000000001FLL, 0x8000000100298670, v27);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v8 = [a1 requestIdentifier];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v12 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_10:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = v17;
        *v16 = 136315138;
        v18 = [a1 requestIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v27[0] = v20;
        v27[1] = v22;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v23 = String.init<A>(describing:)();
        v25 = sub_100017494(v23, v24, &v28);

        *(v16 + 4) = v25;
        _os_log_impl(&_mh_execute_header, oslog, v15, "### Unrecognized requestID %s", v16, 0xCu);
        sub_10000903C(v17);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 3uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_1000CBA70(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000002DLL, 0x8000000100298640, v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100017494(v5, v7, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s reason=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v11 = [a1 requestIdentifier];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v15 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 2);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000CBE90(void *a1)
{
  v2 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v27[0] = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD000000000000020, 0x8000000100298610, v27);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v8 = [a1 requestIdentifier];
  if (!v8)
  {
    goto LABEL_10;
  }

  v9 = v8;
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  if (v10 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v12 == *&v2[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
LABEL_10:
      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v15 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v28 = v17;
        *v16 = 136315138;
        v18 = [a1 requestIdentifier];
        if (v18)
        {
          v19 = v18;
          v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v22 = v21;
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v27[0] = v20;
        v27[1] = v22;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v23 = String.init<A>(describing:)();
        v25 = sub_100017494(v23, v24, &v28);

        *(v16 + 4) = v25;
        _os_log_impl(&_mh_execute_header, oslog, v15, "### Unrecognized requestID %s", v16, 0xCu);
        sub_10000903C(v17);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v2, 2uLL, 0, 3);

    swift_unknownObjectRelease();
  }
}

void sub_1000CC1F4(void *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t))
{
  swift_unknownObjectRetain();
  v7 = a1;
  a4(a3);
  swift_unknownObjectRelease();
}

void sub_1000CC26C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985E0, v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100017494(v5, v7, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s reason=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v11 = [a1 requestIdentifier];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v15 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 1);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000CC68C(void *a1, uint64_t a2)
{
  v3 = v2;
  if (a2)
  {
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;
  }

  else
  {
    v7 = 0xE700000000000000;
    v5 = 0x6E776F6E6B6E75;
  }

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v30[0] = swift_slowAlloc();
    *v10 = 136315394;
    *(v10 + 4) = sub_100017494(0xD00000000000002ELL, 0x80000001002985B0, v30);
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_100017494(v5, v7, v30);
    _os_log_impl(&_mh_execute_header, v8, v9, "%s reason=%s", v10, 0x16u);
    swift_arrayDestroy();
  }

  if (!a1)
  {
    __break(1u);
    return;
  }

  v11 = [a1 requestIdentifier];
  if (!v11)
  {
    goto LABEL_13;
  }

  v12 = v11;
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  if (v13 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID] && v15 == *&v3[OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID + 8])
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
LABEL_13:

      swift_unknownObjectRetain();
      oslog = Logger.logObject.getter();
      v18 = static os_log_type_t.error.getter();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(oslog, v18))
      {
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        v31 = v20;
        *v19 = 136315138;
        v21 = [a1 requestIdentifier];
        if (v21)
        {
          v22 = v21;
          v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v25 = v24;
        }

        else
        {
          v23 = 0;
          v25 = 0;
        }

        v30[0] = v23;
        v30[1] = v25;
        sub_100035D04(&qword_10033A238, &qword_10027D3E0);
        v26 = String.init<A>(describing:)();
        v28 = sub_100017494(v26, v27, &v31);

        *(v19 + 4) = v28;
        _os_log_impl(&_mh_execute_header, oslog, v18, "### Unrecognized requestID %s", v19, 0xCu);
        sub_10000903C(v20);
      }

      else
      {
      }

      return;
    }
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_1001E7C4C(v3, v5, v7, 0);

    swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_1000CCAAC(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, void *))
{
  swift_unknownObjectRetain();
  v9 = a4;
  v10 = a1;
  a5(a3, a4);
  swift_unknownObjectRelease();
}

void sub_1000CCB58(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{
  swift_unknownObjectRetain();
  v6 = a1;
  sub_1000CCE24(a4);
  swift_unknownObjectRelease();
}

uint64_t type metadata accessor for BannerViewControllerBase(uint64_t a1)
{
  result = qword_100342560;
  if (!qword_100342560)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000CCC94()
{
  _StringGuts.grow(_:)(17);

  String.append(_:)(*(v0 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_className));
  v1._countAndFlagsBits = 0x7473657571657220;
  v1._object = 0xEB000000003D4449;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + OBJC_IVAR____TtC17proximitycontrold24BannerViewControllerBase_requestID));
  v2._countAndFlagsBits = 62;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  return 60;
}

uint64_t sub_1000CCD7C(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

void sub_1000CCE24(const char *a1)
{
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v2, a1, v3, 2u);
  }
}

uint64_t sub_1000CCEF4(uint64_t a1, uint64_t a2)
{
  v8[3] = a1;
  v5 = sub_10000F798(v8);
  (*(*(a1 - 8) + 16))(v5, v2, a1);
  v6 = sub_1000CCFC4(v8, 2, a1, a2);
  sub_10000903C(v8);
  return v6;
}

uint64_t sub_1000CCFC4(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2 == 2)
  {
    v6 = a1;
    v7 = (*(a4 + 16))(a3, a4);
    a1 = v6;
    if ((v7 & 1) == 0)
    {
LABEL_3:

      return sub_1000CD06C(a1, a3, a4);
    }
  }

  else if ((a2 & 1) == 0)
  {
    goto LABEL_3;
  }

  return sub_1000CD24C(a1, a3, a4);
}

uint64_t sub_1000CD06C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_1000CD6AC(a1, a2, a3);
  v4 = v3[2];
  if (v4)
  {
    sub_1000CDF40(0, v4, 0);
    v5 = (v3 + 7);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v20 = *(v5 - 3);
      v22 = *(v5 - 2);
      swift_bridgeObjectRetain_n();

      v8._countAndFlagsBits = 8250;
      v8._object = 0xE200000000000000;
      String.append(_:)(v8);
      v9._countAndFlagsBits = v6;
      v9._object = v7;
      String.append(_:)(v9);

      v11 = _swiftEmptyArrayStorage[2];
      v10 = _swiftEmptyArrayStorage[3];
      if (v11 >= v10 >> 1)
      {
        sub_1000CDF40((v10 > 1), v11 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v11 + 1;
      v12 = &_swiftEmptyArrayStorage[2 * v11];
      v12[4] = v20;
      v12[5] = v22;
      v5 += 4;
      --v4;
    }

    while (v4);
  }

  swift_getMetatypeMetadata();
  v21 = String.init<A>(describing:)();
  v13._countAndFlagsBits = 40;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10001CAF4();
  v14 = BidirectionalCollection<>.joined(separator:)();
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  String.append(_:)(v17);

  v18._countAndFlagsBits = 41;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  return v21;
}

uint64_t sub_1000CD24C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v56._countAndFlagsBits = a2;
  swift_getMetatypeMetadata();
  v6 = String.init<A>(describing:)();
  v8 = v7;
  v54 = v6;
  v55 = v7;
  sub_10000EBC0(a1, a1[3]);
  DynamicType = swift_getDynamicType();
  if (swift_isClassType())
  {
    v10 = DynamicType == 0;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    v11 = a1[3];
    v12 = sub_10000EBC0(a1, v11);
    v13 = *(v11 - 8);
    __chkstk_darwin(v12);
    v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v13 + 16))(v15);
    v16 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v13 + 8))(v15, v11);
    swift_unknownObjectRelease();
    v56._countAndFlagsBits = 0;
    v56._object = 0xE000000000000000;
    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v52 = v16;
    _print_unlocked<A, B>(_:_:)();
    String.append(_:)(v56);

    v6 = v54;
    v8 = v55;
  }

  v56._countAndFlagsBits = 60;
  v56._object = 0xE100000000000000;
  v18._countAndFlagsBits = v6;
  v18._object = v8;
  String.append(_:)(v18);

  v19._countAndFlagsBits = 62;
  v19._object = 0xE100000000000000;
  String.append(_:)(v19);

  countAndFlagsBits = v56._countAndFlagsBits;
  object = v56._object;
  v22 = sub_1000CD6AC(a1, v4, a3);
  v23 = v22[2];
  if (v23)
  {
    v41 = countAndFlagsBits;
    v42 = object;
    v43 = v4;
    v44 = a3;
    v56._countAndFlagsBits = _swiftEmptyArrayStorage;
    sub_1000CDF20(0, v23, 0);
    v24 = v56._countAndFlagsBits;
    v40[1] = v22;
    v25 = v22 + 7;
    v45 = xmmword_1002725A0;
    do
    {
      v26 = *(v25 - 3);
      v27 = *(v25 - 2);
      v28 = *(v25 - 1);
      v29 = *v25;
      sub_100035D04(&unk_10033D890, &qword_100275EB0);
      v30 = swift_allocObject();
      *(v30 + 16) = v45;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      *(v30 + 48) = v28;
      *(v30 + 56) = v29;
      v56._countAndFlagsBits = v24;
      v31 = v24[2];
      v32 = v24[3];

      if (v31 >= v32 >> 1)
      {
        sub_1000CDF20((v32 > 1), v31 + 1, 1);
        v24 = v56._countAndFlagsBits;
      }

      v24[2] = v31 + 1;
      v24[v31 + 4] = v30;
      v25 += 4;
      --v23;
    }

    while (v23);

    v4 = v43;
    a3 = v44;
    countAndFlagsBits = v41;
    object = v42;
  }

  else
  {

    v24 = _swiftEmptyArrayStorage;
  }

  v56._countAndFlagsBits = countAndFlagsBits;
  v56._object = object;
  v57 = 0;
  v58 = v24;
  v59 = 0;
  v33 = (*(a3 + 24))(v4, a3);
  v35 = sub_1000B1898(v33, v34, 0, 1);
  v37 = v36;

  v50 = v35;
  v51 = v37;
  v48 = 10;
  v49 = 0xE100000000000000;
  v52 = 10;
  v53 = 0xE100000000000000;
  v38._countAndFlagsBits = (*(a3 + 32))(v4, a3);
  String.append(_:)(v38);

  v46 = v52;
  v47 = v53;
  sub_100058C0C();
  sub_100058C60();
  RangeReplaceableCollection<>.replacing<A, B>(_:with:maxReplacements:)();

  return v52;
}

void *sub_1000CD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20 = a3;
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001766C(a1, v26);
  Mirror.init(reflecting:)();
  v9 = Mirror.children.getter();
  (*(v6 + 8))(v8, v5);
  v19 = v9;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v27 + 1))
  {
    v10 = _swiftEmptyArrayStorage;
    do
    {
      v25[0] = v26[0];
      v25[1] = v26[1];
      v25[2] = v27;
      sub_1000CD8FC(v25, a2, v20, &v21);
      sub_1000097E8(v25, &qword_10033BDB0, &unk_1002726E0);
      v12 = v22;
      if (v22)
      {
        v13 = v21;
        v14 = v23;
        v15 = v24;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1000AF2E4(0, v10[2] + 1, 1, v10);
        }

        v17 = v10[2];
        v16 = v10[3];
        if (v17 >= v16 >> 1)
        {
          v10 = sub_1000AF2E4((v16 > 1), v17 + 1, 1, v10);
        }

        v10[2] = v17 + 1;
        v11 = &v10[4 * v17];
        v11[4] = v13;
        v11[5] = v12;
        v11[6] = v14;
        v11[7] = v15;
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v27 + 1));
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  return v10;
}

double sub_1000CD8FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_100058CB4(a1, &v22);
  if (*(&v22 + 1))
  {
    v19[0] = v22;
    sub_100058C60();
    Collection<>.trimmingPrefix<A>(_:)();

    sub_10000903C(v23);
    v8 = static String._fromSubstring(_:)();
    v10 = v9;
  }

  else
  {
    sub_10000903C(v23);
    v10 = 0xE100000000000000;
    v8 = 63;
  }

  if ((*(a3 + 64))(v8, v10, a2, a3))
  {
    if (((*(a3 + 48))(a2, a3) & 1) == 0)
    {

      v10 = 0xE100000000000000;
      v8 = 45;
    }

    String.lowercased()();
    v11._countAndFlagsBits = 0x736B736174;
    v11._object = 0xE500000000000000;
    v12 = String.hasSuffix(_:)(v11);

    if (v12)
    {
      sub_100058CB4(a1, &v22);

      sub_100035D04(&qword_10033BDB8, &unk_100278370);
      if (swift_dynamicCast())
      {
        sub_10000E754(v19, v21);
        *&v22 = 40;
        *(&v22 + 1) = 0xE100000000000000;
        sub_10000EBC0(v21, v21[3]);
        *&v19[0] = dispatch thunk of Collection.count.getter();
        v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v13);

        v14._countAndFlagsBits = 41;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        v15 = v22;
        sub_10000903C(v21);
        v17 = *(&v15 + 1);
        v18 = v15;
LABEL_12:
        *a4 = v8;
        a4[1] = v10;
        a4[2] = v18;
        a4[3] = v17;
        return result;
      }

      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_1000097E8(v19, &qword_10033BDC0, &unk_1002726F0);
    }

    v18 = sub_1000CDBE4(a1 + 16, a2, &type metadata for Any + 8, a3);
    if (v17)
    {
      goto LABEL_12;
    }
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

uint64_t sub_1000CDBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = __chkstk_darwin(a1);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v24 - v12;
  if ((*(v14 + 56))(v15, v14))
  {
    v16 = *(v8 + 16);
    v16(v13, a1, a3);
    sub_100035D04(&qword_100342578, &qword_100278398);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v26, v29);
      v17 = v30;
      v18 = v31;
      sub_10000EBC0(v29, v30);
      v19 = sub_10013FD60(v17, v18);
LABEL_9:
      sub_10000903C(v29);
      return v19;
    }

    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1000097E8(&v26, &qword_100342580, &unk_1002783A0);
    v16(v11, a1, a3);
  }

  else
  {
    (*(v8 + 16))(v11, a1, a3);
  }

  sub_100035D04(&qword_10033BDC8, &unk_100278380);
  if (!swift_dynamicCast())
  {
    v28 = 0;
    v26 = 0u;
    v27 = 0u;
    sub_1000097E8(&v26, &qword_10033BDD0, &unk_100272700);
    v29[0] = 0;
    v29[1] = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return v29[0];
  }

  sub_10000E754(&v26, v29);
  v20 = v30;
  v21 = v31;
  sub_10000EBC0(v29, v30);
  (*(v21 + 24))(&v24, v20, v21);
  if (v25)
  {
    sub_1000516B4(&v24, &v26);
    *&v24 = 0;
    *(&v24 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v19 = v24;
    sub_10000903C(&v26);
    goto LABEL_9;
  }

  sub_1000097E8(&v24, &unk_100339680, &qword_100278390);
  v22 = (*(a4 + 40))(a2, a4);
  sub_10000903C(v29);
  if (v22)
  {
    return 7104878;
  }

  else
  {
    return 0;
  }
}

char *sub_1000CDF20(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE1AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDF40(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE2B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CDF60(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE3C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDF80(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE50C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDFA0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDFC0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CDFE0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CEA5C(a1, a2, a3, *v3, &qword_100342588, &unk_1002783B0, &qword_1003397D0, &qword_1002729A0);
  *v3 = result;
  return result;
}

char *sub_1000CE020(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CE040(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CE914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CE060(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CEB90(a1, a2, a3, *v3, &qword_1003425A0, &qword_100278410, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_1000CE0A4(void *a1, int64_t a2, char a3)
{
  result = sub_100012DB8(a1, a2, a3, *v3, &qword_100342590, &qword_1002783C8, &qword_10033B530, &unk_1002783D0);
  *v3 = result;
  return result;
}

void *sub_1000CE0E4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CEA5C(a1, a2, a3, *v3, &qword_1003425B0, &qword_100278420, &qword_1003425B8, &qword_100278428);
  *v3 = result;
  return result;
}

void *sub_1000CE124(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CEB90(a1, a2, a3, *v3, &qword_100342598, &qword_1002783F8, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

void *sub_1000CE168(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1000CEB90(a1, a2, a3, *v3, &qword_1003425A8, &qword_100278418, &type metadata accessor for DispatchTimeInterval);
  *v3 = result;
  return result;
}

char *sub_1000CE1AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033EFD0, &qword_1002783C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CE2B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_1000CE3C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033DE68, &qword_100274150);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CE50C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F000, &qword_1002783F0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000CE608(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F008, &qword_100275748);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1000CE704(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F050, &qword_100275790);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_1000CE808(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033EFC8, &qword_100275738);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CE914(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_1003425C0, &qword_100278430);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(&qword_1003425C8, &qword_100278438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CEA5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_100035D04(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100035D04(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1000CEB90(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100035D04(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

Swift::UInt64 sub_1000CED6C()
{
  if (*(v0 + 32) & 1) != 0 || (*(v0 + 48))
  {
    if (*(v0 + 16))
    {
      return 0x646570706F7473;
    }

    else
    {
      return 0x676E696E6E7572;
    }
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    result = v3 - v2;
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      v4 = UpTicksToSecondsF(_:)(result);
      return sub_100110CA8(v4);
    }
  }

  return result;
}

uint64_t sub_1000CEE28()
{
  if (*v0)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x676E696E6E7572;
  }
}

unint64_t sub_1000CEE60()
{
  result = qword_1003426E8;
  if (!qword_1003426E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003426E8);
  }

  return result;
}

__n128 sub_1000CEED8(uint64_t a1, __int128 *a2)
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

uint64_t sub_1000CEEFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CEF1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 112) = v3;
  return result;
}