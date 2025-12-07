void sub_10002ED58()
{
  v1 = v0;
  v2 = type metadata accessor for GameModeStatus.Config();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100053488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:

  sub_10001C490();

  v12 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig;
  swift_beginAccess();
  GameModeStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for GameModeStatus());
  v14 = GameModeStatus.init(config:)();
  v15 = off_1000541F8;
  v16 = *(off_1000541F8 + 2);

  [v16 lock];
  v23 = v14;
  sub_1000189C8(v14, v15, v25);
  [v16 unlock];
  v17 = v25[0];
  if (!(v25[0] >> 62))
  {
    v18 = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_20:

    sub_10002E554();

    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v22[1] = v15;
    v22[2] = v1;
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v24 updateStatus:v23 :0 :0 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);

  [v18 unlock];
  __break(1u);
}

void sub_10002F18C()
{
  v1 = type metadata accessor for ModelManagerGameAssertionStatus.Config();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = (&v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *(v0 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v8 = v9;
  (*(v6 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v5);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v8, v5);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_100053488 != -1)
  {
LABEL_5:
    swift_once();
  }

  sub_10001C49C();

  v11 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_modelManagerGameAssertionStatusConfig;
  swift_beginAccess();
  ModelManagerGameAssertionStatus.Config.policyStrategy.setter();
  swift_endAccess();
  (*(v2 + 16))(v4, v0 + v11, v1);
  v12 = objc_allocWithZone(type metadata accessor for ModelManagerGameAssertionStatus());
  v13 = ModelManagerGameAssertionStatus.init(config:)();

  sub_100018B80(v13);

  sub_10002E554();
}

void sub_10002F404()
{
  v1 = v0;
  v2 = type metadata accessor for SustainedExecutionStatus.Config();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100053488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:

  sub_10001C494();

  v12 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_sustainedExecutionStatusConfig;
  swift_beginAccess();
  SustainedExecutionStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for SustainedExecutionStatus());
  v14 = SustainedExecutionStatus.init(config:)();
  v15 = off_1000541F8;
  v16 = *(off_1000541F8 + 2);

  [v16 lock];
  v23 = v14;
  sub_100019904(v14, v15, v25);
  [v16 unlock];
  v17 = v25[0];
  if (!(v25[0] >> 62))
  {
    v18 = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_20:

    sub_10002E554();

    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v22[1] = v15;
    v22[2] = v1;
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v24 updateStatus:0 :0 :v23 :0];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);

  [v18 unlock];
  __break(1u);
}

void sub_10002F838()
{
  v1 = v0;
  v2 = type metadata accessor for DynamicSplitterStatus.Config();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = (v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *(v1 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v9 = v10;
  (*(v7 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v6);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    if (qword_100053488 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:

  sub_10001C498();

  v12 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dynamicSplitterStatusConfig;
  swift_beginAccess();
  DynamicSplitterStatus.Config.enablementStrategy.setter();
  swift_endAccess();
  (*(v3 + 16))(v5, v1 + v12, v2);
  v13 = objc_allocWithZone(type metadata accessor for DynamicSplitterStatus());
  v14 = DynamicSplitterStatus.init(config:)();
  v15 = off_1000541F8;
  v16 = *(off_1000541F8 + 2);

  [v16 lock];
  v23 = v14;
  sub_100019ABC(v14, v15, v25);
  [v16 unlock];
  v17 = v25[0];
  if (!(v25[0] >> 62))
  {
    v18 = *((v25[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_20:

    sub_10002E554();

    return;
  }

  v18 = _CocoaArrayWrapper.endIndex.getter();
  if (!v18)
  {
    goto LABEL_20;
  }

LABEL_5:
  if (v18 >= 1)
  {
    v22[1] = v15;
    v22[2] = v1;
    for (i = 0; i != v18; ++i)
    {
      if ((v17 & 0xC000000000000001) != 0)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
      }

      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v21 = [*(Strong + 16) remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100003870(&qword_100054458, &qword_10003E7B0);
        if (swift_dynamicCast())
        {
          [v24 updateStatus:0 :0 :0 :v23];
          swift_unknownObjectRelease();
        }

        swift_unknownObjectRelease();
      }

      else
      {
      }
    }

    goto LABEL_20;
  }

  __break(1u);

  [v18 unlock];
  __break(1u);
}

uint64_t sub_10002FC6C()
{
  v88 = type metadata accessor for Date();
  v2 = *(v88 - 8);
  v3 = __chkstk_darwin(v88);
  v87 = v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __chkstk_darwin(v3);
  v86 = v80 - v6;
  __chkstk_darwin(v5);
  v85 = v80 - v7;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = (v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(v0 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v11 = v12;
  (*(v9 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v8);
  v13 = v12;
  v14 = _dispatchPreconditionTest(_:)();
  v16 = *(v9 + 8);
  v15 = v9 + 8;
  v16(v11, v8);
  if ((v14 & 1) == 0)
  {
    goto LABEL_84;
  }

  v17 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v81 = v17;
  v18 = *(v0 + v17);
  v92 = _swiftEmptyArrayStorage;
  v82 = v0;
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = 0;
    v20 = 0;
    p_name = 0;
    v12 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v21 = -1 << *(v18 + 32);
    v20 = ~v21;
    v19 = v18 + 64;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    p_name = v23 & *(v18 + 64);
    v12 = v18;
  }

  v24 = 0;
  v80[1] = v20;
  v15 = (v20 + 64) >> 6;
  v83 = (v2 + 8);
  v84 = v12;
  v25 = v85;
  if ((v12 & 0x8000000000000000) == 0)
  {
    goto LABEL_14;
  }

LABEL_11:
  if (__CocoaDictionary.Iterator.next()())
  {
    v27 = v26;
    swift_unknownObjectRelease();
    v90 = v27;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    v28 = v24;
    v29 = p_name;
    if (v91)
    {
      while (1)
      {
        if (dispatch thunk of EmbeddedGameProcess.isGame.getter())
        {
          v89 = v29;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          v33 = v87;
          static Date.now.getter();
          v34 = v86;
          Date.advanced(by:)();
          v35 = *v83;
          v36 = v88;
          (*v83)(v33, v88);
          LOBYTE(v33) = static Date.> infix(_:_:)();
          v35(v34, v36);
          v35(v25, v36);
          if (v33)
          {
            specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
            specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
            specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            specialized ContiguousArray._endMutation()();
          }

          else
          {
          }

          v24 = v28;
          p_name = v89;
          v12 = v84;
          if (v84 < 0)
          {
            goto LABEL_11;
          }
        }

        else
        {

          v24 = v28;
          p_name = v29;
          if (v12 < 0)
          {
            goto LABEL_11;
          }
        }

LABEL_14:
        v30 = v24;
        v31 = p_name;
        v28 = v24;
        if (!p_name)
        {
          break;
        }

LABEL_18:
        v29 = (v31 - 1) & v31;
        v32 = *(*(v12 + 56) + ((v28 << 9) | (8 * __clz(__rbit64(v31)))));

        if (!v32)
        {
          goto LABEL_25;
        }
      }

      while (1)
      {
        v28 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          break;
        }

        if (v28 >= v15)
        {
          goto LABEL_25;
        }

        v31 = *(v19 + 8 * v28);
        ++v30;
        if (v31)
        {
          goto LABEL_18;
        }
      }

      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      v62 = _CocoaArrayWrapper.endIndex.getter();
      if (v62)
      {
        goto LABEL_66;
      }

      goto LABEL_86;
    }
  }

LABEL_25:
  sub_10001B370(v12);

  v92 = sub_100039324(v37);
  sub_100037268(&v92);

  v89 = v92;
  v38 = *(v82 + v81);
  v92 = _swiftEmptyArrayStorage;
  v88 = 0;
  if ((v38 & 0xC000000000000001) != 0)
  {
    v39 = 0;
    v40 = 0;
    v15 = 0;
    v41 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v42 = -1 << *(v38 + 32);
    v40 = ~v42;
    v39 = v38 + 64;
    v43 = -v42;
    if (v43 < 64)
    {
      v44 = ~(-1 << v43);
    }

    else
    {
      v44 = -1;
    }

    v15 = v44 & *(v38 + 64);
    v41 = v38;
  }

  v45 = 0;
  v12 = v40;
  p_name = (v40 + 64) >> 6;
  while ((v41 & 0x8000000000000000) == 0)
  {
    v46 = v45;
    v47 = v15;
    for (i = v45; !v47; ++v46)
    {
      i = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_80;
      }

      if (i >= p_name)
      {
        goto LABEL_46;
      }

      v47 = *(v39 + 8 * i);
    }

    v49 = (v47 - 1) & v47;
    v50 = *(*(v41 + 56) + ((i << 9) | (8 * __clz(__rbit64(v47)))));

    if (!v50)
    {
      goto LABEL_46;
    }

LABEL_43:
    if (dispatch thunk of EmbeddedGameProcess.isGame.getter() & 1) != 0 && (dispatch thunk of EmbeddedGameProcess.isRunning.getter())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v45 = i;
    v15 = v49;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v52 = v51;
    swift_unknownObjectRelease();
    v90 = v52;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    i = v45;
    v49 = v15;
    if (v91)
    {
      goto LABEL_43;
    }
  }

LABEL_46:
  sub_10001B370(v41);

  v92 = sub_100039324(v53);
  v54 = v88;
  sub_100037268(&v92);
  if (v54)
  {

    __break(1u);
    return result;
  }

  v12 = v92;
  v55 = *(v82 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget);
  if (!v55)
  {
LABEL_61:
    v15 = v12 & 0x4000000000000000;
    goto LABEL_63;
  }

  p_name = &stru_100051FF8.name;
  LODWORD(v56) = [v55 pid];
  v15 = v12 & 0x4000000000000000;
  if (v12 < 0 || v15)
  {
    goto LABEL_106;
  }

  v57 = *(v12 + 16);
  if (v57)
  {
    goto LABEL_51;
  }

LABEL_63:
  while (2)
  {
    if (v12 < 0 || v15)
    {
      goto LABEL_85;
    }

    v62 = *(v12 + 16);
    if (v62)
    {
LABEL_66:
      v63 = 0;
      v64 = _swiftEmptyArrayStorage;
      while (1)
      {
        if ((v12 & 0xC000000000000001) != 0)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          p_name = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_81;
          }
        }

        else
        {
          if (v63 >= *(v12 + 16))
          {
            goto LABEL_82;
          }

          p_name = v63 + 1;
          if (__OFADD__(v63, 1))
          {
            goto LABEL_81;
          }
        }

        v65 = EmbeddedGameProcess.bundleIdentifier.getter();
        v67 = v66;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v64 = sub_100023ABC(0, *(v64 + 2) + 1, 1, v64);
        }

        v15 = *(v64 + 2);
        v68 = *(v64 + 3);
        if (v15 >= v68 >> 1)
        {
          v64 = sub_100023ABC((v68 > 1), v15 + 1, 1, v64);
        }

        *(v64 + 2) = v15 + 1;
        v69 = &v64[16 * v15];
        *(v69 + 4) = v65;
        *(v69 + 5) = v67;
        ++v63;
        if (p_name == v62)
        {
          goto LABEL_87;
        }
      }
    }

LABEL_86:
    v64 = _swiftEmptyArrayStorage;
LABEL_87:

    if (*(v64 + 2))
    {
      v61 = *(v64 + 4);

      goto LABEL_112;
    }

    v70 = v89;
    if ((v89 & 0x8000000000000000) == 0 && (v89 & 0x4000000000000000) == 0)
    {
      v56 = *(v89 + 16);
      if (v56)
      {
        goto LABEL_92;
      }

LABEL_109:
      v12 = _swiftEmptyArrayStorage;
LABEL_110:

      if (!*(v12 + 16))
      {

        return 0;
      }

      v61 = *(v12 + 32);

LABEL_112:

      return v61;
    }

    v15 = v89;
    v56 = _CocoaArrayWrapper.endIndex.getter();
    v70 = v15;
    if (!v56)
    {
      goto LABEL_109;
    }

LABEL_92:
    v71 = 0;
    v72 = v70 & 0xC000000000000001;
    v12 = _swiftEmptyArrayStorage;
    while (2)
    {
      if (v72)
      {
        specialized _ArrayBuffer._getElementSlowPath(_:)();
        v73 = v71 + 1;
        if (__OFADD__(v71, 1))
        {
          break;
        }

        goto LABEL_96;
      }

      if (v71 >= *(v70 + 16))
      {
        goto LABEL_105;
      }

      v73 = v71 + 1;
      if (!__OFADD__(v71, 1))
      {
LABEL_96:
        v74 = EmbeddedGameProcess.bundleIdentifier.getter();
        v76 = v75;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v12 = sub_100023ABC(0, *(v12 + 16) + 1, 1, v12);
        }

        v15 = *(v12 + 16);
        v77 = *(v12 + 24);
        if (v15 >= v77 >> 1)
        {
          v12 = sub_100023ABC((v77 > 1), v15 + 1, 1, v12);
        }

        *(v12 + 16) = v15 + 1;
        v78 = v12 + 16 * v15;
        *(v78 + 32) = v74;
        *(v78 + 40) = v76;
        ++v71;
        v70 = v89;
        if (v73 == v56)
        {
          goto LABEL_110;
        }

        continue;
      }

      break;
    }

    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    v57 = _CocoaArrayWrapper.endIndex.getter();
    if (!v57)
    {
      continue;
    }

    break;
  }

LABEL_51:
  v88 = v15;
  v58 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      specialized _ArrayBuffer._getElementSlowPath(_:)();
      v15 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
        goto LABEL_60;
      }
    }

    else
    {
      if (v58 >= *(v12 + 16))
      {
        goto LABEL_83;
      }

      v15 = v58 + 1;
      if (__OFADD__(v58, 1))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    v59 = EmbeddedGameProcess.processHandle.getter();
    v60 = [v59 *(p_name + 1944)];

    if (v60 == v56)
    {
      break;
    }

    ++v58;
    if (v15 == v57)
    {
      v15 = v88;
      goto LABEL_63;
    }
  }

  v61 = EmbeddedGameProcess.bundleIdentifier.getter();

  return v61;
}

