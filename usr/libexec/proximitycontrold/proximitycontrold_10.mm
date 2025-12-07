void sub_1000E8A6C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
LABEL_6:
    if (!a4)
    {
      return;
    }

    goto LABEL_7;
  }

  swift_errorRetain();
  if (qword_100338F60 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_100343250);
  (*(v10 + 16))(v12, a3, v9);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v27 = a5;
    v17 = v16;
    v18 = swift_slowAlloc();
    v25 = v18;
    v26 = swift_slowAlloc();
    v28 = v26;
    *v17 = 138412546;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 4) = v19;
    *v18 = v19;
    *(v17 + 12) = 2080;
    sub_1000E902C(&qword_100343268, &type metadata accessor for URL, &protocol conformance descriptor for URL);
    v20 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = a4;
    v23 = v22;
    (*(v10 + 8))(v12, v9);
    v24 = sub_100017494(v20, v23, &v28);
    a4 = v21;

    *(v17 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v14, v15, "### Failed to open TTR with error: %@, URL=%s", v17, 0x16u);
    sub_1000097E8(v25, &qword_100339940, &unk_100272C50);

    sub_10000903C(v26);

    goto LABEL_6;
  }

  (*(v10 + 8))(v12, v9);
  if (!a4)
  {
    return;
  }

LABEL_7:
  a4(a2);
}

uint64_t sub_1000E8DA0(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  if (a2)
  {
    v5 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v5 = 0;
  }

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1000E8E50(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033A238, &qword_10027D3E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000E8F28(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for URL() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8);
  v8 = *v7;
  v9 = *(v7 + 8);

  sub_1000E8A6C(a1, a2, v2 + v6, v8, v9);
}

unint64_t sub_1000E8FD8()
{
  result = qword_100343280;
  if (!qword_100343280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343280);
  }

  return result;
}

uint64_t sub_1000E902C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000E9074()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343290);
  sub_100003078(v0, qword_100343290);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000E90F4(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v3;
}

BOOL sub_1000E9168(uint64_t a1, unint64_t a2)
{

  CurrentValueSubject.value.getter();
  v4 = v17;
  if (v17)
  {
  }

  else
  {
    CurrentValueSubject.value.getter();

    v4 = v18[0];
  }

  v5 = (v4 + 40);
  v6 = -*(v4 + 16);
  v7 = -1;
  do
  {
    v8 = v6 + v7;
    if (v6 + v7 == -1)
    {
      break;
    }

    if (++v7 >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_13;
    }

    v9 = v5 + 2;
    v10 = *v5;
    v18[0] = *(v5 - 1);
    v18[1] = v10;
    sub_10001369C();
    v11 = StringProtocol.contains<A>(_:)();
    v5 = v9;
  }

  while ((v11 & 1) == 0);

  if (qword_100338F68 == -1)
  {
    goto LABEL_9;
  }

LABEL_13:
  swift_once();
LABEL_9:
  v12 = type metadata accessor for Logger();
  sub_100003078(v12, qword_100343290);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v15 = 136315650;
    *(v15 + 4) = sub_100017494(0xD000000000000019, 0x800000010029F820, v18);
    *(v15 + 12) = 2080;
    *(v15 + 14) = sub_100017494(a1, a2, v18);
    *(v15 + 22) = 1024;
    *(v15 + 24) = v8 != -1;
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: identifier=%s, %{BOOL}d", v15, 0x1Cu);
    swift_arrayDestroy();
  }

  return v8 != -1;
}

uint64_t sub_1000E93D4()
{

  v1 = OBJC_IVAR____TtC17proximitycontrold22FrontBoardMonitorState__orientation;
  v2 = sub_100035D04(&qword_100343498, qword_100279210);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FrontBoardMonitorState(uint64_t a1)
{
  result = qword_1003432D8;
  if (!qword_1003432D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000E94D8(uint64_t a1)
{
  sub_1000E9578(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1000E9578(uint64_t a1)
{
  if (!qword_1003432E8)
  {
    type metadata accessor for BSInterfaceOrientation(255);
    v1 = type metadata accessor for Published();
    if (!v2)
    {
      atomic_store(v1, &qword_1003432E8);
    }
  }
}

void sub_1000E95D0()
{
  type metadata accessor for FrontBoardMonitorState(0);
  v0 = swift_allocObject();
  sub_100035D04(&qword_100343480, &unk_1002791B8);
  swift_allocObject();
  *(v0 + 16) = sub_10002B750(_swiftEmptyArrayStorage, 0, 0, 0, 0, 0);
  type metadata accessor for BSInterfaceOrientation(0);
  Published.init(initialValue:)();
  type metadata accessor for FrontBoardMonitor();
  swift_allocObject();
  v1 = sub_1000EB68C(v0);

  qword_10038B100 = v1;
}

double sub_1000E96A8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v66 = *(v5 - 8);
  __chkstk_darwin(v5);
  v64 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = type metadata accessor for DispatchQoS();
  v63 = *(v65 - 8);
  __chkstk_darwin(v65);
  v62 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338F68 != -1)
  {
    goto LABEL_74;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_100343290);
    v9 = a2;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();

    v12 = os_log_type_enabled(v10, v11);
    v67 = v5;
    if (v12)
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136315138;
      if (a2)
      {
        v72 = v9;
        sub_100003118(0, &qword_100343490, FBSDisplayLayout_ptr);
        v15 = v9;
        v16 = String.init<A>(describing:)();
        v18 = v17;
      }

      else
      {
        v18 = 0xE300000000000000;
        v16 = 7104878;
      }

      v19 = sub_100017494(v16, v18, aBlock);

      *(v13 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v10, v11, "New layout: %s", v13, 0xCu);
      sub_10000903C(v14);
    }

    v20 = swift_allocObject();
    if (!a2 || (v21 = [v9 elements], sub_100003118(0, &qword_100343488, FBSDisplayLayoutElement_ptr), v22 = static Array._unconditionallyBridgeFromObjectiveC(_:)(), v21, *(v20 + 16) = v22, (objc_msgSend(v9, "backlightState") & 0xFFFFFFFFFFFFFFFELL) != 2))
    {
      *(v20 + 16) = _swiftEmptyArrayStorage;
    }

    v23 = 0;
    v24 = 0;
    v68 = v20;
    do
    {
      v26 = v23;
      v27 = &off_100300ED0 + 2 * v24;
      v28 = v27[4];
      a2 = v27[5];
      v5 = *(v20 + 16);
      v69 = v26;
      if (v5 >> 62)
      {
        v29 = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        v29 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v29)
      {
        v30 = 0;
        v70 = v5 & 0xFFFFFFFFFFFFFF8;
        v71 = v5 & 0xC000000000000001;
        while (1)
        {
          if (v71)
          {
            v31 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (v30 >= *(v70 + 16))
            {
              goto LABEL_71;
            }

            v31 = *(v5 + 8 * v30 + 32);
          }

          v32 = v31;
          v33 = v30 + 1;
          if (__OFADD__(v30, 1))
          {
            goto LABEL_70;
          }

          v34 = [v31 bundleIdentifier];
          if (!v34)
          {
            v34 = [v32 identifier];
          }

          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v37 = v36;

          if (v35 == v28 && v37 == a2)
          {
            break;
          }

          v39 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v39)
          {
            goto LABEL_32;
          }

          ++v30;
          if (v33 == v29)
          {
            goto LABEL_11;
          }
        }

LABEL_32:

        v20 = v68;
        v5 = *(v68 + 16);
        aBlock[0] = _swiftEmptyArrayStorage;
        if (v5 >> 62)
        {
          v40 = _CocoaArrayWrapper.endIndex.getter();
        }

        else
        {
          v40 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v40)
        {
          v41 = 0;
          while (1)
          {
            if ((v5 & 0xC000000000000001) != 0)
            {
              v42 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            }

            else
            {
              if (v41 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_69;
              }

              v42 = *(v5 + 8 * v41 + 32);
            }

            v43 = v42;
            v44 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              break;
            }

            a2 = &selRef_requestIdentifier;
            v45 = [v42 level];
            if (v45 >= [v32 level])
            {
              specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
              a2 = *(aBlock[0] + 16);
              specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
              specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
              specialized ContiguousArray._endMutation()();
            }

            else
            {
            }

            ++v41;
            if (v44 == v40)
            {
              v46 = aBlock[0];
              v20 = v68;
              goto LABEL_47;
            }
          }

          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
          goto LABEL_72;
        }

        v46 = _swiftEmptyArrayStorage;
LABEL_47:

        *(v20 + 16) = v46;
      }

      else
      {
LABEL_11:

        v20 = v68;
      }

      v25 = v69;

      v23 = 1;
      v24 = 1;
    }

    while ((v25 & 1) == 0);
    swift_arrayDestroy();
    a2 = *(v20 + 16);
    aBlock[0] = _swiftEmptyArrayStorage;
    v47 = a2 >> 62 ? _CocoaArrayWrapper.endIndex.getter() : *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v47)
    {
      break;
    }

    v48 = 0;
    while (1)
    {
      if ((a2 & 0xC000000000000001) != 0)
      {
        v49 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v48 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_73;
        }

        v49 = *(a2 + 8 * v48 + 32);
      }

      v50 = v49;
      v51 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if ([v49 layoutRole] == 5)
      {
      }

      else
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v5 = *(aBlock[0] + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      ++v48;
      if (v51 == v47)
      {
        v52 = aBlock[0];
        v20 = v68;
        goto LABEL_65;
      }
    }

LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    swift_once();
  }

  v52 = _swiftEmptyArrayStorage;
LABEL_65:

  *(v20 + 16) = v52;

  aBlock[0] = sub_1001282B8(v53);
  sub_1000EAAB8(aBlock);

  *(v20 + 16) = aBlock[0];

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v54 = swift_allocObject();
  v55 = v61;
  *(v54 + 16) = v20;
  *(v54 + 24) = v55;
  aBlock[4] = sub_1000EB960;
  aBlock[5] = v54;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307178;
  v56 = _Block_copy(aBlock);

  v57 = v62;
  static DispatchQoS.unspecified.getter();
  v72 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  v58 = v64;
  v59 = v67;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v56);
  (*(v66 + 8))(v58, v59);
  (*(v63 + 8))(v57, v65);

  return result;
}

void sub_1000E9FC4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  if (v3 >> 62)
  {
    v4 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = _swiftEmptyArrayStorage;
  if (v4)
  {
    v25 = _swiftEmptyArrayStorage;

    sub_1000CDF40(0, v4 & ~(v4 >> 63), 0);
    if (v4 < 0)
    {
      __break(1u);
      return;
    }

    v6 = 0;
    v5 = v25;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v7 = *(v3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = [v8 bundleIdentifier];
      if (!v9)
      {
        v9 = [v8 identifier];
      }

      v10 = v9;
      v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      v25 = v5;
      v15 = v5[2];
      v14 = v5[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000CDF40((v14 > 1), v15 + 1, 1);
        v5 = v25;
      }

      ++v6;
      v5[2] = v15 + 1;
      v16 = &v5[2 * v15];
      v16[4] = v11;
      v16[5] = v13;
    }

    while (v4 != v6);
  }

  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100343290);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v25 = v21;
    *v20 = 136315138;
    v22 = Array.description.getter();
    v24 = sub_100017494(v22, v23, &v25);

    *(v20 + 4) = v24;
    _os_log_impl(&_mh_execute_header, v18, v19, "New activeSceneIDs: %s", v20, 0xCu);
    sub_10000903C(v21);
  }

  sub_1001C12F0(v5);
}

void sub_1000EA2A8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, a3, a4);
}

double sub_1000EA348(void *a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  *(v12 + 24) = a2;
  aBlock[4] = sub_1000EB958;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307100;
  v13 = _Block_copy(aBlock);
  v14 = a1;

  static DispatchQoS.unspecified.getter();
  v16[1] = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);

  return result;
}

uint64_t sub_1000EA5F4(void *a1, uint64_t a2)
{
  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343290);
  v4 = a1;
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v7 = 136315138;
    [v4 orientation];
    v9 = BSInterfaceOrientationDescription();
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;

    v13 = sub_100017494(v10, v12, &v16);

    *(v7 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "Device orientation updated: %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v14 = [v4 orientation];
  swift_getKeyPath();
  swift_getKeyPath();
  v16 = v14;

  return static Published.subscript.setter();
}

uint64_t sub_1000EA7D8()
{
  v1 = v0;
  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343290);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  [*(v1 + 24) invalidate];
  [*(v1 + 16) invalidate];

  sub_1001C12F0(_swiftEmptyArrayStorage);

  swift_getKeyPath();
  swift_getKeyPath();

  static Published.subscript.setter();

  return v1;
}

uint64_t sub_1000EA96C()
{
  sub_1000EA7D8();

  return swift_deallocClassInstance();
}

void sub_1000EA9C4(void *a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a3 = v4;
}

uint64_t sub_1000EAA44(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000EAAB8(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100014BBC(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000EAB34(v6);
  return specialized ContiguousArray._endMutation()();
}

void sub_1000EAB34(uint64_t *a1)
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
        sub_100003118(0, &qword_100343488, FBSDisplayLayoutElement_ptr);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1000EAD40(v8, v9, a1, v4);
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
    sub_1000EAC48(0, v2, 1, a1);
  }
}

void sub_1000EAC48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 8 * a3 - 8;
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v17 = v7;
    v18 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = v8;
      v11 = v9;
      v12 = [v10 level];
      v13 = [v11 level];

      if (v12 >= v13)
      {
LABEL_4:
        ++v4;
        v6 = v18 + 8;
        v7 = v17 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v14 = *v6;
      v8 = *(v6 + 8);
      *v6 = v8;
      *(v6 + 8) = v14;
      v6 -= 8;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1000EAD40(id *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_90:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1001282A4(v8);
    }

    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      while (*a3)
      {
        v92 = v8;
        v8 = (v91 - 1);
        v93 = *&v92[16 * v91];
        v94 = *&v92[16 * v91 + 24];
        sub_1000EB3A8((*a3 + 8 * v93), (*a3 + 8 * *&v92[16 * v91 + 16]), (*a3 + 8 * v94), v7);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v94 < v93)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v92 = sub_1001282A4(v92);
        }

        if (v91 - 2 >= *(v92 + 2))
        {
          goto LABEL_116;
        }

        v95 = &v92[16 * v91];
        *v95 = v93;
        *(v95 + 1) = v94;
        sub_100128218(v91 - 1);
        v8 = v92;
        v91 = *(v92 + 2);
        if (v91 <= 1)
        {
          goto LABEL_100;
        }
      }

      goto LABEL_126;
    }

LABEL_100:

    return;
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7;
    v7 = (v7 + 1);
    if (v7 < v6)
    {
      v101 = v5;
      v97 = 8 * v9;
      v10 = (*a3 + 8 * v9);
      v12 = *v10;
      v11 = v10 + 2;
      v13 = *(*a3 + 8 * v7);
      v14 = v12;
      v106 = [v13 level];
      v104 = [v14 level];

      v99 = v9;
      v15 = v9 + 2;
      while (v6 != v15)
      {
        v16 = *(v11 - 1);
        v17 = *v11;
        v18 = v16;
        v19 = v8;
        v20 = [v17 level];
        v7 = [v18 level];

        v21 = v20 < v7;
        v8 = v19;
        v22 = !v21;
        ++v15;
        ++v11;
        if ((((v106 < v104) ^ v22) & 1) == 0)
        {
          v6 = v15 - 1;
          break;
        }
      }

      v9 = v99;
      v5 = v101;
      v23 = v97;
      if (v106 < v104)
      {
        if (v6 < v99)
        {
          goto LABEL_119;
        }

        if (v99 < v6)
        {
          v24 = 8 * v6 - 8;
          v25 = v6;
          v26 = v99;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_125;
              }

              v27 = *(v28 + v23);
              *(v28 + v23) = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v23 += 8;
          }

          while (v26 < v25);
        }
      }

      v7 = v6;
    }

    v29 = a3[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        v30 = v9 + a4;
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v30 >= v29)
        {
          v30 = a3[1];
        }

        if (v30 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_39:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1000AF9AC(0, *(v8 + 2) + 1, 1, v8);
    }

    v45 = *(v8 + 2);
    v44 = *(v8 + 3);
    v46 = v45 + 1;
    if (v45 >= v44 >> 1)
    {
      v8 = sub_1000AF9AC((v44 > 1), v45 + 1, 1, v8);
    }

    *(v8 + 2) = v46;
    v47 = &v8[16 * v45];
    *(v47 + 4) = v9;
    *(v47 + 5) = v7;
    v48 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v45)
    {
      while (1)
      {
        v49 = v46 - 1;
        if (v46 >= 4)
        {
          break;
        }

        if (v46 == 3)
        {
          v50 = *(v8 + 4);
          v51 = *(v8 + 5);
          v60 = __OFSUB__(v51, v50);
          v52 = v51 - v50;
          v53 = v60;
LABEL_59:
          if (v53)
          {
            goto LABEL_106;
          }

          v66 = &v8[16 * v46];
          v68 = *v66;
          v67 = *(v66 + 1);
          v69 = __OFSUB__(v67, v68);
          v70 = v67 - v68;
          v71 = v69;
          if (v69)
          {
            goto LABEL_109;
          }

          v72 = &v8[16 * v49 + 32];
          v74 = *v72;
          v73 = *(v72 + 1);
          v60 = __OFSUB__(v73, v74);
          v75 = v73 - v74;
          if (v60)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v70, v75))
          {
            goto LABEL_113;
          }

          if (v70 + v75 >= v52)
          {
            if (v52 < v75)
            {
              v49 = v46 - 2;
            }

            goto LABEL_80;
          }

          goto LABEL_73;
        }

        v76 = &v8[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v60 = __OFSUB__(v77, v78);
        v70 = v77 - v78;
        v71 = v60;
LABEL_73:
        if (v71)
        {
          goto LABEL_108;
        }

        v79 = &v8[16 * v49];
        v81 = *(v79 + 4);
        v80 = *(v79 + 5);
        v60 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v60)
        {
          goto LABEL_111;
        }

        if (v82 < v70)
        {
          goto LABEL_3;
        }

