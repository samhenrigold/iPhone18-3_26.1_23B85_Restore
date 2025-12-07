double sub_1000A0EA0()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  [*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer) invalidate];
  sub_10009DA48(0);
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel))
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

double sub_1000A1080()
{
  sub_1000A1268(0xD000000000000011, 0x800000010011F430);
  v1 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      return result;
    }
  }

  *(v0 + v1) = 3;

  return sub_10009C74C();
}

void sub_1000A1268(uint64_t a1, unint64_t a2)
{
  swift_getKeyPath();
  v18 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__backgroundRuntimeAssertion);
  if (v5)
  {
    v6 = v5;
    sub_10009CF74(0);
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_100006B0C(v7, qword_100181F88);
    v8 = v6;

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v11 = 136446466;
      v12 = v8;
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17 = sub_100006B44(v14, v16, &v18);

      *(v11 + 4) = v17;
      *(v11 + 12) = 2082;
      *(v11 + 14) = sub_100006B44(a1, a2, &v18);
      _os_log_impl(&_mh_execute_header, v9, v10, "Invalidating background runtime assertion: %{public}s, reason: %{public}s", v11, 0x16u);
      swift_arrayDestroy();
    }

    [v8 invalidate];
  }
}

void sub_1000A14E0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  swift_getKeyPath();
  v16 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState);
  swift_getKeyPath();
  v16 = v6;
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (v7)
  {
    swift_getKeyPath();
    v16 = v3;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (!*(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager))
    {
      sub_10009E454();
    }

    sub_10009EE8C(a1, a2);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181F88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v16 = v12;
      *v11 = 136315138;
      v13 = _typeName(_:qualified:)();
      v15 = sub_100006B44(v13, v14, &v16);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s Avoid starting discovery as airplay receiver settings are disabled.", v11, 0xCu);
      sub_1000052E4(v12);
    }
  }
}

double sub_1000A17C4(void *a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v7 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v7 - 8);
  v9 = &v98 - v8;
  v111 = type metadata accessor for URL();
  v10 = *(v111 - 8);
  v11 = __chkstk_darwin(v111);
  v106 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v107 = &v98 - v13;
  v14 = a1;
  sub_10009C3B4(a1);
  swift_getKeyPath();
  v15 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v114[0] = v2;
  v104 = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v16 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverSettingsState);
  swift_getKeyPath();
  v114[0] = v16;
  sub_1000AC1D0(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);

  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v17 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (!v17)
  {
    if (qword_100168E20 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_95;
  }

  v98 = v9;
  v103 = v15;
  v18 = a2;
  v100 = ObjectType;
  v99 = v3;
  v109 = a2;
  v102 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr);
    sub_1000AC980();
    Set.Iterator.init(_cocoa:)();
    v18 = v113[1];
    v19 = v113[2];
    v20 = v113[3];
    v21 = v113[4];
    v22 = v113[5];
  }

  else
  {
    v33 = -1 << *(a2 + 32);
    v19 = a2 + 56;
    v20 = ~v33;
    v34 = -v33;
    if (v34 < 64)
    {
      v35 = ~(-1 << v34);
    }

    else
    {
      v35 = -1;
    }

    v22 = v35 & *(v18 + 56);

    v21 = 0;
  }

  v101 = v20;
  v110 = (v10 + 8);
  v108 = 0x800000010011F2D0;
  while (1)
  {
    v37 = v21;
    if (v18 < 0)
    {
      v41 = __CocoaSet.Iterator.next()();
      if (!v41 || (v113[0] = v41, sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr), swift_dynamicCast(), (v40 = v114[0]) == 0))
      {
LABEL_29:
        sub_1000151D4(v18);
        LODWORD(v107) = 1;
        goto LABEL_30;
      }
    }

    else
    {
      v38 = v21;
      v39 = v22;
      if (!v22)
      {
        while (1)
        {
          v21 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v21 >= ((v20 + 64) >> 6))
          {
            goto LABEL_29;
          }

          v39 = *(v19 + 8 * v21);
          ++v38;
          if (v39)
          {
            goto LABEL_21;
          }
        }

        __break(1u);
LABEL_94:
        __break(1u);
LABEL_95:
        swift_once();
LABEL_5:
        v23 = type metadata accessor for Logger();
        sub_100006B0C(v23, qword_100181F88);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v114[0] = v27;
          *v26 = 136315138;
          v28 = _typeName(_:qualified:)();
          v30 = sub_100006B44(v28, v29, v114);

          *(v26 + 4) = v30;
          v31 = "%s Avoid starting discovery as airplay receiver settings are disabled.";
LABEL_7:
          _os_log_impl(&_mh_execute_header, v24, v25, v31, v26, 0xCu);
          sub_1000052E4(v27);

LABEL_8:
        }

        goto LABEL_9;
      }

LABEL_21:
      v22 = (v39 - 1) & v39;
      v40 = *(*(v18 + 48) + ((v21 << 9) | (8 * __clz(__rbit64(v39)))));
      if (!v40)
      {
        goto LABEL_29;
      }
    }

    v105 = v37;
    v42 = [v40 URL];
    v43 = v107;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v44 = URL.absoluteString.getter();
    v46 = v45;
    (*v110)(v43, v111);
    if (v44 == 0xD000000000000026 && v108 == v46)
    {
      break;
    }

    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v36)
    {
      goto LABEL_28;
    }
  }

LABEL_28:
  sub_1000151D4(v18);
  LODWORD(v107) = 0;
LABEL_30:
  if (v102)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr);
    sub_1000AC980();
    Set.Iterator.init(_cocoa:)();
    v47 = v114[0];
    v48 = v114[1];
    v49 = v114[2];
    v50 = v114[3];
    v51 = v114[4];
  }

  else
  {
    v52 = -1 << *(v109 + 32);
    v48 = v109 + 56;
    v49 = ~v52;
    v53 = -v52;
    if (v53 < 64)
    {
      v54 = ~(-1 << v53);
    }

    else
    {
      v54 = -1;
    }

    v51 = v54 & *(v109 + 56);

    v50 = 0;
  }

  v105 = v49;
  v55 = (v49 + 64) >> 6;
  v108 = 0x800000010011F290;
  v109 = v47;
  while (2)
  {
    if ((v47 & 0x8000000000000000) == 0)
    {
      v57 = v50;
      for (i = v51; !i; ++v57)
      {
        v50 = v57 + 1;
        if (__OFADD__(v57, 1))
        {
          goto LABEL_94;
        }

        if (v50 >= v55)
        {
          goto LABEL_53;
        }

        i = *(v48 + 8 * v50);
      }

      v51 = (i - 1) & i;
      v59 = *(*(v47 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(i)))));
      if (!v59)
      {
        goto LABEL_52;
      }

LABEL_47:
      v61 = [v59 URL];
      v62 = v106;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v63 = URL.absoluteString.getter();
      v65 = v64;
      (*v110)(v62, v111);
      if (v63 != 0xD000000000000035 || v108 != v65)
      {
        v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v47 = v109;
        if (v56)
        {
          goto LABEL_50;
        }

        continue;
      }

      v47 = v109;
LABEL_50:
      sub_1000151D4(v47);
      v66 = 0;
      v67 = v99;
LABEL_55:
      swift_getKeyPath();
      v113[0] = v67;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (!*(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager))
      {
        sub_10009E454();
      }

      swift_getKeyPath();
      v113[0] = v67;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if ((*(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) & 1) == 0)
      {
        swift_getKeyPath();
        v113[0] = v67;
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
        {
        }

        else
        {
          v68 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v68 & 1) == 0)
          {
            goto LABEL_67;
          }
        }

        v69 = [objc_opt_self() sharedApplication];
        v70 = [v69 isSuspended];

        if ((v70 & 1) == 0)
        {
          goto LABEL_67;
        }

        if (qword_100168E20 != -1)
        {
          swift_once();
        }

        v71 = type metadata accessor for Logger();
        sub_100006B0C(v71, qword_100181F88);
        v24 = Logger.logObject.getter();
        v25 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v24, v25))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v113[0] = v27;
          *v26 = 136315138;
          v72 = _typeName(_:qualified:)();
          v74 = sub_100006B44(v72, v73, v113);

          *(v26 + 4) = v74;
          v31 = "%s Avoiding starting airplay discovery as urlContext was opened as suspended while not eligibleForBackgroundAssertion.";
          goto LABEL_7;
        }

LABEL_9:

        return result;
      }

LABEL_67:
      sub_1000AC364();
      if ((v107 & 1) == 0)
      {
        result = sub_10009EE8C(0x4C52556D6F7266, 0xE700000000000000);
      }

      if (v66)
      {
        return result;
      }

      swift_getKeyPath();
      v113[0] = v67;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v75 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel;
      v76 = *(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
      if (!v76)
      {
        if (qword_100168E20 != -1)
        {
          swift_once();
        }

        v79 = type metadata accessor for Logger();
        sub_100006B0C(v79, qword_100181F88);
        v24 = Logger.logObject.getter();
        v80 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v24, v80))
        {
          v81 = swift_slowAlloc();
          *v81 = 0;
          _os_log_impl(&_mh_execute_header, v24, v80, "Can't request guest usesr view mirroring as model doesn't exist", v81, 2u);
          goto LABEL_8;
        }

        goto LABEL_9;
      }

      swift_getKeyPath();
      v113[0] = v76;
      v77 = sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

      v111 = v77;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v78 = *(v76 + 32);

      if (*(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
      {
        *(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        *(&v98 - 2) = v67;
        *(&v98 - 8) = 1;
        v113[0] = v67;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      swift_getKeyPath();
      v113[0] = v67;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      if (*(v67 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
      {

        goto LABEL_81;
      }

      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v83)
      {
LABEL_81:
        if (sub_10009CDAC() == 1)
        {

          goto LABEL_85;
        }

        v87 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v87)
        {
LABEL_85:
          if (qword_100168E20 != -1)
          {
            swift_once();
          }

          v88 = type metadata accessor for Logger();
          sub_100006B0C(v88, qword_100181F88);
          v89 = Logger.logObject.getter();
          v90 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v89, v90))
          {
            v91 = swift_slowAlloc();
            v92 = swift_slowAlloc();
            v113[0] = v92;
            *v91 = 136315138;
            v93 = _typeName(_:qualified:)();
            v95 = v67;
            v96 = sub_100006B44(v93, v94, v113);

            *(v91 + 4) = v96;
            v67 = v95;
            _os_log_impl(&_mh_execute_header, v89, v90, "%s request view mirroring while already streaming in PiP, forcing full screen.", v91, 0xCu);
            sub_1000052E4(v92);
          }

          swift_getKeyPath();
          v113[0] = v67;
          ObservationRegistrar.access<A, B>(_:keyPath:)();

          v97 = *(v67 + v75);
          if (v97)
          {
            swift_getKeyPath();
            v113[0] = v97;

            ObservationRegistrar.access<A, B>(_:keyPath:)();

            sub_100030FFC(0, 0xD000000000000031, 0x800000010011F250);
          }
        }
      }

      else
      {
        v84 = type metadata accessor for TaskPriority();
        v85 = v98;
        (*(*(v84 - 8) + 56))(v98, 1, 1, v84);
        v86 = swift_allocObject();
        v86[2] = 0;
        v86[3] = 0;
        v86[4] = v78;
        sub_1000EE5F8(0, 0, v85, &unk_1001161F0, v86);
      }

      return result;
    }

    break;
  }

  v60 = __CocoaSet.Iterator.next()();
  if (v60)
  {
    v112 = v60;
    sub_100031904(0, &qword_10016F2C0, UIOpenURLContext_ptr);
    swift_dynamicCast();
    v59 = v113[0];
    if (v113[0])
    {
      goto LABEL_47;
    }
  }

LABEL_52:
  v47 = v109;
LABEL_53:
  sub_1000151D4(v47);
  v67 = v99;
  if ((v107 & 1) == 0)
  {
    v66 = 1;
    goto LABEL_55;
  }

  return result;
}

uint64_t sub_1000A2964(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1000A29F8;

  return sub_1000B9C9C();
}

uint64_t sub_1000A29F8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  *(v1 + 32) = v3;
  *v3 = v2;
  v3[1] = sub_1000A2B38;

  return sub_1000BB14C();
}

uint64_t sub_1000A2B38()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1000A2C2C()
{
  swift_getObjectType();
  swift_getKeyPath();
  v11 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      sub_1000A1268(0x756F726765726F46, 0xEA0000000000646ELL);
      goto LABEL_6;
    }
  }

  sub_1000A14E0(0xD000000000000010, 0x800000010011F330);
LABEL_6:
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s SceneWillEnterForeground, overriding force permission dialog state to false.", v5, 0xCu);
    sub_1000052E4(v6);
  }

  return sub_10009F3E0(0);
}

double sub_1000A2EE4()
{
  v1 = v0;
  swift_getObjectType();
  swift_getKeyPath();
  v32 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {

    return result;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    return result;
  }

  if (sub_10009CDAC())
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  else
  {
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181F88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v32 = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v32);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s SceneDidEnterBackground while not in PiP, updating force permission dialog state.", v9, 0xCu);
    sub_1000052E4(v10);
  }

  sub_10009F3E0(2u);
  sub_1000AC364();
  sub_1000A36D0(0xD000000000000021, 0x800000010011F300);
  swift_getKeyPath();
  v32 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if ((*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) & 1) == 0)
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v32 = v17;
      *v16 = 136315138;
      v18 = _typeName(_:qualified:)();
      v20 = sub_100006B44(v18, v19, &v32);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s stopping airplay connection as backgrounded while in full screen and not eligible for background assertion.", v16, 0xCu);
      sub_1000052E4(v17);
    }

    sub_1000A1080();
  }

LABEL_16:
  swift_getKeyPath();
  v32 = v1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v1 + v2) == 2)
  {
  }

  else
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      return result;
    }
  }

  if (sub_10009CDAC() == 1)
  {
  }

  else
  {
    v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v22 & 1) == 0)
    {
      return result;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_100006B0C(v23, qword_100181F88);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v32 = v27;
    *v26 = 136315138;
    v28 = _typeName(_:qualified:)();
    v30 = sub_100006B44(v28, v29, &v32);

    *(v26 + 4) = v30;
    _os_log_impl(&_mh_execute_header, v24, v25, "%s SceneDidEnterBackground while streaming, set showAirplayUI to true.", v26, 0xCu);
    sub_1000052E4(v27);
  }

  if (*(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
  {
    *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v32 = v1;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  return result;
}

void sub_1000A36D0(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181F88);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    *v9 = 136315394;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v16);

    *(v9 + 4) = v12;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_100006B44(a1, a2, &v16);
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Stop mirroring session requested with reason: %s.", v9, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  v16 = v3;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v13 = *(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v13)
  {
    swift_getKeyPath();
    v16 = v13;
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(v13 + 16);

    swift_getKeyPath();
    v16 = v14;
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v15 = *(v14 + 112);

    [v15 stop];
  }

  sub_1000A02D0(a1, a2, 0);
}

void sub_1000A3A28()
{
  swift_getObjectType();
  swift_getKeyPath();
  v11 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v1 & 1) == 0)
    {
      return;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100006B0C(v2, qword_100181F88);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v11 = v6;
    *v5 = 136315138;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v11);

    *(v5 + 4) = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "%s SceneDidBecomeActive while streaming, update VM state based on mirroringUIType.", v5, 0xCu);
    sub_1000052E4(v6);
  }

  v10 = sub_10009CDAC();
  sub_1000A3CA8(v10);
}

void sub_1000A3CA8(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v20);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (a1)
    {
      if (a1 == 1)
      {
        v11 = 0xD000000000000010;
      }

      else
      {
        v11 = 0x69736E6172546E69;
      }

      if (a1 == 1)
      {
        v12 = 0x800000010011C670;
      }

      else
      {
        v12 = 0xEC0000006E6F6974;
      }
    }

    else
    {
      v11 = 0x657263536C6C7566;
      v12 = 0xEA00000000006E65;
    }

    v13 = sub_100006B44(v11, v12, &v20);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s didChangeMirroring to type: %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  if (a1 == 1)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  swift_getKeyPath();
  v20 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    v17 = [Strong activationState];

    if (!v17)
    {
      if ((*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) & 1) == 0)
      {
        *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 0;
        return;
      }

      goto LABEL_25;
    }
  }

LABEL_18:
  swift_getKeyPath();
  v20 = v2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {
  }

  else
  {
    v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v18 & 1) == 0)
    {
      return;
    }
  }

  if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
  {
    *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
    return;
  }

LABEL_25:
  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  v20 = v2;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
}

uint64_t *sub_1000A4204()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = (&v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  *v5 = static OS_dispatch_queue.main.getter();
  (*(v3 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v2);
  v6 = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v5, v2);
  if ((v6 & 1) == 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v7 = getpid();
  v8 = [objc_opt_self() targetWithPid:v7];
  sub_100002BE4(&qword_10016F290, &qword_10010CF40);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100115E40;
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [objc_opt_self() attributeWithDomain:v10 name:v11];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(RBSAssertion);
  v14 = String._bridgeToObjectiveC()();
  sub_100031904(0, &qword_10016F298, RBSAttribute_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = [v13 initWithExplanation:v14 target:v8 attributes:isa];

  v42 = 0;
  if ([v5 acquireWithError:&v42])
  {
    v16 = qword_100168E20;
    v17 = v42;
    if (v16 == -1)
    {
LABEL_4:
      v18 = type metadata accessor for Logger();
      sub_100006B0C(v18, qword_100181F88);
      v19 = v5;
      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v42 = v23;
        *v22 = 136446210;
        v24 = v19;
        v41 = v1;
        v25 = v24;
        v26 = [v24 description];
        v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v29 = v28;

        v30 = sub_100006B44(v27, v29, &v42);

        *(v22 + 4) = v30;
        v1 = v41;
        _os_log_impl(&_mh_execute_header, v20, v21, "Acquired background runtime assertion: %{public}s", v22, 0xCu);
        sub_1000052E4(v23);
      }

      [v19 addObserver:v1];
      return v5;
    }

LABEL_14:
    swift_once();
    goto LABEL_4;
  }

  v31 = v42;
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_100006B0C(v32, qword_100181F88);
  swift_errorRetain();
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v42 = v36;
    *v35 = 136446210;
    swift_getErrorValue();
    v37 = Error.localizedDescription.getter();
    v39 = sub_100006B44(v37, v38, &v42);

    *(v35 + 4) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "Unable to acquire domain assertion for airplay receiver in the vision pro app: %{public}s", v35, 0xCu);
    sub_1000052E4(v36);
  }

  else
  {
  }

  return v5;
}

void sub_1000A47C4()
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100006B0C(v0, qword_100181F88);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Runtime assertion will invalidate! Dismissing all UI...", v3, 2u);
  }

  if ((sub_1000A013C() & 1) == 0)
  {
    sub_1000A02D0(0xD000000000000020, 0x800000010011F400, 1);
  }
}

void sub_1000A49A4(void *a1)
{
  v2 = v1;
  v42 = a1;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  aBlock[0] = v1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v11)
  {
    v40 = v8;
    v12 = qword_100168E20;

    if (v12 != -1)
    {
      swift_once();
    }

    v39 = v10;
    v13 = type metadata accessor for Logger();
    sub_100006B0C(v13, qword_100181F88);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v38 = v6;
      v18 = v17;
      aBlock[0] = v17;
      *v16 = 136315138;
      v19 = _typeName(_:qualified:)();
      ObjectType = v11;
      v21 = sub_100006B44(v19, v20, aBlock);
      v11 = ObjectType;

      *(v16 + 4) = v21;
      _os_log_impl(&_mh_execute_header, v14, v15, "%s didStartStreaming received from APRK", v16, 0xCu);
      sub_1000052E4(v18);
      v6 = v38;
    }

    sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
    v22 = static OS_dispatch_queue.main.getter();
    v23 = swift_allocObject();
    v23[2] = v2;
    v23[3] = v11;
    v24 = v42;
    v23[4] = v42;
    aBlock[4] = sub_1000ADD50;
    aBlock[5] = v23;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB40;
    aBlock[3] = &unk_10015DCA8;
    v25 = _Block_copy(aBlock);

    v26 = v2;
    v27 = v24;

    v28 = v39;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002BE4(&qword_10016D0C8, &unk_100113370);
    sub_1000644D4();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v25);

    (*(v4 + 8))(v6, v3);
    (*(v40 + 8))(v28, v7);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_100006B0C(v29, qword_100181F88);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      aBlock[0] = v33;
      *v32 = 136315138;
      v34 = _typeName(_:qualified:)();
      v36 = sub_100006B44(v34, v35, aBlock);

      *(v32 + 4) = v36;
      _os_log_impl(&_mh_execute_header, v30, v31, "%s Can not start streaming without uninitialized main model", v32, 0xCu);
      sub_1000052E4(v33);
    }
  }
}