uint64_t sub_1000306C0(int a1, int a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v82 = a4;
  v83 = a3;
  v79 = a2;
  v78 = a1;
  v80 = type metadata accessor for Logger();
  v81 = *(v80 - 8);
  v5 = __chkstk_darwin(v80);
  v76 = &v76 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v9 = &v76 - v8;
  v10 = __chkstk_darwin(v7);
  v12 = &v76 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v76 - v14;
  v16 = __chkstk_darwin(v13);
  v18 = &v76 - v17;
  v19 = __chkstk_darwin(v16);
  v77 = &v76 - v20;
  __chkstk_darwin(v19);
  v22 = &v76 - v21;
  v23 = type metadata accessor for DispatchPredicate();
  v24 = *(v23 - 8);
  __chkstk_darwin(v23);
  v26 = (&v76 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  v27 = *(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
  *v26 = v27;
  (*(v24 + 104))(v26, enum case for DispatchPredicate.onQueue(_:), v23);
  v28 = v27;
  LOBYTE(v27) = _dispatchPreconditionTest(_:)();
  result = (*(v24 + 8))(v26, v23);
  if (v27)
  {
    v30 = sub_10002FC6C();
    v33 = v31;
    if (*(v4 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_dashboardVisible) == 1)
    {

      static Logger.agent.getter();
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&_mh_execute_header, v34, v35, "Hiding game overlay...", v36, 2u);
      }

      (*(v81 + 8))(v22, v80);
LABEL_6:
      v37 = objc_opt_self();
      v38 = String._bridgeToObjectiveC()();
      [v37 launchOverlayForGameBundleId:v38];

LABEL_34:
      v49 = 1;
      goto LABEL_35;
    }

    if (v31)
    {
      if (v32)
      {
        v39 = v30;
        static Logger.daemon.getter();

        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          aBlock = v43;
          *v42 = 136380675;
          *(v42 + 4) = sub_100034C38(v39, v33, &aBlock);
          _os_log_impl(&_mh_execute_header, v40, v41, "Showing game overlay for %{private}s...", v42, 0xCu);
          sub_100003964(v43);
        }

        (*(v81 + 8))(v15, v80);
        v44 = objc_opt_self();
        v45 = String._bridgeToObjectiveC()();

        [v44 launchOverlayForGameBundleId:v45];
LABEL_33:

        goto LABEL_34;
      }

      if (v79)
      {
        v51 = v30;
        v52 = v77;
        static Logger.daemon.getter();

        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          aBlock = v56;
          *v55 = 136380675;
          *(v55 + 4) = sub_100034C38(v51, v33, &aBlock);
          _os_log_impl(&_mh_execute_header, v53, v54, "Focusing game %{private}s", v55, 0xCu);
          sub_100003964(v56);
        }

        (*(v81 + 8))(v52, v80);
        sub_100003870(&qword_100055278, &qword_10003F0D8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_10003E2E0;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v58;
        AnyHashable.init<A>(_:)();
        *(inited + 96) = &type metadata for Bool;
        *(inited + 72) = 1;
        aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v85 = v59;
        AnyHashable.init<A>(_:)();
        *(inited + 168) = &type metadata for Bool;
        *(inited + 144) = 1;
        sub_100039B10(inited);
        swift_setDeallocating();
        sub_100003870(&qword_100055280, &qword_10003F0E0);
        swift_arrayDestroy();
        isa = Dictionary._bridgeToObjectiveC()().super.isa;

        v45 = [objc_opt_self() optionsWithDictionary:isa];

        v61 = [objc_opt_self() serviceWithDefaultShellEndpoint];
        if (v61)
        {
          v62 = v61;
          v63 = String._bridgeToObjectiveC()();
          v64 = swift_allocObject();
          *(v64 + 16) = v51;
          *(v64 + 24) = v33;
          v88 = sub_100039C84;
          v89 = v64;
          aBlock = _NSConcreteStackBlock;
          v85 = 1107296256;
          v86 = sub_100031568;
          v87 = &unk_10004E7C8;
          v65 = _Block_copy(&aBlock);

          [v62 openApplication:v63 withOptions:v45 completion:v65];

          _Block_release(v65);
          v45 = v63;
        }

        else
        {
        }

        goto LABEL_33;
      }

      static Logger.daemon.getter();
      v69 = Logger.logObject.getter();
      v70 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v69, v70))
      {
        v71 = swift_slowAlloc();
        *v71 = 0;
        _os_log_impl(&_mh_execute_header, v69, v70, "Not showing game overlay. Fallback to app argument not set and game isn't focused.", v71, 2u);
      }

      (*(v81 + 8))(v18, v80);
    }

    else
    {
      if ((v78 & 1) == 0)
      {
        static Logger.daemon.getter();
        v66 = Logger.logObject.getter();
        v67 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v66, v67))
        {
          v68 = swift_slowAlloc();
          *v68 = 0;
          _os_log_impl(&_mh_execute_header, v66, v67, "Showing game overlay...", v68, 2u);
        }

        (*(v81 + 8))(v12, v80);
        goto LABEL_6;
      }

      if (v79)
      {
        static Logger.daemon.getter();
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v46, v47))
        {
          v48 = swift_slowAlloc();
          *v48 = 0;
          _os_log_impl(&_mh_execute_header, v46, v47, "Launching Games app...", v48, 2u);
        }

        (*(v81 + 8))(v9, v80);
        [objc_opt_self() launchApp];
        v49 = 1;
        v50 = 1;
        return v83(v49, v50);
      }

      v72 = v76;
      static Logger.daemon.getter();
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Show overlay command ignored.", v75, 2u);
      }

      (*(v81 + 8))(v72, v80);
    }

    v49 = 0;
LABEL_35:
    v50 = 0;
    return v83(v49, v50);
  }

  __break(1u);
  return result;
}

void sub_1000311DC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v28 - v12;
  if (a2)
  {
    swift_errorRetain();
    static Logger.daemon.getter();
    swift_errorRetain();

    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v30 = a3;
      v17 = v16;
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v29 = v7;
      v20 = v19;
      v31 = v19;
      *v17 = 136380931;
      *(v17 + 4) = sub_100034C38(v30, a4, &v31);
      *(v17 + 12) = 2112;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v17 + 14) = v21;
      *v18 = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "Unable to focus game for %{private}s. %@", v17, 0x16u);
      sub_1000096E8(v18, &unk_100053C00, &qword_10003E810);

      sub_100003964(v20);
      v7 = v29;

      a3 = v30;
    }

    else
    {
    }

    (*(v8 + 8))(v13, v7);
  }

  static Logger.daemon.getter();

  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v31 = v25;
    *v24 = 136380675;
    *(v24 + 4) = sub_100034C38(a3, a4, &v31);
    _os_log_impl(&_mh_execute_header, v22, v23, "Showing game overlay for %{private}s...", v24, 0xCu);
    sub_100003964(v25);
  }

  (*(v8 + 8))(v11, v7);
  v26 = objc_opt_self();
  v27 = String._bridgeToObjectiveC()();
  [v26 launchOverlayForGameBundleId:v27];
}