LABEL_80:
        v87 = v49 - 1;
        if (v49 - 1 >= v46)
        {
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v88 = *&v8[16 * v87 + 32];
        v89 = *&v8[16 * v49 + 40];
        sub_1000EB3A8((*a3 + 8 * v88), (*a3 + 8 * *&v8[16 * v49 + 32]), (*a3 + 8 * v89), v48);
        if (v5)
        {
          goto LABEL_100;
        }

        if (v89 < v88)
        {
          goto LABEL_102;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1001282A4(v8);
        }

        if (v87 >= *(v8 + 2))
        {
          goto LABEL_103;
        }

        v90 = &v8[16 * v87];
        *(v90 + 4) = v88;
        *(v90 + 5) = v89;
        sub_100128218(v49);
        v46 = *(v8 + 2);
        if (v46 <= 1)
        {
          goto LABEL_3;
        }
      }

      v54 = &v8[16 * v46 + 32];
      v55 = *(v54 - 64);
      v56 = *(v54 - 56);
      v60 = __OFSUB__(v56, v55);
      v57 = v56 - v55;
      if (v60)
      {
        goto LABEL_104;
      }

      v59 = *(v54 - 48);
      v58 = *(v54 - 40);
      v60 = __OFSUB__(v58, v59);
      v52 = v58 - v59;
      v53 = v60;
      if (v60)
      {
        goto LABEL_105;
      }

      v61 = &v8[16 * v46];
      v63 = *v61;
      v62 = *(v61 + 1);
      v60 = __OFSUB__(v62, v63);
      v64 = v62 - v63;
      if (v60)
      {
        goto LABEL_107;
      }

      v60 = __OFADD__(v52, v64);
      v65 = v52 + v64;
      if (v60)
      {
        goto LABEL_110;
      }

      if (v65 >= v57)
      {
        v83 = &v8[16 * v49 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v60 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v60)
        {
          goto LABEL_114;
        }

        if (v52 < v86)
        {
          v49 = v46 - 2;
        }

        goto LABEL_80;
      }

      goto LABEL_59;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_90;
    }
  }

  v98 = v8;
  v100 = v9;
  v102 = v5;
  v31 = *a3;
  v32 = *a3 + 8 * v7 - 8;
  v33 = v9 - v7;
  v105 = v30;
LABEL_32:
  v107 = v7;
  v34 = *(v31 + 8 * v7);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = v34;
    v39 = v37;
    v40 = [v38 level];
    v41 = [v39 level];

    if (v40 >= v41)
    {
LABEL_31:
      v7 = (v107 + 1);
      v32 += 8;
      --v33;
      if ((v107 + 1) != v105)
      {
        goto LABEL_32;
      }

      v7 = v105;
      v9 = v100;
      v5 = v102;
      v8 = v98;
      goto LABEL_39;
    }

    if (!v31)
    {
      break;
    }

    v42 = *v36;
    v34 = *(v36 + 8);
    *v36 = v34;
    *(v36 + 8) = v42;
    v36 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_31;
    }
  }

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
}

uint64_t sub_1000EB3A8(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    if (__src != a2 || &a2[v11] <= __src)
    {
      v23 = a2;
      v24 = __src;
      memmove(__src, a2, 8 * v11);
      __src = v24;
      a2 = v23;
    }

    v41 = __src;
    v14 = &__src[v11];
    if (v9 < 8)
    {
      v13 = __src;
    }

    else
    {
      v13 = __src;
      if (a2 > v5)
      {
        v38 = v5;
LABEL_27:
        v39 = a2;
        v25 = a2 - 1;
        --v4;
        v26 = v14;
        do
        {
          v27 = v14;
          v28 = v4 + 1;
          v29 = *(v26 - 1);
          v26 -= 8;
          v30 = v25;
          v31 = *v25;
          v32 = v29;
          v33 = v31;
          v34 = [v32 level];
          v35 = [v33 level];

          if (v34 < v35)
          {
            if (v28 != v39)
            {
              *v4 = *v30;
            }

            v13 = v41;
            v14 = v27;
            if (v27 <= v41 || (a2 = v30, v30 <= v38))
            {
              a2 = v30;
              goto LABEL_40;
            }

            goto LABEL_27;
          }

          if (v28 != v27)
          {
            *v4 = *v26;
          }

          --v4;
          v14 = v26;
          v13 = v41;
          v25 = v30;
        }

        while (v26 > v41);
        v14 = v26;
        a2 = v39;
      }
    }
  }

  else
  {
    v12 = a2;
    v13 = __src;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      memmove(__src, __dst, 8 * v8);
    }

    v14 = &v13[v8];
    if (v6 < 8)
    {
      a2 = v5;
    }

    else
    {
      v40 = &v13[v8];
      if (v12 < v4)
      {
        v15 = v12;
        while (1)
        {
          v16 = *v13;
          v17 = *v15;
          v18 = v16;
          v19 = [v17 level];
          v20 = [v18 level];

          if (v19 >= v20)
          {
            break;
          }

          v21 = v15;
          v22 = v5 == v15++;
          if (!v22)
          {
            goto LABEL_17;
          }

LABEL_18:
          ++v5;
          if (v13 >= v40 || v15 >= v4)
          {
            goto LABEL_20;
          }
        }

        v21 = v13;
        v22 = v5 == v13++;
        if (v22)
        {
          goto LABEL_18;
        }

LABEL_17:
        *v5 = *v21;
        goto LABEL_18;
      }

LABEL_20:
      a2 = v5;
      v14 = v40;
    }
  }

LABEL_40:
  v36 = v14 - v13 + (v14 - v13 < 0 ? 7uLL : 0);
  if (a2 != v13 || a2 >= (v13 + (v36 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, v13, 8 * (v36 >> 3));
  }

  return 1;
}

void *sub_1000EB68C(uint64_t a1)
{
  v2 = v1;
  v1[3] = [objc_allocWithZone(FBSOrientationObserver) init];
  if (qword_100338F68 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100343290);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Init", v7, 2u);
  }

  v2[4] = a1;
  v8 = objc_opt_self();

  v9 = [v8 configurationForDefaultMainDisplayMonitor];
  [v9 setNeedsUserInteractivePriority:1];
  v19 = sub_1000EB948;
  v20 = a1;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_1000EA2A8;
  v18 = &unk_100307088;
  v10 = _Block_copy(&v15);

  [v9 setTransitionHandler:v10];
  _Block_release(v10);
  v2[2] = [objc_opt_self() monitorWithConfiguration:v9];
  v11 = v2[3];
  v19 = sub_1000EB950;
  v20 = a1;
  v15 = _NSConcreteStackBlock;
  v16 = 1107296256;
  v17 = sub_100002B88;
  v18 = &unk_1003070B0;
  v12 = _Block_copy(&v15);

  v13 = v11;

  [v13 setHandler:v12];
  _Block_release(v12);

  return v2;
}

uint64_t type metadata accessor for NearbySharingInteractionDisplayContext(uint64_t a1)
{
  result = qword_1003434F8;
  if (!qword_1003434F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1000EB9F4(uint64_t a1)
{
  sub_1000EBA78();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1000EBA78()
{
  if (!qword_100343508)
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100343508);
    }
  }
}

uint64_t sub_1000EBAC8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1000EBB10(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000EBB60(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12[0] = a4;
  v12[1] = a5;
  v7 = sub_100035D04(&qword_100343598, &qword_100279368);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = v12 - v9;
  sub_10000EBC0(a1, a1[3]);
  sub_1000ECA20();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000EBCF4(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_100343568, &qword_100279358);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v10[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_1000EC5C4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  sub_100035D04(&qword_100343548, &qword_100279350);
  sub_1000EC72C(&qword_100343570, sub_1000EC7A4, &protocol conformance descriptor for <A> [A]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    type metadata accessor for NearbySharingInteractionDisplayContext(0);
    v10[6] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    sub_1000EC7F8(&qword_100343580, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1000EBEF4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v25 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v22 = *(v25 - 8);
  __chkstk_darwin(v25);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_100035D04(&qword_100343538, &qword_100279348);
  v24 = *(v26 - 8);
  __chkstk_darwin(v26);
  v7 = &v18 - v6;
  v8 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  __chkstk_darwin(v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_1000EC5C4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v21 = a1;
  v11 = v10;
  v13 = v24;
  v12 = v25;
  sub_100035D04(&qword_100343548, &qword_100279350);
  v28 = 0;
  sub_1000EC72C(&qword_100343550, sub_1000EC618, &protocol conformance descriptor for <A> [A]);
  v14 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v11;
  v20 = v29;
  *v11 = v29;
  v27 = 1;
  sub_1000EC7F8(&qword_100343560, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v7, v14);
  v15 = *(v8 + 20);
  v16 = v19;
  (*(v22 + 32))(&v19[v15], v5, v12);
  sub_1000EC66C(v16, v23);
  sub_10000903C(v21);
  return sub_1000EC6D0(v16);
}

uint64_t sub_1000EC254@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000EC324(uint64_t a1)
{
  v2 = sub_1000ECA20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC360(uint64_t a1)
{
  v2 = sub_1000ECA20();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000EC39C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000EC83C(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1000EC3EC()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0x53746E65746E6F63;
  }
}

uint64_t sub_1000EC434@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x53746E65746E6F63 && a2 == 0xEC00000073627574;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000010029F840 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000EC51C(uint64_t a1)
{
  v2 = sub_1000EC5C4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EC558(uint64_t a1)
{
  v2 = sub_1000EC5C4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1000EC5C4()
{
  result = qword_100343540;
  if (!qword_100343540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343540);
  }

  return result;
}

unint64_t sub_1000EC618()
{
  result = qword_100343558;
  if (!qword_100343558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343558);
  }

  return result;
}

uint64_t sub_1000EC66C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EC6D0(uint64_t a1)
{
  v2 = type metadata accessor for NearbySharingInteractionDisplayContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000EC72C(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_100343548, &qword_100279350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000EC7A4()
{
  result = qword_100343578;
  if (!qword_100343578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343578);
  }

  return result;
}

uint64_t sub_1000EC7F8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000EC83C(void *a1)
{
  v3 = sub_100035D04(&qword_100343588, &qword_100279360);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000EBC0(a1, a1[3]);
  sub_1000ECA20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v10 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  sub_10000903C(a1);
  return v7;
}

unint64_t sub_1000ECA20()
{
  result = qword_100343590;
  if (!qword_100343590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343590);
  }

  return result;
}

unint64_t sub_1000ECA98()
{
  result = qword_1003435A0;
  if (!qword_1003435A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435A0);
  }

  return result;
}

unint64_t sub_1000ECAF0()
{
  result = qword_1003435A8;
  if (!qword_1003435A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435A8);
  }

  return result;
}

unint64_t sub_1000ECB48()
{
  result = qword_1003435B0;
  if (!qword_1003435B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435B0);
  }

  return result;
}

unint64_t sub_1000ECBA0()
{
  result = qword_1003435B8;
  if (!qword_1003435B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435B8);
  }

  return result;
}

unint64_t sub_1000ECBF8()
{
  result = qword_1003435C0;
  if (!qword_1003435C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435C0);
  }

  return result;
}

unint64_t sub_1000ECC50()
{
  result = qword_1003435C8;
  if (!qword_1003435C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003435C8);
  }

  return result;
}

uint64_t sub_1000ECCAC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003435D0);
  sub_100003078(v0, qword_1003435D0);
  return Logger.init(subsystem:category:)();
}

char *sub_1000ECD2C()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v28 = *(v2 - 8);
  __chkstk_darwin(v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  v27 = v5;
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v0[OBJC_IVAR___Application_isActive] = 0;
  *&v0[OBJC_IVAR___Application_handoffFeature] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    sub_1001CBDD8(_swiftEmptyArrayStorage);
  }

  else
  {
    v8 = &_swiftEmptySetSingleton;
  }

  v9 = &v0[OBJC_IVAR___Application_tasks];
  *v9 = 0;
  *(v9 + 1) = v8;
  *&v0[OBJC_IVAR___Application_xpcServer] = 0;
  v10 = OBJC_IVAR___Application_handoffEnabledSettingManager;
  *&v1[v10] = [objc_allocWithZone(type metadata accessor for HandoffEnabledSettingManager()) init];
  *&v1[OBJC_IVAR___Application_handoffEnabledListenerTask] = 0;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100003078(v11, qword_1003435D0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Application init", v14, 2u);
  }

  v15 = type metadata accessor for Application();
  v31.receiver = v1;
  v31.super_class = v15;
  v16 = objc_msgSendSuper2(&v31, "init");
  v17 = qword_1003391E8;
  v18 = v16;
  if (v17 != -1)
  {
    swift_once();
  }

  v19 = qword_10038B5B8;
  v20 = objc_allocWithZone(type metadata accessor for HandoffFeature());
  v21 = sub_100200E6C(v19);
  v22 = *&v18[OBJC_IVAR___Application_handoffFeature];
  *&v18[OBJC_IVAR___Application_handoffFeature] = v21;

  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  aBlock[4] = sub_1000EF160;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307408;
  v24 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v29 = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v28 + 8))(v4, v2);
  (*(v26 + 8))(v7, v27);

  sub_1000ED1C0();

  return v18;
}

double sub_1000ED1C0()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_1003436B8, &qword_1002795C8);
  v33 = *(v2 - 8);
  v34 = v2;
  __chkstk_darwin(v2);
  v31 = &v31 - v3;
  v4 = sub_100035D04(&unk_1003436C0, qword_1002795D0);
  v35 = *(v4 - 8);
  v36 = v4;
  __chkstk_darwin(v4);
  v32 = &v31 - v5;
  v37 = sub_100035D04(&qword_10033F580, &qword_1002761D8);
  v6 = *(v37 - 8);
  __chkstk_darwin(v37);
  v8 = &v31 - v7;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100003078(v9, qword_1003435D0);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v38 = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v38);
    _os_log_impl(&_mh_execute_header, v10, v11, "%s", v12, 0xCu);
    sub_10000903C(v13);
  }

  sub_1000EED1C();
  sub_1000EE0DC();
  v14 = *(v1 + OBJC_IVAR___Application_handoffEnabledSettingManager);
  v15 = OBJC_IVAR____TtC17proximitycontrold28HandoffEnabledSettingManager__transferToHomePod;

  v38 = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v16 = Publisher.eraseToAnyPublisher()();

  v38 = v16;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher.dropFirst(_:)();

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_10000E244(&qword_1003436F0, &qword_10033F580, &qword_1002761D8, &protocol conformance descriptor for Publishers.Drop<A>);
  v17 = v37;
  v18 = Publisher<>.sink(receiveValue:)();

  (*(v6 + 8))(v8, v17);
  v19 = (v1 + OBJC_IVAR___Application_tasks);
  os_unfair_lock_lock((v1 + OBJC_IVAR___Application_tasks));

  sub_10006421C(&v38, v18);

  os_unfair_lock_unlock(v19);

  sub_1000EE644(*(*(v14 + v15) + 24));
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v21 = *(qword_10038B0B8 + 1064);
  v22 = *(v21 + *((swift_isaMask & *v21) + 0x70));
  if (v22)
  {
    v23 = v21;
    v24 = v22;
    v25 = String._bridgeToObjectiveC()();
    [v24 setBool:0 forKey:v25];
  }

  if (qword_100339088 != -1)
  {
    swift_once();
  }

  if (qword_10038B240)
  {
    swift_getKeyPath();
    v26 = v31;
    _KeyValueCodingAndObservingPublishing<>.publisher<A>(for:options:)();

    sub_10000E244(&qword_1003436F8, &qword_1003436B8, &qword_1002795C8, &protocol conformance descriptor for NSObject.KeyValueObservingPublisher<A, B>);
    v27 = v32;
    v28 = v34;
    Publisher.filter(_:)();
    (*(v33 + 8))(v26, v28);
    sub_10000E244(&unk_100343700, &unk_1003436C0, qword_1002795D0, &protocol conformance descriptor for Publishers.Filter<A>);
    v29 = v36;
    v30 = Publisher<>.sink(receiveValue:)();
    (*(v35 + 8))(v27, v29);
    os_unfair_lock_lock(v19);

    sub_10006421C(&v38, v30);

    os_unfair_lock_unlock(v19);
  }

  return result;
}

void sub_1000ED918(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1000EE644(v2);
  }
}

void sub_1000ED974()
{
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v0 = *(qword_10038B0B8 + 1064);
  v1 = *(v0 + *((swift_isaMask & *v0) + 0x70));
  if (v1)
  {
    v2 = v0;
    v3 = v1;
    v4 = String._bridgeToObjectiveC()();
    [v3 setBool:0 forKey:v4];
  }

  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_1003435D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "### forceKillProximitycontrold set to true, exiting...", v8, 2u);
  }

  exit(0);
}

void sub_1000EDB24()
{
  v1 = v0;
  v2 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = &v25 - v7;
  v9 = type metadata accessor for OSSignpostID();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR___Application_isActive) = 1;
  static OSSignpostID.exclusive.getter();
  static os_signpost_type_t.begin.getter();
  if (qword_100338F28 != -1)
  {
    swift_once();
  }

  os_signpost(_:dso:log:name:signpostID:_:_:)();
  (*(v10 + 8))(v12, v9);
  v13 = *(v1 + OBJC_IVAR___Application_handoffFeature);
  if (v13)
  {
    swift_allocObject();
    v14 = v3;
    swift_unknownObjectWeakInit();
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    swift_allocObject();
    v25 = v13;
    v15 = Future.init(_:)();
    v16 = type metadata accessor for Logger();
    (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
    v26 = v15;
    sub_1000EF05C(v8, v6);
    v17 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = 0;
    *(v18 + 24) = 0;
    sub_10007E4B8(v6, v18 + v17);
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0, &protocol conformance descriptor for Future<A, B>);
    v19 = Publisher.sink(receiveCompletion:receiveValue:)();

    sub_1000097E8(v8, &unk_10033D8B0, &qword_100275520);

    v20 = (v1 + OBJC_IVAR___Application_tasks);
    os_unfair_lock_lock(v20);

    sub_10006421C(&v26, v19);

    os_unfair_lock_unlock(v20);
  }

  else
  {
    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_100003078(v21, qword_1003435D0);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "### No handoffFeature??", v24, 2u);
    }
  }
}

void sub_1000EDFF4()
{
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_1003435D0);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Activated", v2, 2u);
  }
}