void sub_1000A4F74(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {

LABEL_4:
    *(a1 + v5) = 2;
    sub_10009C74C();
    goto LABEL_6;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v6)
  {
    goto LABEL_4;
  }

  KeyPath = swift_getKeyPath();
  __chkstk_darwin(KeyPath);
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

LABEL_6:
  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
  {
    *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
  }

  else
  {
    v8 = swift_getKeyPath();
    __chkstk_darwin(v8);
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v9 = a3;
  sub_100030988(a3);

  [v9 setDelegate:a1];
  if ((sub_1000A013C() & 1) == 0)
  {
    sub_10009F894(0xD000000000000011, 0x800000010011F380);
  }
}

uint64_t sub_1000A535C(void *a1, uint64_t a2)
{
  if (!sub_10009CDAC())
  {

    goto LABEL_9;
  }

  v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v3)
  {
    goto LABEL_9;
  }

  swift_getKeyPath();
  v17 = a1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    if (![Strong activationState])
    {

      goto LABEL_9;
    }

    v6 = [v5 activationState];

    if (v6 == 1)
    {
LABEL_9:
      v7 = 0;
      goto LABEL_10;
    }
  }

  swift_getKeyPath();
  v17 = a1;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) == 1)
  {
    sub_1000AC364();
    goto LABEL_9;
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181F88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17 = v13;
    *v12 = 136315138;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, &v17);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s stopping airplay connection as stopped streaming while in pip and not eligible for background assertion", v12, 0xCu);
    sub_1000052E4(v13);
  }

  v7 = 1;
LABEL_10:
  sub_1000A02D0(0xD000000000000011, 0x800000010011F3E0, v7);
  return sub_10009F3E0(2u);
}

uint64_t sub_1000A56DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a2;
  v35 = a4;
  ObjectType = swift_getObjectType();
  v31 = type metadata accessor for DispatchWorkItemFlags();
  v36 = *(v31 - 8);
  __chkstk_darwin(v31);
  v29 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  v30 = *(v33 - 8);
  __chkstk_darwin(v33);
  v28 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181F88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, aBlock);

    *(v12 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s shouldShowGlobalPasscode", v12, 0xCu);
    sub_1000052E4(v13);
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v17 = static OS_dispatch_queue.main.getter();
  v18 = swift_allocObject();
  v19 = v32;
  v18[2] = v32;
  v18[3] = a1;
  v20 = v35;
  v18[4] = v34;
  v18[5] = a3;
  v18[6] = v20;
  v18[7] = ObjectType;
  aBlock[4] = sub_1000AD46C;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DBE0;
  v21 = _Block_copy(aBlock);
  v22 = v19;

  v23 = v28;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  v24 = v29;
  v25 = v31;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v36 + 8))(v24, v25);
  return (*(v30 + 8))(v23, v33);
}

void sub_1000A5B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v32 = a4;
  swift_getKeyPath();
  aBlock[0] = a1;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 2u)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) == 1)
      {
        *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI) = 1;
      }

      else
      {
        KeyPath = swift_getKeyPath();
        __chkstk_darwin(KeyPath);
        aBlock[0] = a1;
        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      swift_getKeyPath();
      aBlock[0] = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v20 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
      if (v20)
      {
        type metadata accessor for PINViewModel(0);
        v21 = swift_allocObject();

        ObservationRegistrar.init()();
        v21[2] = a2;
        v21[3] = a3;
        v21[4] = v32;
        v21[5] = a5;
        v31 = swift_getKeyPath();
        v32 = &v30;
        __chkstk_darwin(v31);
        aBlock[0] = v20;
        sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);
        v30 = 0;

        ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
      }

      sub_10009F894(0x4E495020776F6853, 0xE800000000000000);
      v22 = objc_allocWithZone(BSContinuousMachTimer);
      v23 = String._bridgeToObjectiveC()();
      v24 = [v22 initWithIdentifier:v23];

      sub_10009DA48(v24);
      swift_getKeyPath();
      aBlock[0] = a1;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v25 = *(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer);
      if (v25)
      {
        sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
        v26 = v25;
        v27 = static OS_dispatch_queue.main.getter();
        v28 = swift_allocObject();
        swift_unknownObjectWeakInit();
        aBlock[4] = sub_1000AD47C;
        aBlock[5] = v28;
        aBlock[0] = _NSConcreteStackBlock;
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1000634B8;
        aBlock[3] = &unk_10015DC08;
        v29 = _Block_copy(aBlock);

        [v26 scheduleWithFireInterval:v27 leewayInterval:v29 queue:30.0 handler:0.0];
        _Block_release(v29);
      }

      return;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  sub_100006B0C(v11, qword_100181F88);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100006B44(v16, v17, aBlock);

    *(v14 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v12, v13, "%s Should not present PINUI when the receiver is not connected.", v14, 0xCu);
    sub_1000052E4(v15);
  }
}

void sub_1000A6158(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100006B0C(v4, qword_100181F88);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "PIN UI timed out. Suspending...", v7, 2u);
    }

    sub_1000A0EA0();
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v8 & 1) == 0)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        if (*(v3 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI))
        {
          sub_1000A02D0(0xD000000000000010, 0x800000010011F3C0, 0);
        }
      }
    }
  }
}

uint64_t sub_1000A648C()
{
  v1 = v0;
  swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v27 = *(v6 - 8);
  __chkstk_darwin(v6);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  sub_100006B0C(v9, qword_100181F88);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v26 = v3;
    v13 = v12;
    v14 = swift_slowAlloc();
    v25 = v6;
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    v16 = _typeName(_:qualified:)();
    v18 = sub_100006B44(v16, v17, aBlock);

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s shouldHideGlobalPasscode", v13, 0xCu);
    sub_1000052E4(v15);
    v6 = v25;

    v3 = v26;
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  aBlock[4] = sub_1000AD3A0;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DB90;
  v21 = _Block_copy(aBlock);
  v22 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v3 + 8))(v5, v2);
  return (*(v27 + 8))(v8, v6);
}

void sub_1000A6880(uint64_t a1)
{
  sub_1000A0EA0();
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
  {
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v2 & 1) == 0)
    {
      sub_1000A02D0(0x64204955204E4950, 0xEF64656C62617369, 0);
    }
  }
}

void sub_1000A6A44(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(void, __n128), uint64_t a5)
{
  v6 = v5;
  v86 = a4;
  v87 = a5;
  v85 = a2;
  v89 = v6;
  ObjectType = swift_getObjectType();
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v83 = *(v9 - 8);
  v84 = v9;
  __chkstk_darwin(v9);
  v81 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = type metadata accessor for DispatchQoS();
  v80 = *(v82 - 8);
  __chkstk_darwin(v82);
  v79 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = __chkstk_darwin(v12);
  v75 = v15;
  v76 = &v71 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v71 - v16;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_100006B0C(v18, qword_100181F88);
  v19 = *(v13 + 16);
  v78 = a1;
  v19(v17, a1, v12);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  v77 = v13;
  if (v22)
  {
    v23 = swift_slowAlloc();
    v73 = v19;
    v24 = v13;
    v25 = v23;
    v72 = swift_slowAlloc();
    aBlock[0] = v72;
    *v25 = 136315650;
    v26 = _typeName(_:qualified:)();
    v28 = sub_100006B44(v26, v27, aBlock);
    v74 = a3;
    v29 = v28;

    *(v25 + 4) = v29;
    *(v25 + 12) = 2082;
    v30 = UUID.uuidString.getter();
    v32 = v31;
    v33 = v17;
    v34 = v12;
    (*(v24 + 8))(v33, v12);
    v35 = sub_100006B44(v30, v32, aBlock);
    v36 = v85;
    a3 = v74;

    *(v25 + 14) = v35;
    *(v25 + 22) = 2082;
    v37 = v36;
    v19 = v73;
    *(v25 + 24) = sub_100006B44(v37, a3, aBlock);
    _os_log_impl(&_mh_execute_header, v20, v21, "%s shouldAskPermission with uuid: %{public}s fromClient: %{public}s", v25, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    v38 = v17;
    v34 = v12;
    (*(v13 + 8))(v38, v12);
  }

  if (sub_1000A736C())
  {
    sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
    v74 = static OS_dispatch_queue.main.getter();
    v39 = v76;
    v40 = v34;
    v19(v76, v78, v34);
    v41 = v77;
    v42 = (*(v77 + 80) + 24) & ~*(v77 + 80);
    v43 = a3;
    v44 = (v75 + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
    v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
    v46 = v89;
    v47 = swift_allocObject();
    *(v47 + 16) = v46;
    (*(v41 + 32))(v47 + v42, v39, v40);
    v48 = (v47 + v44);
    v49 = v86;
    *v48 = v85;
    v48[1] = v43;
    v50 = (v47 + v45);
    v51 = v87;
    *v50 = v49;
    v50[1] = v51;
    *(v47 + ((v45 + 23) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
    aBlock[4] = sub_1000ACEDC;
    aBlock[5] = v47;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10009BB40;
    aBlock[3] = &unk_10015DA78;
    v52 = _Block_copy(aBlock);

    v53 = v46;

    v54 = v79;
    static DispatchQoS.unspecified.getter();
    aBlock[0] = _swiftEmptyArrayStorage;
    sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
    sub_100002BE4(&qword_10016D0C8, &unk_100113370);
    sub_1000644D4();
    v55 = v81;
    v56 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v57 = v74;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v52);

    (*(v83 + 8))(v55, v56);
    (*(v80 + 8))(v54, v82);
    return;
  }

  swift_getKeyPath();
  v58 = v89;
  aBlock[0] = v89;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v58 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u && *(v58 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
  {

LABEL_13:
    swift_getKeyPath();
    v60 = v89;
    aBlock[0] = v89;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v61 = *(v60 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
    if (v61)
    {
      v62 = *(v61 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
      if (v62)
      {
        v63 = *(v61 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

        sub_10001D9F4(v62, v63);
        v62(0);
        sub_100014104(v62, v63);
      }

      else
      {
      }

      sub_1000631F8();
    }

    goto LABEL_18;
  }

  v59 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v59)
  {
    goto LABEL_13;
  }

LABEL_18:
  v86(1);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    v67 = swift_slowAlloc();
    aBlock[0] = v67;
    *v66 = 136315138;
    v68 = _typeName(_:qualified:)();
    v70 = sub_100006B44(v68, v69, aBlock);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "%s manually approved permissions dialog as forcePermissionsDialog is disabled.", v66, 0xCu);
    sub_1000052E4(v67);
  }
}

uint64_t sub_1000A736C()
{
  swift_getObjectType();
  v1 = sub_1000AA664();
  swift_getKeyPath();
  v22 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v2 = *(*&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lockoutManager] + 16);
  v3 = (v2 >> 1) & 1;
  swift_getKeyPath();
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = *&v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel];
  if (!v4 || (swift_getKeyPath(), v22 = v4, sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878), , ObservationRegistrar.access<A, B>(_:keyPath:)(), , v5 = *(v4 + 32), , , swift_getKeyPath(), v22 = v5, sub_1000AC1D0(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0), ObservationRegistrar.access<A, B>(_:keyPath:)(), , v6 = *(v5 + 32), , (v6 & 1) == 0))
  {
    v7 = 0;
    if ((v1 & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  swift_getKeyPath();
  v22 = v0;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v7 = 1;
  if ((v1 & 1) != 0 && (v0[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion] & 1) == 0)
  {
LABEL_7:
    v3 = 1;
  }

LABEL_8:
  v20 = v1;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100006B0C(v8, qword_100181F88);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v19 = v2 & 2;
    v21 = v3;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136316418;
    v14 = _typeName(_:qualified:)();
    v16 = sub_100006B44(v14, v15, &v22);

    *(v12 + 4) = v16;
    *(v12 + 12) = 1024;
    *(v12 + 14) = v21;
    *(v12 + 18) = 1024;
    *(v12 + 20) = v20 & 1;
    *(v12 + 24) = 1024;
    *(v12 + 26) = v7;
    *(v12 + 30) = 1024;
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v17 = v9[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion];

    *(v12 + 32) = v17;
    *(v12 + 36) = 1024;
    *(v12 + 38) = v19 >> 1;
    _os_log_impl(&_mh_execute_header, v10, v11, "%s Force Accpet Dialog state set to %{BOOL}d [ForceWindowState: %{BOOL}d, IsGuestSession: %{BOOL}d, IsEligibleForBackgroundAssertion: %{BOOL}d, ForceDeviceLockedState: %{BOOL}d]", v12, 0x2Au);
    sub_1000052E4(v13);

    v3 = v21;
  }

  else
  {
  }

  return v3;
}

double sub_1000A77BC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a7;

  sub_1000A79F8(a2, a3, a4, sub_1000ACFC4, v13);

  return result;
}

uint64_t sub_1000A7874(char a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100006B0C(v6, qword_100181F88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v9 = 136315394;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, &v15);

    *(v9 + 4) = v13;
    *(v9 + 12) = 1024;
    *(v9 + 14) = a1 & 1;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s presentAlertWithRequestToBeginStream finished with result %{BOOL}d", v9, 0x12u);
    sub_1000052E4(v10);
  }

  return a2(a1 & 1);
}

double sub_1000A79F8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a1;
  v11 = type metadata accessor for UUID();
  v52 = *(v11 - 8);
  __chkstk_darwin(v11);
  v51 = v12;
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v14 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v56 = v6;
  v53 = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  v54 = v14;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v15 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8);
  if (v15)
  {
    v16 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName) == a2 && v15 == a3;
    if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      if (qword_100168E20 != -1)
      {
        swift_once();
      }

      v17 = type metadata accessor for Logger();
      sub_100006B0C(v17, qword_100181F88);
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&_mh_execute_header, v18, v19, "Another request is already in-flight, skip this request", v20, 2u);
      }

      return result;
    }
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Logger();
  sub_100006B0C(v22, qword_100181F88);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v48 = a5;
  v49 = a2;
  v47 = a4;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v56 = v27;
    *v26 = 136315138;
    *(v26 + 4) = sub_100006B44(a2, a3, &v56);
    _os_log_impl(&_mh_execute_header, v23, v24, "Presenting alert with request to begin stream for client %s", v26, 0xCu);
    sub_1000052E4(v27);
  }

  v28 = v13;
  sub_1000AC364();
  v29 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  v30 = *(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState);
  v50 = a3;
  if (v30 <= 1 && v30)
  {
    v31 = v52;
  }

  else
  {
    v31 = v52;
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      v33 = v11;
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v46 - 2) = v6;
      *(&v46 - 8) = 1;
      v56 = v6;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      goto LABEL_22;
    }
  }

  v33 = v11;
  *(v6 + v29) = 1;
  sub_10009C74C();
LABEL_22:
  v53 = *(v31 + 16);
  v54 = v33;
  v53(v28, v55, v33);
  type metadata accessor for AcceptDialogController(0);
  swift_allocObject();
  v35 = sub_100061FF4(v28);
  v36 = swift_getKeyPath();
  v52 = v28;
  __chkstk_darwin(v36);
  *(&v46 - 2) = v6;
  *(&v46 - 1) = v35;
  v56 = v6;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  swift_getKeyPath();
  v56 = v6;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v6 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController))
  {
    v37 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v38 = v52;
    v39 = v54;
    v53(v52, v55, v54);
    v40 = (*(v31 + 80) + 24) & ~*(v31 + 80);
    v41 = (v51 + v40 + 7) & 0xFFFFFFFFFFFFFFF8;
    v42 = swift_allocObject();
    *(v42 + 16) = v37;
    (*(v31 + 32))(v42 + v40, v38, v39);
    v43 = (v42 + v41);
    v45 = v47;
    v44 = v48;
    *v43 = v47;
    v43[1] = v44;

    sub_10001D9F4(v45, v44);
    sub_100064034(v49, v50, sub_1000AD130, v42);
  }

  return result;
}

uint64_t sub_1000A8218(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v46 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for DispatchQoS();
  v45 = *(v47 - 8);
  __chkstk_darwin(v47);
  v44 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v41 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v11 = &v36 - v10;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_100006B0C(v12, qword_100181F88);
  v13 = *(v7 + 16);
  v42 = a1;
  v40 = v13;
  v13(v11, a1, v6);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v38 = v3;
    v17 = v16;
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v17 = 136315394;
    v18 = _typeName(_:qualified:)();
    v20 = sub_100006B44(v18, v19, aBlock);
    ObjectType = v2;
    v21 = v20;

    *(v17 + 4) = v21;
    *(v17 + 12) = 2082;
    v22 = UUID.uuidString.getter();
    v24 = v23;
    (*(v7 + 8))(v11, v6);
    v25 = sub_100006B44(v22, v24, aBlock);
    v2 = ObjectType;

    *(v17 + 14) = v25;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s cancelPermission with uuid: %{public}s", v17, 0x16u);
    swift_arrayDestroy();

    v3 = v38;
  }

  else
  {

    (*(v7 + 8))(v11, v6);
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v26 = static OS_dispatch_queue.main.getter();
  v27 = v41;
  v40(v41, v42, v6);
  v28 = (*(v7 + 80) + 24) & ~*(v7 + 80);
  v29 = swift_allocObject();
  v30 = v43;
  *(v29 + 16) = v43;
  (*(v7 + 32))(v29 + v28, v27, v6);
  aBlock[4] = sub_1000ACC38;
  aBlock[5] = v29;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DA00;
  v31 = _Block_copy(aBlock);
  v32 = v30;

  v33 = v44;
  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  v34 = v46;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v31);

  (*(v3 + 8))(v34, v2);
  return (*(v45 + 8))(v33, v47);
}

double sub_1000A87BC(char *a1, uint64_t a2)
{
  v38 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v35[0] = v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100002BE4(&qword_10016F2D8, &qword_100116248);
  __chkstk_darwin(v6);
  v8 = v35 - v7;
  v9 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v10 = __chkstk_darwin(v9 - 8);
  v37 = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = v35 - v13;
  __chkstk_darwin(v12);
  v16 = v35 - v15;
  sub_1000AC364();
  swift_getKeyPath();
  v17 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v39 = a1;
  v35[1] = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  v35[2] = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v36 = a1;
  v18 = *&a1[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController];
  if (v18)
  {
    v19 = *(v4 + 16);
    v19(v16, v18 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v3);
    v20 = *(v4 + 56);
    v20(v16, 0, 1, v3);
  }

  else
  {
    v20 = *(v4 + 56);
    v20(v16, 1, 1, v3);
    v19 = *(v4 + 16);
  }

  v19(v14, v38, v3);
  v20(v14, 0, 1, v3);
  v21 = *(v6 + 48);
  sub_1000ACC9C(v16, v8);
  sub_1000ACC9C(v14, &v8[v21]);
  v22 = *(v4 + 48);
  if (v22(v8, 1, v3) != 1)
  {
    v23 = v37;
    sub_1000ACC9C(v8, v37);
    if (v22(&v8[v21], 1, v3) != 1)
    {
      v25 = v35[0];
      (*(v4 + 32))(v35[0], &v8[v21], v3);
      sub_1000AC1D0(&qword_10016D278, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v26 = v23;
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v28 = *(v4 + 8);
      v28(v25, v3);
      sub_100009908(v14, &unk_10016F2E0, qword_100113590);
      sub_100009908(v16, &unk_10016F2E0, qword_100113590);
      v28(v26, v3);
      sub_100009908(v8, &unk_10016F2E0, qword_100113590);
      if ((v27 & 1) == 0)
      {
        return result;
      }

      goto LABEL_11;
    }

    sub_100009908(v14, &unk_10016F2E0, qword_100113590);
    sub_100009908(v16, &unk_10016F2E0, qword_100113590);
    (*(v4 + 8))(v23, v3);
LABEL_9:
    sub_100009908(v8, &qword_10016F2D8, &qword_100116248);
    return result;
  }

  sub_100009908(v14, &unk_10016F2E0, qword_100113590);
  sub_100009908(v16, &unk_10016F2E0, qword_100113590);
  if (v22(&v8[v21], 1, v3) != 1)
  {
    goto LABEL_9;
  }

  sub_100009908(v8, &unk_10016F2E0, qword_100113590);
LABEL_11:
  swift_getKeyPath();
  v29 = v36;
  v39 = v36;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v30 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
  if (v29[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState] <= 1u && v29[OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState])
  {

    v31 = 0;
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v31 = 0;
    if ((v32 & 1) == 0)
    {
      swift_getKeyPath();
      v39 = v29;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v31 = v29[v30];
    }
  }

  if (sub_10009AAD0(v29[v30], v31))
  {
    v29[v30] = v31;
    sub_10009C74C();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    v35[-2] = v29;
    LOBYTE(v35[-1]) = v31;
    v39 = v29;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }

  v34 = swift_getKeyPath();
  __chkstk_darwin(v34);
  v35[-2] = v29;
  v35[-1] = 0;
  v39 = v29;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

double sub_1000A900C(unsigned __int8 a1, void *a2)
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__airplayReceiverMainModel);
  if (v6)
  {
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016F280, type metadata accessor for AirplayReceiverMainModel, &unk_100114878);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v7 = *(v6 + 16);
    swift_getKeyPath();
    sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);

    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v8 = *(v7 + 40);
    v9 = v8;

    if (v8)
    {
      sub_100031904(0, &qword_10016F2D0, APRKStreamRenderer_ptr);
      v10 = a2;
      v11 = static NSObject.== infix(_:_:)();

      if (v11)
      {
        swift_getKeyPath();
        ObservationRegistrar.access<A, B>(_:keyPath:)();

        v12 = *(v6 + 16);
        v13 = (a1 ^ 1) & 1;
        if (v13 != *(v12 + 16))
        {
          KeyPath = swift_getKeyPath();
          __chkstk_darwin(KeyPath);

          ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

          return result;
        }

        *(v12 + 16) = v13;
      }
    }
  }

  return result;
}