void sub_100031568(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(a2, a3);
}

void sub_1000315F4()
{
  v1 = type metadata accessor for GameModeStatus.Config();
  v33 = *(v1 - 8);
  v34 = v1;
  __chkstk_darwin(v1);
  v31 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
  swift_beginAccess();
  v32 = v0;
  v4 = *(v0 + v3);
  v37[0] = _swiftEmptyArrayStorage;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
  }

  else
  {
    v9 = -1 << *(v4 + 32);
    v6 = ~v9;
    v5 = v4 + 64;
    v10 = -v9;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v7 = v11 & *(v4 + 64);
    v8 = v4;
  }

  v12 = 0;
  while ((v8 & 0x8000000000000000) == 0)
  {
    v13 = v12;
    v14 = v7;
    v15 = v12;
    if (!v7)
    {
      while (1)
      {
        v15 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v15 >= ((v6 + 64) >> 6))
        {
          goto LABEL_21;
        }

        v14 = *(v5 + 8 * v15);
        ++v13;
        if (v14)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_31;
    }

LABEL_15:
    v16 = (v14 - 1) & v14;
    v17 = *(*(v8 + 56) + ((v15 << 9) | (8 * __clz(__rbit64(v14)))));

    if (!v17)
    {
      goto LABEL_21;
    }

LABEL_19:
    if (dispatch thunk of EmbeddedGameProcess.isRunningForeground.getter())
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    else
    {
    }

    v12 = v15;
    v7 = v16;
  }

  if (__CocoaDictionary.Iterator.next()())
  {
    v19 = v18;
    swift_unknownObjectRelease();
    v35 = v19;
    type metadata accessor for EmbeddedGameProcess();
    swift_dynamicCast();
    v15 = v12;
    v16 = v7;
    if (v36)
    {
      goto LABEL_19;
    }
  }

LABEL_21:
  sub_10001B370(v8);
  v6 = v37[0];
  if ((v37[0] & 0x8000000000000000) == 0 && (v37[0] & 0x4000000000000000) == 0)
  {
    if (*(v37[0] + 16))
    {
      goto LABEL_24;
    }

LABEL_32:

    return;
  }

LABEL_31:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_32;
  }

LABEL_24:
  if ((v6 & 0xC000000000000001) != 0)
  {
    specialized _ArrayBuffer._getElementSlowPath(_:)();
LABEL_27:

    v20 = EmbeddedGameProcess.bundleIdentifier.getter();
    v22 = v21;

    type metadata accessor for GlobalPreferences();
    dispatch thunk of static GlobalPreferences.shared.getter();
    v23 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameModeStatusConfig;
    v24 = v32;
    swift_beginAccess();
    v25 = v33;
    v26 = v24 + v23;
    v27 = v31;
    v28 = v34;
    (*(v33 + 16))(v31, v26, v34);
    GameModeStatus.Config.enabled.getter();
    (*(v25 + 8))(v27, v28);
    sub_100003870(&qword_100055270, " Y");
    v29 = swift_allocObject();
    *(v29 + 16) = xmmword_10003EB50;
    *(v29 + 32) = v20;
    *(v29 + 40) = v22;
    dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifiers:)();

    v30 = [objc_opt_self() defaultCenter];
    if (qword_100053480 != -1)
    {
      swift_once();
    }

    [v30 postNotificationName:qword_100056600 object:0];
  }

  else
  {
    if (*(v6 + 16))
    {

      goto LABEL_27;
    }

    __break(1u);
  }
}

uint64_t sub_100031A3C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v61 = *(v1 - 8);
  v62 = v1;
  __chkstk_darwin(v1);
  v59 = &v56 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for DispatchQoS();
  v58 = *(v60 - 8);
  __chkstk_darwin(v60);
  v57 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = objc_opt_self();
  v5 = [v4 defaultCenter];
  if (qword_100053460 != -1)
  {
    swift_once();
  }

  v6 = qword_1000565E0;
  v7 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_operationQueue;
  v8 = *&v0[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_operationQueue];
  v9 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = sub_100035904;
  v69 = v9;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100032448;
  v67 = &unk_10004E4D0;
  v10 = _Block_copy(&aBlock);
  v11 = v8;

  v12 = [v5 addObserverForName:v6 object:0 queue:v11 usingBlock:v10];
  _Block_release(v10);
  swift_unknownObjectRelease();

  v13 = [v4 defaultCenter];
  if (qword_100053468 != -1)
  {
    swift_once();
  }

  v14 = qword_1000565E8;
  v15 = *&v0[v7];
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = sub_10003593C;
  v69 = v16;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100032448;
  v67 = &unk_10004E4F8;
  v17 = _Block_copy(&aBlock);
  v18 = v15;

  v19 = [v13 addObserverForName:v14 object:0 queue:v18 usingBlock:v17];
  _Block_release(v17);
  swift_unknownObjectRelease();

  v20 = [v4 defaultCenter];
  if (qword_100053470 != -1)
  {
    swift_once();
  }

  v21 = qword_1000565F0;
  v22 = *&v0[v7];
  v23 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = sub_100035974;
  v69 = v23;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100032448;
  v67 = &unk_10004E520;
  v24 = _Block_copy(&aBlock);
  v25 = v22;

  v26 = [v20 addObserverForName:v21 object:0 queue:v25 usingBlock:v24];
  _Block_release(v24);
  swift_unknownObjectRelease();

  v27 = [v4 defaultCenter];
  if (qword_100053478 != -1)
  {
    swift_once();
  }

  v28 = qword_1000565F8;
  v29 = *&v0[v7];
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = sub_1000359AC;
  v69 = v30;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100032448;
  v67 = &unk_10004E548;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  v33 = [v27 addObserverForName:v28 object:0 queue:v32 usingBlock:v31];
  _Block_release(v31);
  swift_unknownObjectRelease();

  v34 = [v4 defaultCenter];
  if (qword_100053480 != -1)
  {
    swift_once();
  }

  v35 = qword_100056600;
  v36 = *&v0[v7];
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v68 = sub_1000359E4;
  v69 = v37;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100032448;
  v67 = &unk_10004E570;
  v38 = _Block_copy(&aBlock);
  v39 = v36;

  v40 = [v34 addObserverForName:v35 object:0 queue:v39 usingBlock:v38];
  _Block_release(v38);
  swift_unknownObjectRelease();

  v41 = *&v0[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  v42 = swift_allocObject();
  *(v42 + 16) = v0;
  v68 = sub_100035A54;
  v69 = v42;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_100024520;
  v67 = &unk_10004E5C0;
  v43 = _Block_copy(&aBlock);
  v44 = v41;
  v45 = v0;
  v46 = v57;
  static DispatchQoS.unspecified.getter();
  v63 = _swiftEmptyArrayStorage;
  sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0, &protocol conformance descriptor for [A]);
  v47 = v59;
  v48 = v62;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v43);

  (*(v61 + 8))(v47, v48);
  (*(v58 + 8))(v46, v60);

  v49 = *&v45[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_processMonitor];
  v50 = swift_allocObject();
  *(v50 + 16) = v45;
  v51 = swift_allocObject();
  *(v51 + 16) = sub_100035A5C;
  *(v51 + 24) = v50;
  v68 = sub_100035A74;
  v69 = v51;
  aBlock = _NSConcreteStackBlock;
  v65 = 1107296256;
  v66 = sub_10003B1C4;
  v67 = &unk_10004E638;
  v52 = _Block_copy(&aBlock);
  v53 = v45;
  v54 = v49;

  [v54 updateConfiguration:v52];

  _Block_release(v52);
  LOBYTE(v52) = swift_isEscapingClosureAtFileLocation();

  if (v52)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100032448(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Notification();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  static Notification._unconditionallyBridgeFromObjectiveC(_:)();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

void sub_10003253C(uint64_t a1, void (*a2)(void))
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    a2();
  }
}

char *sub_100032598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v15 = *&result[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
    v23 = v7;
    v24 = v10;
    v16 = result;
    v22 = v15;

    v17 = v11;
    v18 = swift_allocObject();
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    swift_unknownObjectWeakInit();

    aBlock[4] = a3;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024520;
    aBlock[3] = a4;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003870(&unk_1000551B0, &unk_10003E7A0);
    sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v21 = v22;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);

    (*(v23 + 8))(v9, v6);
    (*(v17 + 8))(v13, v24);
  }

  return result;
}