void sub_1000EE0DC()
{
  v1 = v0;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003435D0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000013, 0x800000010029F930, v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v7 = qword_10038B5B8;
  v8 = objc_allocWithZone(type metadata accessor for XPCServer());
  v9 = sub_100101BB4(v7);
  swift_unknownObjectWeakAssign();
  v10 = &v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler];
  v11 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler];
  v12 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_interruptionHandler + 8];
  *v10 = sub_1000EE3B4;
  v10[1] = 0;
  sub_10002689C(v11, v12);
  v13 = &v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler];
  v14 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler];
  v15 = *&v9[OBJC_IVAR____TtC17proximitycontrold9XPCServer_invalidationHandler + 8];
  *v13 = sub_1000EE3D4;
  v13[1] = 0;
  sub_10002689C(v14, v15);
  v19[4] = sub_1000EE3F4;
  v19[5] = 0;
  v19[0] = _NSConcreteStackBlock;
  v19[1] = 1107296256;
  v19[2] = sub_100124498;
  v19[3] = &unk_100307340;
  v16 = _Block_copy(v19);
  [v9 activateWithCompletion:v16];
  _Block_release(v16);
  v17 = *(v1 + OBJC_IVAR___Application_xpcServer);
  *(v1 + OBJC_IVAR___Application_xpcServer) = v9;
  v18 = v9;

  if (qword_1003391C0 != -1)
  {
    swift_once();
  }
}

void sub_1000EE3F4(uint64_t a1)
{
  if (!a1)
  {
    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_1003435D0);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(oslog, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v7, "XPCServer activated", v8, 2u);
    }

    goto LABEL_10;
  }

  swift_errorRetain();
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_1003435D0);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    swift_errorRetain();
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "### XPCServer activation failed: %@", v3, 0xCu);
    sub_1000097E8(v4, &qword_100339940, &unk_100272C50);

LABEL_10:

    return;
  }
}

void sub_1000EE644(char a1)
{
  v2 = v1;
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003435D0);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v21 = v8;
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD00000000000002DLL, 0x800000010029F900, &v21);
    *(v7 + 12) = 1024;
    *(v7 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: enabled=%{BOOL}d", v7, 0x12u);
    sub_10000903C(v8);
  }

  if (a1)
  {
    if ((*(v1 + OBJC_IVAR___Application_isActive) & 1) == 0)
    {
      v9 = Logger.logObject.getter();
      v10 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&_mh_execute_header, v9, v10, "Application activating...", v11, 2u);
      }

      sub_1000EDB24();
    }
  }

  else
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "State does not allow Handoff feature.", v14, 2u);
    }

    v15 = OBJC_IVAR___Application_isActive;
    if (*(v1 + OBJC_IVAR___Application_isActive) == 1)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Application deactivating...", v18, 2u);
      }

      *(v2 + v15) = 0;
      v19 = *(v2 + OBJC_IVAR___Application_handoffFeature);
      if (v19)
      {
        v20 = v19;
        sub_100201D80();
      }
    }
  }
}

id sub_1000EE990()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Application();
  return objc_msgSendSuper2(&v2, "dealloc");
}

unint64_t sub_1000EEB48()
{
  v1 = v0;
  _StringGuts.grow(_:)(28);

  if (qword_100338F00 != -1)
  {
    swift_once();
  }

  v2 = *(qword_10038B0A0 + 24);
  v3 = sub_1000031CC();

  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  v6 = v5;
  String.append(_:)(*&v4);

  v7._countAndFlagsBits = 2570;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8 = *(v1 + OBJC_IVAR___Application_handoffFeature);
  if (v8)
  {
    v9 = [v8 description];
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v12 = 0x800000010029F8E0;
    v10 = 0xD000000000000017;
  }

  v13._countAndFlagsBits = v10;
  v13._object = v12;
  String.append(_:)(v13);

  v14._countAndFlagsBits = 2570;
  v14._object = 0xE200000000000000;
  String.append(_:)(v14);
  if (qword_100338E78 != -1)
  {
    swift_once();
  }

  v15._countAndFlagsBits = sub_10005DB20();
  String.append(_:)(v15);

  return 0xD000000000000012;
}

void sub_1000EED1C()
{
  if (_set_user_dir_suffix())
  {
    v0 = NSTemporaryDirectory();
    v1 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;

    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_1003435D0);

    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      v8 = sub_100017494(v1, v3, &v13);

      *(v6 + 4) = v8;
      _os_log_impl(&_mh_execute_header, oslog, v5, "Successfully set user directory suffix for tmp folder: %s", v6, 0xCu);
      sub_10000903C(v7);

LABEL_10:

      goto LABEL_12;
    }
  }

  else
  {
    if (qword_100338F78 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_100003078(v9, qword_1003435D0);
    oslog = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v10, "### Failed to set user directory suffix for tmp folder", v11, 2u);
      goto LABEL_10;
    }
  }

LABEL_12:
}

void sub_1000EEF5C(uint64_t (*a1)(void), const char *a2)
{
  if (qword_100338F78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003435D0);
  oslog = Logger.logObject.getter();
  v5 = a1();
  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v5, a2, v6, 2u);
  }
}

uint64_t sub_1000EF05C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10033D8B0, &qword_100275520);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000EF0CC(uint64_t *a1)
{
  v3 = *(sub_100035D04(&unk_10033D8B0, &qword_100275520) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));

  return sub_1001479CC(a1, v4, v5, v6);
}

void sub_1000EF198(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_10013FF24(a2, *(a3 + 16));
  if (!v3)
  {
    v9 = v7;
    v10 = v8;
    v11 = [a1 userInfo];
    v12 = &selRef_requestIdentifier;
    if (!v11)
    {
      sub_10024D824(_swiftEmptyArrayStorage);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;
      v12 = &selRef_requestIdentifier;

      [a1 setUserInfo:isa];
      v11 = isa;
    }

    v14 = [a1 userInfo];
    if (v14)
    {
      v15 = v12;
      v16 = v14;
      v17 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      (*(a3 + 24))(a2, a3);
      AnyHashable.init<A>(_:)();
      v22 = &type metadata for Data;
      *&v21 = v9;
      *(&v21 + 1) = v10;
      sub_1000516B4(&v21, v20);
      sub_10006DA04(v9, v10);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v17;
      sub_10004D368(v20, v23, isUniquelyReferenced_nonNull_native);
      sub_1000516C4(v23);
      if (v24)
      {
        v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      }

      else
      {
        v19.super.isa = 0;
      }

      [a1 v15[6]];
      sub_100010708(v9, v10);
    }

    else
    {
      [a1 v12[6]];
      sub_100010708(v9, v10);
    }
  }
}

uint64_t sub_1000EF418(uint64_t a1)
{
  v2 = v1;
  v4 = objc_allocWithZone(v1);
  v5 = sub_1000EFB30(a1);
  (*(*(*(v2 + qword_10038B108) - 8) + 8))(a1);
  return v5;
}

uint64_t sub_1000EF498()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343730);
  sub_100003078(v0, qword_100343730);
  return Logger.init(subsystem:category:)();
}

id sub_1000EF528()
{
  v1 = v0;
  v2 = swift_isaMask & *v0;
  if (qword_100338F80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343730);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_100017494(0xD000000000000018, 0x800000010029F990, &v15);
    _os_log_impl(&_mh_execute_header, v4, v5, "%s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v9 = type metadata accessor for LockscreenViewableUIHostingController(0, *(v2 + qword_10038B108), *(v2 + qword_10038B108 + 8), v8);
  v16.receiver = v1;
  v16.super_class = v9;
  result = objc_msgSendSuper2(&v16, "viewWillLayoutSubviews");
  v11 = (v1 + *((swift_isaMask & *v1) + qword_10038B108 + 16));
  v12 = *v11;
  if (*v11)
  {
    v13 = v11[1];
    v14 = sub_10009D4E0(*v11, v13);
    v12(v14);
    return sub_10002689C(v12, v13);
  }

  return result;
}

void sub_1000EF740(void *a1)
{
  v1 = a1;
  sub_1000EF528();
}

void *sub_1000EF7CC(uint64_t a1, uint64_t a2)
{
  v4 = *((swift_isaMask & *v2) + qword_10038B108);
  v5 = *(v4 - 8);
  __chkstk_darwin(a1);
  v7 = &v14 - v6;
  v9 = (v2 + *(v8 + 16));
  *v9 = 0;
  v9[1] = 0;
  (*(v5 + 16))(v7);
  v10 = UIHostingController.init(coder:rootView:)();
  v11 = *(v5 + 8);
  v12 = v10;
  v11(a2, v4);
  if (v10)
  {
  }

  return v10;
}

id sub_1000EF914(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = swift_isaMask & *v4;
  v7 = (v4 + *(v6 + qword_10038B108 + 16));
  *v7 = 0;
  v7[1] = 0;
  v8 = type metadata accessor for LockscreenViewableUIHostingController(0, *(v6 + qword_10038B108), *(v6 + qword_10038B108 + 8), a4);
  v11.receiver = v4;
  v11.super_class = v8;
  v9 = objc_msgSendSuper2(&v11, "initWithCoder:", a1);

  if (v9)
  {
  }

  return v9;
}

id sub_1000EFA4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for LockscreenViewableUIHostingController(0, *((swift_isaMask & *v4) + qword_10038B108), *((swift_isaMask & *v4) + qword_10038B108 + 8), a4);
  v7.receiver = v4;
  v7.super_class = v5;
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t sub_1000EFB30(uint64_t a1)
{
  __chkstk_darwin(a1);
  v3 = &v8 - v2;
  v5 = (v1 + *(v4 + 16));
  *v5 = 0;
  v5[1] = 0;
  (*(v6 + 16))(v3);
  return UIHostingController.init(rootView:)();
}

unint64_t sub_1000EFC28()
{
  v1 = *v0;
  v2 = 0x44497472656C61;
  v3 = 0xD000000000000010;
  if (v1 != 5)
  {
    v3 = 0x736E6F69746361;
  }

  v4 = 0x6C65694674786574;
  if (v1 != 3)
  {
    v4 = 0x74756F656D6974;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
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

uint64_t sub_1000EFD10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1000F122C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1000EFD44(uint64_t a1)
{
  v2 = sub_1000F00B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000EFD80(uint64_t a1)
{
  v2 = sub_1000F00B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t PCUserAlertPresentationContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_100035D04(&qword_1003437C8, &unk_100279710);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v11[-v7];
  sub_10000EBC0(a1, a1[3]);
  sub_1000F00B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  type metadata accessor for UUID();
  sub_1000F08CC(&qword_1003437D8, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for PCUserAlertPresentationContext(0);
    v17 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v15 = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v13 = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 40));
    v11[15] = 6;
    sub_100035D04(&qword_1003397D0, &qword_1002729A0);
    sub_1000F0680(&qword_1003437E0, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1000F00B8()
{
  result = qword_1003437D0;
  if (!qword_1003437D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003437D0);
  }

  return result;
}

uint64_t type metadata accessor for PCUserAlertPresentationContext(uint64_t a1)
{
  result = qword_1003438E8;
  if (!qword_1003438E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PCUserAlertPresentationContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v4 = type metadata accessor for UUID();
  v31 = *(v4 - 8);
  __chkstk_darwin(v4);
  v32 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_100035D04(&qword_1003437E8, &qword_100279720);
  v30 = *(v34 - 8);
  __chkstk_darwin(v34);
  v7 = &v28 - v6;
  v8 = type metadata accessor for PCUserAlertPresentationContext(0);
  __chkstk_darwin(v8);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10000EBC0(a1, a1[3]);
  sub_1000F00B8();
  v33 = v7;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v11 = v10;
  v13 = v30;
  v12 = v31;
  v42 = 0;
  sub_1000F08CC(&qword_1003437F0, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v14 = v32;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 32))(v11, v14, v4);
  v41 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v4;
  v16 = (v11 + v8[5]);
  *v16 = v15;
  v16[1] = v17;
  v40 = 2;
  v32 = 0;
  v18 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v19 = (v11 + v8[6]);
  *v19 = v18;
  v19[1] = v20;
  v39 = 3;
  v21 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v22 = (v11 + v8[7]);
  *v22 = v21;
  v22[1] = v23;
  v38 = 4;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v25 = v11 + v8[8];
  *v25 = v24;
  *(v25 + 8) = v26 & 1;
  v37 = 5;
  *(v11 + v8[9]) = KeyedDecodingContainer.decode(_:forKey:)() & 1;
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  v36 = 6;
  sub_1000F0680(&qword_1003437F8, &protocol witness table for String, &protocol conformance descriptor for <A> [A]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v33, v34);
  *(v11 + v8[10]) = v35;
  sub_1000F06EC(v11, v29);
  sub_10000903C(a1);
  return sub_1000F0750(v11);
}

uint64_t sub_1000F0680(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_100035D4C(&qword_1003397D0, &qword_1002729A0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1000F06EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PCUserAlertPresentationContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F0750(uint64_t a1)
{
  v2 = type metadata accessor for PCUserAlertPresentationContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000F07AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a4 - 8) + 32))(a5, a1, a4);
  result = type metadata accessor for PCUserAlertResult(0, a4, v9, v10);
  v12 = (a5 + *(result + 28));
  *v12 = a2;
  v12[1] = a3;
  return result;
}

uint64_t sub_1000F0848(uint64_t a1)
{
  *(a1 + 8) = sub_1000F08CC(&qword_100343800, type metadata accessor for PCUserAlertPresentationContext, &protocol conformance descriptor for PCUserAlertPresentationContext);
  result = sub_1000F08CC(qword_100343808, type metadata accessor for PCUserAlertPresentationContext, &protocol conformance descriptor for PCUserAlertPresentationContext);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000F08CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000F0944(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 sub_1000F0980(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_1000F09A4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000F09EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1000F0A80(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    sub_1000F0BB0(319, &qword_1003438F8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      sub_1000F0BB0(319, &qword_100343900, &type metadata for Double, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_1000F0BB0(319, &unk_100343908, &type metadata for String, &type metadata accessor for Array);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1000F0BB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1000F0C08(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    sub_1000F0BB0(319, &qword_1003438F8, &type metadata for String, &type metadata accessor for Optional);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000F0CB4(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFE)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    if ((v17 + 1) >= 2)
    {
      return v17;
    }

    else
    {
      return 0;
    }
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

unsigned int *sub_1000F0DF8(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFE)
  {
    v7 = 2147483646;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFF0)
    {
      v15 = ~v7 + a2;
      v16 = result;
      bzero(result, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 16);
      result = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(result + v9) = v14;
      }

      else
      {
        *(result + v9) = v14;
      }
    }

    else if (v13)
    {
      *(result + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(result + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(result + v9) = 0;
  }

  else if (v13)
  {
    *(result + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFE)
  {
    v18 = ((result + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    if (a2 > 0x7FFFFFFE)
    {
      *v18 = 0;
      v18[1] = 0;
      *v18 = a2 - 0x7FFFFFFF;
    }

    else
    {
      v18[1] = a2;
    }
  }

  else
  {
    v17 = *(v5 + 56);

    return v17();
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppleDevice(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AppleDevice(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000F1128()
{
  result = qword_1003439D0;
  if (!qword_1003439D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003439D0);
  }

  return result;
}

unint64_t sub_1000F1180()
{
  result = qword_1003439D8;
  if (!qword_1003439D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003439D8);
  }

  return result;
}

unint64_t sub_1000F11D8()
{
  result = qword_1003439E0;
  if (!qword_1003439E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003439E0);
  }

  return result;
}

uint64_t sub_1000F122C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44497472656C61 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6C65694674786574 && a2 == 0xEF74706D6F725064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x74756F656D6974 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000010029F9B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x736E6F69746361 && a2 == 0xE700000000000000)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

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

uint64_t sub_1000F1480()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B118);
  sub_100003078(v0, qword_10038B118);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F1504()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003439E8);
  v1 = sub_100003078(v0, qword_1003439E8);
  if (qword_100338F88 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B118);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1000F15CC()
{
  type metadata accessor for MediaRemoteProxy();
  v0 = swift_allocObject();
  result = sub_1000F1854();
  qword_10038B130 = v0;
  return result;
}

uint64_t sub_1000F1608()
{
  if (*(v0 + 16))
  {
    v1 = *(v0 + 16);
  }

  else
  {
    sub_100035D04(&qword_100343BF0, &qword_100279A98);
    sub_10000E244(&qword_100343C90, &qword_100343BF0, &qword_100279A98, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 16) = v1;
  }

  return v1;
}

uint64_t sub_1000F16CC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_100035D04(&qword_100343BF8, &qword_100279AA0);
    sub_10000E244(&qword_100343C88, &qword_100343BF8, &qword_100279AA0, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1000F1790()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    sub_100035D04(&qword_100343C00, &qword_100279AA8);
    sub_10000E244(&qword_100343C80, &qword_100343C00, &qword_100279AA8, &protocol conformance descriptor for PassthroughSubject<A, B>);
    v1 = Publisher.eraseToAnyPublisher()();
    *(v0 + 32) = v1;
  }

  return v1;
}

uint64_t sub_1000F1854()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100343BC8, &qword_100279A70);
  v75 = *(v2 - 8);
  v76 = v2;
  __chkstk_darwin(v2);
  v74 = &v57 - v3;
  v68 = sub_100035D04(&qword_100343BD0, &qword_100279A78);
  v69 = *(v68 - 8);
  __chkstk_darwin(v68);
  v67 = &v57 - v4;
  v5 = sub_100035D04(&qword_100343BD8, &qword_100279A80);
  v72 = *(v5 - 8);
  v73 = v5;
  __chkstk_darwin(v5);
  v71 = &v57 - v6;
  v7 = sub_100035D04(&qword_100343BE0, &qword_100279A88);
  v78 = *(v7 - 8);
  v79 = v7;
  __chkstk_darwin(v7);
  v77 = &v57 - v8;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v81 = v11;
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = sub_100035D04(&qword_100343BE8, &qword_100279A90);
  v65 = *(v66 - 8);
  __chkstk_darwin(v66);
  v64 = &v57 - v13;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  sub_100035D04(&qword_100343BF0, &qword_100279A98);
  swift_allocObject();
  *(v0 + 40) = PassthroughSubject.init()();
  *(v0 + 56) = 0;
  swift_unknownObjectWeakInit();
  sub_100035D04(&qword_100343BF8, &qword_100279AA0);
  swift_allocObject();
  *(v0 + 64) = PassthroughSubject.init()();
  v70 = sub_100035D04(&qword_100343C00, &qword_100279AA8);
  swift_allocObject();
  *(v0 + 72) = PassthroughSubject.init()();
  v14 = [objc_allocWithZone(MRProximityProvider) init];
  *(v0 + 88) = &_swiftEmptySetSingleton;
  *(v0 + 80) = v14;
  *(v0 + 96) = 0;
  v83 = v0 + 88;
  *(v0 + 104) = 0;
  v15 = qword_1003391E8;
  v16 = v14;
  if (v15 != -1)
  {
    swift_once();
  }

  [v16 setDispatchQueue:qword_10038B5B8];

  v17 = *(v1 + 80);
  v18 = swift_allocObject();
  swift_weakInit();
  v88 = sub_10001C2E0;
  v89 = v18;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_10001C258;
  v87 = &unk_100307680;
  v19 = _Block_copy(&aBlock);
  v20 = v17;

  [v20 setDisplayContextHandler:v19];
  _Block_release(v19);

  v21 = *(v1 + 80);
  v22 = swift_allocObject();
  swift_weakInit();
  v88 = sub_1000F3860;
  v89 = v22;
  aBlock = _NSConcreteStackBlock;
  v85 = 1107296256;
  v86 = sub_10001C258;
  v87 = &unk_1003076A8;
  v23 = _Block_copy(&aBlock);
  v24 = v21;

  [v24 setProgressEventHandler:v23];
  _Block_release(v23);

  v25 = sub_1000F1608();
  v82 = v1;
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v26 = sub_100003078(v9, qword_1003439E8);
  v63 = v26;
  v27 = static os_log_type_t.info.getter();
  aBlock = v25;
  v62 = *(v10 + 16);
  v58 = v12;
  v62(v12, v26, v9);
  v57 = v25;
  v28 = *(v10 + 80);
  v59 = v9;
  v29 = &v81[(v28 + 64) & ~v28];
  v61 = (v28 + 64) & ~v28;
  v30 = swift_allocObject();
  *(v30 + 16) = 0;
  *(v30 + 24) = 0;
  *(v30 + 32) = 0xD000000000000014;
  *(v30 + 40) = 0x800000010029FBF0;
  *(v30 + 48) = 0;
  *(v30 + 56) = 0xE000000000000000;
  v60 = *(v10 + 32);
  v60(v30 + ((v28 + 64) & ~v28), v12, v9);
  v29[v30] = v27;
  sub_100035D04(&qword_100343C08, &qword_100279AB0);
  sub_100003118(0, &unk_10034B580, PCDisplayContext_ptr);
  v81 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_100343C10, &qword_100343C08, &qword_100279AB0, &protocol conformance descriptor for AnyPublisher<A, B>);
  v31 = v64;
  Publisher.map<A>(_:)();

  v80 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_100343C18, &qword_100343BE8, &qword_100279A90, &protocol conformance descriptor for Publishers.Map<A, B>);
  v32 = v66;
  v33 = Publisher.eraseToAnyPublisher()();

  (*(v65 + 8))(v31, v32);
  aBlock = v33;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v34 = sub_1000F16CC();
  v35 = static os_log_type_t.info.getter();
  aBlock = v34;
  v36 = v58;
  v37 = v59;
  v62(v58, v63, v59);
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = 0xD000000000000013;
  *(v38 + 40) = 0x800000010029FC10;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0xE000000000000000;
  v60(v38 + v61, v36, v37);
  v29[v38] = v35;
  sub_100035D04(&qword_100343C20, &qword_100279AB8);
  sub_100003118(0, &qword_100343C28, PCProgressEvent_ptr);
  v66 = sub_10000E244(&qword_100343C30, &qword_100343C20, &qword_100279AB8, v81);
  v39 = v67;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100343C38, &qword_100343BD0, &qword_100279A78, v80);
  v40 = v68;
  v41 = Publisher.eraseToAnyPublisher()();

  v69 = *(v69 + 8);
  (v69)(v39, v40);
  v42 = swift_allocObject();
  swift_weakInit();
  aBlock = v41;
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1000F395C;
  *(v43 + 24) = v42;

  Publisher.map<A>(_:)();

  v44 = Publisher.eraseToAnyPublisher()();

  (v69)(v39, v40);
  aBlock = v44;
  sub_100035D04(&qword_100343C40, &qword_100279AC0);
  v45 = v71;
  Publisher.map<A>(_:)();

  v46 = swift_allocObject();
  v47 = v82;
  swift_weakInit();

  v48 = swift_allocObject();
  *(v48 + 16) = sub_1000F39BC;
  *(v48 + 24) = v46;
  v49 = v80;
  sub_10000E244(&qword_100343C48, &qword_100343BD8, &qword_100279A80, v80);

  v51 = v73;
  v50 = v74;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100343C50, &qword_100343BC8, &qword_100279A70, v49);
  v52 = v76;
  v53 = Publisher.eraseToAnyPublisher()();

  (*(v75 + 8))(v50, v52);
  (*(v72 + 8))(v45, v51);
  aBlock = v53;
  sub_100035D04(&qword_100343C58, &qword_100279AC8);
  sub_100035D04(&qword_100343C60, &unk_100279AD0);
  sub_10000E244(&qword_100343C68, &qword_100343C58, &qword_100279AC8, v81);
  v54 = v77;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100343C70, &qword_100343BE0, &qword_100279A88, v49);
  sub_10000E244(&qword_100343C78, &qword_100343C00, &qword_100279AA8, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v55 = v79;
  Publisher.subscribe<A>(_:)();
  (*(v78 + 8))(v54, v55);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v47;
}

double sub_1000F26D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    PassthroughSubject.send(_:)();
  }

  return result;
}

double sub_1000F2750(void **a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000F2998(v2);
  }

  return result;
}

void sub_1000F27B0(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  *a2 = sub_100042544(*a1);
  v4 = [v3 mediaRemoteID];
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  a2[1] = v5;
  a2[2] = v7;
}

double sub_1000F2818(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000F3574(v2);
  }

  return result;
}