uint64_t sub_1000A93A8(int a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v25 = a1;
  v7 = type metadata accessor for DispatchWorkItemFlags();
  v31 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v24[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for DispatchQoS();
  v29 = *(v10 - 8);
  v30 = v10;
  __chkstk_darwin(v10);
  v12 = &v24[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v28 = static OS_dispatch_queue.main.getter();
  (*(v14 + 16))(&v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], a3, v13);
  v16 = (*(v14 + 80) + 24) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  (*(v14 + 32))(v17 + v16, &v24[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)], v13);
  v18 = v17 + ((v15 + v16 + 7) & 0xFFFFFFFFFFFFFFF8);
  v20 = v26;
  v19 = v27;
  *v18 = v26;
  *(v18 + 8) = v19;
  *(v18 + 16) = v25;
  aBlock[4] = sub_1000AD2B8;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DB40;
  v21 = _Block_copy(aBlock);

  sub_10001D9F4(v20, v19);

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v22 = v28;
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v31 + 8))(v9, v7);
  return (*(v29 + 8))(v12, v30);
}

void sub_1000A976C(uint64_t a1, uint64_t a2, void (*a3)(void, __n128), uint64_t a4, uint64_t a5)
{
  v5 = a5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    sub_1000A97F4(a2, a3, a4, v5);
  }
}

void sub_1000A97F4(uint64_t a1, void (*a2)(void, __n128), uint64_t a3, int a4)
{
  v5 = v4;
  v59 = a4;
  v61 = a3;
  v63 = a1;
  v64 = a2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v56 = &v55 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100002BE4(&qword_10016F2D8, &qword_100116248);
  __chkstk_darwin(v9);
  v11 = &v55 - v10;
  v12 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  v13 = __chkstk_darwin(v12 - 8);
  v58 = &v55 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v17 = &v55 - v16;
  __chkstk_darwin(v15);
  v19 = &v55 - v18;
  swift_getKeyPath();
  v20 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager___observationRegistrar;
  v65 = v5;
  v21 = sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  v57 = v20;
  v62 = v21;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v60 = v5;
  v22 = *(v5 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
  if (v22)
  {
    v23 = *(v7 + 16);
    v23(v19, v22 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_identifier, v6);
    v24 = *(v7 + 56);
    v24(v19, 0, 1, v6);
  }

  else
  {
    v24 = *(v7 + 56);
    v24(v19, 1, 1, v6);
    v23 = *(v7 + 16);
  }

  v23(v17, v63, v6);
  v24(v17, 0, 1, v6);
  v25 = *(v9 + 48);
  sub_1000ACC9C(v19, v11);
  sub_1000ACC9C(v17, &v11[v25]);
  v26 = *(v7 + 48);
  if (v26(v11, 1, v6) == 1)
  {
    sub_100009908(v17, &unk_10016F2E0, qword_100113590);
    sub_100009908(v19, &unk_10016F2E0, qword_100113590);
    v27 = v26(&v11[v25], 1, v6);
    v28 = v64;
    if (v27 == 1)
    {
      sub_100009908(v11, &unk_10016F2E0, qword_100113590);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  v29 = v58;
  sub_1000ACC9C(v11, v58);
  if (v26(&v11[v25], 1, v6) == 1)
  {
    sub_100009908(v17, &unk_10016F2E0, qword_100113590);
    sub_100009908(v19, &unk_10016F2E0, qword_100113590);
    (*(v7 + 8))(v29, v6);
    v28 = v64;
LABEL_9:
    sub_100009908(v11, &qword_10016F2D8, &qword_100116248);
    goto LABEL_10;
  }

  v30 = v29;
  v31 = v56;
  (*(v7 + 32))(v56, &v11[v25], v6);
  sub_1000AC1D0(&qword_10016D278, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v32 = dispatch thunk of static Equatable.== infix(_:_:)();
  v33 = *(v7 + 8);
  v33(v31, v6);
  sub_100009908(v17, &unk_10016F2E0, qword_100113590);
  sub_100009908(v19, &unk_10016F2E0, qword_100113590);
  v33(v30, v6);
  sub_100009908(v11, &unk_10016F2E0, qword_100113590);
  v28 = v64;
  if (v32)
  {
LABEL_13:
    swift_getKeyPath();
    v34 = v60;
    v65 = v60;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v35 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState;
    if (*(v34 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) > 1u)
    {
      v36 = v59;
    }

    else
    {
      v36 = v59;
      if (*(v34 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
      {

        v38 = 0;
        goto LABEL_20;
      }
    }

    v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v38 = 0;
    if ((v37 & 1) == 0)
    {
      swift_getKeyPath();
      v65 = v34;
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      v38 = *(v34 + v35);
    }

LABEL_20:
    if (sub_10009AAD0(*(v34 + v35), v38))
    {
      *(v34 + v35) = v38;
      sub_10009C74C();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      *(&v55 - 2) = v34;
      *(&v55 - 8) = v38;
      v65 = v34;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    v40 = swift_getKeyPath();
    __chkstk_darwin(v40);
    *(&v55 - 2) = v34;
    *(&v55 - 1) = 0;
    v65 = v34;
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

    v41 = (v34 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
    if (*(v34 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName + 8))
    {
      v42 = swift_getKeyPath();
      __chkstk_darwin(v42);
      *(&v55 - 3) = 0;
      *(&v55 - 2) = 0;
      *(&v55 - 4) = v34;
      v65 = v34;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
    }

    else
    {
      *v41 = 0;
      v41[1] = 0;
    }

    if (v36 > 1u)
    {

      if (!v28)
      {
        goto LABEL_36;
      }
    }

    else
    {
      v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v43 & 1) == 0)
      {
        sub_1000AC364();
      }

      if (!v28)
      {
LABEL_36:
        if (qword_100168E20 != -1)
        {
          swift_once();
        }

        v45 = type metadata accessor for Logger();
        sub_100006B0C(v45, qword_100181F88);
        v46 = Logger.logObject.getter();
        v47 = static os_log_type_t.default.getter();
        if (!os_log_type_enabled(v46, v47))
        {

          if (!v36)
          {
LABEL_49:

LABEL_50:
            if ((sub_1000A013C() & 1) == 0)
            {
              sub_10009F894(0xD000000000000011, 0x800000010011F380);
            }

            return;
          }

LABEL_42:
          v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v50 & 1) == 0)
          {
            sub_1000A02D0(0xD00000000000002FLL, 0x800000010011F350, 0);
            return;
          }

          goto LABEL_50;
        }

        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        v65 = v49;
        *v48 = 136446210;
        if (v36)
        {
          v51 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v51 & 1) == 0)
          {
            v52 = 0xEE00747065636361;
            v53 = 0x20746F6E20646964;
LABEL_48:
            v54 = sub_100006B44(v53, v52, &v65);

            *(v48 + 4) = v54;
            _os_log_impl(&_mh_execute_header, v46, v47, "User %{public}s the request to begin stream.", v48, 0xCu);
            sub_1000052E4(v49);

            if (!v59)
            {
              goto LABEL_49;
            }

            goto LABEL_42;
          }
        }

        else
        {
        }

        v52 = 0xE800000000000000;
        v53 = 0x6465747065636361;
        goto LABEL_48;
      }
    }

    if (v36)
    {
      v44 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    else
    {
      v44 = 1;
    }

    v28(v44 & 1);
    goto LABEL_36;
  }

LABEL_10:
  if (v28)
  {
    v28(0);
  }
}

double sub_1000AA344(char a1, void *a2, uint64_t a3)
{
  if ((a1 & 1) == 0)
  {
    swift_getKeyPath();
    v17 = a2;
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u && *(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState))
    {
    }

    else
    {
      v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v4 & 1) == 0)
      {
        return result;
      }
    }

    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100181F88);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100006B44(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Force Accpet Dialog state set to false while a dialog is pending, manually accepting dialog.", v9, 0xCu);
      sub_1000052E4(v10);
    }

    swift_getKeyPath();
    v17 = a2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    v14 = *(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__acceptDialogController);
    if (v14)
    {
      v15 = *(v14 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback);
      if (v15)
      {
        v16 = *(v14 + OBJC_IVAR____TtC17AppleVisionProApp22AcceptDialogController_resultCallback + 8);

        sub_10001D9F4(v15, v16);
        v15(0);
        sub_100014104(v15, v16);
      }

      else
      {
      }

      sub_1000631F8();
    }
  }

  return result;
}

uint64_t sub_1000AA664()
{
  swift_getKeyPath();
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    if ([Strong activationState] && objc_msgSend(v1, "activationState") != 1)
    {
      if (sub_10009CDAC() == 1)
      {

        v2 = 0;
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v2 = v3 ^ 1;
      }
    }

    else
    {

      v2 = 0;
    }
  }

  else
  {
    v2 = 1;
  }

  return v2 & 1;
}

uint64_t sub_1000AA7FC(uint64_t a1, char a2)
{
  if (a2)
  {
    swift_getKeyPath();
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(a1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__showAirplayUI))
    {
LABEL_6:
      sub_1000AC364();
      sub_1000A36D0(0xD00000000000001ALL, 0x800000010011F190);
      return sub_10009F3E0(2u);
    }

    if (sub_10009CDAC() == 1)
    {

      goto LABEL_6;
    }

    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v3)
    {
      goto LABEL_6;
    }
  }

  return sub_10009F3E0(2u);
}

void sub_1000AA984(char a1, void *a2, uint64_t a3)
{
  v5 = a1 & 1;
  swift_getKeyPath();
  v17 = a2;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v6 = OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion;
  if (v5 != *(a2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion))
  {
    v7 = a1 & 1;
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_100006B0C(v8, qword_100181F88);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v11 = 136315394;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100006B44(v12, v13, &v17);

      *(v11 + 4) = v14;
      *(v11 + 12) = 1026;
      *(v11 + 14) = v7;
      _os_log_impl(&_mh_execute_header, v9, v10, "%s AirplayReceiver background assertion eligibility updated to: %{BOOL,public}d.", v11, 0x12u);
      sub_1000052E4(v16);
    }

    if ((v7 ^ *(a2 + v6)))
    {
      KeyPath = swift_getKeyPath();
      __chkstk_darwin(KeyPath);
      v17 = a2;
      ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

      if (v7)
      {
        return;
      }
    }

    else
    {
      *(a2 + v6) = v7;
      if (v7)
      {
        return;
      }
    }

    sub_1000A1268(0xD000000000000024, 0x800000010011F220);
  }
}

void sub_1000AAC58(char a1)
{
  v2 = v1;
  swift_getObjectType();
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315394;
    v8 = _typeName(_:qualified:)();
    v10 = sub_100006B44(v8, v9, &v26);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (a1)
    {
      v11 = 1702195828;
    }

    else
    {
      v11 = 0x65736C6166;
    }

    if (a1)
    {
      v12 = 0xE400000000000000;
    }

    else
    {
      v12 = 0xE500000000000000;
    }

    v13 = sub_100006B44(v11, v12, &v26);

    *(v7 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s Received airplay browsing state change to %s", v7, 0x16u);
    swift_arrayDestroy();
  }

  swift_getKeyPath();
  if (a1)
  {
    v26 = v2;
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u || *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        return;
      }
    }

    else
    {
    }

    swift_getKeyPath();
    v26 = v2;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    Strong = swift_unknownObjectWeakLoadStrong();
    if (!Strong)
    {
      return;
    }

    v17 = Strong;
    if ([Strong activationState])
    {
      v18 = [v17 activationState];

      if (v18 != 1)
      {
        return;
      }
    }

    else
    {
    }

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v26 = v22;
      *v21 = 136315138;
      v23 = _typeName(_:qualified:)();
      v25 = sub_100006B44(v23, v24, &v26);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v19, v20, "%s Browsing settings changed to true while connection is off and app is foregrounded. Starting receiver.", v21, 0xCu);
      sub_1000052E4(v22);
    }

    sub_1000A14E0(0xD000000000000018, 0x800000010011F4A0);
  }

  else
  {
    v26 = v2;
    sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (*(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) <= 1u || *(v2 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__connectionState) == 2)
    {
      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        sub_1000A02D0(0xD000000000000019, 0x800000010011F480, 1);
      }
    }

    else
    {
    }
  }
}

void sub_1000AB1B0(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000AC1D0(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  *a2 = *(v3 + 32);
}

void sub_1000AB280(void *a1, uint64_t a2)
{
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182090);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v8 = 136315394;
    FeatureEligibilityState.rawValue.getter();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = v5;
    sub_100002BE4(&unk_10016F2F0, &unk_10010D220);
    v13 = String.init<A>(describing:)();
    v15 = sub_100006B44(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Removing observer: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(a2 + 40);
  __chkstk_darwin(v17);
  os_unfair_lock_lock((v16 + 24));
  sub_1000076B8((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
}

void sub_1000AB4B8(void *a1, uint64_t a2)
{
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182030);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v18[0] = swift_slowAlloc();
    *v8 = 136315394;
    FeatureEligibilityState.rawValue.getter();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v18);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = v5;
    sub_100002BE4(&qword_10016F310, &qword_10010CDB8);
    v13 = String.init<A>(describing:)();
    v15 = sub_100006B44(v13, v14, v18);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Removing observer: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(a2 + 40);
  __chkstk_darwin(v17);
  os_unfair_lock_lock((v16 + 24));
  sub_1000AE2E8((v16 + 16));
  os_unfair_lock_unlock((v16 + 24));
}

uint64_t sub_1000AB6F0(void *a1, uint64_t a2)
{
  if (qword_100168E58 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182030);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;
    FeatureEligibilityState.rawValue.getter();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = v5;
    sub_100002BE4(&qword_10016F310, &qword_10010CDB8);
    v13 = String.init<A>(describing:)();
    v15 = sub_100006B44(v13, v14, v19);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Adding observer: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(a2 + 40);
  __chkstk_darwin(v17);
  os_unfair_lock_lock(v16 + 6);
  sub_1000AE2D0(&v16[4]);
  os_unfair_lock_unlock(v16 + 6);
  return sub_1000ABB88(*(a2 + 16));
}

uint64_t sub_1000AB93C(void *a1, uint64_t a2)
{
  if (qword_100168E78 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100182090);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v19[0] = swift_slowAlloc();
    *v8 = 136315394;
    FeatureEligibilityState.rawValue.getter();
    v9 = _typeName(_:qualified:)();
    v11 = sub_100006B44(v9, v10, v19);

    *(v8 + 4) = v11;
    *(v8 + 12) = 2082;
    v12 = v5;
    sub_100002BE4(&unk_10016F2F0, &unk_10010D220);
    v13 = String.init<A>(describing:)();
    v15 = sub_100006B44(v13, v14, v19);

    *(v8 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s Adding observer: %{public}s", v8, 0x16u);
    swift_arrayDestroy();
  }

  v16 = *(a2 + 40);
  __chkstk_darwin(v17);
  os_unfair_lock_lock(v16 + 6);
  sub_1000076D4(&v16[4]);
  os_unfair_lock_unlock(v16 + 6);
  return sub_1000ABE60(*(a2 + 16));
}

uint64_t sub_1000ABB88(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  __chkstk_darwin(v17);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = v1;
  v12[4] = ObjectType;
  aBlock[4] = sub_1000AC898;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015D988;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v5 + 8))(v7, v4);
  return (*(v8 + 8))(v10, v17);
}

uint64_t sub_1000ABE60(uint64_t a1)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = aBlock - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v11 = static OS_dispatch_queue.main.getter();
  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  aBlock[4] = sub_1000AC160;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015D8E8;
  v13 = _Block_copy(aBlock);
  v14 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v4 + 8))(v6, v3);
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1000AC128()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000AC168(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000AC1D0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1000AC218(void *a1, void *a2, uint64_t a3)
{
  *(a3 + 16) = 0;
  *(a3 + 24) = 0u;
  *(a3 + 40) = 0u;
  *(a3 + 56) = 1;
  *(a3 + 72) = 0;
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakInit();
  *(a3 + 104) = 0u;
  *(a3 + 88) = 0u;
  ObservationRegistrar.init()();
  swift_getKeyPath();
  sub_1000AC1D0(&qword_100169C08, type metadata accessor for MirroringViewModel, &unk_10010FCE4);
  swift_unknownObjectRetain();
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_10002FD84(a2);
  return a3;
}

void sub_1000AC364()
{
  swift_getObjectType();
  swift_getKeyPath();
  v10 = v0;
  sub_1000AC1D0(&qword_10016E8D0, type metadata accessor for AirplayReceiverLifecycleManager, &unk_100115F08);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  if (*(v0 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__eligibleForBackgroundAssertion) == 1)
  {
    v1 = sub_1000A4204();
    sub_10009CF74(v1);
  }

  else
  {
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_100006B0C(v2, qword_100181F88);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      v7 = _typeName(_:qualified:)();
      v9 = sub_100006B44(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v3, v4, "%s Avoid acquiring background runtime assertion as user not eligible.", v5, 0xCu);
      sub_1000052E4(v6);
    }
  }
}

void sub_1000AC5C4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100030988(v1);
}

void sub_1000AC68C(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10009C578(v1);
}

void sub_1000AC830(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10009C3B4(v1);
}

uint64_t sub_1000AC860()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000AC8E4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10009CF74(v1);
}

unint64_t sub_1000AC980()
{
  result = qword_1001709A0;
  if (!qword_1001709A0)
  {
    sub_100031904(255, &qword_10016F2C0, UIOpenURLContext_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001709A0);
  }

  return result;
}

uint64_t sub_1000ACA00()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000ACA40(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_1000A2964(a1, v4, v5, v6);
}

void sub_1000ACAF8(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002F83C(v1);
}

uint64_t sub_1000ACB74()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

double sub_1000ACC38()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return sub_1000A87BC(v2, v3);
}

uint64_t sub_1000ACC9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&unk_10016F2E0, qword_100113590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000ACD4C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager);
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__renderingManager) = v2;
  v4 = v2;
}

uint64_t sub_1000ACD8C()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000ACDDC()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

double sub_1000ACEDC()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 23) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + 16);
  v6 = (v0 + v3);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v0 + v4);
  v10 = *(v0 + v4 + 8);
  v11 = *(v0 + ((v4 + 23) & 0xFFFFFFFFFFFFFFF8));

  return sub_1000A77BC(v5, v0 + v2, v7, v8, v9, v10, v11);
}

uint64_t sub_1000ACF8C()
{

  return _swift_deallocObject(v0, 40, 7);
}

double sub_1000ACFD4(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_10009D74C(v1, v2);
}

uint64_t sub_1000AD014()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000AD04C()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 16, v3 | 7);
}

uint64_t sub_1000AD130(int a1)
{
  v3 = *(type metadata accessor for UUID() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return sub_1000A93A8(a1, v5, v1 + v4, v7, v8);
}

uint64_t sub_1000AD1D4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  return _swift_deallocObject(v0, v5 + 17, v3 | 7);
}

void sub_1000AD2B8()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  v5 = *v4;
  v6 = *(v4 + 8);
  v7 = *(v4 + 16);

  sub_1000A976C(v3, v0 + v2, v5, v6, v7);
}

uint64_t sub_1000AD368()
{

  return _swift_deallocObject(v0, 24, 7);
}

void sub_1000AD3D0(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10009DA48(v1);
}

uint64_t sub_1000AD424()
{

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000AD484()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v9 = static OS_dispatch_queue.main.getter();
  v10 = swift_allocObject();
  *(v10 + 16) = v0;
  aBlock[4] = sub_1000ADD5C;
  aBlock[5] = v10;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DCF8;
  v11 = _Block_copy(aBlock);
  v12 = v0;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v11);

  (*(v2 + 8))(v4, v1);
  return (*(v6 + 8))(v8, v5);
}

void sub_1000AD748(void *a1, uint64_t a2)
{
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100006B0C(v4, qword_100181F88);
  v5 = a1;
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543618;
    *(v7 + 4) = v5;
    *v8 = v5;
    *(v7 + 12) = 2114;
    v9 = v5;
    if (a2)
    {
      swift_errorRetain();
      v10 = _swift_stdlib_bridgeErrorToNSError();
      v11 = v10;
    }

    else
    {
      v10 = 0;
      v11 = 0;
    }

    *(v7 + 14) = v10;
    v8[1] = v11;
    _os_log_impl(&_mh_execute_header, oslog, v6, "Runtime assertion %{public}@ did invalidate with error: %{public}@", v7, 0x16u);
    sub_100002BE4(&unk_100169C20, &unk_10010D6B0);
    swift_arrayDestroy();
  }
}

uint64_t sub_1000AD8F4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v26 = *(v7 - 8);
  v27 = v7;
  __chkstk_darwin(v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_100006B0C(v10, qword_100181F88);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v25 = v4;
    v15 = v14;
    aBlock[0] = v14;
    *v13 = 136315138;
    v16 = _typeName(_:qualified:)();
    v24 = v9;
    v18 = sub_100006B44(v16, v17, aBlock);
    v9 = v24;

    *(v13 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v11, v12, "%s didStopStreaming", v13, 0xCu);
    sub_1000052E4(v15);
    v4 = v25;
  }

  sub_100031904(0, &qword_10016D0C0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  v20 = swift_allocObject();
  *(v20 + 16) = v1;
  *(v20 + 24) = ObjectType;
  aBlock[4] = sub_1000ADD00;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10009BB40;
  aBlock[3] = &unk_10015DC58;
  v21 = _Block_copy(aBlock);
  v22 = v1;

  static DispatchQoS.unspecified.getter();
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1000AC1D0(&qword_10016F260, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  sub_100002BE4(&qword_10016D0C8, &unk_100113370);
  sub_1000644D4();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v21);

  (*(v4 + 8))(v6, v3);
  return (*(v26 + 8))(v9, v27);
}

uint64_t sub_1000ADD08()
{

  return _swift_deallocObject(v0, 40, 7);
}