void sub_1000328D8(uint64_t a1)
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = (&v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    v7 = *(Strong + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue);
    *v4 = v7;
    (*(v2 + 104))(v4, enum case for DispatchPredicate.onQueue(_:), v1);
    v8 = v7;
    LOBYTE(v7) = _dispatchPreconditionTest(_:)();
    (*(v2 + 8))(v4, v1);
    if (v7)
    {
      sub_10002E554();
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_100032A20()
{
  v0 = sub_100003870(&qword_100054428, &qword_10003E778);
  v1 = __chkstk_darwin(v0 - 8);
  v3 = &v16[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v1);
  v5 = &v16[-v4];
  if (qword_100053488 != -1)
  {
    swift_once();
  }

  sub_10001C4BC();

  v6 = ModeEnablementStrategy.rawValue.getter();
  v7 = v6 == ModeEnablementStrategy.rawValue.getter();
  sub_100028314(v7, 0, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, _swiftEmptyArrayStorage, 1);
  if (v17 == 2)
  {
    v8 = &enum case for ModelManagerGameAssertionPolicy.standardGameMode(_:);
  }

  else
  {
    if (v17 != 3)
    {
      v12 = type metadata accessor for ModelManagerGameAssertionPolicy();
      (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
      goto LABEL_9;
    }

    v8 = &enum case for ModelManagerGameAssertionPolicy.aaaGameMode(_:);
  }

  v9 = *v8;
  v10 = type metadata accessor for ModelManagerGameAssertionPolicy();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v3, v9, v10);
  (*(v11 + 56))(v3, 0, 1, v10);
LABEL_9:
  sub_1000391EC(v3, v5);
  sub_10002A5E4(v5, _swiftEmptyArrayStorage, 1);
  ModeEnablementStrategy.rawValue.getter();
  ModeEnablementStrategy.rawValue.getter();
  sub_10002B738(0, _swiftEmptyArrayStorage, 1);
  v13 = ModeEnablementStrategy.rawValue.getter();
  v14 = v13 == ModeEnablementStrategy.rawValue.getter();
  sub_10002CA74(v14, _swiftEmptyArrayStorage, 1);
  sub_10001B150(v16);
  return sub_1000096E8(v5, &qword_100054428, &qword_10003E778);
}

void sub_100032CD8(void *a1, uint64_t a2)
{
  sub_100003870(&qword_100054B30, &unk_10003EBF0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_10003EB40;
  *(v4 + 32) = [objc_opt_self() predicateMatchingProcessTypeApplication];
  sub_100009748(0, &unk_100055230, RBSProcessPredicate_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [a1 setPredicates:isa];

  [a1 setStateDescriptor:*(a2 + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_assertionDescriptor)];
  [a1 setEvents:1];
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8[4] = sub_100035A9C;
  v8[5] = v6;
  v8[0] = _NSConcreteStackBlock;
  v8[1] = 1107296256;
  v8[2] = sub_100033DA8;
  v8[3] = &unk_10004E660;
  v7 = _Block_copy(v8);

  [a1 setUpdateHandler:v7];
  _Block_release(v7);
}

char *sub_100032E84(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *&result[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
    v24 = v11;
    v17 = result;
    v23 = v16;

    v18 = swift_allocObject();
    v18[2] = a4;
    v18[3] = a2;
    v18[4] = a3;
    aBlock[4] = sub_100035AEC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024520;
    aBlock[3] = &unk_10004E6B0;
    v19 = _Block_copy(aBlock);

    v20 = a2;
    v21 = a3;
    static DispatchQoS.unspecified.getter();
    v25 = _swiftEmptyArrayStorage;
    sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003870(&unk_1000551B0, &unk_10003E7A0);
    sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v23;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

void sub_1000331A4(uint64_t a1, void *a2, void *a3)
{
  v5 = type metadata accessor for Date();
  v107 = *(v5 - 8);
  __chkstk_darwin(v5);
  v7 = &v99 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = __chkstk_darwin(v8);
  v12 = &v99 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = &v99 - v14;
  v16 = __chkstk_darwin(v13);
  v108 = &v99 - v17;
  __chkstk_darwin(v16);
  v19 = &v99 - v18;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v21 = Strong;
    v106 = v9;
    v22 = [a2 identity];
    v23 = [a3 exitEvent];
    if (v23)
    {

      v24 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
      swift_beginAccess();
      v25 = *&v21[v24];

      v26 = sub_100026338(v22, v25);

      if (v26)
      {
        dispatch thunk of EmbeddedGameProcess.isTerminated.setter();
        dispatch thunk of EmbeddedGameProcess.isRunning.setter();
        dispatch thunk of EmbeddedGameProcess.isRunningForeground.setter();
        v27 = objc_opt_self();
        v111[0] = 0;
        v28 = [v27 createClient:v111];
        if (v28)
        {
          v29 = v28;
          v30 = v111[0];
          sub_10002D8D0(0, v26, v29);
          swift_unknownObjectRelease();
        }

        else
        {
          v37 = v111[0];
          _convertNSErrorToError(_:)();

          swift_willThrow();
          static Logger.daemon.getter();
          swift_errorRetain();
          v38 = Logger.logObject.getter();
          v39 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v105 = v8;
            v41 = v40;
            v42 = v22;
            v43 = swift_slowAlloc();
            *v41 = 138543362;
            swift_errorRetain();
            v44 = _swift_stdlib_bridgeErrorToNSError();
            *(v41 + 4) = v44;
            *v43 = v44;
            _os_log_impl(&_mh_execute_header, v38, v39, "Unable to set game mode for exiting game process %{public}@", v41, 0xCu);
            sub_1000096E8(v43, &unk_100053C00, &qword_10003E810);
            v22 = v42;

            v8 = v105;
          }

          else
          {
          }

          (*(v106 + 8))(v12, v8);
        }
      }

      swift_beginAccess();
      v45 = sub_1000382A8(v22);
      swift_endAccess();

      swift_beginAccess();
      v46 = v22;
      sub_100038440(v46);
      swift_endAccess();

      sub_10002E554();
    }

    else
    {
      v104 = a3;
      v105 = v8;
      v31 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_ignoredProcesses;
      swift_beginAccess();
      v32 = *&v21[v31];

      v33 = sub_1000264E0(v22, v32);

      if (v33)
      {
      }

      else
      {
        v103 = v31;
        v34 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_gameProcesses;
        swift_beginAccess();
        v35 = *&v21[v34];

        v36 = sub_100026338(v22, v35);

        if (v36)
        {
          sub_10002DD98(v36, v104);
        }

        else
        {
          v102 = v22;
          v47 = type metadata accessor for EmbeddedGameProcess();
          swift_allocObject();
          v48 = a2;
          v49 = EmbeddedGameProcess.init(process:)();
          if (v49)
          {
            v50 = v49;
            v103 = v47;
            static Logger.daemon.getter();

            v51 = Logger.logObject.getter();
            v52 = static os_log_type_t.default.getter();

            v53 = os_log_type_enabled(v51, v52);
            v54 = v106;
            v101 = v50;
            if (v53)
            {
              v55 = swift_slowAlloc();
              v100 = swift_slowAlloc();
              v109 = v50;
              v110[0] = v100;
              *v55 = 136446210;
              sub_100038D38(&qword_100055240, &type metadata accessor for EmbeddedGameProcess, &protocol conformance descriptor for EmbeddedGameProcess);
              v56 = dispatch thunk of CustomStringConvertible.description.getter();
              v58 = sub_100034C38(v56, v57, v110);

              *(v55 + 4) = v58;
              _os_log_impl(&_mh_execute_header, v51, v52, "Identified app %{public}s", v55, 0xCu);
              sub_100003964(v100);

              v59 = v106;
            }

            else
            {

              v59 = v54;
            }

            v68 = *(v59 + 8);
            v68(v19, v105);
            v69 = *&v21[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_keyboardFocusTarget];
            if (v69 && (v70 = [v69 pid], v71 = EmbeddedGameProcess.processHandle.getter(), v72 = objc_msgSend(v71, "pid"), v71, v73 = v72 == v70, v74 = v105, v73))
            {
              static Date.now.getter();
              v75 = v101;
              dispatch thunk of EmbeddedGameProcess.lastFocused.setter();
              v76 = v108;
              static Logger.daemon.getter();

              v77 = Logger.logObject.getter();
              v78 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v77, v78))
              {
                v79 = swift_slowAlloc();
                LODWORD(v104) = v78;
                v80 = v79;
                v81 = swift_slowAlloc();
                v109 = v75;
                v110[0] = v81;
                *v80 = 136380931;
                sub_100038D38(&qword_100055240, &type metadata accessor for EmbeddedGameProcess, &protocol conformance descriptor for EmbeddedGameProcess);
                v82 = dispatch thunk of CustomStringConvertible.description.getter();
                v84 = sub_100034C38(v82, v83, v110);

                *(v80 + 4) = v84;
                *(v80 + 12) = 2081;
                dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
                sub_100038D38(&qword_100055248, &type metadata accessor for Date, &protocol conformance descriptor for Date);
                v85 = dispatch thunk of CustomStringConvertible.description.getter();
                v87 = v86;
                (*(v107 + 8))(v7, v5);
                v88 = sub_100034C38(v85, v87, v110);

                *(v80 + 14) = v88;
                _os_log_impl(&_mh_execute_header, v77, v104, "Newly identified app was focused. Last played for %{private}s == %{private}s", v80, 0x16u);
                swift_arrayDestroy();

                v68(v108, v105);
              }

              else
              {

                v68(v76, v74);
              }
            }

            else
            {
              swift_beginAccess();
              v89 = v34;
              v90 = *&v21[v34];
              if ((v90 & 0xC000000000000001) != 0)
              {
                if (v90 < 0)
                {
                  v91 = *&v21[v34];
                }

                else
                {
                  v91 = v90 & 0xFFFFFFFFFFFFFF8;
                }

                v92 = v102;
                v93 = v102;
                v94 = v101;

                v95 = __CocoaDictionary.count.getter();
                v96 = v104;
                if (__OFADD__(v95, 1))
                {
                  __break(1u);
                }

                *&v21[v89] = sub_10003858C(v91, v95 + 1);
              }

              else
              {
                v92 = v102;
                v97 = v102;
                v94 = v101;

                v96 = v104;
              }

              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v109 = *&v21[v89];
              sub_100038BBC(v94, v92, isUniquelyReferenced_nonNull_native);
              *&v21[v89] = v109;

              swift_endAccess();
              sub_10002DD98(v94, v96);
            }
          }

          else
          {
            static Logger.daemon.getter();
            v60 = v102;
            v61 = Logger.logObject.getter();
            v62 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v61, v62))
            {
              v63 = swift_slowAlloc();
              v64 = swift_slowAlloc();
              *v63 = 138543362;
              *(v63 + 4) = v60;
              *v64 = v60;
              v65 = v60;
              _os_log_impl(&_mh_execute_header, v61, v62, "Ignoring process %{public}@", v63, 0xCu);
              sub_1000096E8(v64, &unk_100053C00, &qword_10003E810);
            }

            (*(v106 + 8))(v15, v105);
            swift_beginAccess();
            v66 = v60;
            sub_100035F4C(&v109, v66);
            v67 = v109;
            swift_endAccess();
          }
        }
      }
    }
  }
}

void sub_100033DA8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v7 = *(a1 + 32);

  v10 = a2;
  v8 = a3;
  v9 = a4;
  v7(v10, v8, v9);
}