uint64_t sub_1000F2878@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = a1[2];
  v6 = 0uLL;
  if (*a1 > 1)
  {
    if (v3 == 3)
    {
      v8 = 0;
      v9 = 0;
      v7 = 2;
      goto LABEL_12;
    }

    if (v3 == 2)
    {
      v8 = 0;
      v9 = 0;
      v7 = 1;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v3)
  {
    sub_10001618C();
    v10 = swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0xE000000000000000;
    *(v11 + 16) = 11;
    goto LABEL_10;
  }

  if (v3 != 1)
  {
LABEL_8:
    v10 = *a1;
LABEL_10:
    sub_1000E6048(v3);
    sub_10014FEEC(v10, &v14);
    v6 = v14;
    v7 = v15;
    v8 = v16;
    v9 = v17;
    v12 = v18;
    goto LABEL_13;
  }

  v7 = 0;
  v8 = 0;
  v9 = 0;
LABEL_12:
  v12 = 0uLL;
LABEL_13:
  *a2 = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  *(a2 + 32) = v9;
  *(a2 + 40) = v12;
  *(a2 + 56) = v4;
  *(a2 + 64) = v5;
}

void sub_1000F2998(void *a1)
{
  v2 = [a1 eventType];
  if (v2 == 2)
  {
LABEL_19:
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003078(v23, qword_1003439E8);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "Handoff completed, informing coordinator", v26, 2u);
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1000AD598();
      swift_unknownObjectRelease();
    }

    return;
  }

  if (v2 == 1)
  {
    return;
  }

  if (!v2)
  {
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_1003439E8);
    v4 = a1;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v28 = v8;
      *v7 = 136315138;
      v9 = [v4 error];
      if (v9)
      {
        v10 = v9;
        swift_getErrorValue();
        v11 = Error.localizedDescription.getter();
        v13 = v12;
      }

      else
      {
        v13 = 0xE100000000000000;
        v11 = 63;
      }

      v22 = sub_100017494(v11, v13, &v28);

      *(v7 + 4) = v22;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Progress event with error: %s", v7, 0xCu);
      sub_10000903C(v8);
    }

    goto LABEL_19;
  }

  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_1003439E8);
  v15 = a1;
  oslog = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v28 = v18;
    *v17 = 136315138;
    [v15 eventType];
    type metadata accessor for PCProgressEventType(0);
    v19 = String.init<A>(describing:)();
    v21 = sub_100017494(v19, v20, &v28);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, oslog, v16, "### Unsupported progress event type %s", v17, 0xCu);
    sub_10000903C(v18);
  }

  else
  {
  }
}

uint64_t sub_1000F2DA0()
{

  sub_10007763C(v0 + 48);

  return v0;
}

uint64_t sub_1000F2E08()
{
  sub_1000F2DA0();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F2E3C(uint64_t a1)
{
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_1003439E8);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v12 = v6;
    *v5 = 136315138;
    v8 = sub_1000092A0(v6, v7);
    v10 = sub_100017494(v8, v9, &v12);

    *(v5 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v3, v4, "Tracking %s", v5, 0xCu);
    sub_10000903C(v6);
  }

  *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate + 8) = &off_100307648;

  return swift_unknownObjectWeakAssign();
}

void sub_1000F2FCC(uint64_t a1)
{
  v2 = a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_proximityDelegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v4 = Strong, swift_unknownObjectRelease(), v4 == v1))
  {
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100003078(v8, qword_1003439E8);

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v14 = sub_1000092A0(v12, v13);
      v16 = sub_100017494(v14, v15, &v18);

      *(v11 + 4) = v16;
      _os_log_impl(&_mh_execute_header, v9, v10, "Untracking %s", v11, 0xCu);
      sub_10000903C(v12);
    }

    *(v2 + 8) = 0;

    swift_unknownObjectWeakAssign();
  }

  else
  {
    if (qword_100338F90 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_1003439E8);
    oslog = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v6, "### UntrackIfNeeded: device.proximityDelegate != self", v7, 2u);
    }
  }
}

void sub_1000F3250(uint64_t a1, unint64_t a2)
{
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_1003439E8);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD00000000000002CLL, 0x800000010029FB80, &v16);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100017494(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: mediaRouteID=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v2 + 96))
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "### Migrate in progress", v11, 2u);
    }

    sub_1000F380C();
    swift_allocError();
    *v12 = 2;
    swift_willThrow();
  }

  else
  {
    v13 = objc_allocWithZone(PCProximityEvent);
    v14 = String._bridgeToObjectiveC()();
    v15 = [v13 initWithType:1 mediaRemoteID:v14 info:0];

    [v15 setExpectsDisplayContext:1];
    sub_10001BD68(v15);
  }
}

uint64_t sub_1000F34F8@<X0>(void *a1@<X0>, void (*a2)(void *)@<X1>, uint64_t *a3@<X8>)
{
  v5 = a1[1];
  v6 = a1[2];
  v8[0] = *a1;
  v4 = v8[0];
  v8[1] = v5;
  v8[2] = v6;
  a2(v8);
  *a3 = v4;
  a3[1] = v5;
  a3[2] = v6;
  sub_1000E6048(v4);
}

double sub_1000F3574(uint64_t a1)
{
  v2 = v1;
  if (qword_100338F90 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_1003439E8);
  sub_1000E6048(a1);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  sub_1000E605C(a1);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v7 = 136315394;
    *(v7 + 4) = sub_100017494(0xD000000000000024, 0x800000010029FB50, &v15);
    *(v7 + 12) = 2080;
    v8 = sub_100042408(a1);
    v10 = sub_100017494(v8, v9, &v15);

    *(v7 + 14) = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: event=%s", v7, 0x16u);
    swift_arrayDestroy();
  }

  *(v1 + 96) = (a1 - 1) <= 1;

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 67109120;
    *(v12 + 4) = *(v2 + 96);

    _os_log_impl(&_mh_execute_header, oslog, v11, "migrateInProgress updated to '%{BOOL}d'", v12, 8u);
  }

  else
  {
  }

  return result;
}

unint64_t sub_1000F380C()
{
  result = qword_100343BC0;
  if (!qword_100343BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100343BC0);
  }

  return result;
}

id sub_1000F3898@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, void *a3@<X8>)
{
  type metadata accessor for Logger();
  v7 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  *a3 = v7;

  return v7;
}

id sub_1000F3964@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v7 = *a1;
  v6 = v7;
  v4(&v7);
  *a2 = v6;

  return v6;
}

uint64_t sub_1000F39D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    swift_errorRetain();
    sub_100035D04(&qword_10033E818, qword_100274990);
    return CheckedContinuation.resume(throwing:)();
  }

  else
  {

    sub_100035D04(&qword_10033E818, qword_100274990);
    return CheckedContinuation.resume(returning:)();
  }
}

uint64_t sub_1000F3A68()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343C98);
  sub_100003078(v0, qword_100343C98);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000F3AE8()
{
  v1 = v0;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *(v0 + 16) = v2;
  if (qword_100338FA0 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100343C98);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Init", v6, 2u);
  }

  v7 = [objc_opt_self() currentDevice];
  [v7 setBatteryMonitoringEnabled:1];

  v8 = [objc_opt_self() defaultCenter];
  [v8 addObserver:v1 selector:"batteryStateDidChange" name:UIDeviceBatteryStateDidChangeNotification object:0];

  sub_1000F3DA0();
  return v1;
}

uint64_t sub_1000F3C84()
{
  v1 = v0;
  if (qword_100338FA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343C98);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1000F3D6C()
{
  sub_1000F3C84();

  return swift_deallocClassInstance();
}

double sub_1000F3DA0()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  aBlock[4] = sub_1000F427C;
  aBlock[5] = v0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307788;
  v9 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_10007E5B8();
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10003F184();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v6 + 8))(v8, v5);

  return result;
}

double sub_1000F4028(uint64_t a1)
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 batteryState];

  v4 = v3 != 1;
  v5 = *(a1 + 16);
  *(v5 + 24) = v4;

  sub_10005E50C();
  v13 = *(v5 + 24);
  CurrentValueSubject.send(_:)();

  if (qword_100338FA0 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100343C98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v12 = v10;
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000017, 0x800000010029FC80, &v12);
    *(v9 + 12) = 1024;
    *(v9 + 14) = *(*(a1 + 16) + 24);

    _os_log_impl(&_mh_execute_header, v7, v8, "%s: isCharging=%{BOOL}d", v9, 0x12u);
    sub_10000903C(v10);
  }

  else
  {
  }

  return result;
}

uint64_t Publisher.conditionalDebounce<A>(for:tolerance:scheduler:options:when:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v66 = a5;
  v64 = a4;
  v65 = a6;
  v63 = a3;
  v60 = a1;
  v61 = a2;
  v67 = a9;
  v54 = a8;
  swift_getAssociatedTypeWitness();
  v13 = type metadata accessor for Optional();
  v71 = *(v13 - 8);
  v72 = v13;
  v62 = *(v71 + 64);
  v14 = __chkstk_darwin(v13);
  v70 = &v45 - v15;
  v68 = *(a8 - 8);
  v58 = *(v68 + 64);
  __chkstk_darwin(v14);
  v69 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = a11;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = type metadata accessor for Optional();
  v48 = v18;
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  v21 = __chkstk_darwin(v18);
  v23 = &v45 - v22;
  v50 = &v45 - v22;
  v47 = AssociatedTypeWitness;
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v45 - v26;
  v49 = &v45 - v26;
  v52 = a10;
  v51 = a7;
  swift_getAssociatedTypeWitness();
  v55 = type metadata accessor for AnyPublisher();
  v28 = type metadata accessor for Publishers.Map();
  v29 = *(v28 - 8);
  v56 = v28;
  v57 = v29;
  __chkstk_darwin(v28);
  v53 = &v45 - v30;
  (*(v24 + 16))(v27, v60, AssociatedTypeWitness);
  v31 = v19;
  v46 = v19;
  (*(v19 + 16))(v23, v61, v18);
  v32 = v68;
  v33 = v54;
  (*(v68 + 16))(v69, v63, v54);
  v34 = v71;
  (*(v71 + 16))(v70, v64, v72);
  v35 = (*(v24 + 80) + 64) & ~*(v24 + 80);
  v36 = (v25 + *(v31 + 80) + v35) & ~*(v31 + 80);
  v37 = (v20 + *(v32 + 80) + v36) & ~*(v32 + 80);
  v38 = (v58 + *(v34 + 80) + v37) & ~*(v34 + 80);
  v39 = swift_allocObject();
  *(v39 + 2) = v51;
  *(v39 + 3) = v33;
  v40 = v59;
  *(v39 + 4) = v52;
  *(v39 + 5) = v40;
  v41 = v65;
  *(v39 + 6) = v66;
  *(v39 + 7) = v41;
  (*(v24 + 32))(&v39[v35], v49, v47);
  (*(v46 + 32))(&v39[v36], v50, v48);
  (*(v68 + 32))(&v39[v37], v69, v33);
  (*(v71 + 32))(&v39[v38], v70, v72);

  v42 = v53;
  Publisher.map<A>(_:)();

  v43 = v56;
  swift_getWitnessTable();
  swift_getWitnessTable();
  Publisher<>.switchToLatest()();
  return (*(v57 + 8))(v42, v43);
}

uint64_t sub_1000F48A0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v34 = a6;
  v35 = a7;
  v33 = a5;
  v31 = a4;
  v37 = a3;
  v38 = a2;
  v39 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin(AssociatedTypeWitness);
  v16 = &v28 - v15;
  v17 = type metadata accessor for Just();
  v36 = *(v17 - 8);
  __chkstk_darwin(v17);
  v19 = &v28 - v18;
  WitnessTable = swift_getWitnessTable();
  v40 = v17;
  v41 = a10;
  v30 = a10;
  v42 = WitnessTable;
  v43 = a12;
  v32 = a12;
  v21 = type metadata accessor for Publishers.Delay();
  v29 = *(v21 - 8);
  __chkstk_darwin(v21);
  v23 = &v28 - v22;
  v24 = v38(a1);
  (*(v14 + 16))(v16, a1, AssociatedTypeWitness);
  Just.init(_:)();
  v25 = (v36 + 8);
  if (v24)
  {
    Publisher.delay<A>(for:tolerance:scheduler:options:)();
    (*v25)(v19, v17);
    swift_getWitnessTable();
    v26 = Publisher.eraseToAnyPublisher()();
    result = (*(v29 + 8))(v23, v21);
  }

  else
  {
    v26 = Publisher.eraseToAnyPublisher()();
    result = (*v25)(v19, v17);
  }

  *v39 = v26;
  return result;
}