void sub_1000ADD84(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_100030180(v1);
}

void sub_1000ADDD4(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10002FF74(v1);
}

void sub_1000ADE24(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  sub_10003038C(v1);
}

uint64_t sub_1000ADE74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000FA04;

  return sub_10009FBD4(a1, v4, v5, v6);
}

void sub_1000ADF40(void *a1)
{
  *(*(v1 + 16) + *a1) = *(v1 + 24);
}

uint64_t sub_1000ADFEC()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000AE02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100024388;

  return sub_10009EB30(a1, v4, v5, v6);
}

void sub_1000AE148()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer);
  *(v1 + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__pinUIExpirationTimer) = v2;
  v4 = v2;
  [v3 invalidate];
}

void sub_1000AE198()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC17AppleVisionProApp31AirplayReceiverLifecycleManager__lastStreamStartRequestClientName);
  *v2 = v0[3];
  v2[1] = v1;
}

__n128 sub_1000AE404(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000AE418(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000AE460(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_1000AE4D4()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000AE558(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1000AE5B4(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100159CE8, *a1);

  *a2 = v3 != 0;
}

void sub_1000AE674(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void **a5)
{
  v9 = [objc_opt_self() mainBundle];
  v14._object = 0xE000000000000000;
  v10.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v10.value._object = 0xEB00000000656C62;
  v11._countAndFlagsBits = a2;
  v11._object = a3;
  v12._countAndFlagsBits = 0;
  v12._object = 0xE000000000000000;
  v14._countAndFlagsBits = 0;
  v13 = NSLocalizedString(_:tableName:bundle:value:comment:)(v11, v10, v9, v12, v14);

  *a4 = v13._countAndFlagsBits;
  *a5 = v13._object;
}

uint64_t sub_1000AE730@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v3 = type metadata accessor for InsetGroupedListStyle();
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  __chkstk_darwin(v3);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100002BE4(&qword_10016F390, &qword_100116510);
  v8 = *(v7 - 8);
  __chkstk_darwin(v7);
  v10 = &v42 - v9;
  v11 = sub_100002BE4(&qword_10016F388, &qword_100116508);
  v12 = *(v11 - 8);
  v44 = v11;
  v45 = v12;
  __chkstk_darwin(v11);
  v14 = &v42 - v13;
  KeyPath = swift_getKeyPath();
  v55 = *a1;
  v54 = *(a1 + 2);
  v16 = swift_allocObject();
  v17 = a1[1];
  *(v16 + 16) = *a1;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a1 + 4);
  v53 = &off_100159D20;
  v48 = &v53;
  v49 = KeyPath;
  v50 = sub_1000AFB1C;
  v51 = v16;
  sub_10000C178(&v55, v52, &qword_10016F3A0, &qword_100116540);
  sub_1000AFC98(&v54, v52);

  v18 = v43;

  sub_100002BE4(&qword_10016F3A8, &qword_100116548);
  sub_1000AFCF4();
  List<>.init(content:)();

  v19 = sub_100012C48(&qword_10016F398, &qword_10016F390, &qword_100116510, &protocol conformance descriptor for List<A, B>);
  View.listHasStackBehavior()();
  (*(v8 + 8))(v10, v7);
  InsetGroupedListStyle.init()();
  v52[0] = v7;
  v52[1] = v19;
  swift_getOpaqueTypeConformance2();
  v20 = v44;
  v21 = v46;
  View.listStyle<A>(_:)();
  (*(v47 + 8))(v6, v21);
  (*(v45 + 8))(v14, v20);
  LOBYTE(v21) = static Edge.Set.top.getter();
  EdgeInsets.init(_all:)();
  v23 = v22;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v30 = v18 + *(sub_100002BE4(&qword_10016F380, &qword_100116500) + 36);
  *v30 = v21;
  *(v30 + 8) = v23;
  *(v30 + 16) = v25;
  *(v30 + 24) = v27;
  *(v30 + 32) = v29;
  *(v30 + 40) = 0;
  v31 = static Edge.Set.bottom.getter();
  if (qword_100168F88 != -1)
  {
    swift_once();
  }

  EdgeInsets.init(_all:)();
  v33 = v32;
  v35 = v34;
  v37 = v36;
  v39 = v38;
  result = sub_100002BE4(&qword_10016F368, &qword_1001164F8);
  v41 = v18 + *(result + 36);
  *v41 = v31;
  *(v41 + 8) = v33;
  *(v41 + 16) = v35;
  *(v41 + 24) = v37;
  *(v41 + 32) = v39;
  *(v41 + 40) = 0;
  return result;
}

uint64_t sub_1000AEBCC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v43 = a2;
  v41 = type metadata accessor for NavigationBarItem.TitleDisplayMode();
  v39 = *(v41 - 8);
  __chkstk_darwin(v41);
  v37 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_100002BE4(&qword_10016F3E0, &qword_100116560);
  v42 = *(v45 - 8);
  __chkstk_darwin(v45);
  v5 = &v34 - v4;
  v40 = sub_100002BE4(&qword_10016F3E8, &qword_100116568);
  v38 = *(v40 - 8);
  v6 = __chkstk_darwin(v40);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v44 = &v34 - v8;
  v35 = a1;
  v47 = *(a1 + 16);
  v48 = *(a1 + 32);
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.projectedValue.getter();
  countAndFlagsBits = v51._countAndFlagsBits;
  object = v51._object;
  v34 = v51._countAndFlagsBits;
  v11 = v52;
  type metadata accessor for AppDelegate(0);
  sub_1000AFEBC(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  v12 = EnvironmentObject.init()();
  *&v47 = countAndFlagsBits;
  *(&v47 + 1) = object;
  v48 = v11;
  v49 = v12;
  v50 = v13;
  v14 = [objc_opt_self() mainBundle];
  v53._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v15.value._object = 0xEB00000000656C62;
  v16._object = 0x800000010011F4C0;
  v16._countAndFlagsBits = 0xD000000000000010;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  v53._countAndFlagsBits = 0;
  v18 = NSLocalizedString(_:tableName:bundle:value:comment:)(v16, v15, v14, v17, v53);

  v51 = v18;
  v19 = sub_1000AFE58();
  v20 = sub_100012928();
  View.navigationTitle<A>(_:)();

  v21 = v39;
  v22 = v37;
  v23 = v41;
  (*(v39 + 104))(v37, enum case for NavigationBarItem.TitleDisplayMode.inline(_:), v41);
  *&v47 = &type metadata for AirplayReceiverSettingsView;
  *(&v47 + 1) = &type metadata for String;
  v48 = v19;
  v49 = v20;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v44;
  v25 = v45;
  View.navigationBarTitleDisplayMode(_:)();
  (*(v21 + 8))(v22, v23);
  (*(v42 + 8))(v5, v25);
  v27 = v38;
  v28 = v40;
  (*(v38 + 16))(v36, v26, v40);
  v46 = v35;
  v42 = sub_100002BE4(&qword_10016F400, &qword_100116578);
  v29 = sub_10000459C(&qword_10016F408, &unk_100116580);
  v30 = sub_10000459C(&qword_100169A10, &qword_10010D450);
  v31 = sub_100012C48(&qword_10016F410, &qword_10016F408, &unk_100116580, &protocol conformance descriptor for HStack<A>);
  v32 = sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
  *&v47 = v29;
  *(&v47 + 1) = v30;
  v48 = v31;
  v49 = v32;
  swift_getOpaqueTypeConformance2();
  *&v47 = v45;
  *(&v47 + 1) = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  NavigationLink.init(destination:label:)();
  return (*(v27 + 8))(v44, v28);
}

uint64_t sub_1000AF1A0(uint64_t a1)
{
  v1 = sub_100002BE4(&qword_100169A10, &qword_10010D450);
  __chkstk_darwin(v1);
  v3 = &v8 - v2;
  v4 = static VerticalAlignment.center.getter();
  v12 = 1;
  sub_1000AF4A8(&v19);
  v15 = v21;
  v16 = v22;
  v13 = v19;
  v14 = v20;
  v18[1] = v20;
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v17 = v23;
  v18[0] = v19;
  sub_10000C178(&v13, &v9, &qword_10016F418, &qword_100116590);
  sub_100009908(v18, &qword_10016F418, &qword_100116590);
  *&v11[7] = v13;
  *&v11[71] = v17;
  *&v11[55] = v16;
  *&v11[39] = v15;
  *&v11[23] = v14;
  *&v10[33] = *&v11[32];
  *&v10[49] = *&v11[48];
  *&v10[65] = *&v11[64];
  *&v10[1] = *v11;
  v9 = v4;
  v10[0] = v12;
  *&v10[80] = *(&v17 + 1);
  *&v10[17] = *&v11[16];
  v5 = enum case for DynamicTypeSize.accessibility2(_:);
  v6 = type metadata accessor for DynamicTypeSize();
  (*(*(v6 - 8) + 104))(v3, v5, v6);
  sub_1000AFEBC(&qword_100169A78, &type metadata accessor for DynamicTypeSize, &protocol conformance descriptor for DynamicTypeSize);
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  if (result)
  {
    sub_100002BE4(&qword_10016F408, &unk_100116580);
    sub_100012C48(&qword_10016F410, &qword_10016F408, &unk_100116580, &protocol conformance descriptor for HStack<A>);
    sub_100012C48(&qword_100169A20, &qword_100169A10, &qword_10010D450, &protocol conformance descriptor for PartialRangeThrough<A>);
    View.dynamicTypeSize<A>(_:)();
    sub_100009908(v3, &qword_100169A10, &qword_10010D450);
    v23 = *&v10[48];
    v24 = *&v10[64];
    v25 = *&v10[80];
    v19 = v9;
    v20 = *v10;
    v21 = *&v10[16];
    v22 = *&v10[32];
    return sub_100009908(&v19, &qword_10016F408, &unk_100116580);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1000AF4A8@<D0>(uint64_t a2@<X8>)
{
  v3 = [objc_opt_self() mainBundle];
  v34._object = 0xE000000000000000;
  v4.value._countAndFlagsBits = 0x617A696C61636F4CLL;
  v4.value._object = 0xEB00000000656C62;
  v5._object = 0x800000010011F4C0;
  v5._countAndFlagsBits = 0xD000000000000010;
  v6._countAndFlagsBits = 0;
  v6._object = 0xE000000000000000;
  v34._countAndFlagsBits = 0;
  NSLocalizedString(_:tableName:bundle:value:comment:)(v5, v4, v3, v6, v34);

  sub_100012928();
  v7 = Text.init<A>(_:)();
  v31 = v8;
  v32 = v7;
  v30 = v9;
  v33 = v10;
  sub_100002BE4(&qword_10016F3F0, &qword_100116570);
  Binding.wrappedValue.getter();
  swift_getKeyPath();
  sub_1000AFEBC(&qword_10016F028, type metadata accessor for AirplayReceiverSettingsState, &unk_100115AA8);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v11 = [objc_opt_self() listeningForAlternateBonjourBrowsing];

  if (v11)
  {
    if (qword_100168F90 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_100168F98 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  v12 = Text.init<A>(_:)();
  v14 = v13;
  v16 = v15;
  static Font.body.getter();
  v17 = Text.font(_:)();
  v19 = v18;
  v21 = v20;

  sub_10001297C(v12, v14, v16 & 1);

  static HierarchicalShapeStyle.secondary.getter();
  v22 = Text.foregroundStyle<A>(_:)();
  v24 = v23;
  v26 = v25;
  v28 = v27;
  sub_10001297C(v17, v19, v21 & 1);

  *a2 = v32;
  *(a2 + 8) = v31;
  *(a2 + 16) = v30 & 1;
  *(a2 + 24) = v33;
  *(a2 + 32) = 0;
  *(a2 + 40) = 1;
  *(a2 + 48) = v22;
  *(a2 + 56) = v24;
  *(a2 + 64) = v26 & 1;
  *(a2 + 72) = v28;
  sub_100003AE4(v32, v31, v30 & 1);

  sub_100003AE4(v22, v24, v26 & 1);

  sub_10001297C(v22, v24, v26 & 1);

  sub_10001297C(v32, v31, v30 & 1);

  return result;
}

uint64_t sub_1000AF858()
{
  sub_100002BE4(&qword_10016F368, &qword_1001164F8);
  sub_1000AF8E4();
  return NavigationStack.init<>(root:)();
}

unint64_t sub_1000AF8E4()
{
  result = qword_10016F370;
  if (!qword_10016F370)
  {
    sub_10000459C(&qword_10016F368, &qword_1001164F8);
    sub_1000AF970();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F370);
  }

  return result;
}

unint64_t sub_1000AF970()
{
  result = qword_10016F378;
  if (!qword_10016F378)
  {
    sub_10000459C(&qword_10016F380, &qword_100116500);
    sub_10000459C(&qword_10016F388, &qword_100116508);
    type metadata accessor for InsetGroupedListStyle();
    sub_10000459C(&qword_10016F390, &qword_100116510);
    sub_100012C48(&qword_10016F398, &qword_10016F390, &qword_100116510, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F378);
  }

  return result;
}

uint64_t sub_1000AFACC()
{

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000AFB24(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *a1;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;

  v8 = sub_100002BE4(&qword_10016F3C8, &qword_100116558);
  v9 = sub_100002BE4(&qword_10016F3C0, &qword_100116550);
  v10 = sub_100012C48(&qword_10016F3D0, &qword_10016F3C8, &qword_100116558, &protocol conformance descriptor for [A]);
  v11 = sub_1000AFE04();
  v12 = sub_100012C48(&qword_10016F3B8, &qword_10016F3C0, &qword_100116550, &protocol conformance descriptor for NavigationLink<A, B>);
  return ForEach<>.init(_:id:content:)(&v14, a2, sub_1000AFDDC, v7, v8, v9, v10, v11, v12);
}

unint64_t sub_1000AFCF4()
{
  result = qword_10016F3B0;
  if (!qword_10016F3B0)
  {
    sub_10000459C(&qword_10016F3A8, &qword_100116548);
    sub_100012C48(&qword_10016F3B8, &qword_10016F3C0, &qword_100116550, &protocol conformance descriptor for NavigationLink<A, B>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F3B0);
  }

  return result;
}

uint64_t sub_1000AFDA4()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000AFE04()
{
  result = qword_10016F3D8;
  if (!qword_10016F3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F3D8);
  }

  return result;
}

unint64_t sub_1000AFE58()
{
  result = qword_10016F3F8;
  if (!qword_10016F3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F3F8);
  }

  return result;
}

uint64_t sub_1000AFEBC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000AFF60()
{
  result = qword_10016F430[0];
  if (!qword_10016F430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10016F430);
  }

  return result;
}

void sub_1000AFFBC(uint64_t a1)
{
  sub_1000B03A8();
  if (v1 <= 0x3F)
  {
    swift_checkMetadataState();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1000B0054(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = ((*(*(*(a3 + 16) - 8) + 64) + ((v6 + 17) & ~v6) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
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
    if (v5 > 0x7FFFFFFE)
    {
      return (*(v4 + 48))((a1 + v6 + 17) & ~v6);
    }

    v17 = *(a1 + 8);
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

unsigned int *sub_1000B01AC(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

  v8 = *(v5 + 80);
  v9 = ((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *(result + v9) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
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

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 > 0x7FFFFFFE)
      {
        v18 = *(v5 + 56);
        v19 = (result + v8 + 17) & ~v8;

        return v18(v19);
      }

      else if (a2 > 0x7FFFFFFE)
      {
        *result = 0;
        *(result + 1) = 0;
        *result = a2 - 0x7FFFFFFF;
      }

      else
      {
        *(result + 1) = a2;
      }

      return result;
    }
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((*(*(*(a4 + 16) - 8) + 64) + ((v8 + 17) & ~v8) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, v9);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *(result + v9) = v15;
    }

    else
    {
      *(result + v9) = v15;
    }
  }

  else if (v13)
  {
    *(result + v9) = v15;
  }

  return result;
}

void sub_1000B03A8()
{
  if (!qword_10016A1A8)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10016A1A8);
    }
  }
}

uint64_t sub_1000B043C(uint64_t *TupleTypeMetadata, unint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  if (a2 == 1)
  {
    v6 = *(a3 & 0xFFFFFFFFFFFFFFFELL);
  }

  else
  {
    __chkstk_darwin(TupleTypeMetadata);
    v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
    if (a2)
    {
      v9 = 0;
      v10 = a3 & 0xFFFFFFFFFFFFFFFELL;
      if (a2 < 4)
      {
        goto LABEL_9;
      }

      if (&v8[-v10] < 0x20)
      {
        goto LABEL_9;
      }

      v9 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      v11 = (v10 + 16);
      v12 = v8 + 16;
      v13 = a2 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v14 = *v11;
        *(v12 - 1) = *(v11 - 1);
        *v12 = v14;
        v11 += 2;
        v12 += 2;
        v13 -= 4;
      }

      while (v13);
      if (v9 != a2)
      {
LABEL_9:
        v15 = a2 - v9;
        v16 = 8 * v9;
        v17 = &v8[8 * v9];
        v18 = (v10 + v16);
        do
        {
          v19 = *v18++;
          *v17 = v19;
          v17 += 8;
          --v15;
        }

        while (v15);
      }
    }

    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v6 = TupleTypeMetadata;
  }

  __chkstk_darwin(TupleTypeMetadata);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v22 = (a3 & 0xFFFFFFFFFFFFFFFELL);
    v23 = (v6 + 32);
    v24 = a2;
    do
    {
      if (a2 == 1)
      {
        v25 = 0;
      }

      else
      {
        v25 = *v23;
      }

      v27 = *v22++;
      v26 = v27;
      v28 = *v5++;
      (*(*(v26 - 8) + 16))(&v21[v25], v28);
      v23 += 4;
      --v24;
    }

    while (v24);
  }

  return TupleView.init(_:)();
}

uint64_t sub_1000B0648@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  sub_10000459C(&qword_10016F4B8, &qword_100116738);
  v5 = *(a1 + 16);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  v6 = type metadata accessor for VStack();
  v7 = *(v6 - 8);
  v8 = __chkstk_darwin(v6);
  v10 = &v17[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v8);
  v12 = &v17[-v11];
  static HorizontalAlignment.leading.getter();
  v13 = *(a1 + 24);
  v18 = v5;
  v19 = v13;
  v20 = v2;
  VStack.init(alignment:spacing:content:)();
  swift_getWitnessTable();
  v14 = *(v7 + 16);
  v14(v12, v10, v6);
  v15 = *(v7 + 8);
  v15(v10, v6);
  v14(a2, v12, v6);
  return (v15)(v12, v6);
}

uint64_t sub_1000B0870@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = a2;
  v6 = a1;
  v96 = a4;
  v7 = *(a2 - 8);
  __chkstk_darwin(a1);
  v90 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ModifiedContent();
  v10 = *(v9 - 8);
  v11 = __chkstk_darwin(v9);
  v91 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v94 = &v73 - v14;
  __chkstk_darwin(v13);
  v95 = &v73 - v15;
  v85 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  v16 = *(v85 - 8);
  __chkstk_darwin(v85);
  v84 = (&v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v89 = type metadata accessor for AutomationSemantics();
  v88 = *(v89 - 8);
  __chkstk_darwin(v89);
  v87 = &v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_100002BE4(&qword_10016F4C0, &unk_100116740);
  v20 = *(v19 - 8);
  __chkstk_darwin(v19);
  v86 = &v73 - v21;
  v92 = sub_100002BE4(&qword_10016F4B8, &qword_100116738);
  v22 = __chkstk_darwin(v92);
  v93 = &v73 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v97 = &v73 - v24;
  v25 = v6[1];
  if (v25)
  {
    v75 = *v6;
    *&v103[0] = v75;
    *(&v103[0] + 1) = v25;
    v74 = v25;
    sub_100012928();
    v77 = v19;
    swift_bridgeObjectRetain_n();
    v26 = Text.init<A>(_:)();
    v79 = v7;
    v28 = v27;
    v78 = v6;
    v30 = v29;
    v81 = a3;
    static Font.title.getter();
    v76 = v20;
    v31 = v16;
    v32 = Text.font(_:)();
    v83 = v9;
    v33 = v32;
    v82 = v10;
    v35 = v34;
    v80 = v5;
    v37 = v36;

    sub_10001297C(v26, v28, v30 & 1);

    static Font.Weight.bold.getter();
    v38 = Text.fontWeight(_:)();
    v40 = v39;
    LOBYTE(v28) = v41;
    v43 = v42;
    v44 = v33;
    v9 = v83;
    v45 = v35;
    v10 = v82;
    sub_10001297C(v44, v45, v37 & 1);

    v46 = static Edge.Set.horizontal.getter();
    EdgeInsets.init(_all:)();
    v47 = v28 & 1;
    v7 = v79;
    LOBYTE(v105) = v47;
    v102 = 0;
    *&v98 = v38;
    *(&v98 + 1) = v40;
    LOBYTE(v99) = v47;
    *(&v99 + 1) = v43;
    LOBYTE(v100) = v46;
    v5 = v80;
    *(&v100 + 1) = v48;
    *v101 = v49;
    *&v101[8] = v50;
    *&v101[16] = v51;
    v101[24] = 0;
    v52 = v84;
    v53 = v74;
    *v84 = v75;
    *(v52 + 8) = v53;
    swift_storeEnumTagMultiPayload();
    sub_100002BE4(&qword_100169AA0, &qword_10010FFC0);
    v54 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v55 = swift_allocObject();
    *(v55 + 16) = xmmword_10010D3B0;
    sub_1000B1328(v52, v55 + v54);
    v56 = v87;
    sub_1000FCC48(138, v55, v87);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_1000129F4(v52);
    sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    v57 = v86;
    a3 = v81;
    View.automationSemantics(_:)();
    v6 = v78;
    (*(v88 + 8))(v56, v89);
    v103[2] = v100;
    *v104 = *v101;
    *&v104[9] = *&v101[9];
    v103[0] = v98;
    v103[1] = v99;
    sub_1000B138C(v103);
    v58 = v76;
    v59 = v97;
    v60 = v77;
    (*(v76 + 32))(v97, v57, v77);
    (*(v58 + 56))(v59, 0, 1, v60);
  }

  else
  {
    (*(v20 + 56))(v97, 1, 1, v19);
  }

  v62 = type metadata accessor for DeviceTabSection(0, v5, a3, v61);
  v63 = v90;
  (*(v7 + 16))(v90, v6 + *(v62 + 40), v5);
  static Edge.Set.horizontal.getter();
  v64 = v94;
  View.padding(_:_:)();
  (*(v7 + 8))(v63, v5);
  v107 = a3;
  v108 = &protocol witness table for _PaddingLayout;
  WitnessTable = swift_getWitnessTable();
  v66 = *(v10 + 16);
  v67 = v95;
  v66(v95, v64, v9);
  v68 = *(v10 + 8);
  v68(v64, v9);
  v69 = v97;
  v70 = v93;
  sub_1000B1190(v97, v93);
  *&v103[0] = v70;
  v71 = v91;
  v66(v91, v67, v9);
  *(&v103[0] + 1) = v71;
  *&v98 = v92;
  *(&v98 + 1) = v9;
  v105 = sub_1000B1200();
  v106 = WitnessTable;
  sub_1000B043C(v103, 2uLL, &v98);
  v68(v67, v9);
  sub_1000B12C0(v69);
  v68(v71, v9);
  return sub_1000B12C0(v70);
}