uint64_t sub_100033E48(char a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v23 = *(v9 - 8);
  __chkstk_darwin(v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for DispatchQoS();
  v12 = *(v22 - 8);
  __chkstk_darwin(v22);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *&v4[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  v16 = swift_allocObject();
  *(v16 + 16) = v4;
  *(v16 + 24) = a1;
  *(v16 + 25) = a2;
  *(v16 + 32) = a3;
  *(v16 + 40) = a4;
  aBlock[4] = sub_100035898;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004E480;
  v17 = _Block_copy(aBlock);
  v18 = v15;
  v19 = v4;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v23 + 8))(v11, v9);
  (*(v12 + 8))(v14, v22);
}

void sub_100034148(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_opt_self() userInitiated];
  [a1 setServiceQuality:v6];

  [a1 setInterface:a2];
  [a1 setInterfaceTarget:a3];
  v16 = nullsub_1;
  v17 = 0;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000343AC;
  v15 = &unk_10004E868;
  v7 = _Block_copy(&v12);
  [a1 setActivationHandler:v7];
  _Block_release(v7);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_10003B088;
  v17 = v8;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000343AC;
  v15 = &unk_10004E890;
  v9 = _Block_copy(&v12);

  [a1 setInterruptionHandler:v9];
  _Block_release(v9);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = sub_10003B090;
  v17 = v10;
  v12 = _NSConcreteStackBlock;
  v13 = 1107296256;
  v14 = sub_1000343AC;
  v15 = &unk_10004E8B8;
  v11 = _Block_copy(&v12);

  [a1 setInvalidationHandler:v11];
  _Block_release(v11);
}

void sub_1000343AC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_100034414(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection;
    v5 = *(Strong + OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection);
    if (v5)
    {
      [v5 invalidate];
      v6 = *&v3[v4];
    }

    else
    {
      v6 = 0;
    }

    *&v3[v4] = 0;
  }
}

void sub_10003449C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *&Strong[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection];
    *&Strong[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection] = 0;
  }
}

uint64_t sub_1000344FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  swift_unknownObjectRetain();
  v3(a2);

  return swift_unknownObjectRelease();
}

uint64_t sub_100034550(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v10 = *(v21 - 8);
  __chkstk_darwin(v21);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *&v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  v14[5] = v3;
  aBlock[4] = sub_1000357D8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100024520;
  aBlock[3] = &unk_10004E430;
  v15 = _Block_copy(aBlock);
  v16 = v13;

  v17 = a3;
  v18 = v3;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100003870(&unk_1000551B0, &unk_10003E7A0);
  sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0, &protocol conformance descriptor for [A]);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v22 + 8))(v9, v7);
  (*(v10 + 8))(v12, v21);
}

uint64_t sub_100034848(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.daemon.getter();

  v12 = a3;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  p_name = &stru_100051FF8.name;
  if (os_log_type_enabled(v13, v14))
  {
    v16 = swift_slowAlloc();
    v20 = a4;
    v17 = v16;
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315394;
    *(v17 + 4) = sub_100034C38(a1, a2, &v21);
    *(v17 + 12) = 1024;
    *(v17 + 14) = [v12 BOOLValue];

    _os_log_impl(&_mh_execute_header, v13, v14, "setGameModeForBundleIdentifier(%s enabled:%{BOOL}d)", v17, 0x12u);
    sub_100003964(v18);
    p_name = (&stru_100051FF8 + 8);
  }

  else
  {
  }

  (*(v9 + 8))(v11, v8);
  type metadata accessor for GlobalPreferences();
  dispatch thunk of static GlobalPreferences.shared.getter();
  [v12 p_name[210]];
  dispatch thunk of GlobalPreferences.setGameModeEnabled(_:bundleIdentifier:)();

  return sub_10002E554();
}