uint64_t sub_1000F4BB8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 64) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Optional() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = (v11 + *(v10 + 64) + *(*(v4 - 8) + 80)) & ~*(*(v4 - 8) + 80);
  v13 = *(*(v4 - 8) + 64);
  swift_getAssociatedTypeWitness();
  v14 = *(type metadata accessor for Optional() - 8);
  return sub_1000F48A0(a1, *(v2 + 48), *(v2 + 56), v2 + v8, v2 + v11, v2 + v12, v2 + ((v12 + v13 + *(v14 + 80)) & ~*(v14 + 80)), a2, v4, v6, v5);
}

uint64_t sub_1000F4DF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_10012B694();

  return sub_1000F4E30(a1, a2);
}

uint64_t sub_1000F4E30(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100339B30, &unk_1002704F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000F4EA0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100343D78);
  sub_100003078(v0, qword_100343D78);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_1000F4F54()
{
  _StringGuts.grow(_:)(40);

  if (*(v0 + 32))
  {

    v1 = String.init<A>(describing:)();
    v3 = v2;
  }

  else
  {
    v1 = 7104878;
    v3 = 0xE300000000000000;
  }

  v4 = v3;
  String.append(_:)(*&v1);

  v5._countAndFlagsBits = 0x3D6E65706F20;
  v5._object = 0xE600000000000000;
  String.append(_:)(v5);
  if (*v0)
  {
    v6 = 5457241;
  }

  else
  {
    v6 = 20302;
  }

  if (*v0)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE200000000000000;
  }

  v8 = v7;
  String.append(_:)(*&v6);

  v9._countAndFlagsBits = 0x3D6B737020;
  v9._object = 0xE500000000000000;
  String.append(_:)(v9);
  if (*(v0 + 16))
  {
    v10 = 1701670771;
  }

  else
  {
    v10 = 7104878;
  }

  if (*(v0 + 16))
  {
    v11 = 0xE400000000000000;
  }

  else
  {
    v11 = 0xE300000000000000;
  }

  v12 = v11;
  String.append(_:)(*&v10);

  v13._countAndFlagsBits = 62;
  v13._object = 0xE100000000000000;
  String.append(_:)(v13);
  return 0xD000000000000016;
}

BOOL sub_1000F50C8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_1000F5EB8(v5, v7);
}

uint64_t sub_1000F5114()
{
  sub_10002689C(v0[2], v0[3]);
  sub_10002689C(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

void sub_1000F5180()
{
  type metadata accessor for WiFiMonitorModel();
  v0 = swift_allocObject();
  *(v0 + 16) = 1;
  type metadata accessor for WiFiMonitorState();
  v1 = swift_allocObject();
  *(v1 + 16) = 0u;
  *(v1 + 32) = 0u;
  v3 = 0uLL;
  v5 = 0;
  v6 = 0;
  v4 = 1;
  sub_100035D04(&qword_100344028, &qword_100279DA8);
  swift_allocObject();
  *(v1 + 48) = sub_100032500(&v3, 0, 0, 0, 0, 0);
  type metadata accessor for WiFiMonitor();
  v2 = swift_allocObject();
  sub_1000F5260(v0, v1);
  sub_1000F54A8();
  qword_10038B138 = v2;
}

uint64_t sub_1000F5260(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  *(v2 + 32) = 0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100343D78);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Init", v9, 2u);
  }

  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  return v3;
}

uint64_t sub_1000F5358()
{
  v1 = v0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  return v1;
}

uint64_t sub_1000F5450()
{
  sub_1000F5358();

  return swift_deallocClassInstance();
}

void sub_1000F54A8()
{
  v1 = v0;
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v19);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = *(v1 + 24);
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = v7[2];
  v10 = v7[3];
  v7[2] = sub_1000F6534;
  v7[3] = v8;

  sub_10002689C(v9, v10);

  v11 = swift_allocObject();
  swift_weakInit();
  v12 = v7[4];
  v13 = v7[5];
  v7[4] = sub_1000F653C;
  v7[5] = v11;

  sub_10002689C(v12, v13);

  v14 = [objc_allocWithZone(CUWiFiManager) init];
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  [v14 setDispatchQueue:qword_10038B5B8];
  v23 = sub_1000F59D8;
  v24 = 0;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100018AB8;
  v22 = &unk_100307888;
  v15 = _Block_copy(&v19);
  [v14 setInvalidationHandler:v15];
  _Block_release(v15);
  v23 = sub_1000F6544;
  v24 = v1;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100018AB8;
  v22 = &unk_1003078B0;
  v16 = _Block_copy(&v19);

  [v14 setWifiStateChangedHandler:v16];
  _Block_release(v16);
  v23 = sub_1000F6548;
  v24 = v1;
  v19 = _NSConcreteStackBlock;
  v20 = 1107296256;
  v21 = sub_100124498;
  v22 = &unk_1003078D8;
  v17 = _Block_copy(&v19);

  [v14 activateWithCompletion:v17];
  _Block_release(v17);
  v18 = *(v1 + 32);
  *(v1 + 32) = v14;
}

void sub_1000F58A0(uint64_t a2@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000F6330(v8);
    v6 = v8[1];
    v7 = v8[0];
    v3 = v9;

    v4 = v6;
    v5 = v7;
  }

  else
  {
    v3 = 0;
    v4 = xmmword_100271890;
    v5 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v4;
  *(a2 + 32) = v3;
}

void sub_1000F5934(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000F6550(a1, a2, v12);
    v10 = v12[1];
    v11 = v12[0];
    v7 = v13;

    v8 = v10;
    v9 = v11;
  }

  else
  {
    v7 = 0;
    v8 = xmmword_100271890;
    v9 = 0uLL;
  }

  *a4 = v9;
  *(a4 + 16) = v8;
  *(a4 + 32) = v7;
}

void sub_1000F59D8()
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100343D78);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "### wifiManager invalidated", v2, 2u);
  }
}

void sub_1000F5AC0(uint64_t a1)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_100343D78);
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v2 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      *v3 = 138412290;
      swift_errorRetain();
      v5 = _swift_stdlib_bridgeErrorToNSError();
      *(v3 + 4) = v5;
      *v4 = v5;
      _os_log_impl(&_mh_execute_header, oslog, v2, "### Activate wifiManager failed: %@", v3, 0xCu);
      sub_1000097E8(v4, &qword_100339940, &unk_100272C50);
    }

    else
    {
    }
  }

  else
  {
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100343D78);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Activated wifiManager.", v9, 2u);
    }

    sub_1000F5D30();
  }
}

double sub_1000F5D30()
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100343D78);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v6[0] = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0xD000000000000017, 0x800000010029FDE0, v6);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  sub_1000F6330(v6);

  sub_1001C1780(v6);

  return result;
}

BOOL sub_1000F5EB8(void *a1, void *a2)
{
  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a2[2];
  if (v3)
  {
    if (!v4)
    {
      return 0;
    }

    if (a1[1] != a2[1] || v3 != v4)
    {
      v6 = a1;
      v7 = a2;
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
      a2 = v7;
      v9 = v8;
      a1 = v6;
      if ((v9 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v4)
  {
    return 0;
  }

  v10 = a1[4];
  v11 = a2[4];
  if (!v10)
  {
    return !v11;
  }

  return v11 && (a1[3] == a2[3] && v10 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
}

void sub_1000F5F84(uint64_t a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  if (a2)
  {
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100343D78);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_7;
    }

    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = a2;
    _os_log_impl(&_mh_execute_header, v6, v7, "### Error: %d", v8, 8u);
LABEL_6:

LABEL_7:

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 1;
    goto LABEL_8;
  }

  if (!a1)
  {
    if (qword_100338FA8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_100003078(v23, qword_100343D78);
    v6 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v6, v24))
    {
      goto LABEL_7;
    }

    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v6, v24, "### No wifiInfo", v25, 2u);
    goto LABEL_6;
  }

  v29 = 1852141679;
  v30 = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v15 = sub_1000851E8(v28), (v16 & 1) == 0))
  {
    sub_1000516C4(v28);
    goto LABEL_15;
  }

  sub_10001766C(*(a1 + 56) + 32 * v15, &v29);
  sub_1000516C4(v28);
  if (!swift_dynamicCast())
  {
LABEL_15:
    v9 = 0;
    goto LABEL_16;
  }

  v9 = v26;
LABEL_16:
  v29 = 0x7274536B7370;
  v30 = 0xE600000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v17 = sub_1000851E8(v28), (v18 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v17, &v29);
    sub_1000516C4(v28);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v10 = v26;
    }

    else
    {
      v10 = 0;
    }

    if (v19)
    {
      v13 = v27;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_1000516C4(v28);
    v10 = 0;
    v13 = 0;
  }

  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v20 = sub_1000851E8(v28), (v21 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v20, &v29);
    sub_1000516C4(v28);
    v22 = swift_dynamicCast();
    v11 = 1684632435;
    v12 = 0xE400000000000000;
    if (!v22)
    {
      v11 = 0;
      v12 = 0;
    }
  }

  else
  {
    sub_1000516C4(v28);
    v11 = 0;
    v12 = 0;
  }

LABEL_8:
  *a3 = v9;
  a3[1] = v10;
  a3[2] = v13;
  a3[3] = v11;
  a3[4] = v12;
}

double sub_1000F6330@<D0>(uint64_t a1@<X8>)
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100343D78);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *&v11[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0xD000000000000022, 0x800000010029FE00, v11);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  v7 = WiFiCopyCurrentNetworkInfoEx();
  if (!v7 || (objc_opt_self(), !swift_dynamicCastObjCClass()) || (*&v11[0] = 0, static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)(), (v8 = *&v11[0]) == 0))
  {
    v8 = 0;
  }

  sub_1000F5F84(v8, 0, v11);

  result = *v11;
  v10 = v11[1];
  *a1 = v11[0];
  *(a1 + 16) = v10;
  *(a1 + 32) = v12;
  return result;
}

double sub_1000F6550@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (qword_100338FA8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_100343D78);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *&v15[0] = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD00000000000001ALL, 0x800000010029FE30, v15);
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100017494(a1, a2, v15);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: ssid=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  *&v15[0] = 1684632435;
  *(&v15[0] + 1) = 0xE400000000000000;
  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = a1;
  *(inited + 80) = a2;

  sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_100344038, qword_100279DB0);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v12 = WiFiCopyNetworkInfo();

  if (v12)
  {
    objc_opt_self();
    if (!swift_dynamicCastObjCClass())
    {

LABEL_10:
      v12 = 0;
      goto LABEL_11;
    }

    *&v15[0] = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

    v12 = *&v15[0];
    if (!*&v15[0])
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  sub_1000F5F84(v12, 0, v15);

  result = *v15;
  v14 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v14;
  *(a3 + 32) = v16;
  return result;
}

double sub_1000F6880@<D0>(uint64_t a3@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  result = *&v5;
  *a3 = v5;
  *(a3 + 16) = v6;
  *(a3 + 32) = v7;
  return result;
}

uint64_t sub_1000F6908(__int128 *a1, uint64_t *a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000F699C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100344040);
  sub_100003078(v0, qword_100344040);
  return Logger.init(subsystem:category:)();
}

void *sub_1000F6A1C(uint64_t a1)
{
  v2 = v1;
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 88) = 1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 1;
  *(v1 + 112) = 0;
  type metadata accessor for HandoffDevice(0);
  type metadata accessor for UUID();
  sub_100018A70(&qword_100344208, type metadata accessor for HandoffDevice, &unk_100272FC8);
  KeyPath = swift_getKeyPath();
  sub_100035D04(&qword_100344210, &unk_10027EEB0);
  swift_allocObject();
  v5 = sub_10006CF14(KeyPath, 0);

  v2[15] = v5;
  if (qword_1003391E0 != -1)
  {
    swift_once();
  }

  v6 = qword_10038B5B0;
  v2[16] = qword_10038B5B0;
  v2[17] = &_swiftEmptySetSingleton;
  v2[2] = a1;
  v7 = v6;
  return v2;
}

uint64_t sub_1000F6B6C()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10034A450, &qword_100278A90);
  v72 = *(v2 - 8);
  __chkstk_darwin(v2);
  v71 = &v51 - v3;
  v4 = sub_100035D04(&qword_100344218, &qword_10027A048);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v51 - v6;
  v8 = sub_100035D04(&qword_100344220, &unk_10027A050);
  v69 = *(v8 - 8);
  v70 = v8;
  __chkstk_darwin(v8);
  v68 = &v51 - v9;
  v10 = sub_100035D04(&qword_10034C680, &qword_100270390);
  __chkstk_darwin(v10 - 8);
  v61 = &v51 - v11;
  v12 = sub_100035D04(&qword_10033E6F0, &qword_10027A060);
  v62 = *(v12 - 8);
  v63 = v12;
  __chkstk_darwin(v12);
  v14 = &v51 - v13;
  v15 = sub_100035D04(&qword_100344228, &unk_10027A068);
  v65 = *(v15 - 8);
  v66 = v15;
  __chkstk_darwin(v15);
  v64 = &v51 - v16;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_100003078(v17, qword_100344040);
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v18, v19, "Activate", v20, 2u);
  }

  v21 = [objc_allocWithZone(SFProximityClient) init];
  v22 = *(v1 + 112);
  *(v1 + 112) = v21;
  v23 = v21;

  sub_1000FA160(v21);
  v67 = v1;
  v24 = *(v1 + 16);
  v75[0] = *(v24 + 32);
  v25 = sub_100035D04(&qword_100339828, &unk_100270300);
  v26 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300, &protocol conformance descriptor for PassthroughSubject<A, B>);
  v59 = v25;
  v58 = v26;
  v76[0] = Publisher.eraseToAnyPublisher()();
  __chkstk_darwin(v76[0]);
  *(&v51 - 4) = type metadata accessor for HandoffDevice(0);
  *(&v51 - 3) = type metadata accessor for UUID();
  *(&v51 - 2) = sub_100018A70(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v60 = v24;
  v27 = v24 + qword_100346AF8;
  os_unfair_lock_lock((v24 + qword_100346AF8));
  v75[0] = *(v27 + 8);

  swift_getAtKeyPath();

  v28 = v75[5];
  os_unfair_lock_unlock(v27);

  v29 = *(v28 + 16);
  v73 = v5;
  v74 = v4;
  if (v29)
  {
    v30 = sub_100009194(v29, 0);
    v31 = sub_100009A04(v75, v30 + 4, v29, v28);
    sub_100004F98(v75[0]);
    if (v31 == v29)
    {
      goto LABEL_9;
    }

    __break(1u);
  }

  v30 = _swiftEmptyArrayStorage;
LABEL_9:
  v56 = v2;
  v57 = v7;
  v75[0] = v30;
  v32 = sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_100035D04(&qword_10033BAA0, &unk_100274880);
  v33 = sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10, &protocol conformance descriptor for AnyPublisher<A, B>);
  sub_10000E244(&qword_10033E750, &qword_10033BAA0, &unk_100274880, &protocol conformance descriptor for [A]);
  v34 = v14;
  v55 = v32;
  v54 = v33;
  Publisher.prepend<A>(_:)();

  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v35 = qword_10038B5B8;
  v75[0] = qword_10038B5B8;
  v36 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v37 = *(v36 - 8);
  v52 = *(v37 + 56);
  v53 = v37 + 56;
  v38 = v61;
  v52(v61, 1, 1, v36);
  v51 = sub_100035CB8();
  sub_10000E244(&qword_10033E758, &qword_10033E6F0, &qword_10027A060, &protocol conformance descriptor for Publishers.Concatenate<A, B>);
  sub_100018A70(&qword_10034B420, sub_100035CB8, &protocol conformance descriptor for OS_dispatch_queue);
  v39 = v35;
  v40 = v63;
  v41 = v64;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v38, &qword_10034C680, &qword_100270390);
  (*(v62 + 8))(v34, v40);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100344230, &qword_100344228, &unk_10027A068, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v42 = v66;
  Publisher<>.sink(receiveValue:)();

  (*(v65 + 8))(v41, v42);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v75[0] = *(v60 + 48);
  v75[0] = Publisher.eraseToAnyPublisher()();
  v76[0] = v39;
  v52(v38, 1, 1, v36);
  v43 = v68;
  Publisher.receive<A>(on:options:)();
  sub_1000097E8(v38, &qword_10034C680, &qword_100270390);

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100344238, &qword_100344220, &unk_10027A050, &protocol conformance descriptor for Publishers.ReceiveOn<A, B>);
  v44 = v70;
  Publisher<>.sink(receiveValue:)();

  (*(v69 + 8))(v43, v44);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100339130 != -1)
  {
    swift_once();
  }

  v75[0] = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v45 = Publisher.eraseToAnyPublisher()();

  v75[0] = v45;
  sub_100035D04(&unk_1003436E0, &unk_100276210);
  sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210, &protocol conformance descriptor for AnyPublisher<A, B>);
  v46 = v71;
  Publisher<>.removeDuplicates()();

  sub_10000E244(&qword_10034A4C0, &qword_10034A450, &qword_100278A90, &protocol conformance descriptor for Publishers.RemoveDuplicates<A>);
  v47 = v57;
  v48 = v56;
  Publisher.dropFirst(_:)();
  (*(v72 + 8))(v46, v48);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100344240, &qword_100344218, &qword_10027A048, &protocol conformance descriptor for Publishers.Drop<A>);
  v49 = v74;
  Publisher<>.sink(receiveValue:)();

  (*(v73 + 8))(v47, v49);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_100345FE0, &qword_1002795C0);
  swift_allocObject();
  return Future.init(_:)();
}

double sub_1000F78D8(uint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  v4 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    a3(v4);
  }

  return result;
}

double sub_1000F794C(unsigned __int8 *a1, uint64_t a2)
{
  v2 = *a1;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_100344040);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v2;
    _os_log_impl(&_mh_execute_header, v4, v5, "uwbRangingAvailable changed: %{BOOL}d", v6, 8u);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1000F8610();
  }

  return result;
}

double sub_1000F7A78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = *(Strong + 112);
    v8 = v7;

    if (v7)
    {
      v9 = swift_allocObject();
      *(v9 + 16) = sub_1000FBAA8;
      *(v9 + 24) = v5;
      aBlock[4] = sub_1000FBAB4;
      aBlock[5] = v9;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100124498;
      aBlock[3] = &unk_100307E10;
      v10 = _Block_copy(aBlock);

      [v8 activateWithCompletion:v10];
      _Block_release(v10);

      return result;
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000F7BE0(uint64_t a1, void (*a2)(uint64_t, uint64_t))
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100344040);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "### Activate failed: %@", v7, 0xCu);
      sub_1000097E8(v8, &qword_100339940, &unk_100272C50);
    }

    swift_errorRetain();
    a2(a1, 1);
  }

  else
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_100003078(v11, qword_100344040);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "Activated", v14, 2u);
    }

    return (a2)(0, 0);
  }
}