uint64_t sub_1000B1190(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F4B8, &qword_100116738);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000B1200()
{
  result = qword_10016F4C8;
  if (!qword_10016F4C8)
  {
    sub_10000459C(&qword_10016F4B8, &qword_100116738);
    sub_10000459C(&qword_10016A0B8, &qword_10010ECF0);
    sub_10001D8A0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F4C8);
  }

  return result;
}

uint64_t sub_1000B12C0(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016F4B8, &qword_100116738);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B1328(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AutomationUtilities.AutomationAttributeType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B138C(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016A0B8, &qword_10010ECF0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000B13F4(uint64_t *a1)
{
  sub_10000459C(&qword_10016F4B8, &qword_100116738);
  type metadata accessor for ModifiedContent();
  swift_getTupleTypeMetadata2();
  type metadata accessor for TupleView();
  swift_getWitnessTable();
  type metadata accessor for VStack();

  return swift_getWitnessTable();
}

uint64_t sub_1000B14C0(char *a1, char *a2)
{
  if (qword_100116C98[*a1] == qword_100116C98[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_1000B1528()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

double sub_1000B1584(uint64_t a1)
{
  String.hash(into:)();

  return result;
}

Swift::Int sub_1000B15C4(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000B161C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000B7CA4(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000B1668()
{
  v1 = v0;
  v2 = [objc_opt_self() mainBundle];
  v3 = [v2 infoDictionary];

  if (v3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = 0;
  }

  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100116750;
  if (!v4 || !*(v4 + 16))
  {
    goto LABEL_10;
  }

  v6 = sub_10006889C(0x656C646E75424643, 0xEC000000656D614ELL);
  if ((v7 & 1) == 0)
  {

    goto LABEL_10;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v6, &v63);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v8 = 0xE700000000000000;
    v9 = 0x6E776F6E6B6E55;
    goto LABEL_11;
  }

  v9 = v61;
  v8 = v62;
LABEL_11:
  *(v5 + 64) = 0;
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  *(v5 + 72) = 4;
  *(v5 + 80) = v9;
  *(v5 + 88) = v8;
  *(v5 + 96) = 1701667150;
  *(v5 + 104) = 0xE400000000000000;
  if (!v4 || !*(v4 + 16))
  {
    goto LABEL_17;
  }

  v10 = sub_10006889C(0xD000000000000012, 0x800000010011F780);
  if ((v11 & 1) == 0)
  {

    goto LABEL_17;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v10, &v63);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v12 = 0xE700000000000000;
    v13 = 0x6E776F6E6B6E55;
    goto LABEL_18;
  }

  v13 = v61;
  v12 = v62;
LABEL_18:
  *(v5 + 144) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 152) = 4;
  *(v5 + 160) = v13;
  *(v5 + 168) = v12;
  *(v5 + 176) = 0x4920656C646E7542;
  *(v5 + 184) = 0xE900000000000044;
  if (!v4 || !*(v4 + 16))
  {
    goto LABEL_24;
  }

  v14 = sub_10006889C(0x656C646E75424643, 0xEF6E6F6973726556);
  if ((v15 & 1) == 0)
  {

    goto LABEL_24;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v14, &v63);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v16 = 0xE700000000000000;
    v17 = 0x6E776F6E6B6E55;
    goto LABEL_25;
  }

  v17 = v61;
  v16 = v62;
LABEL_25:
  *(v5 + 224) = 0;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 232) = 4;
  *(v5 + 240) = v17;
  *(v5 + 248) = v16;
  strcpy((v5 + 256), "Bundle Version");
  *(v5 + 271) = -18;
  if (!v4)
  {
    goto LABEL_31;
  }

  if (!*(v4 + 16) || (v18 = sub_10006889C(0xD00000000000001ALL, 0x800000010011F760), (v19 & 1) == 0))
  {

    goto LABEL_31;
  }

  sub_1000076F0(*(v4 + 56) + 32 * v18, &v63);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_31:
    v20 = 0xE700000000000000;
    v21 = 0x6E776F6E6B6E55;
    goto LABEL_32;
  }

  v21 = v61;
  v20 = v62;
LABEL_32:
  *(v5 + 304) = 0;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 312) = 4;
  *(v5 + 320) = v21;
  *(v5 + 328) = v20;
  *(v5 + 336) = 0x6E6F6973726556;
  *(v5 + 344) = 0xE700000000000000;
  AppStorage.projectedValue.getter();
  v22 = v64;
  v23 = v65;
  *(v5 + 352) = v63;
  *(v5 + 368) = v22;
  *(v5 + 376) = v23;
  *(v5 + 384) = &off_100159F10;
  *(v5 + 392) = 3;
  *(v5 + 400) = 0xD000000000000015;
  *(v5 + 408) = 0x800000010011F4E0;
  *(v5 + 416) = 0xD000000000000019;
  *(v5 + 424) = 0x800000010011F500;
  v24 = swift_allocObject();
  v25 = v1[7];
  v24[7] = v1[6];
  v24[8] = v25;
  v24[9] = v1[8];
  v26 = v1[3];
  v24[3] = v1[2];
  v24[4] = v26;
  v27 = v1[5];
  v24[5] = v1[4];
  v24[6] = v27;
  v28 = v1[1];
  v24[1] = *v1;
  v24[2] = v28;
  *(v5 + 432) = sub_1000B778C;
  *(v5 + 440) = v24;
  *(v5 + 448) = 0;
  *(v5 + 456) = 0u;
  *(v5 + 472) = 1;
  *(v5 + 480) = 0;
  *(v5 + 488) = 0xE000000000000000;
  *(v5 + 496) = 0xD000000000000027;
  *(v5 + 504) = 0x800000010011F520;
  sub_1000B7070(v1, &v63);
  AppStorage.projectedValue.getter();
  v29 = *(&v63 + 1);
  v30 = v64;
  *(v5 + 512) = v63;
  *(v5 + 520) = v29;
  *(v5 + 528) = v30;
  *(v5 + 536) = 0u;
  *(v5 + 552) = 0;
  *(v5 + 560) = 0;
  *(v5 + 568) = 0xE000000000000000;
  *(v5 + 576) = 0xD000000000000011;
  *(v5 + 584) = 0x800000010011F550;
  AppStorage.projectedValue.getter();
  v31 = *(&v63 + 1);
  v32 = v64;
  *(v5 + 592) = v63;
  *(v5 + 600) = v31;
  *(v5 + 608) = v32;
  *(v5 + 616) = 0u;
  *(v5 + 632) = 0;
  *(v5 + 640) = 0;
  *(v5 + 648) = 0xE000000000000000;
  *(v5 + 656) = 0xD000000000000027;
  *(v5 + 664) = 0x800000010011F570;
  *(v5 + 672) = 0u;
  *(v5 + 688) = 0u;
  *(v5 + 704) = 0;
  *(v5 + 712) = 4;
  *(v5 + 720) = 0xD000000000000049;
  *(v5 + 728) = 0x800000010011F5A0;
  *(v5 + 736) = 0;
  *(v5 + 744) = 0xE000000000000000;
  AppStorage.projectedValue.getter();
  v33 = *(&v63 + 1);
  v34 = v64;
  *(v5 + 752) = v63;
  *(v5 + 760) = v33;
  *(v5 + 768) = v34;
  *(v5 + 776) = 0u;
  *(v5 + 792) = 0;
  *(v5 + 800) = 0;
  *(v5 + 808) = 0xE000000000000000;
  *(v5 + 816) = 0xD000000000000019;
  *(v5 + 824) = 0x800000010011F5F0;
  AppStorage.projectedValue.getter();
  v35 = *(&v63 + 1);
  v36 = v64;
  *(v5 + 832) = v63;
  *(v5 + 840) = v35;
  *(v5 + 848) = v36;
  *(v5 + 856) = 0u;
  *(v5 + 872) = 0;
  *(v5 + 873) = *v66;
  *(v5 + 876) = *&v66[3];
  *(v5 + 880) = 0;
  *(v5 + 888) = 0xE000000000000000;
  *(v5 + 896) = 0xD00000000000001CLL;
  *(v5 + 904) = 0x800000010011F610;
  AppStorage.projectedValue.getter();
  v37 = v64;
  v38 = v65;
  *(v5 + 912) = v63;
  *(v5 + 928) = v37;
  *(v5 + 936) = v38;
  *(v5 + 944) = &off_100159DB0;
  *(v5 + 952) = 3;
  *(v5 + 953) = *v67;
  *(v5 + 956) = *&v67[3];
  *(v5 + 960) = 0;
  *(v5 + 968) = 0xE000000000000000;
  *(v5 + 976) = 0xD000000000000013;
  *(v5 + 984) = 0x800000010011F630;
  AppStorage.projectedValue.getter();
  v39 = v64;
  v40 = v65;
  *(v5 + 992) = v63;
  *(v5 + 1008) = v39;
  *(v5 + 1016) = v40;
  *(v5 + 1024) = 0;
  *(v5 + 1032) = 2;
  *(v5 + 1033) = *v68;
  *(v5 + 1036) = *&v68[3];
  *(v5 + 1040) = 0xD000000000000014;
  *(v5 + 1048) = 0x800000010011F650;
  *(v5 + 1056) = 0xD000000000000023;
  *(v5 + 1064) = 0x800000010011F670;
  v41 = swift_allocObject();
  v42 = v1[7];
  v41[7] = v1[6];
  v41[8] = v42;
  v41[9] = v1[8];
  v43 = v1[3];
  v41[3] = v1[2];
  v41[4] = v43;
  v44 = v1[5];
  v41[5] = v1[4];
  v41[6] = v44;
  v45 = v1[1];
  v41[1] = *v1;
  v41[2] = v45;
  *(v5 + 1072) = sub_1000B7794;
  *(v5 + 1080) = v41;
  *(v5 + 1088) = 0;
  *(v5 + 1096) = 0u;
  *(v5 + 1112) = 1;
  *(v5 + 1113) = *v69;
  *(v5 + 1116) = *&v69[3];
  *(v5 + 1120) = 0;
  *(v5 + 1128) = 0xE000000000000000;
  *(v5 + 1136) = 0xD000000000000025;
  *(v5 + 1144) = 0x800000010011F6A0;
  sub_1000B7070(v1, &v63);
  AppStorage.projectedValue.getter();
  v46 = *(&v63 + 1);
  v47 = v64;
  *(v5 + 1152) = v63;
  *(v5 + 1160) = v46;
  *(v5 + 1168) = v47;
  *(v5 + 1176) = 0u;
  *(v5 + 1192) = 0;
  *(v5 + 1193) = *v70;
  *(v5 + 1196) = *&v70[3];
  *(v5 + 1200) = 0;
  *(v5 + 1208) = 0xE000000000000000;
  *(v5 + 1216) = 0xD00000000000001ELL;
  *(v5 + 1224) = 0x800000010011F6D0;
  AppStorage.projectedValue.getter();
  v48 = *(&v63 + 1);
  v49 = v64;
  *(v5 + 1232) = v63;
  *(v5 + 1240) = v48;
  *(v5 + 1248) = v49;
  *(v5 + 1256) = 0u;
  *(v5 + 1272) = 0;
  *(v5 + 1273) = *v71;
  *(v5 + 1276) = *&v71[3];
  *(v5 + 1280) = 0;
  *(v5 + 1288) = 0xE000000000000000;
  *(v5 + 1296) = 0xD00000000000001DLL;
  *(v5 + 1304) = 0x800000010011F6F0;
  v50 = swift_allocObject();
  v51 = v1[7];
  v50[7] = v1[6];
  v50[8] = v51;
  v50[9] = v1[8];
  v52 = v1[3];
  v50[3] = v1[2];
  v50[4] = v52;
  v53 = v1[5];
  v50[5] = v1[4];
  v50[6] = v53;
  v54 = v1[1];
  v50[1] = *v1;
  v50[2] = v54;
  *(v5 + 1312) = sub_1000B779C;
  *(v5 + 1320) = v50;
  *(v5 + 1328) = 0;
  *(v5 + 1344) = 0;
  *(v5 + 1336) = 0;
  *(v5 + 1352) = 1;
  *(v5 + 1353) = v72[0];
  *(v5 + 1356) = *(v72 + 3);
  *(v5 + 1360) = 0;
  *(v5 + 1368) = 0xE000000000000000;
  *(v5 + 1376) = 0xD000000000000022;
  *(v5 + 1384) = 0x800000010011F710;
  v55 = swift_allocObject();
  v56 = v1[7];
  v55[7] = v1[6];
  v55[8] = v56;
  v55[9] = v1[8];
  v57 = v1[3];
  v55[3] = v1[2];
  v55[4] = v57;
  v58 = v1[5];
  v55[5] = v1[4];
  v55[6] = v58;
  v59 = v1[1];
  v55[1] = *v1;
  v55[2] = v59;
  *(v5 + 1392) = sub_1000B784C;
  *(v5 + 1400) = v55;
  *(v5 + 1408) = 0;
  *(v5 + 1424) = 0;
  *(v5 + 1416) = 0;
  *(v5 + 1432) = 1;
  *(v5 + 1433) = v61;
  *(v5 + 1436) = *(&v61 + 3);
  *(v5 + 1440) = 0;
  *(v5 + 1448) = 0xE000000000000000;
  *(v5 + 1456) = 0xD000000000000017;
  *(v5 + 1464) = 0x800000010011F740;
  sub_1000B7070(v1, &v63);
  sub_1000B7070(v1, &v63);
  return v5;
}

uint64_t sub_1000B20FC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v35 = a1;
  v32 = type metadata accessor for GroupedListStyle();
  v34 = *(v32 - 8);
  __chkstk_darwin(v32);
  v4 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_100002BE4(&qword_10016F4D8, &qword_100116950);
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v30 - v7;
  v33 = sub_100002BE4(&qword_10016F4E0, &qword_100116958);
  v9 = *(v33 - 8);
  __chkstk_darwin(v33);
  v11 = &v30 - v10;
  v12 = sub_100002BE4(&qword_10016F4E8, &qword_100116960);
  v13 = v12 - 8;
  __chkstk_darwin(v12);
  v31 = &v30 - v14;
  v36 = v2;
  sub_100002BE4(&qword_10016F4F0, &qword_100116968);
  sub_1000B6CD0();
  List<>.init(content:)();
  GroupedListStyle.init()();
  sub_100012C48(&qword_10016F560, &qword_10016F4D8, &qword_100116950, &protocol conformance descriptor for List<A, B>);
  v15 = v32;
  View.listStyle<A>(_:)();
  (*(v34 + 8))(v4, v15);
  (*(v6 + 8))(v8, v5);
  static Alignment.center.getter();
  _FlexFrameLayout.init(minWidth:idealWidth:maxWidth:minHeight:idealHeight:maxHeight:alignment:)();
  v16 = v31;
  (*(v9 + 32))(v31, v11, v33);
  v17 = (v16 + *(v13 + 44));
  v18 = v37[14];
  v17[4] = v37[13];
  v17[5] = v18;
  v17[6] = v37[15];
  v19 = v37[10];
  *v17 = v37[9];
  v17[1] = v19;
  v20 = v37[12];
  v17[2] = v37[11];
  v17[3] = v20;
  v21 = swift_allocObject();
  v22 = v2[7];
  v21[7] = v2[6];
  v21[8] = v22;
  v21[9] = v2[8];
  v23 = v2[3];
  v21[3] = v2[2];
  v21[4] = v23;
  v24 = v2[5];
  v21[5] = v2[4];
  v21[6] = v24;
  v25 = v2[1];
  v21[1] = *v2;
  v21[2] = v25;
  v26 = sub_100002BE4(&qword_10016F568, &qword_1001169B0);
  v27 = v35;
  v28 = (v35 + *(v26 + 36));
  type metadata accessor for _TaskModifier();
  sub_1000B7070(v2, v37);
  static TaskPriority.userInitiated.getter();
  *v28 = &unk_1001169A8;
  v28[1] = v21;
  return sub_1000B70A8(v16, v27);
}