uint64_t sub_100034B20(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

void *sub_100034BB0(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003870(&qword_100054B30, &unk_10003EBF0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

unint64_t sub_100034C38(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_100034D04(v11, 0, 0, 1, a1, a2);
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
    sub_1000357FC(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  sub_100003964(v11);
  return v7;
}

unint64_t sub_100034D04(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_100034E10(a5, a6);
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
    result = _StringObject.sharedUTF8.getter();
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

void *sub_100034E10(uint64_t a1, unint64_t a2)
{
  v3 = sub_100034E5C(a1, a2);
  sub_100034F8C(&off_10004D6D0);
  return v3;
}

void *sub_100034E5C(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = sub_100035078(v5, 0);
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

  result = _StringObject.sharedUTF8.getter();
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
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = sub_100035078(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
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

uint64_t sub_100034F8C(uint64_t result)
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

  result = sub_1000350EC(result, v11, 1, v3);
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

void *sub_100035078(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_100003870(&qword_1000551C0, &unk_10003F0B8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_1000350EC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_1000551C0, &unk_10003F0B8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

unint64_t sub_1000351E0(uint64_t a1)
{
  v2 = v1;
  v4 = NSObject._rawHashValue(seed:)(*(v2 + 40));

  return sub_1000352E0(a1, v4);
}

unint64_t sub_100035224(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_1000353B4(a1, a2, v4);
}

unint64_t sub_10003529C(uint64_t a1)
{
  v2 = v1;
  v4 = AnyHashable._rawHashValue(seed:)(*(v2 + 40));

  return sub_10003546C(a1, v4);
}

unint64_t sub_1000352E0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static NSObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1000353B4(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (_stringCompareWithSmolCheck(_:_:expecting:)())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_10003546C(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      sub_100039C8C(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      sub_100039CE8(v8);
      if (v6)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

char *sub_100035534(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035AF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_100035554(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_100035C04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t type metadata accessor for EmbeddedGameProcessMonitor(uint64_t a1)
{
  result = qword_100055198;
  if (!qword_100055198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000355C8(uint64_t a1)
{
  result = type metadata accessor for GameModeStatus.Config();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ModelManagerGameAssertionStatus.Config();
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for SustainedExecutionStatus.Config();
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for DynamicSplitterStatus.Config();
        if (v5 <= 0x3F)
        {
          return swift_updateClassMetadata2();
        }
      }
    }
  }

  return result;
}

uint64_t sub_100035790()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000357E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000357FC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_100035858()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000358CC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035A1C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_100035AA4()
{

  return _swift_deallocObject(v0, 40, 7);
}

char *sub_100035AF8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003870(&qword_100055270, " Y");
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

void *sub_100035C04(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003870(&qword_100055408, &qword_10003F160);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003870(&unk_100055410, &qword_10003F168);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100035D4C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = __CocoaDictionary.count.getter();
  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  while (1)
  {
    v3 = sub_100034BB0(v2, 0);

    v1 = sub_100039810(&v5, v3 + 4, v2, v1);
    sub_10001B370(v5);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return _swiftEmptyArrayStorage;
    }
  }

  return v3;
}

uint64_t sub_100035DFC(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
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

    sub_100036880(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_100035F4C(uint64_t *a1, void *a2)
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

      sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
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

    v19 = sub_100036184(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1000365D4(v20 + 1);
    }

    v18 = v8;
    sub_1000367FC(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_100036A00(v18, v13, isUniquelyReferenced_nonNull_native);
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

Swift::Int sub_100036184(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003870(&unk_100055260, &qword_10003F0D0);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1000365D4(v9 + 1);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_100036374(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003870(&qword_100055400, &qword_10003F158);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_1000365D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003870(&unk_100055260, &qword_10003F0D0);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(*(v5 + 40));
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
      *(*(v5 + 48) + 8 * v13) = v17;
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

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1000367FC(uint64_t a1, void *a2)
{
  NSObject._rawHashValue(seed:)(a2[5]);
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 56) |= 1 << result;
  *(a2[6] + 8 * result) = a1;
  ++a2[2];
  return result;
}

Swift::Int sub_100036880(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
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
    sub_100036374(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100036B70();
      goto LABEL_16;
    }

    sub_100036E1C(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
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

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
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
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100036A00(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1000365D4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_100036CCC();
      goto LABEL_12;
    }

    sub_100037054(v6 + 1);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
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

void *sub_100036B70()
{
  v1 = v0;
  sub_100003870(&qword_100055400, &qword_10003F158);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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

id sub_100036CCC()
{
  v1 = v0;
  sub_100003870(&unk_100055260, &qword_10003F0D0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

Swift::Int sub_100036E1C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003870(&qword_100055400, &qword_10003F158);
  result = static _SetStorage.resize(original:capacity:move:)();
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
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
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

Swift::Int sub_100037054(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_100003870(&unk_100055260, &qword_10003F0D0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v25 = v1;
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
      v16 = *(v5 + 40);
      v17 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = NSObject._rawHashValue(seed:)(v16);
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v25;
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

uint64_t sub_100037268(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100039A04(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1000372E4(v6);
  return specialized ContiguousArray._endMutation()();
}

Swift::Int sub_1000372E4(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for EmbeddedGameProcess();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
      v8[1] = v5;
      sub_1000375DC(v8, v9, a1, v4);
      *(v7 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1000373E8(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1000373E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v31 = type metadata accessor for Date();
  v8 = __chkstk_darwin(v31);
  v30 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v8);
  v13 = &v25 - v12;
  v26 = a2;
  if (a3 != a2)
  {
    v14 = (v11 + 8);
    v32 = *a4;
    v15 = v32 + 8 * a3 - 8;
    v16 = a1 - a3;
LABEL_5:
    v28 = v15;
    v29 = a3;
    v27 = v16;
    v17 = v15;
    while (1)
    {

      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      v18 = v30;
      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      v19 = static Date.> infix(_:_:)();
      v20 = *v14;
      v21 = v18;
      v22 = v31;
      (*v14)(v21, v31);
      v20(v13, v22);

      if ((v19 & 1) == 0)
      {
LABEL_4:
        a3 = v29 + 1;
        v15 = v28 + 8;
        v16 = v27 - 1;
        if (v29 + 1 == v26)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v32)
      {
        break;
      }

      v23 = *v17;
      *v17 = v17[1];
      v17[1] = v23;
      --v17;
      if (__CFADD__(v16++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000375DC(int64_t *a1, uint64_t a2, void *a3, int64_t a4)
{
  v6 = v4;
  v99 = a1;
  v108 = type metadata accessor for Date();
  v9 = __chkstk_darwin(v108);
  v107 = &v93 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v106 = &v93 - v13;
  v14 = a3[1];
  if (v14 < 1)
  {
    v16 = _swiftEmptyArrayStorage;
LABEL_88:
    v17 = *v99;
    if (!*v99)
    {
      goto LABEL_127;
    }

    a4 = v16;
    v5 = a3;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
    }

    else
    {
LABEL_121:
      result = sub_100038294(a4);
    }

    v109 = result;
    v89 = *(result + 16);
    if (v89 >= 2)
    {
      while (*v5)
      {
        a4 = *(result + 16 * v89);
        v90 = result;
        v91 = *(result + 16 * (v89 - 1) + 40);
        sub_100037DC4((*v5 + 8 * a4), (*v5 + 8 * *(result + 16 * (v89 - 1) + 32)), (*v5 + 8 * v91), v17);
        if (v6)
        {
        }

        if (v91 < a4)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_100038294(v90);
        }

        if (v89 - 2 >= *(v90 + 2))
        {
          goto LABEL_115;
        }

        v92 = &v90[16 * v89];
        *v92 = a4;
        v92[1] = v91;
        v109 = v90;
        sub_100038208(v89 - 1);
        result = v109;
        v89 = *(v109 + 16);
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v15 = 0;
  v105 = (v12 + 8);
  v16 = _swiftEmptyArrayStorage;
  v98 = a4;
  v94 = a3;
  while (1)
  {
    v17 = v15++;
    if (v15 < v14)
    {
      v103 = v14;
      v96 = v16;
      v97 = v6;
      v18 = *a3;
      v102 = 8 * v17;
      v5 = v18 + 8 * v17 + 16;

      v19 = v106;
      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      v20 = v107;
      dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
      LODWORD(v104) = static Date.> infix(_:_:)();
      v21 = *v105;
      v22 = v108;
      (*v105)(v20, v108);
      v21(v19, v22);

      v95 = v17;
      v23 = v17 + 2;
      while (1)
      {
        v15 = v103;
        if (v103 == v23)
        {
          break;
        }

        v24 = v106;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v25 = v107;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v26 = static Date.> infix(_:_:)() & 1;
        v27 = v25;
        v28 = v108;
        v21(v27, v108);
        v21(v24, v28);

        ++v23;
        v5 += 8;
        if ((v104 & 1) != v26)
        {
          v15 = v23 - 1;
          break;
        }
      }

      v16 = v96;
      v6 = v97;
      a4 = v98;
      v17 = v95;
      v29 = v102;
      if (v104)
      {
        if (v15 < v95)
        {
          goto LABEL_118;
        }

        a3 = v94;
        if (v95 < v15)
        {
          v30 = 8 * v15 - 8;
          v31 = v15;
          v32 = v95;
          do
          {
            if (v32 != --v31)
            {
              v34 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v33 = *(v34 + v29);
              *(v34 + v29) = *(v34 + v30);
              *(v34 + v30) = v33;
            }

            ++v32;
            v30 -= 8;
            v29 += 8;
          }

          while (v32 < v31);
        }
      }

      else
      {
        a3 = v94;
      }
    }

    v35 = a3[1];
    if (v15 < v35)
    {
      if (__OFSUB__(v15, v17))
      {
        goto LABEL_117;
      }

      if (v15 - v17 < a4)
      {
        v36 = v17 + a4;
        if (__OFADD__(v17, a4))
        {
          goto LABEL_119;
        }

        if (v36 >= v35)
        {
          v36 = a3[1];
        }

        if (v36 < v17)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v15 != v36)
        {
          break;
        }
      }
    }

LABEL_36:
    if (v15 < v17)
    {
      goto LABEL_116;
    }

    v45 = v16;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v16 = v45;
    }

    else
    {
      result = sub_10002406C(0, *(v45 + 2) + 1, 1, v45);
      v16 = result;
    }

    v5 = *(v16 + 2);
    v46 = *(v16 + 3);
    a4 = v5 + 1;
    if (v5 >= v46 >> 1)
    {
      result = sub_10002406C((v46 > 1), v5 + 1, 1, v16);
      v16 = result;
    }

    *(v16 + 2) = a4;
    v47 = &v16[16 * v5];
    *(v47 + 4) = v17;
    *(v47 + 5) = v15;
    v48 = *v99;
    if (!*v99)
    {
      goto LABEL_126;
    }

    if (v5)
    {
      while (1)
      {
        v17 = a4 - 1;
        if (a4 >= 4)
        {
          break;
        }

        if (a4 == 3)
        {
          v49 = *(v16 + 4);
          v50 = *(v16 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_56:
          if (v52)
          {
            goto LABEL_105;
          }

          v65 = &v16[16 * a4];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_108;
          }

          v71 = &v16[16 * v17 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_112;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v17 = a4 - 2;
            }

            goto LABEL_77;
          }

          goto LABEL_70;
        }

        v75 = &v16[16 * a4];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_70:
        if (v70)
        {
          goto LABEL_107;
        }

        v78 = &v16[16 * v17];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_110;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_77:
        v5 = v17 - 1;
        if (v17 - 1 >= a4)
        {
          __break(1u);
LABEL_101:
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
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v86 = v16;
        a4 = *&v16[16 * v5 + 32];
        v87 = *&v16[16 * v17 + 40];
        sub_100037DC4((*a3 + 8 * a4), (*a3 + 8 * *&v16[16 * v17 + 32]), (*a3 + 8 * v87), v48);
        if (v6)
        {
        }

        if (v87 < a4)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100038294(v86);
        }

        if (v5 >= *(v86 + 2))
        {
          goto LABEL_102;
        }

        v88 = &v86[16 * v5];
        *(v88 + 4) = a4;
        *(v88 + 5) = v87;
        v109 = v86;
        result = sub_100038208(v17);
        v16 = v109;
        a4 = *(v109 + 16);
        if (a4 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v16[16 * a4 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_103;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_104;
      }

      v60 = &v16[16 * a4];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_106;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_109;
      }

      if (v64 >= v56)
      {
        v82 = &v16[16 * v17 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_113;
        }

        if (v51 < v85)
        {
          v17 = a4 - 2;
        }

        goto LABEL_77;
      }

      goto LABEL_56;
    }

LABEL_3:
    v14 = a3[1];
    a4 = v98;
    if (v15 >= v14)
    {
      goto LABEL_88;
    }
  }

  v96 = v16;
  v97 = v6;
  v104 = *a3;
  v37 = (v104 + 8 * v15 - 8);
  v95 = v17;
  v38 = v17 - v15;
  v100 = v36;
LABEL_29:
  v102 = v37;
  v103 = v15;
  v101 = v38;
  while (1)
  {

    v5 = v106;
    dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
    v39 = v107;
    dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
    a4 = static Date.> infix(_:_:)();
    v40 = *v105;
    v41 = v39;
    v42 = v108;
    (*v105)(v41, v108);
    v40(v5, v42);

    if ((a4 & 1) == 0)
    {
LABEL_28:
      v15 = v103 + 1;
      v37 = (v102 + 8);
      v38 = v101 - 1;
      if (v103 + 1 != v100)
      {
        goto LABEL_29;
      }

      v15 = v100;
      v16 = v96;
      v6 = v97;
      a3 = v94;
      v17 = v95;
      goto LABEL_36;
    }

    if (!v104)
    {
      break;
    }

    v43 = *v37;
    *v37 = v37[1];
    v37[1] = v43;
    --v37;
    if (__CFADD__(v38++, 1))
    {
      goto LABEL_28;
    }
  }

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
  return result;
}

uint64_t sub_100037DC4(char *a1, char *a2, char *a3, char *a4)
{
  v47 = a4;
  v45 = type metadata accessor for Date();
  v7 = *(v45 - 8);
  v8 = __chkstk_darwin(v45);
  v44 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v43 = &v38 - v10;
  v11 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v11 = a2 - a1;
  }

  v12 = v11 >> 3;
  v13 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v13 = a3 - a2;
  }

  v14 = v13 >> 3;
  if (v12 >= v13 >> 3)
  {
    if (v47 != a2 || &a2[8 * v14] <= v47)
    {
      memmove(v47, a2, 8 * v14);
    }

    v46 = &v47[8 * v14];
    if (a3 - a2 >= 8 && a2 > a1)
    {
      v39 = (v7 + 8);
      v42 = a1;
      do
      {
        v38 = a2;
        v25 = a3 - 8;
        v26 = v46;
        v40 = a2 - 8;
        while (1)
        {
          v41 = v25;
          v27 = v25 + 8;
          v26 -= 8;

          v28 = v43;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          v29 = v44;
          dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
          v30 = static Date.> infix(_:_:)();
          v31 = *v39;
          v32 = v29;
          v33 = v45;
          (*v39)(v32, v45);
          v31(v28, v33);

          if (v30)
          {
            break;
          }

          v34 = v41;
          if (v27 != v46)
          {
            *v41 = *v26;
          }

          v25 = v34 - 8;
          v46 = v26;
          if (v26 <= v47)
          {
            v46 = v26;
            a2 = v38;
            goto LABEL_39;
          }
        }

        a3 = v41;
        v35 = v42;
        v36 = v40;
        if (v27 != v38)
        {
          *v41 = *v40;
        }

        if (v46 <= v47)
        {
          break;
        }

        a2 = v36;
      }

      while (v36 > v35);
      a2 = v36;
    }
  }

  else
  {
    if (v47 != a1 || &a1[8 * v12] <= v47)
    {
      memmove(v47, a1, 8 * v12);
    }

    v46 = &v47[8 * v12];
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v15 = (v7 + 8);
      while (1)
      {
        v42 = a1;

        v16 = v43;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v17 = v44;
        dispatch thunk of EmbeddedGameProcess.lastFocused.getter();
        v18 = static Date.> infix(_:_:)();
        v19 = *v15;
        v20 = v17;
        v21 = v45;
        (*v15)(v20, v45);
        v19(v16, v21);

        if ((v18 & 1) == 0)
        {
          break;
        }

        v22 = a2;
        v23 = v42;
        v24 = v42 == a2;
        a2 += 8;
        if (!v24)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v23 + 8;
        if (v47 >= v46 || a2 >= a3)
        {
          goto LABEL_20;
        }
      }

      v22 = v47;
      v23 = v42;
      v47 += 8;
      if (v42 == v22)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v23 = *v22;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_39:
  if (a2 != v47 || a2 >= &v47[(v46 - v47 + (v46 - v47 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(a2, v47, 8 * ((v46 - v47) / 8));
  }

  return 1;
}

uint64_t sub_100038208(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_100038294(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_1000382A8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = __CocoaSet.contains(_:)();

    if (v6)
    {
      v7 = sub_100038EE4(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
  v10 = NSObject._rawHashValue(seed:)(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = static NSObject.== infix(_:_:)();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_100036CCC();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_10003904C(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_100038440(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1000351E0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_100038A30(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_100038D80();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = __CocoaDictionary.count.getter();
  v8 = sub_10003858C(v4, v7);

  v9 = sub_1000351E0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_100038A30(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

Swift::Int sub_10003858C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100003870(&unk_100055250, &qword_10003F0C8);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for EmbeddedGameProcess();
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1000387C0(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

Swift::Int sub_1000387C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_100003870(&unk_100055250, &qword_10003F0C8);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v31 = v2;
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
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 8 * v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v4 & 1) == 0)
      {
        v22 = v20;
      }

      result = NSObject._rawHashValue(seed:)(*(v7 + 40));
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v4 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_100038A30(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      v11 = NSObject._rawHashValue(seed:)(v9);

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 >= v8 && v3 >= v12)
        {
LABEL_15:
          v15 = *(a2 + 48);
          v16 = (v15 + 8 * v3);
          v17 = (v15 + 8 * v6);
          if (v3 != v6 || v16 >= v17 + 1)
          {
            *v16 = *v17;
          }

          v18 = *(a2 + 56);
          v19 = (v18 + 8 * v3);
          v20 = (v18 + 8 * v6);
          if (v3 != v6 || v19 >= v20 + 1)
          {
            *v19 = *v20;
            v3 = v6;
          }
        }
      }

      else if (v12 >= v8 || v3 >= v12)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }
}

uint64_t sub_100038BBC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_1000351E0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      sub_1000387C0(v13, a3 & 1);
      v8 = sub_1000351E0(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return _objc_retain_x1();
      }
    }

    else
    {
      v16 = v8;
      sub_100038D80();
      v8 = v16;
    }
  }

  v18 = *v4;
  if ((v14 & 1) == 0)
  {
    v18[(v8 >> 6) + 8] |= 1 << v8;
    *(v18[6] + 8 * v8) = a2;
    *(v18[7] + 8 * v8) = a1;
    v20 = v18[2];
    v12 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v12)
    {
      v18[2] = v21;

      return _objc_retain_x1();
    }

    goto LABEL_17;
  }

  *(v18[7] + 8 * v8) = a1;
}

uint64_t sub_100038D38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_100038D80()
{
  v1 = v0;
  sub_100003870(&unk_100055250, &qword_10003F0C8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
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
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        *(*(v4 + 56) + 8 * v17) = v19;
        v20 = v18;
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

uint64_t sub_100038EE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = sub_100036184(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    sub_100009748(0, &qword_100054450, RBSProcessIdentity_ptr);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_10003904C(v10);
  result = static NSObject.== infix(_:_:)();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_10003904C(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 40);
        v11 = *(*(v3 + 48) + 8 * v6);
        v12 = NSObject._rawHashValue(seed:)(v10);

        v13 = v12 & v7;
        if (v2 >= v9)
        {
          if (v13 >= v9 && v2 >= v13)
          {
LABEL_16:
            v16 = *(v3 + 48);
            v17 = (v16 + 8 * v2);
            v18 = (v16 + 8 * v6);
            if (v2 != v6 || v17 >= v18 + 1)
            {
              *v17 = *v18;
              v2 = v6;
            }
          }
        }

        else if (v13 >= v9 || v2 >= v13)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v19 = *(v3 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v21;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t sub_1000391EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003870(&qword_100054428, &qword_10003E778);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_100039324(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_100034BB0(v3, 0);
  sub_10003955C((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000393B8(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10003B0A0(&qword_1000553F8, &qword_1000553F0, &qword_10003F150, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003870(&qword_1000553F0, &qword_10003F150);
            v9 = sub_100039700(v13, i, a3);
            v11 = *v10;
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
        type metadata accessor for GameModeCCUIStatusBundleInfo();
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

uint64_t sub_10003955C(uint64_t result, uint64_t a2, unint64_t a3)
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
          sub_10003B0A0(&unk_1000552A0, &qword_100055298, qword_10003F0F8, &protocol conformance descriptor for [A]);
          for (i = 0; i != v6; ++i)
          {
            sub_100003870(&qword_100055298, qword_10003F0F8);
            v9 = sub_100039788(v13, i, a3);
            v11 = *v10;

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
        type metadata accessor for EmbeddedGameProcess();
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

void (*sub_100039700(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_100039780;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_100039788(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {

LABEL_5:
    *v3 = v4;
    return sub_100039808;
  }

  __break(1u);
  return result;
}

uint64_t sub_100039810(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v17 = -1 << *(v4 + 32);
    v8 = v4 + 64;
    v9 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v10 = v19 & *(v4 + 64);
    v21 = v9;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v15 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = __CocoaDictionary.makeIterator()();
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v4 = result | 0x8000000000000000;
  v21 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v15 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v22 = a3;
  a3 = 0;
  v11 = 0;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if ((v4 & 0x8000000000000000) != 0)
    {
      if (!__CocoaDictionary.Iterator.next()())
      {
        goto LABEL_31;
      }

      swift_unknownObjectRelease();
      type metadata accessor for EmbeddedGameProcess();
      swift_dynamicCast();
      result = v23;
      v15 = v11;
      if (!v23)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v14 = v11;
    if (!v10)
    {
      break;
    }

    v15 = v11;
LABEL_13:
    v10 &= v10 - 1;

    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v22;
    if (v13 == v22)
    {
LABEL_31:
      v15 = v11;
      goto LABEL_32;
    }

    ++a2;
    a3 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v15 >= v12)
    {
      break;
    }

    v10 = *(v8 + 8 * v15);
    ++v14;
    if (v10)
    {
      v11 = v15;
      goto LABEL_13;
    }
  }

  v10 = 0;
  if (v12 <= v11 + 1)
  {
    v20 = v11 + 1;
  }

  else
  {
    v20 = v12;
  }

  v15 = v20 - 1;
LABEL_32:
  *v7 = v4;
  v7[1] = v8;
  v7[2] = v21;
  v7[3] = v15;
  v7[4] = v10;
  return a3;
}

unint64_t sub_100039A18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003870(&unk_100055250, &qword_10003F0C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1000351E0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_100039B10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100003870(&qword_100055288, &qword_10003F0E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100039F6C(v4, v13, &qword_100055280, &qword_10003F0E0);
      result = sub_10003529C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1000096B8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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

uint64_t sub_100039C4C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100039D3C(uint64_t a1, uint64_t a2)
{
  v4 = SEMPolicy.rawValue.getter();
  if (v4 == SEMPolicy.rawValue.getter())
  {
    v5 = 0;
  }

  else
  {
    v6 = SEMPolicy.rawValue.getter();
    if (v6 == SEMPolicy.rawValue.getter())
    {
      v5 = 1;
    }

    else
    {
      v7 = SEMPolicy.rawValue.getter();
      if (v7 == SEMPolicy.rawValue.getter())
      {
        v5 = 2;
      }

      else
      {
        v8 = SEMPolicy.rawValue.getter();
        if (v8 == SEMPolicy.rawValue.getter())
        {
          v5 = 3;
        }

        else
        {
          v5 = 0x7FFFFFFFFFFFFFFFLL;
        }
      }
    }
  }

  v9 = SEMPolicy.rawValue.getter();
  if (v9 == SEMPolicy.rawValue.getter())
  {
    v10 = 0;
  }

  else
  {
    v11 = SEMPolicy.rawValue.getter();
    if (v11 == SEMPolicy.rawValue.getter())
    {
      v10 = 1;
    }

    else
    {
      v12 = SEMPolicy.rawValue.getter();
      if (v12 == SEMPolicy.rawValue.getter())
      {
        v10 = 2;
      }

      else
      {
        v13 = SEMPolicy.rawValue.getter();
        if (v13 != SEMPolicy.rawValue.getter())
        {
          return a1;
        }

        v10 = 3;
      }
    }
  }

  if (v10 < v5)
  {
    return a2;
  }

  return a1;
}

unint64_t sub_100039EB0()
{
  result = qword_1000552C0;
  if (!qword_1000552C0)
  {
    sub_100009748(255, &qword_1000552B8, RBSProcessAssertionInfo_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000552C0);
  }

  return result;
}

unint64_t sub_100039F18()
{
  result = qword_1000552D0;
  if (!qword_1000552D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000552D0);
  }

  return result;
}

uint64_t sub_100039F6C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_100003870(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_100039FD4()
{
  result = qword_1000552F8;
  if (!qword_1000552F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000552F8);
  }

  return result;
}

uint64_t sub_10003A028(void *a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  result = __chkstk_darwin(v7);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v12 = *&v1[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_queue];
    v18 = v9;
    v19 = result;
    v13 = swift_allocObject();
    *(v13 + 16) = v1;
    *(v13 + 24) = a1;
    aBlock[4] = sub_10003B098;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100024520;
    aBlock[3] = &unk_10004E908;
    v14 = _Block_copy(aBlock);
    v17 = a1;
    v15 = v12;
    v16 = v1;
    static DispatchQoS.unspecified.getter();
    v20 = _swiftEmptyArrayStorage;
    sub_100038D38(&qword_100053B08, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100003870(&unk_1000551B0, &unk_10003E7A0);
    sub_10003B0A0(&qword_100053B10, &unk_1000551B0, &unk_10003E7A0, &protocol conformance descriptor for [A]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v4 + 8))(v6, v3);
    (*(v18 + 8))(v11, v19);
  }

  return result;
}

uint64_t sub_10003A31C(uint64_t a1, uint64_t a2, int a3)
{
  v109 = a1;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v111 = &v105[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __chkstk_darwin(v8);
  v112 = &v105[-v11];
  v12 = __chkstk_darwin(v10);
  v14 = &v105[-v13];
  v15 = __chkstk_darwin(v12);
  v17 = &v105[-v16];
  v18 = __chkstk_darwin(v15);
  v20 = &v105[-v19];
  sub_100001C78(v18, v21);
  v22 = 0;
  v23 = 0;
  v113 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection;
  v114 = v3;
  v24 = *&v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_connection];
  v107 = a2;
  if (v24)
  {
LABEL_2:
    v108 = v22;
    v110 = v23;
    v25 = objc_opt_self();
    v26 = [v25 sharedInstance];
    v27 = [v26 isAvailable];

    if (v27 && (v28 = [v25 sharedInstance], v29 = objc_msgSend(v28, "sfSymbolName"), v28, v29))
    {
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      sub_100003870(&qword_100055270, " Y");
      v33 = swift_allocObject();
      *(v33 + 16) = xmmword_10003EB50;
      *(v33 + 32) = v30;
      *(v33 + 40) = v32;

      v34 = v112;
    }

    else
    {
      v35 = [objc_opt_self() sharedInstance];
      v36 = [v35 allKeyboardDevices];

      v34 = v112;
      if (v36)
      {
        sub_100009748(0, &qword_1000553E0, BKSHIDKeyboardDevice_ptr);
        v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v37 >> 62)
        {
          _CocoaArrayWrapper.endIndex.getter();
        }
      }
    }

    static Logger.daemon.getter();

    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.info.getter();

    v72 = os_log_type_enabled(v70, v71);
    v106 = a3;
    if (v72)
    {
      v73 = a2;
      v74 = swift_slowAlloc();
      *&aBlock = swift_slowAlloc();
      *v74 = 136381187;
      *(v74 + 4) = sub_100034C38(v109, v73, &aBlock);
      *(v74 + 12) = 1024;
      *(v74 + 14) = a3 & 1;
      *(v74 + 18) = 2080;
      v75 = Array.description.getter();
      v76 = v7;
      v78 = v77;

      v79 = sub_100034C38(v75, v78, &aBlock);

      *(v74 + 20) = v79;
      _os_log_impl(&_mh_execute_header, v70, v71, "showAngelBanner(for: %{private}s, enabled:%{BOOL}d, actionSymbols:%s", v74, 0x1Cu);
      swift_arrayDestroy();

      v80 = *(v76 + 8);
    }

    else
    {

      v80 = *(v7 + 8);
    }

    v80(v34, v6);
    v81 = *&v114[v113];
    if (v81)
    {
      sub_100003870(&qword_100054B30, &unk_10003EBF0);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_10003EB40;
      v83 = v81;
      v84 = String._bridgeToObjectiveC()();
      v85 = String._bridgeToObjectiveC()();
      v86 = [objc_opt_self() attributeWithDomain:v84 name:v85];

      *(v82 + 32) = v86;
      sub_100009748(0, &qword_1000553C8, RBSAttribute_ptr);
      isa = Array._bridgeToObjectiveC()().super.isa;

      v88 = [v83 remoteTargetWithLaunchingAssertionAttributes:isa];

      if (v88)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
      }

      else
      {
        v115 = 0u;
        v116 = 0u;
      }

      aBlock = v115;
      v118 = v116;
      if (*(&v116 + 1))
      {
        sub_100003870(&qword_1000553D8, &qword_10003F148);
        if (swift_dynamicCast())
        {
          v89 = v115;
          v90 = String._bridgeToObjectiveC()();
          v91 = Array._bridgeToObjectiveC()().super.isa;

          sub_100001DAC(v89, v90, v106 & 1, v91);
          swift_unknownObjectRelease();

          return sub_10003B078(v108, v110);
        }

LABEL_32:
        v92 = v111;
        static Logger.daemon.getter();
        v93 = Logger.logObject.getter();
        v94 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v93, v94))
        {
          v95 = swift_slowAlloc();
          *v95 = 0;
          _os_log_impl(&_mh_execute_header, v93, v94, "com.apple.GamePolicyAngel.notification.service Game Mode No Conn", v95, 2u);
        }

        v80(v92, v6);
        return sub_10003B078(v108, v110);
      }
    }

    else
    {

      aBlock = 0u;
      v118 = 0u;
    }

    sub_1000096E8(&aBlock, &qword_1000553D0, &unk_10003E3F0);
    goto LABEL_32;
  }

  v38 = OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_interface;
  v39 = *&v3[OBJC_IVAR____TtC11gamepolicyd26EmbeddedGameProcessMonitor_interface];
  if (!v39)
  {
    v40 = String._bridgeToObjectiveC()();
    v108 = v6;
    v41 = v40;
    v42 = [objc_opt_self() interfaceWithIdentifier:v40];
    v110 = "com.apple.GameOverlayUI";
    v43 = v42;

    v44 = objc_opt_self();
    v45 = [v44 protocolForProtocol:&OBJC_PROTOCOL___GamePolicyAngelNotificationService];
    [v43 setServer:v45];

    v6 = v108;
    v46 = [v44 protocolForProtocol:&OBJC_PROTOCOL____TtP11gamepolicyd42GamePolicyAngelNotificationServiceCallback_];
    [v43 setClient:v46];

    [v43 setClientMessagingExpectation:1];
    [v43 copy];
    _bridgeAnyObjectToAny(_:)();
    v47 = v114;
    swift_unknownObjectRelease();

    sub_100009748(0, &qword_100055360, BSServiceInterface_ptr);
    v48 = swift_dynamicCast();
    v49 = v115;
    if (!v48)
    {
      v49 = 0;
    }

    v50 = *&v47[v38];
    *&v47[v38] = v49;

    v39 = *&v47[v38];
    if (!v39)
    {
      static Logger.daemon.getter();
      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v99, v100))
      {
        v101 = swift_slowAlloc();
        *v101 = 0;
        _os_log_impl(&_mh_execute_header, v99, v100, "com.apple.GamePolicyAngel.notification.service No interface", v101, 2u);
      }

      return (*(v7 + 8))(v14, v6);
    }
  }

  v51 = v39;
  v52 = String._bridgeToObjectiveC()();
  v53 = String._bridgeToObjectiveC()();
  v54 = [objc_opt_self() endpointForMachName:v52 service:v53 instance:0];

  if (!v54)
  {
    static Logger.daemon.getter();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      *v98 = 0;
      _os_log_impl(&_mh_execute_header, v96, v97, "com.apple.GamePolicyAngel.notification.service No endpoint", v98, 2u);
    }

    else
    {
    }

    return (*(v7 + 8))(v17, v6);
  }

  v55 = [objc_opt_self() connectionWithEndpoint:v54];
  if (!v55)
  {
LABEL_44:
    static Logger.daemon.getter();
    v102 = Logger.logObject.getter();
    v103 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 0;
      _os_log_impl(&_mh_execute_header, v102, v103, "com.apple.GamePolicyAngel.notification.service No connection", v104, 2u);
    }

    else
    {
    }

    return (*(v7 + 8))(v20, v6);
  }

  v56 = v55;
  v121 = &OBJC_PROTOCOL___BSServiceConnectionClient;
  v57 = swift_dynamicCastObjCProtocolConditional();
  if (!v57)
  {

    goto LABEL_44;
  }

  v58 = v57;
  v108 = v6;
  v59 = swift_allocObject();
  *(v59 + 2) = v51;
  v60 = v51;
  v61 = v114;
  *(v59 + 3) = v114;
  v62 = swift_allocObject();
  *(v62 + 16) = sub_10003B070;
  *(v62 + 24) = v59;
  v110 = v59;
  v119 = sub_10003B1C8;
  v120 = v62;
  *&aBlock = _NSConcreteStackBlock;
  *(&aBlock + 1) = 1107296256;
  *&v118 = sub_10003B1C4;
  *(&v118 + 1) = &unk_10004E840;
  v63 = _Block_copy(&aBlock);
  v64 = v60;
  v65 = v56;
  v66 = v61;

  [v58 configureConnection:v63];

  _Block_release(v63);
  LOBYTE(v63) = swift_isEscapingClosureAtFileLocation();

  if ((v63 & 1) == 0)
  {
    v68 = v65;
    [v58 activate];

    v69 = *&v61[v113];
    *&v61[v113] = v58;

    v22 = sub_10003B070;
    a2 = v107;
    v6 = v108;
    v23 = v110;
    goto LABEL_2;
  }

  __break(1u);
  return result;
}

uint64_t sub_10003B030()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003B078(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10003B0A0(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1000085E0(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id *sub_10003B1CC()
{

  return v0;
}

uint64_t sub_10003B21C()
{
  sub_10003B1CC();

  return _swift_deallocClassInstance(v0, 73, 7);
}

uint64_t sub_10003B274()
{

  return _swift_deallocClassInstance(v0, 24, 7);
}

uint64_t sub_10003B2D0()
{
  _s11PersonalityCMa();
  sub_100003870(&qword_1000556A0, &qword_10003F208);
  v0._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 62;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 60;
}

uint64_t getEnumTagSinglePayload for Feature(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for Feature(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10003B4A4()
{
  result = qword_1000556A8;
  if (!qword_1000556A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1000556A8);
  }

  return result;
}

const char *sub_10003B4F8()
{
  v1 = *v0;
  v2 = "GamePolicy";
  if (v1 == 3)
  {
    v2 = "SwiftUI";
  }

  if (v1 == 2)
  {
    return "gseui";
  }

  else
  {
    return v2;
  }
}

const char *sub_10003B540()
{
  v1 = "gameModeNotifications";
  v2 = "de7bbd8e";
  if (*v0 != 2)
  {
    v2 = "Solarium";
  }

  if (*v0)
  {
    v1 = "universalGamePolicySupport";
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

void sub_10003B5B4()
{
  v0 = getGPLogger();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_INFO))
  {
    *v1 = 0;
    _os_log_impl(&_mh_execute_header, v0, OS_LOG_TYPE_INFO, "Soft-linking GameCenterFoundation.", v1, 2u);
  }
}

void sub_10003B61C()
{
  v0 = +[NSAssertionHandler currentHandler];
  v1 = [NSString stringWithUTF8String:"Class getGKGameModeBannerConfigClass(void)_block_invoke"];
  [v0 handleFailureInFunction:v1 file:@"GPUtility.m" lineNumber:28 description:{@"Unable to find class %s", "GKGameModeBannerConfig"}];

  __break(1u);
}

void sub_10003B698(void *a1)
{
  v2 = +[NSAssertionHandler currentHandler];
  v3 = [NSString stringWithUTF8String:"void *GameCenterFoundationLibrary(void)"];
  [v2 handleFailureInFunction:v3 file:@"GPUtility.m" lineNumber:27 description:{@"%s", *a1}];

  __break(1u);
  Notification._bridgeToObjectiveC()();
}