uint64_t sub_1000F7E5C()
{
  v1 = v0;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344040);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  sub_1000F7FB4();

  sub_1000AEDE0(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72));

  return v1;
}

uint64_t sub_1000F7F80()
{
  sub_1000F7E5C();

  return swift_deallocClassInstance();
}

uint64_t sub_1000F7FB4()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v27 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v26 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100344040);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Invalidate", v11, 2u);
  }

  v12 = v1[14];
  if (v12)
  {
    [v12 invalidate];
    v13 = v1[14];
    v1[14] = 0;
  }

  v14 = v1[15];
  __chkstk_darwin(v12);
  *(&v26 - 4) = type metadata accessor for HandoffDevice(0);
  *(&v26 - 3) = type metadata accessor for UUID();
  *(&v26 - 2) = sub_100018A70(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  swift_getKeyPath();
  v15 = v14 + qword_100346AF8;

  os_unfair_lock_lock(v15);
  aBlock[0] = *(v15 + 8);

  swift_getAtKeyPath();

  v16 = v30;
  os_unfair_lock_unlock(v15);

  v17 = *(v16 + 16);
  v28 = v5;
  if (v17)
  {
    v18 = sub_100009194(v17, 0);
    v19 = sub_100009A04(aBlock, v18 + 4, v17, v16);
    result = sub_100004F98(aBlock[0]);
    if (v19 != v17)
    {
      __break(1u);
      return result;
    }

    v21 = v2;
  }

  else
  {
    v21 = v2;

    v18 = _swiftEmptyArrayStorage;
  }

  v22 = v3;
  if (qword_1003391E8 != -1)
  {
    swift_once();
  }

  v23 = swift_allocObject();
  *(v23 + 16) = v18;
  aBlock[4] = sub_1000FBA30;
  aBlock[5] = v23;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307D98;
  v24 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  v25 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v24);
  (*(v22 + 8))(v25, v21);
  (*(v26 + 8))(v7, v28);

  sub_1001AC430();

  swift_beginAccess();
  v1[17] = &_swiftEmptySetSingleton;
}

void sub_1000F8534(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      return;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
  }

  else
  {
    v3 = 0;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      ++v3;

      sub_100005000(0);
    }

    while (v2 != v3);
  }
}

void sub_1000F8610()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_10033D440, &unk_1002730B0);
  __chkstk_darwin(v2 - 8);
  v40 = &v39 - v3;
  if (qword_100338FB8 != -1)
  {
    goto LABEL_38;
  }

  while (1)
  {
    v4 = type metadata accessor for Logger();
    sub_100003078(v4, qword_100344040);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v44[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_100017494(0xD000000000000025, 0x800000010029FF60, v44);
      _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
      sub_10000903C(v8);
    }

    v9 = *(v1 + 16);
    __chkstk_darwin(v10);
    *(&v39 - 4) = type metadata accessor for HandoffDevice(0);
    *(&v39 - 3) = type metadata accessor for UUID();
    v37 = sub_100018A70(&qword_100339848, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
    swift_getKeyPath();
    v11 = v9 + qword_100346AF8;
    os_unfair_lock_lock(v11);
    v44[0] = *(v11 + 8);

    swift_getAtKeyPath();

    v12 = v42;
    os_unfair_lock_unlock(v11);

    v13 = *(v12 + 16);
    if (v13)
    {
      break;
    }

    v14 = _swiftEmptyArrayStorage;
    if ((_swiftEmptyArrayStorage & 0x8000000000000000) != 0)
    {
      goto LABEL_39;
    }

LABEL_9:
    if ((v14 & 0x4000000000000000) != 0)
    {
LABEL_39:
      v16 = _CocoaArrayWrapper.endIndex.getter();
      if (!v16)
      {
LABEL_40:

        return;
      }

      goto LABEL_11;
    }

    v16 = *(v14 + 16);
    if (!v16)
    {
      goto LABEL_40;
    }

LABEL_11:
    v17 = 0;
    v18 = v14 & 0xC000000000000001;
    v41 = v14;
    while (v18)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v19 = v20;
      v22 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_36;
      }

LABEL_17:
      v23 = sub_100010FF4(v20, v21);
      if ((v23 & 8) == 0)
      {
        if (qword_100339130 != -1)
        {
          swift_once();
        }

        if (*(off_10034A1A8 + 24) != 1)
        {
          goto LABEL_33;
        }

        if (qword_100338F18 != -1)
        {
          swift_once();
        }

        v24 = *(qword_10038B0B8 + 1536);
        v25 = sub_1000177F8();

        if (v25 == 2)
        {
          v26 = sub_100017C84();
          v25 = v26;
        }

        v14 = v41;
        if ((v23 & 2) == 0 || (v25 & 1) == 0)
        {
LABEL_33:
          sub_1000F9264(v19);
          goto LABEL_13;
        }

        v28 = sub_100017E14(v26, v27);
        if (v28)
        {
          if (v28 <= 2299999)
          {
            goto LABEL_33;
          }
        }

        else
        {
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v29 = v44[0];
          if (!v44[0])
          {
            goto LABEL_33;
          }

          v30 = [v44[0] firmwareVersion];

          if (!v30)
          {
            goto LABEL_33;
          }

          v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v33 = v32;

          v44[0] = v31;
          v44[1] = v33;
          v42 = 875443249;
          v43 = 0xE400000000000000;
          v34 = type metadata accessor for Locale();
          v35 = v40;
          (*(*(v34 - 8) + 56))(v40, 1, 1, v34);
          v37 = sub_10001369C();
          v38 = v37;
          v36 = StringProtocol.compare<A>(_:options:range:locale:)();
          sub_1000097E8(v35, &qword_10033D440, &unk_1002730B0);

          if (v36 > 1)
          {
            goto LABEL_33;
          }
        }
      }

      sub_100016F18(v19);
LABEL_13:

      ++v17;
      if (v22 == v16)
      {
        goto LABEL_40;
      }
    }

    if (v17 >= *(v14 + 16))
    {
      goto LABEL_37;
    }

    v19 = *(v14 + 8 * v17 + 32);

    v22 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_17;
    }

LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    swift_once();
  }

  v14 = sub_100009194(*(v12 + 16), 0);
  v15 = sub_100009A04(v44, (v14 + 32), v13, v12);
  sub_100004F98(v44[0]);
  if (v15 == v13)
  {
    if (v14 < 0)
    {
      goto LABEL_39;
    }

    goto LABEL_9;
  }

  __break(1u);
}

void sub_1000F8C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    if (!a1)
    {
      v39 = v10;
      v41 = v6;
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100003078(v26, qword_100344040);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      v29 = os_log_type_enabled(v27, v28);
      v40 = v9;
      if (v29)
      {
        v30 = swift_slowAlloc();
        v38 = v14;
        v31 = v30;
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136315138;
        v34 = sub_1000092A0(v32, v33);
        v36 = sub_100017494(v34, v35, aBlock);

        *(v31 + 4) = v36;
        _os_log_impl(&_mh_execute_header, v27, v28, "Successfully suppressed v1 for %s", v31, 0xCu);
        sub_10000903C(v32);
      }

      sub_100049880(a3);

      if (qword_1003391E8 != -1)
      {
        swift_once();
      }

      aBlock[4] = sub_1000FBA10;
      aBlock[5] = a3;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100018AB8;
      aBlock[3] = &unk_100307D48;
      v37 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v42 = _swiftEmptyArrayStorage;
      sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
      sub_100035D04(&unk_100343710, &qword_100271800);
      sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v37);

      (*(v41 + 8))(v8, v5);
      (*(v39 + 8))(v12, v40);
      goto LABEL_14;
    }

    swift_errorRetain();
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_100003078(v15, qword_100344040);
    swift_errorRetain();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v18 = 136315394;
      v22 = sub_1000092A0(v20, v21);
      v24 = sub_100017494(v22, v23, aBlock);

      *(v18 + 4) = v24;
      *(v18 + 12) = 2112;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 14) = v25;
      *v19 = v25;
      _os_log_impl(&_mh_execute_header, v16, v17, "### Failed to suppress %s: %@", v18, 0x16u);
      sub_1000097E8(v19, &qword_100339940, &unk_100272C50);

      sub_10000903C(v20);

LABEL_14:

      return;
    }
  }
}

double sub_1000F9264(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v30 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v28 = *(v7 - 8);
  v29 = v7;
  __chkstk_darwin(v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100003078(v10, qword_100344040);

  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v27 = v1;
    aBlock[0] = v14;
    *v13 = 136315394;
    v15 = sub_100017494(0xD00000000000001BLL, 0x800000010029FF20, aBlock);
    *(v13 + 4) = v15;
    *(v13 + 12) = 2080;
    v17 = sub_1000092A0(v15, v16);
    v19 = sub_100017494(v17, v18, aBlock);

    *(v13 + 14) = v19;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s: device=%s", v13, 0x16u);
    swift_arrayDestroy();
    v2 = v27;
  }

  v20 = *(v2 + 128);
  v21 = swift_allocObject();
  swift_weakInit();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = a1;
  aBlock[4] = sub_1000FB9D8;
  aBlock[5] = v22;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307C08;
  v23 = _Block_copy(aBlock);

  v24 = v20;

  static DispatchQoS.unspecified.getter();
  v31 = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v23);

  (*(v30 + 8))(v6, v4);
  (*(v28 + 8))(v9, v29);

  return result;
}

double sub_1000F96D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v5 = Strong;

    v6 = sub_100018F00(a2);

    if (!v6)
    {
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_100003078(v27, qword_100344040);
      v23 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&_mh_execute_header, v23, v28, "Not already suppressed", v29, 2u);
      }

      goto LABEL_15;
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    sub_10000DF0C(v7, v8);
    v10 = v9;

    if (v10)
    {
      v11 = *(v5 + 112);
      if (v11)
      {
        v12 = qword_100338FB8;
        v13 = v11;
        if (v12 != -1)
        {
          swift_once();
        }

        v14 = type metadata accessor for Logger();
        sub_100003078(v14, qword_100344040);

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v30 = v13;
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          aBlock[0] = v18;
          *v17 = 136315138;
          v20 = sub_1000092A0(v18, v19);
          v22 = sub_100017494(v20, v21, aBlock);

          *(v17 + 4) = v22;
          _os_log_impl(&_mh_execute_header, v15, v16, "Stop suppressing v1 for %s", v17, 0xCu);
          sub_10000903C(v18);

          v13 = v30;
        }

        v23 = String._bridgeToObjectiveC()();

        v24 = swift_allocObject();
        swift_weakInit();
        v25 = swift_allocObject();
        *(v25 + 16) = v24;
        *(v25 + 24) = a2;
        aBlock[4] = sub_1000FB9E0;
        aBlock[5] = v25;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_100124498;
        aBlock[3] = &unk_100307C58;
        v26 = _Block_copy(aBlock);

        [v13 stopSuppressingDevice:v23 completion:v26];

        _Block_release(v26);

LABEL_15:
        return result;
      }
    }
  }

  return result;
}

double sub_1000F9ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v42 = v8;
    v43 = v9;
    v40 = v12;
    v41 = v10;
    if (a1)
    {
      v39 = v6;
      swift_errorRetain();
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v14 = type metadata accessor for Logger();
      sub_100003078(v14, qword_100344040);
      swift_errorRetain();

      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v38 = v5;
        v18 = v17;
        v19 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        aBlock[0] = v20;
        *v18 = 136315394;
        v22 = sub_1000092A0(v20, v21);
        v24 = sub_100017494(v22, v23, aBlock);

        *(v18 + 4) = v24;
        *(v18 + 12) = 2112;
        swift_errorRetain();
        v25 = _swift_stdlib_bridgeErrorToNSError();
        *(v18 + 14) = v25;
        *v19 = v25;
        _os_log_impl(&_mh_execute_header, v15, v16, "### Failed to stop suppressing %s: %@", v18, 0x16u);
        sub_1000097E8(v19, &qword_100339940, &unk_100272C50);

        sub_10000903C(v20);

        v5 = v38;
      }

      else
      {
      }

      v6 = v39;
    }

    else
    {
      if (qword_100338FB8 != -1)
      {
        swift_once();
      }

      v26 = type metadata accessor for Logger();
      sub_100003078(v26, qword_100344040);

      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315138;
        v32 = sub_1000092A0(v30, v31);
        v34 = sub_100017494(v32, v33, aBlock);

        *(v29 + 4) = v34;
        _os_log_impl(&_mh_execute_header, v27, v28, "Successfully stop suppressing v1 for %s", v29, 0xCu);
        sub_10000903C(v30);
      }
    }

    sub_1002096F0(a3);

    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    aBlock[4] = sub_1000FB9E8;
    aBlock[5] = a3;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100018AB8;
    aBlock[3] = &unk_100307C80;
    v35 = _Block_copy(aBlock);

    v36 = v40;
    static DispatchQoS.unspecified.getter();
    v44 = _swiftEmptyArrayStorage;
    sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100035D04(&unk_100343710, &qword_100271800);
    sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
    v37 = v42;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v35);

    (*(v6 + 8))(v37, v5);
    (*(v41 + 8))(v36, v43);
  }

  return result;
}

double sub_1000FA110(uint64_t a1, char a2)
{

  sub_100005000(a2);

  return result;
}

void sub_1000FA160(void *a1)
{
  if (a1)
  {
    v2 = v1;
    v3 = qword_100338FB8;
    v4 = a1;
    if (v3 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100344040);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Configuring SFProximityClient", v8, 2u);
    }

    [v4 setDispatchQueue:*(v2 + 128)];
    v31 = sub_1000FA844;
    v32 = 0;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100018AB8;
    v30 = &unk_1003079B0;
    v9 = _Block_copy(&v27);
    [v4 setInvalidationHandler:v9];
    _Block_release(v9);
    v31 = sub_100019538;
    v32 = v2;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100018AB8;
    v30 = &unk_1003079D8;
    v10 = _Block_copy(&v27);

    [v4 setInterruptionHandler:v10];
    _Block_release(v10);
    v11 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB910;
    v32 = v11;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307A28;
    v12 = _Block_copy(&v27);

    [v4 setDeviceEnteredImmediateHandler:v12];
    _Block_release(v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB930;
    v32 = v13;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307A50;
    v14 = _Block_copy(&v27);

    [v4 setDeviceExitedImmediateHandler:v14];
    _Block_release(v14);
    v15 = swift_allocObject();
    swift_weakInit();
    v31 = sub_100019630;
    v32 = v15;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307A78;
    v16 = _Block_copy(&v27);

    [v4 setDeviceEnteredNearbyHandler:v16];
    _Block_release(v16);
    v17 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB950;
    v32 = v17;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307AA0;
    v18 = _Block_copy(&v27);

    [v4 setDeviceExitedNearbyHandler:v18];
    _Block_release(v18);
    v19 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB970;
    v32 = v19;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307AC8;
    v20 = _Block_copy(&v27);

    [v4 setDeviceWasSelectedHandler:v20];
    _Block_release(v20);
    v21 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB990;
    v32 = v21;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307AF0;
    v22 = _Block_copy(&v27);

    [v4 setDeviceWillTriggerHandler:v22];
    _Block_release(v22);
    v23 = swift_allocObject();
    swift_weakInit();
    v31 = sub_1000FB9B0;
    v32 = v23;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_100019540;
    v30 = &unk_100307B18;
    v24 = _Block_copy(&v27);

    [v4 setDeviceDidUntriggerHandler:v24];
    _Block_release(v24);
    v25 = swift_allocObject();
    swift_weakInit();
    v31 = sub_10001C238;
    v32 = v25;
    v27 = _NSConcreteStackBlock;
    v28 = 1107296256;
    v29 = sub_1000FB3A8;
    v30 = &unk_100307B40;
    v26 = _Block_copy(&v27);

    [v4 setDeviceWasDismissedHandlerEx:v26];
    _Block_release(v26);
  }
}

void sub_1000FA844()
{
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_100344040);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "SFProximityClient invalidated", v2, 2u);
  }
}

uint64_t sub_1000FA92C(uint64_t a1)
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v35 = *(v1 - 8);
  v36 = v1;
  __chkstk_darwin(v1);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for DispatchQoS();
  v33 = *(v3 - 8);
  v34 = v3;
  __chkstk_darwin(v3);
  v31 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchTimeInterval();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v30 = type metadata accessor for DispatchTime();
  v9 = *(v30 - 8);
  v10 = __chkstk_darwin(v30);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v27 - v13;
  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_100344040);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "### SFProximityClient interrupted", v18, 2u);
  }

  sub_100035CB8();
  v29 = static OS_dispatch_queue.main.getter();
  static DispatchTime.now()();
  *v8 = 1;
  (*(v6 + 104))(v8, enum case for DispatchTimeInterval.seconds(_:), v5);
  + infix(_:_:)();
  (*(v6 + 8))(v8, v5);
  v28 = *(v9 + 8);
  v19 = v30;
  v28(v12, v30);
  v20 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_1000FB9D0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100018AB8;
  aBlock[3] = &unk_100307BB8;
  v21 = _Block_copy(aBlock);

  v22 = v31;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_100018A70(&qword_10033D8C0, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100035D04(&unk_100343710, &qword_100271800);
  sub_10000E244(&qword_10033D8D0, &unk_100343710, &qword_100271800, &protocol conformance descriptor for [A]);
  v23 = v32;
  v24 = v36;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v25 = v29;
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v21);

  (*(v35 + 8))(v23, v24);
  (*(v33 + 8))(v22, v34);
  return (v28)(v14, v19);
}

void sub_1000FAE84(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_100003078(v1, qword_100344040);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Reactivating...", v4, 2u);
    }

    sub_1000F7FB4();
    sub_1000F6B6C();
    sub_100035D04(&qword_100345FE0, &qword_1002795C0);
    sub_10000E244(&qword_1003436B0, &qword_100345FE0, &qword_1002795C0, &protocol conformance descriptor for Future<A, B>);
    Publisher.sink(receiveCompletion:receiveValue:)();
  }

  else
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_100003078(v5, qword_100344040);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "### interruptionHandler: nil self", v8, 2u);
    }
  }
}