void sub_1000B2534(_OWORD *a1)
{
  sub_100002BE4(&qword_10016F580, &qword_1001169D8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10010FEE0;
  *(inited + 32) = 2;
  *(inited + 40) = sub_1000B1668();
  *(inited + 48) = 1;
  v21 = a1[1];
  sub_100002BE4(&qword_10016F570, &unk_1001169C0);
  State.wrappedValue.getter();
  *(inited + 56) = v22;
  v4 = sub_10000BE60(inited);
  swift_setDeallocating();
  sub_100002BE4(&qword_10016F588, &qword_1001169E0);
  swift_arrayDestroy();
  v5 = *(v4 + 16);
  if (!v5)
  {

    v6 = _swiftEmptyArrayStorage;
    goto LABEL_5;
  }

  v6 = sub_1000B5AD8(v5, 0);
  v7 = sub_100009A64(&v21, (v6 + 4), v5, v4);
  v8 = v21;

  sub_1000151D4(v8);
  if (v7 == v5)
  {

LABEL_5:
    *&v21 = v6;
    sub_1000B5B5C(&v21);
    v22 = v21;
    KeyPath = swift_getKeyPath();
    v10 = swift_allocObject();
    v11 = a1[7];
    v10[7] = a1[6];
    v10[8] = v11;
    v10[9] = a1[8];
    v12 = a1[3];
    v10[3] = a1[2];
    v10[4] = v12;
    v13 = a1[5];
    v10[5] = a1[4];
    v10[6] = v13;
    v14 = a1[1];
    v10[1] = *a1;
    v10[2] = v14;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1000B7118;
    *(v15 + 24) = v10;
    sub_1000B7070(a1, &v21);
    v16 = sub_100002BE4(&qword_10016F590, &qword_100116A08);
    v17 = sub_100002BE4(&qword_10016F508, &qword_100116970);
    v18 = sub_100012C48(&qword_10016F598, &qword_10016F590, &qword_100116A08, &protocol conformance descriptor for [A]);
    v19 = sub_1000B7188();
    v20 = sub_1000B6D54();
    ForEach<>.init(_:id:content:)(&v22, KeyPath, sub_1000B7158, v15, v16, v17, v18, v19, v20);
    return;
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1000B2824(char *a1, char *a2)
{
  if (qword_100116C98[*a1] == qword_100116C98[*a2])
  {
    v2 = 0;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1000B2894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = a1;
  v8 = sub_100002BE4(&qword_10016F518, &qword_100116978);
  __chkstk_darwin(v8);
  v11 = &v18 - v10;
  if (*(a2 + 16) && (v19 = v9, v12 = sub_1000B2AD0(v6), v9 = v19, (v12 & 1) != 0))
  {
    v20 = qword_100116C98[v6];
    v21 = 0xE300000000000000;
    sub_100012928();
    v20 = Text.init<A>(_:)();
    v21 = v13;
    v22 = v14 & 1;
    v23 = v15;
    __chkstk_darwin(v20);
    *(&v18 - 32) = v6;
    *(&v18 - 3) = a3;
    *(&v18 - 2) = a2;
    sub_100002BE4(&qword_10016F528, &qword_100116980);
    sub_1000B6E70();
    Section<>.init(header:content:)();
    (*(v19 + 32))(a4, v11, v8);
    return (*(v19 + 56))(a4, 0, 1, v8);
  }

  else
  {
    v17 = *(v9 + 56);

    return v17(a4, 1, 1, v8);
  }
}

uint64_t sub_1000B2AD0(char a1)
{
  v2 = *(v1 + 56);
  if (!*(v1 + 56))
  {

    return 1;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v4)
  {
    return 1;
  }

  v5 = v2 == 2 ? 7368769 : 7628106;
  if (a1)
  {
    v6 = a1 == 1 ? 7628106 : 7368769;
    if (v5 == v6)
    {
      return 1;
    }
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_1000B2BB8@<X0>(char a1@<W0>, _OWORD *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_100002BE4(&qword_10016F548, &qword_100116990);
  v32 = *(v8 - 8);
  __chkstk_darwin(v8);
  v10 = v30 - v9;
  v33 = sub_100002BE4(&qword_10016F5A8, &qword_100116A10);
  __chkstk_darwin(v33);
  v12 = v30 - v11;
  v13 = sub_100002BE4(&qword_10016F538, &qword_100116988);
  v14 = *(v13 - 8);
  __chkstk_darwin(v13);
  v16 = v30 - v15;
  if (a1 == 1)
  {
  }

  else
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v17 & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v34[0] = a2[2];
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.getter();
  if (v35[0] == 1)
  {
    LocalizedStringKey.init(stringLiteral:)();
    ProgressView<>.init<>(_:)();
    (*(v14 + 16))(v12, v16, v13);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_10016F530, &qword_10016F538, &qword_100116988, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000B6F28();
    _ConditionalContent<>.init(storage:)();
    return (*(v14 + 8))(v16, v13);
  }

LABEL_6:
  *v35 = a3;
  KeyPath = swift_getKeyPath();
  v19 = swift_allocObject();
  v20 = a2[7];
  v19[7] = a2[6];
  v19[8] = v20;
  v19[9] = a2[8];
  v21 = a2[3];
  v19[3] = a2[2];
  v19[4] = v21;
  v22 = a2[5];
  v19[5] = a2[4];
  v19[6] = v22;
  v23 = a2[1];
  v19[1] = *a2;
  v19[2] = v23;

  sub_1000B7070(a2, v34);
  v24 = sub_100002BE4(&qword_10016F4D0, &qword_100116760);
  v30[2] = v13;
  v25 = sub_100002BE4(&qword_10016F558, &qword_100116998);
  v30[1] = a4;
  v26 = v25;
  v27 = sub_100012C48(&qword_10016F5B0, &qword_10016F4D0, &qword_100116760, &protocol conformance descriptor for [A]);
  v28 = sub_100012C48(&qword_10016F550, &qword_10016F558, &qword_100116998, &protocol conformance descriptor for HStack<A>);
  ForEach<>.init(_:id:content:)(v35, KeyPath, sub_1000B71E8, v19, v24, v26, v27, &protocol witness table for String, v28);
  v29 = v32;
  (*(v32 + 16))(v12, v10, v8);
  swift_storeEnumTagMultiPayload();
  sub_100012C48(&qword_10016F530, &qword_10016F538, &qword_100116988, &protocol conformance descriptor for ProgressView<A, B>);
  sub_1000B6F28();
  _ConditionalContent<>.init(storage:)();
  return (*(v29 + 8))(v10, v8);
}

double sub_1000B30B4@<D0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v7[4] = a1[4];
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  *a2 = static VerticalAlignment.center.getter();
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  v5 = sub_100002BE4(&qword_10016F5B8, &qword_100116A38);
  return sub_1000B4040(v7, a2 + *(v5 + 44));
}

uint64_t sub_1000B3128(uint64_t a1)
{
  v1[7] = a1;
  v1[8] = type metadata accessor for MainActor();
  v1[9] = static MainActor.shared.getter();
  v1[10] = static MainActor.shared.getter();
  v2 = swift_task_alloc();
  v1[11] = v2;
  *v2 = v1;
  v2[1] = sub_1000B31E0;

  return sub_1000B3488();
}

uint64_t sub_1000B31E0(uint64_t a1)
{
  *(*v1 + 96) = a1;

  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B3324, v3, v2);
}

uint64_t sub_1000B3324()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 56);

  *(v0 + 16) = *(v2 + 16);
  *(v0 + 48) = v1;
  sub_100002BE4(&qword_10016F570, &unk_1001169C0);
  State.wrappedValue.setter();
  *(v0 + 32) = *(v2 + 32);
  *(v0 + 104) = 0;
  sub_100002BE4(&qword_10016A0A0, &unk_10010ECB0);
  State.wrappedValue.setter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1000B3428, v4, v3);
}

uint64_t sub_1000B3428()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1000B3488()
{
  v1[10] = v0;
  v2 = type metadata accessor for Bag();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v3 = type metadata accessor for InMemoryJetPackResourceBundle();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  type metadata accessor for MainActor();
  v1[17] = static MainActor.shared.getter();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[18] = v5;
  v1[19] = v4;

  return _swift_task_switch(sub_1000B35D8, v5, v4);
}

uint64_t sub_1000B35D8()
{
  v1 = *(v0[10] + 48);
  v0[20] = v1;
  if (v1)
  {

    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_1000B36E8;
    v3 = v0[16];

    return BaseObjectGraph.inject<A>(_:)(v3);
  }

  else
  {

    v4 = v0[1];

    return v4(_swiftEmptyArrayStorage);
  }
}

uint64_t sub_1000B36E8()
{
  v2 = *v1;
  v2[22] = v0;

  if (v0)
  {
    v3 = v2[18];
    v4 = v2[19];

    return _swift_task_switch(sub_1000B3C74, v3, v4);
  }

  else
  {
    v5 = swift_task_alloc();
    v2[23] = v5;
    *v5 = v2;
    v5[1] = sub_1000B3864;
    v6 = v2[13];

    return BaseObjectGraph.inject<A>(_:)(v6);
  }
}

uint64_t sub_1000B3864()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 152);
  v4 = *(v2 + 144);
  if (v0)
  {
    v5 = sub_1000B3E4C;
  }

  else
  {
    v5 = sub_1000B39A0;
  }

  return _swift_task_switch(v5, v4, v3);
}

uint64_t sub_1000B39A0()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v23 = *(v0 + 88);
  v22 = *(v0 + 128);

  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100110A60;
  v6 = JetPackResourceBundle.version.getter();
  *(v5 + 32) = 0u;
  *(v5 + 48) = 0u;
  v8 = 0x6E776F6E6B6E55;
  if (v7)
  {
    v8 = v6;
  }

  *(v5 + 64) = 0;
  v9 = 0xE700000000000000;
  if (v7)
  {
    v9 = v7;
  }

  *(v5 + 72) = 4;
  *(v5 + 80) = v8;
  *(v5 + 88) = v9;
  *(v5 + 96) = 0x206B63617074654ALL;
  *(v5 + 104) = 0xEF6E6F6973726556;
  v10 = [Bag.amsBag.getter() profile];
  swift_unknownObjectRelease();
  v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v13 = v12;

  *(v5 + 144) = 0;
  *(v5 + 112) = 0u;
  *(v5 + 128) = 0u;
  *(v5 + 152) = 4;
  *(v5 + 160) = v11;
  *(v5 + 168) = v13;
  *(v5 + 176) = 0x666F725020676142;
  *(v5 + 184) = 0xEB00000000656C69;
  v14 = [Bag.amsBag.getter() profileVersion];
  swift_unknownObjectRelease();
  v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v17 = v16;

  *(v5 + 224) = 0;
  *(v5 + 192) = 0u;
  *(v5 + 208) = 0u;
  *(v5 + 232) = 4;
  *(v5 + 240) = v15;
  *(v5 + 248) = v17;
  *(v5 + 256) = 0x7372655620676142;
  *(v5 + 264) = 0xEB000000006E6F69;
  AppStorage.projectedValue.getter();
  v18 = *(v0 + 64);
  v19 = *(v0 + 72);
  *(v5 + 272) = *(v0 + 48);
  *(v5 + 288) = v18;
  *(v5 + 296) = v19;
  *(v5 + 304) = &off_100159F90;
  *(v5 + 312) = 3;
  *(v5 + 320) = 0;
  *(v5 + 328) = 0xE000000000000000;
  strcpy((v5 + 336), "Jetpack Source");
  *(v5 + 351) = -18;

  (*(v4 + 8))(v3, v23);
  (*(v2 + 8))(v22, v1);

  v20 = *(v0 + 8);

  return v20(v5);
}

uint64_t sub_1000B3C74()
{

  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_100110A60;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *(v1 + 72) = 4;
  *(v1 + 80) = 0x6E776F6E6B6E55;
  *(v1 + 88) = 0xE700000000000000;
  *(v1 + 96) = 0x206B63617074654ALL;
  *(v1 + 104) = 0xEF6E6F6973726556;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0;
  *(v1 + 152) = 4;
  *(v1 + 160) = 0x6E776F6E6B6E55;
  *(v1 + 168) = 0xE700000000000000;
  *(v1 + 176) = 0x666F725020676142;
  *(v1 + 184) = 0xEB00000000656C69;
  *(v1 + 192) = 0u;
  *(v1 + 208) = 0u;
  *(v1 + 224) = 0;
  *(v1 + 232) = 4;
  *(v1 + 240) = 0x6E776F6E6B6E55;
  *(v1 + 248) = 0xE700000000000000;
  *(v1 + 256) = 0x7372655620676142;
  *(v1 + 264) = 0xEB000000006E6F69;
  AppStorage.projectedValue.getter();
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  *(v1 + 272) = *(v0 + 16);
  *(v1 + 288) = v2;
  *(v1 + 296) = v3;
  *(v1 + 304) = &off_100159F90;
  *(v1 + 312) = 3;
  *(v1 + 320) = 0;
  *(v1 + 328) = 0xE000000000000000;
  strcpy((v1 + 336), "Jetpack Source");
  *(v1 + 351) = -18;

  v4 = *(v0 + 8);

  return v4(v1);
}

uint64_t sub_1000B3E4C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);

  (*(v3 + 8))(v1, v2);
  sub_100002BE4(&qword_10016F578, &qword_1001169D0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100110A60;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0;
  *(v4 + 72) = 4;
  *(v4 + 80) = 0x6E776F6E6B6E55;
  *(v4 + 88) = 0xE700000000000000;
  *(v4 + 96) = 0x206B63617074654ALL;
  *(v4 + 104) = 0xEF6E6F6973726556;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0;
  *(v4 + 152) = 4;
  *(v4 + 160) = 0x6E776F6E6B6E55;
  *(v4 + 168) = 0xE700000000000000;
  *(v4 + 176) = 0x666F725020676142;
  *(v4 + 184) = 0xEB00000000656C69;
  *(v4 + 192) = 0u;
  *(v4 + 208) = 0u;
  *(v4 + 224) = 0;
  *(v4 + 232) = 4;
  *(v4 + 240) = 0x6E776F6E6B6E55;
  *(v4 + 248) = 0xE700000000000000;
  *(v4 + 256) = 0x7372655620676142;
  *(v4 + 264) = 0xEB000000006E6F69;
  AppStorage.projectedValue.getter();
  v5 = *(v0 + 32);
  v6 = *(v0 + 40);
  *(v4 + 272) = *(v0 + 16);
  *(v4 + 288) = v5;
  *(v4 + 296) = v6;
  *(v4 + 304) = &off_100159F90;
  *(v4 + 312) = 3;
  *(v4 + 320) = 0;
  *(v4 + 328) = 0xE000000000000000;
  strcpy((v4 + 336), "Jetpack Source");
  *(v4 + 351) = -18;

  v7 = *(v0 + 8);

  return v7(v4);
}

double sub_1000B4040@<D0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v116 = sub_100002BE4(&qword_10016F5C0, &unk_100116A40);
  v89 = *(v116 - 8);
  __chkstk_darwin(v116);
  v88 = &v83 - v3;
  v101 = sub_100002BE4(&qword_10016C560, &qword_100112708);
  v90 = *(v101 - 8);
  __chkstk_darwin(v101);
  v98 = &v83 - v4;
  v95 = sub_100002BE4(&qword_10016F5C8, &qword_100116A50);
  __chkstk_darwin(v95);
  v96 = &v83 - v5;
  v105 = sub_100002BE4(&qword_10016F5D0, &qword_100116A58);
  __chkstk_darwin(v105);
  v99 = &v83 - v6;
  v100 = sub_100002BE4(&qword_10016A088, &unk_100116A60);
  v92 = *(v100 - 8);
  __chkstk_darwin(v100);
  v8 = &v83 - v7;
  v97 = sub_100002BE4(&qword_10016C5F8, &qword_100112958);
  v91 = *(v97 - 8);
  __chkstk_darwin(v97);
  v10 = &v83 - v9;
  v109 = sub_100002BE4(&qword_10016F5D8, &qword_100116A70);
  __chkstk_darwin(v109);
  v111 = &v83 - v11;
  v102 = sub_100002BE4(&qword_10016F5E0, &qword_100116A78);
  __chkstk_darwin(v102);
  v104 = &v83 - v12;
  v93 = sub_100002BE4(&qword_10016F5E8, &qword_100116A80);
  __chkstk_darwin(v93);
  v14 = &v83 - v13;
  v103 = sub_100002BE4(&qword_10016F5F0, &qword_100116A88);
  __chkstk_darwin(v103);
  v94 = &v83 - v15;
  v110 = sub_100002BE4(&qword_10016F5F8, &qword_100116A90);
  __chkstk_darwin(v110);
  v106 = &v83 - v16;
  v17 = sub_100002BE4(&qword_10016F600, &qword_100116A98);
  v18 = __chkstk_darwin(v17 - 8);
  v115 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v114 = &v83 - v20;
  v21 = *(a1 + 72);
  *&v119 = *(a1 + 64);
  *(&v119 + 1) = v21;
  sub_100012928();

  v22 = Text.init<A>(_:)();
  v24 = v23;
  v26 = v25;
  static Font.Weight.bold.getter();
  v112 = Text.fontWeight(_:)();
  v108 = v27;
  v107 = v28;
  v113 = v29;
  sub_10001297C(v22, v24, v26 & 1);

  v32 = *a1;
  v31 = *(a1 + 8);
  v34 = *(a1 + 16);
  v33 = *(a1 + 24);
  v35 = *(a1 + 32);
  v36 = *(a1 + 40);
  if (v36 <= 1)
  {
    v43 = v91;
    v44 = v92;
    if (*(a1 + 40))
    {
      v69 = *(a1 + 8);
      v87 = *(a1 + 24);
      v70 = v87;
      v71 = swift_allocObject();
      v98 = &v83;
      *(v71 + 16) = v32;
      *(v71 + 24) = v69;
      __chkstk_darwin(v71);
      v86 = v69;
      sub_1000B71F8(v32, v69, v34, v70, v35, 1u);

      v85 = v8;
      Button.init(action:label:)();
      (*(v44 + 16))(v96, v8, v100);
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
      sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708, &protocol conformance descriptor for TextField<A>);
      v72 = v99;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v72, v104, &qword_10016F5D0, &qword_100116A58);
      swift_storeEnumTagMultiPayload();
      sub_1000B741C();
      sub_1000B74D4();
      v73 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100009908(v72, &qword_10016F5D0, &qword_100116A58);
      sub_10000C178(v73, v111, &qword_10016F5F8, &qword_100116A90);
      swift_storeEnumTagMultiPayload();
      sub_1000B7390();
      sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40, &protocol conformance descriptor for Picker<A, B, C>);
      v74 = v32;
      v42 = v114;
      _ConditionalContent<>.init(storage:)();
      sub_1000B76D4(v74, v86, v34, v87, v35, 1u);
      sub_100009908(v73, &qword_10016F5F8, &qword_100116A90);
      (*(v44 + 8))(v85, v100);
    }

    else
    {
      __chkstk_darwin(v30);
      sub_1000B71F8(v32, v46, v34, v45, v35, 0);

      v84 = v10;
      Toggle.init(isOn:label:)();
      v47 = v97;
      (*(v43 + 16))(v14, v10, v97);
      swift_storeEnumTagMultiPayload();
      sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958, &protocol conformance descriptor for Toggle<A>);
      v48 = v94;
      _ConditionalContent<>.init(storage:)();
      sub_10000C178(v48, v104, &qword_10016F5F0, &qword_100116A88);
      swift_storeEnumTagMultiPayload();
      sub_1000B741C();
      sub_1000B74D4();
      v49 = v106;
      _ConditionalContent<>.init(storage:)();
      sub_100009908(v48, &qword_10016F5F0, &qword_100116A88);
      sub_10000C178(v49, v111, &qword_10016F5F8, &qword_100116A90);
      swift_storeEnumTagMultiPayload();
      sub_1000B7390();
      sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40, &protocol conformance descriptor for Picker<A, B, C>);
      v42 = v114;
      _ConditionalContent<>.init(storage:)();

      sub_100009908(v49, &qword_10016F5F8, &qword_100116A90);
      (*(v43 + 8))(v84, v47);
    }
  }

  else if (v36 == 2)
  {
    v119 = *(a1 + 48);
    v123 = *(a1 + 48);
    sub_1000B71F8(v32, v31, v34, v33, v35, 2u);
    sub_1000499D4(&v119, &v122);

    v50 = v98;
    TextField<>.init<A>(_:text:onEditingChanged:onCommit:)();
    v51 = v90;
    (*(v90 + 16))(v96, v50, v101);
    swift_storeEnumTagMultiPayload();
    sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
    sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708, &protocol conformance descriptor for TextField<A>);
    v52 = v99;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v52, v104, &qword_10016F5D0, &qword_100116A58);
    swift_storeEnumTagMultiPayload();
    sub_1000B741C();
    sub_1000B74D4();
    v53 = v106;
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v52, &qword_10016F5D0, &qword_100116A58);
    sub_10000C178(v53, v111, &qword_10016F5F8, &qword_100116A90);
    swift_storeEnumTagMultiPayload();
    sub_1000B7390();
    sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40, &protocol conformance descriptor for Picker<A, B, C>);
    v42 = v114;
    _ConditionalContent<>.init(storage:)();

    sub_100009908(v53, &qword_10016F5F8, &qword_100116A90);
    (*(v51 + 8))(v98, v101);
  }

  else if (v36 == 3)
  {
    v123 = *(a1 + 48);
    v122 = *(a1 + 48);
    *&v119 = v32;
    *(&v119 + 1) = v31;
    v120 = v34;
    v121 = v33;
    __chkstk_darwin(v30);
    sub_1000B71F8(v32, v38, v34, v37, v35, 3u);
    sub_1000499D4(&v123, v118);

    sub_100002BE4(&qword_10016F608, &qword_100116AA0);
    sub_1000B72C8();
    v39 = v88;
    Picker<>.init<A>(_:selection:content:)();

    v40 = v89;
    v41 = v116;
    (*(v89 + 16))(v111, v39, v116);
    swift_storeEnumTagMultiPayload();
    sub_1000B7390();
    sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40, &protocol conformance descriptor for Picker<A, B, C>);
    v42 = v114;
    _ConditionalContent<>.init(storage:)();

    (*(v40 + 8))(v39, v41);
  }

  else
  {
    v54 = *(a1 + 56);
    *&v119 = *(a1 + 48);
    *(&v119 + 1) = v54;

    v55 = Text.init<A>(_:)();
    v57 = v56;
    v59 = v58;
    static Font.Weight.light.getter();
    v60 = Text.fontWeight(_:)();
    v62 = v61;
    v64 = v63;
    v66 = v65;
    sub_10001297C(v55, v57, v59 & 1);

    *v14 = v60;
    *(v14 + 1) = v62;
    v14[16] = v64 & 1;
    *(v14 + 3) = v66;
    swift_storeEnumTagMultiPayload();
    sub_100003AE4(v60, v62, v64 & 1);
    sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958, &protocol conformance descriptor for Toggle<A>);

    v67 = v94;
    _ConditionalContent<>.init(storage:)();
    sub_10000C178(v67, v104, &qword_10016F5F0, &qword_100116A88);
    swift_storeEnumTagMultiPayload();
    sub_1000B741C();
    sub_1000B74D4();
    v68 = v106;
    _ConditionalContent<>.init(storage:)();
    sub_100009908(v67, &qword_10016F5F0, &qword_100116A88);
    sub_10000C178(v68, v111, &qword_10016F5F8, &qword_100116A90);
    swift_storeEnumTagMultiPayload();
    sub_1000B7390();
    sub_100012C48(&qword_10016F630, &qword_10016F5C0, &unk_100116A40, &protocol conformance descriptor for Picker<A, B, C>);
    v42 = v114;
    _ConditionalContent<>.init(storage:)();
    sub_10001297C(v60, v62, v64 & 1);

    sub_100009908(v68, &qword_10016F5F8, &qword_100116A90);
  }

  v75 = v117;
  v76 = v115;
  v78 = v112;
  v77 = v113;
  sub_1000B75B8(v42, v115);
  v79 = v108;
  *v75 = v78;
  *(v75 + 8) = v79;
  v80 = v107 & 1;
  *(v75 + 16) = v107 & 1;
  *(v75 + 24) = v77;
  *(v75 + 32) = 0;
  *(v75 + 40) = 1;
  v81 = sub_100002BE4(&qword_10016F638, &qword_100116AA8);
  sub_1000B75B8(v76, v75 + *(v81 + 64));
  sub_100003AE4(v78, v79, v80);

  sub_1000B7628(v42);
  sub_1000B7628(v76);
  sub_10001297C(v78, v79, v80);

  return result;
}

uint64_t sub_1000B542C@<X0>(uint64_t a2@<X8>)
{
  sub_100012928();

  result = Text.init<A>(_:)();
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = v5 & 1;
  *(a2 + 24) = v6;
  return result;
}