void sub_1000FB0FC(uint64_t *a1)
{
  if (!*a1)
  {
    if (qword_100338FB8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100344040);
    oslog = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(oslog, v7))
    {
      goto LABEL_11;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v7, "Reactivated", v8, 2u);
LABEL_10:

LABEL_11:

    return;
  }

  if (qword_100338FB8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100003078(v1, qword_100344040);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    *v3 = 138412290;
    v5 = _swift_stdlib_bridgeErrorToNSError();
    *(v3 + 4) = v5;
    *v4 = v5;
    _os_log_impl(&_mh_execute_header, oslog, v2, "### Reactivated: %@", v3, 0xCu);
    sub_1000097E8(v4, &qword_100339940, &unk_100272C50);

    goto LABEL_10;
  }
}

double sub_1000FB324(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_100019650(6, a1, a2, a3, 0);
  }

  return result;
}

uint64_t sub_1000FB3A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  v4(v5, v7, a3);
}

uint64_t sub_1000FB424()
{
  v1 = *v0;
  v2 = 0x6972746E55646964;
  v3 = 0x696D736944736177;
  if (v1 != 6)
  {
    v3 = 0x63656C6553736177;
  }

  v4 = 0x6E4579627261656ELL;
  if (v1 != 4)
  {
    v4 = 0x784579627261656ELL;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x676972546C6C6977;
  }

  if (*v0 > 1u)
  {
    v2 = 0x74616964656D6D69;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SFNotificationDismissReason.description.getter(uint64_t a1)
{
  v1 = sub_1000FB5B4(a1);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

__CFString *sub_1000FB5B4(uint64_t a1)
{
  v1 = a1 - 1;
  if ((a1 - 1) > 3)
  {
    v2 = @"?";
    v3 = @"?";
  }

  else
  {
    v2 = off_100307EC8[v1];
    v3 = off_100307EE8[v1];
  }

  v4 = v2;

  return v3;
}

uint64_t sub_1000FB61C()
{
  v1 = sub_1000FB5B4(*v0);
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v2;
}

BOOL sub_1000FB6A0(uint64_t a1)
{

  swift_getAtKeyPath();

  v2 = v1 + qword_100346AF8;
  os_unfair_lock_lock((v1 + qword_100346AF8));
  v3 = *(v2 + 8);
  if (*(v3 + 16) && (v4 = sub_100004B58(v8, v9), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + 8 * v4);
  }

  else
  {
    v6 = 0;
  }

  os_unfair_lock_unlock(v2);

  return v6 != 0;
}

void sub_1000FB764(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    swift_getKeyPath();
    swift_getKeyPath();

    static Published.subscript.getter();

    v13 = sub_10000DF0C(v11, v12);
    v15 = v14;

    if (v15)
    {
      if (v13 == a2 && v15 == a3)
      {

        return;
      }

      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v9)
      {
LABEL_15:

        return;
      }
    }

    v6 &= v6 - 1;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
      goto LABEL_15;
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t getEnumTagSinglePayload for SharingProxy.EventType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingProxy.EventType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000FBC10()
{
  result = qword_100344248;
  if (!qword_100344248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344248);
  }

  return result;
}

uint64_t sub_1000FBD00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 25705 && a2 == 0xE200000000000000)
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

uint64_t sub_1000FBD80(uint64_t a1)
{
  v2 = sub_1000FC290();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FBDBC(uint64_t a1)
{
  v2 = sub_1000FC290();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FBDF8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100035D04(&qword_100344250, &qword_10027A200);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v13 - v7;
  sub_10000EBC0(a1, a1[3]);
  sub_1000FC290();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000903C(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = sub_10000903C(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t sub_1000FBF74(void *a1)
{
  v2 = sub_100035D04(&qword_100344260, &qword_10027A208);
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v7 - v4;
  sub_10000EBC0(a1, a1[3]);
  sub_1000FC290();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1000FC0CC()
{
  v2 = *v0;
  v1 = v0[1];
  sub_100035D04(&qword_100344030, &unk_10027A140);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;

  AnyHashable.init<A>(_:)();
  *(inited + 96) = &type metadata for String;
  *(inited + 72) = v2;
  *(inited + 80) = v1;
  v4 = sub_10024D824(inited);
  swift_setDeallocating();
  sub_1000FC194(inited + 32);
  return v4;
}

uint64_t sub_1000FC194(uint64_t a1)
{
  v2 = sub_100035D04(&qword_100344038, qword_100279DB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000FC1FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1000FC244(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1000FC290()
{
  result = qword_100344258;
  if (!qword_100344258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344258);
  }

  return result;
}

unint64_t sub_1000FC2F8()
{
  result = qword_100344268;
  if (!qword_100344268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344268);
  }

  return result;
}

unint64_t sub_1000FC350()
{
  result = qword_100344270;
  if (!qword_100344270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344270);
  }

  return result;
}

unint64_t sub_1000FC3A8()
{
  result = qword_100344278;
  if (!qword_100344278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344278);
  }

  return result;
}

uint64_t sub_1000FC3FC()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100344280);
  sub_100003078(v0, qword_100344280);
  return Logger.init(subsystem:category:)();
}

id sub_1000FC474()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem;
  v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem);
  }

  else
  {
    v4 = objc_allocWithZone(PLPillContentItem);
    v5 = String._bridgeToObjectiveC()();
    v6 = [v4 initWithText:v5 style:1];

    v7 = *(v0 + v1);
    *(v0 + v1) = v6;
    v3 = v6;

    v2 = 0;
  }

  v8 = v2;
  return v3;
}

id sub_1000FC528(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = &v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitle];
  *v6 = 0;
  *(v6 + 1) = 0;
  *&v2[OBJC_IVAR____TtC17proximitycontrold8PillView____lazy_storage___primaryItem] = 0;
  v7 = OBJC_IVAR____TtC17proximitycontrold8PillView_leadingImageView;
  *&v2[v7] = [objc_allocWithZone(UIImageView) initWithImage:0];
  *&v2[OBJC_IVAR____TtC17proximitycontrold8PillView_subtitleTask] = 0;
  if (qword_100338FC0 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100003078(v8, qword_100344280);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Init", v11, 2u);
  }

  v12 = &v3[OBJC_IVAR____TtC17proximitycontrold8PillView_title];
  *v12 = a1;
  *(v12 + 1) = a2;
  v13 = *&v3[v7];
  v18.receiver = v3;
  v18.super_class = type metadata accessor for PillView();
  v14 = objc_msgSendSuper2(&v18, "initWithLeadingAccessoryView:trailingAccessoryView:", v13, 0);
  LODWORD(v15) = 1144750080;
  [v14 setContentHuggingPriority:1 forAxis:v15];
  LODWORD(v16) = 1144750080;
  [v14 setContentHuggingPriority:0 forAxis:v16];
  [v14 setClipsToBounds:0];

  return v14;
}

id sub_1000FC70C()
{
  v1 = v0;
  if (qword_100338FC0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344280);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for PillView();
  return objc_msgSendSuper2(&v7, "dealloc");
}

void sub_1000FC910(char a1)
{
  v2 = v1;
  if (qword_100338FC0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100344280);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v15 = v8;
    *v7 = 136315138;
    *(v7 + 4) = sub_100017494(0xD000000000000011, 0x80000001002A0070, &v15);
    _os_log_impl(&_mh_execute_header, v5, v6, "%s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v9 = [v2 superview];
  if (v9)
  {

    sub_100035D04(&qword_10033AE40, &qword_1002719E0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100271B90;
    *(v10 + 32) = sub_1000FC474();
    v11 = objc_allocWithZone(PLPillContentItem);

    v12 = String._bridgeToObjectiveC()();

    v13 = [v11 initWithText:v12 style:2];

    *(v10 + 40) = v13;
    sub_1000FCBF4();
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v2 setCenterContentItems:isa animated:a1 & 1];
  }
}

unint64_t sub_1000FCBF4()
{
  result = qword_10033B110;
  if (!qword_10033B110)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10033B110);
  }

  return result;
}

uint64_t sub_1000FCC40()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_1003442E8);
  sub_100003078(v0, qword_1003442E8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000FCCC0()
{
  type metadata accessor for SystemLockStateMonitor();
  v0 = swift_allocObject();
  result = sub_1000FCCFC();
  qword_10038B140 = v0;
  return result;
}

uint64_t sub_1000FCCFC()
{
  sub_100035D04(&qword_1003443E0, qword_10027A410);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *(v0 + 16) = v1;
  v2 = [objc_allocWithZone(CUSystemMonitor) init];
  *(v0 + 24) = v2;
  v3 = qword_1003391E8;
  v4 = v2;
  if (v3 != -1)
  {
    swift_once();
  }

  [v4 setDispatchQueue:qword_10038B5B8];

  v5 = *(v0 + 24);
  v16 = sub_1000FD384;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_1003080A0;
  v6 = _Block_copy(&v12);
  v7 = v5;

  [v7 setSystemLockStateChangedHandler:v6];
  _Block_release(v6);

  v8 = *(v0 + 24);
  v16 = sub_1000FD38C;
  v17 = v0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_100018AB8;
  v15 = &unk_1003080C8;
  v9 = _Block_copy(&v12);

  v10 = v8;

  [v10 activateWithCompletion:v9];
  _Block_release(v9);

  return v0;
}

double sub_1000FCF10(uint64_t a1)
{
  v2 = [*(a1 + 24) systemLockState];
  if (qword_100338FC8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_1003442E8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = CUSystemLockState.description.getter(v2);
    v10 = sub_100017494(v8, v9, &v13);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "System lock state updated: %s", v6, 0xCu);
    sub_10000903C(v7);
  }

  v11 = *(a1 + 16);
  *(v11 + 24) = v2;

  sub_10005EA38();
  v14 = *(v11 + 24);
  CurrentValueSubject.send(_:)();

  return result;
}

double sub_1000FD0AC(uint64_t a1)
{
  *(*(a1 + 16) + 24) = [*(a1 + 24) systemLockState];

  sub_10005EA38();
  CurrentValueSubject.send(_:)();

  return result;
}

uint64_t sub_1000FD120()
{
  [*(v0 + 24) invalidate];

  return swift_deallocClassInstance();
}

uint64_t sub_1000FD170(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return sub_1000CCEF4(a1, WitnessTable);
}

uint64_t CUSystemLockState.description.getter(int a1)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E75;
    }

    if (a1 == 1)
    {
      return 0x64656C6261736964;
    }
  }

  else
  {
    switch(a1)
    {
      case 2:
        return 0x676E696B636F6CLL;
      case 3:
        return 0x64656B636F6CLL;
      case 4:
        return 0x64656B636F6C6E75;
    }
  }

  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  return 0x6E776F6E6B6E7540;
}

unint64_t sub_1000FD308(uint64_t a1)
{
  result = sub_1000FD330();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000FD330()
{
  result = qword_1003443D8;
  if (!qword_1003443D8)
  {
    type metadata accessor for SystemLockStateMonitor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003443D8);
  }

  return result;
}

uint64_t sub_1000FD3AC(void *a1, int a2)
{
  v18 = a2;
  v3 = sub_100035D04(&qword_100344420, &qword_10027A530);
  v16 = *(v3 - 8);
  v17 = v3;
  __chkstk_darwin(v3);
  v5 = &v15 - v4;
  v15 = sub_100035D04(&qword_100344428, &qword_10027A538);
  v6 = *(v15 - 8);
  __chkstk_darwin(v15);
  v8 = &v15 - v7;
  v9 = sub_100035D04(&qword_100344430, &qword_10027A540);
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v15 - v11;
  sub_10000EBC0(a1, a1[3]);
  sub_1000FDE4C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    sub_1000FDEA0();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    sub_1000FDEF4();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t sub_1000FD668(uint64_t a1)
{
  v2 = sub_1000FDEF4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD6A4(uint64_t a1)
{
  v2 = sub_1000FDEF4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD6E0()
{
  if (*v0)
  {
    return 1768319351;
  }

  else
  {
    return 0x746F6F7465756C62;
  }
}

uint64_t sub_1000FD718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746F6F7465756C62 && a2 == 0xE900000000000068;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1000FD7FC(uint64_t a1)
{
  v2 = sub_1000FDE4C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD838(uint64_t a1)
{
  v2 = sub_1000FDE4C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD874(uint64_t a1)
{
  v2 = sub_1000FDEA0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000FD8B0(uint64_t a1)
{
  v2 = sub_1000FDEA0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000FD8EC@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1000FD990(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

unint64_t sub_1000FD93C()
{
  result = qword_1003443E8;
  if (!qword_1003443E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003443E8);
  }

  return result;
}

uint64_t sub_1000FD990(void *a1)
{
  v2 = sub_100035D04(&qword_1003443F0, &qword_10027A510);
  v23 = *(v2 - 8);
  v24 = v2;
  __chkstk_darwin(v2);
  v4 = &v21 - v3;
  v5 = sub_100035D04(&qword_1003443F8, &qword_10027A518);
  v22 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v21 - v6;
  v8 = sub_100035D04(&qword_100344400, &unk_10027A520);
  v25 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = &v21 - v9;
  sub_10000EBC0(a1, a1[3]);
  sub_1000FDE4C();
  v11 = v26;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v11)
  {
    return sub_10000903C(a1);
  }

  v26 = a1;
  v12 = v24;
  v13 = KeyedDecodingContainer.allKeys.getter();
  v14 = (2 * *(v13 + 16)) | 1;
  v27 = v13;
  v28 = v13 + 32;
  v29 = 0;
  v30 = v14;
  v15 = sub_10021800C();
  if (v15 == 2 || v29 != v30 >> 1)
  {
    v17 = type metadata accessor for DecodingError();
    swift_allocError();
    v19 = v18;
    sub_100035D04(&qword_10033EA78, &qword_100275A60);
    *v19 = &type metadata for RapportDeviceType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v17 - 8) + 104))(v19, enum case for DecodingError.typeMismatch(_:), v17);
    swift_willThrow();
    (*(v25 + 8))(v10, v8);
    swift_unknownObjectRelease();
    a1 = v26;
    return sub_10000903C(a1);
  }

  v31 = v15;
  if (v15)
  {
    v32 = 1;
    sub_1000FDEA0();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v23 + 8))(v4, v12);
  }

  else
  {
    v32 = 0;
    sub_1000FDEF4();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v25;
    (*(v22 + 8))(v7, v5);
  }

  (*(v16 + 8))(v10, v8);
  swift_unknownObjectRelease();
  sub_10000903C(v26);
  return v31 & 1;
}

unint64_t sub_1000FDE4C()
{
  result = qword_100344408;
  if (!qword_100344408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344408);
  }

  return result;
}

unint64_t sub_1000FDEA0()
{
  result = qword_100344410;
  if (!qword_100344410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344410);
  }

  return result;
}

unint64_t sub_1000FDEF4()
{
  result = qword_100344418;
  if (!qword_100344418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344418);
  }

  return result;
}

unint64_t sub_1000FDF7C()
{
  result = qword_100344438;
  if (!qword_100344438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344438);
  }

  return result;
}

unint64_t sub_1000FDFD4()
{
  result = qword_100344440;
  if (!qword_100344440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344440);
  }

  return result;
}

unint64_t sub_1000FE02C()
{
  result = qword_100344448;
  if (!qword_100344448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344448);
  }

  return result;
}

unint64_t sub_1000FE084()
{
  result = qword_100344450;
  if (!qword_100344450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344450);
  }

  return result;
}

unint64_t sub_1000FE0DC()
{
  result = qword_100344458;
  if (!qword_100344458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344458);
  }

  return result;
}

unint64_t sub_1000FE134()
{
  result = qword_100344460;
  if (!qword_100344460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344460);
  }

  return result;
}

unint64_t sub_1000FE18C()
{
  result = qword_100344468;
  if (!qword_100344468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100344468);
  }

  return result;
}

uint64_t sub_1000FE1E0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100344470);
  sub_100003078(v0, qword_100344470);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000FE260(uint64_t a1, uint64_t a2)
{
  v58 = a2;
  v59 = a1;
  v3 = type metadata accessor for UUID();
  v55 = *(v3 - 8);
  v56 = v3;
  __chkstk_darwin(v3);
  v54 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = sub_100035D04(&qword_10033D5F0, &unk_10027A850);
  v5 = *(v57 - 8);
  __chkstk_darwin(v57);
  v7 = &v53 - v6;
  v8 = sub_100035D04(&qword_10033FA38, &qword_100276800);
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v53 - v10;
  v12 = sub_100035D04(&qword_10033D5B8, &unk_10027A860);
  v13 = *(v12 - 8);
  __chkstk_darwin(v12);
  v15 = &v53 - v14;
  type metadata accessor for MockHandoffDeviceServiceClient();
  swift_allocObject();
  v16 = sub_100253C94();
  v60 = v2;
  *(v2 + 32) = v16;
  *(v2 + 40) = &_swiftEmptySetSingleton;
  type metadata accessor for Identity(0);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 20) = 256;
  v18 = OBJC_IVAR____TtC17proximitycontrold8Identity__bluetoothDevice;
  v62[0] = 0;
  sub_100035D04(&qword_10033D5D0, &unk_100273240);
  Published.init(initialValue:)();
  (*(v13 + 32))(v17 + v18, v15, v12);
  v19 = OBJC_IVAR____TtC17proximitycontrold8Identity__homekitAccessory;
  v62[0] = 0;
  sub_100035D04(&qword_10033F6A8, &qword_100276540);
  Published.init(initialValue:)();
  (*(v9 + 32))(v17 + v19, v11, v8);
  v20 = OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_idsDevice) = 0;
  v21 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredMediaRouteID);
  *v21 = 0;
  v21[1] = 0;
  v22 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_discoveredColorCode);
  *v22 = 0;
  v22[1] = 0;
  v23 = OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_nearbyID) = 0;
  v24 = OBJC_IVAR____TtC17proximitycontrold8Identity__rapportBTDevice;
  v62[0] = 0;
  sub_100035D04(&qword_10033D608, &unk_100273250);
  Published.init(initialValue:)();
  v25 = *(v5 + 32);
  v26 = v57;
  v25(v17 + v24, v7, v57);
  v27 = OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_rapportIdentities) = 0;
  v28 = OBJC_IVAR____TtC17proximitycontrold8Identity__wifiDevice;
  v62[0] = 0;
  Published.init(initialValue:)();
  v25(v17 + v28, v7, v26);
  v29 = v60;
  v30 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideColorCode);
  *v30 = 0;
  v30[1] = 0;
  v31 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v31 = 0;
  v31[1] = 0;
  v32 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v32 = 0;
  v32[1] = 0;
  v33 = (v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideName);
  *v33 = 0;
  v33[1] = 0;
  *(v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 0;
  v34 = v17 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v34 = 0;
  *(v34 + 8) = 1;
  swift_getKeyPath();
  swift_getKeyPath();
  v62[0] = 0;

  static Published.subscript.setter();
  swift_getKeyPath();
  swift_getKeyPath();
  v62[0] = 0;

  static Published.subscript.setter();
  v35 = *(v17 + v20);
  *(v17 + v20) = 0;

  swift_getKeyPath();
  swift_getKeyPath();
  v62[0] = 0;

  static Published.subscript.setter();
  *(v17 + v27) = 0;
  v36 = v58;

  swift_getKeyPath();
  swift_getKeyPath();
  v62[0] = 0;

  static Published.subscript.setter();
  v37 = *(v17 + v23);
  *(v17 + v23) = 0;

  v62[0] = v17;
  v62[1] = 0;
  v62[2] = 0;
  v62[3] = v36;
  v63 = 1;
  type metadata accessor for HandoffDevice(0);
  swift_allocObject();

  v38 = sub_10007639C(v62);

  *(v29 + 16) = v59;
  *(v29 + 24) = v38;
  v39 = qword_100338FD8;

  if (v39 != -1)
  {
    swift_once();
  }

  v40 = type metadata accessor for Logger();
  sub_100003078(v40, qword_100344470);

  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    v61 = v44;
    *v43 = 136315138;
    v45 = v54;
    v46 = v55;
    v47 = v56;
    (*(v55 + 16))(v54, *(v60 + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_id, v56);
    sub_100100DA8();
    v48 = dispatch thunk of CustomStringConvertible.description.getter();
    v50 = v49;
    (*(v46 + 8))(v45, v47);
    v51 = sub_100017494(v48, v50, &v61);

    *(v43 + 4) = v51;
    _os_log_impl(&_mh_execute_header, v41, v42, "Init: deviceID=%s", v43, 0xCu);
    sub_10000903C(v44);
  }

  return v60;
}