uint64_t sub_1000B5498(uint64_t a1)
{
  v7 = a1;
  KeyPath = swift_getKeyPath();

  v2 = sub_100002BE4(&qword_10016F640, &qword_100116AD0);
  v3 = sub_100002BE4(&qword_10016F648, &qword_100116AD8);
  v4 = sub_100012C48(&qword_10016F650, &qword_10016F640, &qword_100116AD0, &protocol conformance descriptor for [A]);
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  return ForEach<>.init(_:id:content:)(&v7, KeyPath, sub_1000B55D8, 0, v2, v3, v4, &protocol witness table for String, OpaqueTypeConformance2);
}

uint64_t sub_1000B55D8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[2];
  v3 = a1[3];
  sub_100012928();

  *a2 = Text.init<A>(_:)();
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v4;
  *(a2 + 40) = v3;
  *(a2 + 48) = 1;
}

void sub_1000B56B8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  static UserDefaultUtilities.SharedConstants.privacyViewVersion.getter();
  v1 = String._bridgeToObjectiveC()();

  [v0 removeObjectForKey:v1];
}

void sub_1000B5744()
{
  v0 = static UserDefaultUtilities.tetsuoNotificationsUserDefaults.getter();
  if (v0)
  {
    v1 = v0;
    static UserDefaultUtilities.SharedConstants.getLatestNewsKey.getter();
    v2 = String._bridgeToObjectiveC()();

    [v1 removeObjectForKey:v2];
  }

  v3 = static UserDefaultUtilities.tetsuoNotificationsUserDefaults.getter();
  if (v3)
  {
    v4 = v3;
    static UserDefaultUtilities.SharedConstants.isRestrictedGeoKey.getter();
    v5 = String._bridgeToObjectiveC()();

    [v4 removeObjectForKey:v5];
  }
}

double sub_1000B5810()
{
  v0 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v0 - 8);
  v2 = &v7 - v1;
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  type metadata accessor for MainActor();
  v4 = static MainActor.shared.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = &protocol witness table for MainActor;
  sub_1000EE5F8(0, 0, v2, &unk_100116AF8, v5);

  return result;
}

void sub_1000B591C(__n128 a1)
{
  v1 = static UserDefaultUtilities.daemonUserDefaults.getter();
  if (v1)
  {
    v2 = v1;
    static UserDefaultUtilities.SharedConstants.visioncompaniondHasInstalledTetsuoKey.getter();
    v3 = String._bridgeToObjectiveC()();

    [v2 removeObjectForKey:v3];
  }
}

uint64_t sub_1000B59A0()
{
  v0[2] = type metadata accessor for MainActor();
  v0[3] = static MainActor.shared.getter();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_100079BE8;

  return sub_10002E5B0(_swiftEmptyArrayStorage);
}

void *sub_1000B5A64(uint64_t a1, uint64_t a2)
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

  sub_100002BE4(&qword_10016BBE0, &qword_100111120);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void *sub_1000B5AD8(uint64_t a1, uint64_t a2)
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

  sub_100002BE4(&qword_10016BBD0, &unk_100111110);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void sub_1000B5B5C(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1000B67F4(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_1000B5BC8(v4);
  *a1 = v2;
}

void sub_1000B5BC8(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        sub_100002BE4(&qword_10016BBD8, &unk_100116AE0);
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = (v5 + 4);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1000B5DE4(v7, v8, a1, v4);
      v6[2] = 0;

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
    sub_1000B5CD0(0, v2, 1, a1);
  }
}

uint64_t sub_1000B5CD0(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = *a4 + 16 * a3 - 16;
    v7 = result - a3;
LABEL_6:
    v8 = *(v5 + 16 * v4);
    v9 = v7;
    v10 = v6;
    while (1)
    {
      if (qword_100116C98[v8] == qword_100116C98[*v10])
      {
        result = swift_bridgeObjectRelease_n();
LABEL_5:
        ++v4;
        v6 += 16;
        --v7;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_6;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
      result = swift_bridgeObjectRelease_n();
      if ((v11 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v5)
      {
        break;
      }

      v8 = v10[16];
      v12 = *(v10 + 3);
      *(v10 + 1) = *v10;
      *v10 = v8;
      *(v10 + 1) = v12;
      v10 -= 16;
      if (__CFADD__(v9++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1000B5DE4(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v5;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_96:
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_135;
    }

    v4 = a3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_129:
      v9 = sub_1000B67CC(v9);
    }

    v99 = v9;
    v84 = *(v9 + 2);
    if (v84 >= 2)
    {
      do
      {
        v85 = *v4;
        if (!*v4)
        {
          goto LABEL_133;
        }

        v4 = *&v9[16 * v84];
        v86 = *&v9[16 * v84 + 24];
        sub_1000B64AC((v85 + 16 * v4), (v85 + 16 * *&v9[16 * v84 + 16]), (v85 + 16 * v86), v10);
        if (v6)
        {
          break;
        }

        if (v86 < v4)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000B67CC(v9);
        }

        if (v84 - 2 >= *(v9 + 2))
        {
          goto LABEL_123;
        }

        v87 = &v9[16 * v84];
        *v87 = v4;
        v87[1] = v86;
        v99 = v9;
        sub_1000B6740(v84 - 1);
        v9 = v99;
        v84 = *(v99 + 2);
        v4 = a3;
      }

      while (v84 > 1);
    }

LABEL_106:

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8;
    v11 = (v8 + 1);
    if (v11 >= v7)
    {
      v7 = v11;
      goto LABEL_25;
    }

    v12 = *a3;
    v13 = *a3 + 16 * v11;
    v14 = *(v13 + 8);
    v97[0] = *v13;
    v98 = v14;
    v15 = v12 + 16 * v10;
    v16 = *(v15 + 8);
    v95[0] = *v15;
    v96 = v16;

    v17 = sub_1000B2824(v97, v95);
    if (v6)
    {

      goto LABEL_106;
    }

    v18 = v17;

    v19 = (v10 + 2);
    v20 = v10;
    v10 *= 16;
    v4 = v12 + v10 + 32;
    while (v7 != v19)
    {
      if (qword_100116C98[*v4] == qword_100116C98[*(v4 - 16)])
      {
        v21 = 0;
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      swift_bridgeObjectRelease_n();
      ++v19;
      v4 += 16;
      if ((v18 ^ v21))
      {
        v7 = (v19 - 1);
        break;
      }
    }

    if ((v18 & 1) == 0)
    {
      goto LABEL_23;
    }

    if (v7 < v20)
    {
      goto LABEL_128;
    }

    v22 = v20;
    if (v20 < v7)
    {
      v23 = 0;
      v24 = 16 * v7;
      do
      {
        if (v22 != (v7 + v23 - 1))
        {
          v29 = *a3;
          if (!*a3)
          {
            goto LABEL_132;
          }

          v25 = (v29 + v10);
          v26 = v29 + v24;
          v27 = *v25;
          v28 = *(v25 + 1);
          *v25 = *(v26 - 16);
          *(v26 - 16) = v27;
          *(v26 - 8) = v28;
        }

        ++v22;
        --v23;
        v24 -= 16;
        v10 += 16;
      }

      while (v22 < v7 + v23);
LABEL_23:
      v10 = v20;
      goto LABEL_25;
    }

    v10 = v20;
LABEL_25:
    v30 = a3[1];
    if (v7 >= v30)
    {
      goto LABEL_33;
    }

    if (__OFSUB__(v7, v10))
    {
      goto LABEL_125;
    }

    if (v7 - v10 >= a4)
    {
LABEL_33:
      v31 = v7;
      goto LABEL_34;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_126;
    }

    if (v10 + a4 < v30)
    {
      v30 = v10 + a4;
    }

    if (v30 < v10)
    {
LABEL_127:
      __break(1u);
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v7 == v30)
    {
      goto LABEL_33;
    }

    v93 = v30;
    v88 = v10;
    v89 = v6;
    v76 = *a3;
    v77 = *a3 + 16 * v7 - 16;
    v78 = (v10 - v7);
LABEL_87:
    v79 = *(v76 + 16 * v7);
    v80 = v78;
    v4 = v77;
LABEL_88:
    if (qword_100116C98[v79] != qword_100116C98[*v4])
    {
      break;
    }

    swift_bridgeObjectRelease_n();
LABEL_86:
    ++v7;
    v77 += 16;
    --v78;
    if (v7 != v93)
    {
      goto LABEL_87;
    }

    v10 = v88;
    v6 = v89;
    v31 = v93;
LABEL_34:
    if (v31 < v10)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_100008E84(0, *(v9 + 2) + 1, 1, v9);
    }

    v4 = *(v9 + 2);
    v32 = *(v9 + 3);
    v33 = v4 + 1;
    if (v4 >= v32 >> 1)
    {
      v9 = sub_100008E84((v32 > 1), v4 + 1, 1, v9);
    }

    *(v9 + 2) = v33;
    v34 = &v9[16 * v4];
    *(v34 + 4) = v10;
    *(v34 + 5) = v31;
    v35 = *a1;
    if (!*a1)
    {
      goto LABEL_134;
    }

    v92 = v31;
    if (v4)
    {
      while (2)
      {
        v36 = v33 - 1;
        if (v33 >= 4)
        {
          v41 = &v9[16 * v33 + 32];
          v42 = *(v41 - 64);
          v43 = *(v41 - 56);
          v47 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          if (v47)
          {
            goto LABEL_111;
          }

          v46 = *(v41 - 48);
          v45 = *(v41 - 40);
          v47 = __OFSUB__(v45, v46);
          v39 = v45 - v46;
          v40 = v47;
          if (v47)
          {
            goto LABEL_112;
          }

          v48 = &v9[16 * v33];
          v50 = *v48;
          v49 = *(v48 + 1);
          v47 = __OFSUB__(v49, v50);
          v51 = v49 - v50;
          if (v47)
          {
            goto LABEL_114;
          }

          v47 = __OFADD__(v39, v51);
          v52 = v39 + v51;
          if (v47)
          {
            goto LABEL_117;
          }

          if (v52 >= v44)
          {
            v70 = &v9[16 * v36 + 32];
            v72 = *v70;
            v71 = *(v70 + 1);
            v47 = __OFSUB__(v71, v72);
            v73 = v71 - v72;
            if (v47)
            {
              goto LABEL_121;
            }

            if (v39 < v73)
            {
              v36 = v33 - 2;
            }
          }

          else
          {
LABEL_54:
            if (v40)
            {
              goto LABEL_113;
            }

            v53 = &v9[16 * v33];
            v55 = *v53;
            v54 = *(v53 + 1);
            v56 = __OFSUB__(v54, v55);
            v57 = v54 - v55;
            v58 = v56;
            if (v56)
            {
              goto LABEL_116;
            }

            v59 = &v9[16 * v36 + 32];
            v61 = *v59;
            v60 = *(v59 + 1);
            v47 = __OFSUB__(v60, v61);
            v62 = v60 - v61;
            if (v47)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v57, v62))
            {
              goto LABEL_120;
            }

            if (v57 + v62 < v39)
            {
              goto LABEL_68;
            }

            if (v39 < v62)
            {
              v36 = v33 - 2;
            }
          }
        }

        else
        {
          if (v33 == 3)
          {
            v37 = *(v9 + 4);
            v38 = *(v9 + 5);
            v47 = __OFSUB__(v38, v37);
            v39 = v38 - v37;
            v40 = v47;
            goto LABEL_54;
          }

          v63 = &v9[16 * v33];
          v65 = *v63;
          v64 = *(v63 + 1);
          v47 = __OFSUB__(v64, v65);
          v57 = v64 - v65;
          v58 = v47;
LABEL_68:
          if (v58)
          {
            goto LABEL_115;
          }

          v66 = &v9[16 * v36];
          v68 = *(v66 + 4);
          v67 = *(v66 + 5);
          v47 = __OFSUB__(v67, v68);
          v69 = v67 - v68;
          if (v47)
          {
            goto LABEL_118;
          }

          if (v69 < v57)
          {
            break;
          }
        }

        v74 = v36 - 1;
        if (v36 - 1 >= v33)
        {
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
          goto LABEL_127;
        }

        if (!*a3)
        {
          goto LABEL_131;
        }

        v4 = *&v9[16 * v74 + 32];
        v10 = *&v9[16 * v36 + 40];
        sub_1000B64AC((*a3 + 16 * v4), (*a3 + 16 * *&v9[16 * v36 + 32]), (*a3 + 16 * v10), v35);
        if (v6)
        {
          goto LABEL_106;
        }

        if (v10 < v4)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1000B67CC(v9);
        }

        if (v74 >= *(v9 + 2))
        {
          goto LABEL_110;
        }

        v75 = &v9[16 * v74];
        *(v75 + 4) = v4;
        *(v75 + 5) = v10;
        v99 = v9;
        sub_1000B6740(v36);
        v9 = v99;
        v33 = *(v99 + 2);
        if (v33 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = a3[1];
    v8 = v92;
    if (v92 >= v7)
    {
      goto LABEL_96;
    }
  }

  v81 = _stringCompareWithSmolCheck(_:_:expecting:)();
  swift_bridgeObjectRelease_n();
  if ((v81 & 1) == 0)
  {
    goto LABEL_86;
  }

  if (v76)
  {
    v79 = *(v4 + 16);
    v82 = *(v4 + 24);
    *(v4 + 16) = *v4;
    *v4 = v79;
    *(v4 + 8) = v82;
    v4 -= 16;
    if (__CFADD__(v80++, 1))
    {
      goto LABEL_86;
    }

    goto LABEL_88;
  }

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
}

uint64_t sub_1000B64AC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 >= v12 >> 4)
  {
    if (a4 != __src || &__src[16 * v13] <= a4)
    {
      memmove(a4, __src, 16 * v13);
    }

    v14 = &v4[16 * v13];
    if (v11 >= 16 && v6 > v7)
    {
LABEL_27:
      v18 = v6 - 16;
      v5 -= 16;
      v19 = v14;
      do
      {
        v20 = *(v19 - 16);
        v19 -= 16;
        if (qword_100116C98[v20] == qword_100116C98[*v18])
        {
          v21 = 0;
        }

        else
        {
          v21 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        swift_bridgeObjectRelease_n();
        v22 = v5 + 16;
        if (v21)
        {
          if (v22 != v6)
          {
            *v5 = *v18;
          }

          if (v14 <= v4 || (v6 -= 16, v18 <= v7))
          {
            v6 = v18;
            goto LABEL_41;
          }

          goto LABEL_27;
        }

        if (v22 != v14)
        {
          *v5 = *v19;
        }

        v5 -= 16;
        v14 = v19;
      }

      while (v19 > v4);
      v14 = v19;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 >= 16 && v6 < v5)
    {
      while (qword_100116C98[*v6] != qword_100116C98[*v4])
      {
        v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v15 & 1) == 0)
        {
          goto LABEL_17;
        }

        v16 = v6;
        v17 = v7 == v6;
        v6 += 16;
        if (!v17)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 16;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      swift_bridgeObjectRelease_n();
LABEL_17:
      v16 = v4;
      v17 = v7 == v4;
      v4 += 16;
      if (v17)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = *v16;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_41:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

uint64_t sub_1000B6740(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1000B67CC(v3);
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

uint64_t sub_1000B6808@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  type metadata accessor for AppDelegate(0);
  sub_1000B7C04(&qword_10016A710, type metadata accessor for AppDelegate, &unk_10011A410);
  v4 = EnvironmentObject.init()();
  v16 = v5;
  v17 = v4;
  v20 = _swiftEmptyArrayStorage;
  sub_100002BE4(&qword_10016F4D0, &qword_100116760);
  State.init(wrappedValue:)();
  LOBYTE(v20) = 1;
  State.init(wrappedValue:)();
  static UserDefaultUtilities.SharedConstants.discoveryFeedToUse.getter();
  v15 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.jetpackSource.getter();
  v14 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.clearURLCacheOnLaunch.getter();
  v6 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.forceShowAllSettingsTips.getter();
  v7 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.productPageAdamId.getter();
  v8 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.remoteDownloadIdentifierOverride.getter();
  v9 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.runningInUITestingMode.getter();
  v10 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.tetsuoUseSandboxCloudKitEnvironmentKey.getter();
  static UserDefaultUtilities.daemonUserDefaults.getter();
  v11 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.useStagingKey.getter();
  static UserDefaultUtilities.daemonUserDefaults.getter();
  v12 = AppStorage.init<A>(wrappedValue:_:store:)();
  static UserDefaultUtilities.SharedConstants.supressDebugButton.getter();
  static UserDefaultUtilities.daemonUserDefaults.getter();
  result = AppStorage.init<A>(wrappedValue:_:store:)();
  *a3 = v17;
  *(a3 + 8) = v16;
  *(a3 + 16) = v21;
  *(a3 + 24) = v22;
  *(a3 + 32) = v21;
  *(a3 + 33) = v21;
  *(a3 + 36) = *(&v21 + 3);
  *(a3 + 40) = v22;
  *(a3 + 48) = a1;
  *(a3 + 56) = a2;
  *(a3 + 57) = v20;
  *(a3 + 60) = _swiftEmptyArrayStorage >> 24;
  *(a3 + 64) = v15;
  *(a3 + 72) = v14;
  *(a3 + 80) = v6;
  *(a3 + 88) = v7;
  *(a3 + 96) = v8;
  *(a3 + 104) = v9;
  *(a3 + 112) = v10;
  *(a3 + 120) = v11;
  *(a3 + 128) = v12;
  *(a3 + 136) = result;
  return result;
}

uint64_t sub_1000B6AE0(uint64_t a1)
{
  if ((*(a1 + 40) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 40) & 7;
  }
}

__n128 sub_1000B6AFC(uint64_t a1, uint64_t a2)
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

uint64_t sub_1000B6B18(uint64_t a1, int a2)
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

uint64_t sub_1000B6B60(uint64_t result, int a2, int a3)
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

__n128 sub_1000B6BC4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 128);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 128) = v7;
  *(a1 + 80) = result;
  *(a1 + 96) = v6;
  return result;
}

uint64_t sub_1000B6BF0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1000B6C38(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
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
      *(result + 144) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000B6CD0()
{
  result = qword_10016F4F8;
  if (!qword_10016F4F8)
  {
    sub_10000459C(&qword_10016F4F0, &qword_100116968);
    sub_1000B6D54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F4F8);
  }

  return result;
}

unint64_t sub_1000B6D54()
{
  result = qword_10016F500;
  if (!qword_10016F500)
  {
    sub_10000459C(&qword_10016F508, &qword_100116970);
    sub_1000B6DD8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F500);
  }

  return result;
}

unint64_t sub_1000B6DD8()
{
  result = qword_10016F510;
  if (!qword_10016F510)
  {
    sub_10000459C(&qword_10016F518, &qword_100116978);
    sub_1000B6E70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F510);
  }

  return result;
}

unint64_t sub_1000B6E70()
{
  result = qword_10016F520;
  if (!qword_10016F520)
  {
    sub_10000459C(&qword_10016F528, &qword_100116980);
    sub_100012C48(&qword_10016F530, &qword_10016F538, &qword_100116988, &protocol conformance descriptor for ProgressView<A, B>);
    sub_1000B6F28();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F520);
  }

  return result;
}

unint64_t sub_1000B6F28()
{
  result = qword_10016F540;
  if (!qword_10016F540)
  {
    sub_10000459C(&qword_10016F548, &qword_100116990);
    sub_100012C48(&qword_10016F550, &qword_10016F558, &qword_100116998, &protocol conformance descriptor for HStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F540);
  }

  return result;
}

uint64_t sub_1000B6FDC()
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_100024388;

  return sub_1000B3128(v0 + 16);
}

uint64_t sub_1000B70A8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F4E8, &qword_100116960);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7120()
{

  return _swift_deallocObject(v0, 32, 7);
}

unint64_t sub_1000B7188()
{
  result = qword_10016F5A0;
  if (!qword_10016F5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F5A0);
  }

  return result;
}

uint64_t sub_1000B71F8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return v6;
      }
    }
  }

  else
  {
    if (a6)
    {
      if (a6 != 1)
      {
        return v6;
      }
    }

    else
    {
    }
  }
}

unint64_t sub_1000B72C8()
{
  result = qword_10016F610;
  if (!qword_10016F610)
  {
    sub_10000459C(&qword_10016F608, &qword_100116AA0);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F610);
  }

  return result;
}

unint64_t sub_1000B7390()
{
  result = qword_10016F618;
  if (!qword_10016F618)
  {
    sub_10000459C(&qword_10016F5F8, &qword_100116A90);
    sub_1000B741C();
    sub_1000B74D4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F618);
  }

  return result;
}

unint64_t sub_1000B741C()
{
  result = qword_10016F620;
  if (!qword_10016F620)
  {
    sub_10000459C(&qword_10016F5F0, &qword_100116A88);
    sub_100012C48(&qword_10016C628, &qword_10016C5F8, &qword_100112958, &protocol conformance descriptor for Toggle<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F620);
  }

  return result;
}

unint64_t sub_1000B74D4()
{
  result = qword_10016F628;
  if (!qword_10016F628)
  {
    sub_10000459C(&qword_10016F5D0, &qword_100116A58);
    sub_100012C48(&qword_10016A098, &qword_10016A088, &unk_100116A60, &protocol conformance descriptor for Button<A>);
    sub_100012C48(&qword_10016C598, &qword_10016C560, &qword_100112708, &protocol conformance descriptor for TextField<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F628);
  }

  return result;
}