double sub_1000FEA10()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100344540, &qword_10027A990);
  v128 = *(v2 - 8);
  v129 = v2;
  __chkstk_darwin(v2);
  v127 = &v114 - v3;
  v4 = sub_100035D04(&qword_100344548, &qword_10027A998);
  v125 = *(v4 - 8);
  v126 = v4;
  __chkstk_darwin(v4);
  v124 = &v114 - v5;
  v6 = type metadata accessor for Logger();
  v135 = *(v6 - 8);
  __chkstk_darwin(v6);
  v118 = v7;
  v132 = &v114 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_100035D04(&qword_100344550, &qword_10027A9A0);
  v122 = *(v8 - 8);
  v123 = v8;
  __chkstk_darwin(v8);
  v121 = &v114 - v9;
  v120 = sub_100035D04(&qword_100344558, &qword_10027A9A8);
  v119 = *(v120 - 8);
  __chkstk_darwin(v120);
  v11 = &v114 - v10;
  if (qword_100338FD8 != -1)
  {
    swift_once();
  }

  v133 = v6;
  v131 = sub_100003078(v6, qword_100344470);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v138 = v15;
    *v14 = 136315138;
    *(v14 + 4) = sub_100017494(0x6574617669746361, 0xEA00000000002928, &v138);
    _os_log_impl(&_mh_execute_header, v12, v13, "%s", v14, 0xCu);
    sub_10000903C(v15);
  }

  v137 = *(v1 + 32);
  v16 = v137[3];
  v17 = swift_isaMask;
  v18 = *(v16 + *((swift_isaMask & *v16) + 0x70));
  if (v18)
  {
    v19 = v16;
    v20 = String._bridgeToObjectiveC()();
    [v18 removeObjectForKey:v20];

    v17 = swift_isaMask;
  }

  v21 = v137[7];
  v22 = *(v21 + *((v17 & *v21) + 0x70));
  if (v22)
  {
    v23 = v21;
    v24 = String._bridgeToObjectiveC()();
    [v22 removeObjectForKey:v24];
  }

  v130 = v1;
  v25 = *(v1 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v26 = v138;
  v27 = UUID.uuidString.getter();
  v28 = (v26 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideMediaRouteID);
  *v28 = v27;
  v28[1] = v29;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(v138 + OBJC_IVAR____TtC17proximitycontrold8Identity_enableModelBasedRangingCapabilities) = 1;

  v30 = v137[4];
  v31 = *((swift_isaMask & *v30) + 0x88);
  if (*(v30 + v31))
  {
    v32 = *(v30 + v31);
  }

  else
  {
    v33 = v30;
    LOBYTE(v138) = sub_1000031CC() & 1;
    sub_100035D04(&unk_1003436D0, &qword_1002702F0);
    swift_allocObject();
    v32 = CurrentValueSubject.init(_:)();
    *(v30 + v31) = v32;

    v34 = *(v33 + *((swift_isaMask & *v33) + 0x70));
    if (v34)
    {
      v35 = String._bridgeToObjectiveC()();
      [v34 addObserver:v33 forKeyPath:v35 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v32;
  v36 = *(v130 + 16);
  v37 = swift_allocObject();
  *(v37 + 16) = v36;
  *(v37 + 24) = v25;

  swift_retain_n();

  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v38 = v137[2];
  v39 = *((swift_isaMask & *v38) + 0x88);
  if (*(v38 + v39))
  {
    v40 = *(v38 + v39);
  }

  else
  {
    v41 = v38;
    v138 = sub_100063400();
    v139 = v42;
    sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
    swift_allocObject();
    v40 = CurrentValueSubject.init(_:)();
    *(v38 + v39) = v40;

    v43 = *(v41 + *((swift_isaMask & *v41) + 0x70));
    if (v43)
    {
      v44 = String._bridgeToObjectiveC()();
      [v43 addObserver:v41 forKeyPath:v44 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v40;

  v45 = sub_100035D04(&qword_10033C2F0, &qword_100272AF0);
  v46 = sub_10000E244(&unk_10034C790, &qword_10033C2F0, &qword_100272AF0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  v136 = v45;
  v134 = v46;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v47 = v137[3];
  v48 = *((swift_isaMask & *v47) + 0x88);
  if (*(v47 + v48))
  {
    v49 = *(v47 + v48);
  }

  else
  {
    v50 = v47;
    v138 = sub_100062F0C();
    LOBYTE(v139) = v51 & 1;
    sub_100035D04(&qword_100344560, &qword_10027A9F8);
    swift_allocObject();
    v49 = CurrentValueSubject.init(_:)();
    *(v47 + v48) = v49;

    v52 = *(v50 + *((swift_isaMask & *v50) + 0x70));
    if (v52)
    {
      v53 = String._bridgeToObjectiveC()();
      [v52 addObserver:v50 forKeyPath:v53 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v49;

  sub_100035D04(&qword_100344560, &qword_10027A9F8);
  sub_10000E244(&qword_100344568, &qword_100344560, &qword_10027A9F8, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v54 = v137[5];
  v55 = *((swift_isaMask & *v54) + 0x88);
  if (*(v54 + v55))
  {
    v56 = *(v54 + v55);
  }

  else
  {
    v57 = v54;
    v138 = sub_100063400();
    v139 = v58;
    swift_allocObject();
    v56 = CurrentValueSubject.init(_:)();
    *(v54 + v55) = v56;

    v59 = *(v57 + *((swift_isaMask & *v57) + 0x70));
    if (v59)
    {
      v60 = String._bridgeToObjectiveC()();
      [v59 addObserver:v57 forKeyPath:v60 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v56;

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v61 = v137[6];
  v62 = *((swift_isaMask & *v61) + 0x88);
  if (*(v61 + v62))
  {
    v63 = *(v61 + v62);
  }

  else
  {
    v64 = v61;
    v138 = sub_100063400();
    v139 = v65;
    swift_allocObject();
    v63 = CurrentValueSubject.init(_:)();
    *(v61 + v62) = v63;

    v66 = *(v64 + *((swift_isaMask & *v64) + 0x70));
    if (v66)
    {
      v67 = String._bridgeToObjectiveC()();
      [v66 addObserver:v64 forKeyPath:v67 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v63;

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v68 = v137[7];
  v69 = *((swift_isaMask & *v68) + 0x88);
  if (*(v68 + v69))
  {
    v70 = *(v68 + v69);
  }

  else
  {
    v71 = v68;
    LOBYTE(v138) = sub_100062A50();
    sub_100035D04(&qword_100339978, &unk_10027AA00);
    swift_allocObject();
    v70 = CurrentValueSubject.init(_:)();
    *(v68 + v69) = v70;

    v72 = *(v71 + *((swift_isaMask & *v71) + 0x70));
    if (v72)
    {
      v73 = String._bridgeToObjectiveC()();
      [v72 addObserver:v71 forKeyPath:v73 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v70;

  sub_100035D04(&qword_100339978, &unk_10027AA00);
  sub_10000E244(&qword_100344570, &qword_100339978, &unk_10027AA00, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v74 = v137[8];
  v75 = *((swift_isaMask & *v74) + 0x88);
  if (*(v74 + v75))
  {
    v76 = *(v74 + v75);
  }

  else
  {
    v77 = v74;
    v138 = sub_10005FFC0();
    LOBYTE(v139) = v78 & 1;
    sub_100035D04(&qword_1003397F8, &qword_1002702D0);
    swift_allocObject();
    v76 = CurrentValueSubject.init(_:)();
    *(v74 + v75) = v76;

    v79 = *(v77 + *((swift_isaMask & *v77) + 0x70));
    if (v79)
    {
      v80 = String._bridgeToObjectiveC()();
      [v79 addObserver:v77 forKeyPath:v80 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v76;

  sub_100035D04(&qword_1003397F8, &qword_1002702D0);
  sub_100035D04(&qword_1003396D0, &qword_10027AA10);
  sub_10000E244(&qword_100344578, &qword_1003397F8, &qword_1002702D0, &protocol conformance descriptor for CurrentValueSubject<A, B>);
  Publisher.map<A>(_:)();

  v81 = static os_log_type_t.info.getter();
  v82 = v135;
  v83 = *(v135 + 16);
  v84 = v132;
  v85 = v133;
  v116 = v135 + 16;
  v115 = v83;
  v83(v132, v131, v133);
  v86 = (*(v82 + 80) + 64) & ~*(v82 + 80);
  v87 = v86 + v118;
  v114 = *(v82 + 80);
  v88 = swift_allocObject();
  *(v88 + 16) = sub_100100874;
  *(v88 + 24) = xmmword_10027A7D0;
  *(v88 + 40) = 0xEA0000000000203ALL;
  *(v88 + 48) = 0;
  *(v88 + 56) = 0xE000000000000000;
  v89 = *(v82 + 32);
  v117 = v86;
  v90 = v88 + v86;
  v91 = v89;
  v135 = v82 + 32;
  v89(v90, v84, v85);
  v118 = v87;
  *(v88 + v87) = v81;
  sub_10000E244(&qword_100344580, &qword_100344558, &qword_10027A9A8, &protocol conformance descriptor for Publishers.Map<A, B>);
  v93 = v120;
  v92 = v121;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100344588, &qword_100344550, &qword_10027A9A0, &protocol conformance descriptor for Publishers.Map<A, B>);
  v94 = v123;
  v95 = Publisher.eraseToAnyPublisher()();
  (*(v122 + 8))(v92, v94);
  (*(v119 + 8))(v11, v93);
  v138 = v95;

  sub_100035D04(&qword_100344590, &qword_10027AA18);
  sub_10000E244(&qword_100344598, &qword_100344590, &qword_10027AA18, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  v123 = v25;

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v96 = v137[9];
  v97 = *((swift_isaMask & *v96) + 0x88);
  if (*(v96 + v97))
  {
    v98 = *(v96 + v97);
  }

  else
  {
    v99 = v96;
    v138 = sub_100063400();
    v139 = v100;
    swift_allocObject();
    v98 = CurrentValueSubject.init(_:)();
    *(v96 + v97) = v98;

    v101 = *(v99 + *((swift_isaMask & *v99) + 0x70));
    if (v101)
    {
      v102 = String._bridgeToObjectiveC()();
      [v101 addObserver:v99 forKeyPath:v102 options:4 context:0];
    }

    else
    {
    }
  }

  v138 = v98;

  sub_100035D04(&qword_1003396B0, &qword_1002731A0);
  v103 = v124;
  Publisher.map<A>(_:)();

  v104 = static os_log_type_t.info.getter();
  v105 = v132;
  v106 = v133;
  v115(v132, v131, v133);
  v107 = v118;
  v108 = swift_allocObject();
  *(v108 + 16) = sub_100100940;
  *(v108 + 24) = xmmword_10027A7E0;
  *(v108 + 40) = 0xEB00000000203A61;
  *(v108 + 48) = 0;
  *(v108 + 56) = 0xE000000000000000;
  v91(v108 + v117, v105, v106);
  *(v108 + v107) = v104;
  sub_10000E244(&qword_1003445A0, &qword_100344548, &qword_10027A998, &protocol conformance descriptor for Publishers.Map<A, B>);
  v110 = v126;
  v109 = v127;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_1003445A8, &qword_100344540, &qword_10027A990, &protocol conformance descriptor for Publishers.Map<A, B>);
  v111 = v129;
  v112 = Publisher.eraseToAnyPublisher()();
  (*(v128 + 8))(v109, v111);
  (*(v125 + 8))(v103, v110);
  v138 = v112;
  sub_100035D04(&qword_10033D500, &qword_1002731A8);
  sub_10000E244(&qword_10033D508, &qword_10033D500, &qword_1002731A8, &protocol conformance descriptor for AnyPublisher<A, B>);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return result;
}

double sub_10010033C(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  if (qword_100338FD8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_100344470);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    *(v8 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v6, v7, "New enabled: %{BOOL}d", v8, 8u);
  }

  if (v4)
  {
    sub_100049880(a3);
  }

  else
  {
    sub_1002096F0(a3);
  }

  return result;
}

double sub_10010046C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *&v3 = *a1;
  v4 = v3;

  if (v2)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4;
  }

  sub_10000D8F4(v5 | (v2 << 32));

  return result;
}

double sub_1001004E0(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v4 = (v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_overrideModel);
  *v4 = v3;
  v4[1] = v2;

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v5 = v7 + OBJC_IVAR____TtC17proximitycontrold8Identity_cachedDeviceAsset;
  *v5 = 0;
  *(v5 + 8) = 1;

  return result;
}

uint64_t sub_100100604(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = a1[1];
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v6 = (v8 + *a3);
  *v6 = v5;
  v6[1] = v4;
}

double sub_1001006B4(char *a1, uint64_t a2)
{
  v2 = *a1;

  sub_10000D4C4(v2);

  return result;
}

void sub_100100704(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 0;
  if (*(a1 + 8))
  {
    goto LABEL_5;
  }

  v9 = *a1;
  if (v9 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else if (v9 <= 0x7FFFFFFF)
  {
    UUID.init()();
    UUID.uuidString.getter();
    (*(v5 + 8))(v7, v4);
    v10 = objc_allocWithZone(PCTelephonyActivity);
    v11 = String._bridgeToObjectiveC()();

    v8 = [v10 initWithCallUUID:v11 conversationUUID:0 isVideo:v9 == 3 service:v9];

LABEL_5:
    *a2 = v8;
    return;
  }

  __break(1u);
}

double sub_100100888(void **a1, uint64_t a2)
{
  v2 = *a1;

  sub_100100BFC(v2, &qword_1003396D0, &qword_10027AA10);

  return result;
}

id sub_1001008F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v6 = v4 & 0xFFFFFFFFFFFFLL;
  }

  if (v6)
  {
    result = sub_1001081CC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_100100954(void **a1, unint64_t *a2, void *a3)
{
  v3 = *a1;
  if (!*a1)
  {
    return 7104878;
  }

  sub_100003118(0, a2, a3);
  v4 = v3;
  return String.init<A>(describing:)();
}

double sub_1001009B0(void **a1, uint64_t a2)
{
  v2 = *a1;

  sub_100100BFC(v2, &qword_1003396B0, &qword_1002731A0);

  return result;
}

uint64_t sub_100100A18()
{
  v1 = v0;
  if (qword_100338FD8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100344470);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  swift_beginAccess();
  *(v1 + 40) = &_swiftEmptySetSingleton;
}

uint64_t sub_100100B88()
{

  return swift_deallocClassInstance();
}

void sub_100100BFC(void *a1, uint64_t *a2, uint64_t *a3)
{
  v6 = a1;
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0xD000000000000014, 0x800000010029A5B0, &v15);
    *(v9 + 12) = 2080;
    v10 = v6;
    sub_100035D04(a2, a3);
    v11 = String.init<A>(describing:)();
    v13 = sub_100017494(v11, v12, &v15);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: %s", v9, 0x16u);
    swift_arrayDestroy();
  }

  v15 = a1;
  v14 = v6;
  CurrentValueSubject.send(_:)();
}

unint64_t sub_100100DA8()
{
  result = qword_10033E718;
  if (!qword_10033E718)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E718);
  }

  return result;
}

id sub_100100EA0@<X0>(void *a1@<X0>, uint64_t (*a2)(void, void, void, void, void, void, void)@<X1>, void *a3@<X8>)
{
  type metadata accessor for Logger();
  v7 = a2(*a1, v3[2], v3[3], v3[4], v3[5], v3[6], v3[7]);
  *a3 = v7;

  return v7;
}

BOOL sub_100100F90()
{
  sub_1000104F8();
  v1 = v0;
  sub_1000104F8();
  v3 = sub_1000089FC(v2, v1);

  v4 = *(v3 + 16);

  return v4 != 0;
}

uint64_t getEnumTagSinglePayload for HapticEffect(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_20;
  }

  v2 = a2 + 5;
  if (a2 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 > 1)
  {
    if (v4 == 2)
    {
      v5 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_20;
      }
    }

    else
    {
      v5 = *(a1 + 1);
      if (!v5)
      {
        goto LABEL_20;
      }
    }

    return (*a1 | (v5 << 8)) - 5;
  }

  if (v4)
  {
    v5 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v5 << 8)) - 5;
    }
  }

LABEL_20:
  v7 = *a1;
  if (v7 >= 2)
  {
    v8 = v7 - 1;
  }

  else
  {
    v8 = 0;
  }

  if (v8 >= 5)
  {
    return v8 - 4;
  }

  else
  {
    return 0;
  }
}