uint64_t sub_1000B75B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100002BE4(&qword_10016F600, &qword_100116A98);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7628(uint64_t a1)
{
  v2 = sub_100002BE4(&qword_10016F600, &qword_100116A98);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1000B76D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  if (a6 > 1u)
  {
    if (a6 == 2)
    {
    }

    else
    {
      if (a6 != 3)
      {
        return result;
      }
    }
  }

  else if (a6)
  {
    if (a6 != 1)
    {
      return result;
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000B77A4()
{

  return _swift_deallocObject(v0, 160, 7);
}

uint64_t sub_1000B7854()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B788C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000FA04;

  return sub_1000B59A0();
}

__n128 sub_1000B7948(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B795C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 41))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 40);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000B79A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000B79F4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 4;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1000B7A2C()
{
  result = qword_10016F658;
  if (!qword_10016F658)
  {
    sub_10000459C(&qword_10016F568, &qword_1001169B0);
    sub_1000B7AE8();
    sub_1000B7C04(&qword_10016DCE0, &type metadata accessor for _TaskModifier, &protocol conformance descriptor for _TaskModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F658);
  }

  return result;
}

unint64_t sub_1000B7AE8()
{
  result = qword_10016F660;
  if (!qword_10016F660)
  {
    sub_10000459C(&qword_10016F4E8, &qword_100116960);
    sub_10000459C(&qword_10016F4D8, &qword_100116950);
    type metadata accessor for GroupedListStyle();
    sub_100012C48(&qword_10016F560, &qword_10016F4D8, &qword_100116950, &protocol conformance descriptor for List<A, B>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F660);
  }

  return result;
}

uint64_t sub_1000B7C04(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1000B7C50()
{
  result = qword_10016F668[0];
  if (!qword_10016F668[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10016F668);
  }

  return result;
}

unint64_t sub_1000B7CA4(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100159D48, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1000B7D18(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1000223CC();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1000B7DB0(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
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

  v8 = ((((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
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
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1000B7F0C(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
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

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v19 = a2 & 0x7FFFFFFF;
          v19[1] = 0;
        }

        else
        {
          *v19 = a2 - 1;
        }
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF0)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF0)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 16);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1000B814C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a1;
  v33 = a3;
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  swift_getWitnessTable();
  v6 = type metadata accessor for _ViewModifier_Content();
  v7 = sub_10000459C(&qword_10016F6F0, &qword_100116D28);
  v29 = v7;
  v8 = v6;
  v27[1] = v6;
  WitnessTable = swift_getWitnessTable();
  v28 = WitnessTable;
  v10 = type metadata accessor for EmptyVisualEffect();
  v11 = sub_1000B88B0();
  v34 = v10;
  v35 = v11;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v34 = v8;
  v35 = v7;
  v36 = WitnessTable;
  v37 = OpaqueTypeConformance2;
  v30 = &opaque type descriptor for <<opaque return type of View.visualEffect<A>(_:)>>;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v14 = *(OpaqueTypeMetadata2 - 8);
  v15 = __chkstk_darwin(OpaqueTypeMetadata2);
  v17 = v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v15);
  v19 = v27 - v18;
  (*(v4 + 16))(v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v31, a2);
  v20 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = *(a2 + 16);
  (*(v4 + 32))(v21 + v20, v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v22 = swift_checkMetadataState();
  v24 = v28;
  v23 = v29;
  View.visualEffect<A>(_:)();

  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = OpaqueTypeConformance2;
  swift_getOpaqueTypeConformance2();
  sub_1000B14BC();
  v25 = *(v14 + 8);
  v25(v17, OpaqueTypeMetadata2);
  sub_1000B14BC();
  return (v25)(v19, OpaqueTypeMetadata2);
}

uint64_t sub_1000B849C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for ScrollFadeModifier(0, a4, a3, a4);
  sub_1000B851C(a2, v5);
  type metadata accessor for EmptyVisualEffect();
  sub_1000B88B0();
  return VisualEffect.opacity(_:)();
}

void sub_1000B851C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = type metadata accessor for NamedCoordinateSpace();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v2 + *(a2 + 36)))(v2))
  {
    v31[0] = 0x6C6C6F726373;
    v31[1] = 0xE600000000000000;
    static CoordinateSpaceProtocol<>.named<A>(_:)();
    GeometryProxy.frame<A>(in:)();
    v10 = v9;
    v12 = v11;
    v14 = v13;
    v16 = v15;
    (*(v6 + 8))(v8, v5);
    v17 = [objc_opt_self() mainScreen];
    [v17 bounds];

    v18 = [objc_opt_self() sharedApplication];
    v19 = [v18 connectedScenes];

    sub_100031904(0, &qword_100169C10, UIScene_ptr);
    sub_1000B8A98();
    v20 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v21 = sub_1000F34B8(v20);

    if (v21)
    {
      objc_opt_self();
      v22 = swift_dynamicCastObjCClass();
      if (v22)
      {
        v23 = [v22 windows];
        sub_100031904(0, &qword_10016B1C0, UIWindow_ptr);
        v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

        if (v24 >> 62)
        {
          if (_CocoaArrayWrapper.endIndex.getter())
          {
            goto LABEL_6;
          }
        }

        else if (*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_6:
          if ((v24 & 0xC000000000000001) != 0)
          {
            v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if (!*((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
              return;
            }

            v25 = *(v24 + 32);
          }

          v26 = v25;

          v27 = v26;
          [v27 safeAreaInsets];
          v29 = v28;

          goto LABEL_14;
        }
      }
    }

    v29 = 44.0;
LABEL_14:
    v30 = v29 + *(v3 + *(a2 + 32));
    v32.origin.x = v10;
    v32.origin.y = v12;
    v32.size.width = v14;
    v32.size.height = v16;
    if (CGRectGetMaxY(v32) < v30)
    {
      v33.origin.x = v10;
      v33.origin.y = v12;
      v33.size.width = v14;
      v33.size.height = v16;
      CGRectGetMaxY(v33);
    }
  }
}

unint64_t sub_1000B88B0()
{
  result = qword_10016F6F8;
  if (!qword_10016F6F8)
  {
    type metadata accessor for EmptyVisualEffect();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10016F6F8);
  }

  return result;
}

uint64_t sub_1000B8908(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 16);
  v6 = *(type metadata accessor for ScrollFadeModifier(0, v5, a3, a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 24) & ~v7;
  v9 = *(v6 + 64);
  (*(*(v5 - 8) + 8))(v4 + v8, v5);

  return _swift_deallocObject(v4, v8 + v9, v7 | 7);
}

uint64_t sub_1000B89FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + 16);
  v8 = *(type metadata accessor for ScrollFadeModifier(0, v7, a3, a4) - 8);
  v9 = v4 + ((*(v8 + 80) + 24) & ~*(v8 + 80));

  return sub_1000B849C(a1, a2, v9, v7);
}

unint64_t sub_1000B8A98()
{
  result = qword_100171520;
  if (!qword_100171520)
  {
    sub_100031904(255, &qword_100169C10, UIScene_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100171520);
  }

  return result;
}

uint64_t sub_1000B8B00(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ScrollFadeModifier(255, *a1, a3, a4);
  swift_getWitnessTable();
  type metadata accessor for _ViewModifier_Content();
  sub_10000459C(&qword_10016F6F0, &qword_100116D28);
  swift_getWitnessTable();
  type metadata accessor for EmptyVisualEffect();
  sub_1000B88B0();
  swift_getOpaqueTypeConformance2();
  return swift_getOpaqueTypeConformance2();
}

uint64_t sub_1000B8C00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000C178(a3, v22 - v9, &unk_10016F2B0, &qword_10010F6F0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009908(v10, &unk_10016F2B0, &qword_10010F6F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      else
      {
        v19 = 0;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000B8EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100002BE4(&unk_10016F2B0, &qword_10010F6F0);
  __chkstk_darwin(v8 - 8);
  v10 = v22 - v9;
  sub_10000C178(a3, v22 - v9, &unk_10016F2B0, &qword_10010F6F0);
  v11 = type metadata accessor for TaskPriority();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v10, 1, v11);

  if (v13 == 1)
  {
    sub_100009908(v10, &unk_10016F2B0, &qword_10010F6F0);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v12 + 8))(v10, v11);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;

      sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
      v19 = (v17 | v15);
      if (v17 | v15)
      {
        v23[0] = 0;
        v23[1] = 0;
        v19 = v23;
        v23[2] = v15;
        v23[3] = v17;
      }

      v22[1] = 7;
      v22[2] = v19;
      v22[3] = v18;
      v20 = swift_task_create();

      sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);

      return v20;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100009908(a3, &unk_10016F2B0, &qword_10010F6F0);
  sub_100002BE4(&qword_10016F030, &qword_10011A2D0);
  if (v17 | v15)
  {
    v23[4] = 0;
    v23[5] = 0;
    v23[6] = v15;
    v23[7] = v17;
  }

  return swift_task_create();
}

uint64_t sub_1000B9168()
{
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1000B9210@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  v5 = *(v3 + 24);
  *a2 = result;
  a2[1] = v5;
  return result;
}

double sub_1000B92C0(uint64_t *a1, uint64_t *a2)
{
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return result;
}

uint64_t sub_1000B9390()
{
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  return *(v0 + 32);
}

void sub_1000B9430(char a1)
{
  if (*(v1 + 32) == (a1 & 1))
  {
    *(v1 + 32) = a1 & 1;
    swift_getKeyPath();
    sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    if (swift_unknownObjectWeakLoadStrong())
    {
      swift_getKeyPath();
      ObservationRegistrar.access<A, B>(_:keyPath:)();

      sub_10009F3E0(2u);
      swift_unknownObjectRelease();
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    __chkstk_darwin(KeyPath);
    sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
    ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();
  }
}

uint64_t sub_1000B9608(uint64_t a1, char a2)
{
  *(a1 + 32) = a2;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10009F3E0(2u);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1000B9710(char *a1)
{
  v3 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  sub_1000BCAF0(a1, v1 + v6);
  swift_endAccess();
  swift_getKeyPath();
  v10 = v1;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000C178(v1 + v6, v5, &qword_10016F8B8, &qword_100116E20);
  v7 = type metadata accessor for GuestUserHandoverService();
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_100009908(v5, &qword_10016F8B8, &qword_100116E20);
    sub_1000B9430(0);
    v5 = a1;
  }

  else
  {
    sub_100009908(a1, &qword_10016F8B8, &qword_100116E20);
  }

  return sub_100009908(v5, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B98E8@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v3 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  return sub_10000C178(v5 + v3, a1, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B99C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  return sub_10000C178(v3 + v4, a2, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B9A98(uint64_t a1, uint64_t *a2)
{
  v4 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  __chkstk_darwin(v4 - 8);
  v6 = &v9[-v5];
  sub_10000C178(a1, &v9[-v5], &qword_10016F8B8, &qword_100116E20);
  v7 = *a2;
  swift_getKeyPath();
  v10 = v7;
  v11 = v6;
  v12 = v7;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  return sub_100009908(v6, &qword_10016F8B8, &qword_100116E20);
}

uint64_t sub_1000B9BE8(uint64_t a1, uint64_t a2)
{
  v3 = sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  __chkstk_darwin(v3 - 8);
  v5 = &v7 - v4;
  sub_10000C178(a2, &v7 - v4, &qword_10016F8B8, &qword_100116E20);
  return sub_1000B9710(v5);
}

uint64_t sub_1000B9C9C()
{
  v1[9] = v0;
  v1[10] = *v0;
  v2 = type metadata accessor for GuestUserHandoverService();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return _swift_task_switch(sub_1000B9DEC, 0, 0);
}

uint64_t sub_1000B9DEC()
{
  v45 = v0;
  v1 = v0[18];
  v2 = v0[12];
  v43 = v0[11];
  v3 = v0[9];
  swift_getKeyPath();
  v0[5] = v3;
  v0[19] = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel___observationRegistrar;
  v0[20] = sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v4 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  v0[21] = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  v41 = v4;
  v42 = v3;
  sub_10000C178(v3 + v4, v1, &qword_10016F8B8, &qword_100116E20);
  v5 = *(v2 + 48);
  v0[22] = v5;
  v0[23] = (v2 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  LODWORD(v4) = v5(v1, 1, v43);
  sub_100009908(v1, &qword_10016F8B8, &qword_100116E20);
  if (v4 != 1)
  {
LABEL_9:

    v26 = v0[1];

    return v26();
  }

  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v0[24] = sub_100006B0C(v6, qword_100181F88);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v40 = v5;
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v44[0] = v10;
    *v9 = 136315138;
    v11 = _typeName(_:qualified:)();
    v13 = sub_100006B44(v11, v12, v44);

    *(v9 + 4) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s Creating guestUserHandoverService.", v9, 0xCu);
    sub_1000052E4(v10);
  }

  v14 = v0[17];
  v16 = v0[11];
  v15 = v0[12];
  v39 = v0[16];
  v17 = v0[9];
  GuestUserHandoverService.init()();
  (*(v15 + 56))(v14, 0, 1, v16);
  swift_getKeyPath();
  v18 = swift_task_alloc();
  *(v18 + 16) = v17;
  *(v18 + 24) = v14;
  v0[6] = v17;
  ObservationRegistrar.withMutation<A, B, C>(of:keyPath:_:)();

  sub_100009908(v14, &qword_10016F8B8, &qword_100116E20);
  swift_getKeyPath();
  v0[7] = v17;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000C178(v42 + v41, v39, &qword_10016F8B8, &qword_100116E20);
  v19 = v40(v39, 1, v16);
  v20 = v0[16];
  if (v19)
  {
    sub_100009908(v0[16], &qword_10016F8B8, &qword_100116E20);
    v21 = v0[22];
    v22 = v0[21];
    v23 = v0[15];
    v24 = v0[11];
    v25 = v0[9];
    swift_getKeyPath();
    v0[8] = v25;
    ObservationRegistrar.access<A, B>(_:keyPath:)();

    sub_10000C178(v25 + v22, v23, &qword_10016F8B8, &qword_100116E20);
    if (v21(v23, 1, v24) == 1)
    {
      sub_100009908(v0[15], &qword_10016F8B8, &qword_100116E20);
      goto LABEL_9;
    }

    (*(v0[12] + 32))(v0[13], v0[15], v0[11]);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v44[0] = v32;
      *v31 = 136315138;
      v33 = _typeName(_:qualified:)();
      v35 = sub_100006B44(v33, v34, v44);

      *(v31 + 4) = v35;
      _os_log_impl(&_mh_execute_header, v29, v30, "%s successfully created guestUserHandoverService.", v31, 0xCu);
      sub_1000052E4(v32);
    }

    v36 = sub_1000BCAA8(&qword_10016F8C0, type metadata accessor for GuestUserSessionModel, &unk_100116DDC);
    v37 = swift_task_alloc();
    v0[26] = v37;
    *v37 = v0;
    v37[1] = sub_1000BA97C;
    v38 = v0[9];

    return GuestUserHandoverService.add(_:)(v38, v36);
  }

  else
  {
    (*(v0[12] + 16))(v0[14], v0[16], v0[11]);
    sub_100009908(v20, &qword_10016F8B8, &qword_100116E20);
    v28 = swift_task_alloc();
    v0[25] = v28;
    *v28 = v0;
    v28[1] = sub_1000BA534;

    return GuestUserHandoverService.activate()();
  }
}

uint64_t sub_1000BA534()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v3 = *(*v0 + 88);

  (*(v2 + 8))(v1, v3);

  return _swift_task_switch(sub_1000BA68C, 0, 0);
}

uint64_t sub_1000BA68C()
{
  v19 = v0;
  v1 = v0[22];
  v2 = v0[21];
  v3 = v0[15];
  v4 = v0[11];
  v5 = v0[9];
  swift_getKeyPath();
  v0[8] = v5;
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  sub_10000C178(v5 + v2, v3, &qword_10016F8B8, &qword_100116E20);
  if (v1(v3, 1, v4) == 1)
  {
    sub_100009908(v0[15], &qword_10016F8B8, &qword_100116E20);

    v6 = v0[1];

    return v6();
  }

  else
  {
    (*(v0[12] + 32))(v0[13], v0[15], v0[11]);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v18 = v11;
      *v10 = 136315138;
      v12 = _typeName(_:qualified:)();
      v14 = sub_100006B44(v12, v13, &v18);

      *(v10 + 4) = v14;
      _os_log_impl(&_mh_execute_header, v8, v9, "%s successfully created guestUserHandoverService.", v10, 0xCu);
      sub_1000052E4(v11);
    }

    v15 = sub_1000BCAA8(&qword_10016F8C0, type metadata accessor for GuestUserSessionModel, &unk_100116DDC);
    v16 = swift_task_alloc();
    v0[26] = v16;
    *v16 = v0;
    v16[1] = sub_1000BA97C;
    v17 = v0[9];

    return GuestUserHandoverService.add(_:)(v17, v15);
  }
}

uint64_t sub_1000BA97C()
{
  v2 = *v1;
  *(v2 + 216) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1000BACE4, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    *(v2 + 224) = v3;
    *v3 = v2;
    v3[1] = sub_1000BAAEC;

    return GuestUserHandoverService.isGuestUserSessionActive()();
  }
}

uint64_t sub_1000BAAEC(char a1)
{
  v4 = *v2;
  *(*v2 + 232) = v1;

  if (v1)
  {
    v5 = sub_1000BAF18;
  }

  else
  {
    *(v4 + 240) = a1 & 1;
    v5 = sub_1000BAC18;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_1000BAC18()
{
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v3 = *(v0 + 88);
  sub_1000B9430(*(v0 + 240));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1000BACE4()
{
  v19 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  if (v3)
  {
    v17 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = _typeName(_:qualified:)();
    v16 = v4;
    v12 = sub_100006B44(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Could not register as guest user handover observer to follow activation state for reason:%{public}@.", v7, 0x16u);
    sub_100009908(v8, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v9);

    (*(v5 + 8))(v16, v17);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000BAF18()
{
  v19 = v0;
  swift_errorRetain();
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v5 = v0[12];
  v4 = v0[13];
  v6 = v0[11];
  if (v3)
  {
    v17 = v0[11];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v7 = 136315394;
    v10 = _typeName(_:qualified:)();
    v16 = v4;
    v12 = sub_100006B44(v10, v11, &v18);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v13;
    *v8 = v13;
    _os_log_impl(&_mh_execute_header, v1, v2, "%s Could not register as guest user handover observer to follow activation state for reason:%{public}@.", v7, 0x16u);
    sub_100009908(v8, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v9);

    (*(v5 + 8))(v16, v17);
  }

  else
  {

    (*(v5 + 8))(v4, v6);
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_1000BB14C()
{
  v1[6] = v0;
  v1[7] = *v0;
  sub_100002BE4(&qword_10016F8B8, &qword_100116E20);
  v1[8] = swift_task_alloc();
  v2 = type metadata accessor for GuestUserHandoverService();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();

  return _swift_task_switch(sub_1000BB26C, 0, 0);
}

uint64_t sub_1000BB26C()
{
  v18 = v0;
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  swift_getKeyPath();
  v0[5] = v4;
  sub_1000BCAA8(&unk_10016F2A0, type metadata accessor for GuestUserSessionModel, &unk_100116DC0);
  ObservationRegistrar.access<A, B>(_:keyPath:)();

  v5 = OBJC_IVAR____TtC17AppleVisionProApp21GuestUserSessionModel__guestUserHandoverService;
  swift_beginAccess();
  sub_10000C178(v4 + v5, v3, &qword_10016F8B8, &qword_100116E20);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100009908(v0[8], &qword_10016F8B8, &qword_100116E20);
    if (qword_100168E20 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100006B0C(v6, qword_100181F88);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v17 = v10;
      *v9 = 136315138;
      v11 = _typeName(_:qualified:)();
      v13 = sub_100006B44(v11, v12, &v17);

      *(v9 + 4) = v13;
      _os_log_impl(&_mh_execute_header, v7, v8, "%s Failed to requestViewMirroring as the guestUserHandoverService was not set", v9, 0xCu);
      sub_1000052E4(v10);
    }

    v14 = v0[1];

    return v14();
  }

  else
  {
    (*(v0[10] + 32))(v0[11], v0[8], v0[9]);
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_1000BB594;

    return GuestUserHandoverService.requestViewMirroring()();
  }
}

uint64_t sub_1000BB594()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1000BB868;
  }

  else
  {
    v2 = sub_1000BB6A8;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_1000BB6A8()
{
  v16 = v0;
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181F88);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  v4 = os_log_type_enabled(v2, v3);
  v6 = v0[10];
  v5 = v0[11];
  v7 = v0[9];
  if (v4)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    v10 = _typeName(_:qualified:)();
    v12 = sub_100006B44(v10, v11, &v15);

    *(v8 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Successfully requested guestUserHandoverService to start view mirroring", v8, 0xCu);
    sub_1000052E4(v9);
  }

  (*(v6 + 8))(v5, v7);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1000BB868()
{
  v14 = v0;
  (*(v0[10] + 8))(v0[11], v0[9]);
  if (qword_100168E20 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_100006B0C(v1, qword_100181F88);
  swift_errorRetain();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v13 = v6;
    *v4 = 136315394;
    v7 = _typeName(_:qualified:)();
    v9 = sub_100006B44(v7, v8, &v13);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v4 + 14) = v10;
    *v5 = v10;
    _os_log_impl(&_mh_execute_header, v2, v3, "%s Failed to requestViewMirroring with error: %{public}@", v4, 0x16u);
    sub_100009908(v5, &unk_100169C20, &unk_10010D6B0);

    sub_1000052E4(v6);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}